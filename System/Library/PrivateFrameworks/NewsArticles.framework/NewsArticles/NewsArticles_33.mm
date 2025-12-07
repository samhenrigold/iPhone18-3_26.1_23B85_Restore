unint64_t sub_1D7CDF858()
{
  result = qword_1EC9E86B8;
  if (!qword_1EC9E86B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E86B8);
  }

  return result;
}

id sub_1D7CDF8BC(double a1)
{
  v3 = *(v1 + 24);
  v4 = objc_opt_self();
  v5 = MEMORY[0x1E69DB960];
  if (v3)
  {
    v5 = MEMORY[0x1E69DB958];
  }

  v6 = [v4 systemFontOfSize:a1 weight:*v5];

  return v6;
}

uint64_t sub_1D7CDF94C(void *a1)
{
  v3 = *(v1 + 24);
  v4 = [a1 isPaid];
  if ([a1 respondsToSelector_])
  {
    v5 = [a1 isBundlePaid];
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 sourceChannel];
  if (v6)
  {
    v7 = [v6 identifier];
    swift_unknownObjectRelease();
    v8 = sub_1D7D3034C();
    v10 = v9;

    if (v4)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (v5)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v8 = 0;
  v10 = 0;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_6:
  v11 = [v3 purchaseProvider];
  if (v10)
  {
    v12 = [v11 purchasedTagIDs];
    v13 = sub_1D7D309AC();

    LOBYTE(v12) = sub_1D7D053C8(v8, v10, v13);

    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_15;
    }

LABEL_12:

    return 1;
  }

  swift_unknownObjectRelease();
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_15:
  if (v10)
  {
    v15 = [objc_msgSend(v3 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v15, v15 + 1))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30 = v28;
    v31 = v29;
    if (*(&v29 + 1))
    {
      sub_1D79A4870();
      if (swift_dynamicCast())
      {
        v16 = v27;
        v17 = [v27 integerValue];
        if (v17 == -1)
        {

          goto LABEL_36;
        }

        v18 = v17;
LABEL_25:
        if (objc_getAssociatedObject(v15, ~v18))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v28 = 0u;
          v29 = 0u;
        }

        v30 = v28;
        v31 = v29;
        if (*(&v29 + 1))
        {
          sub_1D79A4870();
          if (swift_dynamicCast())
          {
            v19 = v27;
            v20 = [v19 integerValue];

            if ((v20 ^ v18))
            {
LABEL_36:
              v21 = [objc_msgSend(v3 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              v22 = [v21 bundleChannelIDs];

              v23 = sub_1D7D3031C();
              LOBYTE(v21) = [v22 containsObject_];

              if ((v21 & 1) == 0)
              {
                goto LABEL_37;
              }

              return 1;
            }

LABEL_34:

            goto LABEL_37;
          }
        }

        else
        {
          sub_1D79F0014(&v30);
        }

        if (v18)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }
    }

    else
    {
      sub_1D79F0014(&v30);
    }

    v16 = 0;
    v18 = 0;
    goto LABEL_25;
  }

LABEL_37:
  v24 = *(v1 + 32);
  v25 = [a1 articleID];
  if (!v25)
  {
    sub_1D7D3034C();
    v25 = sub_1D7D3031C();
  }

  v26 = [v24 isArticleOnReadingList_];

  return v26;
}

id sub_1D7CDFD88(void *a1)
{
  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = sub_1D7D3034C();
    v7 = v6;

    if (v5 == 0x6C7070612E6D6F63 && v7 == 0xEE007377656E2E65)
    {

      return 0;
    }

    v9 = sub_1D7D3197C();

    if (v9)
    {
      return 0;
    }
  }

  result = [a1 isPaid];
  if (!result)
  {
    return result;
  }

  v11 = *(v1 + 24);
  v12 = [v11 purchaseProvider];
  v13 = [a1 sourceChannel];
  if (!v13)
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v14 = v13;
  if ([swift_unknownObjectRetain() tagType] != 3)
  {
    v16 = [v14 identifier];
    goto LABEL_16;
  }

  v15 = [v14 asSection];
  if (v15)
  {
    v16 = [v15 parentID];
    swift_unknownObjectRelease();
    if (v16)
    {
LABEL_16:
      v17 = sub_1D7D3034C();
      v19 = v18;

      v20 = [v12 purchasedTagIDs];
      v21 = sub_1D7D309AC();

      LOBYTE(v20) = sub_1D7D053C8(v17, v19, v21);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      if ((v20 & 1) == 0)
      {
        goto LABEL_18;
      }

      return 0;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
LABEL_18:
  v22 = [objc_msgSend(v11 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v23 = [v22 bundleChannelIDs];

  v24 = [a1 sourceChannel];
  if (v24)
  {
    v25 = [v24 identifier];
    swift_unknownObjectRelease();
    sub_1D7D3034C();
  }

  v26 = sub_1D7D3031C();

  v27 = [v23 containsObject_];

  return (v27 ^ 1);
}

uint64_t sub_1D7CE00F8()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_1D7CE0164@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8], 1);
    result = sub_1D7D28D2C();
    if (v9)
    {
      v6 = type metadata accessor for IssueTableOfContentsModule();
      v7 = swift_allocObject();
      sub_1D799D69C(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_1D799D69C(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &off_1F52A22E8;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CE0278@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TableOfContentsModule();
    v7 = swift_allocObject();
    result = sub_1D799D69C(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for TableOfContentsModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1D7CE0328()
{
  type metadata accessor for TableOfContentsViewController();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E86C8, &protocol descriptor for TableOfContentsStylerType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E86D0, &protocol descriptor for TableOfContentsRouterType, 1);
  sub_1D7D291EC();
  type metadata accessor for TableOfContentsRouter();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E86D8, &protocol descriptor for TableOfContentsEventHandlerType, 0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E86E0, &protocol descriptor for TableOfContentsInteractorType, 0);
  sub_1D7D291EC();

  sub_1D7CE3EE8(0);
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7CE3F7C(0);
  sub_1D7D291DC();

  type metadata accessor for TableOfContentsBlueprintModifierFactory();
  sub_1D7D291DC();

  sub_1D7CE3F9C(0);
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7CE4800(0);
  sub_1D7D291DC();

  sub_1D7D2BD6C();
  sub_1D7D291DC();

  sub_1D7CE4088(0);
  sub_1D7D291DC();

  sub_1D7CE493C(0);
  sub_1D7D291DC();

  sub_1D7CE44DC(0);
  sub_1D7D291DC();

  type metadata accessor for TableOfContentsBlueprintLayoutBuilder();
  sub_1D7D291DC();

  sub_1D7CE49F4(0);
  sub_1D7D291DC();

  sub_1D7992EFC(0, &unk_1EE0BF020, 0x1E69DC7F0);
  sub_1D7D291DC();

  sub_1D7CE4190(0);
  sub_1D7D291DC();

  sub_1D798C468(0, &unk_1EE0BFCE0, MEMORY[0x1E69D85B0], 0);
  sub_1D7D291EC();
  sub_1D7D2BA3C();
  sub_1D7D28ABC();

  sub_1D7CE4B30(0, v0);
  sub_1D7D291DC();

  sub_1D7CE430C(0);
  sub_1D7D291DC();

  sub_1D7CE4594(0);
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7CE4714(0);
  sub_1D7D291DC();

  type metadata accessor for TableOfContentsBlueprintViewCellProvider();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  type metadata accessor for TableOfContentsBlueprintViewSupplementaryViewProvider();
  sub_1D7D291DC();

  sub_1D7CE4B90(0, &qword_1EC9E87D8, MEMORY[0x1E69D81A8]);
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7D2A81C();
  sub_1D7D291DC();

  sub_1D7CE4C2C(0);
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7D2B4CC();
  sub_1D7D291DC();

  return result;
}

char *sub_1D7CE0B6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E86C8, &protocol descriptor for TableOfContentsStylerType, 1);
  result = sub_1D7D28D2C();
  if (!v42)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E86D8, &protocol descriptor for TableOfContentsEventHandlerType, 0);
  result = sub_1D7D28D2C();
  v3 = v39;
  if (!v39)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE49F4(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E8848, MEMORY[0x1E69B6B68], 1);
  result = sub_1D7D28D2C();
  if (!v38[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  if (!v34[0])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v32 = v40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v6 = result;
    v36 = v5;
    v37 = sub_1D7CE4E00(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
    v35[0] = v6;
    sub_1D7D2A50C();
    swift_allocObject();
    v7 = sub_1D7D2A4FC();
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v31[1] = v31;
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    v11 = (v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for TableOfContentsStyler();
    v36 = v14;
    v37 = &off_1F52A5C48;
    v35[0] = v13;
    v15 = type metadata accessor for TableOfContentsViewController();
    v16 = objc_allocWithZone(v15);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
    v18 = MEMORY[0x1EEE9AC00](v17, v17);
    v20 = (v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v34[3] = v14;
    v34[4] = &off_1F52A5C48;
    v34[0] = v22;
    v23 = &v16[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_pageIdentifierToDisplay];
    *v23 = 0;
    *(v23 + 1) = 0;
    sub_1D799CC84(v34, &v16[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_styler]);
    v24 = &v16[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_eventHandler];
    v25 = v32;
    *v24 = v3;
    *(v24 + 1) = v25;
    *&v16[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_blueprintViewController] = v4;
    sub_1D799CC84(v38, &v16[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_purchasePresenter]);
    *&v16[OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_commandContainer] = v7;
    v33.receiver = v16;
    v33.super_class = v15;
    swift_unknownObjectRetain();
    v26 = v4;

    v27 = objc_msgSendSuper2(&v33, sel_initWithNibName_bundle_, 0, 0);
    *(*(v27 + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_eventHandler) + 24) = &off_1F52A2958;
    swift_unknownObjectWeakAssign();
    v28 = *(v27 + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_blueprintViewController);
    v29 = v27;
    v30 = v28;
    sub_1D7D2B34C();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return v29;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1D7CE10D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CE570, &protocol descriptor for ColorPaletteProviding, 1);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for TableOfContentsStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52A5C48;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7CE1188@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E3A38, &protocol descriptor for IssueTableOfContentsActionHandlerType, 1);
  result = sub_1D7D28D2C();
  if (v8)
  {
    v5 = type metadata accessor for TableOfContentsRouter();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D799D69C(v9, v6 + 24);
    result = sub_1D799D69C(&v7, v6 + 64);
    a2[3] = v5;
    a2[4] = &off_1F52AF130;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7CE1264(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TableOfContentsViewController();
  v2 = sub_1D7D28D1C();
  swift_unknownObjectWeakAssign();
}

void *sub_1D7CE12E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E86E0, &protocol descriptor for TableOfContentsInteractorType, 0);
  result = sub_1D7D28D2C();
  v5 = v29;
  if (v29)
  {
    v6 = v30;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EC9E86D0, &protocol descriptor for TableOfContentsRouterType, 1);
    result = sub_1D7D28D2C();
    if (v28)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v8 = MEMORY[0x1EEE9AC00](v7, v7);
      v10 = (&v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v13 = type metadata accessor for TableOfContentsRouter();
      v26[3] = v13;
      v26[4] = &off_1F52AF130;
      v26[0] = v12;
      type metadata accessor for TableOfContentsEventHandler();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v26, v13);
      v16 = MEMORY[0x1EEE9AC00](v15, v15);
      v18 = (&v25[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v25[3] = v13;
      v25[4] = &off_1F52AF130;
      v25[0] = v20;
      v14[3] = 0;
      swift_unknownObjectWeakInit();
      v14[4] = v5;
      v14[5] = v6;
      sub_1D799CC84(v25, (v14 + 6));
      ObjectType = swift_getObjectType();
      v22 = *(v6 + 16);
      swift_unknownObjectRetain();

      v22(v23, &off_1F52B2468, ObjectType, v6);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v25);
      __swift_destroy_boxed_opaque_existential_1(v26);
      result = __swift_destroy_boxed_opaque_existential_1(v27);
      *a2 = v14;
      a2[1] = &off_1F52B2480;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CE15DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3EE8(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    *a2 = result;
    a2[1] = &off_1F52AAA50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7CE1640(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E2A88, &protocol descriptor for IssueLoaderType, 1);
  result = sub_1D7D28D2C();
  if (!v13[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F9C(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TableOfContentsBlueprintModifierFactory();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE60, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    sub_1D7CE3EE8(0);
    v7 = v6;
    v8 = objc_allocWithZone(v6);
    v9 = MEMORY[0x1E69E7D40];
    *(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60) + 8) = 0;
    swift_unknownObjectWeakInit();
    v10 = v8 + *((*v9 & *v8) + 0x88);
    *v10 = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 4) = 0;
    sub_1D799CC84(v13, v8 + *((*v9 & *v8) + 0x68));
    *(v8 + *((*v9 & *v8) + 0x70)) = v3;
    *(v8 + *((*v9 & *v8) + 0x78)) = v4;
    *(v8 + *((*v9 & *v8) + 0x80)) = v5;
    v12.receiver = v8;
    v12.super_class = v7;
    v11 = objc_msgSendSuper2(&v12, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D7CE189C(void **a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDA0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D7D28D1C();
  if (result)
  {
    [result addObserver_];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D798C468(0, &qword_1EC9E6828, &protocol descriptor for TableOfContentsCoordinatorType, 1);
    result = sub_1D7D28D2C();
    if (v11)
    {
      sub_1D799D69C(&v10, v12);
      sub_1D799CC84(v12, &v10);
      v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x88);
      swift_beginAccess();
      sub_1D7CE4E48(&v10, v3 + v5);
      swift_endAccess();
      v6 = v13;
      v7 = v14;
      __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      v8 = *(v7 + 16);
      v9 = v3;
      v8(v3, &off_1F52AAA48, v6, v7);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D7CE1A68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E8838, MEMORY[0x1E69B6488], 1);
  result = sub_1D7D28D2C();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C3BC(0, &qword_1EE0BEDA0, &protocolRef_FCBundleSubscriptionManagerType);
    result = sub_1D7D28D1C();
    if (result)
    {
      v3 = result;
      type metadata accessor for TableOfContentsBlueprintModifierFactory();
      v4 = swift_allocObject();
      sub_1D799D69C(&v5, v4 + 16);
      *(v4 + 56) = v3;
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

uint64_t sub_1D7CE1B58(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F7C(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7CE4088(0);
    result = sub_1D7D28D1C();
    if (result)
    {
      sub_1D7CE3F9C(0);
      swift_allocObject();
      return sub_1D7D2A6DC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7CE1C40(uint64_t a1, void *a2)
{
  sub_1D7CE4D20(0);
  swift_allocObject();
  sub_1D7D2BB8C();
  sub_1D7CE4D40(0, &qword_1EC9E8820, MEMORY[0x1E69D81B8]);
  swift_allocObject();
  sub_1D7CE4E00(&qword_1EC9E8828, sub_1D7CE4D20, MEMORY[0x1E69D8440]);
  sub_1D7D2B6BC();
  sub_1D7D2A6FC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7CE4800(0);
  if (sub_1D7D28D1C())
  {
    swift_allocObject();
    sub_1D7CE4E00(&qword_1EC9E8830, sub_1D7CE4800, MEMORY[0x1E69D86F0]);
    sub_1D7D2B6BC();
    sub_1D7D2A6FC();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1D7CE1DD8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE44DC(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFCE0, MEMORY[0x1E69D85B0], 0);
  result = sub_1D7D28CEC();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TableOfContentsBlueprintLayoutBuilder();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE493C(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2BD6C();
  result = sub_1D7D28CDC();
  if (result)
  {
    sub_1D7CE4800(0);
    swift_allocObject();
    return sub_1D7D2C0BC();
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1D7CE1FFC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4190(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0BFC70, MEMORY[0x1E69D8778], 1);
    result = sub_1D7D28D2C();
    if (v3)
    {
      sub_1D7CE4088(0);
      swift_allocObject();
      return sub_1D7D2A95C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CE2154(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_1D7CE2198(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CC8C8, &protocol descriptor for TableOfContentsHeaderViewStylerType, 1);
  result = sub_1D7D28D2C();
  if (!v39)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CC770, &protocol descriptor for TableOfContentsPDFCellViewStylerType, 1);
  result = sub_1D7D28D2C();
  if (!v37)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D3007C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v31[2] = v31;
    v5 = MEMORY[0x1EEE9AC00](v4, v4);
    v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
    v31[1] = v31;
    v10 = MEMORY[0x1EEE9AC00](v9, v9);
    v12 = (v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v7;
    v15 = *v12;
    v16 = type metadata accessor for TableOfContentsHeaderViewStyler();
    v35[3] = v16;
    v35[4] = &off_1F52A9A70;
    v35[0] = v14;
    v17 = type metadata accessor for TableOfContentsPDFCellViewStyler();
    v33 = v17;
    v34 = &off_1F52B2458;
    v32[0] = v15;
    type metadata accessor for TableOfContentsBlueprintLayoutBuilder();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v35, v16);
    v20 = MEMORY[0x1EEE9AC00](v19, v19);
    v22 = (v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    v25 = MEMORY[0x1EEE9AC00](v24, v24);
    v27 = (v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27, v25);
    v29 = *v22;
    v30 = *v27;
    v18[5] = v16;
    v18[6] = &off_1F52A9A70;
    v18[7] = v30;
    v18[2] = v29;
    v18[10] = v17;
    v18[11] = &off_1F52B2458;
    v18[12] = v3;
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D7CE25E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F7C(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4190(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFCE0, MEMORY[0x1E69D85B0], 0);
  result = sub_1D7D28CEC();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFC70, MEMORY[0x1E69D8778], 1);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4B90(0, &qword_1EC9E87D8, MEMORY[0x1E69D81A8]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2A81C();
  result = sub_1D7D28CDC();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7CE4E00(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
    sub_1D7CE49F4(0);
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2B35C();
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_1D7CE2910(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4B30(0, v1);
  result = sub_1D7D28CDC();
  if (result)
  {
    v3 = result;
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CE29C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &unk_1EE0BF020, 0x1E69DC7F0);
  result = sub_1D7D28CDC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE430C(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4594(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4714(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7CE4190(0);
    swift_allocObject();
    return sub_1D7D2AEFC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7CE2B34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4190(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2AF0C();

    sub_1D7D2BA3C();
    swift_allocObject();
    result = sub_1D7D2BA2C();
    v4 = MEMORY[0x1E69D8400];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CE2BEC()
{
  v0 = sub_1D7D2B00C();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7DB0], v2);
  return sub_1D7D2BA1C();
}

uint64_t sub_1D7CE2CBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2BD6C();
  result = sub_1D7D28CDC();
  if (result)
  {
    sub_1D7CE4B30(0, v2);
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2B90C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7CE2D54(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F7C(0);
  v2 = sub_1D7D28D1C();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE44DC(0);
  if (!sub_1D7D28D1C())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TableOfContentsBlueprintViewCellProvider();
  sub_1D799CC84(a1, v8);
  v4 = swift_allocObject();
  sub_1D799D69C(v8, v4 + 16);
  v5 = sub_1D7D28CFC();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TableOfContentsBlueprintViewSupplementaryViewProvider();
  if (sub_1D7D28D1C())
  {
    *&v8[0] = v3;
    sub_1D7CE430C(0);
    v7 = objc_allocWithZone(v6);
    sub_1D7D2BCFC();
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_1D7CE2EF0(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7992EFC(0, &unk_1EE0BF020, 0x1E69DC7F0);
  result = sub_1D7D28CDC();
  if (result)
  {
    v4 = result;
    sub_1D7992EFC(0, &qword_1EE0BF110, 0x1E69DCEF8);
    sub_1D7D3040C();
    sub_1D7D28C0C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7CE2FF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F7C(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE44DC(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4B90(0, &qword_1EC9E87D8, MEMORY[0x1E69D81A8]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7CE4E00(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
    sub_1D7CE4594(0);
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2BBEC();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D7CE3200(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7D2A81C();
  sub_1D7D28CDC();
  sub_1D7D2BBFC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7CE4C2C(0);
  if (sub_1D7D28D1C())
  {
    sub_1D7CE4E00(&qword_1EC9E8810, sub_1D7CE4C2C, MEMORY[0x1E69D84F8]);
  }

  return sub_1D7D2BC0C();
}

uint64_t sub_1D7CE330C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F7C(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7CE44DC(0);
    result = sub_1D7D28D1C();
    if (result)
    {
      sub_1D7CE4714(0);
      v4 = objc_allocWithZone(v3);
      return sub_1D7D2BE5C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D7CE33CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CC6B0, &protocol descriptor for TableOfContentsHeaderViewRendererType, 0);
  result = sub_1D7D28D2C();
  v3 = v22;
  if (v22)
  {
    v4 = v23;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, qword_1EE0CC4C8, &protocol descriptor for TableOfContentsPDFCellViewRendererType, 1);
    result = sub_1D7D28D2C();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      v6 = MEMORY[0x1EEE9AC00](v5, v5);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for TableOfContentsPDFCellViewRenderer();
      v19[3] = v11;
      v19[4] = &off_1F52A9498;
      v19[0] = v10;
      type metadata accessor for TableOfContentsBlueprintViewCellProvider();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      v14 = MEMORY[0x1EEE9AC00](v13, v13);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16, v14);
      v18 = *v16;
      v12[9] = v11;
      v12[10] = &off_1F52A9498;
      v12[6] = v18;
      v12[3] = 0;
      swift_unknownObjectWeakInit();
      v12[4] = v3;
      v12[5] = v4;
      __swift_destroy_boxed_opaque_existential_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7CE3650(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TableOfContentsViewController();
  v4 = sub_1D7D28D1C();
  v3 = &off_1F52A2940;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void *sub_1D7CE36E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CC6B0, &protocol descriptor for TableOfContentsHeaderViewRendererType, 0);
  result = sub_1D7D28D2C();
  if (v2)
  {
    type metadata accessor for TableOfContentsBlueprintViewSupplementaryViewProvider();
    result = swift_allocObject();
    result[2] = v2;
    result[3] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CE3778(void *a1)
{
  v2 = sub_1D7D2BD2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D7D2BD4C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D7CE4B90(0, &qword_1EC9E8808, MEMORY[0x1E69D81A0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F7C(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v16 = result;
    (*(v11 + 104))(v14, *MEMORY[0x1E69D8198], v10);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x1E69D8518], v2);
    sub_1D7D2BD3C();
    v17[1] = v16;
    sub_1D7CE4B90(0, &qword_1EC9E87D8, MEMORY[0x1E69D81A8]);
    swift_allocObject();
    return sub_1D7D2B68C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CE3A04(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7CE44DC(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7CE4E00(&qword_1EC9E8800, sub_1D7CE44DC, MEMORY[0x1E69D7EA8]);
    return sub_1D7D2B65C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7CE3AC4(void *a1)
{
  sub_1D7B355BC(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7D3B4E0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4C2C(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = sub_1D7CE4E00(&qword_1EC9E87F8, sub_1D7CE4C2C, MEMORY[0x1E69D8500]);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7D2B4CC();
    result = sub_1D7D28CDC();
    if (result)
    {
      v6 = MEMORY[0x1E69D8038];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_1D7D2A81C();
      swift_allocObject();
      return sub_1D7D2A80C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D7CE3C08(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4190(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE3F7C(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7CE4E00(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
    sub_1D7CE4C2C(0);
    swift_allocObject();
    return sub_1D7D2BCCC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7CE3DB4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7CE49F4(0);
  if (sub_1D7D28D1C())
  {
    sub_1D7CE4E00(&qword_1EC9E87F0, sub_1D7CE49F4, MEMORY[0x1E69D7F08]);
  }

  return sub_1D7D2BCDC();
}

uint64_t sub_1D7CE3E60(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE4190(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2AF0C();

    sub_1D7D2B4CC();
    swift_allocObject();
    return sub_1D7D2B4BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7CE3EE8(uint64_t a1)
{
  if (!qword_1EC9E86E8)
  {
    v2 = type metadata accessor for TableOfContentsBlueprintModifierFactory();
    v3 = sub_1D7CE4E00(&qword_1EC9E86F0, type metadata accessor for TableOfContentsBlueprintModifierFactory, &unk_1D7D3ED80);
    v5 = type metadata accessor for TableOfContentsInteractor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC9E86E8);
    }
  }
}

void sub_1D7CE3F9C(uint64_t a1)
{
  if (!qword_1EC9E8710)
  {
    sub_1D7CE3F7C(255);
    sub_1D7CE4088(255);
    sub_1D7CE4E00(&qword_1EC9E8740, sub_1D7CE3F7C, MEMORY[0x1E69D7A78]);
    sub_1D7CE4E00(&qword_1EC9E87A0, sub_1D7CE4088, MEMORY[0x1E69D7B10]);
    v1 = sub_1D7D2A73C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E8710);
    }
  }
}

void sub_1D7CE4088(uint64_t a1)
{
  if (!qword_1EC9E8718)
  {
    type metadata accessor for TableOfContentsModel(255);
    sub_1D7CE4190(255);
    sub_1D79ECABC();
    sub_1D7CE4E00(&qword_1EC9E2190, type metadata accessor for TableOfContentsModel, &unk_1D7D4C308);
    sub_1D7CE4E00(&qword_1EC9E8798, sub_1D7CE4190, MEMORY[0x1E69D7D50]);
    v1 = sub_1D7D2A96C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E8718);
    }
  }
}

void sub_1D7CE4190(uint64_t a1)
{
  if (!qword_1EC9E8720)
  {
    sub_1D7992EFC(255, &unk_1EE0BF020, 0x1E69DC7F0);
    sub_1D7CE430C(255);
    sub_1D7CE4594(255);
    sub_1D7CE4714(255);
    type metadata accessor for TableOfContentsViewController();
    sub_1D7CE4E00(&qword_1EC9E8780, sub_1D7CE430C, MEMORY[0x1E69D8510]);
    sub_1D7CE4E00(&qword_1EC9E8788, sub_1D7CE4594, MEMORY[0x1E69D8448]);
    sub_1D7CE4E00(&qword_1EC9E8790, sub_1D7CE4714, MEMORY[0x1E69D8600]);
    v1 = sub_1D7D2AF1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E8720);
    }
  }
}

void sub_1D7CE430C(uint64_t a1)
{
  if (!qword_1EC9E8730)
  {
    sub_1D7CE3F7C(255);
    sub_1D7CE44DC(255);
    type metadata accessor for TableOfContentsBlueprintViewCellProvider();
    type metadata accessor for TableOfContentsBlueprintViewSupplementaryViewProvider();
    sub_1D7CE4E00(&qword_1EC9E8740, sub_1D7CE3F7C, MEMORY[0x1E69D7A78]);
    sub_1D7CE4E00(&qword_1EC9E8748, sub_1D7CE44DC, MEMORY[0x1E69D7EB0]);
    sub_1D7CE4E00(&qword_1EC9E8750, type metadata accessor for TableOfContentsBlueprintViewCellProvider, &unk_1D7D4843C);
    sub_1D7CE4E00(&qword_1EC9E8758, type metadata accessor for TableOfContentsBlueprintViewSupplementaryViewProvider, &unk_1D7D55CB8);
    sub_1D7CE4E00(&qword_1EC9E8760, type metadata accessor for TableOfContentsLayoutModel, &unk_1D7D3E1F4);
    v1 = sub_1D7D2BD1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E8730);
    }
  }
}

void sub_1D7CE44DC(uint64_t a1)
{
  if (!qword_1EC9E8738)
  {
    type metadata accessor for TableOfContentsLayoutModel(255);
    sub_1D7A2B73C();
    sub_1D7CE4E00(&qword_1EC9E1A28, type metadata accessor for TableOfContentsLayoutModel, &unk_1D7D3E1BC);
    v1 = sub_1D7D2B28C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E8738);
    }
  }
}

void sub_1D7CE4594(uint64_t a1)
{
  if (!qword_1EC9E8768)
  {
    sub_1D7CE3F7C(255);
    sub_1D7CE44DC(255);
    type metadata accessor for TableOfContentsViewController();
    sub_1D7CE4E00(&qword_1EC9E8740, sub_1D7CE3F7C, MEMORY[0x1E69D7A78]);
    sub_1D7CE4E00(&qword_1EC9E8748, sub_1D7CE44DC, MEMORY[0x1E69D7EB0]);
    sub_1D7CE4E00(&qword_1EC9E8770, type metadata accessor for TableOfContentsViewController, &unk_1D7D489F0);
    sub_1D7CE4E00(&qword_1EC9E8760, type metadata accessor for TableOfContentsLayoutModel, &unk_1D7D3E1F4);
    v1 = sub_1D7D2BC1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E8768);
    }
  }
}

void sub_1D7CE4714(uint64_t a1)
{
  if (!qword_1EC9E8778)
  {
    sub_1D7CE3F7C(255);
    sub_1D7CE44DC(255);
    sub_1D7CE4E00(&qword_1EC9E8740, sub_1D7CE3F7C, MEMORY[0x1E69D7A78]);
    sub_1D7CE4E00(&qword_1EC9E8748, sub_1D7CE44DC, MEMORY[0x1E69D7EB0]);
    v1 = sub_1D7D2BE6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E8778);
    }
  }
}

void sub_1D7CE4800(uint64_t a1)
{
  if (!qword_1EC9E87A8)
  {
    sub_1D7CE44DC(255);
    type metadata accessor for TableOfContentsBlueprintLayoutBuilder();
    sub_1D7CE493C(255);
    sub_1D7CE4E00(&qword_1EC9E8748, sub_1D7CE44DC, MEMORY[0x1E69D7EB0]);
    sub_1D7CE4E00(&qword_1EC9E87C0, type metadata accessor for TableOfContentsBlueprintLayoutBuilder, &unk_1D7D5FF50);
    sub_1D7CE4E00(&qword_1EC9E87C8, sub_1D7CE493C, MEMORY[0x1E69D84A0]);
    v1 = sub_1D7D2C0DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E87A8);
    }
  }
}

void sub_1D7CE493C(uint64_t a1)
{
  if (!qword_1EC9E87B0)
  {
    type metadata accessor for TableOfContentsLayoutModel(255);
    sub_1D7AEAFC8();
    sub_1D7CE4E00(&qword_1EC9E8760, type metadata accessor for TableOfContentsLayoutModel, &unk_1D7D3E1F4);
    v1 = sub_1D7D2BC5C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E87B0);
    }
  }
}

void sub_1D7CE49F4(uint64_t a1)
{
  if (!qword_1EC9E87D0)
  {
    sub_1D7CE3F7C(255);
    sub_1D7CE4190(255);
    type metadata accessor for TableOfContentsViewController();
    sub_1D7CE4E00(&qword_1EC9E8740, sub_1D7CE3F7C, MEMORY[0x1E69D7A78]);
    sub_1D7CE4E00(&qword_1EC9E8798, sub_1D7CE4190, MEMORY[0x1E69D7D50]);
    sub_1D7CE4E00(&qword_1EC9E8770, type metadata accessor for TableOfContentsViewController, &unk_1D7D489F0);
    v1 = sub_1D7D2B37C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E87D0);
    }
  }
}

void sub_1D7CE4B30(uint64_t a1, __n128 a2)
{
  if (!qword_1EE0BFD80)
  {
    sub_1D7D2BD6C();
    v2 = sub_1D7D2B91C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0BFD80);
    }
  }
}

void sub_1D7CE4B90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D7CE3F7C(255);
    v7 = v6;
    v8 = sub_1D7CE4E00(&qword_1EC9E8740, sub_1D7CE3F7C, MEMORY[0x1E69D7A78]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D7CE4C2C(uint64_t a1)
{
  if (!qword_1EC9E87E0)
  {
    sub_1D7CE4190(255);
    sub_1D7CE3F7C(255);
    sub_1D7CE4E00(&qword_1EC9E8798, sub_1D7CE4190, MEMORY[0x1E69D7D50]);
    sub_1D7CE4E00(&qword_1EC9E87E8, sub_1D7CE3F7C, MEMORY[0x1E69D7A70]);
    v1 = sub_1D7D2BCEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E87E0);
    }
  }
}

void sub_1D7CE4D40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TableOfContentsSectionDescriptor;
    v8[1] = type metadata accessor for TableOfContentsModel(255);
    v8[2] = sub_1D79ECABC();
    v8[3] = sub_1D7CE4E00(&qword_1EC9E2190, type metadata accessor for TableOfContentsModel, &unk_1D7D4C308);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7CE4E00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7CE4E48(uint64_t a1, uint64_t a2)
{
  sub_1D7CE4EAC(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D7CE4EAC(uint64_t a1)
{
  if (!qword_1EC9E6820)
  {
    sub_1D798C468(255, &qword_1EC9E6828, &protocol descriptor for TableOfContentsCoordinatorType, 1);
    v1 = sub_1D7D3130C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E6820);
    }
  }
}

uint64_t sub_1D7CE4F28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[2] = a4;
  v14[1] = a5;
  sub_1D7CE7550(0, &qword_1EC9E8938, sub_1D7CE74FC, &type metadata for ArticleTextRanges.Paragraph.Metadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE74FC();
  sub_1D7D31B1C();
  v17 = 0;
  v12 = v14[3];
  sub_1D7D3188C();
  if (!v12)
  {
    v16 = 1;
    sub_1D7D318AC();
    v15 = 2;
    sub_1D7D318AC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D7CE50E4(void *a1)
{
  v3 = v1;
  sub_1D7CE7550(0, &qword_1EC9E88E8, sub_1D7CE71C0, &type metadata for ArticleTextRanges.Paragraph.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE71C0();
  sub_1D7D31B1C();
  LOBYTE(v13[0]) = 0;
  sub_1D7D3189C();
  if (!v2)
  {
    LOBYTE(v13[0]) = 1;
    sub_1D7D3189C();
    v11 = *(v3 + 32);
    v13[0] = *(v3 + 16);
    v13[1] = v11;
    v14 = 2;
    sub_1D7CE7268();
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7CE52BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a4;
  sub_1D7CE7550(0, &qword_1EC9E8880, sub_1D7CE6D40, &type metadata for ArticleTextRanges.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE6D40();
  sub_1D7D31B1C();
  v16 = a2;
  v17 = a3;
  v18 = 0;
  sub_1D7CE6E8C();
  v13 = v15[1];
  sub_1D7D318BC();
  if (!v13)
  {
    v16 = v15[0];
    v18 = 1;
    sub_1D7CE6DE8();
    sub_1D7CE6EE0(&qword_1EC9E8890, sub_1D7CE6F4C, MEMORY[0x1E69E6300]);
    sub_1D7D318BC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D7CE54BC(uint64_t a1)
{
  v2 = sub_1D7CE716C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7CE54F8(uint64_t a1)
{
  v2 = sub_1D7CE716C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7CE5534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1D7CE7550(0, &qword_1EC9E88B8, sub_1D7CE716C, &type metadata for ArticleTextRanges.Metadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE716C();
  sub_1D7D31AFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v16;
  v11 = sub_1D7D317AC();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v11;
  v10[1] = v13;
  return result;
}

uint64_t sub_1D7CE56E4(void *a1)
{
  sub_1D7CE7550(0, &qword_1EC9E88E0, sub_1D7CE716C, &type metadata for ArticleTextRanges.Metadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE716C();
  sub_1D7D31B1C();
  sub_1D7D3188C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D7CE584C()
{
  if (*v0)
  {
    return 0x676E615274786574;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_1D7CE58C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7CE640C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7CE58F0(uint64_t a1)
{
  v2 = sub_1D7CE74FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7CE592C(uint64_t a1)
{
  v2 = sub_1D7CE74FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7CE5968@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D7CE6538(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1D7CE59B8()
{
  v1 = 0x646E45656D6974;
  if (*v0 != 1)
  {
    v1 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72617453656D6974;
  }
}

uint64_t sub_1D7CE5A18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7CE6770(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7CE5A40(uint64_t a1)
{
  v2 = sub_1D7CE71C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7CE5A7C(uint64_t a1)
{
  v2 = sub_1D7CE71C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7CE5AB8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D7CE6890(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D7CE5B38()
{
  if (*v0)
  {
    return 0x7061726761726170;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1D7CE5B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1D7D3197C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7061726761726170 && a2 == 0xEA00000000007368)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D7D3197C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D7CE5C5C(uint64_t a1)
{
  v2 = sub_1D7CE6D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7CE5C98(uint64_t a1)
{
  v2 = sub_1D7CE6D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7CE5CD4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D7CE6ACC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1D7CE5D24(uint64_t a1, double a2)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 16) + 1;
  while (--v3)
  {
    v4 = *(v2 - 1);
    v5 = *v2;
    v2 += 6;
    if (v4 <= a2 && v5 > a2)
    {
      return *&v4;
    }
  }

  return 0;
}

uint64_t sub_1D7CE5D64(char **isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 64;
    v6 = MEMORY[0x1E69E7CC0];
    v54 = a2 + 64;
    do
    {
      v55 = v6;
      v7 = (v5 + 48 * v4);
      v6 = v4;
      while (1)
      {
        if (v6 >= v3)
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v4 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_40;
        }

        v9 = *(v7 - 2);
        v8 = *(v7 - 1);
        v56 = *v7;
        v58 = *(v7 - 2);

        v10 = [isUniquelyReferenced_nonNull_native componentIdentifier];
        v11 = sub_1D7D3034C();
        v13 = v12;

        if (v9 == v11 && v8 == v13)
        {
          break;
        }

        v15 = sub_1D7D3197C();

        if (v15)
        {
          goto LABEL_14;
        }

        v6 = (v6 + 1);
        v7 += 3;
        if (v4 == v3)
        {
          v6 = v55;
          goto LABEL_19;
        }
      }

LABEL_14:
      v6 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7A5C714(0, v55[2] + 1, 1);
        v6 = v55;
      }

      v5 = v54;
      v17 = v6[2];
      v16 = v6[3];
      if (v17 >= v16 >> 1)
      {
        sub_1D7A5C714((v16 > 1), v17 + 1, 1);
        v6 = v55;
      }

      v6[2] = v17 + 1;
      v18 = &v6[6 * v17];
      *(v18 + 2) = v58;
      v18[6] = v9;
      v18[7] = v8;
      *(v18 + 4) = v56;
    }

    while (v4 != v3);
LABEL_19:
    v19 = v6[2];
    if (!v19)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    v19 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v19)
    {
LABEL_29:
      if (qword_1EE0CAF08 == -1)
      {
LABEL_30:
        v28 = qword_1EE0CAF10;
        v29 = sub_1D7D30C4C();
        sub_1D79F3AB0(0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1D7D3B4E0;
        v31 = [isUniquelyReferenced_nonNull_native componentIdentifier];
        v32 = sub_1D7D3034C();
        v34 = v33;

        v35 = MEMORY[0x1E69E6158];
        *(v30 + 56) = MEMORY[0x1E69E6158];
        v36 = sub_1D79D6AE0();
        *(v30 + 64) = v36;
        *(v30 + 32) = v32;
        *(v30 + 40) = v34;
        v37 = MEMORY[0x1DA70E0B0](v6, &type metadata for ArticleTextRanges.Paragraph);
        v39 = v38;

        *(v30 + 96) = v35;
        *(v30 + 104) = v36;
        *(v30 + 72) = v37;
        *(v30 + 80) = v39;
        sub_1D7D29AAC("Didn't find any paragraphs in the mapping for position component %{public}@. Mapping: %{public}@", 96, 2, &dword_1D7987000, v28, v29, v30);

        return 0;
      }

LABEL_43:
      swift_once();
      goto LABEL_30;
    }
  }

  v20 = v6[4];
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();

  if (v21)
  {
    v57 = isUniquelyReferenced_nonNull_native;
    v22 = 0;
    v23 = v6 + 9;
    isUniquelyReferenced_nonNull_native = &selRef_destinationURL;
    while (v22 < v6[2])
    {
      v24 = v6;
      v25 = *(v23 - 5);
      v26 = *(v23 - 1);
      v6 = *v23;

      v27 = [v21 characterIndex];
      if (v27 >= v26)
      {
        if (__OFADD__(v26, v6))
        {
          goto LABEL_42;
        }

        if (v27 < (v6 + v26))
        {

          return v25;
        }
      }

      ++v22;

      v23 += 6;
      v6 = v24;
      if (v19 == v22)
      {
        if (qword_1EE0CAF08 != -1)
        {
          swift_once();
        }

        v40 = qword_1EE0CAF10;
        v41 = sub_1D7D30C4C();
        sub_1D79F3AB0(0);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1D7D3B4E0;
        v43 = MEMORY[0x1DA70E0B0](v6, &type metadata for ArticleTextRanges.Paragraph);
        v45 = v44;

        v46 = MEMORY[0x1E69E6158];
        *(v42 + 56) = MEMORY[0x1E69E6158];
        v47 = sub_1D79D6AE0();
        *(v42 + 64) = v47;
        *(v42 + 32) = v43;
        *(v42 + 40) = v45;
        [v21 characterIndex];
        v48 = sub_1D7D3190C();
        *(v42 + 96) = v46;
        *(v42 + 104) = v47;
        *(v42 + 72) = v48;
        *(v42 + 80) = v49;
        sub_1D7D29AAC("Unable to find a paragraph matching the text component scroll position, return the first paragraph matching the component. Paragraphs %{public}@, text component position character index: %{public}@", 197, 2, &dword_1D7987000, v40, v41, v42);

        return v20;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (qword_1EE0CAF08 != -1)
  {
    swift_once();
  }

  v50 = qword_1EE0CAF10;
  v51 = sub_1D7D30C4C();
  sub_1D79F3AB0(0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1D7D3B4D0;
  sub_1D7D315DC();
  *(v52 + 56) = MEMORY[0x1E69E6158];
  *(v52 + 64) = sub_1D79D6AE0();
  *(v52 + 32) = 0;
  *(v52 + 40) = 0xE000000000000000;
  sub_1D7D29AAC("Didn't find text position data, returning the first known paragraph for the component %{public}@", 96, 2, &dword_1D7987000, v50, v51, v52);

  return v20;
}

id sub_1D7CE6344(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1 + 64);
  do
  {
    if (*(v3 - 4) <= a2 && *(v3 - 3) > a2)
    {
      v5 = *v3;
      v6 = objc_allocWithZone(MEMORY[0x1E69CE0C0]);

      v7 = sub_1D7D3031C();

      v8 = [v6 initWithComponentIdentifier:v7 canvasWidth:*&v5 relativePageOffset:0.0 characterIndex:0.0 relativeTextOffset:0.0];

      return v8;
    }

    v3 += 6;
    --v2;
  }

  while (v2);
  return 0;
}

uint64_t sub_1D7CE640C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEB00000000644974;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E615274786574 && a2 == 0xEE00747261745365 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E615274786574 && a2 == 0xEF6874676E654C65)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D7D3197C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D7CE6538(void *a1)
{
  sub_1D7CE7550(0, &qword_1EC9E8928, sub_1D7CE74FC, &type metadata for ArticleTextRanges.Paragraph.Metadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE74FC();
  sub_1D7D31AFC();
  if (!v1)
  {
    v14 = 0;
    v9 = sub_1D7D317AC();
    v13 = 1;
    sub_1D7D317CC();
    v12 = 2;
    sub_1D7D317CC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1D7CE6770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72617453656D6974 && a2 == 0xE900000000000074;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E45656D6974 && a2 == 0xE700000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D7D3197C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D7CE6890@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1D7CE7550(0, &qword_1EC9E88C8, sub_1D7CE71C0, &type metadata for ArticleTextRanges.Paragraph.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE71C0();
  sub_1D7D31AFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v19;
  LOBYTE(v20) = 0;
  sub_1D7D317BC();
  v12 = v11;
  LOBYTE(v20) = 1;
  sub_1D7D317BC();
  v14 = v13;
  v23 = 2;
  sub_1D7CE7214();
  sub_1D7D317DC();
  (*(v6 + 8))(v9, v5);
  v18 = v20;
  v15 = v21;
  v16 = v22;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v12;
  *(v10 + 8) = v14;
  *(v10 + 16) = v18;
  *(v10 + 32) = v15;
  *(v10 + 40) = v16;
  return result;
}

uint64_t sub_1D7CE6ACC(void *a1)
{
  sub_1D7CE7550(0, &qword_1EC9E8850, sub_1D7CE6D40, &type metadata for ArticleTextRanges.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CE6D40();
  sub_1D7D31AFC();
  if (!v1)
  {
    v12 = 0;
    sub_1D7CE6D94();
    sub_1D7D317DC();
    v9 = v11;
    sub_1D7CE6DE8();
    v12 = 1;
    sub_1D7CE6EE0(&qword_1EC9E8870, sub_1D7CE6E38, MEMORY[0x1E69E6330]);
    sub_1D7D317DC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D7CE6D40()
{
  result = qword_1EC9E8858;
  if (!qword_1EC9E8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8858);
  }

  return result;
}

unint64_t sub_1D7CE6D94()
{
  result = qword_1EC9E8860;
  if (!qword_1EC9E8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8860);
  }

  return result;
}

void sub_1D7CE6DE8()
{
  if (!qword_1EC9E8868)
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E8868);
    }
  }
}

unint64_t sub_1D7CE6E38()
{
  result = qword_1EC9E8878;
  if (!qword_1EC9E8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8878);
  }

  return result;
}

unint64_t sub_1D7CE6E8C()
{
  result = qword_1EC9E8888;
  if (!qword_1EC9E8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8888);
  }

  return result;
}

uint64_t sub_1D7CE6EE0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D7CE6DE8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7CE6F4C()
{
  result = qword_1EC9E8898;
  if (!qword_1EC9E8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8898);
  }

  return result;
}

uint64_t sub_1D7CE6FB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7CE6FF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D7CE7068()
{
  result = qword_1EC9E88A0;
  if (!qword_1EC9E88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E88A0);
  }

  return result;
}

unint64_t sub_1D7CE70C0()
{
  result = qword_1EC9E88A8;
  if (!qword_1EC9E88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E88A8);
  }

  return result;
}

unint64_t sub_1D7CE7118()
{
  result = qword_1EC9E88B0;
  if (!qword_1EC9E88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E88B0);
  }

  return result;
}

unint64_t sub_1D7CE716C()
{
  result = qword_1EC9E88C0;
  if (!qword_1EC9E88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E88C0);
  }

  return result;
}

unint64_t sub_1D7CE71C0()
{
  result = qword_1EC9E88D0;
  if (!qword_1EC9E88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E88D0);
  }

  return result;
}

unint64_t sub_1D7CE7214()
{
  result = qword_1EC9E88D8;
  if (!qword_1EC9E88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E88D8);
  }

  return result;
}

unint64_t sub_1D7CE7268()
{
  result = qword_1EC9E88F0;
  if (!qword_1EC9E88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E88F0);
  }

  return result;
}

unint64_t sub_1D7CE72F0()
{
  result = qword_1EC9E88F8;
  if (!qword_1EC9E88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E88F8);
  }

  return result;
}

unint64_t sub_1D7CE7348()
{
  result = qword_1EC9E8900;
  if (!qword_1EC9E8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8900);
  }

  return result;
}

unint64_t sub_1D7CE73A0()
{
  result = qword_1EC9E8908;
  if (!qword_1EC9E8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8908);
  }

  return result;
}

unint64_t sub_1D7CE73F8()
{
  result = qword_1EC9E8910;
  if (!qword_1EC9E8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8910);
  }

  return result;
}

unint64_t sub_1D7CE7450()
{
  result = qword_1EC9E8918;
  if (!qword_1EC9E8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8918);
  }

  return result;
}

unint64_t sub_1D7CE74A8()
{
  result = qword_1EC9E8920;
  if (!qword_1EC9E8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8920);
  }

  return result;
}

unint64_t sub_1D7CE74FC()
{
  result = qword_1EC9E8930;
  if (!qword_1EC9E8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8930);
  }

  return result;
}

void sub_1D7CE7550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D7CE75CC()
{
  result = qword_1EC9E8940;
  if (!qword_1EC9E8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8940);
  }

  return result;
}

unint64_t sub_1D7CE7624()
{
  result = qword_1EC9E8948;
  if (!qword_1EC9E8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8948);
  }

  return result;
}

unint64_t sub_1D7CE767C()
{
  result = qword_1EC9E8950;
  if (!qword_1EC9E8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8950);
  }

  return result;
}

uint64_t EndOfArticleBlueprintViewSupplementaryViewProvider.supplementaryView(section:layoutSection:view:supplementaryData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v4 = type metadata accessor for EndOfArticleLayoutSectionDescriptor.Footer(0);
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v47 = &v45 - v9;
  v10 = sub_1D7D2EA2C();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EndOfArticleLayoutSectionDescriptor.Header(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v45 - v21;
  v23 = sub_1D7D2BC2C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A600A4(0);
  sub_1D7D2B04C();
  v28 = v54;
  v53 = v55;
  v48 = v56;
  sub_1D7D2BA6C();
  v29 = (*(v24 + 88))(v27, v23);
  if (v29 == *MEMORY[0x1E69D8478])
  {
    v30 = sub_1D7D2BA7C();
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v30 < *(v28 + 16))
      {
        sub_1D7CE7D4C(v28 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v30, v22, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Header);
        sub_1D7CE7D4C(v22, v18, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Header);
        v32 = v51;
        v31 = v52;
        (*(v51 + 32))(v13, v18, v52);
        __swift_project_boxed_opaque_existential_1((v49 + 32), *(v49 + 56));
        v33 = sub_1D7D2EA4C();

        (*(v32 + 8))(v13, v31);
        v34 = v22;
        v35 = type metadata accessor for EndOfArticleLayoutSectionDescriptor.Header;
LABEL_10:
        sub_1D7CE7DB4(v34, v35);
        return v33;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v29 == *MEMORY[0x1E69D8470])
  {
    v36 = sub_1D7D2BA7C();
    v37 = *(v28 + 16);
    v38 = __OFSUB__(v36, v37);
    v39 = v36 - v37;
    if (!v38)
    {
      if ((v39 & 0x8000000000000000) == 0)
      {
        if (v39 < *(v53 + 16))
        {
          v40 = v47;
          sub_1D7CE7D4C(v53 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v39, v47, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Footer);
          v41 = v46;
          sub_1D7CE7D4C(v40, v46, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Footer);
          v43 = v51;
          v42 = v52;
          (*(v51 + 32))(v13, v41, v52);
          __swift_project_boxed_opaque_existential_1((v49 + 32), *(v49 + 56));
          v33 = sub_1D7D2EA4C();

          (*(v43 + 8))(v13, v42);
          v34 = v40;
          v35 = type metadata accessor for EndOfArticleLayoutSectionDescriptor.Footer;
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

uint64_t sub_1D7CE7D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7CE7DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EndOfArticleBlueprintViewSupplementaryViewProvider.deinit()
{
  sub_1D79C92AC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  return v0;
}

uint64_t EndOfArticleBlueprintViewSupplementaryViewProvider.__deallocating_deinit()
{
  sub_1D79C92AC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CE7F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7CE8008(uint64_t a1, void *a2)
{
  sub_1D7D307BC();
  swift_getWitnessTable();
  sub_1D7D3059C();

  swift_getWitnessTable();
  sub_1D7D3151C();
  v5 = v2;
  v3 = sub_1D7D3151C();

  *v5 = v3;
  return result;
}

uint64_t sub_1D7CE814C@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a3[2];
  sub_1D7D307BC();

  swift_getWitnessTable();
  sub_1D7D30A7C();

  if (v12)
  {
    v7 = *(v6 - 8);
    v8 = 1;
  }

  else
  {
    sub_1D7D307CC();
    sub_1D7CEAA74(v6, v6);
    v7 = *(v6 - 8);
    swift_allocObject();
    v9 = sub_1D7D3068C();
    (*(v7 + 16))(v10, a4, v6);
    sub_1D7CE8008(v9, a3);

    v8 = 0;
  }

  return (*(v7 + 56))(a4, v8, 1, v6);
}

uint64_t sub_1D7CE8340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 24))(a3, a4);
  sub_1D7B3DC5C(&v10, v6, v7);

  result = (*(a4 + 32))(a3, a4);
  if (v9)
  {
    sub_1D7B3DC5C(&v10, result, v9);
  }

  return result;
}

BOOL sub_1D7CE8418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  v7 = *(a4 + 24);

  v8 = v7(a3, a4);
  LOBYTE(a3) = sub_1D7D053C8(v8, v9, v6);

  return (a3 & 1) == 0;
}

uint64_t sub_1D7CE84A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 32))(a3, a4);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = *(a2 + 16);

    v10 = sub_1D7D053C8(v7, v8, v9);

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_1D7CE8544(uint64_t a1, double a2)
{
  v5 = sub_1D798F168(0, qword_1EE0BCAD0, &protocol descriptor for EndOfArticleQuotaCandidate);
  v6 = sub_1D7D3065C();
  v7 = ceil(*(a1 + 16) * a2);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (qword_1EE0CA130 != -1)
  {
LABEL_11:
    swift_once();
  }

  v8 = v2 < 1;
  v9 = v2 & ~(v2 >> 63);
  v10 = qword_1EE0CA138;
  sub_1D79F3AB0(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7D3B4E0;
  v12 = MEMORY[0x1DA70E0B0](a1, v5);
  v14 = v13;
  v15 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D79D6AE0();
  *(v11 + 64) = v16;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v17 = sub_1D7CE8BAC(v9, v8);
  *(v11 + 96) = v15;
  *(v11 + 104) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = v18;
  v19 = sub_1D7D30C6C();
  sub_1D7D29AAC("ArticleRecirculationConfig.SectionQuotas: Paid Candidates %{public}@ Validation %{public}@", 90, 2, &dword_1D7987000, v10, v19, v11);

  return v9;
}

uint64_t sub_1D7CE8744(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D798F168(0, qword_1EE0BCAD0, &protocol descriptor for EndOfArticleQuotaCandidate);
  v5 = sub_1D7D3065C();
  v6 = a2 - v5;
  if (__OFSUB__(a2, v5))
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1EE0CA130 != -1)
  {
LABEL_5:
    swift_once();
  }

  v7 = v6 < 1;
  v8 = v6 & ~(v6 >> 63);
  v9 = qword_1EE0CA138;
  sub_1D79F3AB0(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7D3B4E0;
  v11 = MEMORY[0x1DA70E0B0](a1, v4);
  v13 = v12;
  v14 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1D79D6AE0();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v16 = sub_1D7CE8BAC(v8, v7);
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 72) = v16;
  *(v10 + 80) = v17;
  v18 = sub_1D7D30C6C();
  sub_1D7D29AAC("ArticleRecirculationConfig.SectionQuotas: Accessible Candidates %{public}@ Validation %{public}@", 96, 2, &dword_1D7987000, v9, v18, v10);

  return v8;
}

void sub_1D7CE88D8(uint64_t *__return_ptr a1@<X8>, id a2@<X3>, uint64_t a3@<X0>, uint64_t a4@<X1>, uint64_t a5@<X2>)
{
  if (a4 && *(a5 + 16) && (v8 = sub_1D7A18FFC(a3, a4), (v9 & 1) != 0))
  {
    v10 = (*(a5 + 56) + 16 * v8);
    v11 = *v10;
    v12 = v10[1];
    if (qword_1EE0CA130 != -1)
    {
      swift_once();
    }

    sub_1D79F3AB0(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7D3B4E0;
    v14 = MEMORY[0x1E69E6438];
    *(v13 + 56) = MEMORY[0x1E69E63B0];
    *(v13 + 64) = v14;
    v15 = MEMORY[0x1E69E6530];
    *(v13 + 32) = v11;
    v16 = MEMORY[0x1E69E65A8];
    *(v13 + 96) = v15;
    *(v13 + 104) = v16;
    *(v13 + 72) = v12;
    sub_1D7D30C6C();
    sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Building article recirculation quota satisfier with paidHeadlineRatio: %g, minAccessibleArticles: %d", v26, v27);

    a1[3] = &type metadata for EndOfArticleQuotaSatisfierFactory.ArticleRecirculationQuotaSatisfier;
    a1[4] = &off_1F52B3910;
    *a1 = v11;
    v17 = 1;
  }

  else
  {
    v18 = [a2 possiblyUnfetchedAppConfiguration];
    [v18 endOfArticleMinPaidHeadlineRatio];
    v20 = v19;
    v21 = [v18 endOfArticleMaxInaccessiblePaidArticleCount];
    v12 = [v18 endOfArticleExpireArticlesAfter];
    if (qword_1EE0CA130 != -1)
    {
      swift_once();
    }

    sub_1D79F3AB0(0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D7D3C680;
    v23 = MEMORY[0x1E69E6438];
    *(v22 + 56) = MEMORY[0x1E69E63B0];
    *(v22 + 64) = v23;
    *(v22 + 32) = v20;
    v24 = MEMORY[0x1E69E6530];
    v25 = MEMORY[0x1E69E65A8];
    *(v22 + 96) = MEMORY[0x1E69E6530];
    *(v22 + 104) = v25;
    *(v22 + 72) = v21;
    *(v22 + 136) = v24;
    *(v22 + 144) = v25;
    *(v22 + 112) = v12;
    sub_1D7D30C6C();
    sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Building app config quota satisfier with minPaidHeadlineRatio: %g, maxInaccessiblePaidArticleCount: %d, expireArticlesAfter: %d", v26, v27, v28);

    a1[3] = &type metadata for EndOfArticleQuotaSatisfierFactory.AppConfigQuotaSatisfier;
    a1[4] = &off_1F52B3920;
    swift_unknownObjectRelease();
    *a1 = v20;
    a1[1] = v21;
    v17 = 2;
  }

  a1[v17] = v12;
}

BOOL sub_1D7CE8B64(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1D7CE8BAC(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x646573736150;
  }

  sub_1D7D3145C();

  v3 = sub_1D7D3190C();
  MEMORY[0x1DA70DE90](v3);

  return 0x2D2064656C696146;
}

BOOL sub_1D7CE8C70(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

uint64_t sub_1D7CE8CC4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getKeyPath();
  v9 = sub_1D7D3065C();

  v10 = ceil(sub_1D7D3076C() * a2);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  a1 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (qword_1EE0CA130 != -1)
  {
LABEL_11:
    swift_once();
  }

  sub_1D79F3AB0(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7D3B4E0;
  v12 = MEMORY[0x1E69E6530];
  v13 = MEMORY[0x1E69E65A8];
  *(v11 + 56) = MEMORY[0x1E69E6530];
  *(v11 + 64) = v13;
  *(v11 + 32) = v9;
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  *(v11 + 72) = a1;
  sub_1D7D30C6C();
  sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: found %d paid headlines, and we're short %d headlines", v15, v16);

  return a1 & ~(a1 >> 63);
}

uint64_t sub_1D7CE8E94(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_1D7D3076C();
  swift_getKeyPath();
  v10 = sub_1D7D3065C();

  v11 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
    goto LABEL_6;
  }

  a6 = v11 - a2;
  if (__OFSUB__(v11, a2))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (qword_1EE0CA130 != -1)
  {
LABEL_7:
    swift_once();
  }

  sub_1D79F3AB0(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7D3B4E0;
  v13 = MEMORY[0x1E69E6530];
  v14 = MEMORY[0x1E69E65A8];
  *(v12 + 56) = MEMORY[0x1E69E6530];
  *(v12 + 64) = v14;
  *(v12 + 32) = v11;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 72) = a6;
  sub_1D7D30C6C();
  sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: found %d inaccessible headlines, and we're over %d headlines", v16, v17);

  return a6 & ~(a6 >> 63);
}

BOOL sub_1D7CE901C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v12 = sub_1D7CE8CC4(a1, a7, a2, a3, a4, a5, a6);
  if (v15 != 2 || v12 != 0)
  {
    return 0;
  }

  v18 = sub_1D7CE8E94(a1, a2, v14, v13, a4, a5, a6);
  return v19 == 2 && v18 == 0;
}

uint64_t sub_1D7CE90A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v170 = a4;
  v186 = a2;
  v187 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v171 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v16);
  v178 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v168 = &v155 - v20;
  v177 = swift_getTupleTypeMetadata2();
  v176 = sub_1D7D3130C();
  v162 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176, v21);
  v175 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v174 = &v155 - v25;
  *&v169 = sub_1D7D3130C();
  v167 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169, v26);
  v172 = &v155 - v27;
  v164 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v179 = &v155 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v184 = &v155 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v181 = &v155 - v36;
  v182 = sub_1D7D3076C();
  v199 = a5;
  v200 = a1;
  v194 = a6;
  v195 = a7;
  v196 = a8;
  v197 = a9;
  v198 = a4;
  v37 = sub_1D7D307BC();

  swift_getWitnessTable();
  v38 = sub_1D7D3151C();
  v208 = v38;
  v200 = v186;
  v188 = a6;
  v189 = a7;
  v190 = a8;
  v191 = a9;
  v192 = v170;
  v193 = a5;

  v185 = v37;
  v39 = sub_1D7D3151C();
  v163 = 0;
  sub_1D7CEABC8(v39, v38, a6, a7, a8);
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v207[0] = v41;
  v207[1] = v43;
  v207[2] = v45;
  v46 = v208;
  v47 = sub_1D7D3076C();
  v186 = a7;
  v183 = a8;
  if (v47 < v182)
  {
    v49 = type metadata accessor for CandidateInventory(0, a6, a7, a8);
    v180 = v49;
    v51 = (v164 + 48);
    v52 = (v164 + 32);
    v53 = (v164 + 16);
    v54 = (v164 + 8);
    v55 = v172;
    while (1)
    {
      MEMORY[0x1EEE9AC00](v49, v50);
      v56 = v186;
      *(&v155 - 4) = a6;
      *(&v155 - 3) = v56;
      *(&v155 - 2) = v183;
      sub_1D7CE814C(v180, v55);
      if ((*v51)(v55, 1, a6) == 1)
      {
        break;
      }

      v57 = v181;
      (*v52)(v181, v55, a6);
      (*v53)(v184, v57, a6);
      sub_1D7D3077C();
      (*v54)(v57, a6);
      v46 = v208;
      v49 = sub_1D7D3076C();
      if (v49 >= v182)
      {
        goto LABEL_5;
      }
    }

    (*(v167 + 8))(v55, v169);
    if (qword_1EE0CA130 != -1)
    {
      swift_once();
    }

    v87 = qword_1EE0CA138;
    v88 = sub_1D7D30C6C();
    sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Candidate inventory doesn't have enough items to re-fill after timeliness checks, bailing with current candidates", 149, 2, &dword_1D7987000, v87, v88, MEMORY[0x1E69E7CC0]);
LABEL_46:

    return v46;
  }

LABEL_5:
  if (sub_1D7CE901C(v46, v170, v48, a6, v186, v183, a9))
  {
    if (qword_1EE0CA130 != -1)
    {
      swift_once();
    }

    v58 = qword_1EE0CA138;
    sub_1D79F3AB0(0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1D7D3B4D0;
    v200 = 0;
    v201 = 0xE000000000000000;
    v203 = v46;

    swift_getWitnessTable();
    sub_1D7D3194C();
    v60 = v200;
    v61 = v201;
    *(v59 + 56) = MEMORY[0x1E69E6158];
    *(v59 + 64) = sub_1D79D6AE0();
    *(v59 + 32) = v60;
    *(v59 + 40) = v61;
    v62 = sub_1D7D30C6C();
    sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Candidates were valid, skipping quota satisfaction, %{public}@", 98, 2, &dword_1D7987000, v58, v62, v59);

LABEL_45:

    goto LABEL_46;
  }

  v160 = a6;
  v63 = v46;
  v64 = qword_1EE0CA130;

  v65 = v185;
  if (v64 != -1)
  {
    swift_once();
  }

  v66 = qword_1EE0CA138;
  sub_1D79F3AB0(0);
  v68 = v67;
  v69 = swift_allocObject();
  v169 = xmmword_1D7D3B4D0;
  *(v69 + 16) = xmmword_1D7D3B4D0;
  v200 = 0;
  v201 = 0xE000000000000000;
  v203 = v63;
  WitnessTable = swift_getWitnessTable();
  sub_1D7D3194C();
  v71 = v200;
  v72 = v201;
  *(v69 + 56) = MEMORY[0x1E69E6158];
  v73 = sub_1D79D6AE0();
  *(v69 + 64) = v73;
  *(v69 + 32) = v71;
  *(v69 + 40) = v72;
  v74 = sub_1D7D30C6C();
  sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Trying to satisfy quotas with candidates: %{public}@", 88, 2, &dword_1D7987000, v66, v74, v69);

  v166 = v68;
  v75 = swift_allocObject();
  *(v75 + 16) = v169;
  v200 = 0;
  v201 = 0xE000000000000000;
  v203 = v207[0];
  v159 = WitnessTable;
  sub_1D7D3194C();
  v76 = v200;
  v77 = v201;
  *(v75 + 56) = MEMORY[0x1E69E6158];
  *(v75 + 64) = v73;
  v165 = v73;
  *(v75 + 32) = v76;
  *(v75 + 40) = v77;
  v78 = sub_1D7D30C6C();
  v167 = v66;
  sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Trying to satisfy quotas with remaining inventory: %{public}@", 97, 2, &dword_1D7987000, v66, v78, v75);

  v79 = v160;
  v80 = v186;
  v83 = sub_1D7CE8CC4(v63, a9, v81, v82, v160, v186, v183);
  if (v86)
  {
    v46 = v63;
    goto LABEL_43;
  }

  v156 = v83;
  v205 = sub_1D7D306FC();
  v204 = sub_1D7D306FC();
  v158 = v63;
  v203 = v63;
  v89 = swift_getWitnessTable();
  MEMORY[0x1DA70DFD0](&v200, v65, v89);
  v202 = v200;
  sub_1D7D3165C();
  sub_1D7D3162C();
  v157 = v89;
  v90 = sub_1D7D3164C();
  v91 = v162 + 4;
  v92 = v177;
  v180 = (v177 - 8);
  v181 = v90;
  v182 = (v164 + 32);
  v172 = (v80 + 24);
  v93 = v187 + 7;
  v162 = (v164 + 16);
  v94 = (v164 + 8);
  v95 = v80;
  while (1)
  {
    v96 = v175;
    sub_1D7D3163C();
    v97 = v174;
    (*v91)(v174, v96, v176);
    if ((*(*(v92 - 8) + 48))(v97, 1, v92) == 1)
    {
      break;
    }

    v98 = *v97;
    v99 = v97 + *(v92 + 48);
    v100 = v179;
    (*v182)(v179, v99, v79);
    v101 = (*(v95 + 24))(v79, v95);
    v103 = v102;
    if (v187[2])
    {
      v104 = v101;
      v105 = v187;
      sub_1D7D31A8C();
      sub_1D7D303FC();
      v106 = sub_1D7D31ABC();
      v107 = -1 << *(v105 + 32);
      v108 = v106 & ~v107;
      if ((*(v93 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
      {
        v109 = ~v107;
        while (1)
        {
          v110 = (v187[6] + 16 * v108);
          v111 = *v110 == v104 && v110[1] == v103;
          if (v111 || (sub_1D7D3197C() & 1) != 0)
          {
            break;
          }

          v108 = (v108 + 1) & v109;
          if (((*(v93 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v112 = *(TupleTypeMetadata2 + 48);
        v113 = v168;
        v114 = v179;
        (*v162)(v168, v179, v79);
        *&v113[v112] = v98;
        sub_1D7D307BC();
        sub_1D7D3077C();
        v115 = swift_allocObject();
        *(v115 + 16) = v169;
        v200 = 0;
        v201 = 0xE000000000000000;
        sub_1D7D3193C();
        v116 = v200;
        v117 = v201;
        v118 = v165;
        *(v115 + 56) = MEMORY[0x1E69E6158];
        *(v115 + 64) = v118;
        *(v115 + 32) = v116;
        *(v115 + 40) = v117;
        v119 = sub_1D7D30C6C();
        sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Found promoted article: %{public}@", 70, 2, &dword_1D7987000, v167, v119, v115);

        (*v94)(v114, v79);
      }

      else
      {
LABEL_28:
        (*v94)(v179, v79);
      }

      v95 = v186;
      v92 = v177;
    }

    else
    {
      (*v94)(v100, v79);

      v92 = v177;
    }
  }

  v203 = v158;
  v65 = v185;
  v120 = swift_getWitnessTable();
  v121 = MEMORY[0x1DA70DD40](&v200, v65, v120);
  v203 = v200;
  MEMORY[0x1EEE9AC00](v121, v122);
  *(&v155 - 6) = v79;
  *(&v155 - 5) = v95;
  *(&v155 - 4) = v183;
  *(&v155 - 3) = &v205;
  *(&v155 - 2) = v156;
  *(&v155 - 1) = v207;
  sub_1D7D3166C();
  swift_getWitnessTable();
  v123 = v163;
  v124 = sub_1D7D3055C();
  v163 = v123;

  v200 = v124;
  sub_1D7D305AC();
  v187 = v205;
  v125 = sub_1D7D306EC();

  v206 = v125;
  v126 = v204;
  v127 = TupleTypeMetadata2;
  if (!sub_1D7D3076C())
  {
LABEL_42:

    v134 = swift_allocObject();
    *(v134 + 16) = v169;
    v200 = 0;
    v201 = 0xE000000000000000;
    v46 = v206;
    v203 = v206;
    sub_1D7D3194C();
    v135 = v200;
    v136 = v201;
    v137 = v165;
    *(v134 + 56) = MEMORY[0x1E69E6158];
    *(v134 + 64) = v137;
    *(v134 + 32) = v135;
    *(v134 + 40) = v136;
    v138 = sub_1D7D30C6C();
    sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Found to need more paid content, replaced content with new results: %{public}@", 114, 2, &dword_1D7987000, v167, v138, v134);

    v63 = v158;
LABEL_43:
    v139 = v186;
    v140 = v183;
    v141 = sub_1D7CE8E94(v63, v170, v85, v84, v79, v186, v183);
    if (v142 == 1)
    {
      v203 = v141;
      v205 = v46;
      v143 = swift_getWitnessTable();
      v144 = MEMORY[0x1DA70DD40](&v200, v65, v143);
      v187 = &v155;
      v205 = v200;
      MEMORY[0x1EEE9AC00](v144, v145);
      *(&v155 - 6) = v79;
      *(&v155 - 5) = v139;
      *(&v155 - 4) = v140;
      *(&v155 - 3) = &v203;
      *(&v155 - 2) = v207;
      v146 = sub_1D7D3166C();
      v147 = swift_getWitnessTable();
      v149 = sub_1D7A3B594(sub_1D7CEAC2C, (&v155 - 8), v146, v79, MEMORY[0x1E69E73E0], v147, MEMORY[0x1E69E7410], v148);

      v200 = v149;
      swift_getWitnessTable();
      v46 = sub_1D7D305AC();
      v150 = swift_allocObject();
      *(v150 + 16) = v169;
      v200 = 0;
      v201 = 0xE000000000000000;
      v205 = v46;
      sub_1D7D3194C();
      v151 = v200;
      v152 = v201;
      v153 = v165;
      *(v150 + 56) = MEMORY[0x1E69E6158];
      *(v150 + 64) = v153;
      *(v150 + 32) = v151;
      *(v150 + 40) = v152;
      v154 = sub_1D7D30C6C();
      sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Found to need less content replaced content with new results: %{public}@", 108, 2, &dword_1D7987000, v167, v154, v150);
    }

    goto LABEL_45;
  }

  v128 = 0;
  v129 = (v171 + 16);
  while (1)
  {
    v130 = sub_1D7D3071C();
    sub_1D7D3069C();
    if (v130)
    {
      (*(v171 + 16))(v178, v126 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v128, v127);
      v131 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    }

    result = sub_1D7D3148C();
    if (v161 != 8)
    {
      break;
    }

    v200 = result;
    (*v129)(v178, &v200, v127);
    swift_unknownObjectRelease();
    v131 = v128 + 1;
    if (__OFADD__(v128, 1))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_35:
    (*v182)(v184);
    v65 = v185;
    sub_1D7D3078C();
    v132 = TupleTypeMetadata2;
    ++v128;
    v111 = v131 == sub_1D7D3076C();
    v127 = v132;
    if (v111)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CEA27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8)
{
  v12 = (*(a5 + 40))(a3, a4, a5);
  if ((v12 & 1) == 0)
  {
    if (qword_1EE0CA130 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE0CA138;
    sub_1D79F3AB0(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7D3B4D0;
    v15 = (*(a5 + 24))(a4, a5);
    v17 = v16;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1D79D6AE0();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v18 = sub_1D7D30C6C();
    sub_1D7D29AAC(a7, a8, 2, &dword_1D7987000, v13, v18, v14);
  }

  return v12 & 1;
}

uint64_t sub_1D7CEA3C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a7;
  v39 = a4;
  v40 = a8;
  v13 = sub_1D7D3130C();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33 - v15;
  v17 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v34 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v33 - v23;
  v37 = a2;

  v25 = sub_1D7D3076C();

  if (v25 < a3)
  {
    v26 = (*(a6 + 16))(a5, a6);
    if ((v26 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v26, v27);
      *(&v33 - 4) = a5;
      *(&v33 - 3) = a6;
      v28 = v38;
      *(&v33 - 2) = v38;
      v29 = type metadata accessor for CandidateInventory(0, a5, a6, v28);
      sub_1D7CE814C(v29, v16);
      if ((*(v17 + 48))(v16, 1, a5) != 1)
      {
        (*(v17 + 32))(v24, v16, a5);
        (*(v17 + 16))(v34, v24, a5);
        sub_1D7D307BC();
        sub_1D7D3077C();
        (*(v17 + 8))(v24, a5);
        v31 = 1;
        v30 = v40;
        return (*(v17 + 56))(v30, v31, 1, a5);
      }

      (*(v35 + 8))(v16, v36);
    }
  }

  v30 = v40;
  (*(v17 + 16))(v40, a1, a5);
  v31 = 0;
  return (*(v17 + 56))(v30, v31, 1, a5);
}

uint64_t sub_1D7CEA6FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v25 = a3;
  v26 = a7;
  v27 = a8;
  v13 = sub_1D7D3130C();
  v24 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v23 - v16;
  if (*a2 < 1)
  {
    return (*(*(a4 - 8) + 16))(v27, a1, a4);
  }

  v18 = (*(a5 + 8))(a4, a5, v15);
  if (v18)
  {
    return (*(*(a4 - 8) + 16))(v27, a1, a4);
  }

  v23 = &v23;
  MEMORY[0x1EEE9AC00](v18, v19);
  *(&v23 - 4) = a4;
  *(&v23 - 3) = a5;
  *(&v23 - 2) = a6;
  v20 = type metadata accessor for CandidateInventory(0, a4, a5, a6);
  sub_1D7CE814C(v20, v17);
  v21 = *(a4 - 8);
  if ((*(v21 + 48))(v17, 1, a4) == 1)
  {
    (*(v24 + 8))(v17, v13);
    return (*(*(a4 - 8) + 16))(v27, a1, a4);
  }

  result = (*(v21 + 32))(v27, v17, a4);
  if (__OFSUB__(*a2, 1))
  {
    __break(1u);
  }

  else
  {
    --*a2;
  }

  return result;
}

uint64_t sub_1D7CEA968(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    return 0x646573736150;
  }

  sub_1D7D3145C();

  v2 = sub_1D7D3190C();
  MEMORY[0x1DA70DE90](v2);

  return 0x2D2064656C696146;
}

void sub_1D7CEAA74(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    sub_1D79EB1FC();
  }

  else
  {

    sub_1D7D3191C();
  }
}

uint64_t sub_1D7CEAB1C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D7CEADDC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v127 = a5;
  v115 = a3;
  *&v128 = a2;
  v109 = sub_1D7D3130C();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v11);
  v126 = &v107 - v12;
  v123 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v119 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v125 = &v107 - v18;
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v19 = qword_1EE0CA138;
  sub_1D79F3AB0(0);
  v118 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7D3B4E0;
  v131 = 0;
  v132 = 0xE000000000000000;
  v135 = a1;
  v22 = sub_1D7D307BC();
  WitnessTable = swift_getWitnessTable();
  sub_1D7D3194C();
  v23 = v131;
  v24 = v132;
  v116 = a1;
  v25 = MEMORY[0x1E69E6158];
  *(v21 + 56) = MEMORY[0x1E69E6158];
  v26 = sub_1D79D6AE0();
  *(v21 + 64) = v26;
  *(v21 + 32) = v23;
  *(v21 + 40) = v24;
  v27 = v116;
  v131 = 0;
  v132 = 0xE000000000000000;
  v28 = v19;
  v135 = *&a7;
  v29 = v115;
  v136 = v115;
  sub_1D7D315DC();
  v30 = v131;
  v31 = v132;
  *(v21 + 96) = v25;
  *(v21 + 104) = v26;
  v117 = v26;
  *(v21 + 72) = v30;
  *(v21 + 80) = v31;
  v32 = sub_1D7D30C6C();
  sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Satisfying Candidates %{public}@ with Quotas %{public}@", 91, 2, &dword_1D7987000, v28, v32, v21);

  v33 = sub_1D798F168(0, qword_1EE0BCAD0, &protocol descriptor for EndOfArticleQuotaCandidate);
  v34 = sub_1D7D315CC();
  sub_1D7CE8544(v34, a7);
  v35 = v29;
  if (v36)
  {
    sub_1D7CE8744(v34, v29);
    v38 = v37;

    if (v38)
    {
      v39 = sub_1D7D30C6C();
      sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Candidates Validated", 56, 2, &dword_1D7987000, v28, v39, MEMORY[0x1E69E7CC0]);

      return v27;
    }
  }

  else
  {
  }

  v134 = v27;
  swift_bridgeObjectRetain_n();

  sub_1D7CEABC8(v40, v27, a4, v127, a6);
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v131 = v42;
  v132 = v44;
  v133 = v46;
  v47 = sub_1D7D315CC();
  v48 = sub_1D7CE8544(v47, a7);
  LOBYTE(v46) = v49;

  v112 = v28;
  v113 = v33;
  if (v46)
  {
    v50 = v27;
LABEL_22:
    v84 = sub_1D7D315CC();
    v85 = sub_1D7CE8744(v84, v35);
    v87 = v86;

    if ((v87 & 1) == 0)
    {
      v88 = swift_allocObject();
      v128 = xmmword_1D7D3B4D0;
      *(v88 + 16) = xmmword_1D7D3B4D0;
      v135 = v85;
      v89 = sub_1D7D3190C();
      v90 = v117;
      *(v88 + 56) = MEMORY[0x1E69E6158];
      *(v88 + 64) = v90;
      *(v88 + 32) = v89;
      *(v88 + 40) = v91;
      v92 = sub_1D7D30C6C();
      v93 = v112;
      sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Candidates accessible short by %{public}@", 77, 2, &dword_1D7987000, v112, v92, v88);

      v129 = v50;
      v130 = v85;

      v94 = swift_getWitnessTable();
      v95 = MEMORY[0x1DA70DD40](&v135, v22, v94);
      v129 = v135;
      MEMORY[0x1EEE9AC00](v95, v96);
      v97 = v127;
      *(&v107 - 6) = a4;
      *(&v107 - 5) = v97;
      *(&v107 - 4) = a6;
      *(&v107 - 3) = &v130;
      *(&v107 - 2) = &v131;
      v98 = sub_1D7D3166C();
      v99 = swift_getWitnessTable();
      v101 = sub_1D7A3B594(sub_1D7CEBAB4, (&v107 - 8), v98, a4, MEMORY[0x1E69E73E0], v99, MEMORY[0x1E69E7410], v100);

      v135 = v101;
      swift_getWitnessTable();
      v50 = sub_1D7D305AC();
      v102 = swift_allocObject();
      *(v102 + 16) = v128;
      v135 = 0;
      v136 = 0xE000000000000000;
      v129 = v50;
      sub_1D7D3194C();
      v103 = v135;
      v104 = v136;
      v105 = v117;
      *(v102 + 56) = MEMORY[0x1E69E6158];
      *(v102 + 64) = v105;
      *(v102 + 32) = v103;
      *(v102 + 40) = v104;
      v106 = sub_1D7D30C6C();
      sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Current Result %{public}@", 61, 2, &dword_1D7987000, v93, v106, v102);
    }

    return v50;
  }

  v51 = swift_allocObject();
  v111 = xmmword_1D7D3B4D0;
  *(v51 + 16) = xmmword_1D7D3B4D0;
  v135 = v48;
  v52 = sub_1D7D3190C();
  v53 = v117;
  *(v51 + 56) = MEMORY[0x1E69E6158];
  *(v51 + 64) = v53;
  *(v51 + 32) = v52;
  *(v51 + 40) = v54;
  v55 = sub_1D7D30C6C();
  sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Candidates paid short by %{public}@", 71, 2, &dword_1D7987000, v28, v55, v51);

  result = sub_1D7D306FC();
  v130 = result;
  if ((v48 & 0x8000000000000000) == 0)
  {
    if (v48)
    {
      *&v128 = v48;
      v124 = (v123 + 6);
      v121 = (v123 + 2);
      v122 = (v123 + 4);
      v120 = (v123 + 1);
      v57 = v127;
      v58 = type metadata accessor for CandidateInventory(0, a4, v127, a6);
      v123 = v58;
      v61 = v125;
      v60 = v126;
      v62 = v119;
      while (1)
      {
        MEMORY[0x1EEE9AC00](v58, v59);
        *(&v107 - 4) = a4;
        *(&v107 - 3) = v57;
        *(&v107 - 2) = a6;
        sub_1D7CE814C(v123, v60);
        if ((*v124)(v60, 1, a4) == 1)
        {
          break;
        }

        (*v122)(v61, v60, a4);
        (*v121)(v62, v61, a4);
        v65 = sub_1D7D3077C();
        v66 = v62;
        v67 = v134;
        v129 = v134;
        MEMORY[0x1EEE9AC00](v65, v68);
        *(&v107 - 4) = a4;
        *(&v107 - 3) = v57;
        *(&v107 - 2) = a6;

        swift_getWitnessTable();
        sub_1D7D302EC();

        if (v136)
        {
          v135 = v67;
          swift_getWitnessTable();
          if (sub_1D7D30A9C())
          {
            v61 = v125;
            v58 = (*v120)(v125, a4);
            v60 = v126;
            v62 = v119;
          }

          else
          {
            swift_getWitnessTable();
            v62 = v119;
            sub_1D7D30ABC();
            v69 = *v120;
            (*v120)(v62, a4);
            v61 = v125;
            v58 = v69(v125, a4);
            v60 = v126;
          }
        }

        else
        {
          sub_1D7D3079C();
          v63 = *v120;
          (*v120)(v66, a4);
          v64 = v125;
          v58 = v63(v125, a4);
          v60 = v126;
          v62 = v66;
          v61 = v64;
        }

        v57 = v127;
        *&v128 = v128 - 1;
        if (!v128)
        {
          goto LABEL_21;
        }
      }

      (*(v108 + 8))(v60, v109);
    }

LABEL_21:
    v110 = v22;
    v70 = swift_allocObject();
    *(v70 + 16) = v111;
    v135 = 0;
    v136 = 0xE000000000000000;
    v129 = v130;
    sub_1D7D3194C();
    v71 = v135;
    v72 = v136;
    v73 = v117;
    *(v70 + 56) = MEMORY[0x1E69E6158];
    *(v70 + 64) = v73;
    *(v70 + 32) = v71;
    *(v70 + 40) = v72;
    v74 = sub_1D7D30C6C();
    v75 = v112;
    sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Found replacements %{public}@", 65, 2, &dword_1D7987000, v112, v74, v70);

    v76 = swift_allocObject();
    *(v76 + 16) = v111;
    v135 = 0;
    v136 = 0xE000000000000000;
    v129 = v131;
    sub_1D7D3194C();
    v77 = v135;
    v78 = v136;
    *(v76 + 56) = MEMORY[0x1E69E6158];
    *(v76 + 64) = v73;
    *(v76 + 32) = v77;
    *(v76 + 40) = v78;
    v79 = sub_1D7D30C6C();
    sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Remaining Inventory %{public}@", 66, 2, &dword_1D7987000, v75, v79, v76);

    v50 = sub_1D7D306EC();

    v22 = v110;
    v80 = swift_allocObject();
    *(v80 + 16) = v111;
    v135 = 0;
    v136 = 0xE000000000000000;
    v129 = v50;
    sub_1D7D3194C();
    v81 = v135;
    v82 = v136;
    *(v80 + 56) = MEMORY[0x1E69E6158];
    *(v80 + 64) = v73;
    *(v80 + 32) = v81;
    *(v80 + 40) = v82;
    v83 = sub_1D7D30C6C();
    sub_1D7D29AAC("ArticleRecirculationQuotaSatisfier: Current Result %{public}@", 61, 2, &dword_1D7987000, v75, v83, v80);

    v35 = v115;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7CEBB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void ReportConcernDetailModule.createViewController(for:concern:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v5;
  v11[2] = *(a2 + 32);
  v12 = *(a2 + 48);
  v6 = sub_1D7D28A1C();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR___ReportConcernDetailModule_resolver), *(v2 + OBJC_IVAR___ReportConcernDetailModule_resolver + 24));
  type metadata accessor for ReportConcernDetailViewController(0);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = *(a2 + 16);
  *(v7 + 24) = *a2;
  *(v7 + 40) = v8;
  *(v7 + 56) = *(a2 + 32);
  *(v7 + 72) = *(a2 + 48);
  *(v7 + 80) = v6;
  swift_unknownObjectRetain();

  sub_1D7C451F8(v11, v10);
  v9 = sub_1D7D28CFC();

  if (v9)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7CEBD24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D799621C();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  return sub_1D7D28BEC();
}

id ReportConcernDetailModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReportConcernDetailModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D7CEBFBC(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      a1(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_1D7CEC140(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(__int128 *))
{
  v8 = sub_1D7D2824C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7D281EC();
  v13 = *a4;
  swift_beginAccess();
  v14 = *&a1[v13];
  v18 = v12;
  v15 = a1;

  sub_1D7CEBFBC(a5, v17, v14);

  return (*(v9 + 8))(v12, v8);
}

uint64_t ArticleViewerBlueprintRouteArticle.identifier.getter()
{
  v1 = type metadata accessor for AsyncArticle(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ArticleViewerBlueprintRouteArticle(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D79A8934(v0, v8, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7CECB68(v8, v4, type metadata accessor for AsyncArticle);
    v9 = *v4;

    sub_1D7CEC86C(v4, type metadata accessor for AsyncArticle);
  }

  else
  {
    v9 = *v8;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v9;
}

uint64_t ArticleViewerBlueprintRouteArticle.feedItemIdentifier.getter()
{
  v1 = type metadata accessor for AsyncArticle(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArticleViewerBlueprintRouteArticle(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79A8934(v0, v8, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7CECB68(v8, v4, type metadata accessor for AsyncArticle);
    v9 = *(v4 + 4);

    sub_1D7CEC86C(v4, type metadata accessor for AsyncArticle);
  }

  else
  {
    v9 = *(v8 + 6);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return v9;
}

uint64_t ArticleViewerBlueprintRouteArticle.articleIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AsyncArticle(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerBlueprintRouteArticle(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D79A8934(v1, v9, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7CECB68(v9, v5, type metadata accessor for AsyncArticle);
    v10 = *(v5 + 2);

    sub_1D7CEC86C(v5, type metadata accessor for AsyncArticle);
  }

  else
  {
    v11 = [v9[2] articleID];
    v10 = sub_1D7D3034C();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return v10;
}

uint64_t ArticleViewerBlueprintRouteArticle.headline.getter()
{
  v1 = type metadata accessor for ArticleViewerBlueprintRouteArticle(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79A8934(v0, v4, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7CEC86C(v4, type metadata accessor for ArticleViewerBlueprintRouteArticle);
    return 0;
  }

  else
  {
    v5 = *(v4 + 2);

    swift_unknownObjectRelease();
  }

  return v5;
}

uint64_t sub_1D7CEC86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ArticleViewerBlueprintRouteArticle.routeURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AsyncArticle(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7998DF0(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArticleViewerBlueprintRouteArticle(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D79A8934(v2, v15, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7CECB68(v15, v7, type metadata accessor for AsyncArticle);
    sub_1D79A8934(&v7[*(v4 + 28)], a1, sub_1D7998DF0);
    return sub_1D7CEC86C(v7, type metadata accessor for AsyncArticle);
  }

  else
  {
    v17 = [v15[2] routeURL];
    if (v17)
    {
      v18 = v17;
      sub_1D7D281EC();

      swift_unknownObjectRelease();

      v19 = 0;
    }

    else
    {

      swift_unknownObjectRelease();

      v19 = 1;
    }

    swift_unknownObjectRelease();

    v20 = sub_1D7D2824C();
    (*(*(v20 - 8) + 56))(v11, v19, 1, v20);
    return sub_1D7CECB68(v11, a1, sub_1D7998DF0);
  }
}

uint64_t sub_1D7CECB68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D7CECBD0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v59 = a2;
  v11 = sub_1D7D2D12C();
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v56 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CF0400(0, &qword_1EE0BFB70, MEMORY[0x1E69B3F80]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v55 = &v52 - v16;
  sub_1D799C6E0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v52 - v19;
  v21 = type metadata accessor for ArticleViewerPage(0);
  v58 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v54 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D7D2836C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = ArticleViewerPage.identifier.getter();
  v31 = v5[22];
  if (v31)
  {
    if (v29 == v5[21] && v31 == v30)
    {

      return;
    }

    v53 = v11;
    v32 = sub_1D7D3197C();

    if (v32)
    {
      return;
    }
  }

  else
  {
    v53 = v11;
  }

  v5[21] = ArticleViewerPage.identifier.getter();
  v5[22] = v33;

  sub_1D7D28C6C();
  if (a3 != 1)
  {
    if (v5[20])
    {

      sub_1D7D2CE9C();
    }

    v5[20] = 0;

    sub_1D7CED318(a1);
    sub_1D7D2835C();
    v34 = sub_1D7D2834C();
    v36 = v35;
    (*(v25 + 8))(v28, v24);
    v5[18] = v34;
    v5[19] = v36;

    sub_1D7D2D4CC();

    v37 = v59;
    if (sub_1D7CED60C(a1, v59))
    {
      sub_1D7CF0684(v37, v20, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
      if ((*(v58 + 48))(v20, 1, v21) == 1)
      {
        sub_1D7CF04C4(v20, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720], sub_1D799C6E0);
        if (qword_1EE0C9558 != -1)
        {
          swift_once();
        }

        v38 = qword_1EE0C9560;
        v39 = sub_1D7D30C6C();
        sub_1D7D29AAC("Aborting ad load - can't insert interstitial ads as the last page.", 66, 2, &dword_1D7987000, v38, v39, MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v42 = v54;
        sub_1D7CF08E8(v20, v54, type metadata accessor for ArticleViewerPage);
        if (qword_1EE0C9558 != -1)
        {
          swift_once();
        }

        v43 = qword_1EE0C9560;
        sub_1D79F3AB0(0);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1D7D3B4D0;
        v46 = v6[18];
        v45 = v6[19];
        *(v44 + 56) = MEMORY[0x1E69E6158];
        *(v44 + 64) = sub_1D79D6AE0();
        *(v44 + 32) = v46;
        *(v44 + 40) = v45;

        v47 = sub_1D7D30C6C();
        sub_1D7D29AAC("Attempting to preload interstitial ad with placement=%{public}@", 63, 2, &dword_1D7987000, v43, v47, v44);

        sub_1D7D2CA2C();

        v48 = v56;
        v49 = sub_1D7D2D10C();
        MEMORY[0x1EEE9AC00](v49, v50);
        *(&v52 - 4) = v6;
        *(&v52 - 3) = a1;
        *(&v52 - 2) = v42;
        v51 = v55;
        sub_1D7D2CD4C();

        (*(v57 + 8))(v48, v53);
        sub_1D7CF02D0(v51);
        sub_1D7CEEA3C(a1, a4, a5);
        sub_1D7CF0348(v42, type metadata accessor for ArticleViewerPage);
      }
    }

    else
    {
      if (qword_1EE0C9558 != -1)
      {
        swift_once();
      }

      v40 = qword_1EE0C9560;
      v41 = sub_1D7D30C6C();
      sub_1D7D29AAC("Conditions not met to insert interstitial advertisement.", 56, 2, &dword_1D7987000, v40, v41, MEMORY[0x1E69E7CC0]);
    }
  }
}

uint64_t sub_1D7CED318(uint64_t a1)
{
  v3 = type metadata accessor for InterstitialAdModel(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InterstitialAdvertisementPage(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CF0524(a1, v14, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = type metadata accessor for ArticleViewerPage;
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D7CF08E8(v14, v10, type metadata accessor for InterstitialAdvertisementPage);
      sub_1D7CF0524(v10, v6, type metadata accessor for InterstitialAdModel);
      if (swift_getEnumCaseMultiPayload() >= 2)
      {
        v25 = sub_1D7D2CADC();
        (*(*(v25 - 8) + 8))(v6, v25);
      }

      else
      {
        sub_1D7CF0348(v6, type metadata accessor for InterstitialAdModel);
        v23 = v1[15];
        v24 = v1[16];
        __swift_project_boxed_opaque_existential_1(v1 + 12, v23);
        (*(v24 + 16))(v23, v24);
      }

      v21 = type metadata accessor for InterstitialAdvertisementPage;
      v22 = v10;
      return sub_1D7CF0348(v22, v21);
    }

    if (EnumCaseMultiPayload != 3)
    {
      sub_1D799A6BC(0);
      sub_1D79DA510(*&v14[*(v17 + 48)], *&v14[*(v17 + 48) + 8], *&v14[*(v17 + 48) + 16], *&v14[*(v17 + 48) + 24]);
      v16 = type metadata accessor for ArticleViewerArticlePage;
LABEL_6:
      sub_1D7CF0348(v14, v16);
      v18 = v1[15];
      v19 = v1[16];
      __swift_project_boxed_opaque_existential_1(v1 + 12, v18);
      return (*(v19 + 24))(v18, v19);
    }
  }

  v21 = type metadata accessor for ArticleViewerPage;
  v22 = v14;
  return sub_1D7CF0348(v22, v21);
}

uint64_t sub_1D7CED60C(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  v3 = type metadata accessor for InterstitialAdModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v92 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C3EBA0(0);
  v94 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v95 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CF03A8(0, &qword_1EE0BFA30, &qword_1EE0BFA38, MEMORY[0x1E69B4438]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v96 = &v91 - v11;
  sub_1D799C6E0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v101 = &v91 - v14;
  v97 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v97, v15);
  v98 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7D2918C();
  v103 = *(v17 - 8);
  v104 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ArticleViewerPage(0);
  v100 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v93 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v99 = &v91 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v105 = &v91 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v91 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v91 - v36;
  v38 = type metadata accessor for InterstitialAdvertisementPage(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38 - 8, v41);
  v42 = &v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v91 - v45;
  sub_1D7CF0524(a1, v37, type metadata accessor for ArticleViewerPage);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1D7CF08E8(v37, v46, type metadata accessor for InterstitialAdvertisementPage);
    sub_1D7D2917C();
    v47 = swift_allocObject();
    swift_weakInit();
    sub_1D7CF0524(v46, v42, type metadata accessor for InterstitialAdvertisementPage);
    v48 = (*(v39 + 80) + 24) & ~*(v39 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    sub_1D7CF08E8(v42, v49 + v48, type metadata accessor for InterstitialAdvertisementPage);

    sub_1D7D28C8C();

    (*(v103 + 8))(v20, v104);

    if (qword_1EE0C9558 != -1)
    {
      swift_once();
    }

    v50 = qword_1EE0C9560;
    v51 = sub_1D7D30C6C();
    sub_1D7D29AAC("Aborting ad load - current page is an interstitial ad.", 54, 2, &dword_1D7987000, v50, v51, MEMORY[0x1E69E7CC0]);
    v52 = type metadata accessor for InterstitialAdvertisementPage;
    v53 = v46;
    goto LABEL_5;
  }

  v54 = v106;
  sub_1D7CF0348(v37, type metadata accessor for ArticleViewerPage);
  sub_1D7CF0524(a1, v33, type metadata accessor for ArticleViewerPage);
  v55 = a1;
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D7CF0348(v33, type metadata accessor for ArticleViewerPage);
    v56 = v105;
  }

  else
  {
    v57 = v98;
    sub_1D7CF08E8(v33, v98, type metadata accessor for ArticleViewerArticlePage);
    v56 = v105;
    if (*(v57 + *(v97 + 32)) >= 2uLL)
    {
      if (qword_1EE0C9558 != -1)
      {
        swift_once();
      }

      v86 = qword_1EE0C9560;
      v87 = sub_1D7D30C6C();
      sub_1D7D29AAC("Aborting ad load - can't insert interstitial ads in a magazine issue.", 69, 2, &dword_1D7987000, v86, v87, MEMORY[0x1E69E7CC0]);
      v52 = type metadata accessor for ArticleViewerArticlePage;
      v53 = v57;
      goto LABEL_5;
    }

    sub_1D7CF0348(v57, type metadata accessor for ArticleViewerArticlePage);
  }

  v58 = v101;
  sub_1D7CF0684(v102, v101, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  if ((*(v100 + 48))(v58, 1, v21) == 1)
  {
    sub_1D7CF04C4(v58, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720], sub_1D799C6E0);
    if (qword_1EE0C9558 != -1)
    {
      swift_once();
    }

    v59 = qword_1EE0C9560;
    v60 = sub_1D7D30C6C();
    sub_1D7D29AAC("Aborting ad load - can't insert interstitial ads as the last page.", 66, 2, &dword_1D7987000, v59, v60, MEMORY[0x1E69E7CC0]);
    return 0;
  }

  sub_1D7CF08E8(v58, v56, type metadata accessor for ArticleViewerPage);
  v62 = v99;
  sub_1D7CF0524(a1, v99, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v64 = type metadata accessor for ArticleViewerPage;
  if ((EnumCaseMultiPayload - 1) < 3)
  {
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D799A6BC(0);
    sub_1D79DA510(*(v62 + *(v65 + 48)), *(v62 + *(v65 + 48) + 8), *(v62 + *(v65 + 48) + 16), *(v62 + *(v65 + 48) + 24));
    v64 = type metadata accessor for ArticleViewerArticlePage;
  }

  sub_1D7CF0348(v62, v64);
  v62 = v93;
  sub_1D7CF0524(v56, v93, type metadata accessor for ArticleViewerPage);
  v66 = swift_getEnumCaseMultiPayload();
  v67 = type metadata accessor for ArticleViewerPage;
  if ((v66 - 1) < 3)
  {
LABEL_19:
    v106 = v21;
    v68 = v54;
    sub_1D7CF0348(v62, type metadata accessor for ArticleViewerPage);
    if (qword_1EE0C9558 != -1)
    {
      swift_once();
    }

    v69 = qword_1EE0C9560;
    sub_1D79F3AB0(0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1D7D3B4E0;
    v71 = ArticleViewerPage.identifier.getter();
    v73 = v72;
    v74 = MEMORY[0x1E69E6158];
    *(v70 + 56) = MEMORY[0x1E69E6158];
    v75 = sub_1D79D6AE0();
    *(v70 + 64) = v75;
    *(v70 + 32) = v71;
    *(v70 + 40) = v73;
    v76 = ArticleViewerPage.identifier.getter();
    *(v70 + 96) = v74;
    *(v70 + 104) = v75;
    *(v70 + 72) = v76;
    *(v70 + 80) = v77;
    v78 = sub_1D7D30C6C();
    sub_1D7D29AAC("Skipping ad loading due to adjacent page not supporting ads, trailing page=%{public}@, leading page=%{public}@", 110, 2, &dword_1D7987000, v69, v78, v70);

    sub_1D7CF0950();
    v79 = swift_allocError();
    *v80 = 0x8000000000000000;
    v81 = MEMORY[0x1E69B4438];
    sub_1D7CF0400(0, &qword_1EE0BFA38, MEMORY[0x1E69B4438]);
    v83 = v96;
    (*(*(v82 - 8) + 56))(v96, 1, 1, v82);

    sub_1D7D2D4BC();

    sub_1D7CF04C4(v83, &qword_1EE0BFA30, &qword_1EE0BFA38, v81, sub_1D7CF03A8);

    sub_1D7D284BC();
    LOBYTE(v79) = sub_1D7D2860C();

    if (v79)
    {
      v84 = v95;
      v85 = *(v94 + 48);
      sub_1D7CF0524(v55, v95, type metadata accessor for ArticleViewerPage);
      sub_1D7CF0524(v56, v84 + v85, type metadata accessor for ArticleViewerPage);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_1D7CF0348(v56, type metadata accessor for ArticleViewerPage);
        sub_1D7CF0348(v84, type metadata accessor for ArticleViewerPage);
        v53 = v84 + v85;
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            __swift_project_boxed_opaque_existential_1((v68 + 48), *(v68 + 72));
            v89 = off_1F52ABA50[0];
            type metadata accessor for InterstitialAdModelFactory();

            v90 = v92;
            v84 = v95;
            v89();
            v56 = v105;

            sub_1D7CF06F4(v90, v55);
            swift_unknownObjectRelease();
            sub_1D7CF0348(v90, type metadata accessor for InterstitialAdModel);
          }

          sub_1D7CF0348(v56, type metadata accessor for ArticleViewerPage);
          v52 = sub_1D7C3EBA0;
          v53 = v84;
          goto LABEL_5;
        }

        sub_1D7CF0348(v56, type metadata accessor for ArticleViewerPage);
        sub_1D7CF0348(v84 + v85, type metadata accessor for ArticleViewerPage);
        v53 = v84;
      }

      v52 = type metadata accessor for ArticleViewerPage;
    }

    else
    {
      v52 = type metadata accessor for ArticleViewerPage;
      v53 = v56;
    }

LABEL_5:
    sub_1D7CF0348(v53, v52);
    return 0;
  }

  if (v66)
  {
    sub_1D799A6BC(0);
    sub_1D79DA510(*(v62 + *(v88 + 48)), *(v62 + *(v88 + 48) + 8), *(v62 + *(v88 + 48) + 16), *(v62 + *(v88 + 48) + 24));
    v67 = type metadata accessor for ArticleViewerArticlePage;
  }

  sub_1D7CF0348(v62, v67);
  sub_1D7CF0348(v56, type metadata accessor for ArticleViewerPage);
  return 1;
}

double sub_1D7CEE388@<D0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24[3] = a5;
  v8 = type metadata accessor for ArticleViewerPage(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v24 - v15;
  v17 = a1[3];
  v24[1] = a1[4];
  v24[2] = __swift_project_boxed_opaque_existential_1(a1, v17);
  v24[0] = sub_1D7D2CA2C();
  v18 = swift_allocObject();
  swift_weakInit();
  sub_1D7CF0524(a3, v16, type metadata accessor for ArticleViewerPage);
  sub_1D7CF0524(a4, v12, type metadata accessor for ArticleViewerPage);
  v19 = *(v9 + 80);
  v20 = (v19 + 24) & ~v19;
  v21 = (v10 + v19 + v20) & ~v19;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  sub_1D7CF08E8(v16, v22 + v20, type metadata accessor for ArticleViewerPage);
  sub_1D7CF08E8(v12, v22 + v21, type metadata accessor for ArticleViewerPage);
  sub_1D7D2D39C();
  sub_1D7D2D05C();
  sub_1D7D2D12C();
  sub_1D79978A8(&qword_1EE0CBD90, MEMORY[0x1E69B4328], MEMORY[0x1E69B4320]);

  sub_1D7D2CF8C();

  return result;
}

void *sub_1D7CEE638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D7D2CECC();
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D799C6E0(0, &unk_1EE0BFAD0, MEMORY[0x1E69B4228], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v29 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *MEMORY[0x1E69B4210];
    v38 = result;
    v16 = sub_1D7D2D02C();
    v35 = a4;
    v17 = v16;
    v18 = *(v16 - 8);
    v33 = *(v18 + 104);
    v34 = v18 + 104;
    v33(v13, v15, v16);
    v32 = *MEMORY[0x1E69B4220];
    v19 = v32;
    v20 = sub_1D7D2D03C();
    v21 = *(v20 - 8);
    v37 = v9;
    v22 = v21;
    v31 = *(v21 + 104);
    v31(v13, v19, v20);
    v30 = *(v22 + 56);
    v30(v13, 0, 1, v20);
    sub_1D7C3D570(a1, v13);
    v36 = v6;
    v23 = MEMORY[0x1E69B4228];
    v24 = MEMORY[0x1E69E6720];
    sub_1D7CF04C4(v13, &unk_1EE0BFAD0, MEMORY[0x1E69B4228], MEMORY[0x1E69E6720], sub_1D799C6E0);
    v33(v13, *MEMORY[0x1E69B4218], v17);
    v31(v13, v32, v20);
    v30(v13, 0, 1, v20);
    sub_1D7C3D570(a1, v13);
    sub_1D7CF04C4(v13, &unk_1EE0BFAD0, v23, v24, sub_1D799C6E0);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v25 = v38[15];
    v26 = v38[16];
    __swift_project_boxed_opaque_existential_1(v38 + 12, v25);
    (*(v26 + 8))(v25, v26);
    v27 = v37;
    sub_1D7D2CEBC();
    sub_1D79978A8(&qword_1EE0BFAF8, MEMORY[0x1E69B4100], MEMORY[0x1E69B40F8]);
    v28 = v36;
    sub_1D7D2CFDC();

    return (*(v39 + 8))(v27, v28);
  }

  return result;
}

void sub_1D7CEEA3C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v57 = a1;
  v7 = type metadata accessor for ArticleViewerPage(0);
  v58 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v54 = v9;
  v59 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7CF03A8(0, &qword_1EE0BFBB0, &unk_1EE0BFBB8, MEMORY[0x1E69B3F28]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v49 - v12;
  v14 = MEMORY[0x1E69B4438];
  sub_1D7CF03A8(0, &qword_1EE0BFA30, &qword_1EE0BFA38, MEMORY[0x1E69B4438]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v49 - v17;
  sub_1D7CF0400(0, &qword_1EE0BFA38, v14);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v55 = v23;
  v56 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v60 = &v49 - v26;
  if (qword_1EE0C9558 != -1)
  {
    swift_once();
  }

  v27 = qword_1EE0C9560;
  sub_1D79F3AB0(0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7D3B4D0;
  v29 = v4[18];
  v30 = v4[19];
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1D79D6AE0();
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;

  v31 = sub_1D7D30C6C();
  v53 = v27;
  sub_1D7D29AAC("Attempting to load interstitial ad. placement=%{public}@", 56, 2, &dword_1D7987000, v27, v31, v28);

  v32 = MEMORY[0x1E69B3F28];
  sub_1D7CF0400(0, &unk_1EE0BFBB8, MEMORY[0x1E69B3F28]);
  (*(*(v33 - 8) + 56))(v13, 1, 1, v33);

  sub_1D7D2CBEC();

  sub_1D7CF04C4(v13, &qword_1EE0BFBB0, &unk_1EE0BFBB8, v32, sub_1D7CF03A8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    sub_1D7CF04C4(v18, &qword_1EE0BFA30, &qword_1EE0BFA38, MEMORY[0x1E69B4438], sub_1D7CF03A8);
    v34 = sub_1D7D30C4C();
    sub_1D7D29AAC("Aborting ad load - can't find interstitial ad request", 53, 2, &dword_1D7987000, v53, v34, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v35 = v21;
    v52 = *(v21 + 32);
    v53 = v21 + 32;
    v36 = v60;
    v52(v60, v18, v20);
    v37 = v20;
    v50 = v20;

    sub_1D7D2D4FC();

    v38 = v4[18];
    v39 = v4[19];
    v51 = __swift_project_boxed_opaque_existential_1(v4 + 6, v4[9]);
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = v59;
    sub_1D7CF0524(v57, v59, type metadata accessor for ArticleViewerPage);
    v42 = v56;
    (*(v35 + 16))(v56, v36, v37);
    v43 = (*(v58 + 80) + 40) & ~*(v58 + 80);
    v44 = (v54 + *(v35 + 80) + v43) & ~*(v35 + 80);
    v45 = swift_allocObject();
    *(v45 + 2) = v40;
    *(v45 + 3) = v38;
    *(v45 + 4) = v39;
    sub_1D7CF08E8(v41, &v45[v43], type metadata accessor for ArticleViewerPage);
    v46 = v42;
    v47 = v50;
    v52(&v45[v44], v46, v50);
    v59 = off_1F52ABA48[0];
    type metadata accessor for InterstitialAdModelFactory();
    swift_bridgeObjectRetain_n();

    v48 = v59(v38, v39, sub_1D7CF058C, v45, a2, a3);

    (*(v35 + 8))(v60, v47);

    v4[20] = v48;
  }
}

void sub_1D7CEF0C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InterstitialAdModel(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1D7CF0524(a2, v6, type metadata accessor for InterstitialAdModel);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {

      v11 = sub_1D7D2CADC();
      (*(*(v11 - 8) + 8))(v6, v11);
    }

    else
    {
      sub_1D7CF0348(v6, type metadata accessor for InterstitialAdModel);
      v9 = *(v8 + 144);
      v10 = *(v8 + 152);

      sub_1D7CEF220(v9, v10);
    }
  }
}

uint64_t sub_1D7CEF220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (qword_1EE0C9558 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE0C9560;
  sub_1D79F3AB0(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7D3B4D0;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D79D6AE0();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_1D7D30C6C();
  sub_1D7D29AAC("Attempting to clean up interstitial ad. placement=%{public}@", 60, 2, &dword_1D7987000, v7, v9, v8);

  if (swift_unknownObjectWeakLoadStrong())
  {
    v12[3] = v6;
    v12[4] = &off_1F52B3B60;
    v12[0] = v3;
    v10 = off_1F52A0138;
    type metadata accessor for ArticleViewerInteractor();

    v10();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v3[18] = 0x64696C61766E69;
  v3[19] = 0xE700000000000000;
}

void sub_1D7CEF3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v84 = a6;
  v85 = a4;
  v81 = a3;
  sub_1D7CF03A8(0, &qword_1EE0BFA30, &qword_1EE0BFA38, MEMORY[0x1E69B4438]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v83 = v77 - v11;
  sub_1D7999AF4(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v79 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InterstitialAdModel(0);
  v80 = *(v16 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v19 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v82 = v77 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v77 - v25;
  sub_1D799C6E0(0, &qword_1EE0BB410, type metadata accessor for InterstitialAdModel, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = (v77 - v29);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    sub_1D7CF0684(a1, v30, &qword_1EE0BB410, type metadata accessor for InterstitialAdModel, MEMORY[0x1E69D6AF8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = *v30;
      if (qword_1EE0C9558 != -1)
      {
        swift_once();
      }

      v34 = qword_1EE0C9560;
      v35 = sub_1D7D30C4C();
      sub_1D79F3AB0(0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1D7D3B4D0;
      v87 = 0;
      v88 = 0xE000000000000000;
      v86 = v33;
      sub_1D798F168(0, &qword_1EE0BE7E0, MEMORY[0x1E69E7280]);
      sub_1D7D315DC();
      v37 = v87;
      v38 = v88;
      *(v36 + 56) = MEMORY[0x1E69E6158];
      *(v36 + 64) = sub_1D79D6AE0();
      *(v36 + 32) = v37;
      *(v36 + 40) = v38;
      sub_1D7D29AAC("Interstitial ad load failed, error=%{public}@", 45, 2, &dword_1D7987000, v34, v35, v36);

      v39 = MEMORY[0x1E69B4438];
      sub_1D7CF0400(0, &qword_1EE0BFA38, MEMORY[0x1E69B4438]);
      v41 = v40;
      v42 = *(v40 - 8);
      v43 = v83;
      (*(v42 + 16))(v83, v84, v40);
      (*(v42 + 56))(v43, 0, 1, v41);

      sub_1D7D2D4BC();

      sub_1D7CF04C4(v43, &qword_1EE0BFA30, &qword_1EE0BFA38, v39, sub_1D7CF03A8);
      sub_1D7D284BC();
      LOBYTE(v35) = sub_1D7D2860C();

      if ((v35 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        __swift_project_boxed_opaque_existential_1(v32 + 6, v32[9]);
        v44 = off_1F52ABA50[0];
        type metadata accessor for InterstitialAdModelFactory();
        v78 = a5;

        v26 = v82;
        v44();

        sub_1D7CF06F4(v26, v78);

        swift_unknownObjectRelease();
LABEL_32:
        v76 = v26;
        goto LABEL_33;
      }

LABEL_21:

      return;
    }

    v77[1] = v13;
    v78 = a5;
    sub_1D7CF08E8(v30, v26, type metadata accessor for InterstitialAdModel);
    if (qword_1EE0C9558 != -1)
    {
      swift_once();
    }

    v47 = qword_1EE0C9560;
    sub_1D79F3AB0(0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1D7D3B4D0;
    v49 = v32[18];
    v50 = v32[19];
    *(v48 + 56) = MEMORY[0x1E69E6158];
    *(v48 + 64) = sub_1D79D6AE0();
    *(v48 + 32) = v49;
    *(v48 + 40) = v50;

    v51 = sub_1D7D30C6C();
    sub_1D7D29AAC("Successfully loaded interstitial ad. placement=%{public}@", 57, 2, &dword_1D7987000, v47, v51, v48);

    v52 = InterstitialAdModel.interstitialView.getter();
    v53 = v81;
    if (v52)
    {
      v54 = v52;
      swift_getObjectType();
      v87 = v54;
      v55 = sub_1D7D2D06C();

      v56 = swift_allocObject();
      swift_weakInit();
      v57 = v82;
      sub_1D7CF0524(v26, v82, type metadata accessor for InterstitialAdModel);
      v58 = (*(v80 + 80) + 40) & ~*(v80 + 80);
      v59 = swift_allocObject();
      v59[2] = v56;
      v59[3] = v53;
      v59[4] = v85;
      sub_1D7CF08E8(v57, v59 + v58, type metadata accessor for InterstitialAdModel);

      v60 = sub_1D7D2C1BC();
    }

    if (v32[18] == v53 && v32[19] == v85 || (sub_1D7D3197C() & 1) != 0)
    {
      v32[20] = 0;

      v61 = swift_unknownObjectWeakLoadStrong();
      v62 = v78;
      if (v61)
      {

        sub_1D7CF06F4(v26, v62);
        swift_unknownObjectRelease();

        goto LABEL_32;
      }
    }

    else
    {
      sub_1D7CF0524(v26, v19, type metadata accessor for InterstitialAdModel);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v64 = v84;
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D7CF0348(v19, type metadata accessor for InterstitialAdModel);
        }

        else
        {
          v67 = sub_1D7D2CADC();
          (*(*(v67 - 8) + 8))(v19, v67);
        }

        v66 = v83;
      }

      else
      {
        v65 = v79;
        sub_1D7CF08E8(v19, v79, sub_1D7999AF4);
        sub_1D7CF0400(0, &qword_1EE0BB1E0, MEMORY[0x1E69B42E0]);
        sub_1D7D2D2AC();
        sub_1D7CF0348(v65, sub_1D7999AF4);
        v66 = v83;
        v64 = v84;
      }

      sub_1D7CF0950();
      v68 = swift_allocError();
      *v69 = 0;
      v70 = MEMORY[0x1E69B4438];
      sub_1D7CF0400(0, &qword_1EE0BFA38, MEMORY[0x1E69B4438]);
      v72 = v71;
      v73 = *(v71 - 8);
      (*(v73 + 16))(v66, v64, v71);
      (*(v73 + 56))(v66, 0, 1, v72);

      sub_1D7D2D4DC();

      sub_1D7CF04C4(v66, &qword_1EE0BFA30, &qword_1EE0BFA38, v70, sub_1D7CF03A8);

      sub_1D7D284BC();
      LOBYTE(v68) = sub_1D7D2860C();

      if ((v68 & 1) == 0)
      {
        sub_1D7CF0348(v26, type metadata accessor for InterstitialAdModel);
        goto LABEL_21;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        __swift_project_boxed_opaque_existential_1(v32 + 6, v32[9]);
        v74 = off_1F52ABA50[0];
        type metadata accessor for InterstitialAdModelFactory();

        v75 = v82;
        v74();

        sub_1D7CF06F4(v75, v78);
        swift_unknownObjectRelease();

        sub_1D7CF0348(v75, type metadata accessor for InterstitialAdModel);
        v76 = v26;
LABEL_33:
        sub_1D7CF0348(v76, type metadata accessor for InterstitialAdModel);
        return;
      }
    }

    goto LABEL_32;
  }

  if (qword_1EE0C9558 != -1)
  {
    swift_once();
  }

  v45 = qword_1EE0C9560;
  v46 = sub_1D7D30C4C();
  sub_1D7D29AAC("Aborting ad load - manager deallocated", 38, 2, &dword_1D7987000, v45, v46, MEMORY[0x1E69E7CC0]);
}

double sub_1D7CEFF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + 144) == a2 && *(Strong + 152) == a3;
    if (!v8 && (sub_1D7D3197C() & 1) == 0)
    {
      goto LABEL_11;
    }

    if (qword_1EE0C9558 != -1)
    {
      swift_once();
    }

    v9 = qword_1EE0C9560;
    sub_1D79F3AB0(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7D3B4E0;
    v12 = *(v7 + 144);
    v11 = *(v7 + 152);
    v13 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v14 = sub_1D79D6AE0();
    *(v10 + 64) = v14;
    *(v10 + 32) = v12;
    *(v10 + 40) = v11;

    v15 = InterstitialAdModel.identifier.getter();
    *(v10 + 96) = v13;
    *(v10 + 104) = v14;
    *(v10 + 72) = v15;
    *(v10 + 80) = v16;
    v17 = sub_1D7D30C6C();
    sub_1D7D29AAC("Received request to collapse ad. currentPlacement=%{public}@, modelIdentifier=%{public}@", 88, 2, &dword_1D7987000, v9, v17, v10);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v19[3] = type metadata accessor for InterstitialAdManager();
      v19[4] = &off_1F52B3B60;
      v19[0] = v7;
      v18 = off_1F52A0138;
      type metadata accessor for ArticleViewerInteractor();

      v18();

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
LABEL_11:
    }
  }

  return result;
}

void *sub_1D7CF0164()
{
  sub_1D79C92AC(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return v0;
}

uint64_t sub_1D7CF01CC()
{
  sub_1D7CF0164();

  return swift_deallocClassInstance();
}

unint64_t sub_1D7CF0214()
{
  result = qword_1EE0C7C18;
  if (!qword_1EE0C7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C7C18);
  }

  return result;
}

double sub_1D7CF0268(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1D7CF02D0(uint64_t a1)
{
  sub_1D7CF0400(0, &qword_1EE0BFB70, MEMORY[0x1E69B3F80]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7CF0348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7CF03A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1D7CF0400(255, a3, a4);
    v5 = sub_1D7D3130C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7CF0400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D7D2D39C();
    v8[1] = sub_1D7D2D12C();
    v8[2] = sub_1D79978A8(&qword_1EE0CBD90, MEMORY[0x1E69B4328], MEMORY[0x1E69B4320]);
    v8[3] = MEMORY[0x1E69B4280];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7CF04C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7CF0524(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7CF058C(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewerPage(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_1D7CF0400(0, &qword_1EE0BFA38, MEMORY[0x1E69B4438]);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1 + ((v5 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80));

  sub_1D7CEF3D0(a1, v8, v9, v10, v1 + v4, v11, v6);
}

uint64_t sub_1D7CF0684(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1D799C6E0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

double sub_1D7CF06F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InterstitialAdModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CF0524(a1, v11, type metadata accessor for InterstitialAdModel);
  sub_1D7CF0524(a2, v7, type metadata accessor for ArticleViewerPage);
  v12 = ArticleViewerPage.tracker.getter();
  type metadata accessor for InsertAdvertisementPageBlueprintModifier(0);
  v13 = swift_allocObject();
  sub_1D7CF08E8(v11, v13 + OBJC_IVAR____TtC12NewsArticles40InsertAdvertisementPageBlueprintModifier_advertisementModel, type metadata accessor for InterstitialAdModel);
  sub_1D7CF08E8(v7, v13 + OBJC_IVAR____TtC12NewsArticles40InsertAdvertisementPageBlueprintModifier_articlePage, type metadata accessor for ArticleViewerPage);
  *(v13 + OBJC_IVAR____TtC12NewsArticles40InsertAdvertisementPageBlueprintModifier_tracker) = v12;
  v15[1] = v13;
  sub_1D79978A8(&qword_1EE0BBA78, type metadata accessor for InsertAdvertisementPageBlueprintModifier, &unk_1D7D42B5C);
  sub_1D7D2ADDC();

  return result;
}

uint64_t sub_1D7CF08E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D7CF0950()
{
  result = qword_1EC9E8980;
  if (!qword_1EC9E8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8980);
  }

  return result;
}

double sub_1D7CF09A4()
{
  type metadata accessor for InterstitialAdModel(0);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_1D7CEFF84(v1, v2, v3);
}

void *sub_1D7CF0A1C(void *a1)
{
  v3 = *(type metadata accessor for ArticleViewerPage(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_1D7CEE638(a1, v6, v1 + v5, v7);
}

void sub_1D7CF0ABC()
{
  v1 = *(type metadata accessor for InterstitialAdvertisementPage(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1D7CEF0C0(v2, v3);
}

uint64_t AnalyticsTimedData.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D7D2833C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AnalyticsTimedData.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnalyticsTimedData(0) + 20);
  v4 = sub_1D7D2833C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AnalyticsTimedData(uint64_t a1)
{
  result = qword_1EE0C9508;
  if (!qword_1EE0C9508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7CF0C78(uint64_t a1)
{
  result = sub_1D7D2833C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D7CF0CE4(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for RouteModel(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1D7D2F09C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PDFReplicaViewerRoute(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7CF1740(a1, v17, type metadata accessor for PDFReplicaViewerRoute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D7CAA598(0);
    v23 = *(v17 + *(v22 + 48));
    (*(v10 + 32))(v13, v17, v9);
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    sub_1D798F168(0, &qword_1EE0CBB80, MEMORY[0x1E69B6270]);
    sub_1D7D28D2C();
    if (!v50)
    {
      goto LABEL_35;
    }

    sub_1D799D69C(&v49, v51);
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v24 = sub_1D7D2F3BC();
    v25 = [v24 popoverPresentationController];
    if (v25)
    {
      v26 = v25;
      [v25 setBarButtonItem_];
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v29 = [Strong navigationController];

      if (!v29)
      {
        (*(v10 + 8))(v13, v9);

        goto LABEL_33;
      }

      [v29 presentViewController:v24 animated:1 completion:0];
    }

    else
    {
    }

    (*(v10 + 8))(v13, v9);
LABEL_33:
    __swift_destroy_boxed_opaque_existential_1(v51);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v20 = *v17;
    v19 = v17[1];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    sub_1D798F168(0, &unk_1EE0CCF70, &protocol descriptor for IssueTableOfContentsModuleType);
    sub_1D7D28D2C();
    if (v50)
    {
      sub_1D799D69C(&v49, v51);
      __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
      sub_1D7D28D2C();
      v21 = v49;
      if (v49)
      {
        __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
        sub_1D798F168(0, &qword_1EE0CBE40, MEMORY[0x1E69D85F8]);
        sub_1D7D28D2C();
        if (v47)
        {
          sub_1D799D69C(&v46, &v49);
          __swift_project_boxed_opaque_existential_1(v51, v52);
          v47 = v4;
          v48 = &off_1F52B3C50;
          *&v46 = v2;

          v33 = sub_1D7AAA654(v21, &v46);
          __swift_destroy_boxed_opaque_existential_1(&v46);
          type metadata accessor for TableOfContentsViewController();
          v34 = swift_dynamicCastClass();
          if (v34 && *(v2 + 104) == 1)
          {
            v35 = (v34 + OBJC_IVAR____TtC12NewsArticles29TableOfContentsViewController_pageIdentifierToDisplay);
            *v35 = v20;
            v35[1] = v19;
            v36 = v33;
          }

          __swift_project_boxed_opaque_existential_1(&v49, v50);
          v37 = sub_1D7D2BE4C();
          v38 = swift_unknownObjectWeakLoadStrong();
          if (!v38 || (v39 = v38, v40 = [v38 traitCollection], v39, v41 = objc_msgSend(v40, sel_horizontalSizeClass), v40, v41 <= 1))
          {

            goto LABEL_28;
          }

          if (v41 == 2)
          {

            [v37 setModalPresentationStyle_];
LABEL_28:
            *(v2 + 104) = 1;
            v42 = swift_unknownObjectWeakLoadStrong();
            if (v42 && (v43 = v42, v44 = [v42 navigationController], v43, v44))
            {
              [v44 presentViewController:v37 animated:1 completion:0];

              sub_1D7B62014(v21);
            }

            else
            {

              sub_1D7B62014(v21);
            }

            __swift_destroy_boxed_opaque_existential_1(&v49);
            goto LABEL_33;
          }

          goto LABEL_38;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        sub_1D7D3160C();
        __break(1u);
        return;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = *v17;
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  if (sub_1D7D2F96C() & 1) != 0 && (__swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]), (sub_1D7D2E4DC()))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = v2[11];
    v32 = v2[12];
    __swift_project_boxed_opaque_existential_1(v2 + 8, v31);
    *v8 = v30;
    swift_storeEnumTagMultiPayload();
    swift_unknownObjectRetain();
    RouterType.route(to:)(v8, v31, v32);
    swift_unknownObjectRelease();
    sub_1D7CF17A8(v8, type metadata accessor for RouteModel);
  }
}

uint64_t sub_1D7CF151C()
{
  MEMORY[0x1DA7103D0](v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7CF1598@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for IssueTableOfContentsAction(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7CF1740(a1, v7, type metadata accessor for IssueTableOfContentsAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for IssueTableOfContentsAction;
    v9 = v7;
  }

  else
  {
    v12 = *v7;
    v11 = v7[1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      goto LABEL_8;
    }

    v14 = Strong;
    sub_1D7C9CB50(v18);

    v15 = v19;
    if (v19)
    {
      v16 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      (*(v16 + 8))(v12, v11, v15, v16);

      result = __swift_destroy_boxed_opaque_existential_1(v18);
      goto LABEL_8;
    }

    v8 = sub_1D7C9CCE0;
    v9 = v18;
  }

  result = sub_1D7CF17A8(v9, v8);
LABEL_8:
  *a2 = 1;
  return result;
}

uint64_t sub_1D7CF1740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7CF17A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7CF182C(char *a1, double a2)
{
  v3 = v2;
  v6 = sub_1D7D2FDCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a1[OBJC_IVAR____TtC12NewsArticles33SharedWithYouHeaderViewController_attributionView];
  swift_getObjectType();
  (*(v7 + 104))(v10, *MEMORY[0x1E69B6740], v6);
  sub_1D7D2F78C();
  (*(v7 + 8))(v10, v6);
  [v11 setFrame_];
  sub_1D7D2F76C();
  v12 = [a1 view];
  if (v12)
  {
    v13 = v12;
    [v12 setFrame_];

    v14 = [a1 view];
    if (v14)
    {
      v15 = v14;
      [v14 setBackgroundColor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *AudioSessionInterruptionHandler.__allocating_init(currentlyPlayingObservable:commandCenter:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = objc_opt_self();
  v8 = a1;
  swift_unknownObjectRetain();
  v9 = [v7 defaultCenter];
  [v9 addObserver:v6 selector:sel_handleInterruption_ name:*MEMORY[0x1E69580D8] object:0];

  swift_unknownObjectRelease();
  return v6;
}

void sub_1D7CF1AE4()
{
  sub_1D7C9B4F0(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D7D2EEEC();
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2F1AC();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7D2F68C();
  v43 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7CF2364();
  v17 = v16;
  v46 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D7D2801C();
  if (!v21)
  {
    goto LABEL_13;
  }

  v22 = v21;
  v48 = sub_1D7D3034C();
  v49 = v23;
  sub_1D7D313EC();
  if (!*(v22 + 16) || (v24 = sub_1D7A5BA10(v50), (v25 & 1) == 0))
  {

    sub_1D7A5FF74(v50);
LABEL_13:
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    v31 = qword_1EE0C05E8;
    v32 = sub_1D7D30C4C();
    sub_1D7D29AAC("Audio session interruption update occured but required user info was unavailable!", 81, 2, &dword_1D7987000, v31, v32, MEMORY[0x1E69E7CC0]);
    return;
  }

  sub_1D79FBED0(*(v22 + 56) + 32 * v24, v51);
  sub_1D7A5FF74(v50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  if (v48)
  {
    if (v48 == 1)
    {

      v26 = [*(v47 + 16) value];
      if (v26)
      {
        v27 = *&v26[OBJC_IVAR___NAPlayableArticleInfo_articleId + 8];
        v28 = v26;

        if (v27)
        {

          if (qword_1EE0C05E0 != -1)
          {
            swift_once();
          }

          v29 = qword_1EE0C05E8;
          v30 = sub_1D7D30C6C();
          sub_1D7D29AAC("Audio session was interrupted by the system.  Playback will pause.", 66, 2, &dword_1D7987000, v29, v30, MEMORY[0x1E69E7CC0]);
        }
      }
    }

    else
    {
    }

    return;
  }

  v48 = sub_1D7D3034C();
  v49 = v33;
  sub_1D7D313EC();
  if (*(v22 + 16) && (v34 = sub_1D7A5BA10(v50), (v35 & 1) != 0))
  {
    sub_1D79FBED0(*(v22 + 56) + 32 * v34, v51);
    sub_1D7A5FF74(v50);

    if (swift_dynamicCast())
    {
      if (v48)
      {
        v36 = [*(v47 + 16) value];
        if (v36)
        {
          v37 = v36;
          v42 = *&v36[OBJC_IVAR___NAPlayableArticleInfo_articleId + 8];

          if (v42)
          {

            (*(v43 + 104))(v15, *MEMORY[0x1E69B63A0], v12);
            (*(v44 + 104))(v11, *MEMORY[0x1E69B6170], v8);
            memset(v50, 0, sizeof(v50));
            (*(v45 + 104))(v7, *MEMORY[0x1E69B6058], v4);
            sub_1D7D2F4AC();
            swift_getObjectType();
            sub_1D7D2C3DC();
            v38 = v46;
            (*(v46 + 16))(v3, v20, v17);
            (*(v38 + 56))(v3, 0, 1, v17);
            sub_1D7D2A7EC();

            sub_1D7CF23B8(v3);
            (*(v38 + 8))(v20, v17);
          }
        }
      }

      return;
    }
  }

  else
  {

    sub_1D7A5FF74(v50);
  }

  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  v39 = qword_1EE0C05E8;
  v40 = sub_1D7D30C4C();
  sub_1D7D29AAC("Audio session interruption ended but required interruption options were unavailable!", 84, 2, &dword_1D7987000, v39, v40, MEMORY[0x1E69E7CC0]);
}

uint64_t AudioSessionInterruptionHandler.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D7CF2364()
{
  if (!qword_1EE0BF660)
  {
    v0 = sub_1D7D2F4DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF660);
    }
  }
}

uint64_t sub_1D7CF23B8(uint64_t a1)
{
  sub_1D7C9B4F0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7CF2414(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v90[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D7D3039C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2833C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v80 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    sub_1D7CF2BA0();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();
    return;
  }

  v18 = v17;
  v88 = a2;
  v19 = a1;
  v20 = [v19 endDate];
  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = v20;
  sub_1D7D2830C();

  (*(v9 + 32))(v16, v12, v8);
  v22 = v19;
  [v18 mediaDuration];
  v24 = v23;
  v89 = v22;
  v25 = [v18 mediaType];
  v26 = v25 - 1;
  if ((v25 - 1) > 4 || (v27 = [v18 mediaId]) == 0)
  {
    v37 = v89;

LABEL_12:
    (*(v9 + 8))(v16, v8);
LABEL_13:
    sub_1D7CF2BA0();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();

    return;
  }

  v28 = v27;
  v85 = sub_1D7D3034C();
  v86 = v29;

  v30 = v89;
  v31 = [v18 userAction];
  v33 = 0.0;
  v80 = v7;
  if (v31 > 3)
  {
    switch(v31)
    {
      case 4:
        v39 = 3;
        break;
      case 5:
        v39 = 4;
        break;
      case 6:
        v39 = 5;
        break;
      default:
LABEL_20:

        goto LABEL_12;
    }

    LODWORD(v84) = v39;
  }

  else
  {
    if (v31 != 1)
    {
      if (v31 == 2)
      {
        v40 = [v18 mediaPausePosition];
        LODWORD(v83) = 0;
        v33 = v40;
        v35 = 1;
        goto LABEL_22;
      }

      if (v31 == 3)
      {
        v34 = [v18 mediaResumePosition];
        LODWORD(v83) = 0;
        v33 = v34;
        v35 = 2;
LABEL_22:
        LODWORD(v84) = v35;
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    LODWORD(v84) = 0;
  }

  LODWORD(v83) = 1;
LABEL_26:
  sub_1D7A26AFC(0, v32);
  v87 = v41;
  v42 = v88;
  v43 = &v88[*(v41 + 48)];
  *v88 = 0x502040103uLL >> (8 * v26);
  v44 = v86;
  *(v42 + 1) = v85;
  *(v42 + 2) = v44;
  *(v42 + 3) = v24;
  v42[32] = 0;
  v45 = [v18 startDate];
  sub_1D7D2830C();

  v46 = type metadata accessor for AnalyticsTimedData(0);
  (*(v9 + 16))(&v43[*(v46 + 20)], v16, v8);
  [v18 mediaTimePlayed];
  v48 = v47;
  v49 = [v18 mediaPlayMethod];
  if (v49 >= 3)
  {
    sub_1D7D3160C();
    __break(1u);
  }

  else
  {
    v50 = &v42[*(v87 + 64)];
    *v50 = v84;
    *(v50 + 1) = v48;
    *(v50 + 2) = v33;
    v50[24] = v83;
    v50[25] = 0x10200u >> (8 * v49);
    v51 = [v18 componentIdentifier];
    if (v51)
    {
      v52 = v51;
      v53 = sub_1D7D3034C();
      v85 = v54;
      v86 = v53;
    }

    else
    {
      v85 = 0;
      v86 = 0;
    }

    v55 = [v18 componentType];
    if (v55)
    {
      v56 = v55;
      v57 = sub_1D7D3034C();
      v83 = v58;
      v84 = v57;
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    v59 = v88;
    v60 = [v18 componentRole];
    if (v60)
    {
      v61 = v60;
      v62 = sub_1D7D3034C();
      v81 = v63;
      v82 = v62;
    }

    else
    {
      v81 = 0;
      v82 = 0;
    }

    v64 = [v18 metaData];
    v65 = v89;

    if (v64)
    {
      sub_1D7D3028C();

      v66 = objc_opt_self();
      v67 = sub_1D7D3027C();

      v90[0] = 0;
      v64 = [v66 dataWithJSONObject:v67 options:0 error:v90];

      v68 = v90[0];
      if (v64)
      {
        v69 = sub_1D7D2827C();
        v71 = v70;

        sub_1D7D3038C();
        v72 = sub_1D7D3036C();
        v64 = v73;
        sub_1D79EA2E4(v69, v71);

        (*(v9 + 8))(v16, v8);
      }

      else
      {
        v74 = v68;
        v75 = sub_1D7D2815C();

        swift_willThrow();
        (*(v9 + 8))(v16, v8);

        v72 = 0;
      }

      v59 = v88;
    }

    else
    {

      (*(v9 + 8))(v16, v8);
      v72 = 0;
    }

    v76 = &v59[*(v87 + 80)];
    v77 = v84;
    v78 = v85;
    *v76 = v86;
    v76[1] = v78;
    v76[2] = v77;
    v79 = v82;
    v76[3] = v83;
    v76[4] = v79;
    v76[5] = v81;
    v76[6] = v72;
    v76[7] = v64;
    type metadata accessor for AnalyticsEvent(0);
    swift_storeEnumTagMultiPayload();
  }
}

unint64_t sub_1D7CF2BA0()
{
  result = qword_1EC9E8988;
  if (!qword_1EC9E8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8988);
  }

  return result;
}

unint64_t sub_1D7CF2C08()
{
  result = qword_1EC9E8990;
  if (!qword_1EC9E8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8990);
  }

  return result;
}

uint64_t sub_1D7CF2C5C()
{
  v1 = v0;
  v2 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C98574(v1, v9, type metadata accessor for ArticleViewerPage);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D7CF3BB4(v9, type metadata accessor for ArticleViewerPage);
  }

  else
  {
    sub_1D7C98688(v9, v5, type metadata accessor for ArticleViewerArticlePage);
    v10 = &v5[*(v2 + 32)];
    v11 = *v10;
    sub_1D7B08184(*v10, *(v10 + 1));
    sub_1D7CF3BB4(v5, type metadata accessor for ArticleViewerArticlePage);
    if (v11 < 2)
    {
      return 0;
    }

    sub_1D7B081C8(v11);
  }

  return 1;
}

void sub_1D7CF2DEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ToolbarFeatureContext(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = sub_1D7C3D338();
  if (v10)
  {
    v34 = v7;
    v11 = v2[17];
    v3[17] = v10;
    v12 = v10;

    __swift_project_boxed_opaque_existential_1(v3 + 12, v3[15]);
    v13 = sub_1D7CF2C5C();
    v35 = a2;
    v14 = v13;
    v15 = a1 + *(v6 + 20);
    v16 = *(v15 + 48);
    v17 = *(v15 + 16);
    v44 = *(v15 + 32);
    v45 = v16;
    v18 = *(v15 + 48);
    v46 = *(v15 + 64);
    v19 = *(v15 + 16);
    v43[0] = *v15;
    v43[1] = v19;
    v39 = v44;
    v40 = v18;
    v41 = *(v15 + 64);
    v47 = *(v15 + 80);
    v42 = *(v15 + 80);
    v37 = v43[0];
    v38 = v17;
    sub_1D7A66F20(v43, v48);
    v20 = sub_1D7CA6324(v12, v14, &v37);
    v48[2] = v39;
    v48[3] = v40;
    v48[4] = v41;
    v49 = v42;
    v48[0] = v37;
    v48[1] = v38;
    sub_1D7C538E8(v48);
    sub_1D7992EFC(0, &qword_1EE0BAF70, 0x1E69DC628);
    sub_1D7C98574(a1, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarFeatureContext);
    v21 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v22 = swift_allocObject();
    sub_1D7C98688(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ToolbarFeatureContext);
    *(v22 + ((v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
    v23 = v12;
    v24 = sub_1D7D311EC();
    [v20 addAction:v24 forControlEvents:64];

    sub_1D7CF3B24(0, &qword_1EC9E8998, type metadata accessor for ToolbarIssueCoverButton, type metadata accessor for OverflowBarButtonItemView);
    v26 = v25;
    v27 = objc_allocWithZone(v25);
    *&v27[qword_1EC9E76C0] = 0;
    *&v27[qword_1EC9E76B8] = v20;
    v36.receiver = v27;
    v36.super_class = v26;
    v28 = v20;
    v29 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v29 addSubview_];

    *&v29[qword_1EC9E76C0] = 0x4020000000000000;
    sub_1D79EB1FC();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7D3C670;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
    [*&v29[qword_1EC9E76B8] frame];
    Height = CGRectGetHeight(v51);
    ToolbarFeatureState.init(items:contentInset:)(inited, v35, Height);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];

    ToolbarFeatureState.init(items:contentInset:)(v32, a2, 0.0);
  }
}

uint64_t sub_1D7CF31F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ArticleViewerFeatureAction(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + *(type metadata accessor for ToolbarFeatureContext(0) + 28));
  *v8 = a3;
  swift_storeEnumTagMultiPayload();
  v10 = a3;
  v9(v8);
  return sub_1D7CF3BB4(v8, type metadata accessor for ArticleViewerFeatureAction);
}

uint64_t sub_1D7CF32CC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return swift_deallocClassInstance();
}

void sub_1D7CF3330(CGFloat *a1, char *a2)
{
  v79 = a1;
  v80 = a2;
  v77 = type metadata accessor for ToolbarFeatureContext(0);
  v3 = *(v77 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v77, v5);
  v6 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v2;
  v15 = v2[17];
  if (v15)
  {
    sub_1D7C98574(v80, v10, type metadata accessor for ArticleViewerPage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v17 = *(v10 + 9);
        v101 = *(v10 + 8);
        v102 = v17;
        v103 = *(v10 + 20);
        v18 = *(v10 + 5);
        v97 = *(v10 + 4);
        v98 = v18;
        v19 = *(v10 + 7);
        v99 = *(v10 + 6);
        v100 = v19;
        v20 = *(v10 + 1);
        v93 = *v10;
        v94 = v20;
        v21 = *(v10 + 3);
        v95 = *(v10 + 2);
        v96 = v21;
        v22 = *(&v102 + 1);
        v23 = v15;
        v24 = v22;
        sub_1D79F949C(&v93);
LABEL_14:
        sub_1D7992EFC(0, &qword_1EE0BED00, 0x1E69B5348);
        if (sub_1D7D311DC())
        {
        }

        else
        {
          v38 = v78[17];
          v78[17] = v24;
          v39 = v24;

          v40 = *v79;
          if (*(*v79 + 16))
          {
            v41 = v3;
            v42 = *(v40 + 32);
            v43 = *(v40 + 40);

            v44 = v42;
            v45 = [v44 customView];
            if (v45)
            {
              v46 = v78[15];
              v75 = v45;
              __swift_project_boxed_opaque_existential_1(v78 + 12, v46);
              v76 = v44;
              v47 = v80;
              v48 = sub_1D7CF2C5C();
              v78 = v15;
              v49 = v48;
              v50 = &v47[*(v77 + 20)];
              v51 = *(v50 + 3);
              v52 = *(v50 + 1);
              v89 = *(v50 + 2);
              v90 = v51;
              v53 = *(v50 + 3);
              v91 = *(v50 + 4);
              v54 = *(v50 + 1);
              v88[0] = *v50;
              v88[1] = v54;
              v84 = v89;
              v85 = v53;
              v86 = *(v50 + 4);
              v92 = *(v50 + 10);
              v87 = *(v50 + 10);
              v82 = v88[0];
              v83 = v52;
              sub_1D7A66F20(v88, &v93);
              v77 = v43;
              v55 = sub_1D7CA6324(v39, v49, &v82);
              v95 = v84;
              v96 = v85;
              v97 = v86;
              *&v98 = v87;
              v93 = v82;
              v94 = v83;
              sub_1D7C538E8(&v93);
              sub_1D7992EFC(0, &qword_1EE0BAF70, 0x1E69DC628);
              sub_1D7C98574(v47, v6, type metadata accessor for ToolbarFeatureContext);
              v56 = (*(v41 + 80) + 16) & ~*(v41 + 80);
              v57 = swift_allocObject();
              sub_1D7C98688(v6, v57 + v56, type metadata accessor for ToolbarFeatureContext);
              *(v57 + ((v4 + v56 + 7) & 0xFFFFFFFFFFFFFFF8)) = v39;
              v80 = v39;
              v58 = sub_1D7D311EC();
              [v55 addAction:v58 forControlEvents:64];

              sub_1D7CF3B24(0, &qword_1EC9E8998, type metadata accessor for ToolbarIssueCoverButton, type metadata accessor for OverflowBarButtonItemView);
              v60 = v59;
              v61 = objc_allocWithZone(v59);
              *&v61[qword_1EC9E76C0] = 0;
              *&v61[qword_1EC9E76B8] = v55;
              v81.receiver = v61;
              v81.super_class = v60;
              v62 = v55;
              v63 = [(CGFloat *)&v81 initWithFrame:0.0, 0.0, 0.0, 0.0];
              [(CGFloat *)v63 addSubview:v62];

              *(v63 + qword_1EC9E76C0) = 8.0;
              v64 = v75;
              [v75 frame];
              [(CGFloat *)v63 setFrame:?];
              v65 = objc_opt_self();
              v66 = swift_allocObject();
              v68 = v76;
              v67 = v77;
              v66[2] = v76;
              v66[3] = v67;
              v66[4] = v63;
              *&v84 = sub_1D7CF3B88;
              *(&v84 + 1) = v66;
              *&v82 = MEMORY[0x1E69E9820];
              *(&v82 + 1) = 1107296256;
              *&v83 = sub_1D7C8B29C;
              *(&v83 + 1) = &block_descriptor_44;
              v69 = _Block_copy(&v82);
              v70 = v68;

              v71 = v63;

              [v65 transitionFromView:v64 toView:v71 duration:5242880 options:v69 completion:0.4];
              _Block_release(v69);
              [*(v71 + qword_1EC9E76B8) frame];
              Height = CGRectGetHeight(v104);

              v79[1] = Height;
            }

            else
            {
            }
          }

          else
          {
          }
        }

        return;
      }

      sub_1D799A6BC(0);
      v27 = &v10[*(v26 + 48)];
      v74 = v3;
      v75 = v4;
      v29 = *v27;
      v28 = v27[1];
      v76 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = v27[2];
      v31 = v27[3];
      v32 = v15;
      v33 = v28;
      v34 = v30;
      v3 = v74;
      v4 = v75;
      v35 = v31;
      v6 = v76;
      sub_1D79DA510(v29, v33, v34, v35);
      sub_1D7C98688(v10, v14, type metadata accessor for ArticleViewerArticlePage);
    }

    else
    {
      if ((EnumCaseMultiPayload - 1) < 2)
      {
        sub_1D7CF3BB4(v10, type metadata accessor for ArticleViewerPage);
        return;
      }

      sub_1D7C98688(v10, v14, type metadata accessor for ArticleViewerArticlePage);
      v25 = v15;
    }

    v36 = *&v14[*(v11 + 32)];
    if (v36 >= 2)
    {
      v24 = v36;
      sub_1D7CF3BB4(v14, type metadata accessor for ArticleViewerArticlePage);
    }

    else
    {
      v37 = *(v14 + 2);
      if (([v37 respondsToSelector_] & 1) == 0)
      {

        sub_1D7CF3BB4(v14, type metadata accessor for ArticleViewerArticlePage);
        return;
      }

      v24 = [v37 parentIssue];
      sub_1D7CF3BB4(v14, type metadata accessor for ArticleViewerArticlePage);
      if (!v24)
      {

        return;
      }
    }

    goto LABEL_14;
  }
}

void sub_1D7CF3B24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D7CF3BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for ToolbarFeatureContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  type metadata accessor for ArticleViewerPage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (EnumCaseMultiPayload == 4)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1((v5 + 72));
        v7 = type metadata accessor for ArticleViewerArticlePage(0);
        v8 = v7[7];
        v9 = sub_1D7D295CC();
        (*(*(v9 - 8) + 8))(v5 + v8, v9);
        v10 = (v5 + v7[8]);
        if (*v10 >= 2)
        {
        }

        v11 = (v5 + v7[9]);
        type metadata accessor for ArticleNavigationAction(0);
        v12 = swift_getEnumCaseMultiPayload();
        switch(v12)
        {
          case 2:
            sub_1D7CF3B24(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
            (*(*(v30 - 8) + 8))(v11, v30);
            break;
          case 1:

            break;
          case 0:

            break;
        }

        v31 = (v5 + v7[10]);
        v32 = v31[2];
        if ((~v32 & 0xF000000000000007) != 0)
        {
          sub_1D7A1ECF8(*v31, v31[1], v32);
        }

        sub_1D799A6BC(0);
        sub_1D79DA510(*(v5 + *(v33 + 48)), *(v5 + *(v33 + 48) + 8), *(v5 + *(v33 + 48) + 16), *(v5 + *(v33 + 48) + 24));
      }

      goto LABEL_39;
    }

    type metadata accessor for InterstitialAdModel(0);
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 == 2)
    {
      v18 = sub_1D7D2CADC();
      v16 = v0 + v3;
    }

    else if (v14 == 1)
    {

      sub_1D799A5AC(0);
      v16 = v5 + *(v25 + 36);
      sub_1D7AECD2C(0);
      v18 = v26;
    }

    else
    {
      if (v14)
      {
LABEL_31:
        type metadata accessor for InterstitialAdvertisementPage(0);

        goto LABEL_39;
      }

      sub_1D7999AF4(0);
      v16 = v5 + *(v15 + 36);
      sub_1D7AECC70(0);
      v18 = v17;
    }

    (*(*(v18 - 8) + 8))(v16);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v13 = *(v5 + 88);
      if ((~v13 & 0xF000000000000007) != 0)
      {
        sub_1D7A1ECF8(*(v5 + 72), *(v5 + 80), v13);
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1((v5 + 72));
    v19 = type metadata accessor for ArticleViewerArticlePage(0);
    v20 = v19[7];
    v21 = sub_1D7D295CC();
    (*(*(v21 - 8) + 8))(v5 + v20, v21);
    v22 = (v5 + v19[8]);
    if (*v22 >= 2)
    {
    }

    v23 = (v5 + v19[9]);
    type metadata accessor for ArticleNavigationAction(0);
    v24 = swift_getEnumCaseMultiPayload();
    switch(v24)
    {
      case 2:
        sub_1D7CF3B24(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
        (*(*(v27 - 8) + 8))(v23, v27);
        break;
      case 1:

        break;
      case 0:

        break;
    }

    v28 = (v5 + v19[10]);
    v29 = v28[2];
    if ((~v29 & 0xF000000000000007) != 0)
    {
      sub_1D7A1ECF8(*v28, v28[1], v29);
    }
  }

LABEL_39:
  v34 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = v5 + *(v1 + 20);

  return MEMORY[0x1EEE6BDD0](v0, v34 + 8, v2 | 7);
}

uint64_t sub_1D7CF41BC(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolbarFeatureContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D7CF31F4(a1, v1 + v4, v5);
}

uint64_t sub_1D7CF4278(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  return (*(a5 + 16))(v8, a2, a3, a4);
}

uint64_t sub_1D7CF42E4(uint64_t *a1, int a2)
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

uint64_t sub_1D7CF432C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D7CF4380(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v19 = a5;
  v20 = a3;
  sub_1D7CF4D5C(0, &qword_1EC9E89D0, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CF4C60();
  sub_1D7D31B1C();
  v22 = a2;
  v21 = 0;
  sub_1D79AADEC(0, qword_1EE0BF240, MEMORY[0x1E69E6158]);
  sub_1D7A0BEA8(&qword_1EE0BB0D0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1D7D318BC();
  if (!v5)
  {
    v15 = a4;
    v16 = v19;
    LOBYTE(v22) = 1;
    sub_1D7D318AC();
    v22 = v15;
    v21 = 2;
    sub_1D79AADEC(0, &qword_1EC9E89B0, &type metadata for RecipeRecirculationConfigFilterOption);
    sub_1D7CF4DC0(&qword_1EC9E89D8, sub_1D7CF4E3C, MEMORY[0x1E69E6300]);
    sub_1D7D318BC();
    LOBYTE(v22) = v16 & 1;
    v21 = 3;
    sub_1D7CF4E90();
    sub_1D7D318BC();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1D7CF4624()
{
  v1 = 0x694C657069636572;
  v2 = 0x704F7265746C6966;
  if (*v0 != 2)
  {
    v2 = 0x7942726564726FLL;
  }

  if (*v0)
  {
    v1 = 0x74756F656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D7CF46B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7CF47B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7CF46DC(uint64_t a1)
{
  v2 = sub_1D7CF4C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7CF4718(uint64_t a1)
{
  v2 = sub_1D7CF4C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7CF4754@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D7CF4924(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1D7CF47B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x694C657069636572 && a2 == 0xEF73657079547473;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x704F7265746C6966 && a2 == 0xED0000736E6F6974 || (sub_1D7D3197C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7942726564726FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D7D3197C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D7CF4924(void *a1)
{
  sub_1D7CF4D5C(0, &qword_1EC9E89A0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D7CF4C60();
  sub_1D7D31AFC();
  if (!v1)
  {
    sub_1D79AADEC(0, qword_1EE0BF240, MEMORY[0x1E69E6158]);
    v12 = 0;
    sub_1D7A0BEA8(&qword_1EE0BF238, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D7D317DC();
    v9 = v13;
    LOBYTE(v13) = 1;
    sub_1D7D317CC();
    sub_1D79AADEC(0, &qword_1EC9E89B0, &type metadata for RecipeRecirculationConfigFilterOption);
    v12 = 2;
    sub_1D7CF4DC0(&qword_1EC9E89B8, sub_1D7CF4CB4, MEMORY[0x1E69E6330]);
    sub_1D7D317DC();
    v12 = 3;
    sub_1D7CF4D08();
    sub_1D7D317DC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D7CF4C60()
{
  result = qword_1EC9E89A8;
  if (!qword_1EC9E89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E89A8);
  }

  return result;
}

unint64_t sub_1D7CF4CB4()
{
  result = qword_1EC9E89C0;
  if (!qword_1EC9E89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E89C0);
  }

  return result;
}

unint64_t sub_1D7CF4D08()
{
  result = qword_1EC9E89C8;
  if (!qword_1EC9E89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E89C8);
  }

  return result;
}

void sub_1D7CF4D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7CF4C60();
    v7 = a3(a1, &type metadata for RecipeRecirculationConfigSectionSelectionRule.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7CF4DC0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D79AADEC(255, &qword_1EC9E89B0, &type metadata for RecipeRecirculationConfigFilterOption);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7CF4E3C()
{
  result = qword_1EC9E89E0;
  if (!qword_1EC9E89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E89E0);
  }

  return result;
}

unint64_t sub_1D7CF4E90()
{
  result = qword_1EC9E89E8;
  if (!qword_1EC9E89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E89E8);
  }

  return result;
}

unint64_t sub_1D7CF4EF8()
{
  result = qword_1EC9E89F0;
  if (!qword_1EC9E89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E89F0);
  }

  return result;
}

unint64_t sub_1D7CF4F50()
{
  result = qword_1EC9E89F8;
  if (!qword_1EC9E89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E89F8);
  }

  return result;
}

unint64_t sub_1D7CF4FA8()
{
  result = qword_1EC9E8A00;
  if (!qword_1EC9E8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8A00);
  }

  return result;
}

uint64_t sub_1D7CF500C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D7CF5A28(0, &qword_1EC9E8A20, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CF5980();
  sub_1D7D31B1C();
  v14 = 0;
  sub_1D7D3188C();
  if (!v3)
  {
    v13 = 1;
    sub_1D7D3188C();
  }

  return (*(v7 + 8))(v10, v6);
}

void *sub_1D7CF5198@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D7CF57B8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1D7CF51E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4449656372756F73;
  }

  else
  {
    v3 = 0x7954656372756F73;
  }

  if (v2)
  {
    v4 = 0xEA00000000006570;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x4449656372756F73;
  }

  else
  {
    v5 = 0x7954656372756F73;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006570;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D7D3197C();
  }

  return v8 & 1;
}

uint64_t sub_1D7CF528C()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7CF5314(uint64_t a1)
{
  sub_1D7D303FC();
}

uint64_t sub_1D7CF5388(uint64_t a1)
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7CF540C@<X0>(char *a2@<X8>)
{
  v3 = sub_1D7D316EC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1D7CF546C(uint64_t *a1@<X8>)
{
  v2 = 0x7954656372756F73;
  if (*v1)
  {
    v2 = 0x4449656372756F73;
  }

  v3 = 0xEA00000000006570;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D7CF54B0()
{
  if (*v0)
  {
    return 0x4449656372756F73;
  }

  else
  {
    return 0x7954656372756F73;
  }
}

uint64_t sub_1D7CF54F0@<X0>(char *a3@<X8>)
{
  v4 = sub_1D7D316EC();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1D7CF5554(uint64_t a1)
{
  v2 = sub_1D7CF5980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7CF5590(uint64_t a1)
{
  v2 = sub_1D7CF5980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7CF55CC()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7CF5640(uint64_t a1)
{
  sub_1D7D31A8C();
  sub_1D7D303FC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7CF5694@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1D7D316EC();

  *a2 = v3 != 0;
  return result;
}

void *sub_1D7CF57B8(void *a1)
{
  sub_1D7CF5A28(0, &qword_1EC9E8A08, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7CF5980();
  sub_1D7D31AFC();
  if (!v1)
  {
    v11[15] = 0;
    sub_1D7CF59D4();
    sub_1D7D317DC();
    v11[14] = 1;
    v9 = sub_1D7D317AC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D7CF5980()
{
  result = qword_1EC9E8A10;
  if (!qword_1EC9E8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8A10);
  }

  return result;
}

unint64_t sub_1D7CF59D4()
{
  result = qword_1EC9E8A18;
  if (!qword_1EC9E8A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8A18);
  }

  return result;
}

void sub_1D7CF5A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7CF5980();
    v7 = a3(a1, &type metadata for RecipeRecirculationRecipeSourceCandidate.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7CF5AB0()
{
  result = qword_1EC9E8A28;
  if (!qword_1EC9E8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8A28);
  }

  return result;
}

unint64_t sub_1D7CF5B08()
{
  result = qword_1EC9E8A30;
  if (!qword_1EC9E8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8A30);
  }

  return result;
}

unint64_t sub_1D7CF5B60()
{
  result = qword_1EC9E8A38;
  if (!qword_1EC9E8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8A38);
  }

  return result;
}

unint64_t sub_1D7CF5BB8()
{
  result = qword_1EC9E8A40;
  if (!qword_1EC9E8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8A40);
  }

  return result;
}

unint64_t sub_1D7CF5C0C()
{
  result = qword_1EC9E8A48;
  if (!qword_1EC9E8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8A48);
  }

  return result;
}

void sub_1D7CF5CE8(void *a1, char a2)
{
  if (a2 == 3)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() blackColor];
  }

  v4 = v3;
  [a1 setBackgroundColor_];
}

void sub_1D7CF5D90(void *a1)
{
  v2 = [objc_opt_self() blackColor];
  [a1 setBackgroundColor_];
}

id sub_1D7CF5E04(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() blackColor];
    [v1 setBackgroundColor_];

    [v1 _setPocketPreferredUserInterfaceStyle_forEdge_];
    [v1 _setPocketPreferredUserInterfaceStyle_forEdge_];
    [v1 _setPocketPreferredUserInterfaceStyle_forEdge_];

    return [v1 _setPocketPreferredUserInterfaceStyle_forEdge_];
  }

  return result;
}

id sub_1D7CF5EC8(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:*(v3 + *a2) style:0 target:v3 action:*a3];
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_1D7CF5F54@<X0>(id *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v6 = *a1;
  v3 = swift_allocObject();
  *(v3 + 16) = v6;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D7CF9278;
  *(v4 + 24) = v3;
  *a2 = sub_1D7AC1824;
  a2[1] = v4;

  return v6;
}

id sub_1D7CF5FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchToolBar;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for SearchInArticleTextToolBar()) initWithFrame_];
  v8 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTextField;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69DCF28]) init];
  v3[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isWholeWordsEnabled] = 0;
  v3[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isMatchCaseEnabled] = 0;
  *&v3[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalSearchResults] = 0;
  *&v3[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_currentSearchIndex] = 0;
  v9 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalLabel;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v3[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_keyboardHeight] = 0;
  v3[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isBeginningFilterActive] = 0;
  v10 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_nextImage;
  v11 = sub_1D7D3031C();
  v12 = objc_opt_self();
  v13 = [v12 systemImageNamed_];

  *&v3[v10] = v13;
  v14 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_previousImage;
  v15 = sub_1D7D3031C();
  v16 = [v12 systemImageNamed_];

  *&v3[v14] = v16;
  *&v3[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController____lazy_storage___nextTokenBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController____lazy_storage___previousTokenBarButtonItem] = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v19 = sub_1D7CF91C4();
  v38[3] = v19;
  v38[0] = sub_1D7CF5F54;
  v38[1] = 0;
  v20 = sub_1D7D3031C();

  if (v19)
  {
    v21 = __swift_project_boxed_opaque_existential_1(v38, v19);
    v22 = ObjectType;
    v23 = *(v19 - 8);
    v24 = MEMORY[0x1EEE9AC00](v21, v21);
    v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = sub_1D7D3195C();
    (*(v23 + 8))(v26, v19);
    ObjectType = v22;
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    v27 = 0;
  }

  v28 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_cancelButton;
  v29 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:v20 style:0 target:v27 action:sel_cancelButtonTapped];

  swift_unknownObjectRelease();
  *&v3[v28] = v29;
  v30 = &v3[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_commandCenter];
  v31 = v36;
  *v30 = a1;
  v30[1] = v31;
  *&v3[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_tracker] = a3;
  v32 = &v3[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTerm];
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v37.receiver = v3;
  v37.super_class = ObjectType;
  swift_unknownObjectRetain();

  v33 = objc_msgSendSuper2(&v37, sel_initWithNibName_bundle_, 0, 0);
  sub_1D7CF6454();

  swift_unknownObjectRelease();

  return v33;
}

uint64_t sub_1D7CF6454()
{
  swift_getObjectType();
  swift_getObjectType();
  if (qword_1EC9DFE70 != -1)
  {
    swift_once();
  }

  sub_1D7C01580();
  sub_1D7CF9EC8(&unk_1EC9E8B60, v0, type metadata accessor for SearchInArticleViewController, &unk_1D7D63970);
  sub_1D7D2A79C();
  if (qword_1EC9DFE78 != -1)
  {
    swift_once();
  }

  sub_1D7D2A79C();
  if (qword_1EC9DFE80 != -1)
  {
    swift_once();
  }

  sub_1D7D2A79C();
  if (qword_1EC9DFE88 != -1)
  {
    swift_once();
  }

  return sub_1D7D2A79C();
}

void sub_1D7CF668C()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 clearColor];
    [v2 setBackgroundColor_];

    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 setUserInteractionEnabled_];

      v7 = sub_1D7CF5EC8(&OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController____lazy_storage___previousTokenBarButtonItem, &OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_previousImage, &selRef_previousButtonTapped);
      v8 = [v3 labelColor];
      [v7 setTintColor_];

      v9 = sub_1D7CF5EC8(&OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController____lazy_storage___nextTokenBarButtonItem, &OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_nextImage, &selRef_nextButtonTapped);
      v10 = [v3 labelColor];
      [v9 setTintColor_];

      v11 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchToolBar;
      v12 = *(*&v0[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchToolBar] + OBJC_IVAR____TtC12NewsArticles26SearchInArticleTextToolBar_toolbar);
      v13 = [v3 labelColor];
      [v12 setTintColor_];

      sub_1D7CF6B6C();
      v14 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTextField;
      [*&v0[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTextField] setAutocorrectionType_];
      [*&v0[v14] setSpellCheckingType_];
      [*&v0[v14] setSmartQuotesType_];
      [*&v0[v14] setSmartDashesType_];
      [*&v0[v14] setSmartInsertDeleteType_];
      [*&v0[v14] setReturnKeyType_];
      [*&v0[v14] setInputAccessoryView_];
      [*&v0[v14] setDelegate_];
      v15 = *&v0[v14];
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = objc_opt_self();
      v18 = v15;
      v19 = [v17 bundleForClass_];
      sub_1D7D2811C();

      v20 = sub_1D7D3031C();

      [v18 setPlaceholder_];

      [*&v0[v14] setReturnKeyType_];
      [*&v0[v14] addTarget:v0 action:sel_textFieldDidChange_ forControlEvents:0x20000];
      v21 = [*&v0[v14] inputAssistantItem];
      sub_1D7992EFC(0, &qword_1EC9E8B70, 0x1E69DC720);
      v22 = sub_1D7D3062C();
      [v21 setLeadingBarButtonGroups_];

      v23 = [*&v0[v14] inputAssistantItem];
      v24 = sub_1D7D3062C();
      [v23 setTrailingBarButtonGroups_];

      sub_1D7CF6F90();
      v25 = objc_opt_self();
      v26 = [v25 defaultCenter];
      [v26 addObserver:v0 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

      v27 = [v25 defaultCenter];
      [v27 addObserver:v0 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D7CF6B6C()
{
  v1 = v0;
  v2 = [objc_opt_self() buttonWithType_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTintColor_];

  v4 = sub_1D7D3031C();
  v5 = [objc_opt_self() systemImageNamed_];

  [v2 setImage:v5 forState:0];
  [v2 addTarget:v1 action:sel_clearSearchTextField forControlEvents:1];
  v6 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalLabel;
  v7 = *(v1 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalLabel);
  if (*(v1 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalSearchResults) < 1)
  {
    v12 = v7;
    sub_1D7D3190C();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    goto LABEL_5;
  }

  if (!__OFADD__(*(v1 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_currentSearchIndex), 1))
  {
    v8 = v7;
    sub_1D7D3190C();
    MEMORY[0x1DA70DE90](543584032, 0xE400000000000000);
    v9 = sub_1D7D3190C();
    MEMORY[0x1DA70DE90](v9);

    type metadata accessor for Localized();
    v10 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
LABEL_5:
    v14 = v11;
    sub_1D7D2811C();

    v15 = sub_1D7D3031C();

    [v7 setText_];

    sub_1D7A782C0(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7D41F60;
    v17 = *(v1 + v6);
    *(v16 + 32) = v17;
    *(v16 + 40) = v2;
    v18 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
    sub_1D7992EFC(0, &unk_1EE0BED20, 0x1E69DD250);
    v19 = v17;
    v20 = v2;
    v21 = sub_1D7D3062C();

    v22 = [v18 initWithArrangedSubviews_];

    [v22 setAxis_];
    [v22 setSpacing_];
    [v22 setAlignment_];
    v23 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTextField;
    [*(v1 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTextField) setRightView_];
    [*(v1 + v23) setRightViewMode_];

    return;
  }

  __break(1u);
}

void sub_1D7CF6F90()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v2 = sub_1D7D3031C();
  v3 = [objc_opt_self() _systemImageNamed_];

  [v1 setImage:v3 forState:0];
  v27 = sub_1D7CF7424(v1);
  [v1 setMenu_];
  [v1 setShowsMenuAsPrimaryAction_];
  [v1 setChangesSelectionAsPrimaryAction_];
  v4 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalLabel;
  v5 = *(v0 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalLabel);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 labelColor];
  [v7 setTextColor_];

  v9 = *(v0 + v4);
  v10 = [v6 secondaryLabelColor];
  [v9 setTintColor_];

  v11 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTextField;
  [*(v0 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTextField) setLeftView_];
  v12 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchToolBar;
  [*(v0 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchToolBar) setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
  v14 = *(*(v0 + v12) + OBJC_IVAR____TtC12NewsArticles26SearchInArticleTextToolBar_toolbar);
  sub_1D7A782C0(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7D49E90;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v17 = v14;
  v18 = [v16 initWithBarButtonSystemItem:5 target:0 action:0];
  v19 = *(v0 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_cancelButton);
  *(v15 + 32) = v18;
  *(v15 + 40) = v19;
  *(v15 + 48) = v13;
  v20 = v19;
  v21 = v13;
  *(v15 + 56) = sub_1D7CF5EC8(&OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController____lazy_storage___previousTokenBarButtonItem, &OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_previousImage, &selRef_previousButtonTapped);
  *(v15 + 64) = sub_1D7CF5EC8(&OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController____lazy_storage___nextTokenBarButtonItem, &OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_nextImage, &selRef_nextButtonTapped);
  *(v15 + 72) = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  sub_1D7992EFC(0, &qword_1EE0BF050, 0x1E69DC708);
  v22 = sub_1D7D3062C();

  [v17 setItems_];

  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D7D3C670;
  v25 = [*(v0 + v11) widthAnchor];
  v26 = [v25 constraintGreaterThanOrEqualToConstant_];

  *(v24 + 32) = v26;
  sub_1D7992EFC(0, &qword_1EE0BAFB0, 0x1E696ACD8);
  v28 = sub_1D7D3062C();

  [v23 activateConstraints_];
}

uint64_t sub_1D7CF7424(void *a1)
{
  v2 = v1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  sub_1D7D2811C();

  v7 = v2[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isMatchCaseEnabled];
  sub_1D7992EFC(0, &qword_1EE0BAF70, 0x1E69DC628);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;
  v9 = v2;
  v10 = a1;
  v20 = sub_1D7D311EC();
  v11 = [v5 bundleForClass_];
  sub_1D7D2811C();

  v12 = v9[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isWholeWordsEnabled];
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  v14 = v9;
  v15 = v10;
  v16 = sub_1D7D311EC();
  sub_1D7992EFC(0, &qword_1EE0BED30, 0x1E69DCC60);
  v17 = [v5 bundleForClass_];
  sub_1D7D2811C();

  sub_1D7A782C0(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7D41F60;
  *(v18 + 32) = v20;
  *(v18 + 40) = v16;
  return sub_1D7D3107C();
}

uint64_t sub_1D7CF778C(void *a1)
{
  v2 = v1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  sub_1D7D2811C();

  v6 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isBeginningFilterActive;
  v7 = *(v2 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isBeginningFilterActive);
  sub_1D7992EFC(0, &qword_1EE0BAF70, 0x1E69DC628);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = a1;
  v22 = sub_1D7D311EC();
  v11 = [v4 bundleForClass_];
  sub_1D7D2811C();

  v12 = (*(v2 + v6) & 1) == 0;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  v15 = v10;
  v20 = v14;
  v16 = sub_1D7D311EC();
  sub_1D7992EFC(0, &qword_1EE0BED30, 0x1E69DCC60);
  v17 = [v4 bundleForClass_];
  sub_1D7D2811C();

  sub_1D7A782C0(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7D41F60;
  *(v18 + 32) = v22;
  *(v18 + 40) = v16;
  return sub_1D7D3107C();
}

double sub_1D7CF7B38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  *(a2 + *a4) = (*(a2 + *a4) & 1) == 0;
  v5 = sub_1D7CF7424(a3);
  [a3 setMenu_];

  return sub_1D7CF8370(&qword_1EC9DFE70, &qword_1EC9E6AB0, sub_1D7C01000);
}

id sub_1D7CF7BC0(void *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v4 = sub_1D7D3031C();

  [a1 setTitle:v4 forState:{0, 0x80000001D7D818C0}];

  v5 = sub_1D7CF778C(a1);
  [a1 setMenu_];

  return [a1 setShowsMenuAsPrimaryAction_];
}

void sub_1D7CF7D34(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isBeginningFilterActive] = a4;
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_1D7CF7BC0(a3);
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_1D7CF8370(&qword_1EC9DFE70, &qword_1EC9E6AB0, sub_1D7C01000);
  }
}

void sub_1D7CF7FA4()
{
  v1 = v0;
  v2 = sub_1D7D2B49C();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 104))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7FD8], v4);
  v7 = *&v0[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_tracker];
  v10[4] = sub_1D7D28A3C();
  v10[5] = sub_1D7CF9EC8(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
  v10[1] = v7;
  v11 = 0u;
  v12 = 0u;
  v13 = 1;
  sub_1D7D2B10C();
  swift_allocObject();

  sub_1D7D2B0EC();
  swift_getObjectType();
  if (qword_1EC9DFE88 != -1)
  {
    swift_once();
  }

  sub_1D7D2A7DC();
  [*&v0[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTextField] resignFirstResponder];
  [v0 willMoveToParentViewController_];
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 removeFromSuperview];

    [v1 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }
}

double sub_1D7CF8370(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1D7D2B49C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7FD8], v7);
  v10 = *(v3 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_tracker);
  v12[4] = sub_1D7D28A3C();
  v12[5] = sub_1D7CF9EC8(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
  v12[1] = v10;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  sub_1D7D2B10C();
  swift_allocObject();

  sub_1D7D2B0EC();
  swift_getObjectType();
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1D7D2A7DC();

  return result;
}

double sub_1D7CF870C()
{
  v1 = v0;
  v2 = sub_1D7D2B49C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTerm);
  *v7 = 0;
  v7[1] = 0xE000000000000000;

  v8 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTextField;
  v9 = *(v1 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTextField);
  v10 = sub_1D7D3031C();
  [v9 setText_];

  (*(v3 + 104))(v6, *MEMORY[0x1E69D7FD8], v2);
  v11 = *(v1 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_tracker);
  v13[4] = sub_1D7D28A3C();
  v13[5] = sub_1D7CF9EC8(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
  v13[1] = v11;
  v14 = 0u;
  v15 = 0u;
  v16 = 1;
  sub_1D7D2B10C();
  swift_allocObject();

  sub_1D7D2B0EC();
  swift_getObjectType();
  if (qword_1EC9DFE88 != -1)
  {
    swift_once();
  }

  sub_1D7D2A7DC();
  [*(v1 + v8) setRightView_];

  return result;
}

void sub_1D7CF89F4(double a1)
{
  v2 = v1;
  v3 = sub_1D7D2801C();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  sub_1D7D3034C();
  sub_1D7D313EC();
  if (!*(v4 + 16) || (v5 = sub_1D7A5BA10(&v8), (v6 & 1) == 0))
  {

    sub_1D7A5FF74(&v8);
LABEL_11:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_12;
  }

  sub_1D79FBED0(*(v4 + 56) + 32 * v5, &v9);
  sub_1D7A5FF74(&v8);

  if (!*(&v10 + 1))
  {
LABEL_12:
    sub_1D79F0014(&v9);
    return;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    Height = CGRectGetHeight(v8);
    if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (Height > -9.22337204e18)
    {
      if (Height < 9.22337204e18)
      {
        *(v2 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_keyboardHeight) = Height;
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

id sub_1D7CF8E84(uint64_t a1, double a2, double a3)
{
  v7 = [v3 subviews];
  sub_1D7992EFC(0, &unk_1EE0BED20, 0x1E69DD250);
  v8 = sub_1D7D3063C();

  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_18:
    v10 = sub_1D7D3167C();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 & 0xC000000000000001;
  v18 = v8;
  v12 = v8 + 32;
  v8 = &off_1E84EC000;
  while (v10)
  {
    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v11)
    {
      v14 = MEMORY[0x1DA70EF00](v10, v18);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v10 >= *(v9 + 16))
      {
        goto LABEL_17;
      }

      v14 = *(v12 + 8 * v10);
    }

    v15 = v14;
    [v14 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v16 = [v15 hitTest:a1 withEvent:?];

    if (v16)
    {

      return v16;
    }
  }

  return 0;
}

id sub_1D7CF9168(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1D7CF91C4()
{
  result = qword_1EC9E8B48;
  if (!qword_1EC9E8B48)
  {
    sub_1D7CF922C();
    type metadata accessor for SearchInArticleViewController();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EC9E8B48);
  }

  return result;
}

unint64_t sub_1D7CF922C()
{
  result = qword_1EC9E8B50;
  if (!qword_1EC9E8B50)
  {
    type metadata accessor for SearchInArticleViewController();
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC9E8B50);
  }

  return result;
}

id sub_1D7CF9278()
{
  v1 = [*(v0 + 16) self];

  return v1;
}

void sub_1D7CF92B0()
{
  v1 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchToolBar;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SearchInArticleTextToolBar()) initWithFrame_];
  v2 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTextField;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCF28]) init];
  *(v0 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isWholeWordsEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isMatchCaseEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalSearchResults) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_currentSearchIndex) = 0;
  v3 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v0 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_keyboardHeight) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isBeginningFilterActive) = 0;
  v4 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_nextImage;
  v5 = sub_1D7D3031C();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed_];

  *(v0 + v4) = v7;
  v8 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_previousImage;
  v9 = sub_1D7D3031C();
  v10 = [v6 systemImageNamed_];

  *(v0 + v8) = v10;
  *(v0 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController____lazy_storage___nextTokenBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController____lazy_storage___previousTokenBarButtonItem) = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v13 = sub_1D7CF91C4();
  v26 = v13;
  v24 = sub_1D7CF5F54;
  v25 = 0;
  v14 = sub_1D7D3031C();

  if (v13)
  {
    v15 = __swift_project_boxed_opaque_existential_1(&v24, v13);
    v16 = *(v13 - 8);
    v17 = MEMORY[0x1EEE9AC00](v15, v15);
    v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = sub_1D7D3195C();
    (*(v16 + 8))(v19, v13);
    __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  else
  {
    v20 = 0;
  }

  v21 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_cancelButton;
  v22 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v23 = [v22 initWithTitle:v14 style:0 target:v20 action:{sel_cancelButtonTapped, v24, v25}];

  swift_unknownObjectRelease();
  *(v0 + v21) = v23;
  sub_1D7D3160C();
  __break(1u);
}

uint64_t sub_1D7CF9694(uint64_t a1)
{
  sub_1D7D2C5BC();
  if (qword_1EC9DFE70 != -1)
  {
    swift_once();
  }

  if (sub_1D7D2C28C())
  {
    return 1;
  }

  if (qword_1EC9DFE78 != -1)
  {
    swift_once();
  }

  if (sub_1D7D2C28C())
  {
    return 1;
  }

  if (qword_1EC9DFE80 != -1)
  {
    swift_once();
  }

  if (sub_1D7D2C28C())
  {
    return 1;
  }

  if (qword_1EC9DFE88 != -1)
  {
    swift_once();
  }

  return sub_1D7D2C28C() & 1;
}

void sub_1D7CF97D8(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = v3;
  sub_1D7D2C5BC();
  if (qword_1EC9DFE70 != -1)
  {
    swift_once();
  }

  if ((sub_1D7D2C28C() & 1) == 0)
  {
    if (qword_1EC9DFE78 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

  if (*(v3 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isWholeWordsEnabled))
  {
    v6 = ((*(v3 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isMatchCaseEnabled) & 1) == 0) | 2;
  }

  else
  {
    v6 = (*(v3 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isMatchCaseEnabled) & 1) == 0;
  }

  v7 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalSearchResults);
  if (v7 < 0)
  {
    __break(1u);
LABEL_52:
    swift_once();
LABEL_15:
    if ((sub_1D7D2C28C() & 1) == 0)
    {
      goto LABEL_25;
    }

    v16 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalSearchResults);
    if (v16 < 1)
    {
      return;
    }

    if (*(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isWholeWordsEnabled))
    {
      v17 = ((*(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isMatchCaseEnabled) & 1) == 0) | 2;
    }

    else
    {
      v17 = (*(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isMatchCaseEnabled) & 1) == 0;
    }

    v18 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_currentSearchIndex;
    v19 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_currentSearchIndex);
    if (v19 < 0)
    {
      __break(1u);
    }

    else
    {
      v47 = a3;
      v20 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_keyboardHeight);
      if ((v20 & 0x8000000000000000) == 0)
      {
        v21 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isBeginningFilterActive);
        v22 = objc_allocWithZone(MEMORY[0x1E69CE0A8]);

        a3 = sub_1D7D3031C();

        v23 = [v22 initWithSearchTerm:a3 options:v17 total:v16 index:v19 action:1 isBeginningFilterActive:v21 keyboardHeight:v20];

        if (!v23)
        {
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        ObjectType = swift_getObjectType();
        v46 = v47[1](v23, ObjectType);

        v25 = [v46 index];
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        __break(1u);
LABEL_25:
        if (qword_1EC9DFE80 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_60:
    swift_once();
LABEL_37:
    if ((sub_1D7D2C28C() & 1) == 0)
    {
      return;
    }

    if (*(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isWholeWordsEnabled))
    {
      v34 = ((*(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isMatchCaseEnabled) & 1) == 0) | 2;
    }

    else
    {
      v34 = (*(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isMatchCaseEnabled) & 1) == 0;
    }

    v18 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalSearchResults;
    v35 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalSearchResults);
    if ((v35 & 0x8000000000000000) == 0)
    {
      v36 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_currentSearchIndex);
      if ((v36 & 0x8000000000000000) == 0)
      {
        v49 = a3;
        v37 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_keyboardHeight);
        if ((v37 & 0x8000000000000000) == 0)
        {
          v38 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isBeginningFilterActive);
          v39 = objc_allocWithZone(MEMORY[0x1E69CE0A8]);

          v40 = sub_1D7D3031C();

          v41 = [v39 initWithSearchTerm:v40 options:v34 total:v35 index:v36 action:3 isBeginningFilterActive:v38 keyboardHeight:v37];

          if (!v41)
          {
LABEL_70:
            __break(1u);
            return;
          }

          v42 = swift_getObjectType();
          v46 = v49[1](v41, v42);

          v25 = [v46 total];
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_66;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v8 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_currentSearchIndex);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v9 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_keyboardHeight);
  if (v9 < 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v43 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_currentSearchIndex;
  v44 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalSearchResults;
  v45 = a3;
  v10 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isBeginningFilterActive);
  v11 = objc_allocWithZone(MEMORY[0x1E69CE0A8]);

  a3 = sub_1D7D3031C();

  v12 = [v11 initWithSearchTerm:a3 options:v6 total:v7 index:v8 action:0 isBeginningFilterActive:v10 keyboardHeight:v9];

  if (!v12)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v13 = swift_getObjectType();
  v46 = v45[1](v12, v13);

  v14 = [v46 total];
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  *(v4 + v44) = v14;
  v15 = [v46 index];
  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
LABEL_26:
    if ((sub_1D7D2C28C() & 1) == 0)
    {
      goto LABEL_36;
    }

    v26 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_totalSearchResults);
    if (v26 < 1)
    {
      return;
    }

    if (*(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isWholeWordsEnabled))
    {
      v27 = ((*(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isMatchCaseEnabled) & 1) == 0) | 2;
    }

    else
    {
      v27 = (*(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isMatchCaseEnabled) & 1) == 0;
    }

    v18 = OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_currentSearchIndex;
    v28 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_currentSearchIndex);
    if (v28 < 0)
    {
      __break(1u);
    }

    else
    {
      v48 = a3;
      v29 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_keyboardHeight);
      if ((v29 & 0x8000000000000000) == 0)
      {
        v30 = *(v4 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_isBeginningFilterActive);
        v31 = objc_allocWithZone(MEMORY[0x1E69CE0A8]);

        a3 = sub_1D7D3031C();

        v32 = [v31 initWithSearchTerm:a3 options:v27 total:v26 index:v28 action:2 isBeginningFilterActive:v30 keyboardHeight:v29];

        if (!v32)
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v33 = swift_getObjectType();
        v46 = v48[1](v32, v33);

        v25 = [v46 index];
        if ((v25 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_36:
          if (qword_1EC9DFE88 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_60;
        }

LABEL_46:
        *(v4 + v18) = v25;
        goto LABEL_47;
      }
    }

    __break(1u);
    goto LABEL_63;
  }

  *(v4 + v43) = v15;
LABEL_47:
  sub_1D7CF6B6C();
}

uint64_t sub_1D7CF9EC8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EndOfArticleBackfill.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

unint64_t sub_1D7CFA028()
{
  result = qword_1EC9E8B78;
  if (!qword_1EC9E8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8B78);
  }

  return result;
}

uint64_t ToolbarLayoutOptions.init(frame:traitCollection:layoutMargins:layoutDirection:contentSizeCategory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, double a12@<D7>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a7;
  *(a4 + 24) = a8;
  *(a4 + 32) = result;
  *(a4 + 40) = a9;
  *(a4 + 48) = a10;
  *(a4 + 56) = a11;
  *(a4 + 64) = a12;
  *(a4 + 72) = a2;
  *(a4 + 80) = a3;
  return result;
}

uint64_t sub_1D7CFA0D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7CFA120(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1D7CFA184(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_27:
    v4 = sub_1D7D3167C();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v37 = v3 & 0xFFFFFFFFFFFFFF8;
      v38 = v3 & 0xC000000000000001;
      v35 = v3;
      v36 = a2;
      v34 = v4;
      do
      {
        if (v38)
        {
          v7 = MEMORY[0x1DA70EF00](v5, v3);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v5 >= *(v37 + 16))
          {
            goto LABEL_24;
          }

          v7 = *(v3 + 8 * v5 + 32);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v39 = v8;
        v9 = v7;
        v10 = [v7 lightColor];
        v11 = [v10 hex];

        v12 = sub_1D7D3034C();
        v14 = v13;

        v40 = v9;
        v15 = [v9 darkColor];
        v16 = [v15 hex];

        v17 = sub_1D7D3034C();
        v3 = v18;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *a2;
        v41 = *a2;
        *a2 = 0x8000000000000000;
        a2 = sub_1D7A18FFC(v12, v14);
        v22 = *(v20 + 16);
        v23 = (v21 & 1) == 0;
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_25;
        }

        v25 = v21;
        if (*(v20 + 24) >= v24)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v28 = v41;
            if (v21)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1D7B98B64();
            v28 = v41;
            if (v25)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1D7B94798(v24, isUniquelyReferenced_nonNull_native);
          v26 = sub_1D7A18FFC(v12, v14);
          if ((v25 & 1) != (v27 & 1))
          {
            sub_1D7D31A2C();
            __break(1u);
            return;
          }

          a2 = v26;
          v28 = v41;
          if (v25)
          {
LABEL_4:
            v6 = (v28[7] + 16 * a2);
            *v6 = v17;
            v6[1] = v3;

            goto LABEL_5;
          }
        }

        v28[(a2 >> 6) + 8] |= 1 << a2;
        v29 = (v28[6] + 16 * a2);
        *v29 = v12;
        v29[1] = v14;
        v30 = (v28[7] + 16 * a2);
        *v30 = v17;
        v30[1] = v3;
        v31 = v28[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_26;
        }

        v28[2] = v33;
LABEL_5:
        a2 = v36;
        *v36 = v28;

        ++v5;
        v3 = v35;
      }

      while (v39 != v34);
    }
  }
}

uint64_t sub_1D7CFA4F4()
{
  swift_getObjectType();
  if (qword_1EE0CB4D0 != -1)
  {
    swift_once();
  }

  if ((sub_1D7D2860C() & 1) == 0)
  {
    return 0;
  }

  sub_1D7CFA9D0();

  sub_1D7D285AC();

  if (v4)
  {
    return 1;
  }

  v1 = [*(v0 + OBJC_IVAR____TtC12NewsArticles21DarkModeConfiguration_headline) sourceChannel];
  if (!v1)
  {
    return 1;
  }

  v2 = [v1 isAutoDarkModeEnabled];
  swift_unknownObjectRelease();
  return v2;
}