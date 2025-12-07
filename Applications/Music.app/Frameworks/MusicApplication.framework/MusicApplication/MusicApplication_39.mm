uint64_t sub_342B98(id *__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (a4 != __src || &__src[v11] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v11);
      a4 = v29;
    }

    v14 = &a4[v11];
    v12 = a4;
    if (v9 < 8 || v5 <= __dst)
    {
      goto LABEL_57;
    }

    p_name = (&JSDateDescriptor + 24);
    v55 = a4;
LABEL_36:
    v50 = v5;
    v31 = v5 - 1;
    v32 = v4;
    v33 = v14;
    v53 = v31;
    while (1)
    {
      v57 = v14;
      v34 = *--v33;
      v35 = *v31;
      v36 = v34;
      v59 = v35;
      v37 = [v36 p_name[493]];
      if (v37)
      {
        v38 = v37;
        sub_AB92A0();

        v39 = sub_AB9390();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0xE000000000000000;
      }

      v42 = [v59 p_name[493]];
      if (v42)
      {
        v43 = v42;
        sub_AB92A0();

        v44 = sub_AB9390();
        v46 = v45;

        if (v39 != v44)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v46 = 0xE000000000000000;
        if (v39)
        {
          goto LABEL_47;
        }
      }

      if (v41 != v46)
      {
LABEL_47:
        v48 = sub_ABB3C0();

        v4 = v32 - 1;
        p_name = &JSDateDescriptor.name;
        if (v48)
        {
          v14 = v57;
          if (v32 != v50)
          {
            *v4 = *v53;
          }

          v12 = v55;
          if (v57 <= v55 || (v5 = v53, v53 <= __dst))
          {
            v5 = v53;
            goto LABEL_57;
          }

          goto LABEL_36;
        }

        v47 = v57;
        goto LABEL_49;
      }

      v4 = v32 - 1;
      v47 = v57;
      p_name = (&JSDateDescriptor + 24);
LABEL_49:
      v31 = v53;
      if (v47 != v32)
      {
        *v4 = *v33;
      }

      v14 = v33;
      v32 = v4;
      if (v33 <= v55)
      {
        v14 = v33;
        v12 = v55;
        v5 = v50;
        goto LABEL_57;
      }
    }
  }

  v12 = a4;
  v13 = __dst;
  if (a4 != __dst || &__dst[v8] <= a4)
  {
    memmove(a4, __dst, 8 * v8);
  }

  v14 = &v12[v8];
  if (v6 >= 8 && v5 < v4)
  {
    v15 = &JSDateDescriptor.name;
    while (1)
    {
      v16 = *v12;
      v17 = *v5;
      v58 = v16;
      v56 = v17;
      v18 = [v17 v15[493]];
      if (v18)
      {
        v19 = v18;
        sub_AB92A0();

        v52 = sub_AB9390();
        v54 = v20;
      }

      else
      {
        v52 = 0;
        v54 = 0xE000000000000000;
      }

      v21 = [v58 v15[493]];
      if (v21)
      {
        v22 = v21;
        sub_AB92A0();

        v23 = sub_AB9390();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      if (v52 == v23 && v54 == v25)
      {
        break;
      }

      v26 = sub_ABB3C0();

      v15 = (&JSDateDescriptor + 24);
      if ((v26 & 1) == 0)
      {
        goto LABEL_25;
      }

      v27 = v5;
      v28 = v13 == v5++;
      if (!v28)
      {
        goto LABEL_26;
      }

LABEL_27:
      ++v13;
      if (v12 >= v14 || v5 >= v4)
      {
        goto LABEL_29;
      }
    }

    v15 = (&JSDateDescriptor + 24);
LABEL_25:
    v27 = v12;
    v28 = v13 == v12++;
    if (v28)
    {
      goto LABEL_27;
    }

LABEL_26:
    *v13 = *v27;
    goto LABEL_27;
  }

LABEL_29:
  v5 = v13;
LABEL_57:
  if (v5 != v12 || v5 >= (v12 + ((v14 - v12 + (v14 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v12, 8 * (v14 - v12));
  }

  return 1;
}

uint64_t sub_343088(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 240;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 240;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[30 * v9] <= a4)
    {
      memmove(a4, __dst, 240 * v9);
    }

    v12 = &v4[30 * v9];
    if (v8 < 240)
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

      if (v4[29] < v6[29])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 30;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 30;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 30;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0xF0uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[30 * v11] <= a4)
  {
    memmove(a4, __src, 240 * v11);
  }

  v12 = &v4[30 * v11];
  if (v10 >= 240 && v6 > v7)
  {
LABEL_20:
    v5 -= 30;
    do
    {
      v15 = v5 + 30;
      if (*(v6 - 1) < *(v12 - 1))
      {
        v17 = v6 - 30;
        if (v15 != v6)
        {
          memmove(v5, v6 - 30, 0xF0uLL);
        }

        if (v12 <= v4 || (v6 -= 30, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 30);
      if (v15 != v12)
      {
        memmove(v5, v12 - 30, 0xF0uLL);
      }

      v5 -= 30;
      v12 -= 30;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 240;
  if (v6 != v4 || v6 >= &v4[30 * v18])
  {
    memmove(v6, v4, 240 * v18);
  }

  return 1;
}

void *sub_3432F8(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = sub_ABB060();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3((v9 + 4), v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

char *sub_34339C()
{
  result = *(v0 + qword_DFE2F0);
  if (result)
  {
    result = [result results];
    if (result)
    {
      v2 = result;
      v3 = [result numberOfSections];

      result = v3;
    }
  }

  v4 = *(v0 + qword_DFF1D0);
  if (v4 >> 62)
  {
    v6 = result;
    v7 = sub_ABB060();
    result = v6;
    if (v7 < 1)
    {
      return result;
    }
  }

  else if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) < 1)
  {
    return result;
  }

  if (__OFADD__(result++, 1))
  {
    __break(1u);
  }

  return result;
}

void sub_343460(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v2[qword_DFF1D0];
  if (v9 >> 62)
  {
    v10 = sub_ABB060();
  }

  else
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
  }

  (*(v5 + 16))(v8, a1, v4, v6);
  if (v10 >= 1)
  {
    v11 = IndexPath.safeSection.getter();
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      __break(1u);
      goto LABEL_15;
    }

    IndexPath.safeSection.setter(v13);
  }

  [v2 loadViewIfNeeded];
  v14 = qword_DFE2F8;
  v15 = *&v2[qword_DFE2F8];
  if (!v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v15;
  isa = sub_AB3770().super.isa;
  v18 = [v16 cellForItemAtIndexPath:isa];

  if (v18)
  {
    type metadata accessor for SocialPersonHorizontalCell(0);
    if (swift_dynamicCastClass())
    {

      sub_49DA1C();
    }

    else
    {
    }
  }

  [v2 loadViewIfNeeded];
  v19 = *&v2[v14];
  if (v19)
  {
    v20 = v19;
    v21 = sub_AB3770().super.isa;
    [v20 deselectItemAtIndexPath:v21 animated:1];
    (*(v5 + 8))(v8, v4);

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_3436A4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40, &qword_AFA040);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isBottomHairlineVisible;
  swift_beginAccess();
  a1[v8] = 1;
  if ((a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isBottomHairlineVisible] & 1) == 0)
  {
    a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isBottomHairlineVisible] = 1;
    [a1 setNeedsLayout];
  }

  v19 = a2;
  v20 = a3;
  sub_AB3550();
  v9 = sub_AB35C0();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_36A48();
  v10 = sub_ABAA50();
  v12 = v11;
  sub_12E1C(v7, &qword_DEAC40, &qword_AFA040);
  v13 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  *v13 = v10;
  v13[1] = v12;

  v14 = *&a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

  v15 = String.trim()();

  swift_beginAccess();
  v14[7] = v15;

  sub_2EB704();
  [a1 setNeedsLayout];
  v16 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
  swift_beginAccess();
  v18 = xmmword_B0A3F0;
  *v16 = xmmword_B0A3F0;
  v16[16] = 1;
  sub_1848CC();
  v17 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
  swift_beginAccess();
  *v17 = v18;
  v17[16] = 1;
  sub_1846A0();
}

uint64_t sub_343918(void *a1)
{
  if (!a1)
  {
    return 4;
  }

  v2 = a1;
  v3 = [v2 identifiers];
  v4 = [v3 universalStore];

  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = [v4 socialProfileID];
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v7 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_8;
  }

  v6 = v5;
  v7 = sub_AB92A0();
  v9 = v8;
  swift_unknownObjectRelease();

LABEL_8:
  if ([v2 isPrivate])
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = qword_DFF1C0;
  swift_beginAccess();
  v13 = *(v1 + v12);

  v14 = sub_472F00(v7, v9, v13);

  if (v14)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_343A5C(void *a1, unsigned __int8 a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  if (!a1)
  {
    return 0;
  }

  v5 = *(v2 + qword_DFE2F0);
  if (!v5)
  {
    return 0;
  }

  type metadata accessor for JSSocialOnboardingFriendsModelRequest.Response();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = a1;
  v31 = v5;
  v9 = [v8 identifiers];
  v10 = [v9 universalStore];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = [v10 socialProfileID];
  if (!v11)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v13 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_9;
  }

  v12 = v11;
  v13 = sub_AB92A0();
  v15 = v14;
  swift_unknownObjectRelease();

LABEL_9:
  v16 = *(v7 + OBJC_IVAR____TtCC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4137JSSocialOnboardingFriendsModelRequest8Response_profileIDsToFriendsMap);
  if (*(v16 + 16))
  {

    v17 = sub_2EBF88(v13, v15);
    if (v18)
    {
      v19 = (*(v16 + 56) + 240 * v17);
      v21 = v19[1];
      v20 = v19[2];
      v33[0] = *v19;
      v33[1] = v21;
      v34 = v20;
      v22 = v19[3];
      v23 = v19[4];
      v24 = v19[6];
      v37 = v19[5];
      v38 = v24;
      v35 = v22;
      v36 = v23;
      v25 = v19[7];
      v26 = v19[8];
      v27 = v19[10];
      v41 = v19[9];
      v42 = v27;
      v39 = v25;
      v40 = v26;
      v28 = v19[11];
      v29 = v19[12];
      v30 = v19[14];
      v45 = v19[13];
      v46 = v30;
      v43 = v28;
      v44 = v29;
      sub_2B990(v33, &v32);

      if (a2 != 4 && (v34 & 1) == 0)
      {
        if (a2 - 1 < 2)
        {
          sub_AB91E0();
          sub_AB3550();
          sub_AB9320();
          sub_2B9EC(v33);

          return 0x64657469766E69;
        }

        if (!a2)
        {
          sub_AB91E0();
          sub_AB3550();
          sub_AB9320();
          sub_2B9EC(v33);

          return 0x657469766E69;
        }
      }

      sub_2B9EC(v33);

      return 0;
    }
  }

  else
  {
  }

  return 0;
}

void sub_343E00()
{
  v1 = qword_DFF188;
  *(v0 + v1) = sub_96828(_swiftEmptyArrayStorage);
  v2 = qword_DFF190;
  *(v0 + v2) = [objc_allocWithZone(CNContactStore) init];
  v3 = qword_DFF1A8;
  *(v0 + v3) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v0 + qword_DFF1B0) = 0;
  *(v0 + qword_DFF1B8) = 1;
  *(v0 + qword_DFF1C0) = &_swiftEmptySetSingleton;
  v4 = qword_DFF1C8;
  type metadata accessor for SocialOnboardingNetworkRegistrationController();
  v5 = swift_allocObject();
  v6 = [objc_allocWithZone(NSOperationQueue) init];
  v7 = sub_AB9260();
  [v6 setName:v7];

  [v6 setQualityOfService:25];
  *(v5 + 16) = v6;
  *(v0 + v4) = v5;
  *(v0 + qword_DFF1D0) = _swiftEmptyArrayStorage;
  v8 = qword_DFF1D8;
  *(v0 + v8) = sub_96724(_swiftEmptyArrayStorage);
  *(v0 + qword_DFF1E0) = 0;
  sub_ABAFD0();
  __break(1u);
}

id sub_343FBC(uint64_t a1)
{
  v2 = qword_DFF1D0;
  v3 = *(v1 + qword_DFF1D0);
  if (v3 >> 62)
  {
    v8 = a1;
    v4 = sub_ABB060();
    a1 = v8;
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4 >= 1 && a1 == 0)
  {
    if (*(v1 + qword_DFE2F0))
    {
      if (*(v1 + qword_DFF1B8))
      {
        return &dword_0 + 1;
      }

      else
      {
        v7 = *(v1 + v2);
        if (v7 >> 62)
        {

          return sub_ABB060();
        }

        else
        {
          return *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_497570(a1);
  }
}

double sub_3440BC(void *a1)
{
  v2 = v1;
  v4 = sub_AB37F0();
  v5 = *&v1[qword_DFF1D0];
  if (v5 >> 62)
  {
    v38 = v4;
    v6 = sub_ABB060();
    v4 = v38;
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = v6 > 0;
  v8 = v4 == 0;
  v9 = v7 && v8;
  if (v7 && v8)
  {
    v10 = 0xD00000000000001BLL;
  }

  else
  {
    v10 = 0xD00000000000001ALL;
  }

  if (v7 && v8)
  {
    v11 = "SocialPersonHorizontalCell";
  }

  else
  {
    v11 = "ingFriendsFinderViewController";
  }

  v12 = qword_DFF188;
  swift_beginAccess();
  v13 = *&v2[v12];
  if (*(v13 + 16))
  {

    v14 = sub_2EBF88(v10, v11 | 0x8000000000000000);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 16 * v14 + 8);

      return v16;
    }
  }

  [a1 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [a1 music_inheritedLayoutInsets];
  v27 = UIEdgeInsetsInsetRect(v18, v20, v22, v24, v25, v26);
  v29 = v28;
  v30 = [v2 traitCollection];
  if (v9)
  {
    if (qword_DE6AE0 != -1)
    {
      v39 = v30;
      swift_once();
      v30 = v39;
    }

    v31 = *&qword_E00AF0;
    if (qword_DE6AD8 != -1)
    {
      v40 = v30;
      swift_once();
      v30 = v40;
    }

    v32 = *&qword_E00AB8;
    v33 = *&qword_E00AC8;

    v16 = v31 + v32 + v33;
  }

  else
  {
    v34 = v30;
    v29 = sub_B2768(v30, v29);
    v16 = v35;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *&v2[v12];
  *&v2[v12] = 0x8000000000000000;
  sub_94C58(v10, v11 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, v29, v16);

  *&v2[v12] = v41;
  swift_endAccess();
  return v16;
}

void sub_34438C(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v10 = &v37 - v9;
  sub_AB3810();
  sub_339A48(v8, v10);
  v11 = *(v6 + 8);
  v11(v8, v5);
  if ((*(v6 + 48))(v10, 1, v5) == 1)
  {
    sub_12E1C(v10, &unk_DE8E20, &qword_AF7990);
    return;
  }

  v12 = IndexPath.safeSection.getter();
  v11(v10, v5);
  v13 = *&v2[qword_DFE2F0];
  if (v13)
  {
    v14 = [v13 results];
    if (!v14)
    {
      __break(1u);
      goto LABEL_16;
    }

    v15 = v14;
    v16 = [v14 sectionAtIndex:v12];

    if (v16)
    {
      v41 = v16;
      if (swift_dynamicCast())
      {
        v17 = v43;
        v40 = v42;
        v18 = *&v3[qword_DFF1B0];
        v19 = &selRef__authenticateReturningError_;
        if (v18)
        {
          v20 = *&v3[qword_DFF1B0];
        }

        else
        {
          v37 = qword_DFF1B0;
          v38 = v43;
          v21 = [objc_allocWithZone(type metadata accessor for TitleSectionHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
          v22 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing;
          swift_beginAccess();
          v21[v22] = 1;
          v20 = v21;
          [v20 setHidden:1];
          [v20 setUserInteractionEnabled:0];
          v23 = *&v3[direct field offset for BrowseCollectionViewController.textDrawingCache];
          v24 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
          swift_beginAccess();
          v39 = *&v20[v24];
          *&v20[v24] = v23;
          v19 = &selRef__authenticateReturningError_;

          v25 = [v3 view];
          if (!v25)
          {
LABEL_17:
            __break(1u);
            return;
          }

          v26 = v25;
          [v25 addSubview:v20];

          v27 = *&v3[v37];
          *&v3[v37] = v20;

          v18 = 0;
          v17 = v38;
        }

        v28 = v18;
        sub_AB3810();
        sub_3436A4(v20, v40, v17);
        v11(v8, v5);
        v29 = [v3 v19[342]];
        if (v29)
        {
          v30 = v29;
          [v29 music_inheritedLayoutInsets];
          v32 = v31;
          v34 = v33;

          [a1 bounds];
          v35 = CGRectGetWidth(v44) - v32 - v34;
          v36 = v20;
          [a1 bounds];
          [v36 setFrame:{0.0, 0.0, v35, CGRectGetHeight(v45)}];

          [v36 layoutIfNeeded];

          return;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }
  }
}

void sub_34480C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v4 = sub_80104(v3);

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_networkLabel;
  *(v1 + v5) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC16MusicApplicationP33_B8BEB5E19410BDA0BB2B4503F9E0BB4143SocialOnboardingNetworkStatusViewController_networkStateLabel;
  *(v1 + v6) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_344928()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_344970()
{

  return swift_deallocObject();
}

uint64_t sub_3449D8()
{

  return swift_deallocObject();
}

uint64_t sub_344A20()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_344A58()
{

  return swift_deallocObject();
}

double block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_344AC8()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_108Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_344B54()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_344B8C()
{

  return swift_deallocObject();
}

uint64_t sub_344BF0()
{

  return swift_deallocObject();
}

uint64_t sub_344C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_344D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_344D50()
{

  return swift_deallocObject();
}

BOOL sub_344D98(uint64_t *a1)
{
  v2 = *a1;
  v3 = **(v1 + 16);
  if (*a1 == 3)
  {
    return v3 == 3;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 != 1)
  {
    return (v3 - 1) >= 3;
  }

  return v3 == 1;
}

char *sub_344E4C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_pageHeaderContentViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView] = 0;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_subtitle];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_maximumNumberOfLinesInTitle] = 2;
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_lineBreakMode] = 4;
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_textDrawingCache] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowPromotionalImage] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowStandardNavigationBar] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithText] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithTextForAccessibilitySizes] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_bottomHairlineView] = 0;
  v12 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingStackView;
  type metadata accessor for TextStackView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v14[v15] = 0;
  *&v4[v12] = v14;
  v16 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingSizingStackView;
  v17 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v18 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v17[v18] = 0;
  *&v4[v16] = v17;
  v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_gradientView] = 0;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for PageHeaderContentView();
  v19 = objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
  v20 = qword_DE6C58;
  v21 = v19;
  if (v20 != -1)
  {
    v24 = v21;
    swift_once();
    v21 = v24;
  }

  v22 = v21;
  [v21 setBackgroundColor:qword_E71898];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingStackView]];

  return v22;
}

void sub_345124(char a1)
{
  if (v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle] != (a1 & 1))
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_gradientView;
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_gradientView];
    if (v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle])
    {
      if (v4)
      {
        v5 = *&v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_gradientView];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_AF82E0;
        *(v6 + 32) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.0];
        *(v6 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.16];
        *(v6 + 48) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.32];
        static Gradient.vertical(colors:locations:interpolations:)(v6, 0, 0, v17);

        v7 = objc_allocWithZone(type metadata accessor for Gradient.View());
        v8 = Gradient.View.init(configuration:)(v17);
        v9 = *&v2[v3];
        *&v2[v3] = v8;
        v5 = v8;

        v4 = 0;
      }

      v10 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingStackView];
      v11 = v4;
      [v2 insertSubview:v5 below:v10];

      v12 = [objc_opt_self() clearColor];
      [v2 setBackgroundColor:v12];
    }

    else
    {
      if (v4)
      {
        [v4 removeFromSuperview];
      }

      if (qword_DE6C58 != -1)
      {
        swift_once();
      }

      [v1 setBackgroundColor:qword_E71898];
    }

    v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 1;
    [v2 setNeedsLayout];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      if ([Strong isViewLoaded])
      {
        v15 = [v14 view];
        if (v15)
        {
          v16 = v15;
          [v15 setNeedsLayout];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_34549C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView];
  if (a1)
  {
    v5 = a1;
    if (!v4 || (sub_13C80(0, &qword_DF12A0, UIView_ptr), v6 = v4, v5 = v5, v7 = sub_ABA790(), v5, v6, (v7 & 1) == 0))
    {
      v8 = v5;
      if ([v8 isDescendantOfView:v2])
      {
        [v8 removeFromSuperview];
      }
    }

    v4 = *&v2[v3];
  }

  if (v4)
  {
    [v2 addSubview:v4];
  }

  v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 1;
  [v2 setNeedsLayout];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([Strong isViewLoaded])
    {
      v11 = [v10 view];
      if (v11)
      {
        v12 = v11;
        [v11 setNeedsLayout];
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

double sub_345690(char *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB92A0();
  v8 = &a1[*a4];
  v9 = *v8;
  v10 = v8[1];
  *v8 = v7;
  v8[1] = v11;
  v12 = a3;
  v13 = a1;
  sub_34574C(v9, v10, a4);

  return result;
}

void sub_34574C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = &v3[*a3];
  if ((*v4 != a1 || v4[1] != a2) && (sub_ABB3C0() & 1) == 0)
  {
    v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 1;
    [v3 setNeedsLayout];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      if ([Strong isViewLoaded])
      {
        v8 = [v7 view];
        if (v8)
        {
          v9 = v8;
          [v8 setNeedsLayout];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_345880(uint64_t a1, void *a2)
{
  v3 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v3 != a1)
  {
    v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 1;
    [v2 setNeedsLayout];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      if ([Strong isViewLoaded])
      {
        v6 = [v5 view];
        if (v6)
        {
          v7 = v6;
          [v6 setNeedsLayout];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

double sub_34598C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingStackView);
  v3 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_textDrawingCache;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_textDrawingCache);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = v4;
  swift_retain_n();
  sub_2E6210(v6);

  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingSizingStackView);
  v8 = *(v1 + v3);
  v9 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v10 = *(v7 + v9);
  *(v7 + v9) = v8;
  swift_retain_n();
  sub_2E6210(v10);

  return result;
}

void sub_345A84(char a1)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes];
  v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes] = a1;
  if (v2 != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 1;
    [v1 setNeedsLayout];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      if ([Strong isViewLoaded])
      {
        v5 = [v4 view];
        if (v5)
        {
          v6 = v5;
          [v5 setNeedsLayout];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_345B98(uint64_t a1)
{
  v2 = v1;
  v127.receiver = v1;
  v127.super_class = type metadata accessor for PageHeaderContentView();
  objc_msgSendSuper2(&v127, "layoutSubviews");
  v3 = [v1 traitCollection];
  [v3 displayScale];
  v118 = v4;
  [v1 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v1 music_inheritedLayoutInsets];
  v14 = v13;
  v16 = v15;
  [v1 effectiveUserInterfaceLayoutDirection];
  v121 = v8;
  v122 = v6;
  v123 = v10;
  v17 = UIEdgeInsetsInsetRect(v6, v8, v10, v12, v14, v16);
  v19 = v18;
  v120 = v20;
  rect = v21;
  v22 = [v3 horizontalSizeClass];
  if (v1[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes] == 1)
  {
    v23 = [v3 preferredContentSizeCategory];
    v24 = sub_ABA310();
    v25 = sub_ABA330();
  }

  else
  {
    v25 = 0;
  }

  v112 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle;
  v116 = v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle];
  v26 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView;
  v27 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView];
  if (v27)
  {
    v28 = v27;
    [v28 frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v138.origin.x = v17;
    v138.origin.y = v19;
    v138.size.width = v120;
    v138.size.height = rect;
    MaxX = CGRectGetMaxX(v138);
    v139.origin.x = v30;
    v113 = v32;
    v114 = v34;
    v139.origin.y = v32;
    v139.size.width = v34;
    v139.size.height = v36;
    Width = CGRectGetWidth(v139);
    v39 = MaxX - Width;
    if ((v25 & 1) != 0 && ((v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithTextForAccessibilitySizes] | v116) & 1) == 0)
    {
    }

    else
    {
      v140.origin.x = MaxX - Width;
      v140.origin.y = v32;
      v140.size.width = v34;
      v140.size.height = v36;
      v40 = CGRectGetWidth(v140);

      v120 = v120 - (v40 + 8.0);
    }
  }

  else
  {
    v113 = 0.0;
    v114 = 0.0;
    v36 = 0.0;
    v39 = 0.0;
  }

  v41 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingStackView];
  if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] == 1)
  {
    v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate] = 0;
    v42 = [v2 traitCollection];
    sub_347350(v41, v42);
  }

  v115 = v3;
  v43 = v17 + -2.0;
  v119 = v19 - 1.0 / v118;
  v44 = v120;
  if ((v25 & 1) == 0 || (v45 = v43, v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithTextForAccessibilitySizes] & 1 | (v22 != &dword_0 + 1) | v116 & 1))
  {
    v141.origin.y = v121;
    v141.origin.x = v122;
    v141.size.width = v123;
    v141.size.height = v12;
    v46 = CGRectGetWidth(v141) <= 1500.0;
    v45 = v39;
    if (!v46)
    {
      v47 = [v41 traitCollection];
      [v47 displayScale];
      v49 = v48;

      if (rect <= 5.99231045e307)
      {
        v50 = rect;
      }

      else
      {
        v50 = 5.99231045e307;
      }

      sub_2E94A4(v128, 0.0, 0.0, v120, v50, v49);
      sub_3F250(v128);
      v51 = v128[3];
      v142.origin.x = v43;
      v142.origin.y = v119;
      v142.size.width = v120;
      v142.size.height = rect;
      v45 = *&v51 + CGRectGetMinX(v142) + 8.0;
    }
  }

  v52 = *&v2[v26];
  v53 = &selRef__authenticateReturningError_;
  if (v52)
  {
    v110 = v22;
    v111 = v45;
    v54 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle + 8];
    if ((v54 & 0x2000000000000000) != 0)
    {
      v55 = HIBYTE(v54) & 0xF;
    }

    else
    {
      v55 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle] & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {
      v56 = 0x7469747265707573;
    }

    else
    {
      v56 = 0x656C746974;
    }

    if (v55)
    {
      v57 = 0xEA0000000000656CLL;
    }

    else
    {
      v57 = 0xE500000000000000;
    }

    v58 = v52;
    v143.origin.x = v43;
    v143.origin.y = v119;
    v143.size.width = v120;
    v143.size.height = rect;
    v59 = CGRectGetWidth(v143);
    v144.origin.x = v43;
    v144.origin.y = v119;
    v144.size.width = v120;
    v144.size.height = rect;
    v60.n128_u64[0] = CGRectGetHeight(v144);
    TextStackView.componentMetrics(forComponentIdentifier:bounds:displayScale:)(v56, v57, v129, 0.0, 0.0, v59, v60, v118);
    v131[8] = v129[8];
    v132 = v130;
    v131[4] = v129[4];
    v131[5] = v129[5];
    v131[6] = v129[6];
    v131[7] = v129[7];
    v131[0] = v129[0];
    v131[1] = v129[1];
    v131[2] = v129[2];
    v131[3] = v129[3];
    if (get_enum_tag_for_layout_string_s5Error_pIegHzo_Sg_0(v131) == 1)
    {

      goto LABEL_65;
    }

    y = v132.origin.y;
    v105 = v132.size.width;
    x = v132.origin.x;
    height = v132.size.height;
    CGRectGetMinY(v132);
    sub_AB39F0();
    objc_opt_self();
    v62 = swift_dynamicCastObjCClass();
    v63 = v58;
    if (!v62)
    {
LABEL_39:
      if ((v110 != &dword_0 + 1) | v116 & 1)
      {
LABEL_40:
        if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithText] == 1)
        {
          v145.origin.y = v121;
          v145.origin.x = v122;
          v145.size.width = v123;
          v145.size.height = v12;
          CGRectGetMaxY(v145);
          v53 = &selRef__authenticateReturningError_;
          if (v2[v112] == 1)
          {
            v69 = v63;
            v70 = [v2 traitCollection];
            [v70 horizontalSizeClass];

            v63 = v69;
          }

          v146.origin.x = v111;
          v146.origin.y = v113;
          v146.size.width = v114;
          v146.size.height = v36;
          CGRectGetHeight(v146);
        }

        else
        {
          v53 = &selRef__authenticateReturningError_;
          if (!v55)
          {
            v148.origin.x = v43;
            v148.origin.y = v119;
            v148.size.width = v120;
            v148.size.height = rect;
            CGRectGetMinY(v148);
            v149.origin.x = v111;
            v149.origin.y = v113;
            v149.size.width = v114;
            v149.size.height = v36;
            CGRectGetHeight(v149);
          }
        }

        goto LABEL_64;
      }

      if ((v25 & 1) == 0)
      {
        v53 = &selRef__authenticateReturningError_;
        if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithText] == 1)
        {
          v150.size.width = v105;
          v150.origin.x = x;
          v150.origin.y = y;
          v150.size.height = height;
          CGRectGetHeight(v150);
          v151.origin.x = v111;
          v151.origin.y = v113;
          v151.size.width = v114;
          v151.size.height = v36;
          CGRectGetHeight(v151);
        }

        else if (!v55)
        {
          v152.origin.x = v43;
          v152.origin.y = v119;
          v152.size.width = v120;
          v152.size.height = rect;
          CGRectGetMinY(v152);
          v153.origin.x = v111;
          v153.origin.y = v113;
          v153.size.width = v114;
          v153.size.height = v36;
          CGRectGetHeight(v153);
        }

        goto LABEL_64;
      }

      v109 = v63;
      v147.origin.x = v43;
      v147.origin.y = v119;
      v147.size.width = v120;
      v147.size.height = rect;
      CGRectGetMaxY(v147);
      v71 = *&v2[v26];
      v53 = &selRef__authenticateReturningError_;
      if (v71)
      {
        objc_opt_self();
        v72 = swift_dynamicCastObjCClass();
        v73 = v71;
        v74 = v73;
        if (v72)
        {
          v75 = v73;
          v76 = [v72 titleForState:0];
          if (v76 || (v76 = [v72 attributedTitleForState:0]) != 0)
          {

            [v75 frame];
            goto LABEL_63;
          }
        }

        [v74 frame];
      }

LABEL_63:
      sub_AB39F0();
      v63 = v109;
LABEL_64:
      sub_ABA490();
      [v63 v53[262]];

      sub_3472E8(v129);

      v44 = v120;
      goto LABEL_65;
    }

    v64 = v62;
    v108 = v58;
    v107 = v58;
    v65 = [v64 titleForState:0];
    if (v65)
    {
      v66 = &selRef__authenticateReturningError_;
    }

    else
    {
      v65 = [v64 attributedTitleForState:0];
      v66 = &selRef__authenticateReturningError_;
      if (!v65)
      {
LABEL_38:

        v63 = v108;
        goto LABEL_39;
      }
    }

    v67 = [v64 titleLabel];
    if (v67)
    {
      v68 = v67;
      if ((v116 & 1) == 0)
      {
        [v67 _firstLineBaselineOffsetFromBoundsTop];
        sub_AB39F0();
        [v68 v66[56]];
        [v68 convertRect:v64 toCoordinateSpace:?];
        if (!v55)
        {
          v81 = v77;
          v154.origin.x = v43;
          v82 = v78;
          v83 = v79;
          v154.origin.y = v119;
          v154.size.width = v120;
          v117 = v80;
          v154.size.height = rect;
          CGRectGetMinY(v154);
          v155.origin.x = v81;
          v155.origin.y = v82;
          v155.size.width = v83;
          v155.size.height = v117;
          CGRectGetMinY(v155);
        }

        v53 = &selRef__authenticateReturningError_;
        v63 = v108;
        goto LABEL_64;
      }

      v63 = v108;
      goto LABEL_40;
    }

    goto LABEL_38;
  }

LABEL_65:
  sub_ABA490();
  [v41 v53[262]];
  v84 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_bottomHairlineView;
  v85 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_bottomHairlineView];
  if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible] == 1)
  {
    if (v85)
    {
      v86 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_bottomHairlineView];
    }

    else
    {
      v87 = [objc_allocWithZone(UIView) init];
      v88 = qword_DE6C70;
      v86 = v87;
      if (v88 != -1)
      {
        swift_once();
      }

      [v86 setBackgroundColor:qword_E718B0];
      [v2 addSubview:v86];
      v89 = *&v2[v84];
      *&v2[v84] = v86;

      v85 = 0;
    }

    v90 = v85;
    v156.origin.x = v122;
    v156.origin.y = v121;
    v156.size.width = v123;
    v156.size.height = v12;
    CGRectGetMaxY(v156);
    v157.origin.x = v122;
    v157.origin.y = v121;
    v157.size.width = v123;
    v157.size.height = v12;
    CGRectGetWidth(v157);
    sub_ABA490();
    [v86 v53[262]];
  }

  else if (v85)
  {
    [v85 setHidden:1];
  }

  v91 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_gradientView];
  if (v91)
  {
    v92 = v91;
    v158.origin.x = v122;
    v158.origin.y = v121;
    v158.size.width = v123;
    v158.size.height = v12;
    v93 = CGRectGetWidth(v158);
    v159.origin.x = v122;
    v159.origin.y = v121;
    v159.size.width = v123;
    v159.size.height = v12;
    MinX = CGRectGetMinX(v159);
    v160.origin.x = v122;
    v160.origin.y = v121;
    v160.size.width = v123;
    v160.size.height = v12;
    v95 = CGRectGetMaxY(v160) + -150.0;
    [v92 v53[262]];
    v161.origin.x = MinX;
    v161.origin.y = v95;
    v161.size.width = v93;
    v161.size.height = 150.0;
    v96 = CGRectGetHeight(v161);
    v162.origin.x = v43;
    v162.origin.y = v119;
    v162.size.width = v44;
    v162.size.height = rect;
    v97 = v96 - CGRectGetHeight(v162);
    v163.origin.x = MinX;
    v163.origin.y = v95;
    v163.size.width = v93;
    v163.size.height = 150.0;
    v98 = v97 / CGRectGetHeight(v163);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9B0, &qword_AF9000);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_AF8820;
    *(v99 + 32) = 0;
    *(v99 + 40) = v98;
    *(v99 + 48) = 0x3FF0000000000000;
    v100 = &v92[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
    swift_beginAccess();
    v101 = *(v100 + 3);
    v102 = *v100;
    v103 = *(v100 + 1);
    *&v126[16] = *(v100 + 2);
    *&v126[32] = v101;
    v125 = v102;
    *v126 = v103;
    sub_8A334(&v125, &v133);

    v133 = v125;
    v135 = *&v126[8];
    v136 = *&v126[24];
    v137 = *&v126[40];
    v134 = v99;
    Gradient.View.typedConfiguration.setter(&v133);
  }

  else
  {
  }
}

void sub_3468D8(void *a1, double a2)
{
  v5 = [a1 horizontalSizeClass];
  if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes] == 1)
  {
    v6 = [a1 preferredContentSizeCategory];
    v7 = sub_ABA310();
    v8 = sub_ABA330();
  }

  else
  {
    v8 = 0;
  }

  [v2 music_inheritedLayoutInsets];
  v9 = v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle];
  v12 = a2 - v10 - v11;
  if (v8 & 1) == 0 || ((v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithTextForAccessibilitySizes] | v9))
  {
    v13 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView];
    if (v13)
    {
      v14 = v13;
      [v14 frame];
      Width = CGRectGetWidth(v24);

      v12 = v12 - (Width + 8.0);
    }
  }

  v16 = v5 == &dword_0 + 1;
  v17 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingSizingStackView];
  sub_347350(v17, a1);
  [v17 sizeThatFits:{v12, 5.99231045e307}];
  if ((v16 & v8) == 1 && ((v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithTextForAccessibilitySizes] | v9) & 1) == 0)
  {
    v18 = *&v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView];
    if (v18)
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      v20 = v18;
      v21 = v20;
      if (v19)
      {
        v22 = v20;
        v23 = [v19 titleForState:0];
        if (v23 || (v23 = [v19 attributedTitleForState:0]) != 0)
        {

          [v22 frame];
          return;
        }
      }

      [v21 frame];
    }
  }
}

void sub_346BF0(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PageHeaderContentView();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  *(v1 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate) = 1;
  [v1 setNeedsLayout];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong isViewLoaded])
    {
      v5 = [v4 view];
      if (v5)
      {
        v6 = v5;
        [v5 setNeedsLayout];
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

id sub_346D34(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v23.receiver = v3;
  v23.super_class = type metadata accessor for PageHeaderContentView();
  v7 = objc_msgSendSuper2(&v23, "hitTest:withEvent:", a1, a2, a3);
  v8 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView];
  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      [v10 hitRectInsets];
      top = v12;
      left = v14;
    }

    else
    {
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      v16 = v8;
    }

    [v8 frame];
    v25.origin.x = UIEdgeInsetsInsetRect(v17, v18, v19, v20, top, left);
    v24.x = a2;
    v24.y = a3;
    if (CGRectContainsPoint(v25, v24))
    {
      [v8 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
      v21 = [v8 hitTest:a1 withEvent:?];

      v7 = v21;
    }
  }

  return v7;
}

id sub_346F20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if ((*(v2 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle) & 1) != 0 || *(v2 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes) != 1)
  {
    v9 = 0;
  }

  else
  {
    v6 = [v2 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    v8 = sub_ABA310();
    v9 = sub_ABA330();
  }

  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v10 = qword_E718C8;
  if (v9)
  {
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 defaultMetrics];
    v14 = v13;
    v15 = 13.0;
    if (v5 == &dword_0 + 2)
    {
      v15 = 15.0;
    }

    [v13 scaledValueForValue:v15];
    v17 = v16;

    v18 = [objc_opt_self() systemFontOfSize:v17 weight:UIFontWeightBold];
  }

  else
  {
    sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
    v19 = v10;
    v18 = sub_ABA550();
  }

  v20 = v18;
  result = [objc_opt_self() clearColor];
  *a1 = v10;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = 4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v20;
  return result;
}

id sub_347150(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PageHeaderContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_347294()
{
  result = qword_DFFCA0;
  if (!qword_DFFCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFFCA0);
  }

  return result;
}

uint64_t sub_3472E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFFCA8, &qword_B0A698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_347350(uint64_t a1, id a2)
{
  v3 = v2;
  v106 = [a2 horizontalSizeClass];
  v5 = UIFontTextStyleLargeTitle;
  v6 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle;
  if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle])
  {
    v7 = 0;
    goto LABEL_3;
  }

  if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes] == 1)
  {
    v12 = [a2 preferredContentSizeCategory];
    v13 = sub_ABA310();
    v7 = sub_ABA330();

    v10 = 16.0;
    if (v3[v6] != 1)
    {
LABEL_6:
      if (v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowPromotionalImage])
      {
        v11 = 44.0;
        if (v7)
        {
LABEL_16:
          v15 = objc_opt_self();
          v16 = [v15 defaultMetrics];
          sub_AB9EF0();
          v14 = v17;

          v18 = [v15 defaultMetrics];
          sub_AB9EF0();
          v10 = v19;

          v20 = [v15 defaultMetrics];
          sub_AB9EF0();
          v11 = v21;

          v22 = 2;
          v5 = UIFontTextStyleLargeTitle;
          goto LABEL_24;
        }

        goto LABEL_19;
      }

      if (v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowStandardNavigationBar])
      {
        v14 = 36.0;
      }

      else
      {
        v14 = 50.0;
      }

      if (v7)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

LABEL_3:
    v8 = [v3 traitCollection];
    v9 = [v8 horizontalSizeClass];

    if (v9 == &dword_0 + 2)
    {
      v10 = 18.0;
    }

    else
    {
      v10 = 20.0;
    }

    goto LABEL_6;
  }

  v10 = 16.0;
  if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowPromotionalImage])
  {
    v11 = 44.0;
LABEL_19:
    v22 = 1;
    v14 = 44.0;
    goto LABEL_24;
  }

  if (v2[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowStandardNavigationBar])
  {
    v14 = 36.0;
  }

  else
  {
    v14 = 50.0;
  }

LABEL_23:
  v11 = 44.0;
  v22 = 1;
LABEL_24:
  v23 = &v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle];
  v24 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle + 8];
  v25 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle] & 0xFFFFFFFFFFFFLL;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v24) & 0xF;
  }

  if (v25)
  {
    v14 = v14 - v11;
  }

  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v108 = sub_ABA580();
  v26 = sub_ABA580();
  if (v3[v6] == 1)
  {
    v27 = [objc_opt_self() whiteColor];
  }

  else
  {
    if (qword_DE6C98 != -1)
    {
      swift_once();
    }

    v27 = qword_E718D8;
  }

  v28 = v27;
  v103 = objc_opt_self();
  v29 = [v103 clearColor];
  v30 = v29;
  v112 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_lineBreakMode];
  v113 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_maximumNumberOfLinesInTitle];
  v31 = v23[1];
  v32 = *v23 & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v31) & 0xF;
  }

  v110 = v28;
  v111 = v26;
  v109 = v29;
  if (v32)
  {
    *(&v101 + 1) = v22;
    v33 = v28;
    v34 = v30;
    v35 = v26;
    v102 = v3;
    sub_346F20(v128);
    v36 = v128[0];
    v37 = v128[1];
    v38 = v129;
    v39 = v130;
    v40 = v131;
    v41 = v132;
    *&v101 = v133;
    v42 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
    swift_beginAccess();
    v43 = *(a1 + v42);
    v99 = v38;
    v100 = v37;
    if (*(v43 + 16))
    {
      sub_109A00(v128, &v144);

      v44 = sub_2EBF88(0x7469747265707573, 0xEA0000000000656CLL);
      if (v45)
      {
        v46 = *(*(v43 + 56) + 8 * v44);

        *&v139 = v36;
        *(&v139 + 1) = v37;
        *&v140 = v38;
        *(&v140 + 1) = v39;
        v47 = v40;
        *&v141 = v40;
        *(&v141 + 1) = v41;
        v48 = *(&v101 + 1);
        v49 = v101;
        v142 = v101;
        v143 = *&v11;
        swift_beginAccess();
        v51 = *(v46 + 48);
        v50 = *(v46 + 64);
        v52 = *(v46 + 96);
        v147 = *(v46 + 80);
        v148 = v52;
        v145 = v51;
        v146 = v50;
        v144 = *(v46 + 32);
        v53 = v143;
        *(v46 + 80) = v142;
        *(v46 + 96) = v53;
        v54 = v140;
        *(v46 + 32) = v139;
        *(v46 + 48) = v54;
        *(v46 + 64) = v141;

        sub_2F118(&v139, &v134);
        sub_2F174(&v144);
        sub_2EB2A8();
LABEL_45:
        v66 = *v23;
        v65 = v23[1];
        swift_beginAccess();
        *(v46 + 112) = v66;
        *(v46 + 120) = v65;

        sub_2EB704();
        sub_109A5C(v128);

        *&v139 = v36;
        *(&v139 + 1) = v100;
        *&v140 = v99;
        *(&v140 + 1) = v39;
        *&v141 = v47;
        *(&v141 + 1) = v41;
        *&v142 = v49;
        *(&v142 + 1) = v48;
        v143 = *&v11;
        sub_2F174(&v139);

        v28 = v110;
        v26 = v111;
        v5 = UIFontTextStyleLargeTitle;
        v30 = v109;
        v3 = v102;
        goto LABEL_46;
      }
    }

    else
    {
      sub_109A00(v128, &v144);
    }

    *&v144 = v36;
    *(&v144 + 1) = v37;
    *&v145 = v38;
    *(&v145 + 1) = v39;
    v47 = v40;
    *&v146 = v40;
    *(&v146 + 1) = v41;
    v49 = v101;
    v48 = v22;
    *&v147 = v101;
    *(&v147 + 1) = v22;
    v148 = *&v11;
    type metadata accessor for TextStackView.Component();
    swift_allocObject();
    v46 = TextStackView.Component.init(identifier:labelProperties:)(0x7469747265707573, 0xEA0000000000656CLL, &v144);
    sub_2F118(&v144, &v139);

    TextStackView.add(_:)(v64);
    goto LABEL_45;
  }

  v55 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  swift_beginAccess();
  v56 = *(a1 + v55);
  v57 = *(v56 + 16);
  v58 = v28;
  v59 = v30;
  v60 = v26;
  if (v57)
  {

    v61 = sub_2EBF88(0x7469747265707573, 0xEA0000000000656CLL);
    if (v62)
    {
      v63 = *(*(v56 + 56) + 8 * v61);

      TextStackView.remove(_:)(v63);
    }

    else
    {
    }
  }

LABEL_46:
  v67 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  swift_beginAccess();
  v68 = *(a1 + v67);
  if (*(v68 + 16))
  {

    v69 = sub_2EBF88(0x656C746974, 0xE500000000000000);
    if (v70)
    {
      v71 = *(*(v68 + 56) + 8 * v69);

      *&v134 = v28;
      *(&v134 + 1) = v30;
      *&v135 = 0;
      *(&v135 + 1) = v112;
      v136 = 0uLL;
      *&v137 = v26;
      *(&v137 + 1) = v113;
      *&v138 = v14;
      *(&v138 + 1) = v10;
      swift_beginAccess();
      v73 = *(v71 + 48);
      v72 = *(v71 + 64);
      v74 = *(v71 + 96);
      v142 = *(v71 + 80);
      v143 = v74;
      v140 = v73;
      v141 = v72;
      v139 = *(v71 + 32);
      v75 = v138;
      *(v71 + 80) = v137;
      *(v71 + 96) = v75;
      v76 = v135;
      *(v71 + 32) = v134;
      *(v71 + 48) = v76;
      *(v71 + 64) = v136;

      sub_2F118(&v134, &v123);
      sub_2F174(&v139);
      sub_2EB2A8();
      goto LABEL_51;
    }
  }

  *&v139 = v28;
  *(&v139 + 1) = v30;
  *&v140 = 0;
  *(&v140 + 1) = v112;
  v141 = 0uLL;
  *&v142 = v26;
  *(&v142 + 1) = v113;
  *&v143 = v14;
  *(&v143 + 1) = v10;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v71 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, &v139);
  sub_2F118(&v139, &v134);

  TextStackView.add(_:)(v77);
LABEL_51:
  v79 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_title];
  v78 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_title + 8];
  swift_beginAccess();
  *(v71 + 112) = v79;
  *(v71 + 120) = v78;

  sub_2EB704();

  v80 = UIFontTextStyleTitle2;
  if (v106 == &dword_0 + 2)
  {
    v80 = v5;
    v81 = 58.0;
  }

  else
  {
    v81 = 32.0;
  }

  v82 = v80;
  v83 = sub_ABA580();

  v84 = [v103 systemGrayColor];
  v85 = [v103 clearColor];
  v86 = *(a1 + v67);
  v87 = *(v86 + 16);
  v107 = v84;
  v105 = v85;
  v104 = v83;
  if (!v87)
  {
    goto LABEL_58;
  }

  v88 = sub_2EBF88(0x656C746974627573, 0xE800000000000000);
  if ((v89 & 1) == 0)
  {

LABEL_58:
    *&v134 = v84;
    *(&v134 + 1) = v85;
    v135 = xmmword_AF7C20;
    v136 = 0uLL;
    *&v137 = v83;
    *(&v137 + 1) = 1;
    *&v138 = v81;
    *(&v138 + 1) = v10;
    type metadata accessor for TextStackView.Component();
    swift_allocObject();
    v90 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, &v134);
    sub_2F118(&v134, &v123);

    TextStackView.add(_:)(v96);
    goto LABEL_59;
  }

  v90 = *(*(v86 + 56) + 8 * v88);

  *&v123 = v84;
  *(&v123 + 1) = v85;
  v124 = xmmword_AF7C20;
  v125 = 0uLL;
  *&v126 = v83;
  *(&v126 + 1) = 1;
  *&v127 = v81;
  *(&v127 + 1) = v10;
  swift_beginAccess();
  v92 = *(v90 + 48);
  v91 = *(v90 + 64);
  v93 = *(v90 + 96);
  v137 = *(v90 + 80);
  v138 = v93;
  v135 = v92;
  v136 = v91;
  v134 = *(v90 + 32);
  v94 = v127;
  *(v90 + 80) = v126;
  *(v90 + 96) = v94;
  v95 = v124;
  *(v90 + 32) = v123;
  *(v90 + 48) = v95;
  *(v90 + 64) = v125;

  sub_2F118(&v123, v115);
  sub_2F174(&v134);
  sub_2EB2A8();
LABEL_59:
  v98 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_subtitle];
  v97 = *&v3[OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_subtitle + 8];
  swift_beginAccess();
  *(v90 + 112) = v98;
  *(v90 + 120) = v97;

  sub_2EB704();

  v115[0] = v84;
  v115[1] = v85;
  v116 = xmmword_AF7C20;
  v117 = 0;
  v118 = 0;
  v119 = v83;
  v120 = 1;
  v121 = v81;
  v122 = v10;
  sub_2F174(v115);
  *&v123 = v110;
  *(&v123 + 1) = v109;
  *&v124 = 0;
  *(&v124 + 1) = v112;
  v125 = 0uLL;
  *&v126 = v111;
  *(&v126 + 1) = v113;
  *&v127 = v14;
  *(&v127 + 1) = v10;
  sub_2F174(&v123);
}

void sub_347F18()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_pageHeaderContentViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_supertitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_maximumNumberOfLinesInTitle) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_lineBreakMode) = 4;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_textDrawingCache) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBottomHairlineVisible) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowPromotionalImage) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isBelowStandardNavigationBar) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithText) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_isAccessoryViewAlignedWithTextForAccessibilitySizes) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_adjustsFontsForAccessibilitySizes) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_bottomHairlineView) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingStackView;
  type metadata accessor for TextStackView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v6[v7] = 0;
  *(v0 + v4) = v6;
  v8 = OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_leadingSizingStackView;
  v9 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v9[v10] = 0;
  *(v0 + v8) = v9;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_needsTextUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_gradientView) = 0;
  sub_ABAFD0();
  __break(1u);
}

char *BackgroundLockupCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkEdgeInsets;
  if (qword_DE6AB8 != -1)
  {
    swift_once();
  }

  v11 = &v5[v10];
  v12 = xmmword_E714F0;
  v13 = qword_E71500;
  v14 = unk_E71508;
  *v11 = xmmword_E714F0;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  v15 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCornerTreatment;
  v16 = sub_ABA680();
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v17 = &v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkPlaceholder];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *&v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkAspectRatio] = 0x3FF0000000000000;
  v18 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView;
  type metadata accessor for TextStackView();
  *&v5[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkSize] = xmmword_B0A6A0;
  v19 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v21 = sub_80104(v20);

  *&v5[v19] = v21;
  *&v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCachingReference] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textDrawingCache] = 0;
  v22 = &v5[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets];
  *v22 = v12;
  *(v22 + 2) = v13;
  *(v22 + 3) = v14;
  v46.receiver = v5;
  v46.super_class = type metadata accessor for BackgroundLockupCollectionViewCell(0);
  v23 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent;
  v25 = v23;

  v26 = UIView.Border.artwork.unsafeMutableAddressor();
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = v26[2];
  v30 = v29;
  sub_75E64(v27, v28, v29);

  v31 = *&v23[v24];
  *(v31 + 24) = 0x70756B636F6CLL;
  *(v31 + 32) = 0xE600000000000000;

  v32 = *&v23[v24];
  v33 = *(v32 + 80);
  v34 = *(v32 + 88);
  *(v32 + 80) = *&v25[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkSize];

  sub_75614(v33, v34);

  v35 = *&v23[v24];
  v36 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v37 = (v35 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v38 = *(v35 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v39 = *(v35 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
  *v37 = sub_8A12C;
  v37[1] = v36;

  sub_17654(v38, v39);

  v40 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView;
  v41 = *&v25[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView];
  v42 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v41 + v42) = 2;
  v43 = [v25 contentView];
  [v43 addSubview:*(*&v23[v24] + 112)];

  v44 = [v25 contentView];
  [v44 addSubview:*&v25[v40]];

  sub_34A210();
  return v25;
}

void BackgroundLockupCollectionViewCell.artworkComponentBackgroundColor.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
  v4 = *(v2 + 56);
  v3 = *(v2 + 64);
  *(v2 + 56) = a1;
  if (!v3)
  {
    goto LABEL_5;
  }

  sub_B9A4C();
  v10 = a1;
  if ((sub_ABA790() & 1) == 0)
  {
    v6 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v6)
    {
      v7 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

      v6(v8);

      sub_17654(v6, v7);
LABEL_5:
      v9 = v4;
      goto LABEL_7;
    }
  }

  v9 = v10;
LABEL_7:
}

void (*BackgroundLockupCollectionViewCell.artworkComponentBackgroundColor.modify(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
  a1[1] = v2;
  v3 = *(v2 + 56);
  *a1 = v3;
  v4 = v3;
  return sub_348684;
}

void sub_348684(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_74DD4(v3);
  }

  else
  {
    sub_74DD4(v2);
  }
}

double BackgroundLockupCollectionViewCell.artworkEdgeInsets.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkEdgeInsets;
  swift_beginAccess();
  return *v1;
}

uint64_t BackgroundLockupCollectionViewCell.artworkEdgeInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  type metadata accessor for UIEdgeInsets(0);
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets];
  v13 = *&v4[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets];
  v14 = *&v4[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets + 16];
  result = sub_AB38D0();
  if (result)
  {
    v12 = *(v9 + 1);
    *v10 = *v9;
    *(v10 + 1) = v12;
    sub_34A210();
    return [v4 setNeedsLayout];
  }

  return result;
}

void (*BackgroundLockupCollectionViewCell.artworkEdgeInsets.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkEdgeInsets;
  *(v3 + 64) = v1;
  *(v3 + 72) = v4;
  swift_beginAccess();
  return sub_34889C;
}

void sub_34889C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[8];
    v5 = v4 + v3[9];
    type metadata accessor for UIEdgeInsets(0);
    v6 = v4 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets;
    v7 = *(v4 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets + 16);
    *v3 = *(v4 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets);
    *(v3 + 1) = v7;
    v8 = *(v5 + 16);
    *(v3 + 2) = *v5;
    *(v3 + 3) = v8;
    if (sub_AB38D0())
    {
      v9 = v3[8];
      v10 = *(v5 + 24);
      v11 = *(v5 + 8);
      *v6 = *&v9[v3[9]];
      *(v6 + 8) = v11;
      *(v6 + 24) = v10;
      sub_34A210();
      [v9 setNeedsLayout];
    }
  }

  free(v3);
}

uint64_t BackgroundLockupCollectionViewCell.artworkCornerTreatment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCornerTreatment;
  swift_beginAccess();
  return sub_15F84(v1 + v3, a1, &unk_DFFBC0, &unk_AF85C0);
}

uint64_t BackgroundLockupCollectionViewCell.artworkCornerTreatment.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCornerTreatment;
  swift_beginAccess();
  sub_8A01C(a1, v1 + v7);
  swift_endAccess();
  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
  sub_15F84(v1 + v7, v6, &unk_DFFBC0, &unk_AF85C0);
  v9 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v8 + v9, v4, &unk_DFFBC0, &unk_AF85C0);
  swift_beginAccess();
  sub_8A01C(v6, v8 + v9);
  swift_endAccess();
  sub_75AE8(v4);
  sub_12E1C(a1, &unk_DFFBC0, &unk_AF85C0);
  sub_12E1C(v4, &unk_DFFBC0, &unk_AF85C0);
  return sub_12E1C(v6, &unk_DFFBC0, &unk_AF85C0);
}

uint64_t (*BackgroundLockupCollectionViewCell.artworkCornerTreatment.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCornerTreatment;
  v4[11] = v6;
  v4[12] = v7;
  swift_beginAccess();
  return sub_348C64;
}

void sub_348C64(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v5 = v3[10];
    v4 = v3[11];
  }

  else
  {
    v4 = v3[11];
    v6 = v3[9];
    v5 = v3[10];
    v7 = *(v6 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
    sub_15F84(v6 + v3[12], v4, &unk_DFFBC0, &unk_AF85C0);
    v8 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
    swift_beginAccess();
    sub_15F84(v7 + v8, v5, &unk_DFFBC0, &unk_AF85C0);
    swift_beginAccess();
    sub_8A01C(v4, v7 + v8);
    swift_endAccess();
    sub_75AE8(v5);
    sub_12E1C(v5, &unk_DFFBC0, &unk_AF85C0);
    sub_12E1C(v4, &unk_DFFBC0, &unk_AF85C0);
  }

  free(v4);
  free(v5);

  free(v3);
}

id BackgroundLockupCollectionViewCell.artworkPlaceholder.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkPlaceholder;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = *(v3 + 32);
  v8 = *(v3 + 40);
  result = sub_80C9C(v4, v5, v6, v7);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v8;
  return result;
}

uint64_t BackgroundLockupCollectionViewCell.artworkPlaceholder.setter(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkPlaceholder;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v8;
  *(v3 + 32) = a1[2];
  sub_15F84(a1, v15, &unk_DF8690, &unk_AF9900);
  sub_15F84(a1, v15, &unk_DF8690, &unk_AF9900);
  sub_2F1C8(v4, v5, v6, v7);
  v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
  v10 = *(v9 + 168);
  v15[0] = *(v9 + 152);
  v15[1] = v10;
  v15[2] = *(v9 + 184);
  v12 = a1[1];
  v11 = a1[2];
  *(v9 + 152) = *a1;
  *(v9 + 168) = v12;
  *(v9 + 184) = v11;
  sub_15F84(a1, v14, &unk_DF8690, &unk_AF9900);
  sub_75948(v15);
  sub_12E1C(v15, &unk_DF8690, &unk_AF9900);
  sub_12E1C(a1, &unk_DF8690, &unk_AF9900);
  return sub_12E1C(a1, &unk_DF8690, &unk_AF9900);
}

void (*BackgroundLockupCollectionViewCell.artworkPlaceholder.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkPlaceholder;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_34900C;
}

void sub_34900C(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 72);
    v5 = v4 + *(v3 + 80);
    v6 = *(v4 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
    v7 = *v5;
    v8 = *(v5 + 8);
    v9 = *(v5 + 16);
    v10 = *(v5 + 24);
    v11 = *(v5 + 32);
    v12 = *(v5 + 40);
    v13 = *(v6 + 184);
    v14 = *(v6 + 168);
    *v3 = *(v6 + 152);
    *(v3 + 16) = v14;
    *(v3 + 32) = v13;
    *(v6 + 152) = v7;
    *(v6 + 160) = v8;
    *(v6 + 168) = v9;
    *(v6 + 176) = v10;
    *(v6 + 184) = v11;
    *(v6 + 192) = v12;
    sub_80C9C(v7, v8, v9, v10);
    sub_80C9C(v7, v8, v9, v10);
    sub_75948(v3);
    sub_12E1C(v3, &unk_DF8690, &unk_AF9900);
    sub_2F1C8(v7, v8, v9, v10);
  }

  free(v3);
}

void *BackgroundLockupCollectionViewCell.lockupImageArtworkCatalog.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void BackgroundLockupCollectionViewCell.lockupImageArtworkCatalog.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_74EA4(a1);
}

uint64_t (*BackgroundLockupCollectionViewCell.lockupImageArtworkCatalog.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_349260;
}

void sub_349260(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    v5 = v4;
    sub_74EA4(v4);
  }

  free(v3);
}

double BackgroundLockupCollectionViewCell.artworkAspectRatio.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t BackgroundLockupCollectionViewCell.artworkAspectRatio.setter(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  *(v2 + v4) = a1;
  result = sub_AB38D0();
  if (result)
  {
    return sub_34A210();
  }

  return result;
}

void (*BackgroundLockupCollectionViewCell.artworkAspectRatio.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkAspectRatio;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_34942C;
}

void sub_34942C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  v1[4] = v5;
  v1[5] = v2;
  if (sub_AB38D0())
  {
    sub_34A210();
  }

  free(v1);
}

uint64_t sub_3494CC(double a1, double a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkSize];
  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkSize];
  v8 = *&v2[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkSize + 8];
  *v6 = a1;
  v6[1] = a2;
  type metadata accessor for CGSize(0);
  result = sub_AB38D0();
  if (result)
  {
    v10 = *&v2[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent];
    v11 = *(v10 + 80);
    v12 = *(v10 + 88);
    *(v10 + 80) = *v6;
    sub_75614(v11, v12);
    return [v3 setNeedsLayout];
  }

  return result;
}

id sub_349634(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for BackgroundLockupCollectionViewCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_349684(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BackgroundLockupCollectionViewCell(0);
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_349750(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  v14 = type metadata accessor for BackgroundLockupCollectionViewCell(0);
  v25.receiver = v9;
  v25.super_class = v14;
  objc_msgSendSuper2(&v25, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24.receiver = v9;
  v24.super_class = v14;
  objc_msgSendSuper2(&v24, *a2, a3, a4, a5, a6);
  v26.origin.x = v16;
  v26.origin.y = v18;
  v26.size.width = v20;
  v26.size.height = v22;
  CGRectGetWidth(v26);
  [v9 *a1];
  CGRectGetWidth(v27);
  result = sub_AB38D0();
  if (result)
  {
    return sub_34A210();
  }

  return result;
}

Swift::Void __swiftcall BackgroundLockupCollectionViewCell.layoutSubviews()()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for BackgroundLockupCollectionViewCell(0);
  objc_msgSendSuper2(&v19, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  [v0 effectiveUserInterfaceLayoutDirection];
  v3 = UIEdgeInsetsInsetRect_4(v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_ABA490();
  sub_76B28(v10, v11, v12, v13);
  v14 = *&v0[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView];
  [v14 sizeThatFits:{v7, v9}];
  v16 = v15;
  v20.origin.x = v3;
  v20.origin.y = v5;
  v20.size.width = v7;
  v20.size.height = v9;
  MaxX = CGRectGetMaxX(v20);
  v21.origin.x = v3;
  v21.origin.y = v5;
  v21.size.width = v16;
  v21.size.height = v9;
  v18 = MaxX - CGRectGetWidth(v21);
  v22.origin.x = v3;
  v22.origin.y = v5;
  v22.size.width = v7;
  v22.size.height = v9;
  CGRectGetMaxY(v22);
  v23.origin.x = v18;
  v23.origin.y = v5;
  v23.size.width = v16;
  v23.size.height = v9;
  CGRectGetHeight(v23);
  sub_ABA490();
  [v14 setFrame:?];
}

Swift::Void __swiftcall BackgroundLockupCollectionViewCell.clearArtworkCatalogs()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
  [*(v1 + 112) clearArtworkCatalogs];
  *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
}

Swift::Void __swiftcall BackgroundLockupCollectionViewCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for BackgroundLockupCollectionViewCell(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", isa);
  if (isa)
  {
    [(objc_class *)isa displayScale];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBA30, &qword_B016E0);
  v4 = [v2 traitCollection];
  [v4 displayScale];
  v6 = v5;

  LOBYTE(v7) = 0;
  sub_8A2B8();
  if (sub_AB38D0())
  {
    [v2 setNeedsLayout];
  }
}

void sub_349D0C(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v9 = type metadata accessor for BackgroundLockupCollectionViewCell(0);
  v13.receiver = a1;
  v13.super_class = v9;
  v10 = *a4;
  v11 = a1;
  LOBYTE(v10) = objc_msgSendSuper2(&v13, v10);
  v12.receiver = v11;
  v12.super_class = v9;
  objc_msgSendSuper2(&v12, *a5, a3);
  sub_349E38(v10, a4);
}

void sub_349DB8(char a1, SEL *a2, SEL *a3)
{
  v7 = type metadata accessor for BackgroundLockupCollectionViewCell(0);
  v10.receiver = v3;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, *a2);
  v9.receiver = v3;
  v9.super_class = v7;
  objc_msgSendSuper2(&v9, *a3, a1 & 1);
  sub_349E38(v8, a2);
}

void sub_349E38(char a1, SEL *a2)
{
  if ([v2 *a2] != (a1 & 1))
  {
    v4 = *(*&v2[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent] + 112);
    v3 = 2;
    if (([v2 isHighlighted] & 1) == 0)
    {
      if ([v2 isSelected])
      {
        v3 = 2;
      }

      else
      {
        v3 = 0;
      }
    }

    [v4 setDrawMode:v3];
  }
}

double BackgroundLockupCollectionViewCell.artworkCachingReference.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent) + 16) = a1;

  return result;
}

uint64_t (*BackgroundLockupCollectionViewCell.artworkCachingReference.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCachingReference;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_34A004;
}

void sub_34A004(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(v3[3] + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent) + 16) = *(v3[3] + v3[4]);
  }

  free(v3);
}

double BackgroundLockupCollectionViewCell.textDrawingCache.setter(uint64_t a1)
{
  sub_34A618(a1);

  return result;
}

uint64_t (*BackgroundLockupCollectionViewCell.textDrawingCache.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_34A13C;
}

void sub_34A13C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;
    swift_retain_n();
    sub_2E6210(v8);
  }

  free(v3);
}

__n128 sub_34A1F4()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_E714F0 = *&UIEdgeInsetsZero.top;
  *&qword_E71500 = v1;
  return result;
}

uint64_t sub_34A210()
{
  v1 = v0;
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  v3 = [v0 traitCollection];
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  v5 = v4[1];
  v6 = v4[3];
  swift_beginAccess();
  [v3 displayScale];
  sub_AB3A00();
  v8 = v7;

  v9 = Width - v5 - v6;
  type metadata accessor for CGSize(0);
  result = sub_AB38D0();
  if (result)
  {
    return sub_3494CC(v9, v8);
  }

  return result;
}

id BackgroundLockupCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundLockupCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_34A434(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent) + 16) = a1;

  return result;
}

double sub_34A4DC()
{
  swift_beginAccess();

  return result;
}

void (*sub_34A524(uint64_t **a1))(void *a1)
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
  v2[4] = BackgroundLockupCollectionViewCell.textDrawingCache.modify(v2);
  return sub_A8F90;
}

uint64_t type metadata accessor for BackgroundLockupCollectionViewCell(uint64_t a1)
{
  result = qword_DFFCE8;
  if (!qword_DFFCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_34A5E0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

double sub_34A618(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = a1;

  sub_2E6210(v6);

  return result;
}

void _s16MusicApplication34BackgroundLockupCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkEdgeInsets;
  if (qword_DE6AB8 != -1)
  {
    swift_once();
  }

  v3 = v1 + v2;
  v4 = xmmword_E714F0;
  v5 = qword_E71500;
  v6 = unk_E71508;
  *v3 = xmmword_E714F0;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  v7 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCornerTreatment;
  v8 = sub_ABA680();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkPlaceholder);
  *v9 = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_lockupImageArtworkCatalog) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkAspectRatio) = 0x3FF0000000000000;
  v10 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textStackView;
  type metadata accessor for TextStackView();
  *(v1 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkSize) = xmmword_B0A6A0;
  v11 = OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v13 = sub_80104(v12);

  *(v1 + v11) = v13;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkCachingReference) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_textDrawingCache) = 0;
  v14 = v1 + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell__artworkEdgeInsets;
  *v14 = v4;
  *(v14 + 16) = v5;
  *(v14 + 24) = v6;
  sub_ABAFD0();
  __break(1u);
}

void sub_34A8F0(uint64_t a1)
{
  sub_7D678(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_34AB20(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews;

  v5 = sub_12D118(v4, a1);

  if (v5)
  {
    return;
  }

  v6 = *&v1[v3];
  if (v6 >> 62)
  {
LABEL_45:
    v7 = sub_ABB060();
    v31 = v1;
    if (v7)
    {
LABEL_4:
      v32 = v6 & 0xC000000000000001;
      v28 = v6 + 32;
      v29 = v6 & 0xFFFFFFFFFFFFFF8;

      v30 = v6;

      v8 = 0;
LABEL_5:
      v6 = a1 & 0xFFFFFFFFFFFFFF8;
      v9 = a1 >> 62;
      while (1)
      {
        if (v32)
        {
          v10 = sub_3605EC(v8, v30);
        }

        else
        {
          if (v8 >= *(v29 + 16))
          {
            goto LABEL_43;
          }

          v10 = *(v28 + 8 * v8);
        }

        v11 = v10;
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_42;
        }

        v1 = v7;
        if (v9)
        {
          v13 = sub_ABB060();
          if (v13)
          {
LABEL_14:
            if ((a1 & 0xC000000000000001) != 0)
            {
              v14 = 0;
              while (1)
              {
                v15 = sub_3605EC(v14, a1);
                swift_unknownObjectRelease();
                if (v11 == v15)
                {
                  break;
                }

                v16 = v14 + 1;
                if (__OFADD__(v14, 1))
                {
                  __break(1u);
                  goto LABEL_41;
                }

                ++v14;
                if (v16 == v13)
                {
                  goto LABEL_6;
                }
              }

LABEL_27:
              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              if (v9 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
              {
                a1 = sub_28572C();
                v6 = a1 & 0xFFFFFFFFFFFFFF8;
              }

              v18 = *(v6 + 16);
              if (v14 < v18)
              {
                v19 = v18 - 1;
                v20 = v6 + 8 * v14;
                v21 = *(v20 + 32);
                memmove((v20 + 32), (v20 + 40), 8 * (v18 - 1 - v14));
                *(v6 + 16) = v19;

                v7 = v1;
                if (v8 != v1)
                {
                  goto LABEL_5;
                }

LABEL_32:

                if (a1 >> 62)
                {
                  goto LABEL_47;
                }

LABEL_33:
                v22 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
                if (v22)
                {
                  goto LABEL_34;
                }

LABEL_48:

                v26 = *&v31[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_layoutInvalidationHandler];
                if (v26)
                {
                  v27 = *&v31[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_layoutInvalidationHandler + 8];

                  v26(v31);
                  sub_17654(v26, v27);
                }

                [v31 setNeedsLayout];
                return;
              }
            }

            else
            {
              v14 = 0;
              while (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)) != v14)
              {
                if (v11 == *(a1 + 32 + 8 * v14))
                {
                  goto LABEL_27;
                }

                if (v13 == ++v14)
                {
                  goto LABEL_6;
                }
              }

LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
            }

            __break(1u);
            goto LABEL_45;
          }
        }

        else
        {
          v13 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
          if (v13)
          {
            goto LABEL_14;
          }
        }

LABEL_6:
        [v31 addSubview:v11];

        v7 = v1;
        if (v8 == v1)
        {
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    v31 = v1;
    if (v7)
    {
      goto LABEL_4;
    }
  }

  if (!(a1 >> 62))
  {
    goto LABEL_33;
  }

LABEL_47:
  v22 = sub_ABB060();
  if (!v22)
  {
    goto LABEL_48;
  }

LABEL_34:
  if (v22 >= 1)
  {
    for (i = 0; i != v22; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = sub_3605EC(i, a1);
      }

      else
      {
        v24 = *(a1 + 8 * i + 32);
      }

      v25 = v24;
      [v24 removeFromSuperview];
    }

    goto LABEL_48;
  }

  __break(1u);
}

id sub_34AEA0(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    [v1 sizeThatFits:{0.0, 0.0}];
    v4 = v3;
    v5 = OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_lastKnownHeight;
    v9 = v3;
    v10 = *&v1[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_lastKnownHeight];
    if ((sub_AB38D0() & 1) == 0)
    {
      return [v2 setNeedsLayout];
    }

    *&v1[v5] = v4;
  }

  v6 = *&v1[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_layoutInvalidationHandler];
  if (v6)
  {
    v7 = *&v1[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_layoutInvalidationHandler + 8];

    v6(v2);
    sub_17654(v6, v7);
  }

  return [v2 setNeedsLayout];
}

void sub_34AF78(uint64_t a1)
{
  v2 = v1;
  v87.receiver = v1;
  v87.super_class = type metadata accessor for PromotionalParallaxContentStackView();
  objc_msgSendSuper2(&v87, "layoutSubviews");
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v1 traitCollection];
  [v11 displayScale];

  [v2 effectiveUserInterfaceLayoutDirection];
  [v2 music_inheritedLayoutInsets];
  v13 = v12;
  v15 = v14;
  v78 = [v2 traitCollection];
  v83 = v4;
  v16 = UIEdgeInsetsInsetRect(v4, v6, v8, v10, v13, v15);
  rect = v17;
  v19 = v18;
  v21 = v20;
  v80 = *&v2[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_interitemSpacing];
  v22 = *&v2[OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews];
  if (v22 >> 62)
  {
    v72 = v16;
    v73 = sub_ABB060();
    v16 = v72;
    v23 = v73;
    if (v73)
    {
      goto LABEL_3;
    }

LABEL_44:

    return;
  }

  v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
  if (!v23)
  {
    goto LABEL_44;
  }

LABEL_3:
  if (v23 >= 1)
  {
    v79 = v16;
    v82 = v10;
    v84 = v8;
    v24 = v22 & 0xC000000000000001;

    v25 = 0;
    v26 = &selRef__authenticateReturningError_;
    v81 = v19;
    v76 = v22 & 0xC000000000000001;
    v77 = v22;
    v75 = v23;
    while (1)
    {
      v85 = v21;
      if (v24)
      {
        v44 = sub_3605EC(v25, v22);
      }

      else
      {
        v44 = *(v22 + 8 * v25 + 32);
      }

      v45 = v44;
      swift_getObjectType();
      v46 = swift_conformsToProtocol2();
      if (v46 && v45)
      {
        v47 = v46;
        ObjectType = swift_getObjectType();
        v49 = (*(v47 + 16))(v2, v78, ObjectType, v47);
        v50 = (*(v47 + 8))(v2, v78, ObjectType, v47);
        if (v49 == 2)
        {
          [v45 music_layoutInsets];
          v52 = v51;
          [v45 music_layoutInsets];
          [v45 music_setLayoutInsets:{v52, 0.0}];
          v91.origin.x = v79;
          v91.size.height = v21;
          v91.origin.y = rect;
          v91.size.width = v81;
          v26 = &selRef__authenticateReturningError_;
          [v45 sizeThatFits:{CGRectGetWidth(v91), 0.0}];
          Width = v53;
          v56 = v55;
          v49 = 0;
          v23 = v75;
          v24 = v76;
          v22 = v77;
          v57 = v50;
          if (v50)
          {
            goto LABEL_38;
          }

          goto LABEL_23;
        }

        [v45 music_layoutInsets];
        v60 = v62;
        if (v49)
        {
          v61 = -1.0;
        }

        else
        {
          v61 = 0.0;
        }

        v23 = v75;
        v24 = v76;
        v22 = v77;
        v26 = &selRef__authenticateReturningError_;
      }

      else
      {
        [v45 music_layoutInsets];
        v60 = v59;
        v49 = 0;
        v61 = 0.0;
        v50 = 1;
      }

      [v45 music_layoutInsets];
      [v45 music_setLayoutInsets:{v60, v61}];
      if (v49)
      {
        v63 = v83;
      }

      else
      {
        v63 = v79;
      }

      v64 = rect;
      if (v49)
      {
        v64 = v6;
      }

      v65 = v81;
      v66 = v21;
      if (v49)
      {
        v65 = v84;
        v66 = v82;
      }

      Width = CGRectGetWidth(*&v63);
      v93.origin.x = 0.0;
      v93.origin.y = 0.0;
      v93.size.height = 0.0;
      v93.size.width = Width;
      [v45 v26[307]];
      v56 = v67;
      v57 = v50;
      if (v50)
      {
LABEL_38:
        if (v57 != 1)
        {
          if (v49)
          {
            v27 = v83;
          }

          else
          {
            v27 = v79;
          }

          v28 = v6;
          v29 = rect;
          if (v49)
          {
            v29 = v6;
          }

          v30 = v81;
          v31 = v84;
          if ((v49 & 1) == 0)
          {
            v31 = v81;
          }

          v32 = v82;
          v33 = v21;
          if ((v49 & 1) == 0)
          {
            v32 = v21;
          }

          MaxX = CGRectGetMaxX(*&v27);
          v88.origin.x = 0.0;
          v88.origin.y = 0.0;
          v88.size.width = Width;
          v88.size.height = v56;
          v35 = CGRectGetWidth(v88);
          v36 = rect;
          v37 = MaxX - v35;
          goto LABEL_15;
        }

        v74 = v56;
        v28 = v6;
        sub_ABA470();
        v36 = rect;
        v37 = v68;
        Width = v69;
        v56 = v70;
        goto LABEL_40;
      }

LABEL_23:
      if ((v49 & 1) == 0)
      {
        v94.origin.x = v79;
        v33 = v21;
        v94.origin.y = rect;
        v30 = v81;
        v94.size.width = v81;
        v94.size.height = v21;
        MinX = CGRectGetMinX(v94);
        v28 = v6;
        v36 = rect;
        v37 = MinX;
        goto LABEL_15;
      }

      v92.origin.x = v83;
      v28 = v6;
      v92.origin.y = v6;
      v92.size.width = v84;
      v92.size.height = v82;
      v58 = CGRectGetMinX(v92);
      v36 = rect;
      v37 = v58;
LABEL_40:
      v30 = v81;
      v33 = v85;
LABEL_15:
      ++v25;
      v38 = v79;
      v39 = v30;
      v40 = v33;
      MinY = CGRectGetMinY(*(&v36 - 1));
      sub_ABA490();
      [v45 setFrame:?];
      v89.origin.x = v37;
      v89.origin.y = MinY;
      v89.size.width = Width;
      v89.size.height = v56;
      v42 = v33 - (v80 + CGRectGetHeight(v89));
      v90.origin.x = v37;
      v90.origin.y = MinY;
      v90.size.width = Width;
      v90.size.height = v56;
      MaxY = CGRectGetMaxY(v90);

      rect = v80 + MaxY;
      v6 = v28;
      v21 = v42;
      if (v23 == v25)
      {

        return;
      }
    }
  }

  __break(1u);
}

uint64_t sub_34B68C(double a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews);
  if (v4 >> 62)
  {
    v5 = sub_ABB060();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = 0.0;

  v7 = 0;
  v8 = 0.0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = sub_3605EC(v7, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    ++v7;
    [v9 sizeThatFits:{a1, 0.0}];
    v12 = v11;
    v14 = v13;

    if (v8 <= v12)
    {
      v8 = v12;
    }

    v6 = v6 + v14;
  }

  while (v5 != v7);

LABEL_13:
  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    result = sub_ABB060();
    if (result)
    {
LABEL_15:
      v4 = result - 1;
      if (!__OFSUB__(result, 1))
      {
        if ((v5 & 0xC000000000000001) == 0)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v4 < *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            v16 = *(v5 + 8 * v4 + 32);
LABEL_20:
            swift_getObjectType();
            v17 = swift_conformsToProtocol2();
            if (v17)
            {
              v18 = v16 == 0;
            }

            else
            {
              v18 = 1;
            }

            if (!v18)
            {
              v19 = v17;
              ObjectType = swift_getObjectType();
              (*(v19 + 24))(v1, ObjectType, v19);
            }

            goto LABEL_27;
          }

          __break(1u);
          return result;
        }

LABEL_32:

        v16 = sub_3605EC(v4, v5);

        goto LABEL_20;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {
    result = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
  if (*(v1 + v3) >> 62)
  {
    sub_ABB060();
  }

  return sub_AB38D0();
}

id sub_34B944(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PromotionalParallaxContentStackView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_34B9F0()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    do
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_18:
        swift_once();
        if (byte_E71A90)
        {
          return;
        }

LABEL_13:
        if (*(v0 + 145) == 1)
        {
          v9 = *(*v0 + 776);

          v9();
        }

        return;
      }

      v7 = *v4;
      v8 = qword_DE6D68;
      swift_unknownObjectRetain();
      if (v8 == -1)
      {
        if (byte_E71A90)
        {
          goto LABEL_8;
        }
      }

      else
      {
        swift_once();
        if (byte_E71A90)
        {
LABEL_8:
          v5 = 0;
          goto LABEL_4;
        }
      }

      v5 = *(v0 + 145);
LABEL_4:
      ++v3;
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(v5, ObjectType, v7);
      swift_unknownObjectRelease();
      v4 += 2;
    }

    while (v2 != v3);
  }

  if (qword_DE6D68 != -1)
  {
    goto LABEL_18;
  }

  if ((byte_E71A90 & 1) == 0)
  {
    goto LABEL_13;
  }
}

id sub_34BB9C()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isHiddenBySearchController] = 0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDidSelectItem];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onContextMenuPresentation];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onAddKeepLocalControl];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_contextActionsModelLoadingHandler];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onDragSessionStart];
  *v7 = 0;
  v7[1] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_resultsLoadingWatchdog] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_hasMixedTypes] = 0;
  v8 = &v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults];
  type metadata accessor for Search.Item(0);
  sub_1D30D0();
  sub_35BD2C(&qword_DF4FB0, type metadata accessor for Search.Item, &protocol conformance descriptor for Search.Item);
  sub_AB5110();
  v9 = type metadata accessor for Search.ResultContext(0);
  v10 = &v8[v9[7]];
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *v10 = 0u;
  v11 = &v8[v9[5]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v8[v9[6]] = 1;
  *&v8[v9[8]] = 0;
  *&v8[v9[9]] = 0;
  v12 = &v8[v9[10]];
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0x7000000000000007;
  (*(*(v9 - 1) + 56))(&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__unfrozenResults], 1, 1, v9);
  v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_areResultsFrozen] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___impressionsTracker] = 0;
  v13 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v1[v13] = TextDrawing.Cache.init()();
  v14 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *&v1[v14] = swift_allocObject();
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_bindings] = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_jsSearchResultItemTranslator;
  type metadata accessor for SearchResultItemTranslator();
  v16 = swift_allocObject();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v16 + 16) = UnfairLock.init()();
  *(v16 + 24) = 0;
  *&v1[v15] = v16;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___dateFormatter] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___playabilityController] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___loadingView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___noContentController] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_addKeepLocalController] = 0;
  v17 = objc_allocWithZone(type metadata accessor for JSSearchResultComponentController(0));
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_componentController] = JSSearchResultComponentController.init()();
  v19.receiver = v1;
  v19.super_class = type metadata accessor for SearchResultsViewController(0);
  return objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
}

void sub_34BF10()
{
  v1 = v0;
  v58.receiver = v0;
  v58.super_class = type metadata accessor for SearchResultsViewController(0);
  objc_msgSendSuper2(&v58, "viewDidLoad");
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_35BCB0;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_496F34;
  aBlock[3] = &block_descriptor_165_0;
  v4 = _Block_copy(aBlock);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_31;
  }

  v7 = v6;
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v55 = v5;
  v16 = [objc_allocWithZone(UICollectionView) initWithFrame:v5 collectionViewLayout:{v9, v11, v13, v15}];
  [v16 setAlwaysBounceVertical:1];
  [v16 setKeyboardDismissMode:1];
  v17 = v16;
  [v17 setAutoresizingMask:18];
  [v17 setContentInsetAdjustmentBehavior:3];

  v18 = [objc_opt_self() systemBackgroundColor];
  [v17 setBackgroundColor:v18];

  [v17 setAllowsFocus:1];
  [v17 setRemembersLastFocusedIndexPath:1];
  [v17 setDelegate:v1];
  v19 = *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
  v56 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView] = v17;
  v20 = v17;

  v21 = [v1 view];
  if (!v21)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v22 = v21;
  [v21 addSubview:v20];

  v23 = type metadata accessor for SearchResultsViewController.Header();
  v24 = sub_AB92A0();
  v26 = v25;
  v27 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v23, v24, v26, v27, v28);

  v29 = type metadata accessor for SearchHintCell();
  v30 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v29, v30, v31);

  v32 = type metadata accessor for SearchResultCell(0);
  for (i = 0; i != 15; ++i)
  {
    v34 = 0xD000000000000016;
    v35 = "extLabel";
    switch(*(&off_CF14C8 + i + 32))
    {
      case 1:
        v34 = 0xD00000000000001CLL;
        v35 = "ArtistSearchResultCell";
        break;
      case 2:
        v34 = 0xD000000000000015;
        v35 = "SocialPersonSearchResultCell";
        break;
      case 3:
        v34 = 0xD000000000000018;
        v35 = "AlbumSearchResultCell";
        break;
      case 4:
        v34 = 0xD000000000000017;
        v35 = "ComposerSearchResultCell";
        break;
      case 5:
        v34 = 0xD000000000000015;
        v35 = "CuratorSearchResultCell";
        break;
      case 6:
        v34 = 0xD000000000000018;
        v35 = "GenreSearchResultCell";
        break;
      case 7:
        v34 = 0xD00000000000001CLL;
        v35 = "PlaylistSearchResultCell";
        break;
      case 8:
        v34 = 0xD000000000000014;
        v35 = "RadioStationSearchResultCell";
        break;
      case 9:
        v34 = 0xD00000000000001ALL;
        v35 = "SongSearchResultCell";
        break;
      case 0xA:
        v34 = 0xD000000000000016;
        v35 = "MusicVideoSearchResultCell";
        break;
      case 0xB:
        v34 = 0xD000000000000017;
        v35 = "TVShowSearchResultCell";
        break;
      case 0xC:
        v34 = 0xD000000000000015;
        v35 = "EpisodeSearchResultCell";
        break;
      case 0xD:
        v34 = 0xD00000000000001BLL;
        v35 = "MovieSearchResultCell";
        break;
      case 0xE:
        v34 = 0xD000000000000017;
        v35 = "RecordLabelSearchResultCell";
        break;
      default:
        break;
    }

    UICollectionView.register<A>(_:reuseIdentifier:)(v32, v34, v35 | 0x8000000000000000);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00080, &qword_B0A9A0));
  v36 = v20;
  v37 = sub_AB5200();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_AB5210();

  v38 = *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource];
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource] = v37;
  v39 = v37;

  sub_34E868(0, 0);
  v40 = [v1 traitCollection];
  v41 = UITraitCollection.isMediaPicker.getter(v40);

  if (v41)
  {
    v42 = [v1 navigationController];
    if (v42)
    {
      v43 = v42;
      type metadata accessor for MediaPickerNavigationController(0);
      if (swift_dynamicCastClass())
      {
        v44 = *&v1[v56];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE318, &qword_B09168);
        v45 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *(v45 + 24) = 0;
        *(v45 + 32) = 0;
        swift_unknownObjectWeakAssign();
        v46 = v44;

        v47 = *(v45 + 24);
        *(v45 + 24) = v44;

        *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController] = v45;
        goto LABEL_28;
      }
    }
  }

  v48 = *&v1[v56];
  if (!v48)
  {
LABEL_32:
    __break(1u);
    JUMPOUT(0x34C754);
  }

  type metadata accessor for LibraryCollectionViewAddKeepLocalController();
  swift_allocObject();
  v49 = sub_1709C(v48);

  v50 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_addKeepLocalController;
  *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_addKeepLocalController] = v49;

  *(v49 + 24) = &off_D0C440;
  swift_unknownObjectWeakAssign();

  v51 = *&v1[v50];
  if (!v51)
  {
    return;
  }

  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = *(v51 + 32);
  v54 = *(v51 + 40);
  *(v51 + 32) = sub_35BCC8;
  *(v51 + 40) = v52;

  sub_17654(v53, v54);

LABEL_28:
}

char *sub_34C790(unint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v16 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return 0;
  }

  v10 = result;
  v11 = *&result[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource];
  if (v11)
  {
    v12 = v11;
    sub_AB5250();

    v13 = sub_AB5100();
    result = (*(v6 + 8))(v8, v5);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v13 + 16) > a1)
    {
      v14 = *(v13 + a1 + 32);

      v15 = sub_351734(v14, a2);

      return v15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_34C918(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = sub_351B58(a3, a2);

  return v8;
}

void sub_34C998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v40 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  v40 = a1;
  if (sub_AB92A0() == a2 && v14 == a3)
  {
  }

  else
  {
    v16 = sub_ABB3C0();

    if ((v16 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v17 = *&v13[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v18 = v17;
  sub_AB5250();

  v19 = sub_AB5100();
  (*(v9 + 8))(v11, v8);
  v20 = v41;
  v21 = IndexPath.safeSection.getter();
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v21 >= *(v19 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = *(v19 + v21 + 32);

  if (v22)
  {
LABEL_13:

    return;
  }

  v23 = type metadata accessor for SearchResultsViewController.Header();
  v24 = static UICollectionReusableView.reuseIdentifier.getter();
  v26 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v23, a2, a3, v20, v24, v25, v23);

  sub_AB91E0();
  sub_AB3550();
  v27 = sub_AB9320();
  v28 = (v26 + OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_title);
  *v28 = v27;
  v28[1] = v29;

  v30 = *(v26 + OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_titleLabel);

  v31 = sub_AB9260();

  [v30 setText:v31];

  sub_AB91E0();
  sub_AB3550();
  v32 = sub_AB9320();
  sub_3596A0(v32, v33);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = (v26 + OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_buttonHandler);
  v36 = *(v26 + OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_buttonHandler);
  v37 = *(v26 + OBJC_IVAR____TtCC16MusicApplication27SearchResultsViewControllerP33_ECEB0A228643F5C5A0ED18BD126DBF576Header_buttonHandler + 8);
  *v35 = sub_35BCD0;
  v35[1] = v34;
  swift_retain_n();
  sub_17654(v36, v37);
  v38 = sub_359758();
  v39 = sub_13C80(0, &qword_DF13D0, UIButton_ptr);

  ControlEventHandling<>.on(_:handler:)(64, sub_35BCD0, v34, v39);
}

void sub_34CE0C(void *a1, uint64_t a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v3 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v4 = sub_AB9260();

  aBlock[4] = sub_34D190;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1546C;
  aBlock[3] = &block_descriptor_173;
  v5 = _Block_copy(aBlock);

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:2 handler:v5];
  _Block_release(v5);

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v8 = sub_AB9260();

  v9 = [v6 actionWithTitle:v8 style:1 handler:0];

  [v3 addAction:v7];
  [v3 addAction:v9];
  v10 = v3;
  v11 = [v10 popoverPresentationController];
  if (v11)
  {
    v12 = v11;
    [v11 setSourceView:a1];
  }

  v13 = [v10 popoverPresentationController];

  if (v13)
  {
    [a1 bounds];
    [v13 setSourceRect:?];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [Strong presentViewController:v10 animated:1 completion:0];

    v7 = v9;
    v9 = v15;
  }
}

void sub_34D190()
{
  v0 = [objc_opt_self() standardUserDefaults];
  memset(v5, 0, sizeof(v5));
  v4 = 1;
  v1 = sub_35BCD8();
  v2 = sub_36A48();
  NSUserDefaults.subscript.setter(v5, &v4, &_s9SearchKeyON, v1, v2, v3);
}

void sub_34D214(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FB8, &unk_B02820);
  __chkstk_darwin();
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      sub_AB5230();

      v8 = type metadata accessor for Search.Item(0);
      if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
      {
        sub_12E1C(v3, &qword_DF4FB8, &unk_B02820);
      }

      else
      {
        v9 = Search.Item.modelObject.getter();
        sub_35BBD4(v3, type metadata accessor for Search.Item);
        if (v9)
        {
          v10 = [v9 innermostModelObject];

          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_34D5F4(void *a1)
{
  v2 = v1;
  v34.receiver = v1;
  v34.super_class = type metadata accessor for SearchResultsViewController(0);
  objc_msgSendSuper2(&v34, "traitCollectionDidChange:", a1);
  if ([v1 isViewLoaded])
  {
    v4 = [v1 traitCollection];
    v5 = UITraitCollection.isMediaPicker.getter(v4);

    if (!a1 || UITraitCollection.isMediaPicker.getter(v6) != v5)
    {
      v7 = [v2 traitCollection];
      v8 = UITraitCollection.isMediaPicker.getter(v7);

      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v10 = *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
        if (!v10)
        {
          goto LABEL_33;
        }

        type metadata accessor for LibraryCollectionViewAddKeepLocalController();
        swift_allocObject();
        v9 = sub_1709C(v10);
      }

      *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_addKeepLocalController] = v9;
    }
  }

  v11 = [v2 traitCollection];
  v12 = UITraitCollection.isMediaPicker.getter(v11);

  if (v12)
  {
    v13 = [v2 navigationController];
    if (v13)
    {
      v14 = v13;
      type metadata accessor for MediaPickerNavigationController(0);
      if (swift_dynamicCastClass())
      {
        v15 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController;
        if (!*&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController])
        {
          v30 = *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE318, &qword_B09168);
          v31 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *(v31 + 24) = 0;
          *(v31 + 32) = 0;
          swift_unknownObjectWeakAssign();
          v32 = v30;

          v33 = *(v31 + 24);
          *(v31 + 24) = v30;

          *&v2[v15] = v31;
          goto LABEL_16;
        }
      }
    }
  }

  v16 = [v2 traitCollection];
  v17 = UITraitCollection.isMediaPicker.getter(v16);

  if (v17)
  {
    goto LABEL_17;
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController] = 0;
LABEL_16:

LABEL_17:
  v18 = [v2 traitCollection];
  v19 = [v18 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_23:
    v26 = *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_textDrawingCache];
    [*(v26 + 64) removeAllObjects];
    [*(v26 + 80) removeAllObjects];
    if (*(v26 + 96))
    {
      *(v26 + 104) = 1;
    }

    else
    {
      v27 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v27 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v26];
    }

    v28 = *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
    if (v28)
    {
      v29 = [v28 collectionViewLayout];
      [v29 invalidateLayout];

      return;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v20 = [a1 preferredContentSizeCategory];
  v21 = sub_AB92A0();
  v23 = v22;
  if (v21 == sub_AB92A0() && v23 == v24)
  {

    return;
  }

  v25 = sub_ABB3C0();

  if ((v25 & 1) == 0)
  {
    goto LABEL_23;
  }
}

void sub_34DA84(char a1)
{
  v2 = v1;
  sub_AB7C10();
  __chkstk_darwin();
  v4 = *(type metadata accessor for Search.ResultContext(0) - 8);
  v5 = *(v4 + 64);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isViewLoaded] && v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading] != (a1 & 1))
  {
    if (v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading])
    {
      v7 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
      swift_beginAccess();
      sub_35BA54(&v1[v7], &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Search.ResultContext);
      v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      sub_35BB6C(v6, v9 + v8, type metadata accessor for Search.ResultContext);
      aBlock[4] = sub_35A8D8;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_109;
      _Block_copy(aBlock);
      v16 = _swiftEmptyArrayStorage;
      sub_35BD2C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v10 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
      sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
      sub_ABABB0();
      sub_AB7CB0();
      swift_allocObject();
      v11 = sub_AB7C90();

      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v12 = sub_ABA150();
      OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)(v11);

      v13 = *&v10[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_resultsLoadingWatchdog];
      *&v10[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_resultsLoadingWatchdog] = v11;
      if (v13)
      {

        sub_AB7CA0();

LABEL_8:
      }
    }

    else
    {
      v14 = sub_350C04();
      LOBYTE(aBlock[0]) = 1;
      LoadingView.style.setter(0x10000000000);

      v15 = *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_resultsLoadingWatchdog];
      *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_resultsLoadingWatchdog] = 0;
      if (v15)
      {
        sub_AB7CA0();
        goto LABEL_8;
      }
    }

    sub_358898(1);
  }
}

void sub_34DE3C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading) != 1)
  {
    return;
  }

  v3 = a1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
  swift_beginAccess();
  v4 = *(type metadata accessor for Search.ResultContext(0) + 20);
  v5 = (v3 + v4);
  v6 = *(v3 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (!v6)
  {
    if (v8)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v8)
  {
    v9 = *v5 == *v7 && v6 == v8;
    if (v9 || (sub_ABB3C0() & 1) != 0)
    {
LABEL_11:
      v10 = sub_350C04();
      LoadingView.style.setter(0x100000000);
    }
  }
}

void sub_34DF14(uint64_t a1)
{
  v3 = type metadata accessor for Search.ResultContext(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v15[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  v9 = __chkstk_darwin();
  v11 = &v15[-v10];
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_areResultsFrozen))
  {
    sub_35BB6C(a1, v11, type metadata accessor for Search.ResultContext);
    (*(v4 + 56))(v11, 0, 1, v3);
    v12 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__unfrozenResults;
    swift_beginAccess();
    sub_160B4(v11, v1 + v12, &unk_E00050, &qword_B094D0);
    swift_endAccess();
  }

  else
  {
    (*(v4 + 56))(v11, 1, 1, v3, v9);
    v13 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__unfrozenResults;
    swift_beginAccess();
    sub_160B4(v11, v1 + v13, &unk_E00050, &qword_B094D0);
    swift_endAccess();
    sub_35BA54(a1, v8, type metadata accessor for Search.ResultContext);
    v14 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
    swift_beginAccess();
    sub_35BA54(v1 + v14, v6, type metadata accessor for Search.ResultContext);
    swift_beginAccess();
    sub_35BC4C(v8, v1 + v14);
    swift_endAccess();
    sub_34E1E4(v6);
    sub_35BBD4(a1, type metadata accessor for Search.ResultContext);
    sub_35BBD4(v6, type metadata accessor for Search.ResultContext);
    sub_35BBD4(v8, type metadata accessor for Search.ResultContext);
  }
}

void sub_34E1E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Search.ResultContext(0);
  __chkstk_darwin();
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v57 - v8;
  if (![v1 isViewLoaded])
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v61 = sub_AB50C0();
  v10 = (a1 + v4[5]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v2 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
  swift_beginAccess();
  v14 = (v13 + v4[5]);
  v15 = v14[1];
  if (v12)
  {
    if (!v15)
    {
      goto LABEL_27;
    }

    v16 = v11 == *v14 && v12 == v15;
    if (!v16 && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v15)
  {
    goto LABEL_27;
  }

  sub_15F84(a1 + v4[7], v65, &unk_E00070, &unk_B0A990);
  if (*&v65[0])
  {
    sub_E8BA0(v65 + 8, v62);
    sub_30E500(v65);
    v17 = v63;
    v18 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v19 = (*(v18 + 8))(v17, v18);
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_0(v62);
  }

  else
  {
    sub_12E1C(v65, &unk_E00070, &unk_B0A990);
    v19 = 0;
    v21 = 0;
  }

  sub_35BA54(v13, v9, type metadata accessor for Search.ResultContext);
  v22 = &v9[v4[7]];
  if (*v22)
  {
    v58 = v19;
    v23 = *(v22 + 4);
    v24 = *(v22 + 5);
    __swift_project_boxed_opaque_existential_1(v22 + 1, v23);
    v59 = &v57;
    v25 = *(v23 - 8);
    v26 = __chkstk_darwin();
    v60 = v21;
    v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28, v26);
    sub_35BBD4(v9, type metadata accessor for Search.ResultContext);
    v29 = (*(v24 + 8))(v23, v24);
    v31 = v30;
    v32 = v28;
    v33 = v60;
    (*(v25 + 8))(v32, v23);
    if (v33)
    {
      if (v31)
      {
        if (v58 == v29 && v33 == v31)
        {
        }

        else
        {
          v35 = sub_ABB3C0();

          if ((v35 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_39;
      }

LABEL_26:

      goto LABEL_27;
    }

    if (v31)
    {
      goto LABEL_26;
    }
  }

  else
  {
    sub_35BBD4(v9, type metadata accessor for Search.ResultContext);
    if (v21)
    {
      goto LABEL_26;
    }
  }

LABEL_39:
  v54 = v4[6];
  v55 = *(a1 + v54);
  v56 = *(v13 + v54);
  if (v55)
  {
    if (v56)
    {
      goto LABEL_43;
    }
  }

  else if ((v56 & 1) == 0)
  {
LABEL_43:
    v36 = 0;
    goto LABEL_28;
  }

LABEL_27:
  v36 = 1;
LABEL_28:
  if (qword_DE6D48 != -1)
  {
    swift_once();
  }

  v37 = sub_AB4BC0();
  __swift_project_value_buffer(v37, static Logger.search);
  v38 = v2;
  v39 = sub_AB4BA0();
  v40 = sub_AB9F10();

  if (os_log_type_enabled(v39, v40))
  {
    LODWORD(v60) = v36;
    v41 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v62[0] = v59;
    *v41 = 136643331;
    v42 = (v13 + v4[5]);
    v43 = v42[1];
    *&v65[0] = *v42;
    *(&v65[0] + 1) = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0, &unk_AF8970);
    v44 = sub_AB9350();
    v46 = sub_425E68(v44, v45, v62);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2082;
    LOBYTE(v65[0]) = *(v13 + v4[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF5010, &unk_B02880);
    v47 = sub_AB9350();
    v49 = sub_425E68(v47, v48, v62);

    *(v41 + 14) = v49;
    *(v41 + 22) = 2082;
    sub_35BA54(v13, v6, type metadata accessor for Search.ResultContext);
    v50 = &v6[v4[7]];
    if (*v50)
    {
      sub_E8BA0((v50 + 8), v65);
      sub_35BBD4(v6, type metadata accessor for Search.ResultContext);
    }

    else
    {
      sub_35BBD4(v6, type metadata accessor for Search.ResultContext);
      memset(v65, 0, sizeof(v65));
      v66 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060, &qword_B094F0);
    v51 = sub_AB9350();
    v53 = sub_425E68(v51, v52, v62);

    *(v41 + 24) = v53;
    _os_log_impl(&dword_0, v39, v40, "Will apply results for search=%{sensitive}s, variant=%{public}s, scope=%{public}s", v41, 0x20u);
    swift_arrayDestroy();

    v36 = v60;
  }

  else
  {
  }

  sub_34E868(v61 > 0, v36);
}

void sub_34E868(uint64_t a1, int a2)
{
  v3 = v2;
  v30 = a2;
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v28 - v7;
  v9 = type metadata accessor for Search.ResultContext(0);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v28 - v12;
  v14 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
  swift_beginAccess();
  sub_35BA54(v3 + v14, v13, type metadata accessor for Search.ResultContext);
  v15 = *(v6 + 16);
  v29 = v5;
  v15(v8, v13, v5);
  sub_358898(v4);
  sub_35BA54(v3 + v14, v11, type metadata accessor for Search.ResultContext);
  v16 = &v11[*(v9 + 28)];
  if (*v16)
  {
    sub_E8BA0((v16 + 8), v34);
    sub_35BBD4(v11, type metadata accessor for Search.ResultContext);
    sub_15F84(v34, v31, &unk_E00060, &qword_B094F0);
    v17 = v32;
    if (v32)
    {
      v18 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v19 = (*(v18 + 32))(v17, v18);
      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    else
    {
      sub_12E1C(v31, &unk_E00060, &qword_B094F0);
      v19 = 0;
    }
  }

  else
  {
    sub_35BBD4(v11, type metadata accessor for Search.ResultContext);
    memset(v34, 0, sizeof(v34));
    v35 = 0;
    v19 = 1;
  }

  *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_hasMixedTypes) = v19 & 1;
  sub_34F178();
  sub_2E4810(v20);

  if (v30)
  {
    v21 = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView);
    if (!v21)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    [v21 _scrollToTopIfPossible:0];
  }

  v22 = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource);
  if (v4)
  {
    if (v22)
    {
      v23 = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish);
      v24 = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish + 8);
      v25 = v22;
      sub_307CC(v23, v24);
      sub_AB5220();
LABEL_14:
      sub_17654(v23, v24);

      v26 = *&v13[*(v9 + 32)];
      v27 = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_componentController);

      sub_3599F0(v8, v26, v27);
      sub_12E1C(v34, &unk_E00060, &qword_B094F0);
      (*(v6 + 8))(v8, v29);
      sub_35BBD4(v13, type metadata accessor for Search.ResultContext);

      return;
    }

    goto LABEL_16;
  }

  if (v22)
  {
    v23 = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish);
    v24 = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_onPageRenderFinish + 8);
    v25 = v22;
    sub_307CC(v23, v24);
    sub_AB5240();
    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
}

void *sub_34F178()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___impressionsTracker;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___impressionsTracker])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___impressionsTracker];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFFFA8, &qword_B0A930);
    swift_allocObject();
    v2 = sub_2BFEB0(v0, v4, 1, 0);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_34F244(char *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v5 = v24 - v4;
  v6 = type metadata accessor for Search.ResultContext(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v24 - v12;
  v14 = *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource);
  if (v14)
  {
    v15 = v14;
    sub_AB5250();

    v16 = sub_AB5100();
    (*(v11 + 8))(v13, v10);
    if (!*(v16 + 16))
    {

      goto LABEL_16;
    }

    v17 = *(v16 + 32);

    if (v17 > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_16;
      }

      v18 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
      swift_beginAccess();
      sub_35BA54(v2 + v18, v9, type metadata accessor for Search.ResultContext);
      v19 = &v9[*(v6 + 28)];
      if (!*v19)
      {
        sub_35BBD4(v9, type metadata accessor for Search.ResultContext);
        goto LABEL_16;
      }

      sub_E8BA0((v19 + 8), v26);
      sub_35BBD4(v9, type metadata accessor for Search.ResultContext);
      sub_70DF8(v26, v24);
      sub_70DF8(v24, v27);
      v20 = 1;
    }

    else
    {
      if (!v17)
      {
        LOBYTE(v27[0]) = 0;
        v29 = 0;
LABEL_12:
        sub_15F84(v27, v24, &qword_DFE5D0, &qword_B094F8);
        if (v25 != 255)
        {
          v21 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
          swift_beginAccess();
          sub_35BA54(v2 + v21, v5, type metadata accessor for Search.ResultContext);
          (*(v7 + 56))(v5, 0, 1, v6);
          sub_475B48(v5, 2, a1);
          sub_12E1C(v5, &unk_E00050, &qword_B094D0);
          sub_12E1C(v27, &qword_DFE5D0, &qword_B094F8);
          sub_30E4AC(v24);
          v22 = 0;
LABEL_17:
          v23 = type metadata accessor for MetricsPageProperties(0);
          (*(*(v23 - 8) + 56))(a1, v22, 1, v23);
          return;
        }

        sub_12E1C(v27, &qword_DFE5D0, &qword_B094F8);
        sub_12E1C(v24, &qword_DFE5D0, &qword_B094F8);
LABEL_16:
        v22 = 1;
        goto LABEL_17;
      }

      v28 = 0;
      memset(v27, 0, sizeof(v27));
      v20 = 2;
    }

    v29 = v20;
    goto LABEL_12;
  }

  __break(1u);
}

void sub_34F674(__int128 *a2@<X8>)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5F0, &unk_B09508);
  __chkstk_darwin();
  v64 = &v62 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  __chkstk_darwin();
  v62 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v67 = &v62 - v6;
  __chkstk_darwin();
  v8 = (&v62 - v7);
  type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin();
  v65 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Search.ResultContext(0);
  __chkstk_darwin();
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FB8, &unk_B02820);
  __chkstk_darwin();
  v13 = &v62 - v12;
  v14 = type metadata accessor for Search.Item(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = v2;
  v69 = &v62 - v18;
  v19 = *(v2 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource);
  if (v19)
  {
    v20 = v19;
    sub_AB5230();

    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_12E1C(v13, &qword_DF4FB8, &unk_B02820);
LABEL_7:
      sub_465CC(&v104);
LABEL_35:
      v58 = v111;
      a2[6] = v110;
      a2[7] = v58;
      a2[8] = v112[0];
      *(a2 + 137) = *(v112 + 9);
      v59 = v107;
      a2[2] = v106;
      a2[3] = v59;
      v60 = v109;
      a2[4] = v108;
      a2[5] = v60;
      v61 = v105;
      *a2 = v104;
      a2[1] = v61;
      return;
    }

    sub_35BB6C(v13, v69, type metadata accessor for Search.Item);
    v21 = *(v68 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView);
    if (v21)
    {
      v22 = v21;
      v23 = UICollectionView.globalIndex(for:)();
      v25 = v24;

      if (v25)
      {
        sub_35BBD4(v69, type metadata accessor for Search.Item);
        goto LABEL_7;
      }

      v26 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
      v27 = v68;
      swift_beginAccess();
      sub_35BA54(v27 + v26, v11, type metadata accessor for Search.ResultContext);
      v28 = Search.ResultContext.source(for:)(v69);
      sub_35BBD4(v11, type metadata accessor for Search.ResultContext);
      if (v28 == 2)
      {
        goto LABEL_9;
      }

      if (v28)
      {
      }

      else
      {
        v33 = sub_ABB3C0();

        if ((v33 & 1) == 0)
        {
LABEL_9:
          sub_35BA54(v69, v17, type metadata accessor for Search.Item);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v30 = v67;
              sub_36B0C(v17, v67, &unk_E00040, &unk_AFA530);
              v31 = v62;
              sub_15F84(v30, v62, &unk_E00040, &unk_AFA530);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v32 = *v31;
              }

              else
              {
                v39 = v31;
                v40 = v64;
                sub_36B0C(v39, v64, &qword_DFE5F0, &unk_B09508);
                v32 = SnapshotIdentifier.Lazy.object.getter(v63);
                sub_12E1C(v40, &qword_DFE5F0, &unk_B09508);
              }

              v41 = [v32 innermostModelObject];

              v68 = sub_3502B4(v41, v68);
              v66 = v42;
              sub_27A160(v41, &v113);
              v116 = v114;
              v117[0] = v113;
              v102 = v113;
              v103 = v114;
              v43 = v115;
              v44 = sub_279AC8(v115);
              v65 = v41;
              if (v44 == 0x497972617262696CLL && v45 == 0xEB000000006D6574)
              {
                v46 = 0;
              }

              else
              {
                v46 = sub_ABB3C0() ^ 1;
              }

              sub_15F84(v117, &v104, &unk_DEE6F0, &unk_AF8970);
              sub_15F84(&v116, &v104, &unk_DEE6F0, &unk_AF8970);

              v47 = v46 & 1;
              sub_12E1C(v67, &unk_E00040, &unk_AFA530);
              sub_35BBD4(v69, type metadata accessor for Search.Item);
              sub_28D048(&v113);
              v70 = v102;
              v71 = v103;
              *&v72 = 0;
              *(&v72 + 1) = v23;
              v48 = v23;
              LOWORD(v73[0]) = 512;
              BYTE2(v73[0]) = v43;
              *(v73 + 3) = v100;
              BYTE7(v73[0]) = v101;
              *(v73 + 8) = 0u;
              *(&v73[1] + 8) = 0u;
              *(&v73[2] + 8) = 0u;
              *(&v73[3] + 8) = 0u;
              *(&v73[4] + 1) = 0;
              LOBYTE(v73[5]) = v46 & 1;
              *(&v73[5] + 1) = *v99;
              DWORD1(v73[5]) = *&v99[3];
              v49 = v68;
              v50 = v66;
              *(&v73[5] + 1) = v68;
              *&v73[6] = v66;
              BYTE8(v73[6]) = 2;
              sub_465F4(&v70, &v104);
              v51 = v65;
            }

            else
            {
              v37 = v65;
              sub_35BB6C(v17, v65, type metadata accessor for Search.Recents.Result.Item);
              sub_15F84(v37, v8, &unk_E00040, &unk_AFA530);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v38 = *v8;
              }

              else
              {
                v52 = v64;
                sub_36B0C(v8, v64, &qword_DFE5F0, &unk_B09508);
                v38 = SnapshotIdentifier.Lazy.object.getter(v63);
                v37 = v65;
                sub_12E1C(v52, &qword_DFE5F0, &unk_B09508);
              }

              v53 = [v38 innermostModelObject];

              v54 = sub_3502B4(v53, v68);
              v67 = v55;
              v68 = v54;
              v66 = v53;
              sub_27A160(v53, &v113);
              v116 = v114;
              v117[0] = v113;
              v102 = v113;
              v103 = v114;
              v43 = v115;
              if (sub_279AC8(v115) == 0x497972617262696CLL && v56 == 0xEB000000006D6574)
              {
                v57 = 0;
              }

              else
              {
                v57 = sub_ABB3C0() ^ 1;
              }

              sub_15F84(v117, &v104, &unk_DEE6F0, &unk_AF8970);
              sub_15F84(&v116, &v104, &unk_DEE6F0, &unk_AF8970);

              v47 = v57 & 1;
              sub_35BBD4(v37, type metadata accessor for Search.Recents.Result.Item);
              sub_35BBD4(v69, type metadata accessor for Search.Item);
              sub_28D048(&v113);
              v70 = v102;
              v71 = v103;
              *&v72 = 0;
              *(&v72 + 1) = v23;
              v48 = v23;
              LOWORD(v73[0]) = 512;
              BYTE2(v73[0]) = v43;
              *(v73 + 3) = v100;
              BYTE7(v73[0]) = v101;
              *(v73 + 8) = 0u;
              *(&v73[1] + 8) = 0u;
              *(&v73[2] + 8) = 0u;
              *(&v73[3] + 8) = 0u;
              *(&v73[4] + 1) = 0;
              LOBYTE(v73[5]) = v57 & 1;
              *(&v73[5] + 1) = *v99;
              DWORD1(v73[5]) = *&v99[3];
              v50 = v67;
              v49 = v68;
              *(&v73[5] + 1) = v68;
              *&v73[6] = v67;
              BYTE8(v73[6]) = 2;
              sub_465F4(&v70, &v104);
              v51 = v66;
            }

            v74 = v102;
            v75 = v103;
            v76 = 0;
            v77 = v48;
            v78 = 512;
            v79 = v43;
            v80 = v100;
            v81 = v101;
            v82 = 0u;
            v83 = 0u;
            v84 = 0u;
            memset(v85, 0, 24);
            v85[24] = v47;
            *v86 = *v99;
            *&v86[3] = *&v99[3];
            v87 = v49;
            v88 = v50;
            v89 = 2;
            sub_46650(&v74);
            v96 = v73[3];
            v97 = v73[4];
            v98[0] = v73[5];
            *(v98 + 9) = *(&v73[5] + 9);
            v92 = v72;
            v93 = v73[0];
            v94 = v73[1];
            v95 = v73[2];
            v90 = v70;
            v91 = v71;
            UIScreen.Dimensions.size.getter();
            v110 = v96;
            v111 = v97;
            v112[0] = v98[0];
            v36 = *(v98 + 9);
            goto LABEL_34;
          }

          v34 = *(v17 + 2);
          v35 = *(v17 + 3);

          sub_35BBD4(v69, type metadata accessor for Search.Item);
          v70 = xmmword_B0A7F0;
          *&v71 = v34;
          *(&v71 + 1) = v35;
          *&v72 = 1;
          *(&v72 + 1) = v23;
          LOWORD(v73[0]) = 512;
          BYTE2(v73[0]) = 12;
          *(v73 + 8) = 0u;
          *(&v73[1] + 8) = 0u;
          *(&v73[2] + 8) = 0u;
          *(&v73[3] + 8) = 0u;
          *(&v73[4] + 1) = 0u;
          *(&v73[5] + 1) = 0;
          *&v73[6] = 0;
          BYTE8(v73[6]) = 2;
          v74 = xmmword_B0A7F0;
          *&v75 = v34;
          *(&v75 + 1) = v35;
          v76 = 1;
          v77 = v23;
          v78 = 512;
          v79 = 12;
          memset(v85, 0, sizeof(v85));
          v84 = 0u;
          v83 = 0u;
          v82 = 0u;
          v87 = 0;
          v88 = 0;
          v89 = 2;
          sub_465F4(&v70, &v104);
          sub_46650(&v74);

LABEL_18:
          v96 = v73[3];
          v97 = v73[4];
          v98[0] = v73[5];
          *(v98 + 9) = *(&v73[5] + 9);
          v92 = v72;
          v93 = v73[0];
          v94 = v73[1];
          v95 = v73[2];
          v90 = v70;
          v91 = v71;
          UIScreen.Dimensions.size.getter();
          v110 = v96;
          v111 = v97;
          v112[0] = v98[0];
          v36 = *(v98 + 9);
LABEL_34:
          *(v112 + 9) = v36;
          v106 = v92;
          v107 = v93;
          v108 = v94;
          v109 = v95;
          v104 = v90;
          v105 = v91;
          goto LABEL_35;
        }
      }

      sub_35BBD4(v69, type metadata accessor for Search.Item);
      v70 = xmmword_B071B0;
      v71 = xmmword_B071B0;
      *&v72 = 0;
      *(&v72 + 1) = v23;
      LOWORD(v73[0]) = 512;
      BYTE2(v73[0]) = 17;
      *(v73 + 8) = 0u;
      *(&v73[1] + 8) = 0u;
      *(&v73[2] + 8) = 0u;
      *(&v73[3] + 8) = 0u;
      *(&v73[4] + 1) = 0u;
      *(&v73[5] + 1) = 0;
      *&v73[6] = 0;
      BYTE8(v73[6]) = 2;
      v74 = xmmword_B071B0;
      v75 = xmmword_B071B0;
      v76 = 0;
      v77 = v23;
      v78 = 512;
      v79 = 17;
      memset(v85, 0, sizeof(v85));
      v84 = 0u;
      v83 = 0u;
      v82 = 0u;
      v87 = 0;
      v88 = 0;
      v89 = 2;
      sub_465F4(&v70, &v104);
      sub_46650(&v74);
      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_3502B4(uint64_t a1, uint64_t a2)
{
  v3 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  v4 = MPModelObject.bestIdentifier(for:)(*v3, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = v4;
  v8 = a2 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
  swift_beginAccess();
  v9 = *(v8 + *(type metadata accessor for Search.ResultContext(0) + 32));
  if (!v9)
  {

    v18 = 0;
    v16 = 0u;
    v17 = 0u;
LABEL_15:
    sub_12E1C(&v16, &qword_DF2BD0, &unk_AFDC00);
    return 0;
  }

  if (*(v9 + 16) && (v10 = sub_2EBF88(v7, v6), (v11 & 1) != 0))
  {
    sub_9ACA0(*(v9 + 56) + 40 * v10, &v16);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  if (!*(&v17 + 1))
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
  if (swift_dynamicCast())
  {
    if (*(v15 + 16))
    {
      v13 = sub_2EBF88(0x73636972796CLL, 0xE600000000000000);
      if (v14)
      {
        sub_808B0(*(v15 + 56) + 32 * v13, &v16);
        if (swift_dynamicCast())
        {

          return v15;
        }
      }
    }
  }

  return 0;
}

id sub_350474()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:2];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_35051C(uint64_t a1)
{
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  v2 = qword_E70E48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80, &unk_AF9360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v4 = qword_DE6830;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_E70E40;
  UIScreen.Dimensions.size.getter();
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v10 = v5;
  v11 = v6;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_35BC44, v9);

  v12 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_bindings;
  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*(a1 + v12) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a1 + v12) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  return v10;
}

void sub_350718(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FB8, &unk_B02820);
  __chkstk_darwin();
  v41 = &v30 - v1;
  v38 = type metadata accessor for Search.Item(0);
  v2 = *(v38 - 8);
  __chkstk_darwin();
  v37 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_AB3820();
  v4 = *(v42 - 8);
  __chkstk_darwin();
  v39 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v30 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if ([Strong isViewLoaded])
    {
      v10 = *&v9[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
      if (v10)
      {
        v40 = v10;
        v11 = [v40 visibleCells];
        sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
        v12 = sub_AB9760();

        v35 = v9;
        v36 = v7;
        if (v12 >> 62)
        {
LABEL_23:
          v13 = sub_ABB060();
          if (v13)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
          if (v13)
          {
LABEL_6:
            v14 = 0;
            v15 = v12 & 0xC000000000000001;
            v33 = (v4 + 32);
            v34 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource;
            v32 = v2 + 6;
            v30 = v12 & 0xFFFFFFFFFFFFFF8;
            v31 = (v4 + 8);
            v16 = v36;
            do
            {
              if (v15)
              {
                v17 = sub_360438(v14, v12);
              }

              else
              {
                if (v14 >= *(v30 + 16))
                {
                  goto LABEL_22;
                }

                v17 = *(v12 + 8 * v14 + 32);
              }

              v4 = v17;
              v18 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

              type metadata accessor for SearchResultCell(0);
              v19 = swift_dynamicCastClass();
              if (v19)
              {
                v20 = v19;
                v21 = [v40 indexPathForCell:v19];
                if (v21)
                {
                  v22 = v12;
                  v23 = v39;
                  v24 = v21;
                  sub_AB3790();

                  (*v33)(v16, v23, v42);
                  v25 = *&v35[v34];
                  if (!v25)
                  {
                    __break(1u);
                    return;
                  }

                  v2 = v25;
                  v26 = v41;
                  sub_AB5230();

                  v27 = (*v32)(v26, 1, v38);
                  v12 = v22;
                  if (v27 == 1)
                  {
                    (*v31)(v16, v42);
                    sub_12E1C(v41, &qword_DF4FB8, &unk_B02820);
                  }

                  else
                  {
                    v2 = v37;
                    sub_35BB6C(v41, v37, type metadata accessor for Search.Item);
                    v28 = Search.Item.modelObject.getter();
                    if (v28)
                    {
                      v2 = v28;
                      v29 = [v28 innermostModelObject];

                      sub_35AE40(v20, v29);
                      sub_35BBD4(v37, type metadata accessor for Search.Item);
                      (*v31)(v36, v42);

                      v4 = v29;
                      v12 = v22;
                    }

                    else
                    {
                      sub_35BBD4(v37, type metadata accessor for Search.Item);
                      (*v31)(v36, v42);
                    }
                  }
                }
              }

              ++v14;
            }

            while (v18 != v13);
          }
        }

        v9 = v35;
      }
    }
  }
}

char *sub_350C04()
{
  v1 = v0;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v2 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___loadingView;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___loadingView);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___loadingView);
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v5 = sub_AB9320();
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for LoadingView());
    v9 = LoadingView.init(title:style:usesSubtitleTextColor:)(v5, v7, 0x10000000000, 1);
    v10 = *(v1 + v2);
    *(v1 + v2) = v9;
    v4 = v9;

    v3 = 0;
  }

  v11 = v3;
  return v4;
}

void *sub_350D7C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___noContentController;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___noContentController])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController____lazy_storage___noContentController];
  }

  else
  {
    v2 = sub_350DE4(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_350DE4(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for NoContentController();
    swift_allocObject();
    v3 = sub_3B04BC(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v6 = v3[7];
    v3[6] = sub_35BC34;
    v3[7] = v4;

    sub_17654(v5, v6);

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = *(*v3 + 248);

    v8(sub_35BC3C, v7);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *sub_350F28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!(_swiftEmptyArrayStorage >> 62) || !sub_ABB060())
    {
      return &_swiftEmptySetSingleton;
    }

    sub_118B4(_swiftEmptyArrayStorage);
    return v10;
  }

  v3 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  result = swift_initStackObject();
  result[1] = xmmword_AF82B0;
  v5 = *&v3[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
  if (v5)
  {
    v6 = result;
    *(result + 4) = v5;
    v7 = v5;
    sub_118B4(v6);
    v9 = v8;
    swift_setDeallocating();
    swift_arrayDestroy();

    return v9;
  }

  __break(1u);
  return result;
}

void sub_35103C(__int128 *a1@<X1>, uint64_t a3@<X8>)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading))
    {
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = sub_350C04();
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = v28;
    }

    else
    {
      sub_AB91E0();
      sub_AB3550();
      v14 = sub_AB9320();
      v16 = v15;
      sub_AB91E0();
      sub_AB3550();
      *&v23 = v14;
      *(&v23 + 1) = v16;
      *&v24 = sub_AB9320();
      *(&v24 + 1) = v17;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0;
      *&v29 = v14;
      *(&v29 + 1) = v16;
      *&v30 = v24;
      *(&v30 + 1) = v17;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
    }

    sub_576EC(&v23, &v22);
    sub_57748(&v29);

    v8 = *(&v27 + 1);
    v7 = v28;
    v9 = v27;
    v13 = v25;
    v12 = v26;
    v11 = v23;
    v10 = v24;
  }

  else
  {
    v8 = *(a1 + 9);
    v7 = *(a1 + 10);
    v9 = *(a1 + 8);
    v20 = a1[2];
    v21 = a1[3];
    v18 = *a1;
    v19 = a1[1];
    sub_576EC(a1, &v29);
    v11 = v18;
    v10 = v19;
    v13 = v20;
    v12 = v21;
  }

  *a3 = v11;
  *(a3 + 16) = v10;
  *(a3 + 32) = v13;
  *(a3 + 48) = v12;
  *(a3 + 64) = v9;
  *(a3 + 72) = v8;
  *(a3 + 80) = v7;
}

void sub_3512A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v24 = &v25[-v0 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v2 = &v25[-v1 - 8];
  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_34F178();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_AB3420();
  sub_15F84(v26, v25, &qword_DF2BD0, &unk_AFDC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0, &unk_AFDC00);
  v7 = sub_AB3820();
  v8 = swift_dynamicCast();
  (*(*(v7 - 8) + 56))(v2, v8 ^ 1u, 1, v7);
  v9 = sub_2CC5DC(2u, v6, v2);
  (*(v4 + 8))(v6, v3);
  sub_12E1C(v26, &qword_DF2BD0, &unk_AFDC00);
  sub_12E1C(v2, &unk_DE8E20, &qword_AF7990);

  if (!v9)
  {
    goto LABEL_19;
  }

  if (!(v9 >> 62))
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_17:

    v12 = _swiftEmptyArrayStorage;
LABEL_18:
    v21 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v22 = v24;
    sub_34F244(v24);
    (*(&stru_68.flags + (swift_isaMask & *v21)))(v12, v22, 0, 0, 0, 0, 0);
    sub_12E1C(v22, &unk_DF1330, &qword_AF9120);

LABEL_19:

    sub_2E4810(v23);

    return;
  }

  v10 = sub_ABB060();
  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_4:
  *&v26[0] = _swiftEmptyArrayStorage;
  sub_6D410(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = *&v26[0];
    if ((v9 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = *(sub_35FC58(i, v9, v11) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

        swift_unknownObjectRelease();
        *&v26[0] = v12;
        v16 = v12[2];
        v15 = v12[3];
        if (v16 >= v15 >> 1)
        {
          sub_6D410((v15 > 1), v16 + 1, 1);
          v12 = *&v26[0];
        }

        v12[2] = v16 + 1;
        v12[v16 + 4] = v14;
      }
    }

    else
    {
      v17 = (v9 + 32);
      do
      {
        v18 = *(*v17 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
        *&v26[0] = v12;
        v20 = v12[2];
        v19 = v12[3];

        if (v20 >= v19 >> 1)
        {
          sub_6D410((v19 > 1), v20 + 1, 1);
          v12 = *&v26[0];
        }

        v12[2] = v20 + 1;
        v12[v20 + 4] = v18;
        ++v17;
        --v10;
      }

      while (v10);
    }

    goto LABEL_18;
  }

  __break(1u);
}

id sub_351734(char a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v31[-v8];
  v10 = [a2 traitCollection];
  [objc_msgSend(a2 "container")];
  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(_UICollectionViewListLayoutSectionConfiguration) initWithAppearanceStyle:0 layoutEnvironment:a2];
  v32 = _swiftEmptyArrayStorage;
  result = [v2 view];
  if (result)
  {
    v13 = result;
    [result music_inheritedLayoutInsets];
    v15 = v14;
    v17 = v16;

    sub_3ECF40(v10);
    if (a1)
    {
      if (a1 == 1)
      {
        [v11 setEstimatedRowHeight:v18];
      }

      else
      {
        [v11 setRowHeight:v18];
      }

LABEL_11:
      [v11 setSeparatorInset:{0.0, v15, 0.0, 0.0}];
      v28 = [objc_allocWithZone(_UICollectionViewListLayoutSection) initWithConfiguration:v11 layoutEnvironment:a2];
      sub_13C80(0, &qword_DF9290, NSCollectionLayoutBoundarySupplementaryItem_ptr);
      v29 = v28;
      isa = sub_AB9740().super.isa;
      [v29 setBoundarySupplementaryItems:isa];

      return v29;
    }

    result = [v11 setRowHeight:v18];
    v19 = *&v2[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource];
    if (v19)
    {
      v20 = v19;
      sub_AB5250();

      v31[7] = 0;
      v21 = sub_AB50B0();
      (*(v6 + 8))(v9, v5);
      if (v21 >= 1)
      {
        v22 = objc_opt_self();
        v23 = [v22 fractionalWidthDimension:1.0];
        v24 = [v22 estimatedDimension:42.0];
        v25 = [objc_opt_self() sizeWithWidthDimension:v23 heightDimension:v24];

        v26 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v25 elementKind:UICollectionElementKindSectionHeader alignment:1];
        [v26 setContentInsets:{0.0, v15, 0.0, v17}];
        v27 = v26;
        sub_AB9730();
        if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v32 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_351B58(uint64_t a1, char *a2)
{
  v37 = a2;
  type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin();
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5F0, &unk_B09508);
  __chkstk_darwin();
  v7 = &v36 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  __chkstk_darwin();
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v11 = (&v36 - v10);
  __chkstk_darwin();
  v13 = &v36 - v12;
  type metadata accessor for Search.Item(0);
  __chkstk_darwin();
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35BA54(a1, v15, type metadata accessor for Search.Item);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_36B0C(v15, v13, &unk_E00040, &unk_AFA530);
      sub_15F84(v13, v11, &unk_E00040, &unk_AFA530);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = *v11;
      }

      else
      {
        sub_36B0C(v11, v7, &qword_DFE5F0, &unk_B09508);
        v17 = SnapshotIdentifier.Lazy.object.getter(v5);
        sub_12E1C(v7, &qword_DFE5F0, &unk_B09508);
      }

      v32 = v37;
      v33 = [v17 innermostModelObject];

      sub_352000(v33, v32);
      v26 = v34;
      sub_12E1C(v13, &unk_E00040, &unk_AFA530);
    }

    else
    {
      sub_35BB6C(v15, v4, type metadata accessor for Search.Recents.Result.Item);
      sub_15F84(v4, v9, &unk_E00040, &unk_AFA530);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *v9;
      }

      else
      {
        sub_36B0C(v9, v7, &qword_DFE5F0, &unk_B09508);
        v31 = SnapshotIdentifier.Lazy.object.getter(v5);
        sub_12E1C(v7, &qword_DFE5F0, &unk_B09508);
      }

      v33 = [v31 innermostModelObject];

      sub_352000(v33, v37);
      v26 = v35;
      sub_35BBD4(v4, type metadata accessor for Search.Recents.Result.Item);
    }

    return v26;
  }

  v18 = v38;
  v19 = *(v38 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView);
  if (v19)
  {
    v21 = *(v15 + 2);
    v20 = *(v15 + 3);
    v22 = type metadata accessor for SearchHintCell();
    v23 = v19;
    v24 = static UICollectionReusableView.reuseIdentifier.getter();
    v26 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v22, v37, v24, v25, v22);

    v27 = v18 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
    swift_beginAccess();
    v28 = (v27 + *(type metadata accessor for Search.ResultContext(0) + 20));
    v29 = *v28;
    v30 = v28[1];

    sub_2289C8(v21, v20, v29, v30);

    return v26;
  }

  __break(1u);
  return result;
}

void sub_352000(_BYTE *a1, char *a2)
{
  v3 = v2;
  v495 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v494 = &v475 - v5;
  v486 = type metadata accessor for Search.ResultContext(0);
  __chkstk_darwin();
  v477 = &v475 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FB8, &unk_B02820);
  __chkstk_darwin();
  v489 = &v475 - v7;
  v490 = type metadata accessor for Search.Item(0);
  v488 = *(v490 - 8);
  __chkstk_darwin();
  v479 = &v475 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v491 = &v475 - v9;
  v10 = sub_AB3430();
  v500 = *(v10 - 1);
  v501 = v10;
  __chkstk_darwin();
  v482 = &v475 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v483 = &v475 - v12;
  sub_AB9230();
  __chkstk_darwin();
  v487 = &v475 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v504 = sub_AB35C0();
  v502 = *(v504 - 8);
  __chkstk_darwin();
  v15 = &v475 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  __chkstk_darwin();
  v17 = &v475 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v478 = 0;
  v18 = sub_ABA680();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v503 = &v475 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v475 - v21;
  v23 = UIView.Corner.small.unsafeMutableAddressor();
  v24 = *(v19 + 16);
  v505 = v22;
  v492 = v24;
  v493 = (v19 + 16);
  v24(v22, v23, v18);
  LODWORD(v496) = *(v3 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_hasMixedTypes);
  v514 = _swiftEmptyArrayStorage;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  v498 = v19;
  v499 = v18;
  v506 = v3;
  v507 = a1;
  v480 = v15;
  v497 = v17;
  if (v25)
  {
    v26 = v25;
    v27 = qword_DE6D48;
    v28 = a1;
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = sub_AB4BC0();
    __swift_project_value_buffer(v29, static Logger.search);
    v30 = v28;
    v31 = sub_AB4BA0();
    v32 = sub_AB9F30();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v524 = swift_slowAlloc();
      *v33 = 138543874;
      *(v33 + 4) = v26;
      *v34 = v26;
      *(v33 + 12) = 2082;
      v485 = v30;
      v515 = [v26 type];
      type metadata accessor for MPModelGenericObjectType(0);
      v35 = sub_AB9350();
      v37 = sub_425E68(v35, v36, &v524);

      *(v33 + 14) = v37;
      *(v33 + 22) = 2082;
      v38 = [v26 innermostModelObject];
      v39 = [v38 description];
      v40 = sub_AB92A0();
      v42 = v41;

      v43 = sub_425E68(v40, v42, &v524);

      *(v33 + 24) = v43;
      _os_log_impl(&dword_0, v31, v32, "    Unexpected MPModelGenericObject=%{public}@\n    with type=%{public}s\n    innermostModelObject=%{public}s", v33, 0x20u);
      sub_12E1C(v34, &qword_DF9B20, &unk_AF8C60);

      swift_arrayDestroy();

      v15 = v480;
      v19 = v498;
      v18 = v499;
    }

    else
    {
    }
  }

  v44 = &v524;
  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (v45)
  {
    v46 = v45;
    sub_AB91E0();
    sub_AB3550();
    v47 = sub_AB9320();
    v49 = v48;
    v50 = [v46 name];
    if (v50)
    {
      v51 = v50;
      v52 = sub_AB92A0();
      v484 = v53;
      v485 = v52;
    }

    else
    {
      v484 = 0;
      v485 = 0;
    }

    v60 = v503;
    sub_ABA670();
    v61 = v505;
    (*(v19 + 8))(v505, v18);
    (*(v19 + 32))(v61, v60, v18);
    v483 = [v46 artworkCatalog];
    LODWORD(v503) = 0;
    v501 = 0;
    v502 = 0;
    v500 = 0;
    LODWORD(v504) = 0;
    v486 = 0;
    v487 = 0;
    LODWORD(v482) = 1;
LABEL_44:
    v44 = &v524;
    goto LABEL_45;
  }

  objc_opt_self();
  v54 = swift_dynamicCastObjCClass();
  if (v54)
  {
    v55 = v54;
    v56 = [v54 name];
    if (v56)
    {
      v57 = v56;
      v58 = sub_AB92A0();
      v484 = v59;
      v485 = v58;
    }

    else
    {
      v484 = 0;
      v485 = 0;
    }

    sub_AB91E0();
    sub_AB3550();
    v69 = sub_AB9320();
    v71 = v70;
    v72 = sub_272E00();
    if (v73)
    {
      v74 = v72;
      v75 = v73;
      v76 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
      v78 = *(v76 + 2);
      v77 = *(v76 + 3);
      if (v78 >= v77 >> 1)
      {
        v76 = sub_6B0F0((v77 > 1), v78 + 1, 1, v76);
      }

      *(v76 + 2) = v78 + 1;
      v79 = &v76[16 * v78];
      *(v79 + 4) = v74;
      *(v79 + 5) = v75;
      v514 = v76;
    }

    v481 = v71;
    v476 = v69;
    v80 = sub_272C0C();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    *&v524 = v80;
    *(&v524 + 1) = v81;
    *&v525 = v83;
    BYTE8(v525) = v85;
    __chkstk_darwin();
    *(&v475 - 2) = &v524;
    v87 = v478;
    v88 = sub_1B3B10(sub_273A5C, (&v475 - 4), &off_CF14F8);
    v478 = v87;
    if (v88)
    {
      sub_7FCC4(v80);
      v501 = 0;
      v502 = 0;
      v500 = 0;
      LODWORD(v504) = 0;
    }

    else
    {
      LODWORD(v504) = v86;
      v500 = v84;
      v501 = v82;
      v502 = v80;
    }

    v89 = v503;
    sub_ABA670();
    v90 = v505;
    (*(v19 + 8))(v505, v18);
    (*(v19 + 32))(v90, v89, v18);
    v91 = [v55 artworkCatalog];
    v47 = v476;
    v49 = v481;
    if (!v91)
    {
      v91 = MPModelPerson.monogramArtworkCatalog.getter();
    }

    v483 = v91;
    v486 = 0;
    v487 = 0;
    LODWORD(v482) = 1;
    LODWORD(v503) = 1;
    goto LABEL_44;
  }

  objc_opt_self();
  v62 = swift_dynamicCastObjCClass();
  if (v62)
  {
    v63 = v62;
    sub_AB91E0();
    sub_AB3550();
    v47 = sub_AB9320();
    v49 = v64;
    v65 = [v63 title];
    if (v65)
    {
      v66 = v65;
      v67 = sub_AB92A0();
      v484 = v68;
      v485 = v67;
    }

    else
    {
      v484 = 0;
      v485 = 0;
    }

    v99 = [v63 artist];
    if (v99)
    {
      v100 = v99;
      v101 = [v99 name];
      if (v101)
      {
        v102 = v49;
        v103 = v101;
        v104 = sub_AB92A0();
        v106 = v105;

        v107 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
        v109 = *(v107 + 2);
        v108 = *(v107 + 3);
        if (v109 >= v108 >> 1)
        {
          v107 = sub_6B0F0((v108 > 1), v109 + 1, 1, v107);
        }

        *(v107 + 2) = v109 + 1;
        v110 = &v107[16 * v109];
        *(v110 + 4) = v104;
        *(v110 + 5) = v106;
        v514 = v107;
        v49 = v102;
        if ((v496 & 1) == 0)
        {
          v111 = [v63 year];
          sub_AB34F0();
          v112 = sub_45BF9C(v111);
          v114 = v113;
          (v502)[1](v15, v504);
          if (v114)
          {
            v116 = *(v107 + 2);
            v115 = *(v107 + 3);
            if (v116 >= v115 >> 1)
            {
              v107 = sub_6B0F0((v115 > 1), v116 + 1, 1, v107);
            }

            *(v107 + 2) = v116 + 1;
            v117 = &v107[16 * v116];
            *(v117 + 4) = v112;
            *(v117 + 5) = v114;
            v514 = v107;
            v49 = v102;
          }
        }
      }

      else
      {
      }
    }

    v483 = [v63 artworkCatalog];
    v501 = 0;
    v502 = 0;
    v500 = 0;
    LODWORD(v504) = 0;
    v486 = 0;
    v487 = 0;
    LODWORD(v503) = 2;
    LODWORD(v482) = 1;
    goto LABEL_44;
  }

  objc_opt_self();
  v92 = swift_dynamicCastObjCClass();
  if (v92)
  {
    v93 = v92;
    sub_AB91E0();
    sub_AB3550();
    v47 = sub_AB9320();
    v49 = v94;
    v95 = [v93 name];
    if (v95)
    {
      v96 = v95;
      v97 = sub_AB92A0();
      v484 = v98;
      v485 = v97;
    }

    else
    {
      v484 = 0;
      v485 = 0;
    }

    v501 = 0;
    v502 = 0;
    v500 = 0;
    LODWORD(v504) = 0;
    v483 = 0;
    v486 = 0;
    v487 = 0;
    v244 = 3;
    goto LABEL_139;
  }

  objc_opt_self();
  v239 = swift_dynamicCastObjCClass();
  if (v239)
  {
    v240 = v239;
    if ([v239 curatorKind] == &dword_0 + 2)
    {
      sub_AB91E0();
      sub_AB3550();
      v47 = sub_AB9320();
      v49 = v241;
      v242 = v503;
      sub_ABA670();
      v243 = v505;
      (*(v19 + 8))(v505, v18);
      (*(v19 + 32))(v243, v242, v18);
    }

    else
    {
      [v240 curatorSubKind];
      sub_AB91E0();
      sub_AB3550();
      v47 = sub_AB9320();
      v49 = v252;
    }

    v253 = [v240 name];
    if (v253)
    {
      v254 = v253;
      v255 = sub_AB92A0();
      v484 = v256;
      v485 = v255;
    }

    else
    {
      v484 = 0;
      v485 = 0;
    }

    v44 = &v524;
    v483 = [v240 brandLogoArtworkCatalog];
    v501 = 0;
    v502 = 0;
    v500 = 0;
    LODWORD(v504) = 0;
    v486 = 0;
    v487 = 0;
    v244 = 4;
    goto LABEL_139;
  }

  objc_opt_self();
  v245 = swift_dynamicCastObjCClass();
  if (v245)
  {
    v246 = v245;
    sub_AB91E0();
    sub_AB3550();
    v47 = sub_AB9320();
    v481 = v247;
    v248 = [v246 name];
    if (v248)
    {
      v249 = v248;
      v250 = sub_AB92A0();
      v484 = v251;
      v485 = v250;
    }

    else
    {
      v484 = 0;
      v485 = 0;
    }

    v259 = [v246 curator];
    if (v259)
    {
      v260 = v259;
      v261 = [v259 handle];
      if (v261)
      {
        v262 = v261;
        v263 = sub_AB92A0();
        v265 = v264;

        v266 = [v246 curator];
        if (v266)
        {
          v267 = v266;
          v268 = [v266 name];
          if (v268)
          {
            v269 = v268;
            v270 = sub_AB92A0();
            v272 = v271;

            sub_AB9220();
            v527._countAndFlagsBits = 64;
            v527._object = 0xE100000000000000;
            sub_AB9210(v527);
            v528._countAndFlagsBits = v263;
            v528._object = v265;
            sub_AB9200(v528);
            v529._countAndFlagsBits = 10272;
            v529._object = 0xE200000000000000;
            sub_AB9210(v529);
            v530._countAndFlagsBits = v270;
            v530._object = v272;
            sub_AB9200(v530);
            v531._countAndFlagsBits = 41;
            v531._object = 0xE100000000000000;
            sub_AB9210(v531);
            sub_AB9240();
            sub_AB3550();
            v273 = sub_AB9320();
            v275 = v274;
            v276 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
            v278 = *(v276 + 2);
            v277 = *(v276 + 3);
            if (v278 >= v277 >> 1)
            {
              v276 = sub_6B0F0((v277 > 1), v278 + 1, 1, v276);
            }

            *(v276 + 2) = v278 + 1;
            v279 = &v276[16 * v278];
            *(v279 + 4) = v273;
            *(v279 + 5) = v275;

            v514 = v276;
            goto LABEL_174;
          }
        }

        else
        {
        }

        v44 = &v524;
      }

      else
      {
      }
    }

    v298 = [v246 curator];
    if (!v298)
    {
LABEL_176:
      v483 = MPModelPlaylist.preferredArtworkCatalog.getter();
      v501 = 0;
      v502 = 0;
      v500 = 0;
      LODWORD(v504) = 0;
      v486 = 0;
      v487 = 0;
      LODWORD(v503) = 6;
      LODWORD(v482) = 1;
      goto LABEL_177;
    }

    v299 = v298;
    v300 = [v298 name];
    if (!v300)
    {

      goto LABEL_176;
    }

    v301 = v300;
    v302 = sub_AB92A0();
    v304 = v303;

    v305 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
    v307 = *(v305 + 2);
    v306 = *(v305 + 3);
    if (v307 >= v306 >> 1)
    {
      v305 = sub_6B0F0((v306 > 1), v307 + 1, 1, v305);
    }

    *(v305 + 2) = v307 + 1;
    v308 = &v305[16 * v307];
    *(v308 + 4) = v302;
    *(v308 + 5) = v304;
    v514 = v305;
LABEL_174:
    v44 = &v524;
    goto LABEL_176;
  }

  objc_opt_self();
  v257 = swift_dynamicCastObjCClass();
  if (v257)
  {
    v47 = v257;
    v258 = [v257 subtype];
    sub_AB91E0();
    sub_AB3550();
    v118 = sub_AB9320();
    v49 = v282;
    v283 = [v47 name];
    if (v283)
    {
      v284 = v283;
      v285 = sub_AB92A0();
      v484 = v286;
      v485 = v285;
    }

    else
    {
      v484 = 0;
      v485 = 0;
    }

    v287 = [v47 providerName];
    if (!v287 && (v258 == &dword_0 + 1 || (v287 = [v47 shortEditorNotes]) == 0))
    {
      v287 = [v47 editorNotes];
      if (!v287)
      {
        goto LABEL_163;
      }
    }

    v288 = v287;
    v126 = sub_AB92A0();
    v44 = v289;

    v123 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
    v125 = *(v123 + 2);
    v124 = *(v123 + 3);
    v120 = v125 + 1;
    if (v125 < v124 >> 1)
    {
      goto LABEL_162;
    }

    goto LABEL_270;
  }

  objc_opt_self();
  v280 = swift_dynamicCastObjCClass();
  if (v280)
  {
    v281 = v280;
    [v280 hasVideo];
    sub_AB91E0();
    sub_AB3550();
    v47 = sub_AB9320();
    v49 = v318;
    v319 = [v281 title];
    if (v319)
    {
      v320 = v319;
      v321 = sub_AB92A0();
      v484 = v322;
      v485 = v321;
    }

    else
    {
      v484 = 0;
      v485 = 0;
    }

    v323 = [v281 artist];
    if (v323)
    {
      v324 = v323;
      v325 = [v323 name];
      if (v325)
      {
        v326 = v49;
        v327 = v325;
        v328 = sub_AB92A0();
        v330 = v329;

        v331 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
        v333 = *(v331 + 2);
        v332 = *(v331 + 3);
        if (v333 >= v332 >> 1)
        {
          v331 = sub_6B0F0((v332 > 1), v333 + 1, 1, v331);
        }

        *(v331 + 2) = v333 + 1;
        v334 = &v331[16 * v333];
        *(v334 + 4) = v328;
        *(v334 + 5) = v330;
        v514 = v331;
        v49 = v326;
      }

      else
      {
      }
    }

    v335 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v336 = MPModelObject.bestIdentifier(for:)(*v335, 0);
    if (!v337)
    {
      v486 = 0;
      v487 = 0;
LABEL_201:
      v44 = &v524;
      goto LABEL_202;
    }

    v338 = v337;
    v339 = v336;
    v340 = v506 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
    swift_beginAccess();
    v341 = *(v340 + v486[8]);
    if (v341)
    {
      sub_D1224(v339, v338, v341, &v524);

      if (*(&v525 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
        if (swift_dynamicCast())
        {
          sub_D11C0(0x73636972796CLL, 0xE600000000000000, v515, &v524);
          if (*(&v525 + 1))
          {
            if (swift_dynamicCast())
            {
              v486 = v515;
              v487 = v516;

LABEL_225:
              v44 = &v524;
LABEL_202:
              v483 = [v281 artworkCatalog];
              v342 = [v281 hasVideo];
              v501 = 0;
              v502 = 0;
              v500 = 0;
              LODWORD(v504) = 0;
              if (v342)
              {
                v244 = 9;
              }

              else
              {
                v244 = 8;
              }

LABEL_139:
              LODWORD(v503) = v244;
              LODWORD(v482) = 1;
              goto LABEL_45;
            }
          }

          else
          {
            sub_12E1C(&v524, &unk_DE8E40, &unk_AF8050);
          }

          v486 = 0;
          v487 = 0;
          goto LABEL_225;
        }

        goto LABEL_200;
      }
    }

    else
    {

      *&v526 = 0;
      v525 = 0u;
      v524 = 0u;
    }

    sub_12E1C(&v524, &qword_DF2BD0, &unk_AFDC00);
LABEL_200:
    v486 = 0;
    v487 = 0;
    goto LABEL_201;
  }

  objc_opt_self();
  v309 = swift_dynamicCastObjCClass();
  if (v309)
  {
    v310 = v309;
    sub_AB91E0();
    sub_AB3550();
    v47 = sub_AB9320();
    v312 = v311;
    v313 = [v310 title];
    v314 = v312;
    if (v313)
    {
      v315 = v313;
      v316 = sub_AB92A0();
      v484 = v317;
      v485 = v316;
    }

    else
    {
      sub_AB91E0();
      sub_AB3550();
      v349 = sub_AB9320();
      v484 = v350;
      v485 = v349;
    }

    v351 = MPModelTVShow.localizedEpisodeCount.getter();
    v353 = v352;
    v354 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
    v356 = *(v354 + 2);
    v355 = *(v354 + 3);
    if (v356 >= v355 >> 1)
    {
      v354 = sub_6B0F0((v355 > 1), v356 + 1, 1, v354);
    }

    *(v354 + 2) = v356 + 1;
    v357 = &v354[16 * v356];
    *(v357 + 4) = v351;
    *(v357 + 5) = v353;
    v514 = v354;
    v483 = [v310 artworkCatalog];
    v501 = 0;
    v502 = 0;
    v500 = 0;
    LODWORD(v504) = 0;
    v486 = 0;
    v487 = 0;
    LODWORD(v503) = 10;
    LODWORD(v482) = 1;
    v49 = v314;
    goto LABEL_44;
  }

  objc_opt_self();
  v343 = swift_dynamicCastObjCClass();
  if (v343)
  {
    v222 = v343;
    sub_AB91E0();
    sub_AB3550();
    v47 = sub_AB9320();
    v481 = v344;
    v345 = [v222 title];
    if (v345)
    {
      v346 = v345;
      v347 = sub_AB92A0();
      v484 = v348;
      v485 = v347;
    }

    else
    {
      v484 = 0;
      v485 = 0;
    }

    v366 = [v222 show];
    if (!v366)
    {
      goto LABEL_228;
    }

    v217 = v366;
    v367 = [v366 title];
    if (v367)
    {
      v368 = v367;
      v369 = sub_AB92A0();
      v371 = v370;

      v372 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
      v374 = *(v372 + 2);
      v373 = *(v372 + 3);
      if (v374 >= v373 >> 1)
      {
        v372 = sub_6B0F0((v373 > 1), v374 + 1, 1, v372);
      }

      *(v372 + 2) = v374 + 1;
      v375 = &v372[16 * v374];
      *(v375 + 4) = v369;
      *(v375 + 5) = v371;
      v514 = v372;
      goto LABEL_229;
    }

    goto LABEL_227;
  }

  objc_opt_self();
  v358 = swift_dynamicCastObjCClass();
  if (v358)
  {
    v359 = v358;
    sub_AB91E0();
    sub_AB3550();
    v47 = sub_AB9320();
    v361 = v360;
    v362 = [v359 title];
    if (v362)
    {
      v363 = v362;
      v364 = sub_AB92A0();
      v484 = v365;
      v485 = v364;
    }

    else
    {
      v484 = 0;
      v485 = 0;
    }

    v394 = [v359 releaseDate];
    if (v394)
    {
      v395 = v394;
      v396 = v482;
      sub_AB33F0();

      v397 = v480;
      sub_AB34F0();
      v398 = sub_45B7DC(v396, v397);
      v400 = v399;
      v502[1](v397, v504);
      if (v400)
      {
        v401 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
        v403 = *(v401 + 2);
        v402 = *(v401 + 3);
        if (v403 >= v402 >> 1)
        {
          v401 = sub_6B0F0((v402 > 1), v403 + 1, 1, v401);
        }

        (v500)[1](v482, v501);
        *(v401 + 2) = v403 + 1;
        v404 = &v401[16 * v403];
        *(v404 + 4) = v398;
        *(v404 + 5) = v400;
        v514 = v401;
      }

      else
      {
        (v500)[1](v482, v501);
      }
    }

    v483 = [v359 artworkCatalog];
    v501 = 0;
    v502 = 0;
    v500 = 0;
    LODWORD(v504) = 0;
    v486 = 0;
    v487 = 0;
    LODWORD(v503) = 12;
    LODWORD(v482) = 1;
    v44 = &v524;
    v49 = v361;
    while (1)
    {
LABEL_45:
      if (v496)
      {

        sub_1AFB78(0, 0, v47, v49);
      }

      v118 = v49;
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v49 = v119;
      v120 = v514;
      *&v524 = v514;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
      sub_36A00(&qword_E00020, &unk_DFDE70, &unk_AF7D30, &protocol conformance descriptor for [A]);
      v481 = v49;
      v121 = sub_AB9140();
      v496 = v122;

      v124 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView;
      v125 = v506;
      v126 = *(v506 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView);
      if (!v126)
      {
        break;
      }

      v44 = type metadata accessor for SearchResultCell(0);
      v127 = sub_3E9B10(v503);
      v49 = v128;
      v126 = v126;
      v47 = v495;
      v129 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v44, v495, v127, v49, v44);

      v124 = *(v125 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource);
      if (v124)
      {
        v130 = v124;

        v131 = v489;
        sub_AB5230();

        v132 = (*(v488 + 48))(v131, 1, v490);
        v133 = v491;
        if (v132 == 1)
        {
          sub_12E1C(v131, &qword_DF4FB8, &unk_B02820);
          v134 = v485;
          v135 = v486;
          v136 = v500;
          v137 = v487;
          goto LABEL_61;
        }

        sub_35BB6C(v131, v491, type metadata accessor for Search.Item);
        v138 = v479;
        sub_35BA54(v133, v479, type metadata accessor for Search.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v136 = v500;
        v135 = v486;
        v137 = v487;
        if (EnumCaseMultiPayload != 2)
        {
          sub_35BBD4(v133, type metadata accessor for Search.Item);
          v144 = v138;
          goto LABEL_55;
        }

        sub_35BBD4(v138, type metadata accessor for Search.Item);
        v140 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
        v141 = v506;
        swift_beginAccess();
        v142 = v477;
        sub_35BA54(v141 + v140, v477, type metadata accessor for Search.ResultContext);
        v143 = Search.ResultContext.source(for:)(v133);
        sub_35BBD4(v142, type metadata accessor for Search.ResultContext);
        if (v143 == 2)
        {
          v144 = v133;
LABEL_55:
          sub_35BBD4(v144, type metadata accessor for Search.Item);
          v134 = v485;
          goto LABEL_61;
        }

        v134 = v485;
        if (v143)
        {

LABEL_59:

          sub_AB91E0();
          sub_AB3550();
          v135 = sub_AB9320();
          v137 = v146;
          goto LABEL_60;
        }

        v145 = sub_ABB3C0();

        if (v145)
        {
          goto LABEL_59;
        }

LABEL_60:
        sub_35BBD4(v133, type metadata accessor for Search.Item);
LABEL_61:
        v147 = v484;
        if (v484)
        {
          v148 = v134;
        }

        else
        {
          v148 = 0;
        }

        if (!v484)
        {
          v147 = 0xE000000000000000;
        }

        v149 = &v129[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title];
        v150 = *&v129[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title];
        v151 = *&v129[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title + 8];
        *v149 = v148;
        *(v149 + 1) = v147;
        sub_3EA330(v150, v151);

        v152 = &v129[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle];
        v153 = *&v129[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle];
        v154 = *&v129[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle + 8];
        v155 = v496;
        *v152 = v121;
        v152[1] = v155;
        sub_3EA450(v153, v154);

        if (v137)
        {
          v156 = v135;
        }

        else
        {
          v156 = 0;
        }

        if (v137)
        {
          v157 = v137;
        }

        else
        {
          v157 = 0xE000000000000000;
        }

        sub_3EA86C(v156, v157, v482);

        v158 = v129;
        v160 = v501;
        v159 = v502;
        v161 = v504;
        sub_7FCB4(v502);
        sub_206880(v159, v160, v136, v161);
        sub_7FCC4(v159);
        MPModelObject.artworkPlaceholder.getter(&v515);
        v163 = v515;
        v162 = v516;
        v164 = v517;
        v165 = v518;
        v496 = v517;
        v497 = v516;
        v495 = v518;
        v166 = v519;
        v167 = v520;
        v490 = v520;
        v491 = v519;
        v168 = &v158[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
        v169 = *&v158[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
        v170 = *&v158[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
        v171 = *&v158[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
        v172 = *&v158[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
        *v168 = v515;
        *(v168 + 1) = v162;
        *(v168 + 2) = v164;
        *(v168 + 3) = v165;
        *(v168 + 4) = v166;
        *(v168 + 5) = v167;
        sub_35BABC(&v515, &v524);
        sub_35BABC(&v515, &v524);
        sub_2F1C8(v169, v170, v171, v172);
        v173 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
        v174 = *&v158[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
        v175 = *(v174 + 168);
        v524 = *(v174 + 152);
        v525 = v175;
        v526 = *(v174 + 184);
        v177 = v496;
        v176 = v497;
        *(v174 + 152) = v163;
        *(v174 + 160) = v176;
        v178 = v495;
        *(v174 + 168) = v177;
        *(v174 + 176) = v178;
        v179 = v490;
        *(v174 + 184) = v491;
        *(v174 + 192) = v179;
        sub_35BABC(&v515, v512);
        sub_75948(&v524);
        sub_12E1C(&v524, &unk_DF8690, &unk_AF9900);
        sub_35BB18(&v515);
        v523 = v515;
        sub_12E1C(&v523, &unk_DFDE40, &qword_B0C640);
        v522 = v516;
        sub_12E1C(&v522, &unk_DFDE40, &qword_B0C640);
        v521 = v517;
        sub_12E1C(&v521, &unk_E00030, &unk_AF98E0);

        v180 = v494;
        v181 = v499;
        v492(v494, v505, v499);
        v182 = v498;
        (*(v498 + 56))(v180, 0, 1, v181);
        sub_200394(v180);
        v183 = v158[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_kind];
        v158[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_kind] = v503;
        sub_3EA548(v183);
        v184 = *&v158[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
        v185 = v483;
        *&v158[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v483;
        v503 = v185;

        sub_74EA4(v185);
        v186 = v506;
        v187 = *(v506 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_textDrawingCache);
        v188 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
        swift_beginAccess();
        *&v158[v188] = v187;
        swift_retain_n();

        v496 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
        v189 = *&v158[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
        v190 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
        swift_beginAccess();
        v191 = *&v189[v190];
        *&v189[v190] = v187;

        v192 = v189;
        sub_2E6210(v191);

        v193 = *(v186 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_artworkCachingReference);
        *&v158[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCachingReference] = v193;

        *(*&v158[v173] + 16) = v193;

        v194 = v507;
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v195 = v194 == 0;
        }

        else
        {
          v195 = 1;
        }

        v196 = !v195;
        v197 = OBJC_IVAR____TtC16MusicApplication16SearchResultCell_isPlayable;
        v158[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_isPlayable] = v196;
        v198 = sub_3EB850();
        [v198 setHidden:v158[v197]];

        v497 = v158;
        v47 = v158;
        [v47 setNeedsLayout];
        if (MPModelObject.favoriteStatus.getter())
        {
          v201 = sub_ABB3C0();

          v199 = &v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
          v202 = v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
          v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = v201 & 1;
          if ((v201 & 1) == v202)
          {
            goto LABEL_83;
          }

LABEL_82:
          sub_201644();
          v203 = sub_200954();
          [v203 setHidden:(*v199 & 1) == 0];

          goto LABEL_83;
        }

        v199 = &v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
        v200 = v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
        v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = 1;
        if ((v200 & 1) == 0)
        {
          goto LABEL_82;
        }

LABEL_83:
        v204 = v507;
        v508 = v507;
        sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
        v205 = v204;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9D20, &unk_AF8990);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v513 = 0;
          memset(v512, 0, sizeof(v512));
        }

        sub_15F84(v512, v509, &unk_DE9C60, &unk_AF8940);
        v206 = v510;
        if (v510)
        {
          v207 = v511;
          __swift_project_boxed_opaque_existential_1(v509, v510);
          v208 = sub_4CAA30(&off_CEF8C8, v206, v207);
          __swift_destroy_boxed_opaque_existential_0(v509);
        }

        else
        {
          sub_12E1C(v509, &unk_DE9C60, &unk_AF8940);
          v208 = _swiftEmptyArrayStorage;
        }

        sub_1783D4(v208);

        sub_12E1C(v512, &unk_DE9C60, &unk_AF8940);
        if (!*(v506 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController))
        {
          v211 = v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton];
          v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton] = 0;
          sub_203DB8(v211);

          sub_35AE40(v47, v205);
          v212 = 1;
          goto LABEL_124;
        }

        if (sub_2FBDBC(v205))
        {
          v209 = [v205 pickableObjectFor:2];

          v210 = v209 == 0;
        }

        else
        {
          v210 = 0;
        }

        v213 = v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton];
        v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton] = v210;
        sub_203DB8(v213);
        v215 = sub_304104(v205, v214);
        v216 = v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected];
        v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected] = v215;
        if (v215 != v216 && *&v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton])
        {
          [*&v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton] setSelected:v215];
        }

        if (sub_2FC35C(v205))
        {

          v212 = 1;
          goto LABEL_124;
        }

        v217 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
        v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = 1;
        if (v47[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] != 1)
        {
          goto LABEL_120;
        }

        v218 = *(v497 + v496);
        v496 = v217;
        v219 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
        swift_beginAccess();
        v218[v219] = 1;
        v217 = v496;
        v506 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
        v507 = v218;
        if (v218[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled])
        {
          goto LABEL_120;
        }

        v220 = v507;
        v507[v506] = 1;
        v221 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
        swift_beginAccess();
        v222 = *&v220[v221];
        if (v222 >> 62)
        {
          v223 = sub_ABB060();
          if (!v223)
          {
LABEL_120:
            if (*(v217 + v47))
            {
              v238 = 0;
            }

            else
            {
              v238 = 3;
            }

            [v47 setSelectionStyle:v238];

            v212 = 0;
LABEL_124:
            [v47 setUserInteractionEnabled:v212];

            sub_7FCC4(v502);
            (*(v182 + 8))(v505, v181);
LABEL_125:

            return;
          }
        }

        else
        {
          v223 = *(&dword_10 + (v222 & 0xFFFFFFFFFFFFFF8));
          if (!v223)
          {
            goto LABEL_120;
          }
        }

        v224 = v223 - 1;
        if (v223 >= 1)
        {
          v225 = v222 & 0xC000000000000001;
          v495 = v507;

          v227 = 0;
          p_name = &JSDateDescriptor.name;
          v497 = v222 & 0xC000000000000001;
          while (1)
          {
            if (v225)
            {
              v229 = *(sub_36003C(v227, v222, v226) + 256);
              if (!v229)
              {
                goto LABEL_104;
              }
            }

            else
            {
              v230 = *(v222 + 8 * v227 + 32);

              v229 = *(v230 + 256);
              if (!v229)
              {
LABEL_104:

                goto LABEL_105;
              }
            }

            v231 = v229;
            if ([v231 p_name[409]])
            {
              break;
            }

            v232 = v222;
            v233 = v224;
            v234 = v507[v506];
            v235 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
            swift_beginAccess();
            v236 = v231[v235];
            v231[v235] = v234;
            if (v234 == v236)
            {

              v224 = v233;
              v222 = v232;
              v225 = v497;
              p_name = (&JSDateDescriptor + 24);
LABEL_105:
              if (v224 == v227)
              {
                goto LABEL_119;
              }

              goto LABEL_106;
            }

            v237 = 1.0;
            v224 = v233;
            if (v234)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v231 setAlpha:v237];

            v222 = v232;
            v225 = v497;
            p_name = (&JSDateDescriptor + 24);
            if (v224 == v227)
            {
LABEL_119:

              v182 = v498;
              v181 = v499;
              v217 = v496;
              goto LABEL_120;
            }

LABEL_106:
            ++v227;
          }

          goto LABEL_105;
        }

        __break(1u);
LABEL_227:

LABEL_228:
        v372 = _swiftEmptyArrayStorage;
LABEL_229:
        [v222 duration];
        v377 = v376;
        v378 = *Double.epsilon.unsafeMutableAddressor();
        if (v378 < v377)
        {
          if (qword_DE6CB0 != -1)
          {
            swift_once();
          }

          v379 = qword_E718F0;
          [v222 duration];
          v380 = [v379 stringFromSeconds:?];
          v381 = sub_AB92A0();
          v383 = v382;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v372 = sub_6B0F0(0, *(v372 + 2) + 1, 1, v372);
          }

          v385 = *(v372 + 2);
          v384 = *(v372 + 3);
          if (v385 >= v384 >> 1)
          {
            v372 = sub_6B0F0((v384 > 1), v385 + 1, 1, v372);
          }

          *(v372 + 2) = v385 + 1;
          v386 = &v372[16 * v385];
          *(v386 + 4) = v381;
          *(v386 + 5) = v383;

          v514 = v372;
        }

        v483 = [v222 artworkCatalog];
        v501 = 0;
        v502 = 0;
        v500 = 0;
        LODWORD(v504) = 0;
        v486 = 0;
        v487 = 0;
        LODWORD(v503) = 11;
        LODWORD(v482) = 1;
        v44 = &v524;
LABEL_177:
        v49 = v481;
      }

      else
      {
LABEL_269:
        __break(1u);
LABEL_270:
        v123 = sub_6B0F0((v124 > 1), v120, 1, v123);
LABEL_162:
        *(v123 + 2) = v120;
        v290 = &v123[16 * v125];
        *(v290 + 4) = v126;
        *(v290 + 5) = v44;
        v514 = v123;
LABEL_163:
        v291 = [v47 startingAirDate];
        if (v291)
        {
          v292 = v483;
          v293 = v291;
          sub_AB33F0();

          v294 = sub_350474();
          isa = sub_AB3370().super.isa;
          v296 = [v294 stringFromDate:isa];

          v486 = sub_AB92A0();
          v487 = v297;
          (v500)[1](v292, v501);

          LODWORD(v482) = 0;
        }

        else
        {
          v486 = 0;
          v487 = 0;
          LODWORD(v482) = 1;
        }

        v483 = [v47 artworkCatalog];
        v501 = 0;
        v502 = 0;
        v500 = 0;
        LODWORD(v504) = 0;
        LODWORD(v503) = 7;
        v44 = &v524;
        v47 = v118;
      }
    }

    __break(1u);
    goto LABEL_269;
  }

  objc_opt_self();
  v387 = swift_dynamicCastObjCClass();
  if (v387)
  {
    v388 = v387;
    sub_AB91E0();
    sub_AB3550();
    v47 = sub_AB9320();
    v49 = v389;
    v390 = [v388 name];
    if (v390)
    {
      v391 = v390;
      v392 = sub_AB92A0();
      v484 = v393;
      v485 = v392;
    }

    else
    {
      v484 = 0;
      v485 = 0;
    }

    v471 = v503;
    sub_ABA670();
    v473 = v498;
    v472 = v499;
    v474 = v505;
    (*(v498 + 8))(v505, v499);
    (*(v473 + 32))(v474, v471, v472);
    v483 = [v388 artworkCatalog];
    v501 = 0;
    v502 = 0;
    v500 = 0;
    LODWORD(v504) = 0;
    v486 = 0;
    v487 = 0;
    LODWORD(v503) = 13;
    LODWORD(v482) = 1;
    v44 = &v524;
    goto LABEL_45;
  }

  if (qword_DE6D48 != -1)
  {
    swift_once();
  }

  v405 = sub_AB4BC0();
  __swift_project_value_buffer(v405, static Logger.search);
  v406 = v507;
  v407 = sub_AB4BA0();
  v408 = sub_AB9F40();

  if (os_log_type_enabled(v407, v408))
  {
    v409 = swift_slowAlloc();
    v410 = swift_slowAlloc();
    *&v524 = v410;
    *v409 = 136446210;
    v411 = sub_27ECD0(&off_CF1538);
    MPModelObject.humanDescription(including:)(v411);
    v413 = v412;
    v415 = v414;

    v416 = sub_425E68(v413, v415, &v524);

    *(v409 + 4) = v416;
    _os_log_impl(&dword_0, v407, v408, "Unexpected model object=%{public}s", v409, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v410);
  }

  v417 = *(v506 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView);
  if (v417)
  {
    v418 = type metadata accessor for SearchResultCell(0);
    v419 = v417;
    v420 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v418, v495, 0xD000000000000017, 0x8000000000B48C70, v418);

    v421 = v420;
    v422 = Artwork.Placeholder.music.unsafeMutableAddressor();
    v423 = *v422;
    v424 = v422[1];
    v425 = v422[2];
    v426 = v422[3];
    v428 = v422[5];
    v507 = v422[4];
    v427 = v507;
    v504 = v428;
    v429 = &v421[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
    v430 = *&v421[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
    v502 = *&v421[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
    v503 = v430;
    v431 = *&v421[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
    v500 = *&v421[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
    v501 = v431;
    v432 = *&v421[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 32];
    v496 = *&v421[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 40];
    v497 = v432;
    *v429 = v423;
    *(v429 + 1) = v424;
    v433 = v423;
    v494 = v424;
    v495 = v423;
    v434 = v424;
    *(v429 + 2) = v425;
    *(v429 + 3) = v426;
    *(v429 + 4) = v427;
    *(v429 + 5) = v428;
    v435 = v425;
    v436 = v426;
    v437 = v433;
    v438 = v434;
    v439 = v435;
    v440 = v436;
    v441 = v437;
    v442 = v438;
    v493 = v439;
    v443 = v440;
    v444 = v441;
    v445 = v442;
    sub_2F1C8(v503, v502, v501, v500);
    v446 = *&v421[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
    v524 = *(v446 + 152);
    v525 = *(v446 + 168);
    v526 = *(v446 + 184);
    v447 = v494;
    *(v446 + 152) = v495;
    *(v446 + 160) = v447;
    *(v446 + 168) = v425;
    *(v446 + 176) = v426;
    v448 = v504;
    *(v446 + 184) = v507;
    *(v446 + 192) = v448;
    v449 = v444;
    v450 = v445;
    v451 = v493;
    v452 = v443;
    sub_75948(&v524);
    sub_12E1C(&v524, &unk_DF8690, &unk_AF9900);

    v453 = *(v506 + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_textDrawingCache);
    v454 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
    swift_beginAccess();
    *&v421[v454] = v453;
    swift_retain_n();

    v455 = *&v421[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v456 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v457 = *&v455[v456];
    *&v455[v456] = v453;

    v458 = v455;
    sub_2E6210(v457);

    v459 = DeviceCapabilities.isInternalInstall.unsafeMutableAddressor();
    v460 = 0x8000000000B60040;
    v461 = *v459 == 0;
    v462 = 0x1000000000000021;
    if (!*v459)
    {
      v462 = 0;
    }

    v463 = &v421[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title];
    v464 = *&v421[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title];
    v465 = *&v421[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_title + 8];
    if (v461)
    {
      v460 = 0xE000000000000000;
    }

    *v463 = v462;
    v463[1] = v460;
    if (v461)
    {
      v466 = 0;
    }

    else
    {
      v466 = 0xD00000000000001FLL;
    }

    if (v461)
    {
      v467 = 0xE000000000000000;
    }

    else
    {
      v467 = 0x8000000000B60020;
    }

    sub_3EA330(v464, v465);

    v468 = &v421[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle];
    v469 = *&v421[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle];
    v470 = *&v421[OBJC_IVAR____TtC16MusicApplication16SearchResultCell_subtitle + 8];
    *v468 = v466;
    v468[1] = v467;
    sub_3EA450(v469, v470);
    (*(v498 + 8))(v505, v499);
    goto LABEL_125;
  }

  __break(1u);
}

void sub_355380(void *a1, uint64_t a2)
{
  v3 = v2;
  v81 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v77 - v7;
  v9 = type metadata accessor for PlaybackIntentDescriptor(0);
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v2 traitCollection];
  v15 = UITraitCollection.mediaPickerConfiguration.getter();

  if (!v15)
  {
LABEL_19:
    v39 = v81;
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v39 || (v40 = sub_355CA8(a2)) == 0)
    {
      v44 = swift_allocBox();
      v46 = v45;
      v47 = [v3 traitCollection];
      v48 = UITraitCollection.mediaLibrary.getter();

      sub_264648(static MPMediaLibraryFilteringOptions.none.getter, 0, v48, v6);
      if ((*(v10 + 48))(v6, 1, v9) == 1)
      {
        sub_12E1C(v6, &unk_DEA510, "\b]\r");
        swift_deallocBox();
      }

      else
      {
        sub_35BB6C(v6, v46, type metadata accessor for PlaybackIntentDescriptor);
        v49 = v3;
        v50 = UIViewController.playActivityInformation.getter();
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter(v50, v51, v53, v55, v57);
        v59 = HIBYTE(v52) & 0xF;
        if ((v52 & 0x2000000000000000) == 0)
        {
          v59 = v50 & 0xFFFFFFFFFFFFLL;
        }

        if (v59)
        {

          v60 = sub_AB9260();
        }

        else
        {
          v60 = 0;
        }

        [v58 setPlayActivityFeatureName:v60];

        if (v56 >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          isa = sub_AB3250().super.isa;
        }

        [v58 setPlayActivityRecommendationData:isa];

        sub_466A4(v54, v56);
        v62 = *&v49[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
        if (!v62)
        {
          goto LABEL_51;
        }

        v63 = v62;
        v64 = sub_AB3770().super.isa;
        v65 = [v63 cellForItemAtIndexPath:v64];

        if (v65)
        {
          sub_D5958(v83);
          v80 = v83[0];
          v79 = v83[1];
          v66 = v84;
          v67 = v85;
          v68 = v86;

          v69 = v79;
          v70 = v80;
        }

        else
        {
          v66 = 0;
          v68 = 0;
          v70 = 0uLL;
          v67 = 255;
          v69 = 0uLL;
        }

        v87[0] = v70;
        v87[1] = v69;
        v88 = v66;
        v89 = v67;
        v90 = v68;
        PresentationSource.init(viewController:position:)(v49, v87, v82);
        v71 = sub_3504FC();

        sub_1109D4(v81, 0, 0, 1, v82, sub_35BA4C, v44);
        sub_1611C(v82);
      }
    }

    else
    {
      v42 = v41;
      v43 = v40;
      v40();
      sub_17654(v43, v42);
    }

    v72 = *&v3[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
    if (v72)
    {
LABEL_39:
      v73 = v72;
      v74 = sub_AB3770().super.isa;
      [v73 deselectItemAtIndexPath:v74 animated:1];

      return;
    }

    goto LABEL_49;
  }

  *&v79 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView;
  v16 = *&v3[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_collectionView];
  if (v16)
  {
    v17 = v16;
    *&v80 = a2;
    v18 = sub_AB3770().super.isa;
    v19 = [v17 cellForItemAtIndexPath:v18];

    if (v19)
    {
      type metadata accessor for SearchResultCell(0);
      v20 = swift_dynamicCastClass();
      if (!v20)
      {

LABEL_18:
        a2 = v80;
        goto LABEL_19;
      }

      v78 = v20;
      v21 = [objc_opt_self() deviceMediaLibrary];
      v22 = v81;
      sub_264648(static MPMediaLibraryFilteringOptions.none.getter, 0, v21, v8);

      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        sub_12E1C(v8, &unk_DEA510, "\b]\r");
      }

      else
      {
        sub_35BB6C(v8, v13, type metadata accessor for PlaybackIntentDescriptor);
        v23 = [v22 pickableObjectFor:{objc_msgSend(v15, "selectionMode")}];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 musicTypeIdentifier];
          if (v25)
          {
            v26 = v25;

            v27 = v3;
            v28 = UIViewController.playActivityInformation.getter();
            v30 = v29;
            v32 = v31;
            v34 = v33;
            v36 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter(v28, v29, v31, v33, v35);
            v37 = HIBYTE(v30) & 0xF;
            if ((v30 & 0x2000000000000000) == 0)
            {
              v37 = v28 & 0xFFFFFFFFFFFFLL;
            }

            if (v37)
            {

              v38 = sub_AB9260();
            }

            else
            {
              v38 = 0;
            }

            [v36 setPlayActivityFeatureName:v38];

            if (v34 >> 60 == 15)
            {
              v75 = 0;
            }

            else
            {
              v75 = sub_AB3250().super.isa;
            }

            [v36 setPlayActivityRecommendationData:v75];

            sub_466A4(v32, v34);
            if (*&v27[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_mediaPickerAddController])
            {

              v76 = v19;
              sub_3B8FA0(v13, v81, v78, &off_D02738);

              sub_35BBD4(v13, type metadata accessor for PlaybackIntentDescriptor);
            }

            else
            {
              sub_35BBD4(v13, type metadata accessor for PlaybackIntentDescriptor);
            }

            v72 = *&v3[v79];
            if (v72)
            {
              goto LABEL_39;
            }

            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }
        }

        else
        {
          v24 = v19;
        }

        sub_35BBD4(v13, type metadata accessor for PlaybackIntentDescriptor);
      }
    }

    goto LABEL_18;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

void sub_355BC4(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 == 1)
  {
    v5 = swift_projectBox();
    swift_beginAccess();
    sub_35BA54(v5, v4, type metadata accessor for PlaybackIntentDescriptor);
    sub_37D3DC(0);
    sub_35BBD4(v4, type metadata accessor for PlaybackIntentDescriptor);
  }
}

uint64_t (*sub_355CA8(uint64_t a1))()
{
  v2 = v1;
  v4 = sub_AB3820();
  v208 = *(v4 - 1);
  v209 = v4;
  v5 = v208[8];
  __chkstk_darwin();
  type metadata accessor for Search.ResultContext(0);
  __chkstk_darwin();
  v7 = &v203 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FB8, &unk_B02820);
  __chkstk_darwin();
  v9 = &v203 - v8;
  v10 = type metadata accessor for Search.Item(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v210 = &v203 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_dataSource];
  if (!v13)
  {
    __break(1u);
LABEL_95:

    goto LABEL_96;
  }

  v14 = v13;
  sub_AB5230();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &qword_DF4FB8, &unk_B02820);
    return 0;
  }

  v15 = v210;
  sub_35BB6C(v9, v210, type metadata accessor for Search.Item);
  v16 = Search.Item.modelObject.getter();
  if (!v16)
  {
    sub_35BBD4(v15, type metadata accessor for Search.Item);
    return 0;
  }

  v17 = v16;
  v18 = [v16 innermostModelObject];

  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  v20 = OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController__frozenResults;
  swift_beginAccess();
  sub_35BA54(v2 + v20, v7, type metadata accessor for Search.ResultContext);
  v21 = v2;
  v22 = v15;
  v23 = v21;
  v24 = Search.ResultContext.source(for:)(v22);
  sub_35BBD4(v7, type metadata accessor for Search.ResultContext);
  if (v24 == 2)
  {
    goto LABEL_24;
  }

  if (v24)
  {
    v25 = sub_ABB3C0();

    if ((v25 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v27 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v27, 0);
  if (!v28)
  {
LABEL_24:
    v207 = v19;
    v57 = [v23 traitCollection];
    objc_opt_self();
    v58 = swift_dynamicCastObjCClass();
    if (v58)
    {
      v59 = v58;
      v60 = [objc_allocWithZone(MPModelLibraryRequest) init];
      v61 = UITraitCollection.mediaLibrary.getter();
      [v60 setMediaLibrary:v61];

      v62 = v60;
      v63 = sub_AB9260();
      [v62 setLabel:v63];

      sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
      v64 = static MPModelAlbum.defaultMusicKind.getter();
      [v62 setSectionKind:v64];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_AF82B0;
      *(v65 + 32) = v59;
      sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
      v66 = v18;
      isa = sub_AB9740().super.isa;

      [v62 setScopedContainers:isa];

      UITraitCollection.configure<A, B>(libraryRequest:)(v62);
      type metadata accessor for JSContainerDetailComponentController(0);
      v68 = v66;
      v69 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v59, 0, 1, UIScreen.Dimensions.size.getter, 0);
      if (v69)
      {
        v70 = v69;
        v71 = *&v69[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
LABEL_27:
        v72 = JSViewModel.playActivityRecommendationData.getter();
        v74 = v73;
LABEL_50:
        sub_466A4(0, 0xF000000000000000);
        *v234 = v211[0];
        *&v234[3] = *(v211 + 3);
        v226 = v62;
        v227 = v71;
        v228 = v59;
        v229 = 0;
        v231 = 0;
        v232 = 0;
        v230 = v70;
        v233 = 0;
        v235 = v72;
        v236 = v74;
        v215 = v62;
        v216 = v71;
        v217 = v59;
        v218 = 0;
        v220 = 0;
        v221 = 0;
        v219 = v70;
        v222 = 0;
        *v223 = v211[0];
        *&v223[3] = *(v211 + 3);
        v224 = v72;
        v225 = v74;
        sub_70EB0(&v226, v214);
        sub_70F0C(&v215);
        v108 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
        v109 = sub_2D72DC(&v226);

        sub_35BBD4(v210, type metadata accessor for Search.Item);

        v110 = swift_allocObject();
        *(v110 + 16) = v23;
        *(v110 + 24) = v109;
        v111 = v23;

        return sub_35BD88;
      }

      objc_opt_self();
      v70 = swift_dynamicCastObjCClass();
      if (!v70)
      {
        v71 = 0;
        v72 = 0;
        v74 = 0xF000000000000000;
        goto LABEL_50;
      }

      v209 = v57;
      v82 = v23;
      v83 = MPModelPropertyPlaylistType;
      v84 = v68;
      if ([v70 hasLoadedValueForKey:v83])
      {
        v23 = v82;
        if ([v70 type] == &dword_8 + 1)
        {
          v70 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v85);
          v71 = *&v70[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

          v57 = v209;
          goto LABEL_27;
        }

        v70 = 0;
        v71 = 0;
        v72 = 0;
        v74 = 0xF000000000000000;
      }

      else
      {

        v70 = 0;
        v71 = 0;
        v72 = 0;
        v74 = 0xF000000000000000;
        v23 = v82;
      }

      v57 = v209;
      goto LABEL_50;
    }

    objc_opt_self();
    v75 = swift_dynamicCastObjCClass();
    if (v75)
    {
      v76 = v75;
      v77 = objc_allocWithZone(type metadata accessor for ArtistViewController());
      v78 = v18;
      v79 = sub_1E2F78(v76);
      sub_35BBD4(v210, type metadata accessor for Search.Item);

      v80 = swift_allocObject();
      *(v80 + 16) = v23;
      *(v80 + 24) = v79;
      v81 = v23;

      return sub_35BD88;
    }

    objc_opt_self();
    v86 = swift_dynamicCastObjCClass();
    if (v86)
    {
      v87 = v86;
      v88 = v23;
      v89 = [v86 name];
      if (v89)
      {
        v90 = v89;
        v91 = sub_AB92A0();
        v93 = v92;
      }

      else
      {
        v91 = 0;
        v93 = 0;
      }

      objc_allocWithZone(type metadata accessor for AlbumsViewController(0));
      v112 = v18;
      v113 = sub_13B3E0(3, v87, 1, v91, v93);
      sub_35BBD4(v210, type metadata accessor for Search.Item);

      v114 = swift_allocObject();
      *(v114 + 16) = v88;
      *(v114 + 24) = v113;
      v115 = v88;

      return sub_35BD88;
    }

    v206 = v23;
    objc_opt_self();
    v99 = swift_dynamicCastObjCClass();
    if (v99)
    {
      v100 = v99;
      if ([v99 type] == &dword_0 + 3)
      {
        v101 = v18;
        v102 = [v100 name];
        if (v102)
        {
          v103 = v102;
          v104 = sub_AB92A0();
          v106 = v105;
        }

        else
        {
          v104 = 0;
          v106 = 0;
        }

        v166 = objc_allocWithZone(type metadata accessor for PlaylistsViewController(0));
        v167 = sub_48DDCC(v100, 0, v104, v106, 0);
        sub_35BBD4(v210, type metadata accessor for Search.Item);

        v168 = swift_allocObject();
        v169 = v206;
        *(v168 + 16) = v206;
        *(v168 + 24) = v167;
        v170 = v169;

        return sub_35BD88;
      }

      v139 = [objc_allocWithZone(MPModelLibraryRequest) init];
      v140 = UITraitCollection.mediaLibrary.getter();
      [v139 setMediaLibrary:v140];

      v141 = v139;
      v142 = sub_AB9260();
      [v141 setLabel:v142];

      sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
      v143 = static MPModelPlaylistEntry.defaultMusicKind.getter();
      v144 = objc_opt_self();
      v145 = static MPModelPlaylistVariants.allPlaylists.getter();
      v209 = v143;
      v146 = [v144 kindWithVariants:v145 playlistEntryKind:v143 options:0];
      [v141 setSectionKind:v146];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_AF82B0;
      *(v147 + 32) = v100;
      sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
      v148 = v18;
      v149 = sub_AB9740().super.isa;

      [v141 setScopedContainers:v149];

      UITraitCollection.configure<A, B>(libraryRequest:)(v141);
      type metadata accessor for JSContainerDetailComponentController(0);
      v150 = v148;
      v151 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v100, 0, 1, UIScreen.Dimensions.size.getter, 0);
      if (v151)
      {
        v152 = v151;
        v153 = *&v151[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
        v154 = v206;
      }

      else
      {
        v171 = MPModelPropertyPlaylistType;
        v172 = v150;
        v173 = [v100 hasLoadedValueForKey:v171];
        v154 = v206;
        if (!v173 || [v100 type] != &dword_8 + 1)
        {

          v153 = 0;
          v152 = 0;
          v155 = 0;
          v157 = 0xF000000000000000;
          goto LABEL_83;
        }

        v152 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v174);
        v153 = *(v152 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
      }

      v155 = JSViewModel.playActivityRecommendationData.getter();
      v157 = v156;
LABEL_83:
      sub_466A4(0, 0xF000000000000000);
      *v234 = v211[0];
      *&v234[3] = *(v211 + 3);
      v226 = v141;
      v227 = v153;
      v228 = v100;
      v229 = 0;
      v231 = 0;
      v232 = 0;
      v230 = v152;
      v233 = 0;
      v235 = v155;
      v236 = v157;
      v215 = v141;
      v216 = v153;
      v217 = v100;
      v218 = 0;
      v220 = 0;
      v221 = 0;
      v219 = v152;
      v222 = 0;
      *v223 = v211[0];
      *&v223[3] = *(v211 + 3);
      v224 = v155;
      v225 = v157;
      sub_70EB0(&v226, v214);
      sub_70F0C(&v215);
      v191 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController(0));
      v192 = sub_39891C(&v226, 0);

      sub_35BBD4(v210, type metadata accessor for Search.Item);

      v193 = swift_allocObject();
      *(v193 + 16) = v154;
      *(v193 + 24) = v192;
      v194 = v154;

      return sub_35BD88;
    }

    objc_opt_self();
    v124 = swift_dynamicCastObjCClass();
    if (!v124)
    {
      sub_35BBD4(v210, type metadata accessor for Search.Item);
      objc_opt_self();
      v158 = swift_dynamicCastObjCClass();
      if (v158)
      {
        v159 = v158;
        v160 = swift_allocObject();
        v160[2] = v159;
        v160[3] = v57;
        v161 = v207;
        v160[4] = sub_35B754;
        v160[5] = v161;
        return sub_35B7A4;
      }

      return 0;
    }

    v125 = v124;
    v126 = [v124 album];
    if (v126)
    {
      v127 = v126;
      if ([v125 trackCount] <= 1 && (objc_msgSend(v125, "hasVideo") & 1) != 0)
      {
        sub_35BBD4(v210, type metadata accessor for Search.Item);

        return 0;
      }

      v175 = [objc_allocWithZone(MPModelLibraryRequest) init];
      v176 = UITraitCollection.mediaLibrary.getter();
      [v175 setMediaLibrary:v176];

      v177 = v175;
      v178 = sub_AB9260();
      [v177 setLabel:v178];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      v179 = swift_allocObject();
      *(v179 + 16) = xmmword_AF82B0;
      *(v179 + 32) = v127;
      sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
      v209 = v127;
      v180 = sub_AB9740().super.isa;

      [v177 setScopedContainers:v180];

      sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
      v181 = static MPModelAlbum.defaultMusicKind.getter();
      [v177 setSectionKind:v181];

      v182 = [objc_opt_self() kindWithVariants:3];
      [v177 setItemKind:v182];

      UITraitCollection.configure<A, B>(libraryRequest:)(v177);
      v208 = [v125 identifiers];
      type metadata accessor for JSContainerDetailComponentController(0);
      v183 = v209;
      v184 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v183, 0, 1, UIScreen.Dimensions.size.getter, 0);
      v209 = v183;
      if (v184)
      {
        v185 = v184;
        v186 = *&v184[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
        v187 = v206;
LABEL_80:
        v188 = JSViewModel.playActivityRecommendationData.getter();
        v190 = v189;
LABEL_92:
        sub_466A4(0, 0xF000000000000000);
        *v234 = v211[0];
        *&v234[3] = *(v211 + 3);
        v226 = v177;
        v227 = v186;
        v228 = v127;
        v229 = 0;
        v230 = v185;
        v231 = 0;
        v232 = v208;
        v233 = 0;
        v235 = v188;
        v236 = v190;
        v215 = v177;
        v216 = v186;
        v217 = v127;
        v218 = 0;
        v219 = v185;
        v220 = 0;
        v221 = v208;
        v222 = 0;
        *v223 = v211[0];
        *&v223[3] = *(v211 + 3);
        v224 = v188;
        v225 = v190;
        sub_70EB0(&v226, v214);
        sub_70F0C(&v215);
        v199 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
        v200 = sub_2D72DC(&v226);

        sub_35BBD4(v210, type metadata accessor for Search.Item);

        v201 = swift_allocObject();
        *(v201 + 16) = v187;
        *(v201 + 24) = v200;
        v202 = v187;

        return sub_35B7F0;
      }

      objc_opt_self();
      v185 = swift_dynamicCastObjCClass();
      if (v185)
      {
        v195 = MPModelPropertyPlaylistType;
        v196 = v183;
        if ([v185 hasLoadedValueForKey:v195])
        {
          v197 = [v185 type];
          v187 = v206;
          if (v197 != &dword_8 + 1)
          {

            v186 = 0;
            v185 = 0;
            v188 = 0;
            v190 = 0xF000000000000000;
            goto LABEL_92;
          }

          v185 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v198);
          v186 = *&v185[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

          goto LABEL_80;
        }

        v186 = 0;
        v185 = 0;
      }

      else
      {
        v186 = 0;
      }

      v188 = 0;
      v190 = 0xF000000000000000;
      v187 = v206;
      goto LABEL_92;
    }

    sub_35BBD4(v210, type metadata accessor for Search.Item);

LABEL_47:

    return 0;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    v205 = v18;
    sub_35BBD4(v210, type metadata accessor for Search.Item);

LABEL_41:
    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v95 = v208;
    v96 = v209;
    (v208[2])(&v203 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v209);
    v97 = (*(v95 + 80) + 24) & ~*(v95 + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = v94;
    (v95[4])(v98 + v97, &v203 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v96);
    *(v98 + ((v5 + v97 + 7) & 0xFFFFFFFFFFFFFFF8)) = v205;
    return sub_35B910;
  }

  v30 = v29;
  v206 = v23;
  v31 = v18;
  v32 = [v30 album];
  if (!v32)
  {
    v205 = v18;
    sub_35BBD4(v210, type metadata accessor for Search.Item);

    goto LABEL_41;
  }

  v209 = v31;
  v33 = *v27;
  v18 = v32;
  MPModelObject.bestIdentifier(for:)(v33, 0);
  if (!v34)
  {

    v107 = v209;
    sub_35BBD4(v210, type metadata accessor for Search.Item);
    goto LABEL_47;
  }

  v35 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v36 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v18);
  if (!v36)
  {
    sub_35BBD4(v210, type metadata accessor for Search.Item);

    v116 = v209;
    return 0;
  }

  v37 = v36;
  v38 = [v30 album];
  v39 = [v30 identifiers];
  type metadata accessor for JSContainerDetailComponentController(0);
  v40 = v37;
  v41 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v40, 0, 1, UIScreen.Dimensions.size.getter, 0);
  v207 = v19;
  v208 = v39;
  v204 = v38;
  v205 = v40;
  if (v41)
  {
    goto LABEL_21;
  }

  if (!v38)
  {
    goto LABEL_96;
  }

  v42 = v38;
  v41 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v42, 0, 1, UIScreen.Dimensions.size.getter, 0);
  if (!v41)
  {
    objc_opt_self();
    v162 = swift_dynamicCastObjCClass();
    if (v162)
    {
      v163 = v162;
      v164 = MPModelPropertyPlaylistType;
      v2 = v42;
      if ([v163 hasLoadedValueForKey:v164] && objc_msgSend(v163, "type") == &dword_8 + 1)
      {
        v43 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v165);
        v44 = *&v43[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

        goto LABEL_22;
      }

      goto LABEL_95;
    }

LABEL_96:
    result = sub_ABAFD0();
    __break(1u);
    return result;
  }

LABEL_21:
  v43 = v41;
  v44 = *(v41 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
LABEL_22:
  v45 = type metadata accessor for JSContainerDetailModelRequest();
  v46 = objc_allocWithZone(v45);
  v47 = &v46[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v47 = 0;
  v47[1] = 0;
  v46[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v48 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v46[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v46[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  *&v46[v48] = v44;
  v212.receiver = v46;
  v212.super_class = v45;
  v49 = v44;
  v50 = v208;
  v51 = v43;
  v52 = objc_msgSendSuper2(&v212, "init");
  v53 = v49[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE;
  v203 = v44;
  if (v53 == 2)
  {
    sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
    v54 = v52;
    v55 = static MPModelAlbum.defaultMusicKind.getter();
    [v54 setSectionKind:v55];

    v56 = [objc_opt_self() kindWithVariants:3];
    [v54 setItemKind:v56];
  }

  else
  {
    sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
    v117 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v118 = objc_opt_self();
    v119 = v52;
    v120 = [v118 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v117 options:0];
    [v119 setSectionKind:v120];

    [v119 setItemKind:v117];
  }

  v121 = v206;
  v122 = v50;
  if (v50)
  {
    v123 = v208;
  }

  else
  {
    v128 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
    swift_beginAccess();
    v123 = *&v49[v128];
    v129 = v123;
  }

  v130 = v205;
  v131 = JSViewModel.playActivityRecommendationData.getter();
  v133 = v132;
  sub_466A4(0, 0xF000000000000000);
  *v234 = *v213;
  *&v234[3] = *&v213[3];
  v226 = v52;
  v227 = v203;
  v228 = v204;
  v229 = 0;
  v230 = v43;
  v231 = 0;
  v232 = v123;
  v233 = 0;
  v235 = v131;
  v236 = v133;
  v215 = v52;
  v216 = v203;
  v217 = v204;
  v218 = 0;
  v219 = v43;
  v220 = 0;
  v221 = v123;
  v222 = 0;
  *&v223[3] = *&v213[3];
  *v223 = *v213;
  v224 = v131;
  v225 = v133;
  sub_70EB0(&v226, v214);
  sub_70F0C(&v215);
  v134 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
  v135 = sub_2D72DC(&v226);

  v136 = v209;
  sub_35BBD4(v210, type metadata accessor for Search.Item);

  v137 = swift_allocObject();
  *(v137 + 16) = v121;
  *(v137 + 24) = v135;
  v138 = v121;
  return sub_35BD88;
}