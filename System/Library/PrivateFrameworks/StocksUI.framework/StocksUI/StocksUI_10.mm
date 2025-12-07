uint64_t sub_22056D380()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 16) + 48))(v2);
}

uint64_t sub_22056D3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v72 = sub_22088685C();
  v8 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v9);
  v71 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for StockFeedViewerPage(0);
  v70 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v11);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088D37C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22056DCB8(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v65 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22056DE08(0, &qword_281297F20, MEMORY[0x277D6D448]);
  v68 = *(v21 - 8);
  v69 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v64 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v67 = v61 - v26;
  v27 = *(a2 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v61[0] = v17;
    v61[1] = a1;
    v62 = v4;
    v63 = a3;
    v76 = MEMORY[0x277D84F90];
    sub_22070BE04(0, v27, 0);
    v28 = v76;
    v31 = *(v8 + 16);
    v30 = v8 + 16;
    v29 = v31;
    v32 = a2 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v33 = *(v30 + 56);
    v34 = (v30 + 16);
    do
    {
      v36 = v71;
      v35 = v72;
      v29(v71, v32, v72);
      (*v34)(v13, v36, v35);
      v76 = v28;
      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_22070BE04((v37 > 1), v38 + 1, 1);
        v28 = v76;
      }

      *(v28 + 16) = v38 + 1;
      sub_22056DD84(v13, v28 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v38);
      v32 += v33;
      --v27;
    }

    while (v27);
    v4 = v62;
    a3 = v63;
  }

  v39 = sub_22056E0D0(&qword_28128F9C8, type metadata accessor for StockFeedViewerPage, &unk_2208B99B4);
  v40 = sub_22056E0D0(&qword_28128F9E0, type metadata accessor for StockFeedViewerPage, &unk_2208B9A1C);
  MEMORY[0x223D80A20](v28, v66, v39, v40);
  sub_22056E0D0(&qword_28128F9E8, type metadata accessor for StockFeedViewerPage, &unk_2208B9A74);
  v41 = v67;
  sub_22088AE0C();
  v42.n128_f64[0] = (*(v68 + 16))(v64, v41, v69);
  sub_22056DDE8(0, v42);
  swift_allocObject();
  v43 = sub_22088C06C();

  sub_22088D36C();
  v76 = v43;
  sub_22056DEA4(0, v44);
  swift_allocObject();
  v45 = sub_22088C55C();
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  type metadata accessor for StockFeedViewerPageViewControllerProvider();
  result = sub_2208884CC();
  if (result)
  {
    v47 = result;
    v48 = sub_22088BABC();
    swift_allocObject();

    v49 = sub_22088BAAC();
    v77 = v48;
    v78 = MEMORY[0x277D6DA20];
    v75 = v43;
    v76 = v49;
    v73 = v45;
    v74 = v47;
    sub_22056DF38(0, v50);
    v52 = objc_allocWithZone(v51);

    v53 = sub_22088CA9C();
    sub_22088677C();
    sub_22088BACC();

    __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
    type metadata accessor for StockFeedViewerViewController(0);
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    v54 = swift_allocObject();
    v54[2] = v4;
    v54[3] = v43;
    v54[4] = v53;

    v55 = v53;
    v56 = sub_2208884AC();

    result = swift_unownedRelease();
    if (v56)
    {
      (*(v68 + 8))(v67, v69);

      v57 = sub_22056E0D0(&qword_281285DB8, type metadata accessor for StockFeedViewerViewController, &unk_22089EA3C);
      v58 = sub_22056E0D0(&qword_281285DC0, type metadata accessor for StockFeedViewerViewController, &unk_22089E924);
      v59 = sub_22056E0D0(&qword_281285DD8, type metadata accessor for StockFeedViewerViewController, &unk_22089E954);
      v60 = sub_22056E0D0(&qword_281285DE8, type metadata accessor for StockFeedViewerViewController, &unk_22089E8FC);
      result = sub_22056E0D0(&qword_281285DF0, type metadata accessor for StockFeedViewerViewController, &unk_22089E8D4);
      *a3 = v56;
      a3[1] = v57;
      a3[2] = v58;
      a3[3] = v59;
      a3[4] = v60;
      a3[5] = result;
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

uint64_t sub_22056DB3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  sub_22046DA2C(a2 + 64, v11);

  v6 = v12;
  v7 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_220871B78(2u, 0, 0, v6, v7);
  sub_2204693CC();
  sub_22088837C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22056DDE8(0, v8);
  sub_22088839C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_22088839C();
}

void sub_22056DCB8(uint64_t a1)
{
  if (!qword_281298780)
  {
    type metadata accessor for StockFeedViewerPage(255);
    sub_22056E0D0(&qword_28128F9C8, type metadata accessor for StockFeedViewerPage, &unk_2208B99B4);
    sub_22056E0D0(&qword_28128F9E0, type metadata accessor for StockFeedViewerPage, &unk_2208B9A1C);
    v1 = sub_2208888CC();
    if (!v2)
    {
      atomic_store(v1, &qword_281298780);
    }
  }
}

uint64_t sub_22056DD84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedViewerPage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22056DE08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StockFeedViewerPage(255);
    v7 = sub_22056E0D0(&qword_28128F9E8, type metadata accessor for StockFeedViewerPage, &unk_2208B9A74);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22056DEA4(uint64_t a1, __n128 a2)
{
  if (!qword_2812978F0)
  {
    sub_22056DDE8(255, a2);
    sub_22056E0D0(&qword_281297A10, sub_22056DDE8, MEMORY[0x277D6DCE8]);
    v2 = sub_22088C56C();
    if (!v3)
    {
      atomic_store(v2, &qword_2812978F0);
    }
  }
}

void sub_22056DF38(uint64_t a1, __n128 a2)
{
  if (!qword_281297768)
  {
    sub_22056DDE8(255, a2);
    type metadata accessor for StockFeedViewerPageViewControllerProvider();
    type metadata accessor for StockFeedViewerViewController(255);
    sub_22056DEA4(255, v2);
    sub_22056E0D0(&qword_281297A10, sub_22056DDE8, MEMORY[0x277D6DCE8]);
    sub_22056E0D0(qword_2812803A0, type metadata accessor for StockFeedViewerPageViewControllerProvider, &unk_2208A232C);
    sub_22056E0D0(&qword_281285DC8, type metadata accessor for StockFeedViewerViewController, &unk_22089E9BC);
    sub_22056E0D0(&qword_2812978F8, sub_22056DEA4, MEMORY[0x277D6DEB8]);
    v3 = sub_22088CAAC();
    if (!v4)
    {
      atomic_store(v3, &qword_281297768);
    }
  }
}

uint64_t sub_22056E0D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id AccessCheckerHasBundleSubscription(_:to:lineNumber:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  v6 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v6, v6 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_22056D130(&v19);
    goto LABEL_11;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v8 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v8 = v16;
  v9 = [v16 integerValue];
  if (v9 == -1)
  {
LABEL_20:

    if ((((v9 + a4) ^ a4) & 1) == 0)
    {
      return 0;
    }

LABEL_18:
    v12 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v13 = [v12 bundleChannelIDs];

    v14 = sub_22089132C();
    v15 = [v13 containsObject_];

    return v15;
  }

LABEL_12:
  if (objc_getAssociatedObject(v6, ~v9))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_22056D130(&v19);
    goto LABEL_20;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v10 = v16;
  v11 = [v10 integerValue];

  if (((v11 - a4) ^ (v9 + a4)))
  {
    goto LABEL_18;
  }

  return 0;
}

BOOL AccessCheckerHasAccess(_:toItemPaid:isBundlePaid:channelID:lineNumber:)(id a1, char a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2)
  {
    v11 = [a1 purchaseProvider];
    if (!a5)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v12 = [v11 purchasedTagIDs];
    v13 = sub_2208918EC();

    LOBYTE(v12) = sub_22056F244(a4, a5, v13);

    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {
      if ((a3 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    return 1;
  }

  if ((a3 & 1) == 0)
  {
    return 1;
  }

  if (!a5)
  {
    return 0;
  }

LABEL_8:
  v14 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    sub_22056D130(&v27);
    goto LABEL_17;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v15 = 0;
    v16 = 0;
    goto LABEL_18;
  }

  v15 = v24;
  v16 = [v24 integerValue];
  if (v16 == -1)
  {
LABEL_26:

    if ((((v16 + a6) ^ a6) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_27;
  }

LABEL_18:
  if (objc_getAssociatedObject(v14, ~v16))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    sub_22056D130(&v27);
    goto LABEL_26;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v17 = v24;
  v18 = [v17 integerValue];

  if ((((v18 - a6) ^ (v16 + a6)) & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v19 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v20 = [v19 bundleChannelIDs];

  v21 = sub_22089132C();
  v22 = [v20 containsObject_];

  return (v22 & 1) != 0;
}

BOOL AccessCheckerHasAccess(_:to:lineNumber:)(void *a1, id a2, int a3)
{
  v6 = [a2 isPaid];
  if ([a2 respondsToSelector_])
  {
    v7 = [a2 isBundlePaid];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a2 sourceChannel];
  if (v8)
  {
    v9 = [v8 identifier];
    swift_unknownObjectRelease();
    v10 = sub_22089136C();
    v12 = v11;

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v10 = 0;
  v12 = 0;
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v13 = [a1 purchaseProvider];
  if (v12)
  {
    v14 = [v13 purchasedTagIDs];
    v15 = sub_2208918EC();

    LOBYTE(v14) = sub_22056F244(v10, v12, v15);

    swift_unknownObjectRelease();
    if ((v14 & 1) == 0)
    {
      if (!v7)
      {
        goto LABEL_35;
      }

      goto LABEL_15;
    }

LABEL_12:

    return 1;
  }

  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_35;
  }

LABEL_15:
  if (v12)
  {
    v17 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v17, v17 + 1))
    {
      sub_2208923BC();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      sub_2204DD8BC();
      if (swift_dynamicCast())
      {
        v18 = v26;
        v19 = [v26 integerValue];
        if (v19 == -1)
        {
LABEL_34:

          if ((((v19 + a3) ^ a3) & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_22056D130(&v29);
    }

    v18 = 0;
    v19 = 0;
LABEL_25:
    if (objc_getAssociatedObject(v17, ~v19))
    {
      sub_2208923BC();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (!*(&v28 + 1))
    {
      sub_22056D130(&v29);
      goto LABEL_34;
    }

    sub_2204DD8BC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    v20 = v26;
    v21 = [v20 integerValue];

    if (((v21 - a3) ^ (v19 + a3)))
    {
LABEL_31:
      v22 = [objc_msgSend(a1 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v23 = [v22 bundleChannelIDs];

      v24 = sub_22089132C();
      v25 = [v23 containsObject_];

      return (v25 & 1) != 0;
    }

LABEL_35:
  }

  return 0;
}

{
  v6 = [a2 isPaid];
  v7 = [a2 isBundlePaid];
  v8 = [objc_msgSend(a2 sourceChannel)];
  swift_unknownObjectRelease();
  v9 = sub_22089136C();
  v11 = v10;

  if ((v6 & 1) == 0)
  {
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_8:

    return 1;
  }

  v12 = [objc_msgSend(a1 purchaseProvider)];
  v13 = sub_2208918EC();

  LOBYTE(v12) = sub_22056F244(v9, v11, v13);

  swift_unknownObjectRelease();
  if (v12)
  {
    goto LABEL_8;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v14 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_22056D130(&v26);
    goto LABEL_16;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  v16 = v23;
  v17 = [v23 integerValue];
  if (v17 == -1)
  {
LABEL_26:

    if ((((v17 + a3) ^ a3) & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (objc_getAssociatedObject(v14, ~v17))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_22056D130(&v26);
    goto LABEL_26;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v18 = v23;
  v19 = [v18 integerValue];

  if (((v19 - a3) ^ (v17 + a3)))
  {
LABEL_23:
    v20 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v21 = [v20 bundleChannelIDs];

    v22 = sub_22089132C();
    LOBYTE(v20) = [v21 containsObject_];

    return (v20 & 1) != 0;
  }

LABEL_27:

  return 0;
}

uint64_t AccessCheckerHasAccess(_:with:lineNumber:)(void *a1, void *a2, int a3)
{
  v6 = [a1 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v7 = [a2 asSection];
    if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [a2 identifier];
  }

  v9 = sub_22089136C();
  v11 = v10;

  v12 = [v6 purchasedTagIDs];
  v13 = sub_2208918EC();

  LOBYTE(v12) = sub_22056F244(v9, v11, v13);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v12)
  {
    return 1;
  }

LABEL_8:
  v15 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v15, v15 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_22056D130(&v26);
    goto LABEL_16;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  v16 = v23;
  v17 = [v23 integerValue];
  if (v17 == -1)
  {
LABEL_27:

    if ((((v17 + a3) ^ a3) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (objc_getAssociatedObject(v15, ~v17))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_22056D130(&v26);
    goto LABEL_27;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v18 = v23;
  v19 = [v18 integerValue];

  if ((((v19 - a3) ^ (v17 + a3)) & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v20 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v21 = [a2 identifier];
  if (!v21)
  {
    sub_22089136C();
    v21 = sub_22089132C();
  }

  v22 = [v20 containsTagID_];

  return v22;
}

uint64_t sub_22056F244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2208929EC();
  sub_22089146C();
  v6 = sub_220892A2C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2208928BC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22056F33C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_22089249C();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (sub_22056F9EC(0), v5 = sub_22089129C(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
    {
      v8 = ~v6;
      do
      {
        v9 = sub_2208912FC();
        if (v9)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }
}

uint64_t sub_22056F468(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_22089136C(), sub_2208929EC(), sub_22089146C(), v3 = sub_220892A2C(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_22089136C();
      v9 = v8;
      if (v7 == sub_22089136C() && v9 == v10)
      {
        break;
      }

      v12 = sub_2208928BC();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_22056F5BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22088B3EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_22056FA44(&qword_281297D98, MEMORY[0x277D6D770], MEMORY[0x277D6D778]), v8 = sub_22089129C(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_22056FA44(&qword_281297D90, MEMORY[0x277D6D770], MEMORY[0x277D6D780]);
      v16 = sub_2208912FC();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_22056F7D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22088521C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_22056FA44(&qword_281299458, MEMORY[0x277CC9640], MEMORY[0x277CC9650]), v8 = sub_22089129C(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_22056FA44(&qword_281299450, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
      v16 = sub_2208912FC();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_22056F9EC(uint64_t a1)
{
  if (!qword_27CF59F10)
  {
    type metadata accessor for WelcomeView();
    v1 = sub_2208925AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF59F10);
    }
  }
}

uint64_t sub_22056FA44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22056FA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D83D88];
  sub_2204DD280(0, &unk_2812993E0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v21 - v7;
  sub_2204DD280(0, &qword_2812990C0, MEMORY[0x277D697F8], v4);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = sub_22088543C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B1CA8(a1, v12);
  v18 = sub_22088676C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v12, 1, v18) != 1)
  {
    goto LABEL_4;
  }

  sub_220570398(v12);
  sub_2208853DC();
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    __break(1u);
LABEL_4:
    sub_2208866AC();
    (*(v19 + 8))(v12, v18);
    v8 = v17;
  }

  return (*(v14 + 32))(a2, v8, v13);
}

BOOL sub_22056FD0C(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = a2;
  v3 = sub_220884BDC();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088516C();
  v56 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v55 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v68 = &v55 - v15;
  v16 = sub_22088543C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2208853CC();
  v64 = *(v21 - 8);
  v65 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_220885ACC();
  v62 = *(v25 - 8);
  v63 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v58 = v28;
  sub_22088641C();
  sub_22088538C();
  v29 = v6;
  v30 = v56;
  (*(v17 + 16))(v20, v60, v16);
  sub_22088539C();
  sub_22088515C();
  v31 = v68;
  sub_2208852EC();
  v32 = *(v30 + 8);
  v60 = v29;
  v32(v12, v29);
  v33 = v57;
  sub_2208852EC();
  sub_2204DD280(0, &qword_28127E1C8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v34 = sub_2208853AC();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_220899360;
  (*(v35 + 104))(v37 + v36, *MEMORY[0x277CC99A8], v34);
  sub_2207E1070(v37);
  swift_setDeallocating();
  v38 = v37 + v36;
  v39 = v61;
  (*(v35 + 8))(v38, v34);
  v40 = v33;
  swift_deallocClassInstance();
  sub_22088530C();

  v41 = sub_220884BBC();
  if (v42)
  {
    (*(v66 + 8))(v39, v67);
    v43 = v60;
    v32(v33, v60);
    v32(v31, v43);
    (*(v64 + 8))(v24, v65);
    (*(v62 + 8))(v58, v63);
    return 0;
  }

  v44 = v58;
  v46 = v66;
  v45 = v67;
  if (v41 < 0)
  {
    (*(v66 + 8))(v39, v67);
    v54 = v60;
    v32(v33, v60);
    v32(v68, v54);
    (*(v64 + 8))(v24, v65);
    (*(v62 + 8))(v44, v63);
    return 0;
  }

  v47 = v41;
  v48 = v40;
  v49 = sub_2208858CC();
  (*(v46 + 8))(v39, v45);
  v50 = v48;
  v51 = v60;
  v32(v50, v60);
  v32(v68, v51);
  (*(v64 + 8))(v24, v65);
  (*(v62 + 8))(v44, v63);
  return !v47 || v49 >= v47;
}

uint64_t sub_220570398(uint64_t a1)
{
  sub_2204DD280(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220570424(void *a1)
{
  if ((sub_22088F0DC() & 1) == 0)
  {
    v3 = [objc_opt_self() tertiarySystemFillColor];
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = a1;
    v5 = objc_allocWithZone(MEMORY[0x277D75348]);
    v13[4] = sub_22057086C;
    v13[5] = v4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_220570804;
    v13[3] = &block_descriptor_1;
    v6 = _Block_copy(v13);
    v7 = v3;
    v8 = a1;
    v9 = [v5 initWithDynamicProvider_];
    _Block_release(v6);

    v10 = [v1 backgroundImageForState_];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 imageWithTintColor_];
      [v1 setBackgroundImage:v12 forState:0];

      v7 = v11;
      v9 = v12;
    }
  }
}

uint64_t sub_2205705DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

id sub_220570744(uint64_t a1, id a2, void *a3)
{
  v5 = [a2 resolvedColorWithTraitCollection_];
  v6 = [a3 resolvedColorWithTraitCollection_];
  sub_22089201C();
  v7 = sub_22089200C();

  if (v7)
  {

    return v7;
  }

  return v5;
}

id sub_220570804(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_220570874(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v96 = a4;
  v97 = a3;
  v6 = MEMORY[0x277D83D88];
  sub_220571814(0, &qword_27CF56C20, sub_2205714D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v104 = &v90 - v9;
  v10 = sub_22088516C();
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v93 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StocksAudioTrack(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v105 = (&v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17, v18);
  v99 = (&v90 - v19);
  MEMORY[0x28223BE20](v20, v21);
  v98 = (&v90 - v22);
  sub_220571538(0);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220571814(0, qword_281296160, type metadata accessor for StocksAudioTrack, v6);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v101 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = (&v90 - v33);
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v90 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v90 - v41;
  sub_2205715CC(0);
  v44 = v43;
  v103 = a1;
  sub_2208878BC();
  v100 = v44;
  v102 = a2;
  sub_2208878BC();
  v45 = *(v24 + 56);
  sub_22057164C(v42, v27);
  sub_22057164C(v38, &v27[v45]);
  v46 = *(v14 + 48);
  if (v46(v27, 1, v13) == 1)
  {
    sub_220571740(v38, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_220571740(v42, qword_281296160, type metadata accessor for StocksAudioTrack);
    if (v46(&v27[v45], 1, v13) == 1)
    {
      return sub_220571740(v27, qword_281296160, type metadata accessor for StocksAudioTrack);
    }

    goto LABEL_6;
  }

  sub_22057164C(v27, v34);
  v92 = v13;
  if (v46(&v27[v45], 1, v13) == 1)
  {
    sub_220571740(v38, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_220571740(v42, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2205716E0(v34, type metadata accessor for StocksAudioTrack);
    v13 = v92;
LABEL_6:
    sub_2205716E0(v27, sub_220571538);
    v48 = v105;
LABEL_7:
    v49 = v101;
    sub_2208878BC();
    if (v46(v49, 1, v13) == 1)
    {
      sub_220571740(v49, qword_281296160, type metadata accessor for StocksAudioTrack);
      v50 = v104;
    }

    else
    {
      v51 = v99;
      sub_2205717B0(v49, v99);
      v52 = *(v51 + *(v13 + 32));
      sub_22048D2F4();
      v53 = sub_2208922FC();
      sub_220571814(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_220899360;
      sub_2204FFEC0(&qword_27CF57560, &protocol conformance descriptor for StocksAudioTrack);
      v55 = sub_22089287C();
      v57 = v56;
      *(v54 + 56) = MEMORY[0x277D837D0];
      *(v54 + 64) = sub_22048D860();
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      v58 = sub_220891AFC();
      if (v52)
      {
        sub_22088A7EC("Updating lastListened for track %{public}@", 42, 2, &dword_22043F000, v53, v58, v54);

        v67 = [*v51 identifier];
        if (!v67)
        {
          sub_22089136C();
          v67 = sub_22089132C();
        }

        v68 = v93;
        sub_22088515C();
        v69 = sub_22088509C();
        (*(v94 + 8))(v68, v95);
        [v97 markArticle:v67 withLastListened:v69];
      }

      else
      {
        sub_22088A7EC("Not updating lastListened for track %{public}@", 46, 2, &dword_22043F000, v53, v58, v54);
      }

      v50 = v104;
      sub_2205716E0(v51, type metadata accessor for StocksAudioTrack);
    }

    sub_2207AD9A0(v50);
    sub_2205714D0(0);
    if ((*(*(v70 - 8) + 48))(v50, 1, v70) == 1)
    {
      return sub_220571740(v50, &qword_27CF56C20, sub_2205714D0);
    }

    sub_2205717B0(v50, v48);
    if (*(v48 + *(v13 + 32)) & 2) != 0 && ([*(v48 + *(v13 + 24)) duration], (sub_22088808C()))
    {
      v71 = [*v48 articleID];
      v72 = v71;
      v73 = v71;
      v74 = v71;
      if (!v71)
      {
        sub_22089136C();
        v74 = sub_22089132C();

        sub_22089136C();
        v73 = sub_22089132C();

        sub_22089136C();
        v72 = sub_22089132C();
      }

      sub_22048D2F4();
      v75 = v71;
      v76 = sub_2208922FC();
      sub_220571814(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_220899360;
      sub_2204FFEC0(&qword_27CF57560, &protocol conformance descriptor for StocksAudioTrack);
      v78 = sub_22089287C();
      v80 = v79;
      *(v77 + 56) = MEMORY[0x277D837D0];
      *(v77 + 64) = sub_22048D860();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      v81 = sub_220891AFC();
      sub_22088A7EC("Marking track completed %{public}@", 34, 2, &dword_22043F000, v76, v81, v77);

      v82 = v97;
      [v97 markArticle:v74 withCompletedListening:1];

      [v82 markArticle:v73 withListeningProgress:0.0];
      [v82 markArticle:v72 withReadingPositionJSON:0];
    }

    else
    {
      sub_22048D2F4();
      v83 = sub_2208922FC();
      sub_220571814(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_220899360;
      sub_2204FFEC0(&qword_27CF57560, &protocol conformance descriptor for StocksAudioTrack);
      v85 = sub_22089287C();
      v87 = v86;
      *(v84 + 56) = MEMORY[0x277D837D0];
      *(v84 + 64) = sub_22048D860();
      *(v84 + 32) = v85;
      *(v84 + 40) = v87;
      v88 = sub_220891AFC();
      sub_22088A7EC("NOT marking track completed %{public}@", 38, 2, &dword_22043F000, v83, v88, v84);
    }

    return sub_2205716E0(v48, type metadata accessor for StocksAudioTrack);
  }

  v59 = v98;
  sub_2205717B0(&v27[v45], v98);
  v91 = v34;
  v60 = [*v34 identifier];
  v90 = sub_22089136C();
  v62 = v61;

  v63 = [*v59 identifier];
  v64 = sub_22089136C();
  v66 = v65;

  if (v90 == v64 && v62 == v66)
  {

    sub_220571740(v38, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_220571740(v42, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2205716E0(v59, type metadata accessor for StocksAudioTrack);
    sub_2205716E0(v91, type metadata accessor for StocksAudioTrack);
    return sub_220571740(v27, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  v89 = sub_2208928BC();

  sub_220571740(v38, qword_281296160, type metadata accessor for StocksAudioTrack);
  sub_220571740(v42, qword_281296160, type metadata accessor for StocksAudioTrack);
  sub_2205716E0(v59, type metadata accessor for StocksAudioTrack);
  sub_2205716E0(v91, type metadata accessor for StocksAudioTrack);
  result = sub_220571740(v27, qword_281296160, type metadata accessor for StocksAudioTrack);
  v48 = v105;
  v13 = v92;
  if ((v89 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_2205714D0(uint64_t a1)
{
  if (!qword_27CF56C28)
  {
    type metadata accessor for StocksAudioTrack(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF56C28);
    }
  }
}

void sub_220571538(uint64_t a1)
{
  if (!qword_27CF59B70)
  {
    sub_220571814(255, qword_281296160, type metadata accessor for StocksAudioTrack, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59B70);
    }
  }
}

void sub_2205715CC(uint64_t a1)
{
  if (!qword_281298B40)
  {
    type metadata accessor for StocksAudioTrack(255);
    sub_2204FFEC0(&qword_2812961F0, &protocol conformance descriptor for StocksAudioTrack);
    v1 = sub_2208878DC();
    if (!v2)
    {
      atomic_store(v1, &qword_281298B40);
    }
  }
}

uint64_t sub_22057164C(uint64_t a1, uint64_t a2)
{
  sub_220571814(0, qword_281296160, type metadata accessor for StocksAudioTrack, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205716E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220571740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220571814(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2205717B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StocksAudioTrack(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220571814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_220571878()
{
  result = qword_28127DE10;
  if (!qword_28127DE10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28127DE10);
  }

  return result;
}

uint64_t sub_2205718DC(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v4 = type metadata accessor for NewsStockFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StockFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452BA4(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v32 - v20;
  v22 = type metadata accessor for StockFeedGroupConfig(0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220571C9C(a1, v25, type metadata accessor for StockFeedGroupConfig);
  v26 = *(v14 + 32);
  v26(v21, v25, v13);
  (*(v14 + 16))(v17, v21, v13);
  sub_220571C9C(v33, v11, type metadata accessor for StockFeedGroupKnobs);
  v27 = v11;
  v28 = v7;
  sub_220571D04(v27, v7);
  sub_22046DA2C(v2 + 16, v35);
  sub_22046DA2C(v2 + 56, v34);
  type metadata accessor for NewsStockFeedGroupEmitter(0);
  v29 = swift_allocObject();
  v26((v29 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_config), v17, v13);
  sub_220571D04(v28, v29 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_knobs);
  sub_220457328(v35, v29 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_formatService);
  sub_220457328(v34, v29 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_featureAvailability);
  *&v35[0] = v29;
  sub_220571D68(0);
  swift_allocObject();
  sub_220453490(&qword_281289838, type metadata accessor for NewsStockFeedGroupEmitter, &unk_2208B76F8);
  v30 = sub_22088F53C();
  (*(v14 + 8))(v21, v13);
  return v30;
}

uint64_t sub_220571C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220571D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsStockFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220571D68(uint64_t a1)
{
  if (!qword_281296BD0)
  {
    type metadata accessor for StockFeedServiceConfig(255);
    sub_220453490(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    v1 = sub_22088F54C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296BD0);
    }
  }
}

uint64_t sub_220571DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220571F80(&qword_27CF56C30, &unk_22089A570);
  return sub_220886C9C();
}

void *sub_220571E90@<X0>(_BYTE *a2@<X8>)
{
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220571F80(&unk_281286748, &unk_22089A530);
  result = sub_220886B3C();
  *a2 = v4;
  return result;
}

uint64_t sub_220571F80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CurrencyDisplayCommandHandler();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220571FC0(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  sub_22055D328(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D3C0(0);
  v28 = v10;
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v33 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CE80(0);
  sub_2204BC2F4(&qword_281297DE8, 255, sub_22055CE80, MEMORY[0x277D6D730]);
  v13 = sub_22089197C();
  if (v13)
  {
    v36 = MEMORY[0x277D84F90];
    sub_22070BBB4(0, v13 & ~(v13 >> 63), 0);
    v34 = v36;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = v6;
      v15 = 0;
      v26 = (v14 + 16);
      v27 = (v14 + 8);
      v23[1] = v31 + 32;
      v24 = v13;
      v25 = v9;
      while (!__OFADD__(v15, 1))
      {
        v32 = v15 + 1;
        v16 = sub_2208919BC();
        (*v26)(v9);
        v16(v35, 0);
        v29(v9);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v17 = v9;
        v18 = v5;
        (*v27)(v17, v5);
        v19 = v34;
        v36 = v34;
        v21 = *(v34 + 16);
        v20 = *(v34 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_22070BBB4((v20 > 1), v21 + 1, 1);
          v19 = v36;
        }

        *(v19 + 16) = v21 + 1;
        v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v34 = v19;
        (*(v31 + 32))(v19 + v22 + *(v31 + 72) * v21, v33, v28);
        sub_2208919AC();
        ++v15;
        v5 = v18;
        v9 = v25;
        if (v32 == v24)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v27)(v9, v5);

    __break(1u);
  }
}

void sub_22057235C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v10[1] = MEMORY[0x277D84F90];
    sub_2208925EC();
    for (i = (a3 + 32); ; ++i)
    {
      v9 = *i;

      a1(v10, &v9);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_2208925CC();
      sub_2208925FC();
      sub_22089260C();
      sub_2208925DC();
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_220572464(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v34 = a1;
  v35 = a2;
  sub_22055D328(0);
  v7 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v38 = &v29 - v13;
  sub_22055CE80(0);
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281297DE8, 255, sub_22055CE80, MEMORY[0x277D6D730]);
  v17 = sub_22089197C();
  if (v17)
  {
    v41 = MEMORY[0x277D84F90];
    sub_22070BC24(0, v17 & ~(v17 >> 63), 0);
    v39 = v41;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v32 = (v36 + 16);
      v33 = (v36 + 8);
      v29 = v36 + 32;
      v30 = v17;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v37 = v18 + 1;
        v19 = v15;
        v20 = v5;
        v21 = v16;
        v22 = v19;
        v23 = v21;
        v24 = sub_2208919BC();
        (*v32)(v10);
        v24(v40, 0);
        v34(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v39;
        v41 = v39;
        v27 = *(v39 + 16);
        v26 = *(v39 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22070BC24((v26 > 1), v27 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v39 = v25;
        (*(v36 + 32))(v25 + v28 + *(v36 + 72) * v27, v38, v7);
        v5 = v20;
        v15 = v22;
        v16 = v23;
        sub_2208919AC();
        ++v18;
        v10 = v31;
        if (v37 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_2205727A4(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v34 = a1;
  v35 = a2;
  sub_22055CE80(0);
  v7 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v38 = &v29 - v13;
  sub_22055CF9C(0);
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281296F20, 255, sub_22055CF9C, MEMORY[0x277D6EC70]);
  v17 = sub_22089197C();
  if (v17)
  {
    v41 = MEMORY[0x277D84F90];
    sub_22070BF64(0, v17 & ~(v17 >> 63), 0);
    v39 = v41;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v32 = (v36 + 16);
      v33 = (v36 + 8);
      v29 = v36 + 32;
      v30 = v17;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v37 = v18 + 1;
        v19 = v15;
        v20 = v5;
        v21 = v16;
        v22 = v19;
        v23 = v21;
        v24 = sub_2208919BC();
        (*v32)(v10);
        v24(v40, 0);
        v34(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v39;
        v41 = v39;
        v27 = *(v39 + 16);
        v26 = *(v39 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22070BF64((v26 > 1), v27 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v39 = v25;
        (*(v36 + 32))(v25 + v28 + *(v36 + 72) * v27, v38, v7);
        v5 = v20;
        v15 = v22;
        v16 = v23;
        sub_2208919AC();
        ++v18;
        v10 = v31;
        if (v37 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_220572AE4(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v34 = a1;
  v35 = a2;
  sub_2204EF5C8(0);
  v7 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v38 = &v29 - v13;
  sub_220577080(0);
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281296F40, 255, sub_220577080, MEMORY[0x277D6EC70]);
  v17 = sub_22089197C();
  if (v17)
  {
    v41 = MEMORY[0x277D84F90];
    sub_22070BFB4(0, v17 & ~(v17 >> 63), 0);
    v39 = v41;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v32 = (v36 + 16);
      v33 = (v36 + 8);
      v29 = v36 + 32;
      v30 = v17;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v37 = v18 + 1;
        v19 = v15;
        v20 = v5;
        v21 = v16;
        v22 = v19;
        v23 = v21;
        v24 = sub_2208919BC();
        (*v32)(v10);
        v24(v40, 0);
        v34(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v39;
        v41 = v39;
        v27 = *(v39 + 16);
        v26 = *(v39 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22070BFB4((v26 > 1), v27 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v39 = v25;
        (*(v36 + 32))(v25 + v28 + *(v36 + 72) * v27, v38, v7);
        v5 = v20;
        v15 = v22;
        v16 = v23;
        sub_2208919AC();
        ++v18;
        v10 = v31;
        if (v37 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_220572E24(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v34 = a1;
  v35 = a2;
  sub_2204EECD0(0);
  v7 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v38 = &v29 - v13;
  sub_2204EF5C8(0);
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281297E18, 255, sub_2204EF5C8, MEMORY[0x277D6D730]);
  v17 = sub_22089197C();
  if (v17)
  {
    v41 = MEMORY[0x277D84F90];
    sub_2204EF810(0, v17 & ~(v17 >> 63), 0);
    v39 = v41;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v32 = (v36 + 16);
      v33 = (v36 + 8);
      v29 = v36 + 32;
      v30 = v17;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v37 = v18 + 1;
        v19 = v15;
        v20 = v5;
        v21 = v16;
        v22 = v19;
        v23 = v21;
        v24 = sub_2208919BC();
        (*v32)(v10);
        v24(v40, 0);
        v34(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v39;
        v41 = v39;
        v27 = *(v39 + 16);
        v26 = *(v39 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2204EF810((v26 > 1), v27 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v39 = v25;
        (*(v36 + 32))(v25 + v28 + *(v36 + 72) * v27, v38, v7);
        v5 = v20;
        v15 = v22;
        v16 = v23;
        sub_2208919AC();
        ++v18;
        v10 = v31;
        if (v37 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_22057320C(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  sub_22055DE74(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576B2C(0);
  v28 = v10;
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v33 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576C20(0);
  sub_2204BC2F4(&qword_27CF56C50, 255, sub_220576C20, MEMORY[0x277D6EC70]);
  v13 = sub_22089197C();
  if (v13)
  {
    v36 = MEMORY[0x277D84F90];
    sub_22070C14C(0, v13 & ~(v13 >> 63), 0);
    v34 = v36;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = v6;
      v15 = 0;
      v26 = (v14 + 16);
      v27 = (v14 + 8);
      v23[1] = v31 + 32;
      v24 = v13;
      v25 = v9;
      while (!__OFADD__(v15, 1))
      {
        v32 = v15 + 1;
        v16 = sub_2208919BC();
        (*v26)(v9);
        v16(v35, 0);
        v29(v9);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v17 = v9;
        v18 = v5;
        (*v27)(v17, v5);
        v19 = v34;
        v36 = v34;
        v21 = *(v34 + 16);
        v20 = *(v34 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_22070C14C((v20 > 1), v21 + 1, 1);
          v19 = v36;
        }

        *(v19 + 16) = v21 + 1;
        v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v34 = v19;
        (*(v31 + 32))(v19 + v22 + *(v31 + 72) * v21, v33, v28);
        sub_2208919AC();
        ++v15;
        v5 = v18;
        v9 = v25;
        if (v32 == v24)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v27)(v9, v5);

    __break(1u);
  }
}

void sub_2205735A8(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v34 = a1;
  v35 = a2;
  sub_220576D44(0);
  v7 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v38 = &v29 - v13;
  sub_2204D4924(0);
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281296E80, 255, sub_2204D4924, MEMORY[0x277D6EC70]);
  v17 = sub_22089197C();
  if (v17)
  {
    v41 = MEMORY[0x277D84F90];
    sub_22070C1EC(0, v17 & ~(v17 >> 63), 0);
    v39 = v41;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v32 = (v36 + 16);
      v33 = (v36 + 8);
      v29 = v36 + 32;
      v30 = v17;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v37 = v18 + 1;
        v19 = v15;
        v20 = v5;
        v21 = v16;
        v22 = v19;
        v23 = v21;
        v24 = sub_2208919BC();
        (*v32)(v10);
        v24(v40, 0);
        v34(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v39;
        v41 = v39;
        v27 = *(v39 + 16);
        v26 = *(v39 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22070C1EC((v26 > 1), v27 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v39 = v25;
        (*(v36 + 32))(v25 + v28 + *(v36 + 72) * v27, v38, v7);
        v5 = v20;
        v15 = v22;
        v16 = v23;
        sub_2208919AC();
        ++v18;
        v10 = v31;
        if (v37 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_2205738E8(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v34 = a1;
  v35 = a2;
  sub_2204D4A18(0);
  v7 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v38 = &v29 - v13;
  sub_220576D44(0);
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_27CF56C60, 255, sub_220576D44, MEMORY[0x277D6D730]);
  v17 = sub_22089197C();
  if (v17)
  {
    v41 = MEMORY[0x277D84F90];
    sub_22070C004(0, v17 & ~(v17 >> 63), 0);
    v39 = v41;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v32 = (v36 + 16);
      v33 = (v36 + 8);
      v29 = v36 + 32;
      v30 = v17;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v37 = v18 + 1;
        v19 = v15;
        v20 = v5;
        v21 = v16;
        v22 = v19;
        v23 = v21;
        v24 = sub_2208919BC();
        (*v32)(v10);
        v24(v40, 0);
        v34(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v39;
        v41 = v39;
        v27 = *(v39 + 16);
        v26 = *(v39 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22070C004((v26 > 1), v27 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v39 = v25;
        (*(v36 + 32))(v25 + v28 + *(v36 + 72) * v27, v38, v7);
        v5 = v20;
        v15 = v22;
        v16 = v23;
        sub_2208919AC();
        ++v18;
        v10 = v31;
        if (v37 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_220573C28(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v34 = a1;
  v35 = a2;
  sub_2204FA2D0(0);
  v7 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v38 = &v29 - v13;
  sub_2204F1480(0);
  v15 = v14;
  v16 = sub_2204BC2F4(&unk_281296EB0, 255, sub_2204F1480, MEMORY[0x277D6EC70]);
  v17 = sub_22089197C();
  if (v17)
  {
    v41 = MEMORY[0x277D84F90];
    sub_22070C334(0, v17 & ~(v17 >> 63), 0);
    v39 = v41;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v32 = (v36 + 16);
      v33 = (v36 + 8);
      v29 = v36 + 32;
      v30 = v17;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v37 = v18 + 1;
        v19 = v15;
        v20 = v5;
        v21 = v16;
        v22 = v19;
        v23 = v21;
        v24 = sub_2208919BC();
        (*v32)(v10);
        v24(v40, 0);
        v34(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v39;
        v41 = v39;
        v27 = *(v39 + 16);
        v26 = *(v39 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22070C334((v26 > 1), v27 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v39 = v25;
        (*(v36 + 32))(v25 + v28 + *(v36 + 72) * v27, v38, v7);
        v5 = v20;
        v15 = v22;
        v16 = v23;
        sub_2208919AC();
        ++v18;
        v10 = v31;
        if (v37 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_220573F68(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_22088585C();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22070C40C(0, v10, 0);
    v11 = v21;
    v16 = v6 + 32;
    for (i = (a3 + 40); ; i += 2)
    {
      v13 = *i;
      v20[0] = *(i - 1);
      v20[1] = v13;

      v18(v20);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v21 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22070C40C((v14 > 1), v15 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v15 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v17);
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_220574134(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v34 = a1;
  v35 = a2;
  sub_22046B19C(0);
  v7 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v38 = &v29 - v13;
  sub_2204A1D20(0);
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281296EE8, 255, sub_2204A1D20, MEMORY[0x277D6EC70]);
  v17 = sub_22089197C();
  if (v17)
  {
    v41 = MEMORY[0x277D84F90];
    sub_22070C45C(0, v17 & ~(v17 >> 63), 0);
    v39 = v41;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v32 = (v36 + 16);
      v33 = (v36 + 8);
      v29 = v36 + 32;
      v30 = v17;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v37 = v18 + 1;
        v19 = v15;
        v20 = v5;
        v21 = v16;
        v22 = v19;
        v23 = v21;
        v24 = sub_2208919BC();
        (*v32)(v10);
        v24(v40, 0);
        v34(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v39;
        v41 = v39;
        v27 = *(v39 + 16);
        v26 = *(v39 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22070C45C((v26 > 1), v27 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v39 = v25;
        (*(v36 + 32))(v25 + v28 + *(v36 + 72) * v27, v38, v7);
        v5 = v20;
        v15 = v22;
        v16 = v23;
        sub_2208919AC();
        ++v18;
        v10 = v31;
        if (v37 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_220574474(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v34 = a1;
  v35 = a2;
  sub_22046B36C(0);
  v7 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v38 = &v29 - v13;
  sub_22046B19C(0);
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281297DB8, 255, sub_22046B19C, MEMORY[0x277D6D730]);
  v17 = sub_22089197C();
  if (v17)
  {
    v41 = MEMORY[0x277D84F90];
    sub_2204AF9F4(0, v17 & ~(v17 >> 63), 0);
    v39 = v41;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v32 = (v36 + 16);
      v33 = (v36 + 8);
      v29 = v36 + 32;
      v30 = v17;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v37 = v18 + 1;
        v19 = v15;
        v20 = v5;
        v21 = v16;
        v22 = v19;
        v23 = v21;
        v24 = sub_2208919BC();
        (*v32)(v10);
        v24(v40, 0);
        v34(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v39;
        v41 = v39;
        v27 = *(v39 + 16);
        v26 = *(v39 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2204AF9F4((v26 > 1), v27 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v39 = v25;
        (*(v36 + 32))(v25 + v28 + *(v36 + 72) * v27, v38, v7);
        v5 = v20;
        v15 = v22;
        v16 = v23;
        sub_2208919AC();
        ++v18;
        v10 = v31;
        if (v37 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_2205747B4(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  sub_220576D44(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576E38(0);
  v28 = v10;
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v33 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D4924(0);
  sub_2204BC2F4(&qword_281296E80, 255, sub_2204D4924, MEMORY[0x277D6EC70]);
  v13 = sub_22089197C();
  if (v13)
  {
    v36 = MEMORY[0x277D84F90];
    sub_22070CB6C(0, v13 & ~(v13 >> 63), 0);
    v34 = v36;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = v6;
      v15 = 0;
      v26 = (v14 + 16);
      v27 = (v14 + 8);
      v23[1] = v31 + 32;
      v24 = v13;
      v25 = v9;
      while (!__OFADD__(v15, 1))
      {
        v32 = v15 + 1;
        v16 = sub_2208919BC();
        (*v26)(v9);
        v16(v35, 0);
        v29(v9);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v17 = v9;
        v18 = v5;
        (*v27)(v17, v5);
        v19 = v34;
        v36 = v34;
        v21 = *(v34 + 16);
        v20 = *(v34 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_22070CB6C((v20 > 1), v21 + 1, 1);
          v19 = v36;
        }

        *(v19 + 16) = v21 + 1;
        v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v34 = v19;
        (*(v31 + 32))(v19 + v22 + *(v31 + 72) * v21, v33, v28);
        sub_2208919AC();
        ++v15;
        v5 = v18;
        v9 = v25;
        if (v32 == v24)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v27)(v9, v5);

    __break(1u);
  }
}

void sub_220574B50(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  sub_2204D4A18(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576F2C(0);
  v28 = v10;
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v33 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576D44(0);
  sub_2204BC2F4(&qword_27CF56C60, 255, sub_220576D44, MEMORY[0x277D6D730]);
  v13 = sub_22089197C();
  if (v13)
  {
    v36 = MEMORY[0x277D84F90];
    sub_22070CBBC(0, v13 & ~(v13 >> 63), 0);
    v34 = v36;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = v6;
      v15 = 0;
      v26 = (v14 + 16);
      v27 = (v14 + 8);
      v23[1] = v31 + 32;
      v24 = v13;
      v25 = v9;
      while (!__OFADD__(v15, 1))
      {
        v32 = v15 + 1;
        v16 = sub_2208919BC();
        (*v26)(v9);
        v16(v35, 0);
        v29(v9);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v17 = v9;
        v18 = v5;
        (*v27)(v17, v5);
        v19 = v34;
        v36 = v34;
        v21 = *(v34 + 16);
        v20 = *(v34 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_22070CBBC((v20 > 1), v21 + 1, 1);
          v19 = v36;
        }

        *(v19 + 16) = v21 + 1;
        v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v34 = v19;
        (*(v31 + 32))(v19 + v22 + *(v31 + 72) * v21, v33, v28);
        sub_2208919AC();
        ++v15;
        v5 = v18;
        v9 = v25;
        if (v32 == v24)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v27)(v9, v5);

    __break(1u);
  }
}

void sub_220574EEC(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  sub_22051D97C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F63C4(0);
  v28 = v10;
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v33 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FA2D0(0);
  sub_2204BC2F4(&qword_281297E70, 255, sub_2204FA2D0, MEMORY[0x277D6D730]);
  v13 = sub_22089197C();
  if (v13)
  {
    v36 = MEMORY[0x277D84F90];
    sub_220505460(0, v13 & ~(v13 >> 63), 0);
    v34 = v36;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = v6;
      v15 = 0;
      v26 = (v14 + 16);
      v27 = (v14 + 8);
      v23[1] = v31 + 32;
      v24 = v13;
      v25 = v9;
      while (!__OFADD__(v15, 1))
      {
        v32 = v15 + 1;
        v16 = sub_2208919BC();
        (*v26)(v9);
        v16(v35, 0);
        v29(v9);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v17 = v9;
        v18 = v5;
        (*v27)(v17, v5);
        v19 = v34;
        v36 = v34;
        v21 = *(v34 + 16);
        v20 = *(v34 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_220505460((v20 > 1), v21 + 1, 1);
          v19 = v36;
        }

        *(v19 + 16) = v21 + 1;
        v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v34 = v19;
        (*(v31 + 32))(v19 + v22 + *(v31 + 72) * v21, v33, v28);
        sub_2208919AC();
        ++v15;
        v5 = v18;
        v9 = v25;
        if (v32 == v24)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v27)(v9, v5);

    __break(1u);
  }
}

void sub_220575288(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  sub_2204EF5C8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576FC4(0);
  v28 = v10;
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v33 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220577080(0);
  sub_2204BC2F4(&qword_281296F40, 255, sub_220577080, MEMORY[0x277D6EC70]);
  v13 = sub_22089197C();
  if (v13)
  {
    v36 = MEMORY[0x277D84F90];
    sub_22070CCFC(0, v13 & ~(v13 >> 63), 0);
    v34 = v36;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = v6;
      v15 = 0;
      v26 = (v14 + 16);
      v27 = (v14 + 8);
      v23[1] = v31 + 32;
      v24 = v13;
      v25 = v9;
      while (!__OFADD__(v15, 1))
      {
        v32 = v15 + 1;
        v16 = sub_2208919BC();
        (*v26)(v9);
        v16(v35, 0);
        v29(v9);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v17 = v9;
        v18 = v5;
        (*v27)(v17, v5);
        v19 = v34;
        v36 = v34;
        v21 = *(v34 + 16);
        v20 = *(v34 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_22070CCFC((v20 > 1), v21 + 1, 1);
          v19 = v36;
        }

        *(v19 + 16) = v21 + 1;
        v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v34 = v19;
        (*(v31 + 32))(v19 + v22 + *(v31 + 72) * v21, v33, v28);
        sub_2208919AC();
        ++v15;
        v5 = v18;
        v9 = v25;
        if (v32 == v24)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v27)(v9, v5);

    __break(1u);
  }
}

void sub_22057567C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v27 = a7;
  v28 = a1;
  v10 = v7;
  v29 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v24 - v16;
  v18 = *(a3 + 16);
  if (v18)
  {
    v30 = MEMORY[0x277D84F90];
    v25 = a5;
    (a5)(0, v18, 0, v15);
    v19 = v30;
    v20 = *(a6(0) - 8);
    v21 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v26 = *(v20 + 72);
    while (1)
    {
      v28(v21);
      if (v10)
      {
        break;
      }

      v10 = 0;
      v30 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        v25(v22 > 1, v23 + 1, 1);
        v19 = v30;
      }

      *(v19 + 16) = v23 + 1;
      sub_220576CDC(v17, v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23, v27);
      v21 += v26;
      if (!--v18)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *sub_220575888(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v11[0] = MEMORY[0x277D84F90];
  sub_220576988(0, &qword_2812988E8, sub_2205768E0, MEMORY[0x277D6CB60]);
  swift_allocObject();
  v3[2] = sub_22088866C();
  v3[3] = a1;
  v3[4] = a2;
  sub_22046DA2C(a3, (v3 + 5));
  swift_getObjectType();
  v8 = qword_281296F90;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_22057691C();

  sub_22088B80C();

  __swift_destroy_boxed_opaque_existential_1(v11);
  swift_allocObject();
  swift_weakInit();
  sub_22088685C();
  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v11);
  if (qword_281296FD8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();

  type metadata accessor for WatchlistMembershipCommandContext(0);
  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_2204BC2F4(&qword_28127FDE0, v9, type metadata accessor for WatchlistMembershipMenuGroupOptionProvider, &unk_22089A70C);

  sub_220885FAC();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v4;
}

uint64_t sub_220575BAC(uint64_t a1, uint64_t a2)
{
  sub_220576988(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v12 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getObjectType();
    if (qword_281296F90 != -1)
    {
      swift_once();
    }

    sub_22088685C();
    sub_22088B79C();
    __swift_project_boxed_opaque_existential_1((v7 + 40), *(v7 + 64));
    v8 = sub_220885FCC();
    MEMORY[0x28223BE20](v8, v9);
    v12[-2] = v5;
    sub_22057567C(sub_220577448, &v12[-4], v8, type metadata accessor for WatchlistMembershipCommandContext, sub_22070BE54, MEMORY[0x277D698E0], type metadata accessor for WatchlistMembershipCommandContext);
    v11 = v10;

    v12[1] = v11;

    sub_22088865C();

    return sub_220576A0C(v5);
  }

  return result;
}

uint64_t sub_220575DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220576988(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v13 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_getObjectType();
    if (qword_281296F90 != -1)
    {
      swift_once();
    }

    sub_22088685C();
    sub_22088B79C();
    __swift_project_boxed_opaque_existential_1((v8 + 40), *(v8 + 64));
    v9 = sub_220885FCC();
    MEMORY[0x28223BE20](v9, v10);
    v13[-2] = v6;
    sub_22057567C(sub_220577448, &v13[-4], v9, type metadata accessor for WatchlistMembershipCommandContext, sub_22070BE54, MEMORY[0x277D698E0], type metadata accessor for WatchlistMembershipCommandContext);
    v12 = v11;

    v13[1] = v12;

    sub_22088865C();

    return sub_220576A0C(v6);
  }

  return result;
}

uint64_t sub_220576004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22088F11C();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088F14C();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088F17C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v24 - v19;
  sub_22046D5B4();
  v21 = sub_220891D0C();
  sub_22088F16C();
  sub_22088F18C();
  v24 = *(v13 + 8);
  v24(v16, v12);
  aBlock[4] = sub_220576980;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_2;
  v22 = _Block_copy(aBlock);

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2204BC2F4(&qword_281296CA0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22056D204(0);
  sub_2204BC2F4(&qword_28127EA50, 255, sub_22056D204, MEMORY[0x277D83970]);
  sub_2208923FC();
  MEMORY[0x223D89E80](v20, v11, v7, v22);
  _Block_release(v22);

  (*(v27 + 8))(v7, v4);
  (*(v25 + 8))(v11, v26);
  return (v24)(v20, v12);
}

uint64_t sub_2205763B4(uint64_t a1)
{
  sub_220576988(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v11 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_getObjectType();
    if (qword_281296F90 != -1)
    {
      swift_once();
    }

    sub_22088685C();
    sub_22088B79C();
    __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
    v7 = sub_220885FCC();
    MEMORY[0x28223BE20](v7, v8);
    v11[-2] = v4;
    sub_22057567C(sub_2205769EC, &v11[-4], v7, type metadata accessor for WatchlistMembershipCommandContext, sub_22070BE54, MEMORY[0x277D698E0], type metadata accessor for WatchlistMembershipCommandContext);
    v10 = v9;

    v11[1] = v10;

    sub_22088865C();

    return sub_220576A0C(v4);
  }

  return result;
}

uint64_t sub_2205765E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_220886A4C();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for WatchlistMembershipCommandContext(0);
  return sub_220576A98(a2, a3 + *(v7 + 20));
}

uint64_t sub_22057666C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_2205766D8()
{
  sub_220576988(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v10 - v3;
  swift_getObjectType();
  if (qword_281296F90 != -1)
  {
    swift_once();
  }

  sub_22088685C();
  sub_22088B79C();
  __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v5 = sub_220885FCC();
  MEMORY[0x28223BE20](v5, v6);
  v10[-2] = v4;
  sub_22057567C(sub_220577448, &v10[-4], v5, type metadata accessor for WatchlistMembershipCommandContext, sub_22070BE54, MEMORY[0x277D698E0], type metadata accessor for WatchlistMembershipCommandContext);
  v8 = v7;

  v10[0] = v8;

  sub_22088865C();

  return sub_220576A0C(v4);
}

unint64_t sub_22057691C()
{
  result = qword_28128D000;
  if (!qword_28128D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128D000);
  }

  return result;
}

void sub_220576988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220576A0C(uint64_t a1)
{
  sub_220576988(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220576A98(uint64_t a1, uint64_t a2)
{
  sub_220576988(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220576B2C(uint64_t a1)
{
  if (!qword_27CF56C38)
  {
    type metadata accessor for ManageWatchlistsLayoutSectionDescriptor(255);
    type metadata accessor for ManageWatchlistsLayoutModel(255);
    sub_2204BC2F4(&qword_27CF56C40, 255, type metadata accessor for ManageWatchlistsLayoutSectionDescriptor, &unk_2208ADAC8);
    sub_2204BC2F4(&qword_27CF56B18, 255, type metadata accessor for ManageWatchlistsLayoutModel, &unk_22089EE3C);
    v1 = sub_22088C36C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56C38);
    }
  }
}

void sub_220576C20(uint64_t a1)
{
  if (!qword_27CF56C48)
  {
    type metadata accessor for ManageWatchlistsModel(255);
    sub_22055DF30();
    sub_2204BC2F4(&qword_27CF59130, 255, type metadata accessor for ManageWatchlistsModel, &unk_2208AEFB8);
    v1 = sub_22088E81C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56C48);
    }
  }
}

uint64_t sub_220576CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_220576D44(uint64_t a1)
{
  if (!qword_281297E30)
  {
    type metadata accessor for StockSearchSectionDescriptor(255);
    type metadata accessor for StockSearchModel(255);
    sub_2204BC2F4(qword_281286DF0, 255, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    sub_2204BC2F4(&qword_281291EB0, 255, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
    v1 = sub_22088B39C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297E30);
    }
  }
}

void sub_220576E38(uint64_t a1)
{
  if (!qword_2812979E0)
  {
    type metadata accessor for StockSearchLayoutSectionDescriptor(255);
    type metadata accessor for StockSearchLayoutModel(255);
    sub_2204BC2F4(qword_2812822F8, 255, type metadata accessor for StockSearchLayoutSectionDescriptor, &unk_2208A5530);
    sub_2204BC2F4(&qword_28128C340, 255, type metadata accessor for StockSearchLayoutModel, &unk_2208AE7A0);
    v1 = sub_22088C36C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812979E0);
    }
  }
}

void sub_220576F2C(uint64_t a1)
{
  if (!qword_27CF56C58)
  {
    type metadata accessor for StockSearchLayoutModel(255);
    sub_2204BC2F4(&qword_28128C340, 255, type metadata accessor for StockSearchLayoutModel, &unk_2208AE7A0);
    v1 = sub_22088BC4C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56C58);
    }
  }
}

void sub_220576FC4(uint64_t a1)
{
  if (!qword_2812979D8)
  {
    type metadata accessor for TickerLayoutModel(255);
    sub_22048466C();
    sub_2204BC2F4(qword_2812910F0, 255, type metadata accessor for TickerLayoutModel, &unk_2208BD150);
    v1 = sub_22088C36C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812979D8);
    }
  }
}

void sub_220577080(uint64_t a1)
{
  if (!qword_281296F38)
  {
    type metadata accessor for TickerModel(255);
    sub_220483B88();
    sub_2204BC2F4(&qword_281294CA0, 255, type metadata accessor for TickerModel, &unk_2208B3420);
    v1 = sub_22088E81C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296F38);
    }
  }
}

void sub_22057713C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v9 = sub_220886A4C();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC(0);
  v26 = v13;
  v33 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v35 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a5 >> 1;
  v31 = a4;
  v16 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v16)
  {
    return;
  }

  v36 = MEMORY[0x277D84F90];
  v32 = (a5 >> 1) - a4;
  sub_22070CE0C(0, v16 & ~(v16 >> 63), 0);
  v17 = v32;
  if ((v32 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v19 = v36;
    v24[2] = v34 + 16;
    v25 = (v34 + 8);
    v24[1] = v33 + 32;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if ((v31 + v18) >= v30 || v18 >= v17)
      {
        goto LABEL_14;
      }

      (*(v34 + 16))(v12, v29 + *(v34 + 72) * (v31 + v18), v9);
      v27(v12);
      if (v6)
      {
        goto LABEL_17;
      }

      v6 = 0;
      v21 = v12;
      (*v25)(v12, v9);
      v36 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22070CE0C((v22 > 1), v23 + 1, 1);
        v19 = v36;
      }

      *(v19 + 16) = v23 + 1;
      (*(v33 + 32))(v19 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v23, v35, v26);
      ++v18;
      v17 = v32;
      v12 = v21;
      if (v20 == v32)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  (*v25)(v12, v9);

  __break(1u);
}

uint64_t sub_220577460()
{
  sub_22088FA1C();
  sub_22088FA0C();
  sub_22055CF9C(0);
  sub_22088E7AC();
  if (v3)
  {
    sub_22088F45C();
    swift_dynamicCast();
  }

  else
  {
    sub_22056D130(v2);
  }

  type metadata accessor for StockFeedServiceConfig(0);
  sub_22044429C(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
  v0 = sub_22088F9FC();

  return v0;
}

uint64_t sub_220577570(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2205775B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_220577604(void *a1, void *a2, void *a3)
{
  v6 = a1;
  v7 = a3;
  v8 = a2;
  return a1;
}

uint64_t sub_220577688@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD08];
  v3 = sub_22088C07C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_220577720()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2205777E0(void *a1)
{
  if ([a1 horizontalSizeClass] == 1)
  {
    sub_22088689C();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_220884CAC();

  return v3;
}

uint64_t sub_220577960(void *a1)
{
  if ([a1 horizontalSizeClass] == 1)
  {
    return 0;
  }

  sub_22088689C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_220884CAC();

  return v4;
}

uint64_t sub_220577A84(void *a1)
{
  [a1 horizontalSizeClass];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_220884CAC();

  return v3;
}

char *sub_220577BC4(void (*a1)(char *, void, uint64_t), uint64_t a2, void *a3, uint64_t a4)
{
  v240 = a4;
  v235 = a3;
  v215 = a1;
  WatchlistViewLayoutAttributes = type metadata accessor for CreateWatchlistViewLayoutAttributes(0);
  MEMORY[0x28223BE20](WatchlistViewLayoutAttributes - 8, v5);
  v208 = (&v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  WatchlistViewModel = type metadata accessor for CreateWatchlistViewModel(0);
  MEMORY[0x28223BE20](WatchlistViewModel - 8, v8);
  v207 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC(0);
  v214 = v10;
  v212 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v210 = v12;
  v211 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088AEBC();
  v203 = *(v13 - 8);
  v204 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v202 = (&v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_22088AE9C();
  v232 = *(v16 - 8);
  v233 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v234 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576B2C(0);
  v228 = *(v19 - 8);
  v229 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v227 = &v201 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22057AD48(0, &qword_27CF56CA0, MEMORY[0x277D6D618]);
  v225 = *(v22 - 8);
  v226 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v224 = &v201 - v24;
  v25 = type metadata accessor for ManageWatchlistsContentMode(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v201 = &v201 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v216 = &v201 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v201 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v217 = &v201 - v37;
  v38 = MEMORY[0x277D83D88];
  sub_220447570(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v218 = &v201 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43);
  v206 = &v201 - v44;
  v45 = sub_220886A4C();
  v238 = *(v45 - 8);
  v239 = v45;
  MEMORY[0x28223BE20](v45, v46);
  v209 = &v201 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v205 = &v201 - v50;
  sub_220447570(0, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext, v38);
  MEMORY[0x28223BE20](v51 - 8, v52);
  v213 = &v201 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v201 - v56;
  v58 = sub_22088CA0C();
  v221 = *(v58 - 8);
  v222 = v58;
  MEMORY[0x28223BE20](v58, v59);
  v223 = &v201 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22088B8CC();
  v219 = *(v61 - 8);
  v220 = v61;
  MEMORY[0x28223BE20](v61, v62);
  v64 = &v201 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_22088AE7C();
  v237 = *(v231 - 8);
  MEMORY[0x28223BE20](v231, v65);
  v230 = &v201 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447570(0, &qword_2812993D0, MEMORY[0x277CC9AF8], v38);
  MEMORY[0x28223BE20](v67 - 8, v68);
  v70 = &v201 - v69;
  v236 = type metadata accessor for WatchlistCellViewModel(0);
  MEMORY[0x28223BE20](v236, v71);
  v73 = &v201 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74, v75);
  v77 = &v201 - v76;
  v78 = type metadata accessor for ManageWatchlistsLayoutModel(0);
  MEMORY[0x28223BE20](v78, v79);
  v81 = &v201 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DD44(0);
  sub_22088BC3C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v218 = v34;
    sub_22057B014(0);
    v138 = &v81[*(v137 + 48)];
    v139 = *(v138 + 9);
    v256 = *(v138 + 8);
    v257 = v139;
    v258 = *(v138 + 20);
    v140 = *(v138 + 5);
    v252 = *(v138 + 4);
    v253 = v140;
    v141 = *(v138 + 7);
    v254 = *(v138 + 6);
    v255 = v141;
    v142 = *(v138 + 1);
    v248 = *v138;
    v249 = v142;
    v143 = *(v138 + 3);
    v250 = *(v138 + 2);
    v251 = v143;
    sub_22057AEB0(v81, v77, type metadata accessor for WatchlistCellViewModel);
    sub_22057B080(0);
    v144 = v240;
    v145 = sub_2208919EC();
    v146 = sub_22088AF3C();
    v147 = sub_2208854AC();
    v148 = *(v147 - 8);
    (*(v148 + 16))(v70, v144, v147);
    (*(v148 + 56))(v70, 0, 1, v147);
    v149 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_indexPath;
    swift_beginAccess();
    sub_22057B114(v70, v146 + v149);
    swift_endAccess();

    v150 = [objc_opt_self() secondarySystemBackgroundColor];
    [v145 setBackgroundColor_];

    v151 = sub_22088AF4C();
    v152 = *(v237 + 104);
    LODWORD(v216) = *MEMORY[0x277D6D4C0];
    v237 += 104;
    v215 = v152;
    v152(v230);
    sub_22088AE8C();

    (*(v219 + 104))(v64, *MEMORY[0x277D6D920], v220);
    sub_22088AF2C();
    v153 = v241;
    v154 = sub_22088AF3C();
    sub_22066F220(v77, &v248, v154);

    sub_22057B1A8(v145);
    v155 = sub_22088AF3C();
    v156 = *&v155[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton];

    v157 = v153[13];
    v219 = v153[14];
    v220 = v157;
    (*(v221 + 104))(v223, *MEMORY[0x277D6E0F8], v222);
    v158 = v153[16];
    v243 = sub_22088731C();
    v244 = sub_22057B8BC(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v242 = v158;
    v245 = 0u;
    v246 = 0u;
    v247 = 1;
    sub_22088C4DC();
    swift_allocObject();

    sub_22088C4BC();
    v159 = v205;
    (*(v238 + 16))();
    v160 = v217;
    sub_22057B7F0(v153 + OBJC_IVAR____TtC8StocksUI41ManageWatchlistsBlueprintViewCellProvider_contentMode, v217, type metadata accessor for ManageWatchlistsContentMode);
    sub_22057B2D0();
    v162 = *(v161 - 1);
    v222 = *(v162 + 48);
    v223 = v161;
    v221 = v162 + 48;
    LODWORD(v160) = (v222)(v160, 1);
    v163 = sub_22088685C();
    v164 = 1;
    v165 = v163;
    v166 = *(v163 - 8);
    v167 = v166;
    v168 = v206;
    v235 = v163;
    if (v160 != 1)
    {
      (*(v166 + 32))(v206, v217, v163);
      v165 = v235;
      v164 = 0;
    }

    (*(v167 + 56))(v168, v164, 1, v165);
    (*(v238 + 32))(v57, v159, v239);
    v169 = type metadata accessor for WatchlistMembershipCommandContext(0);
    sub_22057B318(v168, &v57[*(v169 + 20)]);
    (*(*(v169 - 8) + 56))(v57, 0, 1, v169);
    sub_22088BB7C();

    sub_22057B3AC(v57, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
    v242 = v241[15];
    sub_22057B41C(0);
    sub_22057B8BC(&qword_27CF56CE8, sub_22057B41C, MEMORY[0x277D6DF38]);
    v170 = v224;
    sub_22088CFDC();
    sub_22088549C();
    v171 = v226;
    v172 = v227;
    sub_22088B08C();
    (*(v225 + 8))(v170, v171);
    sub_22057B8BC(&qword_27CF56CF0, sub_220576B2C, MEMORY[0x277D6DE20]);
    v173 = v229;
    sub_22089193C();
    sub_22089199C();
    v174 = sub_22089198C();
    (*(v228 + 8))(v172, v173);
    v175 = sub_22088AF4C();
    v176 = *(v232 + 104);
    if (v174 == 1)
    {
      v176(v234, *MEMORY[0x277D6D4D0], v233);
      sub_22088AEAC();
    }

    else
    {
      v176(v234, *MEMORY[0x277D6D4D8], v233);
      sub_22088AEAC();

      v189 = sub_22088AF4C();
      v191 = v202;
      v190 = v203;
      *v202 = 0x4000000000000000;
      (*(v190 + 104))(v191, *MEMORY[0x277D6D4E0], v204);
      sub_22088AECC();

      v175 = sub_22088AF4C();
      v215(v230, v216, v231);
      sub_22088AE8C();
    }

    v192 = sub_22088AF3C();
    [v192 setIsAccessibilityElement_];

    v193 = v145;
    v194 = sub_22089132C();
    [v193 setAccessibilityLabel_];

    v195 = v218;
    sub_22057B7F0(&v77[*(v236 + 32)], v218, type metadata accessor for ManageWatchlistsContentMode);
    if ((v222)(v195, 1, v223) == 1)
    {
      sub_22057AFB4(v77, type metadata accessor for WatchlistCellViewModel);
    }

    else
    {
      sub_22057B43C(v193);
      sub_22057AFB4(v77, type metadata accessor for WatchlistCellViewModel);
      (*(v167 + 8))(v195, v235);
    }

    return v193;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_22057AE3C(0, v83);
    v178 = *(v177 + 48);
    v179 = v207;
    sub_22057AEB0(v81, v207, type metadata accessor for CreateWatchlistViewModel);
    v180 = v208;
    sub_22057AEB0(&v81[v178], v208, type metadata accessor for CreateWatchlistViewLayoutAttributes);
    sub_22057AF18(0);
    v181 = sub_2208919EC();
    v182 = sub_22088AF4C();
    (*(v232 + 104))(v234, *MEMORY[0x277D6D4D0], v233);
    sub_22088AEAC();

    v183 = sub_22088AF3C();
    sub_220748C00(v179, v180, v183);

    v184 = sub_22088AF3C();
    v185 = *&v184[OBJC_IVAR____TtC8StocksUI19CreateWatchlistView_onTap];

    v186 = swift_allocObject();
    swift_weakInit();
    v187 = swift_allocObject();
    *(v187 + 16) = v186;
    *(v187 + 24) = v181;
    v188 = v181;

    sub_22057AFB4(v180, type metadata accessor for CreateWatchlistViewLayoutAttributes);
    sub_22057AFB4(v179, type metadata accessor for CreateWatchlistViewModel);
    return v188;
  }

  sub_22057B014(0);
  v85 = &v81[*(v84 + 48)];
  v86 = *(v85 + 9);
  v256 = *(v85 + 8);
  v257 = v86;
  v258 = *(v85 + 20);
  v87 = *(v85 + 5);
  v252 = *(v85 + 4);
  v253 = v87;
  v88 = *(v85 + 7);
  v254 = *(v85 + 6);
  v255 = v88;
  v89 = *(v85 + 1);
  v248 = *v85;
  v249 = v89;
  v90 = *(v85 + 3);
  v250 = *(v85 + 2);
  v251 = v90;
  sub_22057AEB0(v81, v73, type metadata accessor for WatchlistCellViewModel);
  sub_22057B080(0);
  v91 = v240;
  v92 = sub_2208919EC();
  v93 = sub_22088AF3C();
  v94 = sub_2208854AC();
  v95 = *(v94 - 8);
  (*(v95 + 16))(v70, v91, v94);
  (*(v95 + 56))(v70, 0, 1, v94);
  v96 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_indexPath;
  swift_beginAccess();
  sub_22057B114(v70, v93 + v96);
  swift_endAccess();

  v97 = [objc_opt_self() secondarySystemBackgroundColor];
  [v92 setBackgroundColor_];

  v98 = sub_22088AF4C();
  (*(v237 + 104))(v230, *MEMORY[0x277D6D4C8], v231);
  sub_22088AE8C();

  (*(v219 + 104))(v64, *MEMORY[0x277D6D920], v220);
  sub_22088AF2C();
  v99 = sub_22088AF3C();
  sub_22066F220(v73, &v248, v99);

  sub_22057B1A8(v92);
  v100 = sub_22088AF3C();
  v101 = *&v100[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onTapEditName];

  v102 = swift_allocObject();
  swift_weakInit();
  v103 = v212;
  v104 = v73;
  v105 = v211;
  v106 = v214;
  (*(v212 + 16))(v211, v215, v214);
  v107 = (*(v103 + 80) + 24) & ~*(v103 + 80);
  v108 = swift_allocObject();
  *(v108 + 16) = v102;
  v109 = v105;
  v110 = v104;
  (*(v103 + 32))(v108 + v107, v109, v106);

  v235 = v92;
  v111 = sub_22088AF3C();
  v112 = *&v111[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton];

  v113 = v241;
  v237 = v241[13];
  (*(v221 + 104))(v223, *MEMORY[0x277D6E0F8], v222);
  v114 = v113[16];
  v243 = sub_22088731C();
  v244 = sub_22057B8BC(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v242 = v114;
  v245 = 0u;
  v246 = 0u;
  v247 = 1;
  sub_22088C4DC();
  swift_allocObject();

  sub_22088C4BC();
  v115 = &v104[*(v236 + 28)];
  v116 = v209;
  (*(v238 + 16))(v209, v115, v239);
  v117 = v216;
  sub_22057B7F0(v113 + OBJC_IVAR____TtC8StocksUI41ManageWatchlistsBlueprintViewCellProvider_contentMode, v216, type metadata accessor for ManageWatchlistsContentMode);
  sub_22057B2D0();
  v119 = *(v118 - 8);
  v230 = *(v119 + 48);
  v231 = v118;
  v223 = (v119 + 48);
  LODWORD(v114) = (v230)(v117, 1);
  v120 = sub_22088685C();
  v121 = 1;
  v122 = v120;
  v123 = *(v120 - 8);
  if (v114 != 1)
  {
    (*(*(v120 - 8) + 32))(v218, v117, v120);
    v121 = 0;
  }

  v222 = v123;
  v124 = v218;
  (*(v123 + 56))(v218, v121, 1, v122);
  v125 = v213;
  (*(v238 + 32))(v213, v116, v239);
  v126 = type metadata accessor for WatchlistMembershipCommandContext(0);
  sub_22057B318(v124, v125 + *(v126 + 20));
  (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
  sub_22088BB7C();

  sub_22057B3AC(v125, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
  v242 = v241[15];
  sub_22057B41C(0);
  sub_22057B8BC(&qword_27CF56CE8, sub_22057B41C, MEMORY[0x277D6DF38]);
  v127 = v224;
  sub_22088CFDC();
  sub_22088549C();
  v128 = v226;
  v129 = v227;
  sub_22088B08C();
  (*(v225 + 8))(v127, v128);
  sub_22057B8BC(&qword_27CF56CF0, sub_220576B2C, MEMORY[0x277D6DE20]);
  v130 = v229;
  sub_22089193C();
  sub_22089199C();
  v131 = sub_22089198C();
  (*(v228 + 8))(v129, v130);
  result = sub_22088548C();
  v133 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v134 = v235;
  v135 = sub_22088AF4C();
  v136 = *(v232 + 104);
  if (v131 == v133)
  {
    v136(v234, *MEMORY[0x277D6D4D0], v233);
    sub_22088AEAC();
  }

  else
  {
    v136(v234, *MEMORY[0x277D6D4D8], v233);
    sub_22088AEAC();

    v135 = sub_22088AF4C();
    v197 = v202;
    v196 = v203;
    *v202 = 0x3FF0000000000000;
    (*(v196 + 104))(v197, *MEMORY[0x277D6D4E0], v204);
    sub_22088AECC();
  }

  v193 = v134;
  [v193 setIsAccessibilityElement_];
  v198 = sub_22088AF3C();
  [v198 setIsAccessibilityElement_];

  v199 = sub_22089132C();
  [v193 setAccessibilityLabel_];

  if ((*(v110 + 32) & 1) == 0)
  {
    v200 = v201;
    sub_22057B7F0(v110 + *(v236 + 32), v201, type metadata accessor for ManageWatchlistsContentMode);
    if ((v230)(v200, 1, v231) != 1)
    {
      sub_22057B43C(v193);
      sub_22057AFB4(v110, type metadata accessor for WatchlistCellViewModel);
      (*(v222 + 8))(v200, v122);
      return v193;
    }

    sub_22057B660(v193);
  }

  sub_22057AFB4(v110, type metadata accessor for WatchlistCellViewModel);
  return v193;
}

double sub_22057975C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_22070FEE4(a2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2205797E8(uint64_t a1, void *a2)
{
  v54 = a2;
  v2 = sub_22088F11C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088F14C();
  v56 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ManageWatchlistsContentMode(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447570(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v49 - v16;
  v18 = type metadata accessor for WatchlistCreationRouteModel(0);
  v53 = *(v18 - 8);
  v19 = *(v53 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v21 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v57 = &v49 - v24;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    v49 = v6;
    v50 = v7;
    v51 = v3;
    v52 = v2;
    sub_22057B7F0(result + OBJC_IVAR____TtC8StocksUI41ManageWatchlistsBlueprintViewCellProvider_contentMode, v13, type metadata accessor for ManageWatchlistsContentMode);
    sub_22057B2D0();
    v28 = 1;
    v29 = (*(*(v27 - 8) + 48))(v13, 1, v27);
    v30 = sub_22088685C();
    v31 = *(v30 - 8);
    if (v29 != 1)
    {
      (*(*(v30 - 8) + 32))(v17, v13, v30);
      v28 = 0;
    }

    (*(v31 + 56))(v17, v28, 1, v30);
    v32 = swift_allocObject();
    v33 = v54;
    *(v32 + 16) = v26;
    *(v32 + 24) = v33;
    v34 = v57;
    sub_22057B318(v17, v57);
    v35 = (v34 + *(v18 + 20));
    *v35 = sub_22057B7E8;
    v35[1] = v32;
    Strong = swift_unknownObjectWeakLoadStrong();

    v37 = v33;
    v39 = v49;
    v38 = v50;
    if (Strong)
    {
      v40 = [Strong navigationController];
      if (v40)
      {
        v41 = v40;
        [v40 dismissViewControllerAnimated:1 completion:0];
      }

      swift_unknownObjectRelease();
    }

    sub_22046D5B4();
    v42 = sub_220891D0C();
    v43 = v57;
    sub_22057B7F0(v57, v21, type metadata accessor for WatchlistCreationRouteModel);
    v44 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v26;
    sub_22057AEB0(v21, v45 + v44, type metadata accessor for WatchlistCreationRouteModel);
    aBlock[4] = sub_22057B858;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2204C35E8;
    aBlock[3] = &block_descriptor_29;
    v46 = _Block_copy(aBlock);

    v47 = v55;
    sub_22088F13C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22057B8BC(&qword_281296CA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_220447570(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2204B6C74();
    v48 = v52;
    sub_2208923FC();
    MEMORY[0x223D89EC0](0, v47, v39, v46);
    _Block_release(v46);

    (*(v51 + 8))(v39, v48);
    (*(v56 + 8))(v47, v38);
    return sub_22057AFB4(v43, type metadata accessor for WatchlistCreationRouteModel);
  }

  return result;
}

uint64_t sub_220579E6C(void *a1)
{
  sub_220447570(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v23 - v4;
  v6 = sub_22088CA0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088685C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ManageWatchlistsContentMode(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22057B7F0(a1 + OBJC_IVAR____TtC8StocksUI41ManageWatchlistsBlueprintViewCellProvider_contentMode, v19, type metadata accessor for ManageWatchlistsContentMode);
  sub_22057B2D0();
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    swift_getObjectType();
    if (qword_281296F80 != -1)
    {
      swift_once();
    }

    return sub_22088B82C();
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    (*(v7 + 104))(v10, *MEMORY[0x277D6E0E0], v6);
    v22 = a1[16];
    v23[4] = sub_22088731C();
    v23[5] = sub_22057B8BC(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v23[1] = v22;

    sub_22088AF3C();
    v24 = 0u;
    v25 = 0u;
    v26 = 1;
    sub_22088C4DC();
    swift_allocObject();
    sub_22088C4BC();
    swift_getObjectType();
    if (qword_281296F90 != -1)
    {
      swift_once();
    }

    (*(v12 + 16))(v5, v15, v11);
    (*(v12 + 56))(v5, 0, 1, v11);

    sub_22088B7AC();

    sub_22057B3AC(v5, &qword_281299060, MEMORY[0x277D69810]);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_22057A328(uint64_t a1, uint64_t a2)
{
  sub_220447570(0, &qword_27CF56CF8, type metadata accessor for CreateWatchlistCommandContext, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9 - v5;
  swift_getObjectType();
  if (qword_281296F88 != -1)
  {
    swift_once();
  }

  sub_22057B7F0(a2, v6, type metadata accessor for WatchlistCreationRouteModel);
  WatchlistCommandContext = type metadata accessor for CreateWatchlistCommandContext(0);
  (*(*(WatchlistCommandContext - 8) + 56))(v6, 0, 1, WatchlistCommandContext);
  sub_22088B81C();
  return sub_22057B3AC(v6, &qword_27CF56CF8, type metadata accessor for CreateWatchlistCommandContext);
}

BOOL sub_22057A4C8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = sub_22088AF3C();

    v3 = *&v2[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onTapEditName];
    MEMORY[0x223D86300]();
  }

  return Strong != 0;
}

uint64_t sub_22057A558(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

BOOL sub_22057A598(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = sub_22088AF3C();
    v3 = *&v2[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton];

    [v3 sendActionsForControlEvents_];
  }

  return Strong != 0;
}

void *sub_22057A634(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = sub_22088AF3C();
    v4 = *&v3[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton];

    sub_22088BB3C();
    if (v7 == 2)
    {
LABEL_3:

      return 0;
    }

    if (v7)
    {
      v5 = sub_2208928BC();

      if ((v5 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v6 = *MEMORY[0x277D76598];

    return v6;
  }

  return result;
}

uint64_t sub_22057A748(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void sub_22057A788()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();
  v4 = v3;

  qword_27CF56C68 = v2;
  unk_27CF56C70 = v4;
}

void sub_22057A854()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();
  v4 = v3;

  qword_27CF56C78 = v2;
  unk_27CF56C80 = v4;
}

void *sub_22057A920()
{
  sub_22054B9F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_22057AFB4(v0 + OBJC_IVAR____TtC8StocksUI41ManageWatchlistsBlueprintViewCellProvider_contentMode, type metadata accessor for ManageWatchlistsContentMode);
  return v0;
}

uint64_t sub_22057A994()
{
  sub_22057A920();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManageWatchlistsBlueprintViewCellProvider(uint64_t a1)
{
  result = qword_27CF56C90;
  if (!qword_27CF56C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22057AA40(uint64_t a1)
{
  result = type metadata accessor for ManageWatchlistsContentMode(319);
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

uint64_t sub_22057AB04()
{
  sub_22057B080(0);
  sub_2208919FC();
  sub_22057AF18(0);
  return sub_2208919FC();
}

char *sub_22057AB54@<X0>(void (*a1)(char *, void, uint64_t)@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  result = sub_220577BC4(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_22057AB84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22046DA2C(v2 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);
  v10 = v4;
  v11 = v5;
  __swift_allocate_boxed_opaque_existential_1(&v9);
  v7(a2, v4, v6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v2 + 32));
  sub_220457328(&v9, v2 + 32);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  return sub_22088D31C();
}

void sub_22057AD48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ManageWatchlistsLayoutSectionDescriptor(255);
    v8[1] = type metadata accessor for ManageWatchlistsLayoutModel(255);
    v8[2] = sub_22057B8BC(&qword_27CF56C40, type metadata accessor for ManageWatchlistsLayoutSectionDescriptor, &unk_2208ADAC8);
    v8[3] = sub_22057B8BC(&qword_27CF56B18, type metadata accessor for ManageWatchlistsLayoutModel, &unk_22089EE3C);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22057AE3C(uint64_t a1, __n128 a2)
{
  if (!qword_27CF56CB0)
  {
    type metadata accessor for CreateWatchlistViewModel(255);
    type metadata accessor for CreateWatchlistViewLayoutAttributes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF56CB0);
    }
  }
}

uint64_t sub_22057AEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22057AF18(uint64_t a1)
{
  if (!qword_27CF56CB8)
  {
    type metadata accessor for CreateWatchlistView();
    sub_22057B8BC(&qword_27CF56CC0, type metadata accessor for CreateWatchlistView, &unk_2208A831C);
    v1 = sub_22088AF5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56CB8);
    }
  }
}

uint64_t sub_22057AFB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22057B014(uint64_t a1)
{
  if (!qword_27CF56CC8)
  {
    type metadata accessor for WatchlistCellViewModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF56CC8);
    }
  }
}

void sub_22057B080(uint64_t a1)
{
  if (!qword_27CF56CD0)
  {
    type metadata accessor for WatchlistCellView(255);
    sub_22057B8BC(&qword_27CF56CD8, type metadata accessor for WatchlistCellView, &unk_22089AE10);
    v1 = sub_22088AF5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56CD0);
    }
  }
}

uint64_t sub_22057B114(uint64_t a1, uint64_t a2)
{
  sub_220447570(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_22057B1A8(void *a1)
{
  [a1 setIsAccessibilityElement_];
  [a1 setAccessibilityLabel_];
  [a1 setAccessibilityHint_];
  [a1 su:0 setAccessibilityActivateBlock:?];
  v2 = *MEMORY[0x277D76548];
  v3 = [a1 accessibilityTraits];
  v4 = -1;
  if ((v3 & v2) != 0)
  {
    v4 = ~v2;
  }

  return [a1 setAccessibilityTraits_];
}

double sub_22057B25C()
{
  sub_22055DDDC(0);
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_22057975C(v3, v4);
}

void sub_22057B2D0()
{
  if (!qword_281299088)
  {
    v0 = sub_22088685C();
    if (!v1)
    {
      atomic_store(v0, &qword_281299088);
    }
  }
}

uint64_t sub_22057B318(uint64_t a1, uint64_t a2)
{
  sub_220447570(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22057B3AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220447570(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22057B43C(void *a1)
{
  [a1 setIsAccessibilityElement_];
  v2 = *MEMORY[0x277D76548];
  v3 = [a1 accessibilityTraits];
  if ((v2 & ~v3) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  [a1 setAccessibilityTraits_];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_22057B798;
  v15 = v5;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_22057A558;
  v13 = &block_descriptor_16;
  v6 = _Block_copy(&v10);

  [a1 su:v6 setAccessibilityActivateBlock:?];
  _Block_release(v6);
  if (qword_27CF55848 != -1)
  {
    swift_once();
  }

  v7 = sub_22089132C();
  [a1 setAccessibilityHint_];

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_22057B7A0;
  v15 = v8;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_22057A748;
  v13 = &block_descriptor_20;
  v9 = _Block_copy(&v10);

  [a1 su:v9 setAccessibilityAdditionalTraitsBlock:?];
  _Block_release(v9);
}

void sub_22057B660(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_22057B790;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_22057A558;
  v5[3] = &block_descriptor_3;
  v3 = _Block_copy(v5);

  [a1 su:v3 setAccessibilityActivateBlock:?];
  _Block_release(v3);
  if (qword_27CF55840 != -1)
  {
    swift_once();
  }

  v4 = sub_22089132C();
  [a1 setAccessibilityHint_];
}

uint64_t objectdestroy_4Tm()
{

  return swift_deallocObject();
}

uint64_t sub_22057B7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22057B858()
{
  v1 = *(type metadata accessor for WatchlistCreationRouteModel(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_22057A328(v2, v3);
}

uint64_t sub_22057B8BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22057B91C(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC8StocksUI10TickerView_priceChangeLabel);
  v4 = [v3 font];
  if (v4)
  {
    withFont = v4;
    v5 = [v3 color];
    if (v5)
    {
      v6 = v5;
      v7 = [v3 attributedText];
      if (v7)
      {
        v8 = v7;
        if (a2)
        {
          v9 = sub_2208928BC();
        }

        else
        {
          v9 = 1;
        }

        isa = NSAttributedString.appendingAccessibilityDWCPriceChangeArrow(pointingUpward:withFont:withColor:)(v9 & 1, withFont, v6).super.isa;
        [v3 setAttributedText_];

        v6 = isa;
      }

      else
      {
        v8 = withFont;
      }

      v10 = v6;
    }

    else
    {
      v10 = withFont;
    }
  }
}

uint64_t sub_22057BA78()
{
  v0 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C(0);
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2204AE2D4(v3, type metadata accessor for StockListModel);
    }

    v5 = 0;
  }

  else
  {
    sub_2204AE2D4(v3, type metadata accessor for StockListStockModel);
    v5 = sub_22088AD6C();
  }

  return v5 & 1;
}

uint64_t sub_22057BB68()
{
  v1 = v0;
  v2 = sub_220885CDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088698C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v1, v7, v10);
  LODWORD(v13) = (*(v8 + 88))(v12, v7);
  if (v13 == *MEMORY[0x277D69850])
  {
    (*(v8 + 96))(v12, v7);
    swift_unknownObjectRelease();
    sub_22052EC94(0);
    (*(v3 + 32))(v6, &v12[*(v14 + 48)], v2);
    v15 = sub_220885BFC();
    v16 = v15;
    if (v15)
    {
      [v15 computedGlobalScoreCoefficient];
      v35 = v17;
      [v16 userFeedbackScore];
      v34 = v18;
      [v16 agedPersonalizationScore];
      v33 = v19;
      [v16 personalizationScore];
      v32 = v20;
      [v16 paidNonpaidSubscriptionCtr];
      v22 = v21;
      [v16 subscribedChannelCtr];
      v24 = v23;
      [v16 autoSubscribeCtr];
      v26 = v25;
    }

    else
    {
      v26 = 0;
      v24 = 0;
      v22 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
    }

    sub_22057C000();
    sub_220885BDC();
    v28 = v27;
    sub_220885C1C();
    sub_220885C0C();
    sub_220885BEC();
    v13 = sub_220885C7C();
    if (v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v13 <= 0x7FFFFFFF)
    {
      sub_220885B8C();
      sub_220885C3C();
      v31[5] = v29;
      sub_220885C2C();
      v13 = sub_220885C8C();
      if (v13 >= 0xFFFFFFFF80000000)
      {
        if (v13 <= 0x7FFFFFFF)
        {
          v13 = sub_220885B9C();
          if (v13 >= 0xFFFFFFFF80000000)
          {
            if (v13 <= 0x7FFFFFFF)
            {
              sub_220885BCC();
              v31[4] = v24;
              sub_220885BBC();
              v31[3] = v26;
              sub_220885BAC();
              v31[1] = v28;
              sub_220885CCC();
              v31[2] = v22;
              sub_220885CAC();
              sub_2208898AC();

              return (*(v3 + 8))(v6, v2);
            }

            goto LABEL_17;
          }

LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_18:
  if (v13 == *MEMORY[0x277D69840])
  {
    sub_22089267C();
    __break(1u);
  }

  result = sub_2208928AC();
  __break(1u);
  return result;
}

uint64_t sub_22057C000()
{
  v28 = sub_220885C6C();
  v0 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_220889F0C();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v5);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220885C9C();
  v8 = *(v7 + 16);
  if (v8)
  {
    v29 = MEMORY[0x277D84F90];
    sub_22070BEA4(0, v8, 0);
    v9 = v29;
    v11 = *(v0 + 16);
    v10 = v0 + 16;
    v12 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v20 = v7;
    v13 = v7 + v12;
    v24 = *(v10 + 56);
    v25 = v11;
    v22 = v4 + 32;
    v23 = (v10 - 8);
    v14 = v21;
    v26 = v10;
    do
    {
      v15 = v4;
      v16 = v28;
      v25(v3, v13, v28);
      sub_220885C4C();
      sub_220885C5C();
      sub_220889EFC();
      (*v23)(v3, v16);
      v29 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22070BEA4((v17 > 1), v18 + 1, 1);
        v14 = v21;
        v9 = v29;
      }

      *(v9 + 16) = v18 + 1;
      v4 = v15;
      (*(v15 + 32))(v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v18, v14, v27);
      v13 += v24;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t sub_22057C2B0()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886B5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220443898(0);
  (*(v6 + 104))(v9, *MEMORY[0x277D6D048], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D098], v0);
  result = sub_220886C2C();
  qword_281298DE8 = result;
  return result;
}

id sub_22057C4B8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v32 = sub_2208854AC();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088D61C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C(0);
  sub_22088B2AC();
  if (v49 > 1u)
  {
    goto LABEL_6;
  }

  v13 = v45;
  if (!v45)
  {
    goto LABEL_6;
  }

  v27 = v44;
  v28 = v46;
  v29 = v48;
  v30 = v47;
  sub_2204B9CF0(0);
  sub_22088C34C();
  *(v43 + 9) = *(v36 + 9);
  v42[2] = v35;
  v43[0] = v36[0];
  v42[0] = v33;
  v42[1] = v34;
  if (BYTE8(v36[1]) >= 2u)
  {

LABEL_6:
    sub_22057CBE0(0);
    sub_22088D42C();
    sub_22088D44C();
    v23 = sub_220891C0C();
    (*(v4 + 8))(v7, v32);
    (*(v9 + 8))(v12, v8);
    [v23 setFrame_];
    return v23;
  }

  v39 = v35;
  v40 = v36[0];
  v41 = *&v36[1];
  v37 = v33;
  v38 = v34;
  sub_22049F9F4(0);
  sub_22088D42C();
  sub_22088D44C();
  v14 = sub_220891C0C();
  (*(v4 + 8))(v7, v32);
  (*(v9 + 8))(v12, v8);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v18 = v27;
  v17 = v28;
  *(v16 + 16) = v15;
  *(v16 + 24) = v18;
  *(v16 + 32) = v13;
  *(v16 + 40) = v17;
  v19 = v29;
  *(v16 + 48) = v30;
  *(v16 + 56) = v19;
  v20 = v40;
  *(v16 + 96) = v39;
  *(v16 + 112) = v20;
  v21 = v41;
  v22 = v38;
  *(v16 + 64) = v37;
  *(v16 + 80) = v22;
  *(v16 + 128) = v21;
  *(v16 + 136) = v14;
  sub_2204BE7B8(v42, &v33);
  v23 = v14;
  sub_22088868C();

  __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
  v24 = sub_22088D33C();
  sub_2208882EC();
  sub_2204C5E90(v42);

  __swift_destroy_boxed_opaque_existential_1(&v33);
  return v23;
}

void sub_22057C8A8(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 16);
    v9 = Strong;
    swift_unknownObjectRetain();
    v10 = sub_22088D32C();
    v11 = OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_switcherButton;
    [*&v10[OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_switcherButton] setFrame_];
    [*&v10[v11] setEnabled_];
    swift_beginAccess();
    __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
    sub_22059B6F8(*&v10[v11], *a3, a3[1], *(a4 + 64));
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = sub_22088E13C();
    swift_unknownObjectRelease();

    v13 = sub_22088D32C();
    v14 = *&v13[OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_switcherButton];

    [v14 setShowsMenuAsPrimaryAction_];
    v15 = sub_22088D32C();
    v16 = *&v15[OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_switcherButton];

    __swift_project_boxed_opaque_existential_1((v9 + 96), *(v9 + 120));
    v17 = sub_22088D32C();
    v18 = sub_2206934B8(v17, 0);

    [v16 setMenu_];
  }
}

uint64_t sub_22057CAC4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return swift_deallocClassInstance();
}

void sub_22057CBE0(uint64_t a1)
{
  if (!qword_2812975B0)
  {
    sub_220890C0C();
    sub_22045BF08(&unk_281296740, MEMORY[0x277D34710], MEMORY[0x277D34708]);
    v1 = sub_22088D34C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812975B0);
    }
  }
}

uint64_t sub_22057CC90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22057CCD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22057CD28()
{
  sub_22046DA2C(v0 + 32, v4);
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_22046AA04(&qword_2812911B8, v1, type metadata accessor for TickerDataManager, &unk_22089AC3C);
  sub_220885FDC();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_22046DA2C(v0 + 72, v4);
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_22046AA04(qword_2812911C0, v2, type metadata accessor for TickerDataManager, &unk_22089AC14);
  sub_22088631C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_22054B9F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return v0;
}

uint64_t sub_22057CE60()
{
  sub_22057CD28();

  return swift_deallocClassInstance();
}

double sub_22057CE94()
{
  v1 = v0;
  sub_2204AA824(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204753E0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204752B8(0);
  v13 = *(v12 - 8);
  v24 = v12;
  v25 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  sub_22046AA04(&qword_2812911B8, v17, type metadata accessor for TickerDataManager, &unk_22089AC3C);
  sub_220885FAC();
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  sub_22046AA04(qword_2812911C0, v18, type metadata accessor for TickerDataManager, &unk_22089AC14);
  sub_22088630C();
  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
  sub_22088600C();
  sub_22046D5B4();
  v19 = sub_220891D0C();
  v26 = v19;
  v20 = sub_220891CEC();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  sub_22046AA04(&qword_281296E10, 255, sub_2204753E0, MEMORY[0x277CBCBE0]);
  sub_22046AA04(&qword_28127E7C8, 255, sub_22046D5B4, MEMORY[0x277D85228]);
  sub_22088EBAC();
  sub_2204E64C0(v5);

  (*(v8 + 8))(v11, v7);
  swift_allocObject();
  swift_weakInit();
  sub_22046AA04(&qword_281296DC0, 255, sub_2204752B8, MEMORY[0x277CBCD60]);
  v21 = v24;
  sub_22088EBDC();

  (*(v25 + 8))(v16, v21);
  swift_beginAccess();
  sub_22088EB6C();
  swift_endAccess();

  return result;
}

double sub_22057D2D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 24);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);

      v8(v9, &off_283412F30, a1, ObjectType, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_22057D3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v3, &off_283412F30, a2, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22057D44C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v2, &off_283412F30, a2, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22057D4E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t (*sub_22057D530(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isSelected;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_22057D5B8;
}

void sub_22057D5B8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onSelection);
    if (v5)
    {
      v6 = *(v4 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onSelection + 8);
      v7 = *(v4 + v3[4]);

      v5(v4, v7);
      sub_2204DA45C(v5, v6);
    }
  }

  free(v3);
}

char *sub_22057D658(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  sub_2204D4C7C(0, &qword_27CF56D60, sub_22057E51C);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v43 - v15;
  v17 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_titleLabel;
  *&v7[v17] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_editNameButton;
  *&v7[v18] = [objc_opt_self() buttonWithType_];
  v19 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_hairlineView;
  *&v7[v19] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v20 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton;
  if (qword_281296FD8 != -1)
  {
    swift_once();
  }

  sub_22057E51C(0);
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  sub_22057E588(0);
  v23 = objc_allocWithZone(v22);

  *&v7[v20] = sub_22088BB5C();
  v24 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onTapEditName;
  sub_22049D9F4();
  *&v7[v24] = [objc_allocWithZone(v25) init];
  v26 = &v7[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing];
  *v26 = 0;
  v26[1] = 0;
  v7[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isEditing] = 0;
  v27 = &v7[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onSelection];
  *v27 = 0;
  v27[1] = 0;
  v7[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isSelected] = 0;
  v28 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_indexPath;
  v29 = sub_2208854AC();
  (*(*(v29 - 8) + 56))(&v7[v28], 1, 1, v29);
  v43.receiver = v7;
  v43.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v43, sel_initWithFrame_, a1, a2, a3, a4);
  v31 = *&v30[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_titleLabel];
  v32 = v30;
  [v32 addSubview_];
  v33 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton;
  [v32 addSubview_];
  v34 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_editNameButton;
  [v32 addSubview_];
  [v32 addSubview_];
  [*&v32[v33] setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  sub_22088F0DC();
  [*&v32[v34] setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v35 = *&v32[v34];
  v36 = *&v32[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onTapEditName];
  v37 = v35;
  sub_22088E18C();

  v38 = v32;
  [v38 setIsAccessibilityElement_];
  v39 = *MEMORY[0x277D76548];
  v40 = [v38 accessibilityTraits];
  if ((v39 & ~v40) != 0)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0;
  }

  [v38 setAccessibilityTraits_];

  return v38;
}

uint64_t type metadata accessor for WatchlistCellView(uint64_t a1)
{
  result = qword_27CF56D48;
  if (!qword_27CF56D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22057DB8C(uint64_t a1)
{
  sub_2204D4C7C(319, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22057DC68()
{
  v1 = v0;
  sub_2204D4C7C(0, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17[-v4];
  v6 = (v0 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing);
  v7 = *(v0 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing);
  v8 = *(v0 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing + 8);
  *v6 = 0;
  v6[1] = 0;
  sub_2204DA45C(v7, v8);
  v9 = (v0 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onSelection);
  v10 = *v9;
  v11 = v9[1];
  *v9 = 0;
  v9[1] = 0;
  sub_2204DA45C(v10, v11);
  *(v1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isEditing) = 0;
  v12 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isSelected;
  swift_beginAccess();
  *(v1 + v12) = 0;
  v13 = *v9;
  if (*v9)
  {
    v14 = v9[1];

    v13(v1, 0);
    sub_2204DA45C(v13, v14);
  }

  v15 = sub_2208854AC();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_indexPath;
  swift_beginAccess();
  sub_22057B114(v5, v1 + v16);
  swift_endAccess();
}

id sub_22057DE28(uint64_t a1, char a2, double a3, double a4)
{
  v6 = *(a1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing);
  if (v6)
  {
    v8 = *(a1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing + 8);
    v9 = a3;

    v6(a1, a2 & 1);
    sub_2204DA45C(v6, v8);
    a3 = v9;
  }

  [*(a1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_editNameButton) setAlpha_];
  v10 = *(a1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_hairlineView);

  return [v10 setAlpha_];
}

void sub_22057DEFC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v6[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isEditing] = a1;
  if (a1)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (a1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = a1;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  v10 = v6;
  sub_22088E51C();
}

void sub_22057DFCC()
{
  sub_22057E220(&qword_27CF56CD8, &unk_22089AE10);

  JUMPOUT(0x223D86790);
}

uint64_t sub_22057E024()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isSelected;
  swift_beginAccess();
  return *(v1 + v2);
}

double sub_22057E06C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isSelected;
  swift_beginAccess();
  *(v3 + v4) = a1;
  v6 = *(v3 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onSelection);
  if (v6)
  {
    v7 = *(v3 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onSelection + 8);

    v6(v3, a1 & 1);
    return sub_2204DA45C(v6, v7);
  }

  return result;
}

uint64_t (*sub_22057E0FC(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_22057D530(v2);
  return sub_22057E170;
}

void sub_22057E170(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_22057E220(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WatchlistCellView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22057E274()
{
  v1 = v0;
  sub_2204D4C7C(0, &qword_27CF56D60, sub_22057E51C);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  v6 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_titleLabel;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v7 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_editNameButton;
  *(v1 + v7) = [objc_opt_self() buttonWithType_];
  v8 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_hairlineView;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton;
  if (qword_281296FD8 != -1)
  {
    swift_once();
  }

  sub_22057E51C(0);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_22057E588(0);
  objc_allocWithZone(v11);

  *(v1 + v9) = sub_22088BB5C();
  v12 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onTapEditName;
  sub_22049D9F4();
  *(v1 + v12) = [objc_allocWithZone(v13) init];
  v14 = (v1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isEditing) = 0;
  v15 = (v1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onSelection);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isSelected) = 0;
  v16 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_indexPath;
  v17 = sub_2208854AC();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  sub_22089267C();
  __break(1u);
}

void sub_22057E51C(uint64_t a1)
{
  if (!qword_27CF56D68)
  {
    sub_22047A590();
    sub_22046599C();
    v1 = sub_22088B8FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56D68);
    }
  }
}

void sub_22057E588(uint64_t a1)
{
  if (!qword_27CF56D70)
  {
    type metadata accessor for WatchlistMembershipCommandContext(255);
    sub_22057E610();
    sub_22046599C();
    v1 = sub_22088BB8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56D70);
    }
  }
}

unint64_t sub_22057E610()
{
  result = qword_27CF56D78;
  if (!qword_27CF56D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56D78);
  }

  return result;
}

uint64_t sub_22057E664(uint64_t a1)
{
  sub_2204D4C7C(0, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ScrollPosition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22057EC3C(0, &qword_27CF56D80, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22057E964();
  sub_220892A4C();
  if (!v2)
  {
    v18 = 0;
    sub_22057E9B8();
    sub_22089279C();
    if (v17)
    {
      LOBYTE(v17) = 1;
      v11 = sub_22089277C();
      v13 = v12;
      v14 = v11;
      type metadata accessor for CGPoint(0);
      v18 = 2;
      sub_22057ECF4(&qword_27CF56D90, MEMORY[0x277CBF2B8]);
      sub_22089279C();
      (*(v7 + 8))(v10, v6);
      v16 = v17;
    }

    else
    {
      (*(v7 + 8))(v10, v6);
      v14 = 0;
      v13 = 0;
      v16 = 0uLL;
    }

    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_22057E964()
{
  result = qword_281293F08;
  if (!qword_281293F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293F08);
  }

  return result;
}

unint64_t sub_22057E9B8()
{
  result = qword_27CF56D88;
  if (!qword_27CF56D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56D88);
  }

  return result;
}

uint64_t ScrollPosition.encode(to:)(void *a1)
{
  sub_22057EC3C(0, &qword_28127E1E8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v14 - v8;
  v10 = v1[1];
  v14[1] = *v1;
  v11 = v1[2];
  v12 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22057E964();
  sub_220892A5C();
  if (!v10)
  {
    LOBYTE(v15) = 0;
    v17 = 0;
    sub_22057ECA0();
    goto LABEL_5;
  }

  LOBYTE(v15) = 1;
  v17 = 0;
  sub_22057ECA0();
  sub_22089283C();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_22089280C();
    v15 = v11;
    v16 = v12;
    v17 = 2;
    type metadata accessor for CGPoint(0);
    sub_22057ECF4(&qword_28127E548, MEMORY[0x277CBF2A8]);
LABEL_5:
    sub_22089283C();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_22057EC3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22057E964();
    v7 = a3(a1, &type metadata for ScrollPosition.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22057ECA0()
{
  result = qword_281293EF0;
  if (!qword_281293EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293EF0);
  }

  return result;
}

uint64_t sub_22057ECF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22057ED38()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x74657366666FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_22057ED8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22057F3F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22057EDC0(uint64_t a1)
{
  v2 = sub_22057E964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22057EDFC(uint64_t a1)
{
  v2 = sub_22057E964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22057EE38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1835365481;
  }

  else
  {
    v3 = 7368564;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1835365481;
  }

  else
  {
    v5 = 7368564;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_22057EED0()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

double sub_22057EF44(uint64_t a1)
{
  sub_22089146C();

  return result;
}

uint64_t sub_22057EFA4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

void sub_22057F014(char *a2@<X8>)
{
  v3 = sub_22089270C();

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

void sub_22057F074(uint64_t *a1@<X8>)
{
  v2 = 7368564;
  if (*v1)
  {
    v2 = 1835365481;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22057F184(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22057F1D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22057F22C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22057F244(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_22057F29C()
{
  result = qword_27CF56D98;
  if (!qword_27CF56D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56D98);
  }

  return result;
}

unint64_t sub_22057F2F4()
{
  result = qword_27CF56DA0;
  if (!qword_27CF56DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56DA0);
  }

  return result;
}

unint64_t sub_22057F34C()
{
  result = qword_281293EF8;
  if (!qword_281293EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293EF8);
  }

  return result;
}

unint64_t sub_22057F3A4()
{
  result = qword_281293F00;
  if (!qword_281293F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293F00);
  }

  return result;
}

uint64_t sub_22057F3F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2208928BC();

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

unint64_t sub_22057F514()
{
  result = qword_281293EE8;
  if (!qword_281293EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293EE8);
  }

  return result;
}

uint64_t type metadata accessor for StockChartCalloutLayoutOptions(uint64_t a1)
{
  result = qword_27CF56DA8;
  if (!qword_27CF56DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22057F5DC(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_2208854FC();
    if (v2 <= 0x3F)
    {
      sub_22088543C();
      if (v3 <= 0x3F)
      {
        sub_220496148();
        if (v4 <= 0x3F)
        {
          type metadata accessor for UIEdgeInsets(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_22057F6A8()
{
  v1 = v0;
  v2 = sub_22089114C();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v40 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_2208911CC();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220890C5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208911BC();
  MEMORY[0x28223BE20](v14 - 8, v15);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v16 = sub_2208882FC();
  v18 = v1[10];
  v17 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v18);
  v19 = *(v17 + 16);
  if (v16)
  {
    (*(v19 + 328))(v18);
  }

  else
  {
    (*(v19 + 312))(v18);
  }

  (*(v10 + 104))(v13, *MEMORY[0x277D6C640], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277D6C7D0], v37);
  sub_2208911AC();
  sub_22048BC00();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22089B120;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v21 = sub_2208882FC();
  v23 = v1[10];
  v22 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v23);
  v24 = *(v22 + 16);
  if (v21)
  {
    v25 = (*(v24 + 336))(v23);
  }

  else
  {
    v25 = (*(v24 + 320))(v23);
  }

  v26 = v25;
  v27 = [v25 colorWithAlphaComponent_];

  *(v20 + 32) = v27;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  LOBYTE(v26) = sub_2208882FC();
  v29 = v1[10];
  v28 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v29);
  v30 = *(v28 + 16);
  if (v26)
  {
    v31 = (*(v30 + 336))(v29);
  }

  else
  {
    v31 = (*(v30 + 320))(v29);
  }

  v32 = v31;
  v33 = [v31 colorWithAlphaComponent_];

  *(v20 + 40) = v33;
  v34 = v39;
  v35 = v40;
  *v40 = v20;
  (*(v38 + 104))(v35, *MEMORY[0x277D6C7B8], v34);
  sub_22089120C();
  swift_allocObject();
  return sub_2208911FC();
}

uint64_t sub_22057FB3C()
{
  v1 = v0;
  v2 = sub_22089114C();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v40 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_2208911CC();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220890C5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208911BC();
  MEMORY[0x28223BE20](v14 - 8, v15);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v16 = sub_2208882FC();
  v18 = v1[10];
  v17 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v18);
  v19 = *(v17 + 16);
  if (v16)
  {
    (*(v19 + 312))(v18);
  }

  else
  {
    (*(v19 + 328))(v18);
  }

  (*(v10 + 104))(v13, *MEMORY[0x277D6C640], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277D6C7D0], v37);
  sub_2208911AC();
  sub_22048BC00();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22089B120;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v21 = sub_2208882FC();
  v23 = v1[10];
  v22 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v23);
  v24 = *(v22 + 16);
  if (v21)
  {
    v25 = (*(v24 + 320))(v23);
  }

  else
  {
    v25 = (*(v24 + 336))(v23);
  }

  v26 = v25;
  v27 = [v25 colorWithAlphaComponent_];

  *(v20 + 32) = v27;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  LOBYTE(v26) = sub_2208882FC();
  v29 = v1[10];
  v28 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v29);
  v30 = *(v28 + 16);
  if (v26)
  {
    v31 = (*(v30 + 320))(v29);
  }

  else
  {
    v31 = (*(v30 + 336))(v29);
  }

  v32 = v31;
  v33 = [v31 colorWithAlphaComponent_];

  *(v20 + 40) = v33;
  v34 = v39;
  v35 = v40;
  *v40 = v20;
  (*(v38 + 104))(v35, *MEMORY[0x277D6C7B8], v34);
  sub_22089120C();
  swift_allocObject();
  return sub_2208911FC();
}

uint64_t sub_22057FFD0()
{
  v1 = v0;
  v2 = sub_22089114C();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v32 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2208911CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220890C5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2208911BC();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = v0[10];
  v17 = v0[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v18);
  (*(*(v17 + 16) + 344))(v18);
  (*(v11 + 104))(v14, *MEMORY[0x277D6C640], v10);
  (*(v6 + 104))(v9, *MEMORY[0x277D6C7D0], v5);
  sub_2208911AC();
  sub_22048BC00();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22089B120;
  v21 = v1[10];
  v20 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v21);
  v22 = (*(*(v20 + 16) + 352))(v21);
  v23 = [v22 colorWithAlphaComponent_];

  *(v19 + 32) = v23;
  v25 = v1[10];
  v24 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v25);
  v26 = (*(*(v24 + 16) + 352))(v25);
  v27 = [v26 colorWithAlphaComponent_];

  *(v19 + 40) = v27;
  v29 = v32;
  v28 = v33;
  *v32 = v19;
  (*(v28 + 104))(v29, *MEMORY[0x277D6C7B8], v34);
  sub_22089120C();
  swift_allocObject();
  return sub_2208911FC();
}

uint64_t sub_220580384()
{
  v1 = v0;
  v2 = sub_22089114C();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v32 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2208911CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220890C5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2208911BC();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = v0[10];
  v17 = v0[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v18);
  (*(*(v17 + 16) + 360))(v18);
  (*(v11 + 104))(v14, *MEMORY[0x277D6C640], v10);
  (*(v6 + 104))(v9, *MEMORY[0x277D6C7D0], v5);
  sub_2208911AC();
  sub_22048BC00();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22089B120;
  v21 = v1[10];
  v20 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v21);
  v22 = (*(*(v20 + 16) + 368))(v21);
  v23 = [v22 colorWithAlphaComponent_];

  *(v19 + 32) = v23;
  v25 = v1[10];
  v24 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v25);
  v26 = (*(*(v24 + 16) + 368))(v25);
  v27 = [v26 colorWithAlphaComponent_];

  *(v19 + 40) = v27;
  v29 = v32;
  v28 = v33;
  *v32 = v19;
  (*(v28 + 104))(v29, *MEMORY[0x277D6C7B8], v34);
  sub_22089120C();
  swift_allocObject();
  return sub_2208911FC();
}

void *sub_220580738(uint64_t a1)
{
  v28 = a1;
  v33 = *v1;
  sub_22046DA2C((v1 + 2), v34);
  v3 = v1[10];
  v32 = v1[11];
  v4 = __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
  v31 = *(v3 - 8);
  v5 = *(v31 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v30 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v27 - v30;
  (*(*(v32 + 8) + 8))(a1, v3, v7);
  v9 = v1[15];
  v29 = v1[16];
  v10 = v29;
  v11 = __swift_project_boxed_opaque_existential_1(v1 + 12, v9);
  v12 = *(v9 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v16 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = (*(*(v10 + 8) + 8))(v28, v9, v15);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v20 = v31;
  v21 = &v27 - v30;
  v22 = (*(v31 + 16))(&v27 - v30, v8, v3, v19);
  v24 = MEMORY[0x28223BE20](v22, v23);
  (*(v12 + 16))(&v27 - v16, &v27 - v16, v9, v24);
  v25 = sub_220582ACC(v34, v21, &v27 - v16, v33, v3, v9, v32, v29);
  (*(v12 + 8))(&v27 - v16, v9);
  (*(v20 + 8))(v8, v3);
  return v25;
}

void sub_2205809F0(uint64_t a1)
{
  v2 = v1;
  v71 = sub_22088C10C();
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(a1 + OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl);
  v7 = *__swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
  sub_220582CBC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  v70 = v8;
  inited = swift_initStackObject();
  v69 = xmmword_220899920;
  *(inited + 16) = xmmword_220899920;
  v10 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v11 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v66 = v11;
  v67 = *MEMORY[0x277D76968];
  v68 = v10;
  v12 = sub_220891F3C();
  v13 = MEMORY[0x277D740C0];
  *(inited + 40) = v12;
  v14 = *v13;
  *(inited + 64) = v11;
  *(inited + 72) = v14;
  v16 = v7[5];
  v15 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v16);
  v17 = *(v15 + 16);
  v18 = *(v17 + 40);
  v64 = v14;
  v19 = v18(v16, v17);
  v65 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 104) = v65;
  *(inited + 80) = v19;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  v63 = v20;
  swift_arrayDestroy();
  v21 = *MEMORY[0x277D6DDA0];
  v22 = v73;
  v62 = *(v73 + 104);
  v23 = v71;
  v62(v6, v21, v71);
  sub_22088B5AC();

  v24 = *(v22 + 8);
  v73 = v22 + 8;
  v24(v6, v23);
  v25 = *(v2 + 120);
  v74 = v2;
  v26 = *__swift_project_boxed_opaque_existential_1((v2 + 96), v25);
  v27 = swift_initStackObject();
  *(v27 + 16) = v69;
  *(v27 + 32) = v68;
  v28 = v66;
  *(v27 + 40) = sub_220891F3C();
  v29 = v64;
  *(v27 + 64) = v28;
  *(v27 + 72) = v29;
  v31 = v26[5];
  v30 = v26[6];
  __swift_project_boxed_opaque_existential_1(v26 + 2, v31);
  v32 = (*(*(v30 + 16) + 40))(v31);
  *(v27 + 104) = v65;
  *(v27 + 80) = v32;
  sub_2204A5EAC(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  v62(v6, *MEMORY[0x277D6DDA8], v23);
  sub_22088B5AC();

  v24(v6, v23);
  v33 = sub_22088B5CC();
  v34 = v33;
  if (v33 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2208926AC())
  {
    v36 = 0;
    v73 = v34 & 0xC000000000000001;
    v72 = v34 & 0xFFFFFFFFFFFFFF8;
    v71 = *MEMORY[0x277CDA138];
    v37 = 0x1FB0BE000uLL;
    while (1)
    {
      if (v73)
      {
        v42 = MEMORY[0x223D8A700](v36, v34);
      }

      else
      {
        if (v36 >= *(v72 + 16))
        {
          goto LABEL_18;
        }

        v42 = *(v34 + 8 * v36 + 32);
      }

      v41 = v42;
      v43 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v44 = v37;
      v45 = [v42 isSelected];
      v46 = __swift_project_boxed_opaque_existential_1((v74 + 96), *(v74 + 120));
      v47 = *v46;
      v48 = *(*v46 + 40);
      v49 = *(*v46 + 48);
      __swift_project_boxed_opaque_existential_1((*v46 + 16), v48);
      v50 = *(v49 + 16);
      if (v45)
      {
        v51 = (*(v50 + 424))(v48);
        v37 = v44;
        [v41 (v44 + 120)];

        v52 = [v41 titleLabel];
        if (v52)
        {
          v53 = v52;
          v54 = [objc_opt_self() clearColor];
          [v53 (v44 + 120)];
        }

        v38 = [v41 layer];
        [v38 setCornerCurve_];

        v39 = [v41 layer];
        [v41 frame];
        [v39 setCornerRadius_];
        v40 = v41;
        v41 = v39;
      }

      else
      {
        v55 = (*(v50 + 80))(v48);
        v37 = v44;
        [v41 (v44 + 120)];

        v56 = [v41 titleLabel];
        if (!v56)
        {
          goto LABEL_6;
        }

        v57 = v56;
        v59 = v47[5];
        v58 = v47[6];
        __swift_project_boxed_opaque_existential_1(v47 + 2, v59);
        v60 = v59;
        v37 = v44;
        v40 = (*(*(v58 + 16) + 80))(v60);
        [v57 (v44 + 120)];
      }

LABEL_6:
      ++v36;
      if (v43 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
}

void sub_22058113C(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v5 = a1;
  v6 = sub_22089114C();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_2208911CC();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_220890C5C();
  v13 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2208911BC();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v47 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_220581704(v3);
  if (v5 == 2)
  {
    goto LABEL_2;
  }

  if (a1)
  {

    goto LABEL_13;
  }

  v32 = sub_2208928BC();

  if (v32)
  {
LABEL_13:
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v33 = sub_2208882FC();
    v34 = v3[10];
    v35 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v34);
    v36 = *(v35 + 16);
    if (v33)
    {
      v25 = (*(v36 + 312))(v34);
      if (a1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v25 = (*(v36 + 328))(v34);
      if (a1)
      {
        goto LABEL_17;
      }
    }

LABEL_9:
    v26 = sub_2208928BC();

    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v37 = sub_2208882FC();
    v28 = v3[10];
    v38 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v28);
    v30 = *(v38 + 16);
    if (v37)
    {
      goto LABEL_11;
    }

LABEL_19:
    v31 = (*(v30 + 336))(v28);
    goto LABEL_20;
  }

LABEL_2:
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v20 = sub_2208882FC();
  v21 = v3[10];
  v22 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v21);
  v23 = *(v22 + 16);
  if (v20)
  {
    v24 = (*(v23 + 328))(v21);
  }

  else
  {
    v24 = (*(v23 + 312))(v21);
  }

  v25 = v24;
  if (a1 != 2)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_10:
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v27 = sub_2208882FC();
  v28 = v3[10];
  v29 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v28);
  v30 = *(v29 + 16);
  if (v27)
  {
    goto LABEL_19;
  }

LABEL_11:
  v31 = (*(v30 + 320))(v28);
LABEL_20:
  v39 = v31;
  sub_22048BC00();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_22089B130;
  v41 = [v25 colorWithAlphaComponent_];
  (*(v13 + 104))(v16, *MEMORY[0x277D6C640], v44);
  (*(v43 + 104))(v12, *MEMORY[0x277D6C7D0], v45);
  sub_2208911AC();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_22089B120;
  *(v42 + 32) = [v39 colorWithAlphaComponent_];
  *(v42 + 40) = [v39 colorWithAlphaComponent_];
  *v9 = v42;
  (*(v48 + 104))(v9, *MEMORY[0x277D6C7B8], v49);
  sub_22089120C();
  swift_allocObject();
  *(v40 + 32) = sub_2208911FC();
  sub_220890D3C();
}

uint64_t sub_220581704(void *a1)
{
  sub_220582C88(0);
  v13 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220582CBC(0, &qword_28127DEF0, sub_220582C88, MEMORY[0x277D84560]);
  v7 = ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 3 * *(v3 + 72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22089B140;
  v15 = sub_22057FB3C();
  sub_22089120C();
  sub_22089123C();
  v15 = sub_22057F6A8();
  sub_22089123C();
  v15 = sub_220580384();
  sub_22089123C();
  v10 = a1[10];
  v9 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v10);
  (*(*(v9 + 16) + 384))(&v14, v10);
  if (v14 == 1)
  {
    v15 = sub_22057FFD0();
    sub_22089123C();
    v8 = sub_220587DEC(1, 4, 1, v8);
    *(v8 + 16) = 4;
    (*(v3 + 32))(v8 + v7, v6, v13);
  }

  return v8;
}

uint64_t sub_2205819A8@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v23[0] = sub_220890E8C();
  v3 = *(v23[0] - 8);
  MEMORY[0x28223BE20](v23[0], v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2208911CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220890C5C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2208911BC();
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  *v16 = &unk_283410C60;
  (*(v13 + 104))(v16, *MEMORY[0x277D6C648], v12, v19);
  v21 = v2[10];
  v20 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v21);
  (*(*(v20 + 16) + 376))(v21);
  (*(v8 + 104))(v11, *MEMORY[0x277D6C7D8], v7);
  sub_2208911AC();
  (*(v3 + 104))(v6, *MEMORY[0x277D6C6E0], v23[0]);
  return sub_2208911DC();
}

id sub_220581C94(uint64_t a1, uint64_t a2)
{
  sub_220582CBC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D74420];
  v7 = v4;
  v8 = [v5 monospacedDigitSystemFontOfSize:13.0 weight:v6];
  v9 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v10 = MEMORY[0x277D740C0];
  *(inited + 40) = v8;
  v11 = *v10;
  *(inited + 64) = v9;
  *(inited + 72) = v11;
  v12 = v2[10];
  v13 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v12);
  v14 = *(v13 + 16);
  v15 = *(v14 + 40);
  v16 = v11;
  v17 = v15(v12, v14);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v17;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v19 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v20 = sub_22089125C();

  v21 = [v18 initWithString:v19 attributes:v20];

  return v21;
}

id sub_220581EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_220582CBC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v9 = objc_opt_self();
  v10 = *MEMORY[0x277D74420];
  v11 = v8;
  v12 = [v9 monospacedDigitSystemFontOfSize:13.0 weight:v10];
  v13 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v14 = MEMORY[0x277D740C0];
  *(inited + 40) = v12;
  v15 = *v14;
  *(inited + 64) = v13;
  *(inited + 72) = v15;
  v16 = v4[10];
  v17 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v16);
  v18 = *(v17 + 16);
  v19 = *(v18 + 40);
  v20 = v15;
  v21 = v19(v16, v18);
  v22 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v21;
  v23 = *MEMORY[0x277D76528];
  *(inited + 104) = v22;
  *(inited + 112) = v23;
  *(inited + 144) = MEMORY[0x277D837D0];
  *(inited + 120) = a3;
  *(inited + 128) = a4;
  v24 = v23;

  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v26 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v27 = sub_22089125C();

  v28 = [v25 initWithString:v26 attributes:v27];

  return v28;
}

uint64_t sub_22058211C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_220582188@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_220890E8C();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2208911CC();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220890C5C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2208911BC();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v18 = *v2;
  v20 = *(*v2 + 80);
  v19 = *(*v2 + 88);
  __swift_project_boxed_opaque_existential_1((v18 + 56), v20);
  (*(*(v19 + 16) + 400))(v20);
  (*(v12 + 104))(v15, *MEMORY[0x277D6C640], v11);
  (*(v7 + 104))(v10, *MEMORY[0x277D6C7D0], v23);
  sub_2208911AC();
  (*(v3 + 104))(v6, *MEMORY[0x277D6C6D8], v24);
  return sub_2208911DC();
}

uint64_t sub_22058246C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_220890E8C();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2208911CC();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220890C5C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2208911BC();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v18 = *v2;
  v20 = *(*v2 + 80);
  v19 = *(*v2 + 88);
  __swift_project_boxed_opaque_existential_1((v18 + 56), v20);
  (*(*(v19 + 16) + 408))(v20);
  (*(v12 + 104))(v15, *MEMORY[0x277D6C640], v11);
  (*(v7 + 104))(v10, *MEMORY[0x277D6C7D0], v23);
  sub_2208911AC();
  (*(v3 + 104))(v6, *MEMORY[0x277D6C6E0], v24);
  return sub_2208911DC();
}

uint64_t sub_220582750@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_220890E8C();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2208911CC();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220890C5C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2208911BC();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v18 = *v2;
  v20 = *(*v2 + 80);
  v19 = *(*v2 + 88);
  __swift_project_boxed_opaque_existential_1((v18 + 56), v20);
  (*(*(v19 + 16) + 416))(v20);
  (*(v12 + 104))(v15, *MEMORY[0x277D6C640], v11);
  (*(v7 + 104))(v10, *MEMORY[0x277D6C7D0], v23);
  sub_2208911AC();
  (*(v3 + 104))(v6, *MEMORY[0x277D6C6D8], v24);
  return sub_2208911DC();
}

void *sub_220582AA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_220580738(a1);
  *a2 = result;
  return result;
}

void *sub_220582ACC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a5;
  v29 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v25 = a6;
  v26 = a8;
  v15 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a6 - 8) + 32))(v15, a3, a6);
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v18 = MEMORY[0x28223BE20](v17, v17);
  v20 = (v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = *v20;
  v16[15] = type metadata accessor for DateRangePickerStyler();
  v16[16] = &off_283412460;
  v16[12] = v22;
  sub_220457328(a1, (v16 + 2));
  sub_220457328(&v27, (v16 + 7));
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v16;
}

void sub_220582CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_220582D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 40);
  v6 = __swift_project_boxed_opaque_existential_1((*v4 + 16), v5);
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v6, v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  sub_220885F4C();
  (*(v7 + 8))(v10, v5);
  sub_22088EB7C();

  return result;
}

uint64_t sub_220582E30@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v5 = sub_220886A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v2 + 40);
  v11 = __swift_project_boxed_opaque_existential_1((*v2 + 16), v10);
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v11, v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v13);
  sub_2208863EC();
  (*(v12 + 8))(v15, v10);
  LOBYTE(v15) = MEMORY[0x223D7EB90](a1, v9);
  result = (*(v6 + 8))(v9, v5);
  *a2 = v15 & 1;
  return result;
}

uint64_t sub_220582FE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22088DA1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C21C();
  sub_22088C1DC();
  sub_22088D9EC();
  (*(v3 + 8))(v6, v2);
  sub_22088C21C();
  sub_220891EEC();
  v8 = v7;
  v10 = v9;
  sub_22088C20C();
  v12 = v11;
  v14 = v13;
  v15 = sub_22088C28C();
  v16 = [v15 horizontalSizeClass];

  if (v16 == 2)
  {
    v12 = 16.0;
    v14 = 12.0;
  }

  v17 = sub_22088C24C();
  result = sub_22088C28C();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0x402C000000000000;
  *(a1 + 24) = v12;
  *(a1 + 32) = 0x402C000000000000;
  *(a1 + 40) = v14;
  *(a1 + 48) = v17;
  *(a1 + 56) = result;
  return result;
}

uint64_t sub_220583198(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  *&v134 = a2;
  v133 = a1;
  sub_220584528(0, &qword_281296B20, MEMORY[0x277D321A0]);
  v123 = v4;
  v117 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v116 = &v112 - v6;
  sub_22058445C(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v114 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v118 = &v112 - v12;
  v13 = type metadata accessor for CuratedForYouFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = (&v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2205844D0(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v128 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v131 = &v112 - v22;
  v130 = type metadata accessor for CuratedForYouFeedGroupKnobs(0);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v23);
  v126 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v115 = &v112 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v127 = &v112 - v30;
  sub_22044CD9C(0);
  v32 = v31;
  v132 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v125 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v112 - v37;
  v121 = sub_220885ACC();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v39);
  v119 = &v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for StockForYouFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v124 = &v112 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452A8C(0);
  v45 = v44;
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v47);
  v49 = &v112 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51);
  v53 = &v112 - v52;
  v54 = type metadata accessor for ForYouFeedGroupConfig(0);
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v112 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220584624(v133, v57, type metadata accessor for ForYouFeedGroupConfig);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = v132;
    v133 = *(v132 + 32);
    v124 = v132 + 32;
    v133(v38, v57, v32);
    v59 = *(v134 + *(type metadata accessor for ForYouFeedGroupKnobs(0) + 20));
    v60 = sub_22088F46C();
    v62 = *(v59 + 16);
    v122 = v38;
    if (v62)
    {
      v63 = sub_2204AF97C(v60, v61);
      v65 = v64;

      if (v65)
      {
        v66 = v129;
        v67 = *(v59 + 56) + v129[9] * v63;
        v68 = v131;
        sub_220584624(v67, v131, type metadata accessor for CuratedForYouFeedGroupKnobs);
        (v66[7])(v68, 0, 1, v130);
        v69 = v127;
        sub_22058468C(v68, v127, type metadata accessor for CuratedForYouFeedGroupKnobs);
LABEL_22:
        v107 = v125;
        v108 = v122;
        (*(v58 + 16))(v125, v122, v32);
        v109 = v126;
        sub_220584624(v69, v126, type metadata accessor for CuratedForYouFeedGroupKnobs);
        sub_22046DA2C(v3 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_formatService, &v138);
        type metadata accessor for CuratedForYouFeedGroupEmitter(0);
        v110 = swift_allocObject();
        v133((v110 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_config), v107, v32);
        sub_22058468C(v109, v110 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_knobs, type metadata accessor for CuratedForYouFeedGroupKnobs);
        sub_220457328(&v138, v110 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_formatService);
        *&v138 = v110;
        sub_220584528(0, &qword_281296BC8, MEMORY[0x277D31F00]);
        swift_allocObject();
        sub_22044DC38(&unk_281286850, type metadata accessor for CuratedForYouFeedGroupEmitter, &unk_2208A2578);
        v74 = sub_22088F53C();
        sub_2205845C4(v69, type metadata accessor for CuratedForYouFeedGroupKnobs);
        (*(v58 + 8))(v108, v32);
        return v74;
      }
    }

    else
    {
    }

    v79 = v129[7];
    v79(v131, 1, 1, v130);
    *&v134 = v32;
    sub_22088F48C();
    v80 = *v16;
    v81 = v16[1];

    sub_2205845C4(v16, type metadata accessor for CuratedForYouFeedGroupConfigData);
    if (*(v59 + 16))
    {
      v82 = sub_2204AF97C(v80, v81);
      v84 = v83;

      if (v84)
      {
        v85 = v129;
        v86 = *(v59 + 56) + v129[9] * v82;
        v87 = v128;
        sub_220584624(v86, v128, type metadata accessor for CuratedForYouFeedGroupKnobs);
        v88 = v130;
        v79(v87, 0, 1, v130);
        v69 = v127;
        sub_22058468C(v87, v127, type metadata accessor for CuratedForYouFeedGroupKnobs);
        v32 = v134;
        v58 = v132;
        v89 = v131;
        v90 = (v85[6])(v131, 1, v88);
LABEL_20:
        if (v90 != 1)
        {
          sub_2205845C4(v89, sub_2205844D0);
        }

        goto LABEL_22;
      }
    }

    else
    {
    }

    v91 = v130;
    v79(v128, 1, 1, v130);
    v92 = v117;
    v93 = v118;
    v94 = v123;
    (*(v117 + 56))(v118, 1, 1, v123);
    v95 = v114;
    sub_220584624(v93, v114, sub_22058445C);
    v96 = *(v92 + 48);
    v97 = v96(v95, 1, v94);
    v89 = v131;
    if (v97 == 1)
    {
      type metadata accessor for ForYouFeedServiceConfig(0);
      sub_22044DC38(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
      v94 = v123;
      v98 = v89;
      v99 = v116;
      sub_22088F7EC();
      v100 = v96(v95, 1, v94);
      v101 = v99;
      v89 = v98;
      v32 = v134;
      if (v100 != 1)
      {
        sub_2205845C4(v95, sub_22058445C);
      }
    }

    else
    {
      v101 = v116;
      (*(v92 + 32))(v116, v95, v94);
      v32 = v134;
    }

    v102 = v115;
    (*(v92 + 32))(v115, v101, v94);
    *&v138 = 1;
    sub_22044D0C0();
    swift_allocObject();
    *(v102 + *(v91 + 20)) = sub_22088FB7C();
    *&v138 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();
    v103 = sub_22088FB7C();
    sub_2205845C4(v93, sub_22058445C);
    *(v102 + *(v91 + 24)) = v103;
    v69 = v127;
    sub_22058468C(v102, v127, type metadata accessor for CuratedForYouFeedGroupKnobs);
    v104 = v129[6];
    v105 = v128;
    v106 = v104(v128, 1, v91);
    v58 = v132;
    if (v106 != 1)
    {
      sub_2205845C4(v105, sub_2205844D0);
    }

    v90 = v104(v89, 1, v91);
    goto LABEL_20;
  }

  v133 = *(v46 + 32);
  v133(v53, v57, v45);
  __swift_project_boxed_opaque_existential_1(v3 + 8, v3[11]);
  if (sub_22088613C())
  {
    v70 = v3[2];
    sub_22046DA2C((v3 + 3), &v138);
    v71 = v53;
    (*(v46 + 16))(v49, v53, v45);
    sub_22046DA2C((v3 + 18), &v137);
    v72 = v124;
    sub_220584624(v134, v124, type metadata accessor for StockForYouFeedGroupKnobs);
    sub_22046DA2C((v3 + 23), &v136);
    v134 = *(v3 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_newsUserProfileProvider);
    sub_22046DA2C(v3 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_formatService, v135);
    type metadata accessor for StockForYouFeedGroupEmitter(0);
    v73 = swift_allocObject();
    *(v73 + 16) = v70;
    sub_220457328(&v138, v73 + 24);
    v133((v73 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_config), v49, v45);
    sub_220457328(&v137, v73 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_headlineViewingHistory);
    sub_22058468C(v72, v73 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_knobs, type metadata accessor for StockForYouFeedGroupKnobs);
    sub_220457328(&v136, v73 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_newsFeedService);
    *(v73 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_newsUserProfileProvider) = v134;
    sub_220457328(v135, v73 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_formatService);
    *&v138 = v73;
    sub_220584528(0, &qword_281296BC8, MEMORY[0x277D31F00]);
    swift_allocObject();
    sub_22044DC38(&qword_281287D60, type metadata accessor for StockForYouFeedGroupEmitter, &unk_2208AB380);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v74 = sub_22088F53C();
    (*(v46 + 8))(v71, v45);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
    v75 = v119;
    sub_22088641C();
    v76 = *(v46 + 16);
    v113 = v53;
    v76(v49, v53, v45);
    v77 = v124;
    sub_220584624(v134, v124, type metadata accessor for StockForYouFeedGroupKnobs);
    sub_22046DA2C(v3 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_stockFeedService, &v138);
    type metadata accessor for YahooStockForYouFeedGroupEmitter(0);
    v78 = swift_allocObject();
    (*(v120 + 32))(v78 + OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_appConfiguration, v75, v121);
    v133((v78 + OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_config), v49, v45);
    sub_22058468C(v77, v78 + OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_knobs, type metadata accessor for StockForYouFeedGroupKnobs);
    sub_220457328(&v138, v78 + OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_stockFeedService);
    *&v138 = v78;
    sub_220584528(0, &qword_281296BC8, MEMORY[0x277D31F00]);
    swift_allocObject();
    sub_22044DC38(&qword_27CF56DB8, type metadata accessor for YahooStockForYouFeedGroupEmitter, &unk_2208AADE0);
    v74 = sub_22088F53C();
    (*(v46 + 8))(v113, v45);
  }

  return v74;
}

char *sub_2205842F8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  v1 = OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_networkProxy;
  v2 = sub_22088846C();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_stockFeedService]);
  __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_formatService]);
  return v0;
}

uint64_t sub_2205843B8()
{
  sub_2205842F8();

  return swift_deallocClassInstance();
}

void sub_22058445C(uint64_t a1)
{
  if (!qword_281296B18)
  {
    sub_220584528(255, &qword_281296B20, MEMORY[0x277D321A0]);
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296B18);
    }
  }
}

void sub_2205844D0(uint64_t a1)
{
  if (!qword_2812885C0)
  {
    type metadata accessor for CuratedForYouFeedGroupKnobs(255);
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812885C0);
    }
  }
}

void sub_220584528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ForYouFeedServiceConfig(255);
    v7 = sub_22044DC38(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2205845C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220584624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22058468C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205846F8()
{
  type metadata accessor for StockSearchModalRouter();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

void *sub_22058473C(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockSearchViewController(0);
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    swift_unknownObjectWeakAssign();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2204549FC(0);
    result = sub_2208884CC();
    if (result)
    {
      type metadata accessor for StockSearchModalRouter();
      sub_220448630(&qword_27CF56DC0, 255, type metadata accessor for StockSearchModalRouter, &unk_2208AE3D8);
      sub_22088B00C();

      return __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220584860(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204951A0(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220495D0C(0);
    result = sub_2208884CC();
    if (result)
    {
      sub_220496448();
      swift_allocObject();
      return sub_22088E04C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_22058494C(uint64_t a1)
{
  v2 = type metadata accessor for StockSearchPriceChangeDisplayBlueprintModifier(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v15 - v8;
  v11 = *(v10 + 20);
  v12 = sub_220885D4C();
  (*(*(v12 - 8) + 16))(&v9[v11], a1, v12);
  *v9 = 0xD000000000000012;
  *(v9 + 1) = 0x80000002208BF650;
  sub_2204792CC(v9, v5, type metadata accessor for StockSearchPriceChangeDisplayBlueprintModifier);
  sub_220584B74(0);
  swift_allocObject();
  sub_220448630(&qword_28127F380, 255, type metadata accessor for StockSearchPriceChangeDisplayBlueprintModifier, &unk_2208B7248);
  v13 = sub_22088B66C();
  sub_220584C68(v9);
  v15[1] = v13;
  sub_220448630(&qword_281297D08, 255, sub_220584B74, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

void sub_220584B74(uint64_t a1)
{
  if (!qword_281297D00)
  {
    type metadata accessor for StockSearchSectionDescriptor(255);
    type metadata accessor for StockSearchModel(255);
    sub_220448630(qword_281286DF0, 255, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    sub_220448630(&qword_281291EB0, 255, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
    v1 = sub_22088B67C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297D00);
    }
  }
}

uint64_t sub_220584C68(uint64_t a1)
{
  v2 = type metadata accessor for StockSearchPriceChangeDisplayBlueprintModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220584CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_220584D2C()
{
  result = qword_27CF57C80;
  if (!qword_27CF57C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57C80);
  }

  return result;
}

unint64_t sub_220584D8C()
{
  result = qword_281293440;
  if (!qword_281293440)
  {
    type metadata accessor for ForYouFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293440);
  }

  return result;
}

uint64_t sub_220584DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_220584EA0;

  return MEMORY[0x282191870](a1, a2, a3);
}

uint64_t sub_220584EA0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_220584FB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_220584FFC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t ChartRange.label.getter()
{
  v1 = sub_2208854FC();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v0, v1, v4);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == *MEMORY[0x277D69120] || v7 == *MEMORY[0x277D69128] || v7 == *MEMORY[0x277D69138])
  {
    goto LABEL_3;
  }

  if (v7 == *MEMORY[0x277D69110])
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v17 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v17;
    v12 = 3;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69158])
  {
    type metadata accessor for Localized();
    v18 = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v20 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v20;
    v12 = 6;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69100])
  {
    goto LABEL_13;
  }

  if (v7 == *MEMORY[0x277D69130])
  {
LABEL_3:
    type metadata accessor for Localized();
    v8 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v11 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v11;
    v12 = 1;
LABEL_4:
    *(v10 + 32) = v12;
    v13 = sub_22089133C();

    return v13;
  }

  if (v7 == *MEMORY[0x277D69148])
  {
    type metadata accessor for Localized();
    v23 = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v25 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v25;
    v12 = 2;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69150])
  {
    type metadata accessor for Localized();
    v26 = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v28 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v28;
    v12 = 5;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69140])
  {
    type metadata accessor for Localized();
    v29 = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v31 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v31;
    v12 = 10;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69118])
  {
LABEL_13:
    type metadata accessor for Localized();
    v21 = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v13 = sub_220884CAC();

    return v13;
  }

  result = sub_2208928AC();
  __break(1u);
  return result;
}

uint64_t ChartRange.accessibilityLabel.getter()
{
  v1 = sub_2208854FC();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v0, v1, v4);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == *MEMORY[0x277D69120] || v7 == *MEMORY[0x277D69128] || v7 == *MEMORY[0x277D69138])
  {
    goto LABEL_3;
  }

  if (v7 == *MEMORY[0x277D69110])
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v17 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v17;
    v12 = 3;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69158])
  {
    type metadata accessor for Localized();
    v18 = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v20 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v20;
    v12 = 6;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69100])
  {
    goto LABEL_13;
  }

  if (v7 == *MEMORY[0x277D69130])
  {
LABEL_3:
    type metadata accessor for Localized();
    v8 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v11 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v11;
    v12 = 1;
LABEL_4:
    *(v10 + 32) = v12;
    v13 = sub_22089133C();

    return v13;
  }

  if (v7 == *MEMORY[0x277D69148])
  {
    type metadata accessor for Localized();
    v23 = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v25 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v25;
    v12 = 2;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69150])
  {
    type metadata accessor for Localized();
    v26 = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v28 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v28;
    v12 = 5;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69140])
  {
    type metadata accessor for Localized();
    v29 = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v31 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v31;
    v12 = 10;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69118])
  {
LABEL_13:
    type metadata accessor for Localized();
    v21 = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v13 = sub_220884CAC();

    return v13;
  }

  result = sub_2208928AC();
  __break(1u);
  return result;
}

unint64_t sub_220586328()
{
  result = qword_27CF56DD0;
  if (!qword_27CF56DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56DD0);
  }

  return result;
}

void *sub_22058640C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v107 = a3;
  v108 = a2;
  v116 = sub_22088519C();
  v134 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v4);
  v115 = v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v132, v6);
  v114 = (v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v9);
  v11 = v98 - v10;
  sub_22055D328(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v15);
  v117 = v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v135 = v98 - v19;
  sub_22055D524(0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v111 = v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v124, v23);
  v118 = v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v125 = v98 - v27;
  sub_22055CE80(0);
  v29 = v28;
  v122 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v133 = v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v128 = v98 - v34;
  v106 = sub_22088B64C();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v35);
  v104 = v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22058743C(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v38 = v37;
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v40);
  v101 = v98 - v41;
  sub_220587530(0);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v98[3] = v98 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v46 = v45;
  v100 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v47);
  v99 = v98 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98[2] = sub_22088E6FC();
  v98[1] = v49;
  v50 = sub_2204442E4(&qword_281296F20, sub_22055CF9C, MEMORY[0x277D6EC70]);
  v51 = sub_22089197C();
  v52 = MEMORY[0x277D84F90];
  v123 = v46;
  v103 = v38;
  v102 = v39;
  if (!v51)
  {
LABEL_42:
    v91 = sub_2204442E4(&qword_281297DF8, sub_22055CE80, MEMORY[0x277D6D720]);
    v92 = sub_2204442E4(&qword_281297E00, sub_22055CE80, MEMORY[0x277D6D718]);
    MEMORY[0x223D80A20](v52, v29, v91, v92);
    sub_2204442E4(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    sub_2204442E4(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v93 = v99;
    sub_22088E6EC();
    v94 = v105;
    v95 = v104;
    v96 = v106;
    (*(v105 + 104))(v104, *MEMORY[0x277D6D868], v106);
    sub_2204442E4(&unk_281288C00, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A205C);
    v97 = v101;
    sub_22088C67C();
    (*(v94 + 8))(v95, v96);
    v108(v97);
    (*(v102 + 8))(v97, v103);
    return (*(v100 + 8))(v93, v123);
  }

  v138 = MEMORY[0x277D84F90];
  v121 = v51;
  sub_22070BF64(0, v51 & ~(v51 >> 63), 0);
  v129 = v138;
  v120 = v50;
  result = sub_22089193C();
  if (v121 < 0)
  {
    goto LABEL_45;
  }

  v54 = 0;
  v119 = (v122 + 16);
  v130 = (v14 + 16);
  v113 = (v134 + 1);
  v112 = (v14 + 8);
  v134 = (v14 + 32);
  v109 = (v122 + 8);
  v126 = (v122 + 32);
  v55 = v117;
  v131 = v29;
  v56 = v133;
  v110 = a1;
  while (1)
  {
    v57 = __OFADD__(v54, 1);
    v58 = v54 + 1;
    if (v57)
    {
      __break(1u);
      goto LABEL_44;
    }

    v127 = v58;
    v59 = sub_2208919BC();
    (*v119)(v56);
    v59(v137, 0);
    sub_22088B2AC();
    v56 = v133;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v61 = type metadata accessor for StockFeedMastheadModel;
    if (EnumCaseMultiPayload > 7)
    {
      goto LABEL_10;
    }

    if (((1 << EnumCaseMultiPayload) & 0xD8) == 0)
    {
      break;
    }

LABEL_12:
    (*v126)(v128, v56, v29);
LABEL_38:
    v87 = v129;
    v138 = v129;
    v89 = *(v129 + 16);
    v88 = *(v129 + 24);
    if (v89 >= v88 >> 1)
    {
      sub_22070BF64((v88 > 1), v89 + 1, 1);
      v87 = v138;
    }

    *(v87 + 16) = v89 + 1;
    v90 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v129 = v87;
    (*(v122 + 32))(v87 + v90 + *(v122 + 72) * v89, v128, v29);
    result = sub_2208919AC();
    v54 = v127;
    if (v127 == v121)
    {
      v52 = v129;
      goto LABEL_42;
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v61 = type metadata accessor for StockFeedSectionDescriptor;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (!EnumCaseMultiPayload)
  {
LABEL_11:
    sub_2205875FC(v125, v61);
    goto LABEL_12;
  }

  v62 = v125;

  sub_220459628(0);
  sub_22051F260(v62 + *(v63 + 64), &qword_281296C60, MEMORY[0x277D31C50]);
LABEL_14:
  sub_22088B2AC();
  sub_2204442E4(&qword_281297DE8, sub_22055CE80, MEMORY[0x277D6D730]);
  v64 = sub_22089197C();
  if (!v64)
  {
    v66 = MEMORY[0x277D84F90];
LABEL_37:
    v85 = sub_2204442E4(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
    v86 = sub_2204442E4(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
    MEMORY[0x223D80A20](v66, v13, v85, v86);
    sub_2204442E4(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    sub_2204442E4(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    sub_22088B29C();
    v56 = v133;
    (*v109)(v133, v29);
    goto LABEL_38;
  }

  v65 = v64;
  v136 = MEMORY[0x277D84F90];
  sub_22070BC24(0, v64 & ~(v64 >> 63), 0);
  v66 = v136;
  result = sub_22089193C();
  if ((v65 & 0x8000000000000000) == 0)
  {
    while (2)
    {
      v67 = sub_2208919BC();
      (*v130)(v55);
      v67(v137, 0);
      sub_22088AD8C();
      v68 = swift_getEnumCaseMultiPayload();
      if (v68 > 4)
      {
        if (v68 <= 7)
        {
LABEL_26:
          v72 = type metadata accessor for StockFeedModel;
          goto LABEL_30;
        }

        if (v68 == 8)
        {
          sub_220459914(0);
          v74 = *&v11[*(v73 + 48)];
          v75 = v115;
          sub_22088518C();
          v76 = v11;
          v77 = v14;
          v78 = sub_22088517C();
          v80 = v79;
          (*v113)(v75, v116);
          v81 = v114;
          *v114 = v78;
          v81[1] = v80;
          v14 = v77;
          v11 = v76;
          v55 = v117;
          v81[2] = v74;
          swift_storeEnumTagMultiPayload();
          sub_2204442E4(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
          sub_22088AD7C();
          (*v112)(v55, v13);
          v82 = sub_22089030C();
          (*(*(v82 - 8) + 8))(v11, v82);
        }

        else
        {
          if (v68 == 9)
          {
            goto LABEL_26;
          }

LABEL_31:
          (*v134)(v135, v55, v13);
        }

        v136 = v66;
        v84 = *(v66 + 16);
        v83 = *(v66 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_22070BC24((v83 > 1), v84 + 1, 1);
          v66 = v136;
        }

        *(v66 + 16) = v84 + 1;
        (*(v14 + 32))(v66 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v84, v135, v13);
        v29 = v131;
        sub_2208919AC();
        if (!--v65)
        {
          goto LABEL_37;
        }

        continue;
      }

      break;
    }

    if (v68 <= 1)
    {
      v72 = type metadata accessor for StockFeedMastheadModel;
    }

    else
    {
      if (v68 == 2)
      {
LABEL_23:
        v71 = sub_22088685C();
        (*(*(v71 - 8) + 8))(v11, v71);
        goto LABEL_31;
      }

      if (v68 == 3)
      {
        sub_2204597F0(0);
        v70 = *(v69 + 48);
        sub_22051F260(&v11[*(v69 + 64)], &qword_281299370, MEMORY[0x277D69178]);
        sub_22051F260(&v11[v70], &qword_2812990C0, MEMORY[0x277D697F8]);
        goto LABEL_23;
      }

      v72 = type metadata accessor for StockEarningsModel;
    }

LABEL_30:
    sub_2205875FC(v11, v72);
    goto LABEL_31;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void sub_22058743C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for StockFeedModel(255);
    v8[2] = sub_2204442E4(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    v8[3] = sub_2204442E4(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220587530(uint64_t a1)
{
  if (!qword_281298790)
  {
    sub_22055CE80(255);
    sub_2204442E4(&qword_281297DF8, sub_22055CE80, MEMORY[0x277D6D720]);
    sub_2204442E4(&qword_281297E00, sub_22055CE80, MEMORY[0x277D6D718]);
    v1 = sub_2208888CC();
    if (!v2)
    {
      atomic_store(v1, &qword_281298790);
    }
  }
}

uint64_t sub_2205875FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ANFSceneActivityBridge.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall ANFSceneActivityBridge.sceneDidDisconnect()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = v1 + 40;
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

double ANFSceneActivityBridge.performOnSceneDidDisconnect(on:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_220587E20(0, v6[2] + 1, 1, v6);
    *(v2 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_220587E20((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_2204D48F4;
  v10[5] = v5;
  *(v2 + 16) = v6;
  swift_endAccess();
  return result;
}

char *sub_220587A04(char *result, int64_t a2, char a3, char *a4)
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
    sub_22048E39C(0, &qword_28127DE78, type metadata accessor for CGRect, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_220587BB0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_220588858(0, a5, a6, a7);
  sub_220462184(0, a6, a7, MEMORY[0x277D6C7C0]);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v17) == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_29;
  }

  v18[2] = v13;
  v18[3] = 2 * ((result - v17) / v16);
LABEL_19:
  sub_220462184(0, a6, a7, MEMORY[0x277D6C7C0]);
  v21 = *(v20 - 8);
  if (v10)
  {
    if (v18 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v18 + v22 >= a4 + v22 + *(v21 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

void *sub_220587E20(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22048E39C(0, &qword_28127DE38, sub_220448488, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_220448488();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_220587F84(char *result, int64_t a2, char a3, char *a4)
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
    sub_22048E39C(0, &qword_27CF56DE8, sub_220588800, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_220588200(char *result, int64_t a2, char a3, char *a4)
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
    sub_220462184(0, &qword_28127DE40, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2205883B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_220588968(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_220530808(0, &qword_281297AA0, &qword_281297AA8, MEMORY[0x277D6DBE8], MEMORY[0x277D83D88]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_220588644(uint64_t a1, uint64_t a2)
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

  sub_22048E39C(0, &qword_28127E190, MEMORY[0x277D69858], MEMORY[0x277D84560]);
  v4 = *(sub_22088698C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220588764(uint64_t a1, uint64_t a2)
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

  sub_220462184(0, &qword_28127DEE8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_220588800()
{
  if (!qword_27CF56DF0)
  {
    v0 = sub_2208919DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56DF0);
    }
  }
}

void sub_220588858(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_220462184(255, a3, a4, MEMORY[0x277D6C7C0]);
    v5 = sub_22089288C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_2205888C4(uint64_t a1, uint64_t a2)
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

  sub_220462184(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_220588968(uint64_t a1)
{
  if (!qword_28127E080)
  {
    sub_220530808(255, &qword_281297AA0, &qword_281297AA8, MEMORY[0x277D6DBE8], MEMORY[0x277D83D88]);
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E080);
    }
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_220588A24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_220588A6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220588AD4(uint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *))
{
  v69 = a2;
  v70 = a3;
  v62 = a1;
  sub_2204AD9C0(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v57 - v6);
  sub_2204AD9C0(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v61 = v8;
  v60 = *(v8 - 8);
  v58 = *(v60 + 64);
  MEMORY[0x28223BE20](v8, v9);
  v59 = &v57 - v10;
  v66 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v66, v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C(0);
  v15 = v14;
  v65 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v64 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088BC8C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v3;
  sub_22088CEFC();
  v27 = (*(v23 + 88))(v26, v22);
  v28 = *MEMORY[0x277D6DA70];
  (*(v23 + 8))(v26, v22);
  if (v27 == v28)
  {
    v30 = v67;
    v29 = v68;
    v32 = v69;
    v31 = v70;
    sub_22088CEEC();
    sub_22088AD8C();
    (*(v65 + 8))(v18, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      v39 = v64;
      v40 = sub_2204CDB9C(v13, v64);
      MEMORY[0x28223BE20](v40, v41);
      v42 = v63;
      *(&v57 - 2) = v63;
      *(&v57 - 1) = v39;
      sub_220888FBC();
      v43 = v60;
      v44 = v59;
      v45 = v61;
      (*(v60 + 16))(v59, v62, v61);
      sub_220589F34(v42, v71);
      v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v47 = (v58 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      (*(v43 + 32))(v48 + v46, v44, v45);
      v49 = v48 + v47;
      v50 = v71[5];
      *(v49 + 64) = v71[4];
      *(v49 + 80) = v50;
      *(v49 + 96) = v72;
      v51 = v71[1];
      *v49 = v71[0];
      *(v49 + 16) = v51;
      v52 = v71[3];
      *(v49 + 32) = v71[2];
      *(v49 + 48) = v52;
      v53 = (v48 + ((v47 + 111) & 0xFFFFFFFFFFFFFFF8));
      *v53 = v32;
      v53[1] = v31;

      v54 = sub_220888D9C();
      sub_220888E4C();

      v55 = swift_allocObject();
      *(v55 + 16) = v32;
      *(v55 + 24) = v31;

      v56 = sub_220888D9C();
      sub_220888E9C();

      return sub_2204AE334(v64, type metadata accessor for StockListStockModel);
    }

    sub_2204AE334(v13, type metadata accessor for StockListModel);
    sub_220589EC4();
    v33 = swift_allocError();
    *v34 = 0;
    *v7 = v33;
    v35 = v30;
    (*(v30 + 104))(v7, *MEMORY[0x277D6DF68], v29);
    v32(v7);
  }

  else
  {
    sub_220589EC4();
    v36 = swift_allocError();
    *v37 = 0;
    *v7 = v36;
    v35 = v67;
    v29 = v68;
    (*(v67 + 104))(v7, *MEMORY[0x277D6DF68], v68);
    v69(v7);
  }

  return (*(v35 + 8))(v7, v29);
}

uint64_t sub_220589184(void *a1)
{
  v10 = sub_220886A4C();
  v2 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[5];
  v9 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  sub_22088681C();
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  sub_2208863EC();
  v7 = sub_220885FBC();

  (*(v2 + 8))(v5, v10);
  return v7;
}

uint64_t sub_2205892DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v97 = a4;
  v96 = a5;
  v100 = a2;
  v81 = sub_22088CFEC();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v6);
  v79 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v82, v8);
  v78 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204AD9C0(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v99 = v10;
  v89 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v88 = &v76 - v12;
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v93 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204AD9C0(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v94 = v16;
  v92 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v95 = (&v76 - v18);
  sub_22046B36C(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v22);
  v83 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v86 = &v76 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v76 - v29;
  sub_2204A1EF0(0);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v34 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C(0);
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v38);
  v85 = &v76 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v90 = &v76 - v42;
  v43 = *(a3 + 56);
  sub_22088CEEC();
  sub_22088AD4C();
  v84 = v21;
  v45 = *(v21 + 8);
  v44 = v21 + 8;
  v77 = v30;
  v87 = v20;
  v91 = v45;
  v45(v30, v20);
  sub_22088E76C();

  v46 = *(v37 + 48);
  v98 = v36;
  if (v46(v34, 1, v36) == 1)
  {
    sub_2204AE334(v34, sub_2204A1EF0);
    sub_220589EC4();
    v47 = swift_allocError();
    *v48 = 1;
    v49 = v94;
    v50 = v95;
    *v95 = v47;
    v51 = v92;
    (*(v92 + 104))(v50, *MEMORY[0x277D6DF68], v49);
    v97(v50);
    return (*(v51 + 8))(v50, v49);
  }

  else
  {
    v53 = v90;
    (*(v37 + 32))(v90, v34, v98);
    v54 = v83;
    v76 = v43;
    sub_22088CEEC();
    v55 = v87;
    sub_22088AD4C();
    v91(v54, v55);
    v56 = v93;
    sub_22088B3AC();

    v57 = v84;
    v58 = (*(v84 + 48))(v56, 1, v55);
    v59 = v37;
    v60 = v53;
    if (v58 == 1)
    {
      sub_2204AE334(v93, sub_2204CF334);
      sub_220589EC4();
      v61 = swift_allocError();
      *v62 = 1;
      v63 = v94;
      v64 = v95;
      *v95 = v61;
      v65 = v92;
      (*(v92 + 104))(v64, *MEMORY[0x277D6DF68], v63);
      v97(v64);
      (*(v65 + 8))(v64, v63);
      return (*(v59 + 8))(v60, v98);
    }

    else
    {
      (*(v57 + 32))(v86, v93, v55);
      (*(v89 + 16))(v88, v100, v99);
      v93 = v37;
      (*(v37 + 16))(v85, v53, v98);
      sub_22088B31C();
      sub_22046F584(&qword_281297DB8, sub_22046B19C, MEMORY[0x277D6D730]);
      sub_22089193C();
      sub_22089199C();
      v66 = v92;
      if (v102 == v101)
      {
        swift_storeEnumTagMultiPayload();
        sub_22046F584(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
        v67 = v77;
        sub_22088AD7C();
        sub_22088B30C();
        v91(v67, v55);
      }

      v68 = v98;
      v69 = v99;
      v84 = v44;
      v70 = v88;
      sub_22088E75C();
      v71 = v80;
      v72 = v79;
      v73 = v81;
      (*(v80 + 104))(v79, *MEMORY[0x277D6E440], v81);
      sub_22088CECC();
      (*(v71 + 8))(v72, v73);
      sub_22045B950();
      sub_22046F584(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
      v74 = v95;
      sub_22088C64C();

      v97(v74);
      (*(v66 + 8))(v74, v94);
      v75 = *(v93 + 8);
      v75(v85, v68);
      (*(v89 + 8))(v70, v69);
      v91(v86, v55);
      return (v75)(v90, v68);
    }
  }
}