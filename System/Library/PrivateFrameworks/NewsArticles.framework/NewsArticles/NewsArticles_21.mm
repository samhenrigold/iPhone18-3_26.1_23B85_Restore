void sub_1D7BA7C68(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(void))
{
  if (*(*a1 + 16) && (sub_1D7A18FFC(a2, a3), (v8 & 1) != 0))
  {
    v9 = swift_unknownObjectRetain();
    a4(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D7BA8878();
    v10 = swift_allocError();
    *v11 = 1;
    a6();
  }
}

uint64_t AssetFetchServiceType.fetchAsset(resourceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CancelHandler();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v12[3] = v8;
  v12[4] = sub_1D7B871F0();
  v12[0] = v9;
  v10 = AssetFetchServiceType.fetchAsset(resourceIdentifier:cancelHandler:)(a1, a2, v12, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

uint64_t AssetFetchServiceType.fetchAssets(resourceIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CancelHandler();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v12[3] = v6;
  v12[4] = sub_1D7B871F0();
  v12[0] = v7;
  v8 = *MEMORY[0x1E69B50B8];
  v9 = FCCurrentQoSOrUtilityIfMain();
  v10 = (*(a3 + 8))(a1, v8, v9, v12, a2, a3);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

void sub_1D7BA7EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = sub_1D79EA4C8;
  v17[5] = v16;
  v18 = *(a5 + 16);
  v19 = objc_allocWithZone(MEMORY[0x1E69B55A0]);

  v20 = sub_1D7D3062C();
  v21 = [v19 initWithContext:v18 resourceIDs:v20 downloadAssets:1];

  [v21 setQualityOfService_];
  v22 = v21;
  [v22 setRelativePriority_];
  [v22 setPurpose_];

  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D7BA8844;
  *(v23 + 24) = v17;
  v29[4] = sub_1D7BA8850;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1D7BA86F0;
  v29[3] = &block_descriptor_24;
  v24 = _Block_copy(v29);
  v25 = v22;

  [v25 setFetchCompletionBlock_];
  _Block_release(v24);

  sub_1D7D28DCC();
  sub_1D7D28DAC();
  sub_1D7D28DBC();

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = *(a9 + 24);
  v28 = *(a9 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a9, v27);
  (*(v28 + 24))(sub_1D7BA8870, v26, v27, v28);
}

void sub_1D7BA8168(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    sub_1D7BA8878();
    v6 = swift_allocError();
    *v7 = 0;
  }

  else
  {
    if (a1)
    {
      a5();
      return;
    }

    sub_1D7BA8878();
    v6 = swift_allocError();
    *v8 = 1;
  }

  a3();
}

void sub_1D7BA8224(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong cancel];
  }
}

void sub_1D7BA8280(void *a1, void (*a2)(void *, void *))
{
  if (![a1 status])
  {
    if ([a1 anyMissingObjects])
    {
      sub_1D7BA8878();
      v4 = swift_allocError();
      *v6 = 1;
      goto LABEL_5;
    }

    if (![a1 fetchedObject] || (sub_1D7BA88CC(0, &qword_1EE0BB0C0, sub_1D79EAEB0, MEMORY[0x1E69E62F8]), (swift_dynamicCast() & 1) == 0))
    {
      sub_1D7BA8878();
      v30 = swift_allocError();
      *v31 = 1;
      a2(0, v30);

      return;
    }

    if (v39 >> 62)
    {
LABEL_38:
      v38 = v39 & 0xFFFFFFFFFFFFFF8;
      v7 = sub_1D7D3167C();
      if (v7)
      {
LABEL_12:
        v8 = 0;
        v9 = MEMORY[0x1E69E7CC8];
        while (2)
        {
          v35 = v9;
          v10 = v8;
          while (1)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1DA70EF00](v10);
            }

            else
            {
              if (v10 >= *(v38 + 16))
              {
                goto LABEL_37;
              }

              v11 = *(v39 + 8 * v10 + 32);
            }

            v12 = v11;
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            v13 = [v11 assetHandle];
            v14 = [v13 dataProvider];

            if (v14)
            {
              break;
            }

            ++v10;
            if (v8 == v7)
            {
              v9 = v35;
              goto LABEL_40;
            }
          }

          v15 = [v12 resourceID];
          v34 = sub_1D7D3034C();
          v17 = v16;

          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = v35;
          v33 = v17;
          v19 = sub_1D7A18FFC(v34, v17);
          v21 = v35[2];
          v22 = (v18 & 1) == 0;
          v23 = v21 + v22;
          if (__OFADD__(v21, v22))
          {
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          if (v35[3] < v23)
          {
            v36 = v18;
            sub_1D7B925AC(v23, isUniquelyReferenced_nonNull_native, v20);
            v24 = sub_1D7A18FFC(v34, v33);
            if ((v36 & 1) != (v25 & 1))
            {
LABEL_44:
              sub_1D7D31A2C();
              __break(1u);
              return;
            }

            v19 = v24;
            if ((v36 & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_29:

            v9 = v40;
            *(v40[7] + 8 * v19) = v14;
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            goto LABEL_33;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            if (v18)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v37 = v18;
            sub_1D7B97768(v20);
            if (v37)
            {
              goto LABEL_29;
            }
          }

LABEL_31:
          v9 = v40;
          v40[(v19 >> 6) + 8] |= 1 << v19;
          v26 = (v40[6] + 16 * v19);
          *v26 = v34;
          v26[1] = v33;
          *(v40[7] + 8 * v19) = v14;
          swift_unknownObjectRelease();

          v27 = v40[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (!v28)
          {
            v40[2] = v29;
LABEL_33:
            if (v8 != v7)
            {
              continue;
            }

            goto LABEL_40;
          }

          goto LABEL_43;
        }
      }
    }

    else
    {
      v38 = v39 & 0xFFFFFFFFFFFFFF8;
      v7 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_12;
      }
    }

    v9 = MEMORY[0x1E69E7CC8];
LABEL_40:

    a2(v9, 0);

    return;
  }

  sub_1D7BA8878();
  v4 = swift_allocError();
  *v5 = 0;
LABEL_5:
  a2(0, v4);
}

void sub_1D7BA86F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D7BA877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7BA88CC(0, &qword_1EC9E5FF8, sub_1D7B873B4, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2946C();
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D7BA8878()
{
  result = qword_1EC9E6008;
  if (!qword_1EC9E6008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6008);
  }

  return result;
}

void sub_1D7BA88CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7BA898C()
{
  result = qword_1EC9E6018;
  if (!qword_1EC9E6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6018);
  }

  return result;
}

uint64_t sub_1D7BA89E0()
{
  v1 = OBJC_IVAR____TtC12NewsArticles31CheckmarkAccessoryLayoutOptions_layoutOptions;
  v2 = sub_1D7D2B02C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CheckmarkAccessoryLayoutOptions(uint64_t a1)
{
  result = qword_1EC9E6020;
  if (!qword_1EC9E6020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7BA8AD0(uint64_t a1)
{
  result = sub_1D7D2B02C();
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

id sub_1D7BA8B8C()
{
  v1 = OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView____lazy_storage___animator;
  v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView____lazy_storage___animator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView____lazy_storage___animator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:3 curve:0 animations:0.3];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D7BA8CA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v8 = a6;
  v11 = a3;
  v12 = a2;
  v14 = OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverButton;
  v15 = *&v7[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverButton];
  if (v15)
  {
    if (!a1)
    {
      v42 = v15;
      sub_1D7BA93E0(v42, a6 & 1);

      v8 = a6;
      goto LABEL_20;
    }

    sub_1D7BA9A1C(a1, a2, a3, a4);
    v66 = v15;
    v16 = [a1 identifier];
    v17 = sub_1D7D3034C();
    v19 = v18;

    v20 = *&v7[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_coverModel];
    if (v20)
    {
      v21 = [v20 identifier];
      v22 = sub_1D7D3034C();
      v24 = v23;

      if (v17 == v22 && v19 == v24)
      {

        goto LABEL_17;
      }

      v26 = sub_1D7D3197C();

      if (v26)
      {

LABEL_17:
        v12 = a2;

        v11 = a3;
        v8 = a6;
        goto LABEL_20;
      }
    }

    else
    {
    }

    __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverViewButtonFactory], *&v7[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverViewButtonFactory + 24]);
    v43 = *(a5 + 48);
    *&aBlock.tx = *(a5 + 32);
    v76 = v43;
    v77 = *(a5 + 64);
    v78 = *(a5 + 80);
    v44 = *(a5 + 16);
    *&aBlock.a = *a5;
    *&aBlock.c = v44;
    v45 = sub_1D7CA6324(a1, a2 & 1, &aBlock);
    sub_1D7BA9A5C();
    v46 = swift_allocObject();
    *(v46 + 16) = a1;
    *(v46 + 24) = a2 & 1;
    *(v46 + 32) = a3;
    *(v46 + 40) = a4;
    v47 = a1;

    v48 = sub_1D7D311EC();
    [v45 addAction:v48 forControlEvents:{64, 0, 0, 0, sub_1D7BA9AA8, v46}];

    [v7 frame];
    v49 = CGRectGetHeight(v79) + -30.0 + -8.0;
    [v45 frame];
    v50 = v49 - CGRectGetHeight(v80);
    [v45 bounds];
    [v45 setFrameUsingCenterAndBounds_];
    [objc_opt_self() transitionFromView:v66 toView:v45 duration:5242880 options:0 completion:0.4];
    v51 = *&v7[v14];
    *&v7[v14] = v45;
    v11 = a3;

    v12 = a2;
    v8 = a6;
    goto LABEL_20;
  }

  if (a1)
  {
    __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverViewButtonFactory], *&v7[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverViewButtonFactory + 24]);
    v27 = *(a5 + 48);
    *&aBlock.tx = *(a5 + 32);
    v76 = v27;
    v77 = *(a5 + 64);
    v78 = *(a5 + 80);
    v28 = *(a5 + 16);
    *&aBlock.a = *a5;
    *&aBlock.c = v28;
    v68 = v12;
    v73 = v8;
    v29 = v12 & 1;
    v30 = a1;

    v31 = v11;
    v32 = sub_1D7CA6324(v30, v12 & 1, &aBlock);
    sub_1D7BA9A5C();
    v33 = swift_allocObject();
    *(v33 + 16) = v30;
    *(v33 + 24) = v29;
    v8 = v73;
    *(v33 + 32) = v31;
    *(v33 + 40) = a4;
    v34 = v30;

    v35 = sub_1D7D311EC();
    [v32 addAction:v35 forControlEvents:{64, 0, 0, 0, sub_1D7BA9C44, v33}];

    v36 = v32;
    [v7 addSubview_];
    if (v73)
    {
      [v36 setAlpha_];

      v37 = sub_1D7BA8B8C();
      v38 = swift_allocObject();
      *(v38 + 16) = v36;
      *&aBlock.tx = sub_1D7BA9B5C;
      *&aBlock.ty = v38;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1D79FE25C;
      *&aBlock.d = &block_descriptor_13;
      v39 = _Block_copy(&aBlock);
      v40 = v36;

      [v37 addAnimations_];

      v41 = v39;
      v8 = v73;
      _Block_release(v41);
    }

    else
    {
    }

    v52 = *&v7[v14];
    *&v7[v14] = v36;

    v11 = v31;
    v12 = v68;
  }

LABEL_20:
  v53 = swift_allocObject();
  *(v53 + 16) = v7;
  if (v8)
  {
    v54 = v7;
    v55 = sub_1D7BA8B8C();
    *&aBlock.tx = sub_1D7BA9AAC;
    *&aBlock.ty = v53;
    *&aBlock.a = MEMORY[0x1E69E9820];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1D79FE25C;
    *&aBlock.d = &block_descriptor_25;
    v56 = _Block_copy(&aBlock);

    [v55 addAnimations_];
    _Block_release(v56);
  }

  else
  {
    v57 = *&v7[v14];
    if (v57)
    {
      CGAffineTransformMakeTranslation(&aBlock, 0.0, 38.0);
      v71 = *&aBlock.c;
      v74 = *&aBlock.a;
      v69 = *&aBlock.tx;
      v58 = v7;
      *&aBlock.a = v74;
      *&aBlock.c = v71;
      *&aBlock.tx = v69;
      [v57 setTransform_];
    }

    else
    {
      v59 = v7;
    }
  }

  v60 = sub_1D7BA8B8C();
  [v60 startAnimation];

  v61 = &v7[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_coverModel];
  v62 = *&v7[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_coverModel];
  v63 = *&v7[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_coverModel + 8];
  v64 = *&v7[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_coverModel + 16];
  v65 = *(v61 + 3);
  *v61 = a1;
  *(v61 + 1) = v12;
  *(v61 + 2) = v11;
  *(v61 + 3) = a4;
  sub_1D7BA9A1C(a1, v12, v11, a4);
  sub_1D7BA9AB4(v62, v63, v64, v65);
}

void sub_1D7BA93E0(void *a1, char a2)
{
  if (a2)
  {
    v4 = sub_1D7BA8B8C();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v19 = sub_1D7BA9B70;
    v20 = v5;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1D79FE25C;
    v18 = &block_descriptor_19;
    v6 = _Block_copy(&v15);
    v7 = a1;

    [v4 addAnimations_];
    _Block_release(v6);

    v8 = *&v2[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView____lazy_storage___animator];
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v2;
    v19 = sub_1D7BA9B84;
    v20 = v9;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1D7B0D7B0;
    v18 = &block_descriptor_25_0;
    v10 = _Block_copy(&v15);
    v11 = v7;
    v12 = v8;
    v13 = v2;

    [v12 addCompletion_];
    _Block_release(v10);
  }

  else
  {
    [a1 removeFromSuperview];
    v14 = *&v2[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverButton];
    *&v2[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverButton] = 0;
  }
}

char *sub_1D7BA95E4(char *result)
{
  v1 = *&result[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverButton];
  if (v1)
  {
    CGAffineTransformMakeTranslation(&v2, 0.0, 38.0);
    return [v1 setTransform_];
  }

  return result;
}

void sub_1D7BA9650()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverButton];
  if (v1)
  {
    v2 = v1;
    [v0 frame];
    v3 = CGRectGetHeight(v6) + -30.0 + -8.0;
    [v2 frame];
    v4 = v3 - CGRectGetHeight(v7);
    [v2 bounds];
    [v2 setFrameUsingCenterAndBounds_];
  }
}

uint64_t sub_1D7BA9804(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *))
{
  v6 = type metadata accessor for ArticleViewerFeatureAction(0);
  MEMORY[0x1EEE9AC00](v6, v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a2;
  swift_storeEnumTagMultiPayload();
  v9 = a2;
  a4(v8);
  return sub_1D7BA9BD0(v8);
}

uint64_t sub_1D7BA9984(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D7BA99CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1D7BA9A1C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
  }

  return result;
}

unint64_t sub_1D7BA9A5C()
{
  result = qword_1EE0BAF70;
  if (!qword_1EE0BAF70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BAF70);
  }

  return result;
}

double sub_1D7BA9AB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_9()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1D7BA9B84()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];
  v2 = *(v1 + OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverButton);
  *(v1 + OBJC_IVAR____TtC12NewsArticles26CombinedToolbarFeatureView_issueCoverButton) = 0;
}

uint64_t sub_1D7BA9BD0(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewerFeatureAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D7BA9C48(uint64_t a1)
{
  v1 = sub_1D7D27BFC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79AB5C8(0, &qword_1EE0BB0A8, MEMORY[0x1E69972C0], MEMORY[0x1E69E8638]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(result + 2, result[5]);
    v13 = sub_1D7D2E4CC();
    if (v13 >= 7)
    {
      result = sub_1D7D3160C();
      __break(1u);
    }

    else
    {
      (*(v2 + 104))(v5, **(&unk_1E84EABE0 + v13), v1);
      sub_1D79AB5C8(0, &qword_1EE0BB090, MEMORY[0x1E69972C0], MEMORY[0x1E69E8660]);
      sub_1D7D308AC();

      return (*(v8 + 8))(v11, v7);
    }
  }

  return result;
}

double sub_1D7BA9EE4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D79AB5C8(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = sub_1D7D3087C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D799CC84(a2, v16);
  sub_1D7D3084C();
  v10 = a3;
  v11 = sub_1D7D3083C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  sub_1D799D69C(v16, (v12 + 4));
  v12[9] = v10;
  sub_1D7AF94C0(0, 0, v8, &unk_1D7D53408, v12);

  return result;
}

uint64_t sub_1D7BAA054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D7D3084C();
  v5[4] = sub_1D7D3083C();
  v7 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7BAA0EC, v7, v6);
}

uint64_t sub_1D7BAA0EC()
{
  v1 = *(v0 + 16);

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1D7D2F2BC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D7BAA180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D7D3084C();
  v5[4] = sub_1D7D3083C();
  v7 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7BAA218, v7, v6);
}

uint64_t sub_1D7BAA218()
{
  v1 = *(v0 + 16);

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1D7D2F2AC();
  v2 = *(v0 + 8);

  return v2();
}

void *sub_1D7BAA348()
{
  sub_1D79AB5C8(0, &qword_1EE0BB090, MEMORY[0x1E69972C0], MEMORY[0x1E69E8660]);
  v1 = *(v0 + 16);

  return sub_1D7BA9C48(v1);
}

uint64_t sub_1D7BAA3E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D7A4E814;

  return sub_1D7BAA180(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_12Tm_0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D7BAA4F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D7A4E2D8;

  return sub_1D7BAA054(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1D7BAA5EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1D7D2ACCC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  __swift_project_boxed_opaque_existential_1((*v14 + 16), *(*v14 + 40));
  sub_1D7B5B084(a3, 0, a4, v13);
  sub_1D7BB819C(a1);
  sub_1D7BB8350(a2);
  (*(v10 + 8))(v13, v9);
  [a2 setContentEdgeInsets_];
  [a2 setTitleEdgeInsets_];
  return sub_1D7D2A84C();
}

id ArticleThumbnailComponentSizer.__allocating_init(component:componentLayout:componentStyle:domObjectProvider:layoutOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = [objc_allocWithZone(v5) initWithComponent:a1 componentLayout:a2 componentStyle:a3 DOMObjectProvider:a4 layoutOptions:a5];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v7;
}

id ArticleThumbnailComponentSizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s12NewsArticles30ArticleThumbnailComponentSizerC15calculateHeight3for13layoutContext12CoreGraphics7CGFloatVAI_So08SXLayoutK0_ptF_0()
{
  v1 = sub_1D7D2F24C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7D2F27C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v29 - v14;
  v16 = [v0 component];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v29 = v2;
    v30 = v1;
    v18 = *&v0[OBJC_IVAR____TtC12NewsArticles30ArticleThumbnailComponentSizer_linkedContentProvider];
    v19 = v17;
    v20 = [v17 articleIdentifier];
    if (!v20)
    {
      sub_1D7D3034C();
      v20 = sub_1D7D3031C();
    }

    v21 = [v18 headlineForIdentifier_];

    if (v21)
    {
      swift_getObjectType();
      sub_1D7D30EFC();
      if (![v19 showLayeredThumbnail] || UIAccessibilityIsReduceMotionEnabled())
      {
        (*(v7 + 16))(v10, v15, v6);
        v22 = (*(v7 + 88))(v10, v6);
        v23 = *(v7 + 8);
        if (v22 == *MEMORY[0x1E69B61B8])
        {
          v23(v15, v6);
          (*(v7 + 96))(v10, v6);
          sub_1D7BAAD74(0);
          v25 = v30;
          v26 = *(v29 + 32);
          v26(v5, &v10[*(v24 + 48)], v30);
          v27 = sub_1D7D2F26C();
          (*(*(v27 - 8) + 8))(v10, v27);
          v26(v15, v5, v25);
          (*(v7 + 104))(v15, *MEMORY[0x1E69B61B0], v6);
        }

        else
        {
          v23(v10, v6);
        }
      }

      sub_1D7D2F25C();
      if (v28 > 0.0)
      {
        sub_1D7D2F25C();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v7 + 8))(v15, v6);
        return;
      }

      (*(v7 + 8))(v15, v6);
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
}

void sub_1D7BAAD74(uint64_t a1)
{
  if (!qword_1EC9E60D8)
  {
    sub_1D7D2F26C();
    sub_1D7D2F24C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E60D8);
    }
  }
}

uint64_t sub_1D7BAAE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v214 = a5;
  v221 = a4;
  v222 = a3;
  v223 = a2;
  v224 = a1;
  v217 = a6;
  sub_1D7BAD4E8(0, &qword_1EE0C12C8, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v216 = &v183 - v8;
  v215 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs(0);
  v206 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215, v9);
  v195 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v207 = &v183 - v13;
  sub_1D7BAD4E8(0, &unk_1EE0C1808, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v213 = &v183 - v16;
  EndOfArticleFeedGroupKnobs = type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs(0);
  v220 = *(EndOfArticleFeedGroupKnobs - 8);
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroupKnobs, v17);
  v193 = &v183 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v204 = &v183 - v21;
  sub_1D7BAD4E8(0, &unk_1EE0C16D8, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v201 = &v183 - v24;
  v211 = type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs(0);
  v219 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211, v25);
  v191 = &v183 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v200 = &v183 - v29;
  sub_1D7BAD4E8(0, &qword_1EE0C28A8, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v210 = &v183 - v32;
  v209 = type metadata accessor for RelatedEndOfArticleFeedGroupKnobs(0);
  v218 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209, v33);
  v189 = &v183 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v197 = &v183 - v37;
  v38 = sub_1D7D2EA6C();
  v225 = *(v38 - 8);
  v226 = v38;
  MEMORY[0x1EEE9AC00](v38, v39);
  v227 = &v183 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7990AB0(0);
  v42 = v41;
  v228 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v43);
  v194 = &v183 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v192 = &v183 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v190 = &v183 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v188 = &v183 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v186 = &v183 - v56;
  sub_1D7BAD4E8(0, &qword_1EE0BF988, sub_1D7990AB0);
  MEMORY[0x1EEE9AC00](v57 - 8, v58);
  v203 = &v183 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v205 = &v183 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v199 = &v183 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v202 = &v183 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v208 = &v183 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v198 = &v183 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v187 = &v183 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v196 = &v183 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v84 = &v183 - v83;
  MEMORY[0x1EEE9AC00](v85, v86);
  v88 = &v183 - v87;
  sub_1D7BAD4E8(0, &qword_1EE0C2410, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v89 - 8, v90);
  v92 = &v183 - v91;
  v93 = type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs(0);
  v94 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v95);
  v97 = &v183 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v98, v99);
  v101 = &v183 - v100;
  v102 = v228;
  sub_1D7BAD53C(v224, v92, &qword_1EE0C2410, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
  v103 = *(v94 + 48);
  if (v103(v92, 1, v93) == 1)
  {
    v184 = v103;
    (*(v102 + 56))(v88, 1, 1, v42);
    v185 = v88;
    sub_1D7BAD53C(v88, v84, &qword_1EE0BF988, sub_1D7990AB0);
    v104 = *(v102 + 48);
    if (v104(v84, 1, v42) == 1)
    {
      type metadata accessor for EndOfArticleFeedServiceConfig(0);
      sub_1D798EE6C(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig, &unk_1D7D47AC0);
      v105 = v186;
      sub_1D7D2E33C();
      if (v104(v84, 1, v42) != 1)
      {
        sub_1D7BAD5A8(v84, &qword_1EE0BF988, sub_1D7990AB0);
      }
    }

    else
    {
      v107 = *(v102 + 32);
      v105 = v186;
      v107(v186, v84, v42);
    }

    v106 = v42;
    (*(v228 + 32))(v97, v105, v42);
    v229 = 5;
    sub_1D7994BB0();
    swift_allocObject();
    *&v97[*(v93 + 20)] = sub_1D7D2E71C();
    (*(v225 + 104))(v227, *MEMORY[0x1E69B5D40], v226);
    sub_1D7994C2C(0);
    swift_allocObject();
    v108 = sub_1D7D2E71C();
    sub_1D7BAD5A8(v185, &qword_1EE0BF988, sub_1D7990AB0);
    *&v97[*(v93 + 24)] = v108;
    sub_1D7BAD604(v97, v101, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
    if (v184(v92, 1, v93) != 1)
    {
      sub_1D7BAD5A8(v92, &qword_1EE0C2410, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
    }
  }

  else
  {
    v106 = v42;
    sub_1D7BAD604(v92, v101, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
  }

  v109 = v217;
  sub_1D7BAD604(v101, v217, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
  v110 = v210;
  sub_1D7BAD53C(v223, v210, &qword_1EE0C28A8, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
  v111 = v218 + 12;
  v112 = *(v218 + 6);
  if (v112(v110, 1, v209) == 1)
  {
    v218 = v111;
    v113 = v228;
    v114 = v196;
    v115 = v106;
    (*(v228 + 56))(v196, 1, 1, v106);
    v116 = v187;
    sub_1D7BAD53C(v114, v187, &qword_1EE0BF988, sub_1D7990AB0);
    v117 = *(v113 + 48);
    v118 = v117(v116, 1, v115);
    v119 = v201;
    if (v118 == 1)
    {
      type metadata accessor for EndOfArticleFeedServiceConfig(0);
      sub_1D798EE6C(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig, &unk_1D7D47AC0);
      v120 = v188;
      sub_1D7D2E33C();
      if (v117(v116, 1, v115) != 1)
      {
        sub_1D7BAD5A8(v116, &qword_1EE0BF988, sub_1D7990AB0);
      }
    }

    else
    {
      v120 = v188;
      (*(v113 + 32))(v188, v116, v115);
    }

    v124 = v189;
    (*(v113 + 32))(v189, v120, v115);
    v229 = 5;
    sub_1D7994BB0();
    swift_allocObject();
    v125 = sub_1D7D2E71C();
    v126 = v209;
    *(v124 + *(v209 + 20)) = v125;
    (*(v225 + 104))(v227, *MEMORY[0x1E69B5D40], v226);
    sub_1D7994C2C(0);
    swift_allocObject();
    v127 = sub_1D7D2E71C();
    sub_1D7BAD5A8(v196, &qword_1EE0BF988, sub_1D7990AB0);
    *(v124 + *(v126 + 24)) = v127;
    v128 = v197;
    sub_1D7BAD604(v124, v197, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
    v129 = v210;
    v130 = v112(v210, 1, v126);
    v121 = v128;
    v122 = v219;
    v123 = v208;
    v109 = v217;
    if (v130 != 1)
    {
      sub_1D7BAD5A8(v129, &qword_1EE0C28A8, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
    }
  }

  else
  {
    v121 = v197;
    sub_1D7BAD604(v110, v197, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
    v115 = v106;
    v113 = v228;
    v119 = v201;
    v122 = v219;
    v123 = v208;
  }

  v131 = type metadata accessor for EndOfArticleFeedGroupKnobs(0);
  sub_1D7BAD604(v121, v109 + v131[5], type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
  sub_1D7BAD53C(v222, v119, &unk_1EE0C16D8, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
  v134 = *(v122 + 48);
  v132 = v122 + 48;
  v133 = v134;
  if (v134(v119, 1, v211) == 1)
  {
    v219 = v132;
    v135 = v198;
    (*(v113 + 56))(v198, 1, 1, v115);
    sub_1D7BAD53C(v135, v123, &qword_1EE0BF988, sub_1D7990AB0);
    v136 = *(v113 + 48);
    v137 = v136(v123, 1, v115);
    v218 = v131;
    if (v137 == 1)
    {
      type metadata accessor for EndOfArticleFeedServiceConfig(0);
      sub_1D798EE6C(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig, &unk_1D7D47AC0);
      v138 = v208;
      v139 = v190;
      sub_1D7D2E33C();
      if (v136(v138, 1, v115) != 1)
      {
        sub_1D7BAD5A8(v138, &qword_1EE0BF988, sub_1D7990AB0);
      }
    }

    else
    {
      v139 = v190;
      (*(v113 + 32))(v190, v123, v115);
    }

    v142 = v191;
    (*(v113 + 32))(v191, v139, v115);
    v229 = 5;
    sub_1D7994BB0();
    swift_allocObject();
    v143 = sub_1D7D2E71C();
    v144 = v211;
    *(v142 + *(v211 + 20)) = v143;
    (*(v225 + 104))(v227, *MEMORY[0x1E69B5D40], v226);
    sub_1D7994C2C(0);
    swift_allocObject();
    v145 = sub_1D7D2E71C();
    sub_1D7BAD5A8(v198, &qword_1EE0BF988, sub_1D7990AB0);
    *(v142 + *(v144 + 24)) = v145;
    v140 = v200;
    sub_1D7BAD604(v142, v200, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
    v146 = v133(v119, 1, v144) == 1;
    v147 = v119;
    v141 = v220;
    v131 = v218;
    if (!v146)
    {
      sub_1D7BAD5A8(v147, &unk_1EE0C16D8, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
    }
  }

  else
  {
    v140 = v200;
    sub_1D7BAD604(v119, v200, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
    v141 = v220;
  }

  sub_1D7BAD604(v140, v109 + v131[6], type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
  v148 = v213;
  sub_1D7BAD53C(v221, v213, &unk_1EE0C1808, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
  v151 = *(v141 + 48);
  v150 = v141 + 48;
  v149 = v151;
  v152 = v151(v148, 1, EndOfArticleFeedGroupKnobs);
  v153 = v199;
  if (v152 == 1)
  {
    v220 = v150;
    v154 = v202;
    (*(v113 + 56))(v202, 1, 1, v115);
    sub_1D7BAD53C(v154, v153, &qword_1EE0BF988, sub_1D7990AB0);
    v155 = *(v113 + 48);
    v156 = v109;
    if (v155(v153, 1, v115) == 1)
    {
      type metadata accessor for EndOfArticleFeedServiceConfig(0);
      sub_1D798EE6C(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig, &unk_1D7D47AC0);
      v157 = v192;
      sub_1D7D2E33C();
      if (v155(v153, 1, v115) != 1)
      {
        sub_1D7BAD5A8(v153, &qword_1EE0BF988, sub_1D7990AB0);
      }
    }

    else
    {
      v157 = v192;
      (*(v113 + 32))(v192, v153, v115);
    }

    v160 = v193;
    (*(v113 + 32))(v193, v157, v115);
    v229 = 2;
    sub_1D7994BB0();
    swift_allocObject();
    v161 = sub_1D7D2E71C();
    v162 = EndOfArticleFeedGroupKnobs;
    *(v160 + *(EndOfArticleFeedGroupKnobs + 20)) = v161;
    v229 = 5;
    swift_allocObject();
    *(v160 + *(v162 + 24)) = sub_1D7D2E71C();
    (*(v225 + 104))(v227, *MEMORY[0x1E69B5D40], v226);
    sub_1D7994C2C(0);
    swift_allocObject();
    v163 = sub_1D7D2E71C();
    sub_1D7BAD5A8(v202, &qword_1EE0BF988, sub_1D7990AB0);
    *(v160 + *(v162 + 28)) = v163;
    v159 = v204;
    sub_1D7BAD604(v160, v204, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
    v164 = v213;
    v109 = v156;
    if (v149(v213, 1, v162) != 1)
    {
      sub_1D7BAD5A8(v164, &unk_1EE0C1808, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
    }
  }

  else
  {
    v158 = v148;
    v159 = v204;
    sub_1D7BAD604(v158, v204, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
  }

  sub_1D7BAD604(v159, v109 + v131[7], type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
  v165 = v214;
  v166 = v216;
  sub_1D7BAD53C(v214, v216, &qword_1EE0C12C8, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
  v167 = *(v206 + 48);
  v168 = v167(v166, 1, v215);
  v169 = v203;
  if (v168 == 1)
  {
    v170 = v131;
    v171 = v228;
    v172 = v205;
    (*(v228 + 56))(v205, 1, 1, v115);
    sub_1D7BAD53C(v172, v169, &qword_1EE0BF988, sub_1D7990AB0);
    v173 = *(v171 + 48);
    if (v173(v169, 1, v115) == 1)
    {
      type metadata accessor for EndOfArticleFeedServiceConfig(0);
      sub_1D798EE6C(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig, &unk_1D7D47AC0);
      v174 = v194;
      sub_1D7D2E33C();
      if (v173(v169, 1, v115) != 1)
      {
        sub_1D7BAD5A8(v169, &qword_1EE0BF988, sub_1D7990AB0);
      }
    }

    else
    {
      v174 = v194;
      (*(v171 + 32))(v194, v169, v115);
    }

    v176 = v195;
    (*(v228 + 32))(v195, v174, v115);
    v229 = 5;
    sub_1D7994BB0();
    swift_allocObject();
    v177 = sub_1D7D2E71C();
    v178 = v215;
    *(v176 + *(v215 + 20)) = v177;
    (*(v225 + 104))(v227, *MEMORY[0x1E69B5D40], v226);
    sub_1D7994C2C(0);
    swift_allocObject();
    v179 = sub_1D7D2E71C();
    sub_1D7BAD5A8(v214, &qword_1EE0C12C8, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
    sub_1D7BAD5A8(v221, &unk_1EE0C1808, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
    sub_1D7BAD5A8(v222, &unk_1EE0C16D8, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
    sub_1D7BAD5A8(v223, &qword_1EE0C28A8, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
    sub_1D7BAD5A8(v224, &qword_1EE0C2410, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
    sub_1D7BAD5A8(v205, &qword_1EE0BF988, sub_1D7990AB0);
    *(v176 + *(v178 + 24)) = v179;
    v175 = v207;
    sub_1D7BAD604(v176, v207, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
    v180 = v216;
    v181 = v167(v216, 1, v178);
    v131 = v170;
    if (v181 != 1)
    {
      sub_1D7BAD5A8(v180, &qword_1EE0C12C8, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
    }
  }

  else
  {
    sub_1D7BAD5A8(v165, &qword_1EE0C12C8, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
    sub_1D7BAD5A8(v221, &unk_1EE0C1808, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
    sub_1D7BAD5A8(v222, &unk_1EE0C16D8, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
    sub_1D7BAD5A8(v223, &qword_1EE0C28A8, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
    sub_1D7BAD5A8(v224, &qword_1EE0C2410, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
    v175 = v207;
    sub_1D7BAD604(v166, v207, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
  }

  return sub_1D7BAD604(v175, v109 + v131[8], type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
}

uint64_t sub_1D7BACA90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_1D7BAD4E8(0, &qword_1EE0C12C8, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v34 = &v30 - v6;
  sub_1D7BAD4E8(0, &unk_1EE0C1808, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v33 = &v30 - v9;
  sub_1D7BAD4E8(0, &unk_1EE0C16D8, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v32 = &v30 - v12;
  sub_1D7BAD4E8(0, &qword_1EE0C28A8, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v30 - v15;
  sub_1D7BAD4E8(0, &qword_1EE0C2410, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v30 - v19;
  sub_1D7BAD6C0(0, &qword_1EE0BEB38, MEMORY[0x1E69E6F48]);
  v22 = v21;
  v31 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v30 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BAD66C();
  sub_1D7D31AFC();
  if (!v2)
  {
    type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs(0);
    v40 = 0;
    sub_1D798EE6C(&qword_1EE0C2418, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs, &unk_1D7D46FDC);
    sub_1D7D3173C();
    type metadata accessor for RelatedEndOfArticleFeedGroupKnobs(0);
    v39 = 1;
    sub_1D798EE6C(&qword_1EE0C28B0, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs, &unk_1D7D516EC);
    v30 = v16;
    sub_1D7D3173C();
    type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs(0);
    v38 = 2;
    sub_1D798EE6C(&qword_1EE0C16E8, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs, &unk_1D7D647A0);
    v26 = v32;
    sub_1D7D3173C();
    type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs(0);
    v37 = 3;
    sub_1D798EE6C(qword_1EE0C1818, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs, &unk_1D7D64590);
    v27 = v33;
    sub_1D7D3173C();
    type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs(0);
    v36 = 4;
    sub_1D798EE6C(&qword_1EE0C12D0, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs, &unk_1D7D47D50);
    v28 = v34;
    sub_1D7D3173C();
    sub_1D7BAAE10(v20, v30, v26, v27, v28, v35);
    (*(v31 + 8))(v25, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7BACFE8(void *a1, double a2)
{
  sub_1D7BAD6C0(0, &qword_1EC9E60E0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BAD66C();
  sub_1D7D31B1C();
  v11[15] = 0;
  type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs(0);
  sub_1D798EE6C(&unk_1EC9E3480, type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs, &unk_1D7D46FB4);
  sub_1D7D318BC();
  if (!v2)
  {
    type metadata accessor for EndOfArticleFeedGroupKnobs(0);
    v11[14] = 1;
    type metadata accessor for RelatedEndOfArticleFeedGroupKnobs(0);
    sub_1D798EE6C(&unk_1EC9E8540, type metadata accessor for RelatedEndOfArticleFeedGroupKnobs, &unk_1D7D516C4);
    sub_1D7D318BC();
    v11[13] = 2;
    type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs(0);
    sub_1D798EE6C(&unk_1EC9E23A0, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs, &unk_1D7D64778);
    sub_1D7D318BC();
    v11[12] = 3;
    type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs(0);
    sub_1D798EE6C(&unk_1EC9E3190, type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs, &unk_1D7D64568);
    sub_1D7D318BC();
    v11[11] = 4;
    type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs(0);
    sub_1D798EE6C(&qword_1EC9E60E8, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs, &unk_1D7D47D28);
    sub_1D7D318BC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D7BAD358()
{
  v1 = *v0;
  v2 = 0x6D6F724665726F6DLL;
  v3 = 0xD000000000000010;
  v4 = 0x65526F5465726F6DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4B646574616C6572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D7BAD418@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7BAD83C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7BAD440(uint64_t a1)
{
  v2 = sub_1D7BAD66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7BAD47C(uint64_t a1)
{
  v2 = sub_1D7BAD66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D7BAD4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7BAD53C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7BAD4E8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7BAD5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7BAD4E8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7BAD604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D7BAD66C()
{
  result = qword_1EE0C5A68[0];
  if (!qword_1EE0C5A68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C5A68);
  }

  return result;
}

void sub_1D7BAD6C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7BAD66C();
    v7 = a3(a1, &type metadata for EndOfArticleFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7BAD738()
{
  result = qword_1EC9E60F0;
  if (!qword_1EC9E60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E60F0);
  }

  return result;
}

unint64_t sub_1D7BAD790()
{
  result = qword_1EE0C5A58;
  if (!qword_1EE0C5A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5A58);
  }

  return result;
}

unint64_t sub_1D7BAD7E8()
{
  result = qword_1EE0C5A60;
  if (!qword_1EE0C5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5A60);
  }

  return result;
}

uint64_t sub_1D7BAD83C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F724665726F6DLL && a2 == 0xED000073626F6E4BLL;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B646574616C6572 && a2 == 0xEC00000073626F6ELL || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7D75EE0 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65526F5465726F6DLL && a2 == 0xEF73626F6E4B6461 || (sub_1D7D3197C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D7D75F00 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D7D3197C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1D7BADA0C(uint64_t a1, double *a2, char *a3)
{
  v6 = sub_1D7D2FE9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 96);
  v12 = *&a3[OBJC_IVAR____TtC12NewsArticles26TableOfContentsPDFCellView_imageView];
  v23[0] = *(a1 + 88);
  sub_1D7D2C85C();
  [v12 setFrame_];
  [a3 setIsAccessibilityElement_];
  [a3 setAccessibilityTraits_];
  v24[0] = 0x2065676150;
  v24[1] = 0xE500000000000000;
  v27 = v11;
  v13 = sub_1D7D3190C();
  MEMORY[0x1DA70DE90](v13);

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v16 = sub_1D7D3031C();

  [a3 setAccessibilityLabel_];

  v25 = sub_1D7B6D340();
  v26 = sub_1D7BADE6C(&qword_1EE0BF0E0, sub_1D7B6D340, MEMORY[0x1E69B68B8]);
  v24[0] = v23[0];
  v17 = [objc_opt_self() mainScreen];
  [v17 scale];

  (*(v7 + 104))(v10, *MEMORY[0x1E69B67A8], v6);
  v18 = sub_1D7D2FEAC();
  swift_allocObject();
  v19 = sub_1D7D2FE8C();
  v25 = v18;
  v26 = sub_1D7BADE6C(&qword_1EC9E60F8, MEMORY[0x1E69B67B0], MEMORY[0x1E69B67A0]);
  v24[0] = v19;
  *(swift_allocObject() + 16) = a3;

  v20 = a3;
  v21 = v23[1];
  sub_1D7D2C84C();

  __swift_destroy_boxed_opaque_existential_1(v24);
  v22 = *&v20[OBJC_IVAR____TtC12NewsArticles26TableOfContentsPDFCellView_borderLayer];
  [v22 setFrame_];
  __swift_project_boxed_opaque_existential_1((v21 + 16), *(v21 + 40));
  sub_1D7CCFB88(v22);
}

uint64_t sub_1D7BADE6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1D7BADEB4(void *a1)
{
  v1 = a1;
  sub_1D7D2C85C();
  return result;
}

void sub_1D7BADEF4(void *a1, char a2)
{
  if (a2 == 3)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() systemBackgroundColor];
  }

  v4 = v3;
  [a1 setBackgroundColor_];
}

void sub_1D7BADF9C(void *a1)
{
  v2 = [objc_opt_self() systemBackgroundColor];
  [a1 setBackgroundColor_];
}

void sub_1D7BAE010(void *a1)
{
  if (a1)
  {
    v2 = [objc_opt_self() systemBackgroundColor];
    [a1 setBackgroundColor_];
  }
}

uint64_t sub_1D7BAE0B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D7D2B7FC();
  v3 = sub_1D7D2B7EC();
  v4 = MEMORY[0x1E69D8270];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = v3;
  v5 = *MEMORY[0x1E69D8818];
  v6 = sub_1D7D2C83C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

void sub_1D7BAE144(uint64_t a1, void *a2)
{
  v4 = _s15ArticleProviderOMa(0);
  v82 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v83 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v81 = &v70 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1D7BB5C14(0, &qword_1EE0BF458, sub_1D7BB6254, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v70 - v17;
  sub_1D7BB5C14(0, &qword_1EE0BF438, sub_1D7BB62C0, v10);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v72 = *(a1 + 16);
  if (!v72)
  {
    return;
  }

  v22 = 0;
  v73 = a1 + 32;
  v77 = v14;
  v71 = a2;
  v79 = &v70 - v21;
  v80 = v18;
LABEL_4:
  memcpy(v86, (v73 + 1104 * v22), 0x450uLL);
  v74 = v22 + 1;
  v23 = v86[0];
  sub_1D7BB5DC0(v86, &v85);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *a2;
  v85 = *a2;
  *a2 = 0x8000000000000000;
  v26 = *(v23 + 64);
  v76 = v23 + 64;
  v27 = 1 << *(v23 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v26;
  v75 = (v27 + 63) >> 6;
  v78 = v23;

  for (i = 0; ; i = v84)
  {
    v87 = isUniquelyReferenced_nonNull_native;
    if (!v29)
    {
      break;
    }

    v33 = i;
LABEL_18:
    v35 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v36 = v35 | (v33 << 6);
    v37 = (*(v78 + 48) + 16 * v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = v81;
    sub_1D7B7ED74(*(v78 + 56) + *(v82 + 72) * v36, v81);
    sub_1D7BB6254(0);
    v42 = v41;
    v43 = *(v41 + 48);
    v44 = v80;
    *v80 = v39;
    *(v44 + 8) = v38;
    sub_1D7B7EDF4(v40, v44 + v43);
    (*(*(v42 - 8) + 56))(v44, 0, 1, v42);

    v84 = v33;
    v14 = v77;
LABEL_19:
    sub_1D7BB6328(v44, v14);
    sub_1D7BB6254(0);
    if ((*(*(v42 - 8) + 48))(v14, 1, v42) == 1)
    {
      sub_1D7BB62C0(0);
      v46 = v45;
      v47 = v79;
      (*(*(v45 - 8) + 56))(v79, 1, 1, v45);
    }

    else
    {
      v48 = *(v42 + 48);
      sub_1D7BB62C0(0);
      v46 = v49;
      v50 = *(v49 + 48);
      v52 = *v14;
      v51 = v14[1];
      v53 = v14 + v48;
      v47 = v79;
      sub_1D7B7ED74(v53, &v79[v50]);
      *v47 = v52;
      v47[1] = v51;

      sub_1D7BB6420(v14, sub_1D7BB6254);
      (*(*(v46 - 8) + 56))(v47, 0, 1, v46);
    }

    sub_1D7BB62C0(0);
    if ((*(*(v46 - 8) + 48))(v47, 1, v46) == 1)
    {

      a2 = v71;
      *v71 = v25;

      sub_1D7B6A0C0(v86);
      v22 = v74;
      if (v74 == v72)
      {
        return;
      }

      goto LABEL_4;
    }

    v54 = *(v46 + 48);
    v55 = *v47;
    v56 = v47[1];
    sub_1D7B7EDF4(v47 + v54, v83);
    v58 = sub_1D7A18FFC(v55, v56);
    v59 = v25[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_37;
    }

    v62 = v57;
    if (v25[3] >= v61)
    {
      if (v87)
      {
        v25 = v85;
        if (v57)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1D7B97A58();
        v25 = v85;
        if (v62)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_1D7B92AF4(v61, v87 & 1);
      v63 = sub_1D7A18FFC(v55, v56);
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_39;
      }

      v58 = v63;
      v25 = v85;
      if (v62)
      {
LABEL_8:
        v31 = v81;
        v32 = *(v82 + 72) * v58;
        sub_1D7B7ED74(v25[7] + v32, v81);
        sub_1D7BB6420(v83, _s15ArticleProviderOMa);

        sub_1D7BB63BC(v31, v25[7] + v32);
        goto LABEL_9;
      }
    }

    v25[(v58 >> 6) + 8] |= 1 << v58;
    v65 = (v25[6] + 16 * v58);
    *v65 = v55;
    v65[1] = v56;
    sub_1D7B7EDF4(v83, v25[7] + *(v82 + 72) * v58);
    v66 = v25[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_38;
    }

    v25[2] = v68;
LABEL_9:
    isUniquelyReferenced_nonNull_native = 1;
  }

  if (v75 <= i + 1)
  {
    v34 = i + 1;
  }

  else
  {
    v34 = v75;
  }

  while (1)
  {
    v33 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v33 >= v75)
    {
      v84 = v34 - 1;
      sub_1D7BB6254(0);
      v42 = v69;
      v44 = v80;
      (*(*(v69 - 8) + 56))(v80, 1, 1, v69);
      v29 = 0;
      goto LABEL_19;
    }

    v29 = *(v76 + 8 * v33);
    ++i;
    if (v29)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  sub_1D7D31A2C();
  __break(1u);
}

void sub_1D7BAE828(void *a1)
{
  v2 = *(sub_1D7D2EEAC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D7B50594(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D7BB3E90(v5);
  *a1 = v3;
}

unint64_t sub_1D7BAE8F0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7BB5954(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t EndOfArticleSectionPosition.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x7972616974726574;
    }

    if (a1 == 3)
    {
      return 0x616E726574617571;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x7972616D697270;
    }

    if (a1 == 1)
    {
      return 0x7261646E6F636573;
    }
  }

  result = sub_1D7D319FC();
  __break(1u);
  return result;
}

uint64_t sub_1D7BAE9E4(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 1)
  {
    if (!v2)
    {
      return 0x7972616D697270;
    }

    if (v2 == 1)
    {
      return 0x7261646E6F636573;
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    return 0x7972616974726574;
  }

  if (v2 != 3)
  {
LABEL_11:
    result = sub_1D7D319FC();
    __break(1u);
    return result;
  }

  return 0x616E726574617571;
}

uint64_t EndOfArticleSectionType.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t sub_1D7BAEB30(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_1D7BB520C(v13, v14) & 1;
}

uint64_t sub_1D7BAEB98@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (a1 != 1)
  {
    if (a1)
    {
      result = sub_1D7D319FC();
      __break(1u);
      return result;
    }

    if ((a2 & 1) == 0)
    {
      v8 = [objc_opt_self() mainBundle];
      v9 = [v8 bundleIdentifier];

      if (!v9)
      {
LABEL_13:
        if (qword_1EE0CA130 != -1)
        {
          swift_once();
        }

        v15 = qword_1EE0CA138;
        v16 = sub_1D7D30C6C();
        sub_1D7D29AAC("Returning default article recirculation config for non-News clients, like Stocks and NewsKit", 92, 2, &dword_1D7987000, v15, v16, MEMORY[0x1E69E7CC0]);
        a3[3] = &type metadata for CombinedArticleRecirculationConfig;
        a3[4] = &off_1F52A9508;
        v17 = swift_allocObject();
        *a3 = v17;
        v18 = sub_1D7BAF658;
        v19 = sub_1D7BAEFDC;
        return sub_1D7BAFFC4(v18, v19, (v17 + 16));
      }

      v10 = sub_1D7D3034C();
      v12 = v11;

      if (v10 == 0x6C7070612E6D6F63 && v12 == 0xEE007377656E2E65)
      {
      }

      else
      {
        v14 = sub_1D7D3197C();

        if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }

    if (qword_1EE0CA130 != -1)
    {
      swift_once();
    }

    v20 = qword_1EE0CA138;
    v21 = sub_1D7D30C6C();
    sub_1D7D29AAC("Returning default article recirculation config for News", 55, 2, &dword_1D7987000, v20, v21, MEMORY[0x1E69E7CC0]);
    a3[3] = &type metadata for CombinedArticleRecirculationConfig;
    a3[4] = &off_1F52A9508;
    v17 = swift_allocObject();
    *a3 = v17;
    v18 = sub_1D7BAEFDC;
    v19 = sub_1D7BAF658;
    return sub_1D7BAFFC4(v18, v19, (v17 + 16));
  }

  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE0CA138;
  v5 = sub_1D7D30C6C();
  sub_1D7D29AAC("Returning default article recirculation config for News isue", 60, 2, &dword_1D7987000, v4, v5, MEMORY[0x1E69E7CC0]);
  a3[3] = &type metadata for CombinedArticleRecirculationConfig;
  a3[4] = &off_1F52A9508;
  v6 = swift_allocObject();
  *a3 = v6;
  return sub_1D7BAFED4((v6 + 16));
}

uint64_t sub_1D7BAEEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1D7A9F930(0, &qword_1EE0BE890, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7D3B4D0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *a6 = v12;
  *(a6 + 8) = 2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  *(a6 + 32) = a5;
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  *(a6 + 65) = 1;
  *(a6 + 72) = 0;
  *(a6 + 80) = 1;
  *(a6 + 88) = 0;
  *(a6 + 96) = 1;
}

double sub_1D7BAEFDC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v38 = sub_1D7D2811C();
  v4 = v3;
  v37 = v3;

  sub_1D7BAEEDC(0x6D6F724665726F6DLL, 0xE800000000000000, 0, 1, &unk_1F529AD88, v43);
  v41[0] = 0x6D6F724665726F6DLL;
  v41[1] = 0xE800000000000000;
  v41[2] = v38;
  v41[3] = v4;
  v41[4] = 0x30304646463723;
  v41[5] = 0xE700000000000000;
  v41[6] = 0;
  v42 = 1;
  *&v43[104] = xmmword_1D7D53750;
  v44 = 2;
  v45 = 0;
  v46 = 0;
  v47 = -1;
  sub_1D7A9F930(0, &unk_1EE0BE9C8, &type metadata for ArticleRecirculationConfigFactory.RealizedRule, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D42910;
  sub_1D7BAEEDC(0xD000000000000011, 0x80000001D7D674B0, 129600, 0, &unk_1F529AD88, &v48);
  v6 = MEMORY[0x1E69E6F90];
  sub_1D7BB5C14(0, &qword_1EE0BE850, sub_1D79E6DC8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7D3B4D0;
  sub_1D7BB5C14(0, &qword_1EE0BEA30, _s15ArticleProviderOMa, v6);
  v8 = *(_s15ArticleProviderOMa(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7D3B4D0;
  *(v10 + v9) = 5;
  swift_storeEnumTagMultiPayload();
  *(v7 + 32) = v10;
  LOBYTE(v61) = v54;
  v11 = v53;
  v59 = v52;
  v60 = v53;
  v12 = v51;
  v13 = v50;
  v57 = v50;
  v58 = v51;
  v14 = v49;
  v15 = v48;
  v55 = v48;
  v56 = v49;
  *(v5 + 96) = v52;
  *(v5 + 112) = v11;
  *(v5 + 32) = v15;
  *(v5 + 48) = v14;
  *(v5 + 64) = v13;
  *(v5 + 80) = v12;
  *(v5 + 128) = v61;
  *(v5 + 136) = v7;
  sub_1D7BAEEDC(0xD000000000000011, 0x80000001D7D674D0, 0, 1, &unk_1F529AD88, v62);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7D3B4D0;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7D3B4D0;
  *(v17 + v9) = 6;
  swift_storeEnumTagMultiPayload();
  *(v16 + 32) = v17;
  v18 = v62[5];
  *(v5 + 208) = v62[4];
  *(v5 + 224) = v18;
  v19 = v63;
  v20 = v62[1];
  *(v5 + 144) = v62[0];
  *(v5 + 160) = v20;
  v21 = v62[3];
  *(v5 + 176) = v62[2];
  *(v5 + 192) = v21;
  *(v5 + 240) = v19;
  *(v5 + 248) = v16;
  sub_1D7BAEEDC(0xD000000000000021, 0x80000001D7D674F0, 0, 1, &unk_1F529AD88, v64);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7D3B4D0;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7D3B4D0;
  *(v23 + v9) = 7;
  swift_storeEnumTagMultiPayload();
  *(v22 + 32) = v23;
  v24 = v64[5];
  *(v5 + 320) = v64[4];
  *(v5 + 336) = v24;
  v25 = v65;
  v26 = v64[1];
  *(v5 + 256) = v64[0];
  *(v5 + 272) = v26;
  v27 = v64[3];
  *(v5 + 288) = v64[2];
  *(v5 + 304) = v27;
  *(v5 + 352) = v25;
  *(v5 + 360) = v22;
  sub_1D7BAEEDC(0x656873696C627570, 0xE900000000000072, 0, 1, &unk_1F529AD88, v66);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7D3B4D0;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7D3B4D0;
  *(v29 + v9) = 3;
  swift_storeEnumTagMultiPayload();
  *(v28 + 32) = v29;
  v30 = v66[5];
  *(v5 + 432) = v66[4];
  *(v5 + 448) = v30;
  v31 = v67;
  v32 = v66[1];
  *(v5 + 368) = v66[0];
  *(v5 + 384) = v32;
  v33 = v66[3];
  *(v5 + 400) = v66[2];
  *(v5 + 416) = v33;
  *(v5 + 464) = v31;
  *(v5 + 472) = v28;

  sub_1D7A25744(v41);
  *&v68 = v38;
  *(&v68 + 1) = v37;
  *&v69 = 0x30304646463723;
  *(&v69 + 1) = 0xE700000000000000;
  *v70 = 1;
  *&v70[8] = xmmword_1D7D53750;
  *&v70[24] = xmmword_1D7D53760;
  *&v70[40] = v5;
  v71 = MEMORY[0x1E69E7CC0];
  v72[0] = v38;
  v72[1] = v37;
  v72[2] = 0x30304646463723;
  v72[3] = 0xE700000000000000;
  v73 = 1;
  v74 = xmmword_1D7D53750;
  v75 = xmmword_1D7D53760;
  v76 = v5;
  v77 = MEMORY[0x1E69E7CC0];
  sub_1D7B653B4(&v68, v40);
  sub_1D7BB5C78(v72);
  v34 = *&v70[16];
  *(a1 + 32) = *v70;
  *(a1 + 48) = v34;
  *(a1 + 64) = *&v70[32];
  *(a1 + 80) = v71;
  result = *&v68;
  v36 = v69;
  *a1 = v68;
  *(a1 + 16) = v36;
  return result;
}

double sub_1D7BAF658@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D7D2811C();
  v6 = v5;

  sub_1D7BAEEDC(0xD000000000000011, 0x80000001D7D67490, 0, 1, &unk_1F529AD60, v24);
  v22[0] = 0x646574616C6572;
  v22[1] = 0xE700000000000000;
  v22[2] = v4;
  v22[3] = v6;
  v22[4] = 0x30303030303023;
  v22[5] = 0xE700000000000000;
  v22[6] = 0;
  v23 = 256;
  *&v24[104] = xmmword_1D7D53750;
  v25 = 2;
  v26 = 0;
  v27 = 0;
  v28 = -1;
  sub_1D7A9F930(0, &unk_1EE0BE9C8, &type metadata for ArticleRecirculationConfigFactory.RealizedRule, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7D3B4D0;
  sub_1D7BAEEDC(0xD000000000000011, 0x80000001D7D67490, 0, 1, &unk_1F529AD60, &v29);
  v8 = MEMORY[0x1E69E6F90];
  sub_1D7BB5C14(0, &qword_1EE0BE850, sub_1D79E6DC8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7D3B4D0;
  sub_1D7BB5C14(0, &qword_1EE0BEA30, _s15ArticleProviderOMa, v8);
  v10 = *(_s15ArticleProviderOMa(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7D3B4D0;
  *(v12 + v11) = 4;
  swift_storeEnumTagMultiPayload();
  *(v9 + 32) = v12;
  LOBYTE(v42) = v35;
  v13 = v34;
  v40 = v33;
  v41 = v34;
  v14 = v32;
  v15 = v31;
  v38 = v31;
  v39 = v32;
  v16 = v30;
  v17 = v29;
  v36 = v29;
  v37 = v30;
  *(v7 + 96) = v33;
  *(v7 + 112) = v13;
  *(v7 + 32) = v17;
  *(v7 + 48) = v16;
  *(v7 + 64) = v15;
  *(v7 + 80) = v14;
  *(v7 + 128) = v42;
  *(v7 + 136) = v9;

  sub_1D7A25744(v22);
  *&v43 = v4;
  *(&v43 + 1) = v6;
  *&v44 = 0x30303030303023;
  *(&v44 + 1) = 0xE700000000000000;
  *v45 = 256;
  *&v45[8] = xmmword_1D7D53750;
  *&v45[24] = xmmword_1D7D53760;
  *&v45[40] = v7;
  v46 = MEMORY[0x1E69E7CC0];
  v47[0] = v4;
  v47[1] = v6;
  v47[2] = 0x30303030303023;
  v47[3] = 0xE700000000000000;
  v48 = 256;
  v49 = xmmword_1D7D53750;
  v50 = xmmword_1D7D53760;
  v51 = v7;
  v52 = MEMORY[0x1E69E7CC0];
  sub_1D7B653B4(&v43, v21);
  sub_1D7BB5C78(v47);
  v18 = *&v45[16];
  *(a1 + 32) = *v45;
  *(a1 + 48) = v18;
  *(a1 + 64) = *&v45[32];
  *(a1 + 80) = v46;
  result = *&v43;
  v20 = v44;
  *a1 = v43;
  *(a1 + 16) = v20;
  return result;
}

double sub_1D7BAFA54@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D7D2811C();
  v6 = v5;

  v18[0] = 0x6575737369;
  v18[1] = 0xE500000000000000;
  v18[2] = v4;
  v18[3] = v6;
  v18[4] = 0x30303030303023;
  v18[5] = 0xE700000000000000;
  v18[6] = 0;
  v19 = 768;
  v20 = &unk_1F529ADB0;
  v21 = 2;
  v22 = 0;
  v23 = 1;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v29 = 1;
  v30 = 0;
  v31 = 1;
  v32 = 0;
  v33 = 1;
  v34 = xmmword_1D7D53750;
  v35 = 2;
  v36 = 0;
  v37 = 0;
  v38 = -1;
  sub_1D7A9F930(0, &unk_1EE0BE9C8, &type metadata for ArticleRecirculationConfigFactory.RealizedRule, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7D3B4D0;
  LOBYTE(v48[0]) = 1;
  LOBYTE(v44) = 1;
  v17[0] = 1;
  LOBYTE(v43[0]) = 1;
  v8 = MEMORY[0x1E69E6F90];
  sub_1D7BB5C14(0, &qword_1EE0BE850, sub_1D79E6DC8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7D3B4D0;
  sub_1D7BB5C14(0, &qword_1EE0BEA30, _s15ArticleProviderOMa, v8);
  v10 = *(_s15ArticleProviderOMa(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7D3B4D0;
  *(v12 + v11) = 9;
  swift_storeEnumTagMultiPayload();
  *(v9 + 32) = v12;
  *(v7 + 32) = &unk_1F529ADE0;
  *(v7 + 40) = 2;
  *(v7 + 41) = v43[0];
  *(v7 + 44) = *(v43 + 3);
  *(v7 + 48) = 0;
  *(v7 + 56) = 1;
  *(v7 + 57) = *v42;
  *(v7 + 60) = *&v42[3];
  v13 = MEMORY[0x1E69E7CC0];
  *(v7 + 64) = MEMORY[0x1E69E7CC0];
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 97) = 1;
  *(v7 + 102) = v41;
  *(v7 + 98) = *&v40[7];
  *(v7 + 104) = 0;
  *(v7 + 112) = 1;
  *(v7 + 113) = *v40;
  *(v7 + 116) = *&v40[3];
  *(v7 + 120) = 0;
  *(v7 + 128) = 1;
  *(v7 + 129) = *v39;
  *(v7 + 132) = *&v39[3];
  *(v7 + 136) = v9;

  sub_1D7A25744(v18);
  *&v44 = v4;
  *(&v44 + 1) = v6;
  *&v45 = 0x30303030303023;
  *(&v45 + 1) = 0xE700000000000000;
  *v46 = 768;
  *&v46[8] = xmmword_1D7D53750;
  *&v46[24] = xmmword_1D7D53760;
  *&v46[40] = v7;
  v47 = v13;
  v48[0] = v4;
  v48[1] = v6;
  v48[2] = 0x30303030303023;
  v48[3] = 0xE700000000000000;
  v49 = 768;
  v50 = xmmword_1D7D53750;
  v51 = xmmword_1D7D53760;
  v52 = v7;
  v53 = v13;
  sub_1D7B653B4(&v44, v17);
  sub_1D7BB5C78(v48);
  v14 = *&v46[16];
  *(a1 + 32) = *v46;
  *(a1 + 48) = v14;
  *(a1 + 64) = *&v46[32];
  *(a1 + 80) = v47;
  result = *&v44;
  v16 = v45;
  *a1 = v44;
  *(a1 + 16) = v16;
  return result;
}

uint64_t sub_1D7BAFED4@<X0>(_OWORD *a1@<X8>)
{
  sub_1D7BAFA54(v13);
  v12[3] = &type metadata for CombinedArticleRecirculationConfig.Section;
  v12[4] = &off_1F52A98F0;
  v2 = swift_allocObject();
  v12[0] = v2;
  v3 = v13[3];
  *(v2 + 48) = v13[2];
  *(v2 + 64) = v3;
  *(v2 + 80) = v13[4];
  *(v2 + 96) = v14;
  v4 = v13[1];
  *(v2 + 16) = v13[0];
  *(v2 + 32) = v4;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[5] = 0u;
  sub_1D7BB5B84(v12, a1);
  sub_1D7BB5B84(v10, a1 + 40);
  sub_1D7BB5B84(v8, (a1 + 5));
  return sub_1D7BB5B84(v6, a1 + 120);
}

uint64_t sub_1D7BAFFC4@<X0>(void (*a1)(_OWORD *__return_ptr)@<X0>, void (*a2)(_OWORD *__return_ptr)@<X1>, _OWORD *a3@<X8>)
{
  a1(v18);
  v17[3] = &type metadata for CombinedArticleRecirculationConfig.Section;
  v17[4] = &off_1F52A98F0;
  v5 = swift_allocObject();
  v17[0] = v5;
  v6 = v18[3];
  *(v5 + 48) = v18[2];
  *(v5 + 64) = v6;
  *(v5 + 80) = v18[4];
  *(v5 + 96) = v19;
  v7 = v18[1];
  *(v5 + 16) = v18[0];
  *(v5 + 32) = v7;
  a2(v20);
  v16[3] = &type metadata for CombinedArticleRecirculationConfig.Section;
  v16[4] = &off_1F52A98F0;
  v8 = swift_allocObject();
  v16[0] = v8;
  v9 = v20[3];
  *(v8 + 48) = v20[2];
  *(v8 + 64) = v9;
  *(v8 + 80) = v20[4];
  *(v8 + 96) = v21;
  v10 = v20[1];
  *(v8 + 16) = v20[0];
  *(v8 + 32) = v10;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[5] = 0u;
  sub_1D7BB5B84(v17, a3);
  sub_1D7BB5B84(v16, a3 + 40);
  sub_1D7BB5B84(v14, (a3 + 5));
  return sub_1D7BB5B84(v12, a3 + 120);
}

double sub_1D7BB010C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  if (*(a1 + 16))
  {
    v6 = v4;
    v7 = a1;
    __dst[0] = MEMORY[0x1E69E7CC8];

    sub_1D7BAE144(v9, __dst);
    v10 = __dst[0];
    memcpy(__dst, v7 + 32, 0x450uLL);
    v11 = *(v7 + 2);
    if (v11)
    {
      sub_1D7BB5DC0(__dst, v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v7;
      if (!isUniquelyReferenced_nonNull_native || (v11 - 1) > *(v7 + 3) >> 1)
      {
        v7 = sub_1D79E53DC(isUniquelyReferenced_nonNull_native, v11, 1, v7);
        v41 = v7;
      }

      sub_1D7BE3848(0, 1, 0);
      sub_1D799CC84(v6 + 16, v42);

      swift_unknownObjectRetain();
      sub_1D7BB057C(__dst, v10);
      v16 = *(v7 + 2);

      swift_unknownObjectRetain();

      if (v16)
      {
        v17 = 32;
        do
        {
          memcpy(v42, &v7[v17], sizeof(v42));
          sub_1D7BB5DC0(v42, &v29);
          sub_1D7BB13A8(v42, v10);
          sub_1D7B6A0C0(v42);
          v17 += 1104;
          --v16;
        }

        while (v16);
      }

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();

      if (qword_1EE0CA130 != -1)
      {
        swift_once();
      }

      v18 = qword_1EE0CA138;
      sub_1D7B28FD8(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D7D3B4D0;
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1D7D315DC();
      v20 = v29;
      v21 = v30;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = sub_1D79D6AE0();
      *(v19 + 32) = v20;
      *(v19 + 40) = v21;
      v22 = sub_1D7D30C6C();
      sub_1D7D29AAC("Finished merging configs with result: %@", 40, 2, &dword_1D7987000, v18, v22, v19);

      a4[3] = &type metadata for CombinedArticleRecirculationConfig;
      a4[4] = &off_1F52A9508;
      v23 = swift_allocObject();
      *a4 = v23;
      v24 = v38;
      v23[7] = v37;
      v23[8] = v24;
      v25 = v40;
      v23[9] = v39;
      v23[10] = v25;
      v26 = v34;
      v23[3] = v33;
      v23[4] = v26;
      v27 = v36;
      v23[5] = v35;
      v23[6] = v27;
      result = *&v31;
      v28 = v32;
      v23[1] = v31;
      v23[2] = v28;
    }

    else
    {
      __break(1u);
      swift_once();
      v13 = qword_1EE0CA138;
      v14 = sub_1D7D30C6C();
      sub_1D7D29AAC("Asked to merge configs where the first config doesn't contain a primary, secondary and inArticle specified section", 114, 2, &dword_1D7987000, v13, v14, MEMORY[0x1E69E7CC0]);

      sub_1D7BAEB98(a2, 0, a4);
    }
  }

  else
  {
    sub_1D7BAEB98(a2, 0, a4);
  }

  return result;
}

void sub_1D7BB057C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v11[5] = 0u;
  v13 = (v11 + 5);
  v11[8] = 0u;
  v11[9] = 0u;
  v11[6] = 0u;
  v11[7] = 0u;
  v11[3] = 0u;
  v11[4] = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  *v11 = 0u;
  memcpy(__dst, (v9 + 8), sizeof(__dst));
  v14 = *(v10 + 184);
  v71[10] = *(v10 + 168);
  v71[11] = v14;
  v71[12] = *(v10 + 200);
  v72 = *(v10 + 216);
  v15 = *(v10 + 120);
  v71[6] = *(v10 + 104);
  v71[7] = v15;
  v16 = *(v10 + 152);
  v71[8] = *(v10 + 136);
  v71[9] = v16;
  v17 = *(v10 + 56);
  v71[2] = *(v10 + 40);
  v71[3] = v17;
  v18 = *(v10 + 88);
  v71[4] = *(v10 + 72);
  v71[5] = v18;
  v19 = *(v10 + 24);
  v71[0] = *(v10 + 8);
  v71[1] = v19;
  v20 = *(v10 + 184);
  v91 = *(v10 + 168);
  v92 = v20;
  v93 = *(v10 + 200);
  v94 = *(v10 + 216);
  v21 = *(v10 + 120);
  v87 = *(v10 + 104);
  v88 = v21;
  v22 = *(v10 + 152);
  v89 = *(v10 + 136);
  v90 = v22;
  v23 = *(v10 + 56);
  v83 = *(v10 + 40);
  v84 = v23;
  v24 = *(v10 + 88);
  v85 = *(v10 + 72);
  v86 = v24;
  v25 = *(v10 + 24);
  v81 = *(v10 + 8);
  v82 = v25;
  if (sub_1D7A25774(&v81) == 1)
  {
    goto LABEL_7;
  }

  v105 = v91;
  v106 = v92;
  v107 = v93;
  v108 = v94;
  v101 = v87;
  v102 = v88;
  v103 = v89;
  v104 = v90;
  v97 = v83;
  v98 = v84;
  v99 = v85;
  v100 = v86;
  v95 = v81;
  v96 = v82;
  if (sub_1D79FC17C(&v95) == 1)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
  }

  else
  {
    v79[10] = v105;
    v79[11] = v106;
    v79[12] = v107;
    v80 = v108;
    v79[6] = v101;
    v79[7] = v102;
    v79[8] = v103;
    v79[9] = v104;
    v79[2] = v97;
    v79[3] = v98;
    v79[4] = v99;
    v79[5] = v100;
    v79[0] = v95;
    v79[1] = v96;
    sub_1D799CC84(v4, v39);
    sub_1D7A2628C(v71, v40);

    swift_unknownObjectRetain();
    sub_1D7BB54F4(v79, v8, v6, v39, v44);
    if (v2)
    {
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
    *(&v42 + 1) = &type metadata for CombinedArticleRecirculationConfig.Section;
    v43 = &off_1F52A98F0;
    v26 = swift_allocObject();
    *&v41 = v26;
    v27 = v44[3];
    *(v26 + 48) = v44[2];
    *(v26 + 64) = v27;
    *(v26 + 80) = v44[4];
    *(v26 + 96) = v45;
    v28 = v44[1];
    *(v26 + 16) = v44[0];
    *(v26 + 32) = v28;
  }

  sub_1D7BB5B84(&v41, v12);
  v69[10] = *&__dst[376];
  v69[11] = *&__dst[392];
  v69[12] = *&__dst[408];
  v69[6] = *&__dst[312];
  v69[7] = *&__dst[328];
  v69[8] = *&__dst[344];
  v69[9] = *&__dst[360];
  v69[2] = *&__dst[248];
  v69[3] = *&__dst[264];
  v69[4] = *&__dst[280];
  v69[5] = *&__dst[296];
  v69[0] = *&__dst[216];
  v69[1] = *&__dst[232];
  v119 = *&__dst[376];
  v120 = *&__dst[392];
  v121 = *&__dst[408];
  v115 = *&__dst[312];
  v116 = *&__dst[328];
  v117 = *&__dst[344];
  v118 = *&__dst[360];
  v111 = *&__dst[248];
  v112 = *&__dst[264];
  v70 = __dst[424];
  v122 = __dst[424];
  v113 = *&__dst[280];
  v114 = *&__dst[296];
  v109 = *&__dst[216];
  v110 = *&__dst[232];
  if (sub_1D7A25774(&v109) == 1)
  {
LABEL_7:

    sub_1D7BB6180();
    swift_allocError();
    swift_willThrow();
    sub_1D7B6A0C0(v10);
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_1D7BB5E1C(v12);
    return;
  }

  v133 = v119;
  v134 = v120;
  v135 = v121;
  v136 = v122;
  v129 = v115;
  v130 = v116;
  v131 = v117;
  v132 = v118;
  v125 = v111;
  v126 = v112;
  v127 = v113;
  v128 = v114;
  v123 = v109;
  v124 = v110;
  if (sub_1D79FC17C(&v123) == 1)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_15;
  }

  v77[10] = v133;
  v77[11] = v134;
  v77[12] = v135;
  v78 = v136;
  v77[6] = v129;
  v77[7] = v130;
  v77[8] = v131;
  v77[9] = v132;
  v77[2] = v125;
  v77[3] = v126;
  v77[4] = v127;
  v77[5] = v128;
  v77[0] = v123;
  v77[1] = v124;
  sub_1D799CC84(v4, v39);

  swift_unknownObjectRetain();
  sub_1D7A2628C(v69, v40);
  sub_1D7BB54F4(v77, v8, v6, v39, v46);
  if (v2)
  {
LABEL_11:
    swift_unknownObjectRelease();
    sub_1D7B6A0C0(v10);

    goto LABEL_12;
  }

  swift_unknownObjectRelease();
  *(&v42 + 1) = &type metadata for CombinedArticleRecirculationConfig.Section;
  v43 = &off_1F52A98F0;
  v29 = swift_allocObject();
  *&v41 = v29;
  v30 = v46[3];
  *(v29 + 48) = v46[2];
  *(v29 + 64) = v30;
  *(v29 + 80) = v46[4];
  *(v29 + 96) = v47;
  v31 = v46[1];
  *(v29 + 16) = v46[0];
  *(v29 + 32) = v31;
LABEL_15:
  sub_1D7BB5B84(&v41, v12 + 40);
  v67[10] = *&__dst[592];
  v67[11] = *&__dst[608];
  v67[12] = *&__dst[624];
  v67[6] = *&__dst[528];
  v67[7] = *&__dst[544];
  v67[8] = *&__dst[560];
  v67[9] = *&__dst[576];
  v67[2] = *&__dst[464];
  v67[3] = *&__dst[480];
  v67[4] = *&__dst[496];
  v67[5] = *&__dst[512];
  v67[0] = *&__dst[432];
  v67[1] = *&__dst[448];
  v147 = *&__dst[592];
  v148 = *&__dst[608];
  v149 = *&__dst[624];
  v143 = *&__dst[528];
  v144 = *&__dst[544];
  v145 = *&__dst[560];
  v146 = *&__dst[576];
  v139 = *&__dst[464];
  v140 = *&__dst[480];
  v141 = *&__dst[496];
  v142 = *&__dst[512];
  v68 = __dst[640];
  v150 = __dst[640];
  v137 = *&__dst[432];
  v138 = *&__dst[448];
  if (sub_1D7BB5E4C(&v137) != 1)
  {
    v161 = v147;
    v162 = v148;
    v163 = v149;
    v164 = v150;
    v157 = v143;
    v158 = v144;
    v159 = v145;
    v160 = v146;
    v153 = v139;
    v154 = v140;
    v155 = v141;
    v156 = v142;
    v151 = v137;
    v152 = v138;
    if (sub_1D7A25774(&v151) == 1)
    {
      sub_1D7B6A0C0(v10);
LABEL_27:

      sub_1D7BB6180();
      swift_allocError();
      swift_willThrow();
      goto LABEL_12;
    }

    v175 = v161;
    v176 = v162;
    v177 = v163;
    v178 = v164;
    v171 = v157;
    v172 = v158;
    v173 = v159;
    v174 = v160;
    v167 = v153;
    v168 = v154;
    v169 = v155;
    v170 = v156;
    v165 = v151;
    v166 = v152;
    if (sub_1D79FC17C(&v165) == 1)
    {
      sub_1D7BB61D4(v67);
      v41 = 0u;
      v42 = 0u;
      v43 = 0;
    }

    else
    {
      v75[10] = v175;
      v75[11] = v176;
      v75[12] = v177;
      v76 = v178;
      v75[6] = v171;
      v75[7] = v172;
      v75[8] = v173;
      v75[9] = v174;
      v75[2] = v167;
      v75[3] = v168;
      v75[4] = v169;
      v75[5] = v170;
      v75[0] = v165;
      v75[1] = v166;
      sub_1D799CC84(v4, v39);
      v32 = MEMORY[0x1E69E6720];
      sub_1D7BB5FAC(v67, v40, &qword_1EE0C5C10, &_s7SectionON, MEMORY[0x1E69E6720], sub_1D7A9F930);

      swift_unknownObjectRetain();
      sub_1D7BB5FAC(v67, v40, &qword_1EE0C5C10, &_s7SectionON, v32, sub_1D7A9F930);
      sub_1D7BB54F4(v75, v8, v6, v39, v48);
      if (v2)
      {
        swift_unknownObjectRelease();
        sub_1D7BB61D4(v67);
        sub_1D7B6A0C0(v10);
        swift_unknownObjectRelease();

        goto LABEL_13;
      }

      swift_unknownObjectRelease();
      *(&v42 + 1) = &type metadata for CombinedArticleRecirculationConfig.Section;
      v43 = &off_1F52A98F0;
      v33 = swift_allocObject();
      *&v41 = v33;
      sub_1D7BB61D4(v67);
      v34 = v48[3];
      *(v33 + 48) = v48[2];
      *(v33 + 64) = v34;
      *(v33 + 80) = v48[4];
      *(v33 + 96) = v49;
      v35 = v48[1];
      *(v33 + 16) = v48[0];
      *(v33 + 32) = v35;
    }

    sub_1D7BB5B84(&v41, v13);
  }

  v66 = __dst[856];
  v63 = *&__dst[808];
  v64 = *&__dst[824];
  v65 = *&__dst[840];
  v59 = *&__dst[744];
  v60 = *&__dst[760];
  v61 = *&__dst[776];
  v62 = *&__dst[792];
  v55 = *&__dst[680];
  v56 = *&__dst[696];
  v57 = *&__dst[712];
  v58 = *&__dst[728];
  v53 = *&__dst[648];
  v54 = *&__dst[664];
  sub_1D7BB5FAC(&v53, v40, &qword_1EE0C5C10, &_s7SectionON, MEMORY[0x1E69E6720], sub_1D7A9F930);
  sub_1D7B6A0C0(v10);
  v189 = v63;
  v190 = v64;
  v191 = v65;
  v192 = v66;
  v185 = v59;
  v186 = v60;
  v187 = v61;
  v188 = v62;
  v181 = v55;
  v182 = v56;
  v183 = v57;
  v184 = v58;
  v179 = v53;
  v180 = v54;
  if (sub_1D7BB5E4C(&v179) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);

    swift_unknownObjectRelease();
  }

  else
  {
    v203 = v189;
    v204 = v190;
    v205 = v191;
    v206 = v192;
    v199 = v185;
    v200 = v186;
    v201 = v187;
    v202 = v188;
    v195 = v181;
    v196 = v182;
    v197 = v183;
    v198 = v184;
    v193 = v179;
    v194 = v180;
    if (sub_1D7A25774(&v193) == 1)
    {
      goto LABEL_27;
    }

    v217 = v203;
    v218 = v204;
    v219 = v205;
    v220 = v206;
    v213 = v199;
    v214 = v200;
    v215 = v201;
    v216 = v202;
    v209 = v195;
    v210 = v196;
    v211 = v197;
    v212 = v198;
    v207 = v193;
    v208 = v194;
    if (sub_1D79FC17C(&v207) == 1)
    {
      sub_1D7BB61D4(&v53);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v4);
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
    }

    else
    {
      v73[10] = v217;
      v73[11] = v218;
      v73[12] = v219;
      v74 = v220;
      v73[6] = v213;
      v73[7] = v214;
      v73[8] = v215;
      v73[9] = v216;
      v73[2] = v209;
      v73[3] = v210;
      v73[4] = v211;
      v73[5] = v212;
      v73[0] = v207;
      v73[1] = v208;
      sub_1D799CC84(v4, v39);
      swift_unknownObjectRetain();
      sub_1D7BB5FAC(&v53, v40, &qword_1EE0C5C10, &_s7SectionON, MEMORY[0x1E69E6720], sub_1D7A9F930);
      sub_1D7BB54F4(v73, v8, v6, v39, v50);
      if (v2)
      {
        swift_unknownObjectRelease();
        sub_1D7BB61D4(&v53);
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
      *(&v42 + 1) = &type metadata for CombinedArticleRecirculationConfig.Section;
      v43 = &off_1F52A98F0;
      v36 = swift_allocObject();
      *&v41 = v36;
      sub_1D7BB61D4(&v53);
      swift_unknownObjectRelease();
      v37 = v50[3];
      *(v36 + 48) = v50[2];
      *(v36 + 64) = v37;
      *(v36 + 80) = v50[4];
      *(v36 + 96) = v51;
      v38 = v50[1];
      *(v36 + 16) = v50[0];
      *(v36 + 32) = v38;
      __swift_destroy_boxed_opaque_existential_1(v4);
    }

    sub_1D7BB5B84(&v41, v12 + 120);
  }
}

void sub_1D7BB13A8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memcpy(__dst, (v10 + 8), sizeof(__dst));
  v12 = *(v11 + 184);
  v207 = *(v11 + 168);
  v208 = v12;
  v209 = *(v11 + 200);
  v210 = *(v11 + 216);
  v13 = *(v11 + 120);
  v203 = *(v11 + 104);
  v204 = v13;
  v14 = *(v11 + 152);
  v205 = *(v11 + 136);
  v206 = v14;
  v15 = *(v11 + 56);
  v199 = *(v11 + 40);
  v200 = v15;
  v16 = *(v11 + 88);
  v201 = *(v11 + 72);
  v202 = v16;
  v17 = *(v11 + 24);
  v197 = *(v11 + 8);
  v198 = v17;
  v18 = *(v11 + 184);
  v221 = *(v11 + 168);
  v222 = v18;
  v223 = *(v11 + 200);
  v224 = *(v11 + 216);
  v19 = *(v11 + 120);
  v217 = *(v11 + 104);
  v218 = v19;
  v20 = *(v11 + 152);
  v219 = *(v11 + 136);
  v220 = v20;
  v21 = *(v11 + 56);
  v213 = *(v11 + 40);
  v214 = v21;
  v22 = *(v11 + 88);
  v215 = *(v11 + 72);
  v216 = v22;
  v23 = *(v11 + 24);
  v211 = *(v11 + 8);
  v212 = v23;
  if (sub_1D7A25774(&v211) == 1)
  {
    sub_1D7BB5CA8(v2, &v137);
    goto LABEL_5;
  }

  v133 = v221;
  v134 = v222;
  v135 = v223;
  v136 = v224;
  v129 = v217;
  v130 = v218;
  v131 = v219;
  v132 = v220;
  v125 = v213;
  v126 = v214;
  v127 = v215;
  v128 = v216;
  v123 = v211;
  v124 = v212;
  if (sub_1D79FC17C(&v123) == 1)
  {
    goto LABEL_4;
  }

  v165[10] = v133;
  v165[11] = v134;
  v165[12] = v135;
  v166 = v136;
  v165[6] = v129;
  v165[7] = v130;
  v165[8] = v131;
  v165[9] = v132;
  v165[2] = v125;
  v165[3] = v126;
  v165[4] = v127;
  v165[5] = v128;
  v165[0] = v123;
  v165[1] = v124;
  sub_1D7BB5CA8(v2, &v64);
  if (*(&v65 + 1))
  {
    sub_1D79E14FC(&v64, &v81);
    sub_1D799CC84(&v81, &v109);
    v24 = *(&v110 + 1);
    v25 = v111;
    __swift_mutable_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
    (*(v25 + 64))(v165, v9, v7, v5, v24, v25);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_1(&v81);
      v26 = &v109;
LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v26);
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(&v81);
    sub_1D799CC84(&v109, &v137);
    __swift_destroy_boxed_opaque_existential_1(&v109);
  }

  else
  {
    sub_1D7BB5D38(&v64);
    v119 = v207;
    v120 = v208;
    v121 = v209;
    v122 = v210;
    v115 = v203;
    v116 = v204;
    v117 = v205;
    v118 = v206;
    v111 = v199;
    v112 = v200;
    v113 = v201;
    v114 = v202;
    v109 = v197;
    v110 = v198;
    if (sub_1D79FC17C(&v109) == 1)
    {
LABEL_4:
      v139 = 0;
      v138 = 0u;
      v137 = 0u;
      goto LABEL_5;
    }

    v167[10] = v119;
    v167[11] = v120;
    v167[12] = v121;
    v168 = v122;
    v167[6] = v115;
    v167[7] = v116;
    v167[8] = v117;
    v167[9] = v118;
    v167[2] = v111;
    v167[3] = v112;
    v167[4] = v113;
    v167[5] = v114;
    v167[0] = v109;
    v167[1] = v110;
    sub_1D799CC84(v5, &v47);
    sub_1D7A2628C(&v197, &v95);

    swift_unknownObjectRetain();
    sub_1D7BB54F4(v167, v9, v7, &v47, v140);
    if (v3)
    {
      goto LABEL_47;
    }

    swift_unknownObjectRelease();
    *(&v138 + 1) = &type metadata for CombinedArticleRecirculationConfig.Section;
    v139 = &off_1F52A98F0;
    v31 = swift_allocObject();
    *&v137 = v31;
    v32 = v140[3];
    *(v31 + 48) = v140[2];
    *(v31 + 64) = v32;
    *(v31 + 80) = v140[4];
    *(v31 + 96) = v141;
    v33 = v140[1];
    *(v31 + 16) = v140[0];
    *(v31 + 32) = v33;
  }

LABEL_5:
  sub_1D7BB5B84(&v137, v2);
  v119 = *&__dst[376];
  v120 = *&__dst[392];
  v121 = *&__dst[408];
  v115 = *&__dst[312];
  v116 = *&__dst[328];
  v117 = *&__dst[344];
  v118 = *&__dst[360];
  v111 = *&__dst[248];
  v112 = *&__dst[264];
  v113 = *&__dst[280];
  v114 = *&__dst[296];
  v109 = *&__dst[216];
  v110 = *&__dst[232];
  v133 = *&__dst[376];
  v134 = *&__dst[392];
  v135 = *&__dst[408];
  v129 = *&__dst[312];
  v130 = *&__dst[328];
  v131 = *&__dst[344];
  v132 = *&__dst[360];
  v125 = *&__dst[248];
  v126 = *&__dst[264];
  v122 = __dst[424];
  v136 = __dst[424];
  v127 = *&__dst[280];
  v128 = *&__dst[296];
  v123 = *&__dst[216];
  v124 = *&__dst[232];
  if (sub_1D7A25774(&v123) == 1)
  {
    sub_1D7BB5CA8(v2 + 40, &v47);
    goto LABEL_9;
  }

  v105 = v133;
  v106 = v134;
  v107 = v135;
  v108 = v136;
  v101 = v129;
  v102 = v130;
  v103 = v131;
  v104 = v132;
  v97 = v125;
  v98 = v126;
  v99 = v127;
  v100 = v128;
  v95 = v123;
  v96 = v124;
  if (sub_1D79FC17C(&v95) == 1)
  {
    goto LABEL_8;
  }

  v161[10] = v105;
  v161[11] = v106;
  v161[12] = v107;
  v162 = v108;
  v161[6] = v101;
  v161[7] = v102;
  v161[8] = v103;
  v161[9] = v104;
  v161[2] = v97;
  v161[3] = v98;
  v161[4] = v99;
  v161[5] = v100;
  v161[0] = v95;
  v161[1] = v96;
  sub_1D7BB5CA8(v2 + 40, &v78);
  if (*(&v79 + 1))
  {
    sub_1D79E14FC(&v78, v45);
    sub_1D799CC84(v45, &v81);
    v27 = *(&v82 + 1);
    v28 = v83;
    __swift_mutable_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
    (*(v28 + 64))(v161, v9, v7, v5, v27, v28);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_1(v45);
      v26 = &v81;
      goto LABEL_36;
    }

    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_1D799CC84(&v81, &v47);
    __swift_destroy_boxed_opaque_existential_1(&v81);
  }

  else
  {
    sub_1D7BB5D38(&v78);
    v91 = v119;
    v92 = v120;
    v93 = v121;
    v94 = v122;
    v87 = v115;
    v88 = v116;
    v89 = v117;
    v90 = v118;
    v83 = v111;
    v84 = v112;
    v85 = v113;
    v86 = v114;
    v81 = v109;
    v82 = v110;
    if (sub_1D79FC17C(&v81) == 1)
    {
LABEL_8:
      *&v49 = 0;
      v47 = 0u;
      v48 = 0u;
      goto LABEL_9;
    }

    v163[10] = v91;
    v163[11] = v92;
    v163[12] = v93;
    v164 = v94;
    v163[6] = v87;
    v163[7] = v88;
    v163[8] = v89;
    v163[9] = v90;
    v163[2] = v83;
    v163[3] = v84;
    v163[4] = v85;
    v163[5] = v86;
    v163[0] = v81;
    v163[1] = v82;
    sub_1D799CC84(v5, v63);

    swift_unknownObjectRetain();
    sub_1D7A2628C(&v109, &v64);
    sub_1D7BB54F4(v163, v9, v7, v63, v142);
    if (v3)
    {
      goto LABEL_47;
    }

    swift_unknownObjectRelease();
    *(&v48 + 1) = &type metadata for CombinedArticleRecirculationConfig.Section;
    *&v49 = &off_1F52A98F0;
    v36 = swift_allocObject();
    *&v47 = v36;
    v37 = v142[3];
    *(v36 + 48) = v142[2];
    *(v36 + 64) = v37;
    *(v36 + 80) = v142[4];
    *(v36 + 96) = v143;
    v38 = v142[1];
    *(v36 + 16) = v142[0];
    *(v36 + 32) = v38;
  }

LABEL_9:
  sub_1D7BB5B84(&v47, v2 + 40);
  v151[10] = *&__dst[592];
  v151[11] = *&__dst[608];
  v151[12] = *&__dst[624];
  v151[6] = *&__dst[528];
  v151[7] = *&__dst[544];
  v151[8] = *&__dst[560];
  v151[9] = *&__dst[576];
  v151[2] = *&__dst[464];
  v151[3] = *&__dst[480];
  v151[4] = *&__dst[496];
  v151[5] = *&__dst[512];
  v151[0] = *&__dst[432];
  v151[1] = *&__dst[448];
  v179 = *&__dst[592];
  v180 = *&__dst[608];
  v181 = *&__dst[624];
  v175 = *&__dst[528];
  v176 = *&__dst[544];
  v177 = *&__dst[560];
  v178 = *&__dst[576];
  v171 = *&__dst[464];
  v172 = *&__dst[480];
  v173 = *&__dst[496];
  v174 = *&__dst[512];
  v152 = __dst[640];
  v182 = __dst[640];
  v169 = *&__dst[432];
  v170 = *&__dst[448];
  if (sub_1D7BB5E4C(&v169) != 1)
  {
    v91 = v179;
    v92 = v180;
    v93 = v181;
    v87 = v175;
    v88 = v176;
    v89 = v177;
    v90 = v178;
    v83 = v171;
    v84 = v172;
    v85 = v173;
    v86 = v174;
    v81 = v169;
    v82 = v170;
    v105 = v179;
    v106 = v180;
    v107 = v181;
    v101 = v175;
    v102 = v176;
    v103 = v177;
    v104 = v178;
    v97 = v171;
    v98 = v172;
    v99 = v173;
    v100 = v174;
    v94 = v182;
    v108 = v182;
    v95 = v169;
    v96 = v170;
    if (sub_1D7A25774(&v95) == 1)
    {
      sub_1D7BB5CA8(v2 + 80, &v78);
    }

    else
    {
      v74 = v105;
      v75 = v106;
      v76 = v107;
      v77 = v108;
      v70 = v101;
      v71 = v102;
      v72 = v103;
      v73 = v104;
      v66 = v97;
      v67 = v98;
      v68 = v99;
      v69 = v100;
      v64 = v95;
      v65 = v96;
      if (sub_1D79FC17C(&v64) != 1)
      {
        v157[10] = v74;
        v157[11] = v75;
        v157[12] = v76;
        v158 = v77;
        v157[6] = v70;
        v157[7] = v71;
        v157[8] = v72;
        v157[9] = v73;
        v157[2] = v66;
        v157[3] = v67;
        v157[4] = v68;
        v157[5] = v69;
        v157[0] = v64;
        v157[1] = v65;
        sub_1D7BB5CA8(v2 + 80, &v61);
        if (v62)
        {
          sub_1D79E14FC(&v61, v63);
          sub_1D799CC84(v63, &v47);
          v29 = *(&v48 + 1);
          v30 = v49;
          __swift_mutable_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
          (*(v30 + 64))(v157, v9, v7, v5, v29, v30);
          if (v3)
          {
LABEL_35:
            __swift_destroy_boxed_opaque_existential_1(v63);
            v26 = &v47;
            goto LABEL_36;
          }

          __swift_destroy_boxed_opaque_existential_1(v63);
          sub_1D799CC84(&v47, &v78);
          __swift_destroy_boxed_opaque_existential_1(&v47);
          goto LABEL_20;
        }

        sub_1D7BB5D38(&v61);
        v57 = v91;
        v58 = v92;
        v59 = v93;
        v60 = v94;
        v53 = v87;
        v54 = v88;
        v55 = v89;
        v56 = v90;
        v49 = v83;
        v50 = v84;
        v51 = v85;
        v52 = v86;
        v47 = v81;
        v48 = v82;
        if (sub_1D79FC17C(&v47) != 1)
        {
          v159[10] = v57;
          v159[11] = v58;
          v159[12] = v59;
          v160 = v60;
          v159[6] = v53;
          v159[7] = v54;
          v159[8] = v55;
          v159[9] = v56;
          v159[2] = v49;
          v159[3] = v50;
          v159[4] = v51;
          v159[5] = v52;
          v159[0] = v47;
          v159[1] = v48;
          sub_1D799CC84(v5, v46);

          swift_unknownObjectRetain();
          sub_1D7BB5FAC(v151, v45, &qword_1EE0C5C10, &_s7SectionON, MEMORY[0x1E69E6720], sub_1D7A9F930);
          sub_1D7BB54F4(v159, v9, v7, v46, v144);
          if (v3)
          {
            goto LABEL_47;
          }

          swift_unknownObjectRelease();
          *(&v79 + 1) = &type metadata for CombinedArticleRecirculationConfig.Section;
          v80 = &off_1F52A98F0;
          v39 = swift_allocObject();
          *&v78 = v39;
          v40 = v144[3];
          *(v39 + 48) = v144[2];
          *(v39 + 64) = v40;
          *(v39 + 80) = v144[4];
          *(v39 + 96) = v145;
          v41 = v144[1];
          *(v39 + 16) = v144[0];
          *(v39 + 32) = v41;
          goto LABEL_20;
        }
      }

      v80 = 0;
      v78 = 0u;
      v79 = 0u;
    }

LABEL_20:
    sub_1D7BB5B84(&v78, v2 + 80);
  }

  v149[10] = *&__dst[808];
  v149[11] = *&__dst[824];
  v149[12] = *&__dst[840];
  v149[6] = *&__dst[744];
  v149[7] = *&__dst[760];
  v149[8] = *&__dst[776];
  v149[9] = *&__dst[792];
  v149[2] = *&__dst[680];
  v149[3] = *&__dst[696];
  v149[4] = *&__dst[712];
  v149[5] = *&__dst[728];
  v149[0] = *&__dst[648];
  v149[1] = *&__dst[664];
  v193 = *&__dst[808];
  v194 = *&__dst[824];
  v195 = *&__dst[840];
  v189 = *&__dst[744];
  v190 = *&__dst[760];
  v191 = *&__dst[776];
  v192 = *&__dst[792];
  v185 = *&__dst[680];
  v186 = *&__dst[696];
  v187 = *&__dst[712];
  v188 = *&__dst[728];
  v150 = __dst[856];
  v196 = __dst[856];
  v183 = *&__dst[648];
  v184 = *&__dst[664];
  if (sub_1D7BB5E4C(&v183) == 1)
  {
    return;
  }

  v91 = v193;
  v92 = v194;
  v93 = v195;
  v87 = v189;
  v88 = v190;
  v89 = v191;
  v90 = v192;
  v83 = v185;
  v84 = v186;
  v85 = v187;
  v86 = v188;
  v81 = v183;
  v82 = v184;
  v105 = v193;
  v106 = v194;
  v107 = v195;
  v101 = v189;
  v102 = v190;
  v103 = v191;
  v104 = v192;
  v97 = v185;
  v98 = v186;
  v99 = v187;
  v100 = v188;
  v94 = v196;
  v108 = v196;
  v95 = v183;
  v96 = v184;
  if (sub_1D7A25774(&v95) == 1)
  {
    sub_1D7BB5CA8(v2 + 120, &v78);
LABEL_26:
    sub_1D7BB5B84(&v78, v2 + 120);
    return;
  }

  v74 = v105;
  v75 = v106;
  v76 = v107;
  v77 = v108;
  v70 = v101;
  v71 = v102;
  v72 = v103;
  v73 = v104;
  v66 = v97;
  v67 = v98;
  v68 = v99;
  v69 = v100;
  v64 = v95;
  v65 = v96;
  if (sub_1D79FC17C(&v64) == 1)
  {
LABEL_25:
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    goto LABEL_26;
  }

  v153[10] = v74;
  v153[11] = v75;
  v153[12] = v76;
  v154 = v77;
  v153[6] = v70;
  v153[7] = v71;
  v153[8] = v72;
  v153[9] = v73;
  v153[2] = v66;
  v153[3] = v67;
  v153[4] = v68;
  v153[5] = v69;
  v153[0] = v64;
  v153[1] = v65;
  sub_1D7BB5CA8(v2 + 120, &v61);
  if (v62)
  {
    sub_1D79E14FC(&v61, v63);
    sub_1D799CC84(v63, &v47);
    v34 = *(&v48 + 1);
    v35 = v49;
    __swift_mutable_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
    (*(v35 + 64))(v153, v9, v7, v5, v34, v35);
    if (!v3)
    {
      __swift_destroy_boxed_opaque_existential_1(v63);
      sub_1D799CC84(&v47, &v78);
      __swift_destroy_boxed_opaque_existential_1(&v47);
      goto LABEL_26;
    }

    goto LABEL_35;
  }

  sub_1D7BB5D38(&v61);
  v57 = v91;
  v58 = v92;
  v59 = v93;
  v60 = v94;
  v53 = v87;
  v54 = v88;
  v55 = v89;
  v56 = v90;
  v49 = v83;
  v50 = v84;
  v51 = v85;
  v52 = v86;
  v47 = v81;
  v48 = v82;
  if (sub_1D79FC17C(&v47) == 1)
  {
    goto LABEL_25;
  }

  v155[10] = v57;
  v155[11] = v58;
  v155[12] = v59;
  v156 = v60;
  v155[6] = v53;
  v155[7] = v54;
  v155[8] = v55;
  v155[9] = v56;
  v155[2] = v49;
  v155[3] = v50;
  v155[4] = v51;
  v155[5] = v52;
  v155[0] = v47;
  v155[1] = v48;
  sub_1D799CC84(v5, v46);

  swift_unknownObjectRetain();
  sub_1D7BB5FAC(v149, v45, &qword_1EE0C5C10, &_s7SectionON, MEMORY[0x1E69E6720], sub_1D7A9F930);
  sub_1D7BB54F4(v155, v9, v7, v46, v146);
  if (!v3)
  {
    swift_unknownObjectRelease();
    *(&v79 + 1) = &type metadata for CombinedArticleRecirculationConfig.Section;
    v80 = &off_1F52A98F0;
    v42 = swift_allocObject();
    *&v78 = v42;
    v43 = v146[3];
    *(v42 + 48) = v146[2];
    *(v42 + 64) = v43;
    *(v42 + 80) = v146[4];
    *(v42 + 96) = v147;
    v44 = v146[1];
    *(v42 + 16) = v146[0];
    *(v42 + 32) = v44;
    goto LABEL_26;
  }

LABEL_47:
  swift_unknownObjectRelease();
}

uint64_t sub_1D7BB2668()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7BB26A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v6 = *a1;
  v49 = a1[1];
  v54 = v6;
  v7 = a1[2];
  v48 = a1[3];
  v47 = v7;
  v8 = a1[4];
  v46 = a1[5];
  v45 = v8;
  v44 = a1;
  v50 = *(a1 + 96);
  v9 = _s15ArticleProviderOMa(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v19 = &v43 - v18;
  v20 = *(v54 + 16);
  if (v20)
  {
    v21 = (v54 + 40);
    v22 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(a2 + 16))
      {
        v23 = *(v21 - 1);
        v24 = *v21;

        v25 = sub_1D7A18FFC(v23, v24);
        if (v26)
        {
          v27 = *(v10 + 72);
          sub_1D7B7ED74(*(a2 + 56) + v27 * v25, v13);

          sub_1D7B7EDF4(v13, v19);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1D79E5668(0, v22[2] + 1, 1, v22);
          }

          v29 = v22[2];
          v28 = v22[3];
          if (v29 >= v28 >> 1)
          {
            v22 = sub_1D79E5668((v28 > 1), v29 + 1, 1, v22);
          }

          v22[2] = v29 + 1;
          v16 = sub_1D7B7EDF4(v19, v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v29 * v27);
        }

        else
        {
        }
      }

      v21 += 2;
      --v20;
    }

    while (v20);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v16, v17);
  v31 = v51;
  v30 = v52;
  *(&v43 - 4) = a2;
  *(&v43 - 3) = v31;
  *(&v43 - 2) = v30;
  v32 = sub_1D7A9CF34(sub_1D7BB6080, (&v43 - 6), v22);

  v55[0] = v32;
  sub_1D7BB5C14(0, &qword_1EE0BF230, sub_1D79E6DC8, MEMORY[0x1E69E62F8]);
  sub_1D7BB60A0();
  sub_1D7BB6128();
  v33 = sub_1D7D30A1C();

  if (*(v33 + 16))
  {
    result = sub_1D7B81054(v44, v55);
    v35 = v50;
    v36 = v54;
    v37 = v49;
    v38 = v48;
    v39 = v47;
    v40 = v46;
    v41 = v45;
  }

  else
  {

    v35 = 0;
    v33 = 0;
    v36 = 0uLL;
    v37 = 0uLL;
    v39 = 0uLL;
    v38 = 0uLL;
    v41 = 0uLL;
    v40 = 0uLL;
  }

  v42 = v53;
  *v53 = v36;
  v42[1] = v37;
  v42[2] = v39;
  v42[3] = v38;
  v42[4] = v41;
  v42[5] = v40;
  *(v42 + 12) = v35;
  *(v42 + 13) = v33;
  return result;
}

void sub_1D7BB2A24(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = sub_1D7D2EEAC();
  v13 = *(v12 - 8);
  v103 = v12;
  *&v104 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v102 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s15ArticleProviderOMa(0);
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16, v18);
  v97 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v101 = v89 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v89 - v25;
  sub_1D7B7ED74(a1, v89 - v25);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D7BB6420(v26, _s15ArticleProviderOMa);
    goto LABEL_14;
  }

  if (*v26 != 12)
  {
LABEL_14:
    sub_1D7BB5C14(0, &qword_1EE0BEA30, _s15ArticleProviderOMa, MEMORY[0x1E69E6F90]);
    v56 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7D3B4D0;
    sub_1D7B7ED74(a1, v17 + v56);
    goto LABEL_15;
  }

  v95 = a2;
  if (qword_1EE0CA130 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v27 = qword_1EE0CA138;
    v28 = sub_1D7D30C6C();
    v29 = sub_1D7D29AAC("Querying topic provider", 23, 2, &dword_1D7987000, v27, v28, MEMORY[0x1E69E7CC0]);
    if (!v95[2])
    {
      v57 = sub_1D7D30C6C();
      sub_1D7D29AAC("No article providers found to convert", 37, 2, &dword_1D7987000, v27, v57, MEMORY[0x1E69E7CC0]);
LABEL_18:
      v17 = 0;
      goto LABEL_15;
    }

    v30 = [a3 topicIDs];
    if (!v30)
    {
      sub_1D7B28FD8(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D7D3B4D0;
      v105 = 0;
      v106 = 0xE000000000000000;
      v107 = a3;
      sub_1D799621C();
      sub_1D7D315DC();
      v59 = v105;
      v60 = v106;
      *(v58 + 56) = MEMORY[0x1E69E6158];
      *(v58 + 64) = sub_1D79D6AE0();
      *(v58 + 32) = v59;
      *(v58 + 40) = v60;
      v61 = sub_1D7D30C6C();
      sub_1D7D29AAC("No topic IDs found on headline=%@,", 34, 2, &dword_1D7987000, v27, v61, v58);

      goto LABEL_18;
    }

    v96 = v17;
    v94 = v27;
    v31 = MEMORY[0x1E69E6158];
    v32 = v30;
    v100 = sub_1D7D3063C();

    sub_1D7B28FD8(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v89[1] = v33;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7D3B4E0;
    v105 = 0;
    v106 = 0xE000000000000000;
    v107 = a3;
    sub_1D799621C();
    sub_1D7D315DC();
    v35 = v105;
    v36 = v106;
    *(v34 + 56) = v31;
    v37 = sub_1D79D6AE0();
    *(v34 + 64) = v37;
    *(v34 + 32) = v35;
    *(v34 + 40) = v36;
    v38 = MEMORY[0x1DA70E0B0](v100, v31);
    *(v34 + 96) = v31;
    *(v34 + 104) = v37;
    v39 = v94;
    v93 = v37;
    *(v34 + 72) = v38;
    *(v34 + 80) = v40;
    v41 = sub_1D7D30C6C();
    sub_1D7D29AAC("Found topic IDs on headline=%@, topicIDs=%@", 43, 2, &dword_1D7987000, v39, v41, v34);

    __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v42 = sub_1D7D2E9DC();

    v105 = v42;

    sub_1D7BAE828(&v105);
    v43 = v6;
    if (v6)
    {
      goto LABEL_44;
    }

    v90 = v16;
    v92 = a5;

    v44 = v105;
    v45 = *(v105 + 16);
    v91 = 0;
    if (v45)
    {
      v107 = MEMORY[0x1E69E7CC0];
      sub_1D7A5BDC8(0, v45, 0);
      a3 = v107;
      v46 = *(v104 + 16);
      v47 = *(v104 + 80);
      v89[0] = v44;
      v48 = v44 + ((v47 + 32) & ~v47);
      v99 = *(v104 + 72);
      v100 = v46;
      *&v104 = v104 + 16;
      v98 = (v104 - 8);
      do
      {
        v6 = v102;
        v49 = v103;
        v100(v102, v48, v103);
        v105 = 6254708;
        v106 = 0xE300000000000000;
        v50 = sub_1D7D2EE9C();
        MEMORY[0x1DA70DE90](v50);

        v52 = v105;
        v51 = v106;
        (*v98)(v6, v49);
        v107 = a3;
        v54 = a3[2];
        v53 = a3[3];
        a5 = (v54 + 1);
        if (v54 >= v53 >> 1)
        {
          sub_1D7A5BDC8((v53 > 1), v54 + 1, 1);
          a3 = v107;
        }

        a3[2] = a5;
        v55 = &a3[2 * v54];
        v55[4] = v52;
        v55[5] = v51;
        v48 += v99;
        --v45;
      }

      while (v45);
    }

    else
    {

      a3 = MEMORY[0x1E69E7CC0];
    }

    v62 = a3[2];
    a4 = v95;
    if (!v62)
    {
      break;
    }

    v63 = 0;
    v16 = a3 + 5;
    v17 = MEMORY[0x1E69E7CC0];
    while (v63 < a3[2])
    {
      if (a4[2])
      {
        v64 = *(v16 - 1);
        v6 = *v16;

        v65 = sub_1D7A18FFC(v64, v6);
        if (v66)
        {
          v67 = a4[7];
          v68 = v97;
          v69 = *(v96 + 72);
          sub_1D7B7ED74(v67 + v69 * v65, v97);

          sub_1D7B7EDF4(v68, v101);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1D79E5668(0, *(v17 + 16) + 1, 1, v17);
          }

          v6 = *(v17 + 16);
          v70 = *(v17 + 24);
          if (v6 >= v70 >> 1)
          {
            v17 = sub_1D79E5668((v70 > 1), v6 + 1, 1, v17);
          }

          *(v17 + 16) = v6 + 1;
          sub_1D7B7EDF4(v101, v17 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + v6 * v69);
          a4 = v95;
        }

        else
        {
        }
      }

      ++v63;
      v16 += 2;
      if (v62 == v63)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_33:

  v43 = *(v17 + 16);
  if (!v43)
  {

    v88 = sub_1D7D30C6C();
    sub_1D7D29AAC("No scored article providers found to query", 42, 2, &dword_1D7987000, v94, v88, MEMORY[0x1E69E7CC0]);
    v17 = 0;
    a5 = v92;
    goto LABEL_15;
  }

  v71 = swift_allocObject();
  v104 = xmmword_1D7D3B4D0;
  *(v71 + 16) = xmmword_1D7D3B4D0;
  v72 = v90;
  v73 = MEMORY[0x1DA70E0B0](v17, v90);
  v74 = MEMORY[0x1E69E6158];
  v75 = v93;
  *(v71 + 56) = MEMORY[0x1E69E6158];
  *(v71 + 64) = v75;
  *(v71 + 32) = v73;
  *(v71 + 40) = v76;
  v77 = sub_1D7D30C6C();
  v78 = v94;
  sub_1D7D29AAC("Scored and sorted article providers, providers=%@", 49, 2, &dword_1D7987000, v94, v77, v71);

  v79 = 5;
  if (v43 < 5)
  {
    v79 = v43;
  }

  v80 = *(v17 + 16);
  a5 = v92;
  if (v80 < v79)
  {
    __break(1u);
LABEL_44:

    __break(1u);
  }

  else
  {
    if (v80 != v79)
    {
      sub_1D7B0FF78(v17, v17 + ((*(v96 + 80) + 32) & ~*(v96 + 80)), 0, (2 * v79) | 1);
      v82 = v81;

      v17 = v82;
    }

    v83 = swift_allocObject();
    *(v83 + 16) = v104;
    v84 = MEMORY[0x1DA70E0B0](v17, v72);
    v85 = v93;
    *(v83 + 56) = v74;
    *(v83 + 64) = v85;
    *(v83 + 32) = v84;
    *(v83 + 40) = v86;
    v87 = sub_1D7D30C6C();
    sub_1D7D29AAC("Returning trimmed providers=%@", 30, 2, &dword_1D7987000, v78, v87, v83);

LABEL_15:
    *a5 = v17;
  }
}

uint64_t sub_1D7BB33B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = *result;
  v6 = *(*result + 16);
  if (v6)
  {
    v10 = 0;
    v11 = v5 + 32;
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      v13 = v11 + 104 * v10;
      v14 = v10;
      while (1)
      {
        if (v14 >= *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        v15 = *v13;
        v16 = *(v13 + 32);
        v45[1] = *(v13 + 16);
        v45[2] = v16;
        v45[0] = v15;
        v17 = *(v13 + 48);
        v18 = *(v13 + 64);
        v19 = *(v13 + 80);
        v46 = *(v13 + 96);
        v45[4] = v18;
        v45[5] = v19;
        v45[3] = v17;
        v10 = v14 + 1;
        sub_1D7B81054(v45, &v30);
        sub_1D7BB26A0(v45, a2, a3, a4, v44);
        v41 = v44[4];
        v42 = v44[5];
        v43 = v44[6];
        v37 = v44[0];
        v38 = v44[1];
        v39 = v44[2];
        v40 = v44[3];
        result = sub_1D7BB5E70(v45);
        if (*&v44[0])
        {
          break;
        }

        v13 += 104;
        ++v14;
        if (v6 == v10)
        {
          goto LABEL_15;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D79E529C(0, *(v12 + 16) + 1, 1, v12);
        v12 = result;
      }

      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        result = sub_1D79E529C((v20 > 1), v21 + 1, 1, v12);
        v22 = v21 + 1;
        v12 = result;
      }

      v34 = v41;
      v35 = v42;
      v36 = v43;
      v32 = v39;
      v33 = v40;
      v23 = v37;
      v30 = v37;
      v31 = v38;
      *(v12 + 16) = v22;
      v24 = (v12 + 112 * v21);
      v25 = v32;
      v24[3] = v31;
      v24[4] = v25;
      v26 = v33;
      v27 = v34;
      v28 = v36;
      v24[7] = v35;
      v24[8] = v28;
      v24[5] = v26;
      v24[6] = v27;
      v24[2] = v23;
      v11 = v5 + 32;
    }

    while (v6 - 1 != v14);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  *a5 = v12;
  return result;
}

uint64_t sub_1D7BB35BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = result;
  v10 = *(v4 + 72);
  *&v59 = MEMORY[0x1E69E7CC0];
  v11 = *(result + 144);
  v74[4] = *(result + 128);
  v74[5] = v11;
  v75 = *(result + 160);
  v12 = *(result + 80);
  v74[0] = *(result + 64);
  v74[1] = v12;
  v13 = *(result + 112);
  v74[2] = *(result + 96);
  v74[3] = v13;
  if (*&v74[0])
  {
    v81 = *(result + 104);
    v82 = *(result + 120);
    v83[0] = *(result + 136);
    *(v83 + 9) = *(result + 145);
    v79 = *(result + 72);
    v80 = *(result + 88);
    v78 = *&v74[0];
    sub_1D7A25A48(v74, &v66);
    v14 = sub_1D79E5160(0, 1, 1, MEMORY[0x1E69E7CC0]);
    sub_1D7BE2C70(0, 0, 1, &v78);
    result = sub_1D7A254C0(v74);
    *&v59 = v14;
  }

  else
  {
    if (!*(v10 + 16))
    {
      sub_1D7BB5EFC();
      swift_allocError();
      return swift_willThrow();
    }

    v55 = v5;
    v56 = v4;
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v9 + 208);
  v57 = v10;
  if (v15 == 255)
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v16 = *(v9 + 200);
    if (v15)
    {
    }

    else
    {
      sub_1D7BB66B0(*(v9 + 200), v15);
      sub_1D7B0752C(0, 0, v16);
      result = sub_1D7BB5EE8(v16, v15);
      v16 = MEMORY[0x1E69E7CC0];
      v14 = v59;
    }
  }

  v54 = v16;
  v58 = v9;
  v17 = *(v14 + 2);
  if (v17)
  {
    v18 = 0;
    v19 = v14 + 32;
    v52 = v17 - 1;
    v84 = MEMORY[0x1E69E7CC0];
    v53 = v14 + 32;
    do
    {
      v20 = &v19[104 * v18];
      v21 = v18;
      while (1)
      {
        if (v21 >= *(v14 + 2))
        {
          __break(1u);
          return result;
        }

        v22 = *v20;
        v23 = *(v20 + 2);
        v76[1] = *(v20 + 1);
        v76[2] = v23;
        v76[0] = v22;
        v24 = *(v20 + 3);
        v25 = *(v20 + 4);
        v26 = *(v20 + 5);
        v77 = v20[96];
        v76[4] = v25;
        v76[5] = v26;
        v76[3] = v24;
        v18 = v21 + 1;
        sub_1D7B81054(v76, &v59);
        sub_1D7BB26A0(v76, a2, a3, a4, v73);
        v70 = v73[4];
        v71 = v73[5];
        v72 = v73[6];
        v66 = v73[0];
        v67 = v73[1];
        v68 = v73[2];
        v69 = v73[3];
        result = sub_1D7BB5E70(v76);
        if (*&v73[0])
        {
          break;
        }

        v20 += 104;
        ++v21;
        if (v17 == v18)
        {
          goto LABEL_24;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D79E529C(0, *(v84 + 2) + 1, 1, v84);
        v84 = result;
      }

      v28 = *(v84 + 2);
      v27 = *(v84 + 3);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v51[6] = v28 + 1;
        result = sub_1D79E529C((v27 > 1), v28 + 1, 1, v84);
        v29 = v28 + 1;
        v84 = result;
      }

      v63 = v70;
      v64 = v71;
      v65 = v72;
      v61 = v68;
      v62 = v69;
      v30 = v66;
      v59 = v66;
      v60 = v67;
      v31 = v84;
      *(v84 + 2) = v29;
      v32 = &v31[112 * v28];
      v33 = v61;
      *(v32 + 3) = v60;
      *(v32 + 4) = v33;
      v34 = v62;
      v35 = v63;
      v36 = v65;
      *(v32 + 7) = v64;
      *(v32 + 8) = v36;
      *(v32 + 5) = v34;
      *(v32 + 6) = v35;
      *(v32 + 2) = v30;
      v19 = v53;
    }

    while (v52 != v21);
  }

  else
  {
    v84 = MEMORY[0x1E69E7CC0];
  }

LABEL_24:
  *&v66 = v84;

  v38 = sub_1D79E3064(v37);
  v39 = v66;
  MEMORY[0x1EEE9AC00](v38, v40);
  v51[2] = a2;
  v51[3] = a3;
  v51[4] = a4;
  v41 = sub_1D7A28D44(sub_1D7BB66C4, v51, v54);

  v42 = v58;
  v43 = *(v58 + 16);
  v44 = *(v58 + 24);
  v45 = v56;

  *v45 = v43;
  *(v45 + 8) = v44;
  v46 = v42[4];
  v47 = v42[5];

  *(v45 + 16) = v46;
  *(v45 + 24) = v47;
  if (!v42[6] || (*&v59 = v42[6], sub_1D7BB3A78(&v59, v45, &v66), (v48 = v66) == 0))
  {
    v49 = *(v45 + 64);

    v48 = v49;
  }

  v50 = v58;
  *(v45 + 32) = *(v58 + 56);
  *(v45 + 33) = *(v50 + 57);
  *(v45 + 64) = v48;
  *(v45 + 72) = v39;

  *(v45 + 80) = v41;
  return result;
}

uint64_t sub_1D7BB3A78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 64);
  if (!v5)
  {

LABEL_24:
    *a3 = v4;
    return result;
  }

  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();

  v10 = 0;
  while (1)
  {
    v11 = v10;
    if (!v8)
    {
      break;
    }

LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (v10 << 10) | (16 * v12);
    v14 = (*(v5 + 48) + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(v5 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];
    v20 = v4[2];

    if (v20 && (sub_1D7A18FFC(v16, v15), (v21 & 1) != 0))
    {
LABEL_11:
    }

    else
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = sub_1D7A18FFC(v16, v15);
      v24 = v4[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_26;
      }

      if (v4[3] < v27)
      {
        v37 = v23;
        sub_1D7B92E7C(v27, isUniquelyReferenced_nonNull_native);
        v22 = sub_1D7A18FFC(v16, v15);
        v29 = v28 & 1;
        v23 = v37;
        if ((v37 & 1) != v29)
        {
          goto LABEL_28;
        }

LABEL_17:
        if (v23)
        {
          goto LABEL_18;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v40 = v22;
      v38 = v23;
      sub_1D7B97CC0();
      v22 = v40;
      if (v38)
      {
LABEL_18:
        v30 = v22;

        v31 = (v4[7] + 16 * v30);
        *v31 = v18;
        v31[1] = v19;
        goto LABEL_11;
      }

LABEL_20:
      v4[(v22 >> 6) + 8] |= 1 << v22;
      v32 = (v4[6] + 16 * v22);
      *v32 = v16;
      v32[1] = v15;
      v33 = (v4[7] + 16 * v22);
      *v33 = v18;
      v33[1] = v19;

      v34 = v4[2];
      v26 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v26)
      {
        goto LABEL_27;
      }

      v4[2] = v35;
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      result = swift_bridgeObjectRelease_n();
      a3 = v41;
      goto LABEL_24;
    }

    v8 = *(v5 + 64 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1D7D31A2C();
  __break(1u);
  return result;
}

uint64_t sub_1D7BB3D2C(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = v1 + 80;
      goto LABEL_10;
    }

    if (a1 == 3)
    {
      v2 = v1 + 120;
      goto LABEL_10;
    }

LABEL_14:
    result = sub_1D7D319FC();
    __break(1u);
    return result;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = v1 + 40;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v2 = v1;
LABEL_10:
  sub_1D7BB5CA8(v2, v5);
  if (v6)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v5, v6)[8];

    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_1D7BB5D38(v5);
    return 0;
  }

  return v3;
}

uint64_t sub_1D7BB3DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 += 80;
      goto LABEL_9;
    }

    if (a1 == 3)
    {
      v2 += 120;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v2 += 40;
      goto LABEL_9;
    }

LABEL_12:
    result = sub_1D7D319FC();
    __break(1u);
    return result;
  }

LABEL_9:

  return sub_1D7BB5CA8(v2, a2);
}

void sub_1D7BB3E90(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D7D318FC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D7D2EEAC();
        v6 = sub_1D7D3070C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D7D2EEAC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D7BB425C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D7BB3FBC(0, v2, 1, a1);
  }
}

void sub_1D7BB3FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D7D2EEAC();
  MEMORY[0x1EEE9AC00](v8, v9);
  v48 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v52 = &v38 - v13;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v15);
  v51 = &v38 - v18;
  v40 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v49 = *(v16 + 16);
    v50 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v46 = (v16 + 32);
    v47 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v45 = -v20;
    v23 = a1 - a3;
    v39 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v43 = v22;
    v44 = a3;
    v41 = v24;
    v42 = v23;
    v25 = v23;
    v26 = v22;
    while (1)
    {
      v27 = v51;
      v28 = v49;
      (v49)(v51, v24, v8, v17);
      v29 = v52;
      v28(v52, v26, v8);
      sub_1D7D2EE8C();
      v31 = v30;
      sub_1D7D2EE8C();
      v33 = v32;
      v34 = *v21;
      (*v21)(v29, v8);
      v34(v27, v8);
      if (v33 >= v31)
      {
LABEL_4:
        a3 = v44 + 1;
        v22 = &v43[v39];
        v23 = v42 - 1;
        v24 = v41 + v39;
        if (v44 + 1 == v40)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v47)
      {
        break;
      }

      v35 = *v46;
      v36 = v48;
      (*v46)(v48, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v35(v26, v36, v8);
      v26 += v45;
      v24 += v45;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D7BB425C(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v129 = a1;
  v9 = sub_1D7D2EEAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v131 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v142 = &v126 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v148 = &v126 - v18;
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v19, v20);
  v147 = &v126 - v22;
  v139 = a3;
  v23 = *(a3 + 8);
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v129;
    if (!*v129)
    {
      goto LABEL_134;
    }

    a3 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v121 = a3;
    }

    else
    {
LABEL_128:
      v121 = sub_1D7B50220(a3);
    }

    v149 = v121;
    a3 = *(v121 + 2);
    if (a3 >= 2)
    {
      while (*v139)
      {
        v122 = *&v121[16 * a3];
        v123 = v121;
        v124 = *&v121[16 * a3 + 24];
        sub_1D7BB4C6C(&(*v139)[v10[9] * v122], &(*v139)[v10[9] * *&v121[16 * a3 + 16]], &(*v139)[v10[9] * v124], v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v124 < v122)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_1D7B50220(v123);
        }

        if (a3 - 2 >= *(v123 + 2))
        {
          goto LABEL_122;
        }

        v125 = &v123[16 * a3];
        *v125 = v122;
        *(v125 + 1) = v124;
        v149 = v123;
        sub_1D7B50194(a3 - 1);
        v121 = v149;
        a3 = *(v149 + 2);
        if (a3 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v24 = 0;
  v145 = (v10 + 1);
  v146 = v10 + 2;
  v144 = (v10 + 4);
  v25 = MEMORY[0x1E69E7CC0];
  v138 = v10;
  v128 = a4;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v132 = v25;
    if (v24 + 1 >= v23)
    {
      v42 = v24 + 1;
    }

    else
    {
      v140 = v23;
      v133 = v6;
      v28 = v10[9];
      v5 = &(*v139)[v28 * v27];
      v136 = *v139;
      v29 = v136;
      v30 = v10[2];
      v31 = v147;
      v30(v147, &v136[v28 * v27], v9, v21);
      v32 = &v29[v28 * v26];
      v33 = v148;
      v141 = v30;
      (v30)(v148, v32, v9);
      sub_1D7D2EE8C();
      v35 = v34;
      sub_1D7D2EE8C();
      v37 = v36;
      v38 = v26;
      v39 = v10[1];
      a3 = v145;
      v39(v33, v9);
      v137 = v39;
      v39(v31, v9);
      v127 = v38;
      v40 = v38 + 2;
      v143 = v28;
      v41 = &v136[v28 * (v38 + 2)];
      while (1)
      {
        v42 = v140;
        if (v140 == v40)
        {
          break;
        }

        a3 = v147;
        v43 = v141;
        v141(v147, v41, v9);
        v44 = v148;
        v43(v148, v5, v9);
        sub_1D7D2EE8C();
        v46 = v45;
        sub_1D7D2EE8C();
        v48 = v47;
        v49 = v137;
        (v137)(v44, v9);
        v49(a3, v9);
        v10 = v138;
        ++v40;
        v41 += v143;
        v5 += v143;
        if (v37 < v35 == v48 >= v46)
        {
          v42 = v40 - 1;
          break;
        }
      }

      v50 = v132;
      v6 = v133;
      a4 = v128;
      v26 = v127;
      if (v37 < v35)
      {
        if (v42 < v127)
        {
          goto LABEL_125;
        }

        if (v127 < v42)
        {
          v51 = v42;
          a3 = v143 * (v42 - 1);
          v5 = v42 * v143;
          v140 = v42;
          v52 = v127 * v143;
          do
          {
            if (v26 != --v51)
            {
              v133 = v6;
              v53 = *v139;
              if (!*v139)
              {
                goto LABEL_131;
              }

              v54 = *v144;
              (*v144)(v131, &v53[v52], v9, v50);
              if (v52 < a3 || &v53[v52] >= &v53[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v52 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v54(&v53[a3], v131, v9);
              v50 = v132;
              v6 = v133;
            }

            ++v26;
            a3 -= v143;
            v5 -= v143;
            v52 += v143;
          }

          while (v26 < v51);
          v10 = v138;
          a4 = v128;
          v26 = v127;
          v42 = v140;
        }
      }
    }

    v55 = v139[1];
    if (v42 < v55)
    {
      if (__OFSUB__(v42, v26))
      {
        goto LABEL_124;
      }

      if (v42 - v26 < a4)
      {
        if (__OFADD__(v26, a4))
        {
          goto LABEL_126;
        }

        if (v26 + a4 >= v55)
        {
          v5 = v139[1];
        }

        else
        {
          v5 = v26 + a4;
        }

        if (v5 < v26)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v42 != v5)
        {
          break;
        }
      }
    }

    v5 = v42;
    if (v42 < v26)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = v132;
    }

    else
    {
      v25 = sub_1D79E4688(0, *(v132 + 2) + 1, 1, v132);
    }

    a3 = *(v25 + 2);
    v56 = *(v25 + 3);
    v57 = a3 + 1;
    if (a3 >= v56 >> 1)
    {
      v25 = sub_1D79E4688((v56 > 1), a3 + 1, 1, v25);
    }

    *(v25 + 2) = v57;
    v58 = &v25[16 * a3];
    *(v58 + 4) = v26;
    *(v58 + 5) = v5;
    v59 = *v129;
    if (!*v129)
    {
      goto LABEL_133;
    }

    v134 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v60 = *(v25 + 4);
          v61 = *(v25 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_52:
          if (v63)
          {
            goto LABEL_112;
          }

          v76 = &v25[16 * v57];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_115;
          }

          v82 = &v25[16 * v5 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_119;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v5 = v57 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v86 = &v25[16 * v57];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_66:
        if (v81)
        {
          goto LABEL_114;
        }

        v89 = &v25[16 * v5];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_117;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v57)
        {
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
          goto LABEL_127;
        }

        if (!*v139)
        {
          goto LABEL_130;
        }

        v97 = v25;
        v98 = *&v25[16 * a3 + 32];
        v99 = *&v25[16 * v5 + 40];
        sub_1D7BB4C6C(&(*v139)[v10[9] * v98], &(*v139)[v10[9] * *&v25[16 * v5 + 32]], &(*v139)[v10[9] * v99], v59);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v99 < v98)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D7B50220(v97);
        }

        if (a3 >= *(v97 + 2))
        {
          goto LABEL_109;
        }

        v100 = &v97[16 * a3];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        v149 = v97;
        sub_1D7B50194(v5);
        v25 = v149;
        v57 = *(v149 + 2);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v25[16 * v57 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_110;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_111;
      }

      v71 = &v25[16 * v57];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_113;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_116;
      }

      if (v75 >= v67)
      {
        v93 = &v25[16 * v5 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_120;
        }

        if (v62 < v96)
        {
          v5 = v57 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v23 = v139[1];
    v24 = v134;
    a4 = v128;
    if (v134 >= v23)
    {
      goto LABEL_95;
    }
  }

  v133 = v6;
  v101 = *v139;
  v102 = v10[9];
  v143 = v10[2];
  v103 = &v101[v102 * (v42 - 1)];
  v104 = v26;
  v105 = -v102;
  v127 = v104;
  v106 = (v104 - v42);
  v141 = v101;
  v130 = v102;
  v107 = &v101[v42 * v102];
  v134 = v5;
LABEL_85:
  v140 = v42;
  v135 = v107;
  v136 = v106;
  v108 = v107;
  v137 = v103;
  while (1)
  {
    v109 = v147;
    v110 = v143;
    (v143)(v147, v108, v9, v21);
    v111 = v148;
    v110(v148, v103, v9);
    sub_1D7D2EE8C();
    v113 = v112;
    sub_1D7D2EE8C();
    v115 = v114;
    v116 = *v145;
    (*v145)(v111, v9);
    v117 = v109;
    a3 = v9;
    v116(v117, v9);
    if (v115 >= v113)
    {
LABEL_84:
      v42 = v140 + 1;
      v103 = &v137[v130];
      v106 = v136 - 1;
      v5 = v134;
      v107 = &v135[v130];
      if (v140 + 1 != v134)
      {
        goto LABEL_85;
      }

      v6 = v133;
      v10 = v138;
      v26 = v127;
      if (v134 < v127)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v141)
    {
      break;
    }

    v118 = *v144;
    v119 = v142;
    (*v144)(v142, v108, v9);
    swift_arrayInitWithTakeFrontToBack();
    v118(v103, v119, v9);
    v103 += v105;
    v108 += v105;
    if (__CFADD__(v106++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1D7BB4C6C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = sub_1D7D2EEAC();
  v8 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v9);
  v65 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v64 = &v54 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v15;
  v69 = a1;
  v68 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v19;
    if (v19 >= 1)
    {
      v36 = -v15;
      v58 = a4;
      v59 = (v8 + 16);
      v56 = (v8 + 8);
      v57 = a1;
      v37 = v35;
      v60 = -v15;
      do
      {
        v55 = v35;
        v38 = a2;
        v39 = a2 + v36;
        v62 = v38;
        v63 = v39;
        while (1)
        {
          if (v38 <= a1)
          {
            v69 = v38;
            v67 = v55;
            goto LABEL_58;
          }

          v41 = a3;
          v61 = v35;
          v42 = a3 + v36;
          v43 = v37 + v36;
          v44 = *v59;
          v45 = v64;
          v46 = v66;
          (*v59)(v64, v43, v66);
          v47 = v39;
          v48 = v65;
          (v44)(v65, v47, v46);
          sub_1D7D2EE8C();
          v50 = v49;
          sub_1D7D2EE8C();
          v52 = v51;
          v53 = *v56;
          (*v56)(v48, v46);
          v53(v45, v46);
          if (v52 < v50)
          {
            break;
          }

          v35 = v43;
          a3 = v42;
          if (v41 < v37 || v42 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v63;
            a1 = v57;
          }

          else
          {
            v39 = v63;
            a1 = v57;
            if (v41 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v37 = v43;
          v40 = v43 > v58;
          v36 = v60;
          v38 = v62;
          if (!v40)
          {
            a2 = v62;
            goto LABEL_57;
          }
        }

        a3 = v42;
        if (v41 < v62 || v42 >= v62)
        {
          a2 = v63;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v57;
          v36 = v60;
          v35 = v61;
        }

        else
        {
          a2 = v63;
          a1 = v57;
          v36 = v60;
          v35 = v61;
          if (v41 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v37 > v58);
    }

LABEL_57:
    v69 = a2;
    v67 = v35;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v18;
    v67 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v21 = *(v8 + 16);
      v61 = a3;
      v62 = v8 + 16;
      v59 = (v8 + 8);
      v60 = v21;
      v22 = v65;
      do
      {
        v23 = a1;
        v24 = v64;
        v25 = a2;
        v26 = v66;
        v27 = a2;
        v28 = v60;
        (v60)(v64, v25, v66);
        v28(v22, a4, v26);
        sub_1D7D2EE8C();
        v30 = v29;
        sub_1D7D2EE8C();
        v32 = v31;
        v33 = *v59;
        (*v59)(v22, v26);
        v33(v24, v26);
        if (v32 >= v30)
        {
          v34 = v23;
          if (v23 < a4 || v23 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v27;
          }

          else
          {
            a2 = v27;
            if (v23 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = a4 + v15;
          a4 += v15;
        }

        else
        {
          a2 = v27 + v15;
          v34 = v23;
          if (v23 < v27 || v23 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v23 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v34 + v15;
        v69 = a1;
      }

      while (a4 < v63 && a2 < v61);
    }
  }

LABEL_58:
  sub_1D7B50234(&v69, &v68, &v67);
}

uint64_t sub_1D7BB520C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 24);
  if (v4)
  {
    v7 = v6 ^ 1;
  }

  else
  {
    v7 = v6 | (*(a1 + 16) != *(a2 + 16));
  }

  v8 = *(a2 + 32);
  v9 = *(a2 + 65);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 65);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (!v5)
  {
    v19 = v8 != 0;
    if (*(a1 + 65))
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (!v8)
  {
    v19 = 1;
    if (*(a1 + 65))
    {
      goto LABEL_9;
    }

LABEL_14:
    if (v9)
    {
      return 0;
    }

    if (v11)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v16 & 1) != 0 || v10 != v15)
    {
      return 0;
    }

    if (v13)
    {
      if (v7 & 1 | ((v18 & 1) == 0) | v19 & 1)
      {
        return 0;
      }
    }

    else if (((v18 | v19 | v7) & 1) != 0 || v12 != v17)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v19 = sub_1D7A59288(v5, v8) ^ 1;
  if ((v14 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v7 & 1 | ((v9 & 1) == 0) | v19 & 1)
  {
    return 0;
  }

LABEL_10:
  v20 = *(a1 + 104);
  v21 = *(a2 + 104);

  return sub_1D7A58760(v20, v21);
}

double sub_1D7BB5378@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 16);
  v37 = *(a1 + 32);
  v38 = v8;
  v34 = v8;
  v35 = v37;
  v33 = *(a1 + 56);
  v9 = *(a1 + 57);
  if (*(a1 + 192))
  {
    v10 = 3;
  }

  else
  {
    v10 = *(a1 + 168);
  }

  if (*(a1 + 192))
  {
    v11 = 2;
  }

  else
  {
    v11 = *(a1 + 176);
  }

  if (*(a1 + 192))
  {
    v12 = 2;
  }

  else
  {
    v12 = *(a1 + 184);
  }

  v36 = *(a1 + 48);
  sub_1D7BB5F50(&v38, v24);
  sub_1D7BB5F50(&v37, v24);
  sub_1D7BB5FAC(&v36, v24, &unk_1EE0BF480, sub_1D7BB6020, MEMORY[0x1E69E6720], sub_1D7BB5C14);
  sub_1D7A25744(a1);
  v18 = v34;
  v19 = v35;
  LOBYTE(v20) = v33;
  BYTE1(v20) = v9;
  *(&v20 + 1) = v10;
  *&v21 = v11;
  *(&v21 + 1) = v12;
  *&v22 = v36;
  *(&v22 + 1) = a2;
  v23 = a3;
  v24[0] = v34;
  v24[1] = v35;
  v25 = v33;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v30 = v36;
  v31 = a2;
  v32 = a3;
  sub_1D7B653B4(&v18, v17);
  sub_1D7BB5C78(v24);
  v13 = v21;
  v14 = v22;
  *(a4 + 32) = v20;
  *(a4 + 48) = v13;
  *(a4 + 64) = v14;
  *(a4 + 80) = v23;
  result = *&v18;
  v16 = v19;
  *a4 = v18;
  *(a4 + 16) = v16;
  return result;
}

uint64_t sub_1D7BB54F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v87 = a3;
  v10 = *(a1 + 144);
  v85[4] = *(a1 + 128);
  v85[5] = v10;
  v86 = *(a1 + 160);
  v11 = *(a1 + 80);
  v85[0] = *(a1 + 64);
  v85[1] = v11;
  v12 = *(a1 + 112);
  v85[2] = *(a1 + 96);
  v85[3] = v12;
  if (*&v85[0])
  {
    v82 = *(a1 + 104);
    v83 = *(a1 + 120);
    v84[0] = *(a1 + 136);
    *(v84 + 9) = *(a1 + 145);
    v80 = *(a1 + 72);
    v81 = *(a1 + 88);
    v79 = *&v85[0];
    v13 = *(a1 + 80);
    v71[0] = *(a1 + 64);
    v71[1] = v13;
    v14 = *(a1 + 96);
    v15 = *(a1 + 112);
    v16 = *(a1 + 128);
    v17 = *(a1 + 144);
    v72 = *(a1 + 160);
    v71[4] = v16;
    v71[5] = v17;
    v71[2] = v14;
    v71[3] = v15;
    sub_1D7B81054(v71, &v64);
    v18 = sub_1D79E5160(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v73 = v18;
    sub_1D7BE2C70(0, 0, 1, &v79);
    result = sub_1D7A254C0(v85);
    v73 = v18;
    v20 = *(a1 + 208);
    v54 = a1;
    v55 = a5;
    v53 = v5;
    if (v20 == 255)
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v21 = *(a1 + 200);

      if ((v20 & 1) == 0)
      {
        sub_1D7B0752C(0, 0, v21);
        result = sub_1D7BB5EE8(v21, v20);
        v21 = MEMORY[0x1E69E7CC0];
        v18 = v73;
      }
    }

    v52 = v21;
    v22 = *(v18 + 2);
    if (v22)
    {
      v23 = 0;
      v24 = v18 + 32;
      v50 = v22 - 1;
      v56 = MEMORY[0x1E69E7CC0];
      v51 = v18 + 32;
      do
      {
        v25 = &v24[104 * v23];
        v26 = v23;
        while (1)
        {
          if (v26 >= *(v18 + 2))
          {
            __break(1u);
            return result;
          }

          v27 = *v25;
          v28 = *(v25 + 2);
          v77[1] = *(v25 + 1);
          v77[2] = v28;
          v77[0] = v27;
          v29 = *(v25 + 3);
          v30 = *(v25 + 4);
          v31 = *(v25 + 5);
          v78 = v25[96];
          v77[4] = v30;
          v77[5] = v31;
          v77[3] = v29;
          v23 = v26 + 1;
          sub_1D7B81054(v77, &v57);
          sub_1D7BB26A0(v77, a2, v87, a4, v74);
          v68 = v74[4];
          v69 = v74[5];
          v70 = v74[6];
          v64 = v74[0];
          v65 = v74[1];
          v66 = v74[2];
          v67 = v74[3];
          result = sub_1D7BB5E70(v77);
          if (*&v74[0])
          {
            break;
          }

          v25 += 104;
          ++v26;
          if (v22 == v23)
          {
            goto LABEL_21;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D79E529C(0, *(v56 + 2) + 1, 1, v56);
          v56 = result;
        }

        v33 = *(v56 + 2);
        v32 = *(v56 + 3);
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          v49[6] = v33 + 1;
          result = sub_1D79E529C((v32 > 1), v33 + 1, 1, v56);
          v34 = v33 + 1;
          v56 = result;
        }

        v61 = v68;
        v62 = v69;
        v63 = v70;
        v59 = v66;
        v60 = v67;
        v35 = v64;
        v57 = v64;
        v58 = v65;
        v36 = v56;
        *(v56 + 2) = v34;
        v37 = &v36[112 * v33];
        v38 = v59;
        *(v37 + 3) = v58;
        *(v37 + 4) = v38;
        v39 = v60;
        v40 = v61;
        v41 = v63;
        *(v37 + 7) = v62;
        *(v37 + 8) = v41;
        *(v37 + 5) = v39;
        *(v37 + 6) = v40;
        *(v37 + 2) = v35;
        v24 = v51;
      }

      while (v50 != v26);
    }

    else
    {
      v56 = MEMORY[0x1E69E7CC0];
    }

LABEL_21:
    *&v64 = v56;
    v42 = sub_1D79E3064(MEMORY[0x1E69E7CC0]);
    v56 = v64;
    MEMORY[0x1EEE9AC00](v42, v43);
    v49[2] = a2;
    v49[3] = v87;
    v44 = a4;
    v49[4] = a4;
    v45 = sub_1D7A28D44(sub_1D7BB5EC4, v49, v52);

    sub_1D7BB5378(v54, v56, v45, v75);
    result = __swift_destroy_boxed_opaque_existential_1(v44);
    v46 = v75[3];
    v47 = v55;
    *(v55 + 32) = v75[2];
    *(v47 + 48) = v46;
    *(v47 + 64) = v75[4];
    *(v47 + 80) = v76;
    v48 = v75[1];
    *v47 = v75[0];
    *(v47 + 16) = v48;
  }

  else
  {
    sub_1D7BB5EFC();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a4);

    return sub_1D7A25744(a1);
  }

  return result;
}

unint64_t sub_1D7BB5954(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D7BB5968()
{
  result = qword_1EC9E6100;
  if (!qword_1EC9E6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6100);
  }

  return result;
}

unint64_t sub_1D7BB59C0()
{
  result = qword_1EE0C6F98;
  if (!qword_1EE0C6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C6F98);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles44ArticleRecirculationSpecifiedSectionDataType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1D7BB5A9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D7BB5AF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1D7BB5B84(uint64_t a1, uint64_t a2)
{
  sub_1D7B28FD8(0, &unk_1EE0C0A00, &unk_1EE0C0A10, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D7BB5C14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7BB5CA8(uint64_t a1, uint64_t a2)
{
  sub_1D7B28FD8(0, &unk_1EE0C0A00, &unk_1EE0C0A10, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BB5D38(uint64_t a1)
{
  sub_1D7B28FD8(0, &unk_1EE0C0A00, &unk_1EE0C0A10, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7BB5E4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D7BB5EE8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_1D7BB5EFC()
{
  result = qword_1EC9E6108;
  if (!qword_1EC9E6108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6108);
  }

  return result;
}

uint64_t sub_1D7BB5FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D7BB6020()
{
  if (!qword_1EE0BF498)
  {
    v0 = sub_1D7D302AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF498);
    }
  }
}

unint64_t sub_1D7BB60A0()
{
  result = qword_1EE0BF228;
  if (!qword_1EE0BF228)
  {
    sub_1D7BB5C14(255, &qword_1EE0BF230, sub_1D79E6DC8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF228);
  }

  return result;
}

unint64_t sub_1D7BB6128()
{
  result = qword_1EE0BF380;
  if (!qword_1EE0BF380)
  {
    sub_1D79E6DC8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF380);
  }

  return result;
}

unint64_t sub_1D7BB6180()
{
  result = qword_1EE0C1450;
  if (!qword_1EE0C1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C1450);
  }

  return result;
}

uint64_t sub_1D7BB61D4(uint64_t a1)
{
  sub_1D7A9F930(0, &qword_1EE0C5C10, &_s7SectionON, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7BB6254(uint64_t a1)
{
  if (!qword_1EE0BF460)
  {
    _s15ArticleProviderOMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BF460);
    }
  }
}

void sub_1D7BB62C0(uint64_t a1)
{
  if (!qword_1EE0BF440)
  {
    _s15ArticleProviderOMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BF440);
    }
  }
}

uint64_t sub_1D7BB6328(uint64_t a1, uint64_t a2)
{
  sub_1D7BB5C14(0, &qword_1EE0BF458, sub_1D7BB6254, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BB63BC(uint64_t a1, uint64_t a2)
{
  v4 = _s15ArticleProviderOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BB6420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7BB64A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1D7BB64E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7BB6554(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1D7BB659C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D7BB6604()
{
  result = qword_1EC9E6118;
  if (!qword_1EC9E6118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6118);
  }

  return result;
}

unint64_t sub_1D7BB665C()
{
  result = qword_1EC9E6120[0];
  if (!qword_1EC9E6120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC9E6120);
  }

  return result;
}

uint64_t sub_1D7BB66B0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

id sub_1D7BB66EC(void *a1, void *a2, uint64_t a3, double a4)
{
  v6 = sub_1D7D2FDCC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 articleID];
  sub_1D7D3034C();

  sub_1D7D300FC();

  v13 = sub_1D7D2FB5C();
  v15 = v14;

  swift_getObjectType();
  (*(v7 + 104))(v11, *MEMORY[0x1E69B6740], v6);
  sub_1D7D2F78C();
  (*(v7 + 8))(v11, v6);
  __swift_project_boxed_opaque_existential_1(a2 + 7, a2[10]);
  sub_1D7D2F85C();
  v16 = sub_1D7A7FC04(a1, 0);
  v17 = objc_allocWithZone(_s12NewsArticles26AttributionViewWrapperViewCMa_0());
  return sub_1D7BB699C(v13, v15, v16);
}

void *SharedArticleBottomPaletteFeatureDescriptor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  return v0;
}

uint64_t SharedArticleBottomPaletteFeatureDescriptor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  return swift_deallocClassInstance();
}

id sub_1D7BB699C(void *a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC12NewsArticlesP33_D28D6015DE731BE624B02DB54B95AB0426AttributionViewWrapperView_attributionView];
  *v6 = a1;
  v6[1] = a2;
  *&v3[OBJC_IVAR____TtC12NewsArticlesP33_D28D6015DE731BE624B02DB54B95AB0426AttributionViewWrapperView_themeColor] = a3;
  v3[OBJC_IVAR____TtC12NewsArticlesP33_D28D6015DE731BE624B02DB54B95AB0426AttributionViewWrapperView_isTransitioning] = 0;
  v18.receiver = v3;
  v18.super_class = _s12NewsArticles26AttributionViewWrapperViewCMa_0();
  v7 = a1;
  v8 = a3;
  v9 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v9 addSubview_];
  sub_1D7BB6D3C();
  sub_1D7BB74F4(0, &qword_1EE0BE900, sub_1D79F3CAC, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7D3C680;
  v11 = sub_1D7D2C9FC();
  v12 = MEMORY[0x1E69DC130];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v13 = sub_1D7D2C99C();
  v14 = MEMORY[0x1E69DC0C8];
  *(v10 + 48) = v13;
  *(v10 + 56) = v14;
  v15 = sub_1D7D2C9EC();
  v16 = MEMORY[0x1E69DC0F8];
  *(v10 + 64) = v15;
  *(v10 + 72) = v16;
  MEMORY[0x1DA70EB40](v10, sel_updateStyle);

  swift_unknownObjectRelease();

  return v9;
}

id sub_1D7BB6C20()
{
  v3.receiver = v0;
  v3.super_class = _s12NewsArticles26AttributionViewWrapperViewCMa_0();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticlesP33_D28D6015DE731BE624B02DB54B95AB0426AttributionViewWrapperView_attributionView];
  [v0 bounds];
  sub_1D7D30FBC();
  [v1 setCenter_];
  [v0 bounds];
  CGRectGetWidth(v4);
  [v1 bounds];
  CGRectGetWidth(v5);
  [v1 bounds];
  return [v1 setBounds_];
}

uint64_t sub_1D7BB6D3C()
{
  v1 = sub_1D7D2FBCC();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = [v7 userInterfaceStyle];
  [*&v0[OBJC_IVAR____TtC12NewsArticlesP33_D28D6015DE731BE624B02DB54B95AB0426AttributionViewWrapperView_themeColor] ts_luminance];
  v10 = v9;

  if (v8 == 2)
  {
    v11 = MEMORY[0x1E69B65E0];
  }

  else
  {
    v11 = MEMORY[0x1E69B65F0];
    if (v10 <= 0.9)
    {
      v11 = MEMORY[0x1E69B65E0];
    }
  }

  (*(v2 + 104))(v6, *v11, v1);
  swift_getObjectType();
  sub_1D7D2F77C();
  return (*(v2 + 8))(v6, v1);
}

id sub_1D7BB6F44()
{
  v2.receiver = v0;
  v2.super_class = _s12NewsArticles26AttributionViewWrapperViewCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7BB700C(char a1, double a2)
{
  v3 = sub_1D7D2FDCC();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, **(&unk_1E84EAC18 + a1), v3, v6);
  swift_getObjectType();
  sub_1D7D2F78C();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1D7BB7128(void *a1)
{
  sub_1D7BB74F4(0, &qword_1EE0BF750, MEMORY[0x1E69B6038], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v27 - v5;
  v7 = sub_1D7D2EECC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  if (!a1)
  {
    return 0;
  }

  v27 = &v27 - v13;
  v28 = v1;
  v15 = v1[10];
  v29 = v1[11];
  v30 = v14;
  __swift_project_boxed_opaque_existential_1(v1 + 7, v15);
  v16 = [swift_unknownObjectRetain() articleID];
  sub_1D7D3034C();

  v17 = v30;
  sub_1D7D2F84C();

  if ((*(v17 + 48))(v6, 1, v7) == 1)
  {
    swift_unknownObjectRelease();
    sub_1D7B11324(v6);
    return 0;
  }

  v19 = *(v17 + 32);
  v20 = v27;
  v19(v27, v6, v7);
  (*(v17 + 16))(v10, v20, v7);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = swift_allocObject();
  v23 = v28;
  *(v22 + 16) = a1;
  *(v22 + 24) = v23;
  v19((v22 + v21), v10, v7);
  swift_unknownObjectRetain();

  v24 = [a1 identifier];
  v25 = sub_1D7D3034C();
  swift_unknownObjectRelease();

  (*(v17 + 8))(v20, v7);
  v26 = swift_allocObject();
  result = v25;
  *(v26 + 16) = sub_1D7BB7460;
  *(v26 + 24) = v22;
  return result;
}

id sub_1D7BB7460()
{
  v1 = *(sub_1D7D2EECC() - 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1D7BB66EC(v3, v4, v5, v2);
}

void sub_1D7BB74F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ArticleViewerAudioFeatureContext(uint64_t a1)
{
  result = qword_1EE0C3828;
  if (!qword_1EE0C3828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7BB75CC(uint64_t a1)
{
  result = type metadata accessor for ArticleViewerArticlePage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1D7BB766C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1D7D2AC3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7D2AC8C();
  v11 = sub_1D7D2ABEC();
  (*(v7 + 8))(v10, v6);
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  LODWORD(v7) = [v11 _isSimilarToColor_withinPercentage_];

  v14 = &selRef_blackColor;
  if (v7)
  {
    v14 = &selRef_whiteColor;
  }

  v15 = [v12 *v14];
  v16 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:14.0];
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  if (!a3)
  {
    goto LABEL_7;
  }

  v18 = [a3 imageWithTintColor_];
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = v18;
  result = [v18 imageByApplyingSymbolConfiguration_];
  if (result)
  {
    v21 = result;
    v22 = [objc_opt_self() textAttachmentWithImage_];

    v23 = [objc_opt_self() attributedStringWithAttachment_];
    [v17 appendAttributedString_];

LABEL_7:
    v37 = 32;
    v38 = 0xE100000000000000;
    MEMORY[0x1DA70DE90](a1, a2);
    v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v25 = sub_1D7D3031C();

    v26 = [v24 initWithString_];

    [v17 appendAttributedString_];
    sub_1D79A0470(0, &qword_1EE0BE830, sub_1D79D69BC);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7D3B4E0;
    v28 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v29 = sub_1D7992EFC(0, &qword_1EE0BED40, 0x1E69DB878);
    v30 = v28;
    *(inited + 40) = sub_1D7D3105C();
    v31 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v29;
    *(inited + 72) = v31;
    *(inited + 104) = sub_1D7992EFC(0, &qword_1EE0BECE8, 0x1E69DC888);
    *(inited + 80) = v15;
    v32 = v31;
    v33 = v15;
    sub_1D7A5092C(inited);
    swift_setDeallocating();
    sub_1D79D69BC(0);
    swift_arrayDestroy();
    type metadata accessor for Key(0);
    sub_1D79F7BE0();
    v34 = sub_1D7D3027C();

    v35 = v17;
    [v35 addAttributes:v34 range:{0, objc_msgSend(v35, sel_length)}];

    return v35;
  }

  __break(1u);
  return result;
}

void sub_1D7BB7AF4(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v39 = [objc_opt_self() bundleForClass_];
      v14 = sub_1D7D2811C();
      v16 = v40;

      if (qword_1EE0BB468 != -1)
      {
        swift_once();
      }

      v17 = qword_1EE0BB470;
    }

    else
    {
      if (a1 != 3)
      {
LABEL_12:
        if (qword_1EE0CAF08 != -1)
        {
          swift_once();
        }

        sub_1D7D30C4C();
        sub_1D79A0470(0, &qword_1EE0BE810, sub_1D79D6A7C);
        v19 = swift_allocObject();
        v20 = MEMORY[0x1E69E6530];
        *(v19 + 16) = xmmword_1D7D3B4D0;
        v21 = MEMORY[0x1E69E65A8];
        *(v19 + 56) = v20;
        *(v19 + 64) = v21;
        *(v19 + 32) = a1;
        sub_1D7D29AAC("Attempted to style audio message container text for unknown article message style: %d@", v43);

        v22 = sub_1D7BB766C(0, 0xE000000000000000, 0);
        return;
      }

      type metadata accessor for Localized();
      v12 = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_1D7D2811C();
      v16 = v15;

      if (qword_1EE0BB480 != -1)
      {
        swift_once();
      }

      v17 = qword_1EE0BB488;
    }

    v41 = sub_1D7BB766C(v14, v16, v17);

    v42 = v41;
    return;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      type metadata accessor for Localized();
      v1 = swift_getObjCClassFromMetadata();
      v2 = objc_opt_self();
      v3 = [v2 bundleForClass_];
      v4 = sub_1D7D2811C();
      v6 = v5;

      if (qword_1EE0BB468 != -1)
      {
        swift_once();
      }

      v7 = qword_1EE0BB470;
      sub_1D7BB766C(v4, v6, qword_1EE0BB470);

      v8 = [v2 bundleForClass_];
      v9 = sub_1D7D2811C();
      v11 = v10;

      sub_1D7BB766C(v9, v11, v7);

      return;
    }

    goto LABEL_12;
  }

  type metadata accessor for Localized();
  v23 = swift_getObjCClassFromMetadata();
  v24 = objc_opt_self();
  v25 = [v24 bundleForClass_];
  v26 = sub_1D7D2811C();
  v28 = v27;

  v29 = sub_1D7D3031C();
  v30 = objc_opt_self();
  v31 = [v30 systemImageNamed_];

  if (v31)
  {
    sub_1D7BB766C(v26, v28, v31);

    v32 = [v24 bundleForClass_];
    v33 = sub_1D7D2811C();
    v35 = v34;

    v36 = sub_1D7D3031C();
    v37 = [v30 systemImageNamed_];

    if (v37)
    {
      sub_1D7BB766C(v33, v35, v37);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D7BB819C(uint64_t a1)
{
  v2 = 0;
  v3 = OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_textForArticleMessage;
  while (1)
  {
    sub_1D7BB7AF4(v2);
    v9 = v8;
    v11 = v10;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + v3);
    *(a1 + v3) = 0x8000000000000000;
    v14 = sub_1D7A5B898(v2);
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v13[3] < v19)
    {
      sub_1D7B92864(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_1D7A5B898(v2);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v20)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v25 = v14;
    sub_1D7B978E8();
    v14 = v25;
    if (v20)
    {
LABEL_2:
      v4 = v13[7] + 16 * v14;
      v6 = *v4;
      v5 = *(v4 + 8);
      *v4 = v9;
      *(v4 + 8) = v11;

      goto LABEL_3;
    }

LABEL_10:
    v13[(v14 >> 6) + 8] |= 1 << v14;
    *(v13[6] + 8 * v14) = v2;
    v22 = (v13[7] + 16 * v14);
    *v22 = v9;
    v22[1] = v11;
    v23 = v13[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_16;
    }

    v13[2] = v24;
LABEL_3:
    ++v2;
    *(a1 + v3) = v13;
    result = swift_endAccess();
    if (v2 == 5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  type metadata accessor for NUArticleMessage(0);
  result = sub_1D7D31A2C();
  __break(1u);
  return result;
}

void sub_1D7BB8350(void *a1)
{
  v2 = sub_1D7D2AC3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2AC8C();
  v7 = sub_1D7D2ABEC();
  (*(v3 + 8))(v6, v2);
  [a1 setTintColor_];

  v8 = objc_opt_self();
  v9 = [v8 systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB960]];
  v10 = [v8 systemFontOfSize_];
  v11 = *MEMORY[0x1E69DDD28];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v13 = [v12 scaledFontForFont:v9 maximumPointSize:19.0];

  v14 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v15 = [v14 scaledFontForFont:v10 maximumPointSize:19.0];

  sub_1D7CD82D4(v13, v15);
}

id sub_1D7BB8554(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:14.0];
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  if (!a3)
  {
    goto LABEL_5;
  }

  v10 = [a3 imageWithTintColor_];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = v10;
  result = [v10 imageByApplyingSymbolConfiguration_];
  if (result)
  {
    v13 = result;
    v14 = [objc_opt_self() textAttachmentWithImage_];

    v15 = [objc_opt_self() attributedStringWithAttachment_];
    [v9 appendAttributedString_];

LABEL_5:
    MEMORY[0x1DA70DE90](a1, a2);
    v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v17 = sub_1D7D3031C();

    v18 = [v16 initWithString_];

    [v9 appendAttributedString_];
    sub_1D79A0470(0, &qword_1EE0BE830, sub_1D79D69BC);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7D3B4E0;
    v20 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v21 = sub_1D7992EFC(0, &qword_1EE0BED40, 0x1E69DB878);
    v22 = v20;
    *(inited + 40) = sub_1D7D3105C();
    v23 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v21;
    *(inited + 72) = v23;
    *(inited + 104) = sub_1D7992EFC(0, &qword_1EE0BECE8, 0x1E69DC888);
    *(inited + 80) = a4;
    v24 = v23;
    v25 = a4;
    sub_1D7A5092C(inited);
    swift_setDeallocating();
    sub_1D79D69BC(0);
    swift_arrayDestroy();
    type metadata accessor for Key(0);
    sub_1D79F7BE0();
    v26 = sub_1D7D3027C();

    v27 = v9;
    [v27 addAttributes:v26 range:{0, objc_msgSend(v27, sel_length)}];

    return v27;
  }

  __break(1u);
  return result;
}

void sub_1D7BB88B4(uint64_t a1, void *a2)
{
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v23 = [objc_opt_self() bundleForClass_];
        v24 = sub_1D7D2811C();
        v26 = v25;

        if (qword_1EE0BB468 != -1)
        {
          swift_once();
        }

        v27 = qword_1EE0BB470;
        break;
      case 3:
        type metadata accessor for Localized();
        v28 = swift_getObjCClassFromMetadata();
        v29 = [objc_opt_self() bundleForClass_];
        v24 = sub_1D7D2811C();
        v26 = v30;

        if (qword_1EE0BB480 != -1)
        {
          swift_once();
        }

        v27 = qword_1EE0BB488;
        break;
      case 4:
        type metadata accessor for Localized();
        v3 = swift_getObjCClassFromMetadata();
        v4 = [objc_opt_self() bundleForClass_];
        v5 = sub_1D7D2811C();
        v7 = v6;

        v8 = sub_1D7D3031C();
        v9 = [objc_opt_self() systemImageNamed_];

        v10 = sub_1D7BB8554(v5, v7, v9, a2);

LABEL_18:
        v31 = v10;
        return;
      default:
        return;
    }

    v10 = sub_1D7BB8554(v24, v26, v27, a2);

    goto LABEL_18;
  }

  if (!a1)
  {
    type metadata accessor for Localized();
    v32 = swift_getObjCClassFromMetadata();
    v33 = objc_opt_self();
    v34 = [v33 bundleForClass_];
    v35 = sub_1D7D2811C();
    v37 = v36;

    v38 = sub_1D7D3031C();
    v39 = objc_opt_self();
    v40 = [v39 systemImageNamed_];

    if (v40)
    {
      sub_1D7BB8554(v35, v37, v40, a2);

      v41 = [v33 bundleForClass_];
      v42 = sub_1D7D2811C();
      v44 = v43;

      v45 = sub_1D7D3031C();
      v46 = [v39 systemImageNamed_];

      if (v46)
      {
        sub_1D7BB8554(v42, v44, v46, a2);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a1 == 1)
  {
    type metadata accessor for Localized();
    v11 = swift_getObjCClassFromMetadata();
    v12 = objc_opt_self();
    v13 = [v12 bundleForClass_];
    v14 = sub_1D7D2811C();
    v16 = v15;

    if (qword_1EE0BB468 != -1)
    {
      swift_once();
    }

    v17 = qword_1EE0BB470;
    sub_1D7BB8554(v14, v16, qword_1EE0BB470, a2);

    v18 = [v12 bundleForClass_];
    v19 = sub_1D7D2811C();
    v21 = v20;

    sub_1D7BB8554(v19, v21, v17, a2);
  }
}

id EndOfArticlePresentationOptions.__allocating_init(suppressMoreFromSection:suppressMoreToReadSection:suppressMoreFromIssueSection:suppressRelatedSection:suppressRecommendedReadsSection:articleBackgroundColor:isIssueArticle:)(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = objc_allocWithZone(v7);
  v15[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromSection] = a1;
  v15[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreToReadSection] = a2;
  v15[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromIssueSection] = a3;
  v15[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRelatedSection] = a4;
  *&v15[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRecommendedReadsSection] = a5;
  *&v15[OBJC_IVAR___NAEndOfArticlePresentationOptions_articleBackgroundColor] = a6;
  v15[OBJC_IVAR___NAEndOfArticlePresentationOptions_isIssueArticle] = a7;
  v17.receiver = v15;
  v17.super_class = v7;
  return objc_msgSendSuper2(&v17, sel_init);
}

id EndOfArticlePresentationOptions.init(suppressMoreFromSection:suppressMoreToReadSection:suppressMoreFromIssueSection:suppressRelatedSection:suppressRecommendedReadsSection:articleBackgroundColor:isIssueArticle:)(uint64_t a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v7[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromSection] = a1;
  v7[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreToReadSection] = a2;
  v7[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressMoreFromIssueSection] = a3;
  v7[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRelatedSection] = a4;
  *&v7[OBJC_IVAR___NAEndOfArticlePresentationOptions_suppressRecommendedReadsSection] = a5;
  *&v7[OBJC_IVAR___NAEndOfArticlePresentationOptions_articleBackgroundColor] = a6;
  v7[OBJC_IVAR___NAEndOfArticlePresentationOptions_isIssueArticle] = a7;
  v9.receiver = v7;
  v9.super_class = type metadata accessor for EndOfArticlePresentationOptions();
  return objc_msgSendSuper2(&v9, sel_init);
}

id EndOfArticlePresentationOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EndOfArticlePresentationOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndOfArticlePresentationOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EndOfRecipeViewControllerProvider.__allocating_init(resolver:tracker:coordinatorContainer:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1D799D69C(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t EndOfRecipeViewControllerProvider.init(resolver:tracker:coordinatorContainer:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1D799D69C(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

void EndOfRecipeViewControllerProvider.endOfRecipeViewController(for:recipeCardID:viewSessionID:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  type metadata accessor for RecipeCache();
  v11 = sub_1D7D28D1C();
  if (!v11)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = *(v13 + 16);
  MEMORY[0x1EEE9AC00](v13, v15);
  os_unfair_lock_lock(v14 + 6);
  sub_1D7BB9A9C(v33);
  os_unfair_lock_unlock(v14 + 6);
  v16 = v33[0];
  if (v33[0])
  {
    __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
    sub_1D7BB9AE4();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a3;
    v18[4] = a4;
    v18[5] = a1;
    v18[6] = a2;

    sub_1D7D28D0C();

    if (v32)
    {
      sub_1D799D69C(&v31, v33);
      type metadata accessor for EndOfRecipeConfig();
      v19 = swift_allocObject();
      v19[2] = v16;
      v19[3] = a5;
      v19[4] = a6;
      v20 = v34;
      v21 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v22 = *(v21 + 8);
      v23 = v16;

      v22(v19, v20, v21);

      __swift_destroy_boxed_opaque_existential_1(v33);
      return;
    }

    goto LABEL_11;
  }

  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D7D29AFC();
  __swift_project_value_buffer(v24, qword_1ECA0BB60);

  v25 = sub_1D7D29ADC();
  v26 = sub_1D7D30C4C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1D7B06D4C(a1, a2, v33);
    _os_log_impl(&dword_1D7987000, v25, v26, "Failed to lookup recipe for EndOfRecipe feed, recipeID=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1DA7102E0](v28, -1, -1);
    MEMORY[0x1DA7102E0](v27, -1, -1);
  }
}

double sub_1D7BB9724(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = a5;
    v14 = *(*(Strong + 64) + 16);
    MEMORY[0x1EEE9AC00](Strong, v12);

    os_unfair_lock_lock((v14 + 24));
    sub_1D7A66CD8((v14 + 16), &v22);
    os_unfair_lock_unlock((v14 + 24));
    v15 = v22;

    if (v15)
    {
      WeakRecipeCoordinator.tracker.getter();

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D7D28A3C();
      sub_1D7D28BEC();
    }

    else
    {
      if (qword_1EC9DFDA0 != -1)
      {
        swift_once();
      }

      v16 = sub_1D7D29AFC();
      __swift_project_value_buffer(v16, qword_1ECA0BB60);

      v17 = sub_1D7D29ADC();
      v18 = sub_1D7D30C4C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22 = v20;
        *v19 = 136315394;
        *(v19 + 4) = sub_1D7B06D4C(a3, a4, &v22);
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_1D7B06D4C(v21, a6, &v22);
        _os_log_impl(&dword_1D7987000, v17, v18, "Failed to find the active tracker instance for creating EndOfRecipe chained tracker, recipeCardID=%s, recipeID=%s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA7102E0](v20, -1, -1);
        MEMORY[0x1DA7102E0](v19, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D7D28A3C();

      sub_1D7D28BEC();
    }
  }

  return result;
}

void *EndOfRecipeViewControllerProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

void *sub_1D7BB9A54@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

void *sub_1D7BB9A9C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

unint64_t sub_1D7BB9AE4()
{
  result = qword_1EE0CE4C8[0];
  if (!qword_1EE0CE4C8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE0CE4C8);
  }

  return result;
}

uint64_t sub_1D7BB9B84()
{
  MEMORY[0x1DA7103D0](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t ArticleModel.article.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ArticleModel(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7A35E7C(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D7994174(0);
    v9 = *(v8 + 48);
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
  }

  else
  {
    sub_1D7996048(0);
    v9 = *(v10 + 48);
    v11 = v7[3];
    a1[2] = v7[2];
    a1[3] = v11;
    v12 = v7[1];
    *a1 = *v7;
    a1[1] = v12;
  }

  return sub_1D7BB9D14(v7 + v9);
}

uint64_t sub_1D7BB9D14(uint64_t a1)
{
  v2 = type metadata accessor for ArticleNavigationAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D7BB9D70(char a1)
{
  v3 = type metadata accessor for ArticleModel(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArticleNavigationAction(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20 - v13;
  if (a1)
  {
    v15 = sub_1D7BBA394();
  }

  else
  {
    v15 = 0;
  }

  sub_1D7A35E7C(v1, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D7994174(0);
  }

  else
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    sub_1D7996048(0);
  }

  sub_1D7BBA668(&v6[*(v16 + 48)], v10);
  sub_1D7BBA668(v10, v14);
  v17 = ArticleNavigationAction.scrollPosition.getter();
  sub_1D7BB9D14(v14);
  v18 = [objc_allocWithZone(MEMORY[0x1E69B70A0]) initWithShouldAutoPlayVideo:v15 & 1 scrollPosition:v17];

  return v18;
}

uint64_t ArticleModel.headline.getter()
{
  v1 = type metadata accessor for ArticleModel(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A35E7C(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D7994174(0);
    v5 = 0;
    v7 = *(v6 + 48);
  }

  else
  {
    v5 = *(v4 + 2);
    sub_1D7996048(0);
    v7 = *(v8 + 48);

    swift_unknownObjectRelease();
  }

  sub_1D7BB9D14(&v4[v7]);
  return v5;
}

uint64_t ArticleModel.articleID.getter()
{
  v1 = type metadata accessor for ArticleModel(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7A35E7C(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    sub_1D7994174(0);
    v7 = *(v6 + 48);
  }

  else
  {
    v8 = v4[2];
    sub_1D7996048(0);
    v7 = *(v9 + 48);
    v10 = [v8 articleID];
    v5 = sub_1D7D3034C();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  sub_1D7BB9D14(v4 + v7);
  return v5;
}

uint64_t ArticleModel.identifier.getter()
{
  v1 = type metadata accessor for ArticleModel(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7A35E7C(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7994174(0);
    v8 = *(v7 + 48);
  }

  else
  {
    sub_1D7996048(0);
    v8 = *(v9 + 48);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_1D7BB9D14(v4 + v8);
  return v6;
}

uint64_t ArticleModel.feedItemIdentifier.getter()
{
  v1 = type metadata accessor for ArticleModel(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A35E7C(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D7994174(0);
    v5 = 0;
    v7 = *(v6 + 48);
  }

  else
  {
    v5 = *(v4 + 6);
    sub_1D7996048(0);
    v7 = *(v8 + 48);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  sub_1D7BB9D14(&v4[v7]);
  return v5;
}

uint64_t sub_1D7BBA394()
{
  v1 = v0;
  v2 = type metadata accessor for ArticleModel(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleNavigationAction(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v21 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - v16;
  sub_1D7A35E7C(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D7994174(0);
  }

  else
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    sub_1D7996048(0);
  }

  sub_1D7BBA668(&v5[*(v18 + 48)], v13);
  sub_1D7BBA668(v13, v17);
  swift_storeEnumTagMultiPayload();
  v19 = _s12NewsArticles23ArticleNavigationActionO2eeoiySbAC_ACtFZ_0(v17, v9);
  sub_1D7BB9D14(v9);
  sub_1D7BB9D14(v17);
  return v19 & 1;
}

uint64_t sub_1D7BBA570(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](v2, a2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7A35E7C(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *v4;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7994174(0);
    v9 = *(v8 + 48);
  }

  else
  {
    sub_1D7996048(0);
    v9 = *(v10 + 48);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_1D7BB9D14(v4 + v9);
  return v7;
}

uint64_t sub_1D7BBA668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleNavigationAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BBA6F0(uint64_t a1, uint64_t a2)
{
  sub_1D7B9A7E0(0);
  swift_allocObject();
  sub_1D7B6EEC8();

  swift_unknownObjectRetain();
  return sub_1D7D2A69C();
}

uint64_t sub_1D7BBA770(uint64_t a1, uint64_t a2)
{
  sub_1D7B9A7E0(0);
  swift_allocObject();
  sub_1D7B6EF1C();

  swift_unknownObjectRetain();
  return sub_1D7D2A69C();
}

void sub_1D7BBA7F0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7D2833C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v31 = v13;
    v14 = a1;
    v15 = [v14 endDate];
    if (v15)
    {
      v16 = v15;
      sub_1D7D2830C();

      (*(v5 + 32))(v12, v8, v4);
      sub_1D7A269F8(0, v17);
      v19 = v18[12];
      v20 = v18[16];
      v30 = v18[20];
      v21 = [v14 startDate];
      sub_1D7D2830C();

      v22 = type metadata accessor for AnalyticsTimedData(0);
      (*(v5 + 16))(a2 + *(v22 + 20), v12, v4);
      v23 = v31;
      [v31 startPosition];
      *(a2 + v19) = v24;
      [v23 endPosition];
      *(a2 + v20) = v25;
      [v23 velocity];
      v27 = v26;

      (*(v5 + 8))(v12, v4);
      *(a2 + v30) = v27;
      type metadata accessor for AnalyticsEvent(0);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_1D7BBAABC();
      swift_allocError();
      *v29 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D7BBAABC();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
  }
}

unint64_t sub_1D7BBAABC()
{
  result = qword_1EE0BBC88;
  if (!qword_1EE0BBC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BBC88);
  }

  return result;
}

unint64_t sub_1D7BBAB24()
{
  result = qword_1EC9E6188;
  if (!qword_1EC9E6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6188);
  }

  return result;
}

uint64_t sub_1D7BBAB78(void *a1, void *a2, uint64_t a3, double a4)
{
  v5 = v4;
  v119 = a1;
  v120 = a2;
  v7 = sub_1D7D29C6C();
  v122 = *(v7 - 8);
  v123 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v121 = (&v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D7D29C7C();
  v127 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v124 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v125 = &v112 - v15;
  v16 = type metadata accessor for ArticleViewerMoreFeatureContext(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7BBC154(0, qword_1EE0C4290, type metadata accessor for ArticleViewerMenuProviderModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v112 - v22;
  v24 = type metadata accessor for ArticleViewerMenuProviderModel(0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC12NewsArticles25ArticleViewerMenuProvider_menuModel;
  swift_beginAccess();
  v126 = v5;
  sub_1D7BBBFF8(v5 + v29, v23, v30);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1D7BBBF6C(v23, v31);
    sub_1D7992EFC(0, &qword_1EE0BED30, 0x1E69DCC60);
    return sub_1D7D3106C();
  }

  sub_1D7BBC08C(v23, v28);
  sub_1D7BBC0F0(v28, v19);
  v33 = v28;
  v34 = *(v28 + 2);
  v35 = *(v24 + 20);
  v117 = v33;
  sub_1D79DA880(&v33[v35], v134);
  v36 = *&v19[*(type metadata accessor for ArticleViewerArticlePage(0) + 32)];
  v118 = v19;
  v116 = a3;
  if (v36 >= 2)
  {
    v38 = v36;
  }

  else
  {
    v37 = *(v19 + 2);
    if (([v37 respondsToSelector_] & 1) == 0 || (v38 = objc_msgSend(v37, sel_parentIssue)) == 0)
    {
LABEL_15:
      sub_1D7BBC154(0, &qword_1EC9E4DB8, MEMORY[0x1E69B5790], MEMORY[0x1E69E6F90]);
      v54 = v127;
      v55 = *(v127 + 72);
      v56 = (*(v127 + 80) + 32) & ~*(v127 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1D7D54310;
      v58 = *(v54 + 104);
      v58(v57 + v56, *MEMORY[0x1E69B5758], v10);
      v58(v57 + v56 + v55, *MEMORY[0x1E69B5738], v10);
      v58(v57 + v56 + 2 * v55, *MEMORY[0x1E69B5788], v10);
      v58(v57 + v56 + 3 * v55, *MEMORY[0x1E69B5730], v10);
      v58(v57 + v56 + 4 * v55, *MEMORY[0x1E69B5740], v10);
      v58(v57 + v56 + 5 * v55, *MEMORY[0x1E69B5770], v10);
      v58(v57 + v56 + 6 * v55, *MEMORY[0x1E69B5760], v10);
      v59 = sub_1D7BDE13C(v57);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *&v131 = v59;
      if (v136)
      {
        goto LABEL_28;
      }

      v60.n128_f64[0] = v135;
      if (v135 < 540.0)
      {
        v61 = [objc_opt_self() mainBundle];
        v62 = [v61 bundleIdentifier];

        if (!v62)
        {
          goto LABEL_28;
        }

        v63 = sub_1D7D3034C();
        v65 = v64;

        if (v63 == 0xD000000000000010 && 0x80000001D7D6D9F0 == v65)
        {
        }

        else
        {
          v72 = sub_1D7D3197C();

          if ((v72 & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      v73 = v124;
      (v58)(v124, *MEMORY[0x1E69B5768], v10, v60);
      v74 = v125;
      sub_1D7B3DEA4(v125, v73);
      (*(v127 + 8))(v74, v10);
LABEL_28:
      if (v135 < 768.0)
      {
        if ([v34 respondsToSelector_] & 1) == 0 || (objc_msgSend(v34, sel_role), (sub_1D7D30BCC()))
        {
          v75 = v124;
          v58(v124, *MEMORY[0x1E69B5778], v10);
          v76 = v125;
          sub_1D7B3DEA4(v125, v75);
          (*(v127 + 8))(v76, v10);
        }
      }

      __swift_project_boxed_opaque_existential_1((v126 + OBJC_IVAR____TtC12NewsArticles25ArticleViewerMenuProvider_featureAvailability), *(v126 + OBJC_IVAR____TtC12NewsArticles25ArticleViewerMenuProvider_featureAvailability + 24));
      v77 = sub_1D7D2F9AC();
      v78 = v118;
      if (v77)
      {
        v79 = v124;
        v58(v124, *MEMORY[0x1E69B5750], v10);
        v80 = v125;
        sub_1D7B3DEA4(v125, v79);
        (*(v127 + 8))(v80, v10);
      }

      sub_1D7D29C8C();
      v81 = v120;
      v82 = v121;
      v83 = v119;
      *v121 = v34;
      v82[1] = v83;
      v82[3] = 0;
      v82[4] = 0;
      v82[2] = v81;
      v85 = v122;
      v84 = v123;
      (*(v122 + 104))(v82, *MEMORY[0x1E69B5728], v123);
      v86 = v131;

      swift_unknownObjectRetain();
      MEMORY[0x1DA7076C0](v82, v86);
      (*(v85 + 8))(v82, v84);
      if (sub_1D7D29C4C())
      {
        sub_1D7D29C2C();
      }

      else
      {
      }

      v87 = v117;
      sub_1D7992EFC(0, &qword_1EE0BED30, 0x1E69DCC60);
      v88 = sub_1D7D3106C();
      goto LABEL_38;
    }
  }

  v39 = *(v19 + 2);
  if (([v39 respondsToSelector_] & 1) == 0 || objc_msgSend(v39, sel_role) != 2)
  {

    goto LABEL_15;
  }

  v115 = v39;
  sub_1D7BBC154(0, &qword_1EC9E4DB8, MEMORY[0x1E69B5790], MEMORY[0x1E69E6F90]);
  v40 = v127;
  v41 = *(v127 + 72);
  v42 = (*(v127 + 80) + 32) & ~*(v127 + 80);
  v43 = swift_allocObject();
  v114 = xmmword_1D7D3B4E0;
  *(v43 + 16) = xmmword_1D7D3B4E0;
  v44 = v43 + v42;
  v45 = *(v40 + 104);
  v45(v44, *MEMORY[0x1E69B5738], v10);
  v46 = *MEMORY[0x1E69B5748];
  v113 = v45;
  v45((v44 + v41), v46, v10);
  v47 = sub_1D7BDE13C(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v133 = v47;
  v48 = *(v126 + OBJC_IVAR____TtC12NewsArticles25ArticleViewerMenuProvider_paidAccessChecker);
  v49 = [v38 sourceChannel];
  v119 = v48;
  v50 = [v48 purchaseProvider];
  v51 = swift_unknownObjectRetain();
  v120 = v49;
  if ([v51 tagType] == 3)
  {
    v52 = [v120 asSection];
    if (!v52 || (v53 = [v52 parentID], swift_unknownObjectRelease(), !v53))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_24;
    }
  }

  else
  {
    v53 = [v120 identifier];
  }

  v66 = sub_1D7D3034C();
  v68 = v67;

  v69 = [v50 purchasedTagIDs];
  v70 = sub_1D7D309AC();

  LOBYTE(v69) = sub_1D7D053C8(v66, v68, v70);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v69)
  {
    swift_unknownObjectRelease();
LABEL_61:
    v97 = v124;
    v113(v124, *MEMORY[0x1E69B5740], v10);
    v98 = v125;
    sub_1D7B3DEA4(v125, v97);
    (*(v127 + 8))(v98, v10);
    goto LABEL_62;
  }

LABEL_24:
  v71 = [objc_msgSend(v119 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v71, v71 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v131 = v129;
  v132 = v130;
  if (!*(&v130 + 1))
  {
    sub_1D7BBC1B8(&v131, sub_1D79F0070);
    goto LABEL_45;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_45:
    v89 = 0;
    v91 = 0;
    goto LABEL_46;
  }

  v89 = v128;
  v90 = [v128 integerValue];
  if (v90 == -1)
  {

    goto LABEL_57;
  }

  v91 = v90;
LABEL_46:
  if (objc_getAssociatedObject(v71, ~v91))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v131 = v129;
  v132 = v130;
  if (!*(&v130 + 1))
  {
    sub_1D7BBC1B8(&v131, sub_1D79F0070);
LABEL_54:

    if (v91)
    {
      goto LABEL_57;
    }

LABEL_55:
    swift_unknownObjectRelease();
    goto LABEL_60;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_54;
  }

  v92 = v128;
  v93 = [v92 integerValue];

  if (((v93 ^ v91) & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_57:
  v94 = [objc_msgSend(v119 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v95 = [v120 identifier];
  if (!v95)
  {
    sub_1D7D3034C();
    v95 = sub_1D7D3031C();
  }

  v96 = [v94 containsTagID_];

  swift_unknownObjectRelease();
  if (v96)
  {
    goto LABEL_61;
  }

LABEL_60:
  if (([v38 isPaid] & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_62:
  sub_1D7D29C8C();
  sub_1D7BBC154(0, &qword_1EC9E4DC0, MEMORY[0x1E69B57C8], MEMORY[0x1E69E6F90]);
  v99 = sub_1D7D2C33C();
  v100 = *(v99 - 8);
  v101 = *(v100 + 72);
  v102 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v103 = swift_allocObject();
  *(v103 + 16) = v114;
  v104 = v103 + v102;
  v105 = *(v100 + 104);
  v105(v104, *MEMORY[0x1E69B57C0], v99);
  v105(v104 + v101, *MEMORY[0x1E69B57B8], v99);
  v106 = v121;
  *v121 = v38;
  v106[1] = v103;
  v106[2] = v115;
  v107 = v38;
  v109 = v122;
  v108 = v123;
  (*(v122 + 104))(v106, *MEMORY[0x1E69B5718], v123);
  v110 = v133;
  v111 = v107;
  swift_unknownObjectRetain();
  MEMORY[0x1DA7076C0](v106, v110);
  (*(v109 + 8))(v106, v108);
  if (sub_1D7D29C4C())
  {
    sub_1D7D29C2C();
  }

  else
  {
  }

  v87 = v117;
  v78 = v118;
  sub_1D7992EFC(0, &qword_1EE0BED30, 0x1E69DCC60);
  v88 = sub_1D7D3106C();

LABEL_38:
  sub_1D79DA8DC(v134);
  sub_1D7BBC1B8(v78, type metadata accessor for ArticleViewerMoreFeatureContext);
  sub_1D7BBC1B8(v87, type metadata accessor for ArticleViewerMenuProviderModel);
  return v88;
}

uint64_t sub_1D7BBBC20(double a1)
{
  sub_1D7BBBF6C(v1 + OBJC_IVAR____TtC12NewsArticles25ArticleViewerMenuProvider_menuModel, a1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles25ArticleViewerMenuProvider_featureAvailability));

  return swift_deallocClassInstance();
}

void sub_1D7BBBCDC(uint64_t a1, double a2)
{
  sub_1D7BBC154(319, qword_1EE0C4290, type metadata accessor for ArticleViewerMenuProviderModel, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D7BBBE00(uint64_t a1)
{
  result = type metadata accessor for ArticleViewerMoreFeatureContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7BBBE74(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles25ArticleViewerMenuProvider_menuModel;
  swift_beginAccess();
  sub_1D7BBBED8(a1, v3 + v4, v5);
  return swift_endAccess();
}

uint64_t sub_1D7BBBED8(uint64_t a1, uint64_t a2, double a3)
{
  sub_1D7BBC154(0, qword_1EE0C4290, type metadata accessor for ArticleViewerMenuProviderModel, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7BBBF6C(uint64_t a1, double a2)
{
  sub_1D7BBC154(0, qword_1EE0C4290, type metadata accessor for ArticleViewerMenuProviderModel, MEMORY[0x1E69E6720]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7BBBFF8(uint64_t a1, uint64_t a2, double a3)
{
  sub_1D7BBC154(0, qword_1EE0C4290, type metadata accessor for ArticleViewerMenuProviderModel, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7BBC08C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerMenuProviderModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BBC0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerMoreFeatureContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7BBC154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7BBC1B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7BBC240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  if (*(a2 + 153))
  {
    goto LABEL_19;
  }

  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = &selRef_destinationURL;
  v13 = [v11 mainBundle];
  v14 = [v13 bundleIdentifier];

  if (!v14)
  {
LABEL_8:
    __swift_project_boxed_opaque_existential_1((v35 + 16), *(v35 + 40));
    if ((sub_1D7D2F93C() & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  v15 = a1;
  v16 = sub_1D7D3034C();
  v18 = v17;

  if (v16 == 0x6C7070612E6D6F63 && v18 == 0xEE007377656E2E65)
  {

    a1 = v15;
    v12 = &selRef_destinationURL;
  }

  else
  {
    v20 = sub_1D7D3197C();

    a1 = v15;
    v12 = &selRef_destinationURL;
    if ((v20 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  if (*(a2 + 160) >= 540.0)
  {
    goto LABEL_17;
  }

  v21 = [v11 v12[498]];
  v22 = [v21 bundleIdentifier];

  if (!v22)
  {
    goto LABEL_19;
  }

  v23 = sub_1D7D3034C();
  v25 = v24;

  if (v23 == 0xD000000000000010 && 0x80000001D7D6D9F0 == v25)
  {

    goto LABEL_17;
  }

  v26 = sub_1D7D3197C();

  if ((v26 & 1) == 0)
  {
LABEL_19:
    v28 = 0;
    return v28 & 1;
  }

LABEL_17:
  sub_1D79F93E8(a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 3)
  {
    sub_1D7BBCAF4(v7, type metadata accessor for ArticleViewerPage);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D799A6BC(0);
    sub_1D79DA510(*&v7[*(v30 + 48)], *&v7[*(v30 + 48) + 8], *&v7[*(v30 + 48) + 16], *&v7[*(v30 + 48) + 24]);
  }

  v31 = v7;
  v32 = v34;
  sub_1D7A74E98(v31, v34);
  v33 = *(v32 + 16);
  swift_unknownObjectRetain();
  sub_1D7BBCAF4(v32, type metadata accessor for ArticleViewerArticlePage);
  v28 = sub_1D7BBC5A0(v33);
  swift_unknownObjectRelease();
  return v28 & 1;
}

uint64_t sub_1D7BBC5A0(void *a1)
{
  if ([a1 respondsToSelector_])
  {
    [a1 role];
    if ((sub_1D7D30B8C() & 1) == 0)
    {
      return 0;
    }
  }

  v3 = [a1 sourceChannel];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = *(v1 + 64);
  v6 = [a1 identifier];
  if (!v6)
  {
    sub_1D7D3034C();
    v6 = sub_1D7D3031C();
  }

  v7 = [v5 isArticleOnReadingList_];

  if (v7)
  {
    goto LABEL_38;
  }

  v8 = *(v1 + 56);
  v9 = [v8 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v10 = [v4 asSection];
    if (!v10 || (v11 = [v10 parentID], swift_unknownObjectRelease(), !v11))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_15;
    }
  }

  else
  {
    v11 = [v4 identifier];
  }

  v13 = sub_1D7D3034C();
  v15 = v14;

  v16 = [v9 purchasedTagIDs];
  v17 = sub_1D7D309AC();

  LOBYTE(v16) = sub_1D7D053C8(v13, v15, v17);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v16)
  {
    goto LABEL_38;
  }

LABEL_15:
  v18 = [objc_msgSend(v8 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v18, v18 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (!*(&v30 + 1))
  {
    sub_1D7BBCAF4(&v31, sub_1D79F0070);
    goto LABEL_23;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v19 = 0;
    v21 = 0;
    goto LABEL_24;
  }

  v19 = v28;
  v20 = [v28 integerValue];
  if (v20 == -1)
  {

LABEL_35:
    v24 = [objc_msgSend(v8 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v25 = [v4 identifier];
    if (!v25)
    {
      sub_1D7D3034C();
      v25 = sub_1D7D3031C();
    }

    v26 = [v24 containsTagID_];

    if ((v26 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_38:
    swift_unknownObjectRelease();
    return 1;
  }

  v21 = v20;
LABEL_24:
  if (objc_getAssociatedObject(v18, ~v21))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (!*(&v30 + 1))
  {
    sub_1D7BBCAF4(&v31, sub_1D79F0070);
LABEL_32:

    if ((v21 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v22 = v28;
  v23 = [v22 integerValue];

  if ((v23 ^ v21))
  {
    goto LABEL_35;
  }

LABEL_39:
  v27 = [a1 isPaid];
  swift_unknownObjectRelease();
  return v27 ^ 1;
}

uint64_t sub_1D7BBCA60()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7BBCAF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7BBCB54(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v4 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B38560(v3, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
      v22 = sub_1D7BBF350(v19, v11, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
      v23 = a1(v22);
      v24 = v11;
    }

    else
    {
      v21 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
      v26 = sub_1D7BBF350(v19, v7, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
      v23 = a1(v26);
      v24 = v7;
    }
  }

  else
  {
    v21 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
    v25 = sub_1D7BBF350(v19, v15, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    v23 = a1(v25);
    v24 = v15;
  }

  sub_1D7BBF0E4(v24, v21);
  return v23;
}

double sub_1D7BBCD88()
{
  v1 = v0;
  v2 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B38560(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
      sub_1D7BBF350(v17, v9, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14rankMultiplierSdvg_0();
      v21 = v20;
      v22 = v9;
    }

    else
    {
      v19 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
      sub_1D7BBF350(v17, v5, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14rankMultiplierSdvg_0();
      v21 = v24;
      v22 = v5;
    }
  }

  else
  {
    v19 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
    sub_1D7BBF350(v17, v13, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14rankMultiplierSdvg_0();
    v21 = v23;
    v22 = v13;
  }

  sub_1D7BBF0E4(v22, v19);
  return v21;
}

uint64_t sub_1D7BBCFAC()
{
  v1 = v0;
  v2 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B38560(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
      sub_1D7BBF350(v17, v9, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14paidVisibility0aG00gh4PaidJ0Ovg_0();
      v20 = v9;
    }

    else
    {
      v19 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
      sub_1D7BBF350(v17, v5, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14paidVisibility0aG00gh4PaidJ0Ovg_0();
      v20 = v5;
    }
  }

  else
  {
    v19 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
    sub_1D7BBF350(v17, v13, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV14paidVisibility0aG00gh4PaidJ0Ovg_0();
    v20 = v13;
  }

  return sub_1D7BBF0E4(v20, v19);
}

uint64_t sub_1D7BBD1D0(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v4 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B38560(v3, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v25 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
    v26 = sub_1D7BBF350(v19, v15, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    v22 = a1(v26);
    v23 = v15;
LABEL_6:
    v24 = v25;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v25 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
    v27 = sub_1D7BBF350(v19, v7, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
    v22 = a1(v27);
    v23 = v7;
    goto LABEL_6;
  }

  v21 = sub_1D7BBF350(v19, v11, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
  v22 = a1(v21);
  v23 = v11;
  v24 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
LABEL_7:
  sub_1D7BBF0E4(v23, v24);
  return v22;
}

uint64_t sub_1D7BBD418(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1D7BBF3B8(0, &qword_1EC9E6248, sub_1D7BBF144, &type metadata for EndOfRecipeFeedGroup.RelatedRecipesCodingKeys, MEMORY[0x1E69E6F58]);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v52 = &v41 - v5;
  v50 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v50, v6);
  v51 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7BBF3B8(0, &qword_1EC9E6250, sub_1D7BBF198, &type metadata for EndOfRecipeFeedGroup.RelatedArticlesCodingKeys, v2);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v47 = &v41 - v10;
  v45 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v45, v11);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7BBF3B8(0, &qword_1EC9E6258, sub_1D7BBF1EC, &type metadata for EndOfRecipeFeedGroup.RecipeTopicsCodingKeys, v2);
  v44 = v13;
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v41 - v15;
  v43 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v43, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7BBF3B8(0, &qword_1EC9E6260, sub_1D7BBF240, &type metadata for EndOfRecipeFeedGroup.CodingKeys, v2);
  v56 = *(v24 - 8);
  v57 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v41 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7BBF240();
  sub_1D7D31B1C();
  sub_1D7B38560(v55, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = v46;
      sub_1D7BBF350(v23, v46, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
      v59 = 1;
      sub_1D7BBF198();
      v30 = v47;
      v31 = v57;
      sub_1D7D3181C();
      sub_1D7BBF420(&qword_1EC9E6270, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup, &protocol conformance descriptor for RelatedArticlesEndOfRecipeFeedGroup);
      v32 = v49;
      sub_1D7D318BC();
      (*(v48 + 8))(v30, v32);
      v33 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
    }

    else
    {
      v29 = v51;
      sub_1D7BBF350(v23, v51, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
      v60 = 2;
      sub_1D7BBF144();
      v38 = v52;
      v31 = v57;
      sub_1D7D3181C();
      sub_1D7BBF420(&qword_1EC9E6268, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup, &protocol conformance descriptor for RelatedRecipesEndOfRecipeFeedGroup);
      v39 = v54;
      sub_1D7D318BC();
      (*(v53 + 8))(v38, v39);
      v33 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
    }

    v36 = v33;
    v37 = v29;
  }

  else
  {
    v34 = v42;
    sub_1D7BBF350(v23, v19, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    v58 = 0;
    sub_1D7BBF1EC();
    v31 = v57;
    sub_1D7D3181C();
    sub_1D7BBF420(&qword_1EC9E6278, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup, &protocol conformance descriptor for RecipeTopicsEndOfRecipeFeedGroup);
    v35 = v44;
    sub_1D7D318BC();
    (*(v34 + 8))(v16, v35);
    v36 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
    v37 = v19;
  }

  sub_1D7BBF0E4(v37, v36);
  return (*(v56 + 8))(v27, v31);
}

uint64_t sub_1D7BBDB48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D7BBF3B8(0, &qword_1EC9E61E0, sub_1D7BBF144, &type metadata for EndOfRecipeFeedGroup.RelatedRecipesCodingKeys, MEMORY[0x1E69E6F48]);
  v69 = v4;
  v72 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v76 = &v63 - v6;
  sub_1D7BBF3B8(0, &qword_1EC9E61F0, sub_1D7BBF198, &type metadata for EndOfRecipeFeedGroup.RelatedArticlesCodingKeys, v3);
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v73 = &v63 - v9;
  sub_1D7BBF3B8(0, &qword_1EC9E6200, sub_1D7BBF1EC, &type metadata for EndOfRecipeFeedGroup.RecipeTopicsCodingKeys, v3);
  v67 = *(v10 - 8);
  v68 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v75 = &v63 - v12;
  sub_1D7BBF3B8(0, &qword_1EC9E6210, sub_1D7BBF240, &type metadata for EndOfRecipeFeedGroup.CodingKeys, v3);
  v74 = v13;
  v78 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v63 - v15;
  v17 = type metadata accessor for EndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v63 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v63 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v63 - v31;
  v33 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1D7BBF240();
  v34 = v79;
  sub_1D7D31AFC();
  if (!v34)
  {
    v64 = v24;
    v65 = v28;
    v79 = v20;
    v36 = v75;
    v35 = v76;
    v66 = v32;
    v37 = v77;
    v38 = v74;
    v39 = sub_1D7D317EC();
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = *(v39 + 32);
      if (v40 == 1 && v41 != 3)
      {
        v63 = v39;
        if (v41)
        {
          if (v41 == 1)
          {
            v82 = 1;
            sub_1D7BBF198();
            v47 = v73;
            sub_1D7D3170C();
            v48 = v16;
            v49 = v37;
            v75 = v48;
            type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup(0);
            sub_1D7BBF420(&qword_1EC9E6238, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup, &protocol conformance descriptor for RelatedArticlesEndOfRecipeFeedGroup);
            v50 = v64;
            v51 = v71;
            sub_1D7D317DC();
            v52 = v78;
            (*(v70 + 8))(v47, v51);
            (*(v52 + 8))(v75, v38);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v61 = v50;
LABEL_16:
            v62 = v66;
            sub_1D7BBF350(v61, v66, type metadata accessor for EndOfRecipeFeedGroup);
            sub_1D7BBF350(v62, v49, type metadata accessor for EndOfRecipeFeedGroup);
            return __swift_destroy_boxed_opaque_existential_1(v80);
          }

          v83 = 2;
          sub_1D7BBF144();
          sub_1D7D3170C();
          v55 = v16;
          v49 = v37;
          v75 = v55;
          type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup(0);
          sub_1D7BBF420(&qword_1EC9E6230, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup, &protocol conformance descriptor for RelatedRecipesEndOfRecipeFeedGroup);
          v56 = v79;
          v57 = v35;
          v58 = v69;
          sub_1D7D317DC();
          v59 = v78;
          v53 = v56;
          (*(v72 + 8))(v57, v58);
          (*(v59 + 8))(v75, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v81 = 0;
          sub_1D7BBF1EC();
          sub_1D7D3170C();
          type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup(0);
          sub_1D7BBF420(&qword_1EC9E6240, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup, &protocol conformance descriptor for RecipeTopicsEndOfRecipeFeedGroup);
          v53 = v65;
          v54 = v68;
          sub_1D7D317DC();
          (*(v67 + 8))(v36, v54);
          (*(v78 + 8))(v16, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v37;
        }

        v61 = v53;
        goto LABEL_16;
      }
    }

    v43 = sub_1D7D314DC();
    swift_allocError();
    v44 = v16;
    v46 = v45;
    sub_1D7BBF294(0);
    *v46 = v17;
    sub_1D7D3171C();
    sub_1D7D314BC();
    (*(*(v43 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v78 + 8))(v44, v38);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v80);
}

uint64_t sub_1D7BBE430()
{
  v1 = 0x41646574616C6572;
  if (*v0 != 1)
  {
    v1 = 0x52646574616C6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F54657069636572;
  }
}

uint64_t sub_1D7BBE4AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7BBF8C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7BBE4D4(uint64_t a1)
{
  v2 = sub_1D7BBF240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7BBE510(uint64_t a1)
{
  v2 = sub_1D7BBF240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7BBE558(uint64_t a1)
{
  v2 = sub_1D7BBF1EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}