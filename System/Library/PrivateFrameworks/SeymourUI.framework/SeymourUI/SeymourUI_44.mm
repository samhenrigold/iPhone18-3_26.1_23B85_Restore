unint64_t sub_20B9FF878()
{
  result = qword_27C763F30;
  if (!qword_27C763F30)
  {
    sub_20C135174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763F30);
  }

  return result;
}

uint64_t sub_20B9FF908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B9FF968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B9FF9F8(uint64_t a1)
{
  sub_20C1380F4();
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  v11 = [v1 mainScreen];
  [v11 nativeScale];

  v12 = sub_20C138104();
  result = sub_20C138104();
  v14 = 66.0;
  if (v12 != result)
  {
    v14 = 9.0;
  }

  qword_27C7690D0 = *&v14;
  return result;
}

uint64_t sub_20B9FFAEC(uint64_t a1)
{
  sub_20C1380F4();
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  v11 = [v1 mainScreen];
  [v11 nativeScale];

  v12 = sub_20C138104();
  result = sub_20C138104();
  v14 = 50.0;
  if (v12 == result)
  {
    v14 = 84.0;
  }

  qword_27C7690D8 = *&v14;
  return result;
}

char *sub_20B9FFBE0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_20C132EE4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v5[OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_reuseIdentifier];
  sub_20C132ED4();
  v15 = sub_20C132EA4();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  *v14 = v15;
  v14[1] = v17;
  v18 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_metrics] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_metricViews] = v18;
  v19 = [objc_allocWithZone(MEMORY[0x277D752F0]) init];
  if (qword_27C7608A8 != -1)
  {
    swift_once();
  }

  [v19 setMinimumLineSpacing_];
  [v19 setMinimumInteritemSpacing_];
  v20 = *MEMORY[0x277D768C8];
  v21 = *(MEMORY[0x277D768C8] + 8);
  v22 = *(MEMORY[0x277D768C8] + 16);
  v23 = *(MEMORY[0x277D768C8] + 24);
  [v19 setSectionInset_];
  *&v5[OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout] = v19;
  v24 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v19 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [objc_opt_self() clearColor];
  [v24 setBackgroundColor_];

  v26 = v24;
  [v26 setShowsVerticalScrollIndicator_];
  [v26 setScrollEnabled_];

  [v26 setClipsToBounds_];
  *&v5[OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_collectionView] = v26;
  v27 = type metadata accessor for SummaryMetricGridView();
  v60.receiver = v5;
  v60.super_class = v27;
  v28 = objc_msgSendSuper2(&v60, sel_initWithFrame_, a1, a2, a3, a4);
  [v28 setUserInteractionEnabled_];
  v29 = OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_collectionView;
  v30 = *&v28[OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_collectionView];
  sub_20B51C88C(0, &qword_27C772960, 0x277D752A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = v30;

  v33 = sub_20C13C914();

  [v32 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v33];

  v34 = *&v28[v29];
  [v34 setDataSource_];

  [v28 addSubview_];
  v35 = objc_opt_self();
  v36 = *&v28[v29];
  v37 = [v36 leadingAnchor];
  v38 = [v28 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:v21];

  LODWORD(v40) = 1148846080;
  [v39 setPriority_];
  v41 = v39;
  v42 = [v36 trailingAnchor];
  v43 = [v28 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:-v23];

  LODWORD(v45) = 1148846080;
  [v44 setPriority_];
  v46 = v44;
  v47 = [v36 topAnchor];
  v48 = [v28 topAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:v20];

  LODWORD(v50) = 1148846080;
  [v49 setPriority_];
  v51 = [v36 bottomAnchor];
  v52 = [v28 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:-v22];

  LODWORD(v54) = 1148846080;
  [v53 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_20C14FE90;
  *(v55 + 32) = v41;
  *(v55 + 40) = v46;
  *(v55 + 48) = v49;
  *(v55 + 56) = v53;
  v56 = v49;

  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v57 = sub_20C13CC54();

  [v35 activateConstraints_];

  v58 = sub_20C13C914();
  [v28 setAccessibilityIdentifier_];

  return v28;
}

void sub_20BA00314(uint64_t a1, double a2)
{
  v5 = sub_20BA004B4(a2);
  if (v5 < 1)
  {
    v17 = 1;
LABEL_19:
    sub_20BA0057C(v17);
    return;
  }

  v6 = v5;
  if (qword_27C7608B0 == -1)
  {
    v7 = a1 - 1;
    if (!__OFSUB__(a1, 1))
    {
      goto LABEL_4;
    }
  }

  else
  {
    swift_once();
    v7 = a1 - 1;
    if (!__OFSUB__(a1, 1))
    {
LABEL_4:
      v8 = *&qword_27C7690D8;
      v9 = *&qword_27C7690D8 * v7;
      v10 = *(v2 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout);
      [v10 itemSize];
      v12 = v11 * a1;
      [v10 sectionInset];
      v14 = v13;
      [v10 sectionInset];
      if (v9 + v12 + v14 + v15 <= a2 || a1 < 1)
      {
        v17 = a1;
      }

      else
      {
        while (v6 != a1)
        {
          v17 = a1 - 1;
          [v10 itemSize];
          v19 = v18 * (a1 - 1);
          [v10 sectionInset];
          v21 = v20;
          [v10 sectionInset];
          v23 = v8 * (a1 - 2) + v19 + v21 + v22 <= a2 || a1 <= 1;
          --a1;
          if (v23)
          {
            goto LABEL_19;
          }
        }

        v17 = v6;
      }

      goto LABEL_19;
    }
  }

  __break(1u);
}

id sub_20BA004B4(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout);
  [v3 sectionInset];
  v5 = v4;
  [v3 sectionInset];
  v7 = a1 - (v5 + v6) + 10.0;
  result = [v3 itemSize];
  v10 = floor(v7 / (v9 + 10.0));
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v10 < 9.22337204e18)
  {
    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_20BA0057C(unint64_t result)
{
  if (result < 1)
  {
    return sub_20C1380D4();
  }

  if (__OFADD__(*(*(v1 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_metrics) + 16) / result, *(*(v1 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_metrics) + 16) % result))
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout);
    [v2 minimumLineSpacing];
    [v2 itemSize];
    [v2 sectionInset];
    return [v2 sectionInset];
  }

  return result;
}

id sub_20BA006A0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_metrics] = a1;

  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout];
  if (qword_27C7608A8 != -1)
  {
    swift_once();
  }

  [v2 setMinimumLineSpacing_];
  [v2 setMinimumInteritemSpacing_];
  [v2 setSectionInset_];
  sub_20BA0079C();
  sub_20BA00968();
  [*&v1[OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_collectionView] reloadData];

  return [v1 invalidateIntrinsicContentSize];
}

double sub_20BA0079C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_metrics);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];

    sub_20C13DD64();
    v4 = type metadata accessor for SummaryMetricView();
    v5 = (v1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = objc_allocWithZone(v4);
      v9 = v6;
      v10 = v7;
      v11 = [v8 initWithFrame_];
      [v11 setClipsToBounds_];
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];

      v12 = OBJC_IVAR____TtC9SeymourUI17SummaryMetricView_labelStack;
      [*(*&v11[OBJC_IVAR____TtC9SeymourUI17SummaryMetricView_labelStack] + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel) setAttributedText_];
      v13 = *&v11[v12];
      v14 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel;
      [*(v13 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel) setHidden_];
      [*(v13 + v14) setAttributedText_];

      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v5 += 2;
      --v2;
    }

    while (v2);

    v0 = v16;
    v3 = v17;
  }

  *(v0 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_metricViews) = v3;

  return result;
}

id sub_20BA00968()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_metricViews);
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C13DB34())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    v4 = 0.0;
    v5 = 0.0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F2F5430](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v1 + 8 * v3 + 32);
      }

      v7 = v6;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v6 intrinsicContentSize];
      if (v9 >= v5)
      {
        [v7 intrinsicContentSize];
        v5 = v10;
        v4 = v11;
      }

      ++v3;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v5 = 0.0;
  v4 = 0.0;
LABEL_14:

  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout);

  return [v12 setItemSize_];
}

id sub_20BA00C20(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SummaryMetricGridView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20BA00D0C(void *a1)
{
  v3 = sub_20C13C914();
  v4 = sub_20C1331B4();
  v5 = [a1 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:v4];

  v6 = [v5 contentView];
  v7 = [v6 subviews];

  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v8 = sub_20C13CC74();

  if (v8 >> 62)
  {
    v9 = sub_20C13DB34();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
    goto LABEL_18;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x20F2F5430](i, v8);
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    [v11 removeFromSuperview];
  }

LABEL_10:

  v13 = sub_20C133224();
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_metricViews);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v43 = v13;

    v15 = MEMORY[0x20F2F5430](v43, v14);

    goto LABEL_14;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 8 * v13 + 32);
LABEL_14:
    v16 = [v5 contentView];
    [v16 addSubview_];

    [v5 setUserInteractionEnabled_];
    v44 = objc_opt_self();
    v17 = [v5 contentView];
    v19 = *MEMORY[0x277D768C8];
    v18 = *(MEMORY[0x277D768C8] + 8);
    v20 = *(MEMORY[0x277D768C8] + 16);
    v21 = *(MEMORY[0x277D768C8] + 24);
    v22 = [v15 leadingAnchor];
    v23 = [v17 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:v18];

    LODWORD(v25) = 1148846080;
    [v24 setPriority_];
    v26 = v24;
    v27 = [v15 trailingAnchor];
    v28 = [v17 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-v21];

    LODWORD(v30) = 1148846080;
    [v29 setPriority_];
    v31 = v29;
    v32 = [v15 topAnchor];
    v33 = [v17 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:v19];

    LODWORD(v35) = 1148846080;
    [v34 setPriority_];
    v36 = [v15 bottomAnchor];
    v37 = [v17 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:-v20];

    LODWORD(v39) = 1148846080;
    [v38 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_20C14FE90;
    *(v40 + 32) = v26;
    *(v40 + 40) = v31;
    *(v40 + 48) = v34;
    *(v40 + 56) = v38;
    v41 = v34;

    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v42 = sub_20C13CC54();

    [v44 activateConstraints_];

    return;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t *CatalogTipPlayerDismissed.init(elapsedTime:duration:options:playerMetricTopicRoutingBehavior:)@<X0>(uint64_t *result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *result;
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = v5;
  *(a3 + 24) = a2;
  return result;
}

uint64_t static CatalogTipPlayerDismissed.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20BA013C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20BA01404(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_20BA0145C()
{
  v1 = type metadata accessor for AccountSettingLink(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BA01D64(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        return 0xD000000000000017;
      }

      else
      {
        return 0x6163696669746F6ELL;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_20BA01E58(v3);
      return 0x537373656E746966;
    }

    else
    {
      v6 = sub_20C132C14();
      (*(*(v6 - 8) + 8))(v3, v6);
      return 0x73646E7546646461;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      return 0x4C79636176697270;
    }

    else
    {
      return 0x6F436D6565646572;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 0x74666947646E6573;
  }

  else if (EnumCaseMultiPayload == 7)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void AccountSettingLink.hash(into:)(uint64_t a1)
{
  v2 = sub_20C132C14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccountSettingLink(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20BA01D64(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = 5;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v10 = 6;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v10 = 7;
    }

    else
    {
      v10 = 8;
    }

LABEL_18:
    MEMORY[0x20F2F58E0](v10);
    return;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    v11 = *v8;
    MEMORY[0x20F2F58E0](1);
    sub_20C13D604();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x20F2F58E0](0);
    sub_20BA01E10(&qword_27C762CB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_20C13C7C4();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t AccountSettingLink.hashValue.getter()
{
  sub_20C13E164();
  AccountSettingLink.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BA018F0()
{
  sub_20C13E164();
  AccountSettingLink.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BA01934(uint64_t a1)
{
  sub_20C13E164();
  AccountSettingLink.hash(into:)(v2);
  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI18AccountSettingLinkO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C132C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccountSettingLink(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769178, &qword_20C168828);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v18 = *(v17 + 56);
  sub_20BA01D64(a1, &v25 - v15);
  sub_20BA01D64(a2, &v16[v18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_28;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload)
    {
      sub_20BA01D64(v16, v10);
      v20 = *v10;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_28;
      }

      v21 = *&v16[v18];
      sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
      v22 = sub_20C13D5F4();
    }

    else
    {
      sub_20BA01D64(v16, v13);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v5 + 8))(v13, v4);
        goto LABEL_28;
      }

      (*(v5 + 32))(v7, &v16[v18], v4);
      v22 = sub_20C132B84();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v13, v4);
    }

    sub_20BA01E58(v16);
    return v22 & 1;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_26;
    }

LABEL_28:
    sub_20BA01EB4(v16);
    v22 = 0;
    return v22 & 1;
  }

  if (EnumCaseMultiPayload == 6)
  {
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_28;
    }
  }

  else if (EnumCaseMultiPayload == 7)
  {
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      goto LABEL_28;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 8)
  {
    goto LABEL_28;
  }

LABEL_26:
  sub_20BA01E58(v16);
  v22 = 1;
  return v22 & 1;
}

uint64_t type metadata accessor for AccountSettingLink(uint64_t a1)
{
  result = qword_281103290;
  if (!qword_281103290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BA01D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSettingLink(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BA01E10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BA01E58(uint64_t a1)
{
  v2 = type metadata accessor for AccountSettingLink(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BA01EB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769178, &qword_20C168828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BA01F2C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a1);

  return sub_20B71C584();
}

uint64_t sub_20BA01F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 16))(a3, a4);
  if (*(v6 + 16) && (v7 = sub_20B65AA60(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_20BA01FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*((*(a4 + 16))(a3, a4) + 16))
  {
    sub_20B65AA60(a1, a2);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

UIImage *sub_20BA02094(unint64_t a1)
{
  v2 = v1;
  [v1 size];
  if (v4 <= 0.0)
  {
    return 0;
  }

  [v1 size];
  if (v5 <= 0.0)
  {
    return 0;
  }

  [v1 size];
  v7 = v6;
  v9 = v8;
  [v1 scale];
  v11 = v10;
  v36.width = v7;
  v36.height = v9;
  UIGraphicsBeginImageContextWithOptions(v36, 0, v11);
  v12 = UIGraphicsGetCurrentContext();
  if (!v12)
  {
    return [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v13 = v12;
  [v1 size];
  CGContextTranslateCTM(v13, 0.0, v14);
  CGContextScaleCTM(v13, 1.0, -1.0);
  CGContextSetBlendMode(v13, kCGBlendModeNormal);
  [v1 size];
  v16 = v15;
  [v1 size];
  v18 = v17;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!(a1 >> 62))
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_15:
    v27 = DeviceRGB;
    goto LABEL_16;
  }

  v20 = sub_20C13DB34();
  if (!v20)
  {
    goto LABEL_15;
  }

LABEL_6:
  v21 = DeviceRGB;
  result = sub_20C13DD64();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x20F2F5430](v23, a1);
      }

      else
      {
        v24 = *(a1 + 8 * v23 + 32);
      }

      v25 = v24;
      ++v23;
      v26 = [v24 CGColor];

      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
    }

    while (v20 != v23);
LABEL_16:
    type metadata accessor for CGColor(0);
    v28 = sub_20C13CC54();

    v29 = CGGradientCreateWithColors(DeviceRGB, v28, 0);

    if (v29)
    {
      v30 = [v2 CGImage];
      if (v30)
      {
        v31 = v30;
        v39.origin.x = 0.0;
        v39.origin.y = 0.0;
        v39.size.width = v16;
        v39.size.height = v18;
        CGContextClipToMask(v13, v39, v30);
        [v2 size];
        v33 = v32 * 0.5;
        [v2 size];
        v38.x = v34;
        v37.x = 0.0;
        v37.y = v33;
        v38.y = v33;
        CGContextDrawLinearGradient(v13, v29, v37, v38, 0);
        v35 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();

        return v35;
      }
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

char *sub_20BA023D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_indexPath;
  v11 = sub_20C133244();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  *&v5[OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_shelf];
  *v12 = 0;
  v12[1] = 0;
  v5[OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_flipsFading] = 0;
  v13 = OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_titleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];
  v15 = objc_opt_self();
  v16 = [v15 preferredFontForTextStyle_];
  [v16 pointSize];
  v18 = v17;

  v19 = [v15 systemFontOfSize:v18 weight:*MEMORY[0x277D743F8]];
  [v14 setFont_];

  [v14 setAllowsDefaultTighteningForTruncation_];
  v20 = sub_20BD518BC();

  v21 = v20;
  [v21 setAlpha_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];

  [v21 setAdjustsFontForContentSizeCategory_];
  *&v5[v13] = v21;
  v22 = OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_subtitleLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v23 setLineBreakMode_];
  [v23 setNumberOfLines_];
  v24 = [v15 preferredFontForTextStyle_];
  [v23 setFont_];

  [v23 setAllowsDefaultTighteningForTruncation_];
  v25 = sub_20BD518BC();

  v26 = v25;
  [v26 setAlpha_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  [v26 setAdjustsFontForContentSizeCategory_];
  *&v5[v22] = v26;
  v27 = OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_textStackView;
  v28 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v28 setDistribution_];
  [v28 setAxis_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v27] = v28;
  v49.receiver = v5;
  v49.super_class = type metadata accessor for TVShelfFadingLargeTitleView(0);
  v29 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  v30 = OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_textStackView;
  v31 = *&v29[OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_textStackView];
  v32 = v29;
  [v32 addSubview_];
  [*&v29[v30] addArrangedSubview_];
  [*&v29[v30] addArrangedSubview_];
  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20C14FE90;
  v35 = [*&v29[v30] topAnchor];
  v36 = [v32 topAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v34 + 32) = v37;
  v38 = [*&v29[v30] leadingAnchor];
  v39 = [v32 leadingAnchor];

  v40 = [v38 constraintEqualToAnchor_];
  *(v34 + 40) = v40;
  v41 = [*&v29[v30] trailingAnchor];
  v42 = [v32 trailingAnchor];

  v43 = [v41 constraintEqualToAnchor_];
  *(v34 + 48) = v43;
  v44 = [*&v29[v30] bottomAnchor];
  v45 = [v32 bottomAnchor];

  v46 = [v44 constraintEqualToAnchor_];
  *(v34 + 56) = v46;
  sub_20B5E29D0();
  v47 = sub_20C13CC54();

  [v33 activateConstraints_];

  return v32;
}

void sub_20BA02C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_titleLabel);
  if (a2)
  {
    v7 = sub_20C13C914();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];

  v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_subtitleLabel);
  if (a4)
  {
    v9 = sub_20C13C914();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v8 setText_];
}

id sub_20BA02CE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVShelfFadingLargeTitleView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVShelfFadingLargeTitleView(uint64_t a1)
{
  result = qword_27C769180;
  if (!qword_27C769180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BA02E0C(uint64_t a1)
{
  sub_20B595A38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BA02EEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = (v3 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_shelf);
  *v7 = a1;
  v7[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v9 = *(a2 + 40);
  v9(v22, ObjectType, a2);
  v32 = v22[8];
  v33 = v22[9];
  v34 = v23;
  v31[4] = v22[4];
  v31[5] = v22[5];
  v31[6] = v22[6];
  v31[7] = v22[7];
  v31[0] = v22[0];
  v31[1] = v22[1];
  v31[2] = v22[2];
  v31[3] = v22[3];
  if (sub_20B5EAF8C(v31) == 1)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = *(&v32 + 1);
    v11 = v33;

    sub_20B520158(v22, &qword_27C762340, &unk_20C150290);
  }

  v9(v24, ObjectType, a2);
  v28 = v24[8];
  v29 = v24[9];
  v30 = v25;
  v26[4] = v24[4];
  v26[5] = v24[5];
  v26[6] = v24[6];
  v27 = v24[7];
  v26[0] = v24[0];
  v26[1] = v24[1];
  v26[2] = v24[2];
  v26[3] = v24[3];
  if (sub_20B5EAF8C(v26) == 1)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *(&v27 + 1);
    v13 = v28;

    sub_20B520158(v24, &qword_27C762340, &unk_20C150290);
  }

  sub_20BA02C24(v10, v11, v12, v13);

  v14 = (a3 >> 57) & 0x78 | a3 & 7;
  if (v14 == 33)
  {
    v15 = &qword_27C762B28;
    v16 = &unk_20C1713B0;
  }

  else
  {
    if (v14 != 32)
    {
      *(v4 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_flipsFading) = 0;
      return;
    }

    v15 = &unk_27C772250;
    v16 = &unk_20C150590;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  swift_projectBox();
  v17 = sub_20C135184();
  v19 = v18;
  if (v17 == sub_20C135184() && v19 == v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_20C13DFF4();
  }

  *(v4 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_flipsFading) = v21 & 1;
}

uint64_t sub_20BA03194@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_indexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

double sub_20BA031EC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

id sub_20BA0323C(double a1, double a2)
{
  if (a2 <= 300.0)
  {
    return [*(v2 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_titleLabel) setAlpha_];
  }

  v3 = *(v2 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_titleLabel);
  if (a2 >= 600.0)
  {
    return [v3 setAlpha_];
  }

  else
  {
    return [v3 setAlpha_];
  }
}

id sub_20BA032D0(double a1)
{
  v2 = 1.0;
  v3 = 1.0 - a1;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_flipsFading))
  {
    v4 = 0.0;
    if (v3 < 0.6)
    {
      v4 = 1.0;
      v5 = v3 / -0.6 + 1.0;
      if (v5 <= 0.0)
      {
        v5 = 0.0;
      }

      if (v5 <= 1.0)
      {
        v4 = v5;
      }
    }

    v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_textStackView);
  }

  else
  {
    if (v3 > 0.4)
    {
      v7 = (v3 + -0.4) / -0.6 + 1.0;
      v2 = 0.0;
      if (v7 > 0.0)
      {
        if (v7 <= 1.0)
        {
          v2 = v7;
        }

        else
        {
          v2 = 1.0;
        }
      }
    }

    v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_textStackView);
    v4 = 1.0 - v2;
  }

  return [v6 setAlpha_];
}

id sub_20BA033CC(uint64_t *a1, void *a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for TVShelfFadingLargeTitleView(0)) initWithFrame_];
  sub_20BA02C24(a1[17], a1[18], a1[15], a1[16]);
  [objc_msgSend(a2 container)];
  v6 = v5;
  swift_unknownObjectRelease();
  LODWORD(v7) = 1112014848;
  LODWORD(v8) = 1112014848;
  [v4 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:COERCE_DOUBLE(1) verticalFittingPriority:{v7, v8}];
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 estimatedDimension_];
  v15 = [v13 estimatedDimension_];
  v16 = [objc_opt_self() sizeWithWidthDimension:v14 heightDimension:v15];

  v17 = sub_20C13C914();
  v18 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v16 elementKind:v17 alignment:2 absoluteOffset:{0.0, -10.0}];

  return v18;
}

void sub_20BA03580()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_indexPath;
  v3 = sub_20C133244();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_shelf);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_flipsFading) = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_titleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle_];
  [v8 pointSize];
  v10 = v9;

  v11 = [v7 systemFontOfSize:v10 weight:*MEMORY[0x277D743F8]];
  [v6 setFont_];

  [v6 setAllowsDefaultTighteningForTruncation_];
  v12 = sub_20BD518BC();

  v13 = v12;
  [v13 setAlpha_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  [v13 setAdjustsFontForContentSizeCategory_];
  *(v1 + v5) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_subtitleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  v16 = [v7 preferredFontForTextStyle_];
  [v15 setFont_];

  [v15 setAllowsDefaultTighteningForTruncation_];
  v17 = sub_20BD518BC();

  v18 = v17;
  [v18 setAlpha_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  [v18 setAdjustsFontForContentSizeCategory_];
  *(v1 + v14) = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI27TVShelfFadingLargeTitleView_textStackView;
  v20 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v20 setDistribution_];
  [v20 setAxis_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v19) = v20;
  sub_20C13DE24();
  __break(1u);
}

uint64_t SceneCoordinating.openURLContexts(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationSource(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  (*(a3 + 104))(a1, v8, a2, a3);
  return sub_20BA039F4(v8);
}

uint64_t sub_20BA039F4(uint64_t a1)
{
  v2 = type metadata accessor for NavigationSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SceneCoordinating.continueUserActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationSource(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  (*(a3 + 112))(a1, v8, a2, a3);
  return sub_20BA039F4(v8);
}

uint64_t static Dependencies.remoteBrowsing(queue:)(uint64_t a1)
{
  v2 = sub_20C13AD04();
  v156 = *(v2 - 8);
  v157 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v155 = &v122 - v6;
  v7 = sub_20C138F64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C138F54();
  v11 = sub_20BA12FB8(v10, a1);
  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  v154 = v183[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860, &unk_20C14FD70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DE0, &unk_20C161550);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v12 = v178[0];
  v13 = v178[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DF0, &qword_20C1551B8);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00, &unk_20C156CF0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769190, &unk_20C15F8D0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767920, &unk_20C1765F0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7691A0, &qword_20C168990);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E10, &qword_20C1551C0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A9A0, &unk_20C16DEF0);
  v130 = v11;
  sub_20C133AA4();
  v14 = sub_20C13ACC4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v15 = sub_20C13ACB4();
  sub_20B51CC64(v175, &v168);
  v148 = type metadata accessor for RemoteBrowsingSourceCoordinator();
  v16 = swift_allocObject();
  swift_unknownObjectRetain();

  v18 = v13;
  v147 = v13;
  v153 = sub_20BA12888(v17, &v168, v12, v13, v16);
  sub_20B51CC64(v184, &v168);
  v19 = type metadata accessor for RemoteBrowsingAccountProvider();
  v20 = swift_allocObject();
  swift_unknownObjectRetain();

  v21 = sub_20BA15278(&v168, v12, v18, v15, v20);
  swift_unknownObjectRelease();
  sub_20B51CC64(v172, &v168);
  v136 = v19;
  v166 = v19;
  v134 = sub_20B51CCC8(&qword_27C7691B0, type metadata accessor for RemoteBrowsingAccountProvider, &unk_20C168D28);
  v167 = v134;
  *&v165 = v21;
  v22 = MEMORY[0x277D4F320];
  v163 = v14;
  v164 = MEMORY[0x277D4F320];
  *&v162 = v15;
  v149 = type metadata accessor for RemoteBrowsingServiceSubscriptionCache();
  v23 = swift_allocObject();
  sub_20B51C710(&v165, v23 + 16);
  sub_20B51C710(&v162, v23 + 56);
  sub_20B51C710(&v168, v23 + 96);
  sub_20B51CC64(v175, &v168);
  sub_20B51CC64(v183, &v165);
  v163 = v14;
  v164 = MEMORY[0x277D4F318];
  v24 = MEMORY[0x277D4F318];
  *&v162 = v15;
  v128 = type metadata accessor for RemoteBrowsingArchivedSessionClient();
  v25 = swift_allocObject();
  sub_20B51C710(&v162, v25 + 56);
  sub_20B51C710(&v168, v25 + 16);
  v150 = v25;
  sub_20B51C710(&v165, v25 + 96);
  sub_20B51CC64(v175, &v168);
  sub_20B51CC64(v183, &v165);
  v163 = v14;
  v164 = v24;
  *&v162 = v15;
  type metadata accessor for RemoteBrowsingBookmarkClient();
  v26 = swift_allocObject();
  sub_20B51C710(&v168, v26 + 16);
  sub_20B51C710(&v162, v26 + 56);
  v144 = v26;
  sub_20B51C710(&v165, v26 + 96);
  sub_20B51CC64(v183, &v168);
  sub_20B51CC64(v175, &v165);
  v163 = v14;
  v164 = v22;
  *&v162 = v15;
  type metadata accessor for RemoteBrowsingCatalogClient();
  v27 = swift_allocObject();
  sub_20B51C710(&v168, v27 + 16);
  sub_20B51C710(&v165, v27 + 56);
  v143 = v27;
  sub_20B51C710(&v162, v27 + 96);
  type metadata accessor for RemoteContactService();
  v142 = swift_allocObject();
  *(v142 + 16) = v15;

  sub_20B51CC64(v181, &v168);

  v166 = v14;
  v167 = v22;
  *&v165 = v15;
  type metadata accessor for RemoteBrowsingContentAvailabilityClient();
  v28 = swift_allocObject();
  sub_20B51C710(&v168, v28 + 16);
  v141 = v28;
  sub_20B51C710(&v165, v28 + 56);
  sub_20B51CC64(v180, &v168);
  v127 = type metadata accessor for RemoteBrowsingContentRatingCache();
  v29 = swift_allocObject();

  sub_20B51C710(&v168, v29 + 16);
  v139 = v29;
  *(v29 + 56) = v15;
  sub_20B51CC64(v175, &v168);
  swift_retain_n();
  v151 = v21;

  LOBYTE(v21) = sub_20C1380F4();
  type metadata accessor for RemoteBrowsingSessionPreferenceClient();
  v30 = swift_allocObject();
  sub_20B51C710(&v168, v30 + 16);
  *(v30 + 56) = v15;
  v140 = v30;
  *(v30 + 64) = v21;
  swift_unknownObjectRetain();
  v31 = v155;
  sub_20C13ACF4();
  type metadata accessor for RemoteBrowsingIdleMonitor(0);
  v32 = swift_allocObject();
  v34 = v156;
  v33 = v157;
  (*(v156 + 16))(v4, v31, v157);
  v146 = v12;
  v138 = sub_20BA14CE4(v12, v147, v4, v32);
  (*(v34 + 8))(v31, v33);
  sub_20B51CC64(v178, &v168);
  v35 = v148;
  v166 = v148;
  v167 = &off_2822BE4D0;
  *&v165 = v153;
  v163 = v149;
  v164 = sub_20B51CCC8(&qword_27C7691B8, type metadata accessor for RemoteBrowsingServiceSubscriptionCache, &unk_20C180340);
  *&v162 = v23;
  v133 = type metadata accessor for RemoteBrowsingMetricClient();
  v36 = swift_allocObject();
  v37 = __swift_mutable_project_boxed_opaque_existential_1(&v165, v35);
  v38 = MEMORY[0x28223BE20](v37);
  v40 = (&v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40, v38);
  v42 = *v40;
  v36[10] = v35;
  v36[11] = &off_2822BE4D0;
  v36[7] = v42;
  sub_20B51C710(&v168, (v36 + 2));
  v149 = v36;
  sub_20B51C710(&v162, (v36 + 12));

  v129 = v23;

  __swift_destroy_boxed_opaque_existential_1(&v165);
  sub_20B51CC64(v177, &v168);
  sub_20B51CC64(v175, &v165);
  v163 = v14;
  v164 = MEMORY[0x277D4F318];
  *&v162 = v15;
  type metadata accessor for RemoteBrowsingPrivacyPreferenceClient();
  v43 = swift_allocObject();
  sub_20B51C710(&v168, v43 + 16);
  sub_20B51C710(&v165, v43 + 56);
  v137 = v43;
  sub_20B51C710(&v162, v43 + 96);
  sub_20B51CC64(v175, &v168);
  v44 = MEMORY[0x277D4F328];
  v166 = v14;
  v167 = MEMORY[0x277D4F328];
  *&v165 = v15;
  v45 = type metadata accessor for RemoteBrowsingAchievementClient();
  v46 = swift_allocObject();
  sub_20B51C710(&v168, v46 + 16);
  sub_20B51C710(&v165, v46 + 56);
  sub_20B51CC64(v176, &v168);
  sub_20B51CC64(v175, &v165);
  sub_20B51CC64(v183, &v162);
  sub_20B51CC64(v181, v161);
  v160[3] = v14;
  v160[4] = v44;
  v145 = v14;
  v160[0] = v15;
  v159[3] = v45;
  v159[4] = sub_20B51CCC8(&qword_27C7691C0, type metadata accessor for RemoteBrowsingAchievementClient, &unk_20C16EDC0);
  v159[0] = v46;
  type metadata accessor for RemoteBrowsingRecommendationClient();
  v47 = swift_allocObject();
  sub_20B51CC64(&v168, v47 + 16);
  sub_20B51CC64(&v165, v47 + 56);
  sub_20B51CC64(v160, v47 + 96);
  sub_20B51CC64(v159, v47 + 136);
  sub_20B51CC64(&v162, v47 + 176);
  sub_20B51CC64(v161, v47 + 216);
  v148 = v47;
  *(v47 + 256) = v154;
  v152 = v15;
  swift_retain_n();
  v126 = v46;

  swift_unknownObjectRetain();
  v48 = sub_20C137B34();
  v49 = sub_20B6B4A78(MEMORY[0x277D84F90]);
  v157 = *(v48 + 16);
  if (!v157)
  {
LABEL_17:

    __swift_destroy_boxed_opaque_existential_1(v161);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    __swift_destroy_boxed_opaque_existential_1(v159);
    __swift_destroy_boxed_opaque_existential_1(v160);
    *(v148 + 264) = v49;
    sub_20B51CC64(v173, &v168);
    v166 = v145;
    v167 = MEMORY[0x277D4F320];
    v66 = v145;
    *&v165 = v152;
    v67 = v152;
    v68 = type metadata accessor for RemoteBrowsingSubscriptionClient();
    v69 = swift_allocObject();
    sub_20B51C710(&v168, v69 + 56);
    v70 = v69;
    sub_20B51C710(&v165, v69 + 16);
    sub_20B51CC64(v179, &v168);
    sub_20B51CC64(v175, &v165);
    v71 = MEMORY[0x277D4F318];
    v163 = v66;
    v164 = MEMORY[0x277D4F318];
    *&v162 = v67;
    type metadata accessor for RemoteBrowsingEngagementClient();
    v72 = swift_allocObject();
    v157 = v72;
    sub_20B51C710(&v168, v72 + 16);
    sub_20B51C710(&v165, v72 + 56);
    sub_20B51C710(&v162, v72 + 96);
    sub_20B51CC64(v175, &v168);
    v166 = v66;
    v167 = v71;
    *&v165 = v67;
    QueueClient = type metadata accessor for RemoteBrowsingUpNextQueueClient();
    v73 = swift_allocObject();
    v135 = v73;
    sub_20B51C710(&v168, v73 + 16);
    sub_20B51C710(&v165, v73 + 56);
    sub_20B51CC64(v175, &v168);
    v166 = v66;
    v167 = MEMORY[0x277D4F328];
    *&v165 = v67;
    v74 = type metadata accessor for RemoteBrowsingWorkoutPlanClient();
    v124 = v74;
    v75 = swift_allocObject();
    v132 = v75;
    sub_20B51C710(&v168, v75 + 16);
    sub_20B51C710(&v165, v75 + 56);
    sub_20B51CC64(v174, &v168);
    sub_20B51CC64(v175, &v165);

    v163 = v66;
    v164 = v71;
    *&v162 = v67;
    type metadata accessor for RemoteBrowsingSearchClient();
    v76 = swift_allocObject();
    v155 = v76;
    sub_20B51C710(&v168, v76 + 16);
    sub_20B51C710(&v165, v76 + 56);
    sub_20B51C710(&v162, v76 + 96);
    v170 = v134;
    v169 = v136;
    *&v168 = v151;
    v166 = v68;
    v167 = sub_20B51CCC8(&unk_27C7691D0, type metadata accessor for RemoteBrowsingSubscriptionClient, &unk_20C184A84);
    v125 = v70;
    *&v165 = v70;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    swift_retain_n();

    swift_unknownObjectRetain();

    sub_20C13D374();
    sub_20C138E34();
    sub_20C138E24();
    v77 = sub_20C138E14();
    v79 = v78;
    sub_20C138D84();
    swift_allocObject();
    v120 = v77;
    v121 = v79;
    v156 = sub_20C138D74();
    v169 = v133;
    v170 = sub_20B51CCC8(&qword_27C7691E0, type metadata accessor for RemoteBrowsingMetricClient, &unk_20C1824BC);
    *&v168 = v149;
    v166 = QueueClient;
    v167 = sub_20B51CCC8(&qword_27C7691E8, type metadata accessor for RemoteBrowsingUpNextQueueClient, &unk_20C161B00);
    *&v165 = v135;
    v163 = v74;
    v123 = sub_20B51CCC8(&qword_27C7691F0, type metadata accessor for RemoteBrowsingWorkoutPlanClient, &unk_20C155358);
    v164 = v123;
    v80 = v132;
    *&v162 = v132;
    sub_20C138784();
    swift_allocObject();
    v81 = v146;
    swift_unknownObjectRetain();

    v82 = v80;

    v83 = v147;
    v136 = sub_20C138774();
    v84 = type metadata accessor for MarketingSubscriptionStatusProvider();
    sub_20B51CC64(v172, &v168);
    v85 = v169;
    v86 = v170;
    v87 = __swift_mutable_project_boxed_opaque_existential_1(&v168, v169);
    v88 = MEMORY[0x28223BE20](v87);
    v90 = &v122 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v91 + 16))(v90, v88);
    v134 = sub_20BD06718(v90, v84, v85, v86);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    sub_20B51CC64(v182, &v168);
    swift_unknownObjectRetain();
    v92 = v152;

    v133 = sub_20BA153C0(&v168, v81, v83, v92, v82);
    swift_unknownObjectRelease();
    sub_20B51CC64(v182, &v168);
    type metadata accessor for RemoteBrowsingCompletedTipObserver();
    v93 = swift_allocObject();
    swift_unknownObjectRetain();

    QueueClient = sub_20BA155D4(&v168, v81, v83, v92, v93);
    swift_unknownObjectRelease();
    v94 = sub_20C1394E4();
    swift_allocObject();
    swift_unknownObjectRetain();
    v95 = sub_20C1394D4();
    sub_20B51CC64(v183, &v168);
    v166 = v124;
    v167 = v123;
    *&v165 = v82;
    v96 = sub_20C138C14();
    swift_allocObject();

    v97 = sub_20C138C04();
    v169 = v128;
    v170 = sub_20B51CCC8(&qword_27C7691F8, type metadata accessor for RemoteBrowsingArchivedSessionClient, &unk_20C1546C4);
    *&v168 = v150;
    v166 = v94;
    v167 = MEMORY[0x277D543F0];
    v122 = v95;
    *&v165 = v95;
    v163 = v96;
    v164 = MEMORY[0x277D54170];
    v124 = v97;
    *&v162 = v97;
    sub_20C138E04();
    swift_allocObject();
    swift_unknownObjectRetain();

    v98 = sub_20C138DF4();
    v147 = v98;
    sub_20B51CC64(v183, &v168);
    v166 = v127;
    v167 = &off_2822AB638;
    v99 = v139;
    *&v165 = v139;
    type metadata accessor for ContentAvailabilityFilter();
    v100 = swift_allocObject();
    sub_20B51C710(&v168, v100 + 16);
    v128 = v100;
    sub_20B51C710(&v165, v100 + 56);
    v170 = MEMORY[0x277D4F320];
    v101 = v145;
    v169 = v145;
    *&v168 = v92;
    sub_20C139514();
    swift_allocObject();

    v102 = sub_20C139504();
    v127 = v102;
    sub_20B51CC64(v175, &v168);
    sub_20B51CC64(v171, &v165);
    v163 = v101;
    v164 = MEMORY[0x277D4F328];
    *&v162 = v92;
    type metadata accessor for RemoteBrowsingSyncClient();
    v103 = swift_allocObject();
    sub_20B51C710(&v168, v103 + 16);
    sub_20B51C710(&v162, v103 + 56);
    v104 = sub_20B51C710(&v165, v103 + 96);
    v145 = &v122;
    MEMORY[0x28223BE20](v104);
    v105 = v150;
    v106 = v126;
    *(&v122 - 32) = v151;
    *(&v122 - 31) = v106;
    *(&v122 - 30) = v105;
    *(&v122 - 29) = v98;
    v107 = v143;
    *(&v122 - 28) = v144;
    *(&v122 - 27) = v107;
    v108 = v141;
    *(&v122 - 26) = v142;
    *(&v122 - 25) = v108;
    *(&v122 - 24) = v100;
    *(&v122 - 23) = v99;
    v109 = v157;
    *(&v122 - 22) = v140;
    *(&v122 - 21) = v109;
    v110 = v156;
    *(&v122 - 20) = v149;
    *(&v122 - 19) = v110;
    v112 = v136;
    v111 = v137;
    *(&v122 - 18) = v134;
    *(&v122 - 17) = v112;
    *(&v122 - 16) = v111;
    v113 = QueueClient;
    *(&v122 - 15) = v148;
    *(&v122 - 14) = v113;
    v114 = v132;
    v115 = v138;
    *(&v122 - 13) = v133;
    *(&v122 - 12) = v115;
    v116 = v153;
    *(&v122 - 11) = v92;
    *(&v122 - 10) = v116;
    v117 = v129;
    *(&v122 - 9) = v155;
    *(&v122 - 8) = v117;
    *(&v122 - 7) = v125;
    *(&v122 - 6) = v103;
    *(&v122 - 5) = v135;
    *(&v122 - 4) = v102;
    *(&v122 - 3) = v124;
    v120 = v114;

    v118 = sub_20C133AB4();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v171);
    __swift_destroy_boxed_opaque_existential_1(v172);
    __swift_destroy_boxed_opaque_existential_1(v173);
    __swift_destroy_boxed_opaque_existential_1(v174);
    __swift_destroy_boxed_opaque_existential_1(v175);
    __swift_destroy_boxed_opaque_existential_1(v176);
    __swift_destroy_boxed_opaque_existential_1(v177);
    __swift_destroy_boxed_opaque_existential_1(v178);
    __swift_destroy_boxed_opaque_existential_1(v179);
    __swift_destroy_boxed_opaque_existential_1(v180);
    __swift_destroy_boxed_opaque_existential_1(v181);
    __swift_destroy_boxed_opaque_existential_1(v182);
    __swift_destroy_boxed_opaque_existential_1(v183);
    __swift_destroy_boxed_opaque_existential_1(v184);
    return v118;
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7691C8, &qword_20C168998);
  v51 = 0;
  v155 = (v48 + 32);
  v156 = v50;
  while (v51 < *(v48 + 16))
  {
    v52 = v155[v51];
    v53 = sub_20C13B9C4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v158 = v49;
    v56 = sub_20B65B5F8(v52);
    v57 = v49[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_19;
    }

    v60 = v55;
    if (v49[3] >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v49 = v158;
        if (v55)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_20BA111E8();
        v49 = v158;
        if (v60)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_20BA0BE8C(v59, isUniquelyReferenced_nonNull_native);
      v61 = sub_20B65B5F8(v52);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_21;
      }

      v56 = v61;
      v49 = v158;
      if (v60)
      {
LABEL_3:
        *(v49[7] + 8 * v56) = v53;

        goto LABEL_4;
      }
    }

    v49[(v56 >> 6) + 8] |= 1 << v56;
    *(v49[6] + v56) = v52;
    *(v49[7] + 8 * v56) = v53;
    v63 = v49[2];
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_20;
    }

    v49[2] = v65;
LABEL_4:
    if (v157 == ++v51)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

uint64_t sub_20BA053FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31)
{
  type metadata accessor for RemoteBrowsingAccountProvider();
  sub_20B51CCC8(&qword_27C7691B0, type metadata accessor for RemoteBrowsingAccountProvider, &unk_20C168D28);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763AF0, &qword_20C154FF0);
  v69 = sub_20B529718(&unk_281103E10, &unk_27C763AF0, &qword_20C154FF0);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133324();
  v66 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingAchievementClient();
  sub_20B51CCC8(&qword_27C7691C0, type metadata accessor for RemoteBrowsingAchievementClient, &unk_20C16EDC0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769358, &qword_20C168A10);
  v69 = sub_20B529718(&qword_27C769360, &qword_27C769358, &qword_20C168A10);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769368, &qword_20C168A18);
  sub_20C133324();
  v65 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingArchivedSessionClient();
  sub_20B51CCC8(&qword_27C7691F8, type metadata accessor for RemoteBrowsingArchivedSessionClient, &unk_20C1546C4);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769370, &qword_20C168A20);
  v69 = sub_20B529718(&unk_27C769378, &qword_27C769370, &qword_20C168A20);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40, &unk_20C14D9E0);
  sub_20C133324();
  v64 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763B50, &qword_20C155030);
  v69 = sub_20B529718(&qword_281103D00, &unk_27C763B50, &qword_20C155030);
  __swift_allocate_boxed_opaque_existential_1(v67);
  sub_20C138E04();

  sub_20C133324();
  v63 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingBookmarkClient();
  sub_20B51CCC8(&qword_27C769388, type metadata accessor for RemoteBrowsingBookmarkClient, &unk_20C189730);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769390, &qword_20C168A28);
  v69 = sub_20B529718(&unk_27C769398, &qword_27C769390, &qword_20C168A28);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133324();
  v62 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingCatalogClient();
  sub_20B51CCC8(&qword_27C7693A8, type metadata accessor for RemoteBrowsingCatalogClient, &unk_20C1729E0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7693B0, &qword_20C168A30);
  v69 = sub_20B529718(&qword_27C7693B8, &qword_27C7693B0, &qword_20C168A30);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133324();
  v61 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteContactService();
  sub_20B51CCC8(&unk_27C7693C0, type metadata accessor for RemoteContactService, &unk_20C1749D8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763BA0, &qword_20C155058);
  v69 = sub_20B529718(&qword_281103C50, &unk_27C763BA0, &qword_20C155058);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BB0, &unk_20C171940);
  sub_20C133324();
  v60 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingContentAvailabilityClient();
  sub_20B51CCC8(&qword_27C7693D0, type metadata accessor for RemoteBrowsingContentAvailabilityClient, &unk_20C16F9F8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7693D8, &qword_20C168A38);
  v69 = sub_20B529718(&unk_27C7693E0, &qword_27C7693D8, &qword_20C168A38);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860, &unk_20C14FD70);
  sub_20C133324();
  v59 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for ContentAvailabilityFilter();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BB8, &qword_20C155060);
  v69 = sub_20B529718(&unk_281103D70, &qword_27C763BB8, &qword_20C155060);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980, &qword_20C153E20);
  sub_20C133324();
  v58 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingContentRatingCache();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763BC0, &qword_20C155068);
  v69 = sub_20B529718(&unk_281103DC8, &unk_27C763BC0, &qword_20C155068);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133324();
  v56 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingSessionPreferenceClient();
  sub_20B51CCC8(&qword_27C7693F0, type metadata accessor for RemoteBrowsingSessionPreferenceClient, &unk_20C18DA48);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7693F8, &qword_20C168A40);
  v69 = sub_20B529718(&unk_27C769400, &qword_27C7693F8, &qword_20C168A40);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768870, &unk_20C162E40);
  sub_20C133324();
  v55 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingEngagementClient();
  sub_20B51CCC8(&qword_27C769410, type metadata accessor for RemoteBrowsingEngagementClient, &unk_20C16FAD0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769418, &qword_20C168A48);
  v69 = sub_20B529718(&qword_27C769420, &qword_27C769418, &qword_20C168A48);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DE0, &unk_20C161550);
  sub_20C133324();
  v53 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingMetricClient();
  sub_20B51CCC8(&qword_27C7691E0, type metadata accessor for RemoteBrowsingMetricClient, &unk_20C1824BC);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769428, &qword_20C168A50);
  v69 = sub_20B529718(&unk_27C769430, &qword_27C769428, &qword_20C168A50);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DF0, &qword_20C1551B8);
  sub_20C133324();
  v51 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  sub_20C138D84();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763C28, &qword_20C1550A0);
  v69 = sub_20B529718(&unk_281103CF0, &qword_27C763C28, &qword_20C1550A0);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650, &unk_20C15C0E0);
  sub_20C133324();
  v49 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for MarketingSubscriptionStatusProvider();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769440, &qword_20C1550C8);
  v69 = sub_20B529718(&unk_281103D40, &unk_27C769440, &qword_20C1550C8);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769450, &unk_20C1839F0);
  sub_20C133324();
  v47 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763C88, &qword_20C1550E0);
  v69 = sub_20B529718(&qword_281103D30, &unk_27C763C88, &qword_20C1550E0);
  __swift_allocate_boxed_opaque_existential_1(v67);
  sub_20C138784();

  sub_20C133324();
  v45 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingPrivacyPreferenceClient();
  sub_20B51CCC8(&qword_27C769458, type metadata accessor for RemoteBrowsingPrivacyPreferenceClient, &unk_20C179128);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769460, &qword_20C168A58);
  v69 = sub_20B529718(&qword_27C769468, &qword_27C769460, &qword_20C168A58);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00, &unk_20C156CF0);
  sub_20C133324();
  v44 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingRecommendationClient();
  sub_20B51CCC8(&qword_27C769470, type metadata accessor for RemoteBrowsingRecommendationClient, &unk_20C185810);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769478, &qword_20C168A60);
  v69 = sub_20B529718(&qword_27C769480, &qword_27C769478, &qword_20C168A60);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769190, &unk_20C15F8D0);
  sub_20C133324();
  v46 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingCompletedTipObserver();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769488, &qword_20C168A68);
  v69 = sub_20B529718(&qword_27C769490, &qword_27C769488, &qword_20C168A68);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769498, &qword_20C168A70);
  sub_20C133324();
  v48 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingCompletedWorkoutObserver();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7694A0, &qword_20C168A78);
  v69 = sub_20B529718(&qword_27C7694A8, &qword_27C7694A0, &qword_20C168A78);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7694B0, &qword_20C168A80);
  sub_20C133324();
  v50 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7694B8, &qword_20C168A88);
  v69 = sub_20B529718(&unk_27C7694C0, &qword_27C7694B8, &qword_20C168A88);
  __swift_allocate_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingIdleMonitor(0);

  sub_20C133324();
  v52 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  sub_20C13ACC4();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CC8, &qword_20C155108);
  v69 = sub_20B529718(&unk_281103C20, &qword_27C763CC8, &qword_20C155108);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CFE0, &qword_20C155110);
  sub_20C133324();
  v43 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CD0, &qword_20C155118);
  v69 = sub_20B529718(&qword_281103C38, &qword_27C763CD0, &qword_20C155118);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133324();
  v42 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763CD8, &qword_20C155120);
  v69 = sub_20B529718(&qword_281103C30, &unk_27C763CD8, &qword_20C155120);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CE8, &qword_20C16D960);
  sub_20C133324();
  v54 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingSourceCoordinator();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7694D0, &qword_20C168A90);
  v69 = sub_20B529718(&qword_27C7694D8, &qword_27C7694D0, &qword_20C168A90);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7694E0, &qword_20C168A98);
  sub_20C133324();
  v57 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingSearchClient();
  sub_20B51CCC8(&qword_27C7694E8, type metadata accessor for RemoteBrowsingSearchClient, &unk_20C16EA08);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7694F0, &qword_20C168AA0);
  v69 = sub_20B529718(&qword_27C7694F8, &qword_27C7694F0, &qword_20C168AA0);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7691A0, &qword_20C168990);
  sub_20C133324();
  v31 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingServiceSubscriptionCache();
  sub_20B51CCC8(&qword_27C7691B8, type metadata accessor for RemoteBrowsingServiceSubscriptionCache, &unk_20C180340);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769500, &qword_20C155138);
  v69 = sub_20B529718(&unk_281103CB0, &unk_27C769500, &qword_20C155138);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133324();
  v32 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingSubscriptionClient();
  sub_20B51CCC8(&unk_27C7691D0, type metadata accessor for RemoteBrowsingSubscriptionClient, &unk_20C184A84);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769510, &qword_20C168AA8);
  v69 = sub_20B529718(&qword_27C769518, &qword_27C769510, &qword_20C168AA8);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E10, &qword_20C1551C0);
  sub_20C133324();
  v33 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingSyncClient();
  sub_20B51CCC8(&qword_27C769520, type metadata accessor for RemoteBrowsingSyncClient, &unk_20C1769CC);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769528, &qword_20C168AB0);
  v69 = sub_20B529718(&qword_27C769530, &qword_27C769528, &qword_20C168AB0);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A9A0, &unk_20C16DEF0);
  sub_20C133324();
  v34 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  type metadata accessor for RemoteBrowsingUpNextQueueClient();
  sub_20B51CCC8(&qword_27C7691E8, type metadata accessor for RemoteBrowsingUpNextQueueClient, &unk_20C161B00);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769538, &qword_20C168AB8);
  v69 = sub_20B529718(&unk_27C769540, &qword_27C769538, &qword_20C168AB8);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133324();
  v35 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  sub_20C139514();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763D60, &qword_20C155170);
  v69 = sub_20B529718(&qword_281103D28, &unk_27C763D60, &qword_20C155170);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763D70, &qword_20C155178);
  sub_20C133324();
  v36 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  sub_20C138C14();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763D98, &qword_20C155190);
  v69 = sub_20B529718(&unk_281103CA0, &unk_27C763D98, &qword_20C155190);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763DA8, &qword_20C155198);
  sub_20C133324();
  v37 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  sub_20B51CCC8(&qword_27C7691F0, type metadata accessor for RemoteBrowsingWorkoutPlanClient, &unk_20C155358);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769550, &qword_20C168AC0);
  v69 = sub_20B529718(&qword_27C769558, &qword_27C769550, &qword_20C168AC0);
  __swift_allocate_boxed_opaque_existential_1(v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0, &unk_20C151240);
  sub_20C133324();
  v38 = sub_20C136214();
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DD0, &qword_20C1551B0);
  v39 = swift_allocObject();
  *(v39 + 32) = v66;
  *(v39 + 40) = v65;
  *(v39 + 48) = v64;
  *(v39 + 56) = v63;
  *(v39 + 16) = xmmword_20C168980;
  *(v39 + 64) = v62;
  *(v39 + 72) = v61;
  *(v39 + 80) = v60;
  *(v39 + 88) = v59;
  *(v39 + 96) = v58;
  *(v39 + 104) = v56;
  *(v39 + 112) = v55;
  *(v39 + 120) = v53;
  *(v39 + 128) = v51;
  *(v39 + 136) = v49;
  *(v39 + 144) = v47;
  *(v39 + 152) = v45;
  *(v39 + 160) = v44;
  *(v39 + 168) = v46;
  *(v39 + 176) = v48;
  *(v39 + 184) = v50;
  *(v39 + 192) = v52;
  *(v39 + 200) = v43;
  *(v39 + 208) = v42;
  *(v39 + 216) = v54;
  *(v39 + 224) = v57;
  *(v39 + 232) = v31;
  *(v39 + 240) = v32;
  *(v39 + 248) = v33;
  *(v39 + 256) = v34;
  *(v39 + 264) = v35;
  *(v39 + 272) = v36;
  *(v39 + 280) = v37;
  *(v39 + 288) = v38;
  sub_20C136204();

  v40 = sub_20C1361F4();

  return v40;
}

void sub_20BA06D9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v67 = sub_20C132EE4();
  v5 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769210, &qword_20C154BF0);
  v69 = v4;
  v8 = sub_20C13DE74();
  v9 = v8;
  if (*(v7 + 16))
  {
    v63[0] = v2;
    v10 = 0;
    v68 = v7;
    v13 = *(v7 + 64);
    v12 = (v7 + 64);
    v11 = v13;
    v14 = 1 << *(v12 - 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v11;
    v17 = (v14 + 63) >> 6;
    v63[1] = v5 + 16;
    v64 = v8;
    v70 = (v5 + 32);
    v18 = v8 + 64;
    v65 = v5;
    while (v16)
    {
      v27 = __clz(__rbit64(v16));
      v28 = (v16 - 1) & v16;
LABEL_15:
      v31 = v27 | (v10 << 6);
      v89 = v28;
      v32 = v68;
      v33 = *(v68 + 48);
      v88 = *(v5 + 72);
      v34 = v33 + v88 * v31;
      v35 = v66;
      if (v69)
      {
        (*(v5 + 32))(v66, v34, v67);
        v36 = *(v32 + 56) + 168 * v31;
        v37 = *(v36 + 8);
        v73 = *v36;
        v71 = v37;
        v72 = *(v36 + 16);
        v38 = *(v36 + 32);
        v77 = *(v36 + 24);
        v75 = v38;
        v74 = *(v36 + 40);
        v76 = *(v36 + 41);
        v39 = *(v36 + 64);
        v78 = *(v36 + 48);
        v79 = v39;
        v40 = *(v36 + 80);
        v81 = *(v36 + 88);
        v82 = v40;
        v80 = *(v36 + 96);
        v41 = *(v36 + 104);
        v85 = *(v36 + 136);
        v42 = *(v36 + 120);
        v83 = v41;
        v84 = v42;
        v43 = *(v36 + 152);
        v86 = *(v36 + 160);
        v87 = v43;
      }

      else
      {
        (*(v5 + 16))(v66, v34, v67);
        v44 = *(v32 + 56) + 168 * v31;
        v45 = *(v44 + 160);
        v47 = *(v44 + 128);
        v46 = *(v44 + 144);
        v97[1] = *(v44 + 112);
        v97[2] = v47;
        v97[3] = v46;
        v98 = v45;
        v49 = *(v44 + 80);
        v48 = *(v44 + 96);
        v50 = *(v44 + 64);
        v94 = *(v44 + 48);
        v95 = v50;
        v96 = v49;
        v97[0] = v48;
        v52 = *(v44 + 16);
        v51 = *(v44 + 32);
        v93[0] = *v44;
        v93[1] = v52;
        v93[2] = v51;
        v86 = v45;
        v87 = *(&v97[3] + 1);
        v84 = *(&v97[1] + 8);
        v85 = *(&v97[2] + 8);
        v83 = *(v97 + 8);
        v81 = *(&v96 + 1);
        v82 = v96;
        v80 = LOBYTE(v97[0]);
        v78 = v94;
        v79 = v50;
        v76 = BYTE9(v51);
        v77 = *(&v52 + 1);
        v75 = v51;
        v74 = BYTE8(v51);
        v72 = v52;
        v71 = *(&v93[0] + 1);
        v73 = *&v93[0];
        sub_20B622224(v93, v92);
      }

      v9 = v64;
      sub_20B51CCC8(&qword_27C7675A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v53 = sub_20C13C7B4();
      v54 = -1 << *(v9 + 32);
      v55 = v53 & ~v54;
      v56 = v55 >> 6;
      if (((-1 << v55) & ~*(v18 + 8 * (v55 >> 6))) == 0)
      {
        v57 = 0;
        v58 = (63 - v54) >> 6;
        v5 = v65;
        while (++v56 != v58 || (v57 & 1) == 0)
        {
          v59 = v56 == v58;
          if (v56 == v58)
          {
            v56 = 0;
          }

          v57 |= v59;
          v60 = *(v18 + 8 * v56);
          if (v60 != -1)
          {
            v19 = __clz(__rbit64(~v60)) + (v56 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v55) & ~*(v18 + 8 * (v55 >> 6)))) | v55 & 0x7FFFFFFFFFFFFFC0;
      v5 = v65;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v70)(*(v9 + 48) + v88 * v19, v35);
      v20 = *(v9 + 56) + 168 * v19;
      v21 = v71;
      *v20 = v73;
      *(v20 + 8) = v21;
      *(v20 + 16) = v72;
      *(v20 + 20) = *(v93 + 3);
      *(v20 + 17) = v93[0];
      v22 = v75;
      *(v20 + 24) = v77;
      *(v20 + 32) = v22;
      *(v20 + 40) = v74;
      *(v20 + 41) = v76;
      *(v20 + 46) = v91;
      *(v20 + 42) = v90;
      v23 = v79;
      *(v20 + 48) = v78;
      *(v20 + 64) = v23;
      v24 = v81;
      *(v20 + 80) = v82;
      *(v20 + 88) = v24;
      *(v20 + 96) = v80;
      *(v20 + 97) = v92[0];
      *(v20 + 100) = *(v92 + 3);
      v25 = v84;
      *(v20 + 104) = v83;
      *(v20 + 120) = v25;
      *(v20 + 136) = v85;
      v26 = v86;
      *(v20 + 152) = v87;
      *(v20 + 160) = v26;
      ++*(v9 + 16);
      v16 = v89;
    }

    v29 = v10;
    while (1)
    {
      v10 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v17)
      {
        break;
      }

      v30 = v12[v10];
      ++v29;
      if (v30)
      {
        v27 = __clz(__rbit64(v30));
        v28 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v69 & 1) == 0)
    {

      v3 = v63[0];
      goto LABEL_35;
    }

    v61 = v68;
    v62 = 1 << *(v68 + 32);
    v3 = v63[0];
    if (v62 >= 64)
    {
      bzero(v12, ((v62 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v62;
    }

    *(v61 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
}

void sub_20BA07354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767A50, &qword_20C154DE8);
  v34 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_20B6B3B74(v24, v35);
      }

      else
      {
        sub_20B51F1D8(v24, v35);
      }

      sub_20C13E164();
      sub_20C13CA64();
      v25 = sub_20C13E1B4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_20B6B3B74(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_20BA0760C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769600, &qword_20C154D30);
  v38 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_20C13E164();
      sub_20C13CA64();
      v28 = sub_20C13E1B4();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA078CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_20C132EE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769280, &qword_20C154CC8);
  v39 = v4;
  v10 = sub_20C13DE74();
  v11 = v10;
  if (*(v9 + 16))
  {
    v43 = v8;
    v44 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = v10 + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v44);
        v41 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v36)(v43, v25, v44);
        v41 = *(*(v9 + 56) + 16 * v23);
        swift_unknownObjectRetain();
      }

      sub_20B51CCC8(&qword_27C7675A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v26 = sub_20C13C7B4();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v42 * v19), v43, v44);
      *(*(v11 + 56) + 16 * v19) = v41;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_20BA07CA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639C8, &qword_20C154CD8);
  v36 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v36 & 1) == 0)
      {
        v25 = v21;
      }

      v26 = sub_20C13D5E4();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA07F28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = sub_20C132E94();
  v5 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C132EE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763910, &qword_20C154C00);
  v48 = v4;
  v11 = sub_20C13DE74();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_20B51CCC8(&qword_27C7675A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v32 = sub_20C13C7B4();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_20BA083D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763958, &qword_20C154C58);
  v35 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_20C13E164();
      sub_20C13CA64();
      v25 = sub_20C13E1B4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA08670(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A68, &qword_20C154D90);
  v32 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v21;
      }

      sub_20C13E164();
      sub_20C135464();
      sub_20C13CA64();

      v23 = sub_20C13E1B4();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA0892C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769330, &unk_20C15A800);
  v39 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v39)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v42 = *(v27 + 32);
        v40 = v28;
        v41 = v29;
      }

      else
      {
        sub_20B51D968(v27, &v40);
      }

      sub_20C13E164();
      sub_20C13CA64();
      v30 = sub_20C13E1B4();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v40;
      v19 = v41;
      *(v17 + 32) = v42;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_20BA08C24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763938, &qword_20C154C30);
  v31 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_20C13E164();
      MEMORY[0x20F2F58E0](v20);
      v22 = sub_20C13E1B4();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA08EB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_20C1365F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769270, &unk_20C18E120);
  v41 = v4;
  v10 = sub_20C13DE74();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_20B51CCC8(&qword_27C762F60, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
      v28 = sub_20C13C7B4();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_20BA09274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_20C135214();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769310, &qword_20C168A08);
  v40 = v4;
  v10 = sub_20C13DE74();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_20B51CCC8(&qword_27C762F80, MEMORY[0x277D51640], MEMORY[0x277D51648]);
      v26 = sub_20C13C7B4();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_20BA09650(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769300, &qword_20C168A00);
  v35 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_20C13E164();
      sub_20C13CA64();
      v25 = sub_20C13E1B4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA098F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769258, &qword_20C1689B8);
  v31 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_20C13E164();
      MEMORY[0x20F2F58E0](v20);
      v22 = sub_20C13E1B4();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA09B94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v34 = v6;
  v8 = sub_20C13DE74();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v34 & 1) == 0)
      {
        v24 = v23;
      }

      sub_20C13E164();
      MEMORY[0x20F2F58E0](v22);
      v25 = sub_20C13E1B4();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v4;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_20BA09E18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769240, &qword_20C154C88);
  v36 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_20C13C954();
      sub_20C13E164();
      sub_20C13CA64();
      v25 = sub_20C13E1B4();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA0A0DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7692D0, &qword_20C1689E0);
  v35 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_20C13E164();
      sub_20C13CA64();
      v25 = sub_20C13E1B4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA0A384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A60, &qword_20C154D78);
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      v22 = sub_20C13E154();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_20BA0A5E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769320, &qword_20C154C20);
  v39 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 56 * v21;
      if (v39)
      {
        v44 = *v25;
        v45 = *(v25 + 16);
        v46 = *(v25 + 32);
        v26 = *(v25 + 48);
      }

      else
      {
        v28 = *(v25 + 16);
        v27 = *(v25 + 32);
        v29 = *v25;
        v43 = *(v25 + 48);
        v41 = v28;
        v42 = v27;
        v40 = v29;

        sub_20B7600B4(&v40, &v44);
        v44 = v40;
        v45 = v41;
        v46 = v42;
        v26 = v43;
      }

      v47 = v26;
      sub_20C13E164();
      sub_20C13CA64();
      v30 = sub_20C13E1B4();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 56 * v15;
      *v17 = v44;
      *(v17 + 16) = v45;
      *(v17 + 32) = v46;
      *(v17 + 48) = v47;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_20BA0A918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A40, &qword_20C154D58);
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v32 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      v22 = sub_20C13D5E4();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v32;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_20BA0ABC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7695C0, &qword_20C154D50);
  v31 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
      }

      sub_20C13E164();
      MEMORY[0x20F2F58E0]([v20 hash]);
      v22 = sub_20C13E1B4();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA0AE6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_20C133244();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A20, &unk_20C1556E0);
  v41 = v4;
  v10 = sub_20C13DE74();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_20B51CCC8(&qword_27C764180, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
      v28 = sub_20C13C7B4();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_20BA0B22C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769260, &qword_20C1689C0);
  v39 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = v23[1];
      v40 = *v23;
      v25 = *(v5 + 56) + v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      if ((v39 & 1) == 0)
      {

        sub_20B8E083C(v26, v27);
      }

      sub_20C13E164();
      sub_20C13CA64();
      v28 = sub_20C13E1B4();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v40;
      v17[1] = v24;
      v18 = *(v7 + 56) + v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      ++*(v7 + 16);
      v5 = v38;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA0B4FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7692F8, &qword_20C1689F8);
  v35 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v36 = *(*(v5 + 56) + v21);
      if ((v35 & 1) == 0)
      {

        v25 = v36;
      }

      sub_20C13E164();
      sub_20C13CA64();
      v26 = sub_20C13E1B4();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v36;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA0B7DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_20C132FD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A00, &qword_20C154D18);
  v40 = v4;
  v10 = sub_20C13DE74();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_20B51CCC8(&unk_27C7646C0, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
      v26 = sub_20C13C7B4();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_20BA0BBB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B980, &qword_20C154CF8);
  v31 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + v19);
      v32 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v31 & 1) == 0)
      {
      }

      sub_20C13E164();
      sub_20C13E184();
      if (v21)
      {
        sub_20C13CA64();
      }

      v22 = sub_20C13E1B4();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
}

void sub_20BA0BE8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769350, &unk_20C154D40);
  v31 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_20C13E164();
      sub_20C137B44();
      sub_20C13CA64();

      v22 = sub_20C13E1B4();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA0C14C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_20C13DE74();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_20C13E164();
      sub_20C13CA64();
      v27 = sub_20C13E1B4();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_20BA0C414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769238, &qword_20C1689B0);
  v39 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v40 = *(v26 + 8);
      if ((v39 & 1) == 0)
      {
        v28 = v27;
      }

      sub_20C13E164();
      sub_20C13CA64();
      v29 = sub_20C13E1B4();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v40;
      ++*(v7 + 16);
      v5 = v38;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA0C6EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = sub_20C13DE74();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      v24 = sub_20C13E154();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_20BA0C954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A88, &qword_20C154DB8);
  v34 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_20C13E164();
      sub_20C13CA64();
      v25 = sub_20C13E1B4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA0CC48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7692B0, &qword_20C1689D0);
  v37 = v4;
  v8 = sub_20C13DE74();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = 0x800000020C191AD0;
    v16 = v8 + 64;
    while (v14)
    {
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v25 = v22 | (v10 << 6);
      v26 = *(*(v7 + 48) + v25);
      v27 = *(v36 + 72);
      v28 = *(v7 + 56) + v27 * v25;
      if (v37)
      {
        sub_20BA1587C(v28, v38, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
      }

      else
      {
        sub_20BA15784(v28, v38);
      }

      sub_20C13E164();
      sub_20C13CA64();

      v17 = sub_20C13E1B4();
      v18 = -1 << *(v9 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v16 + 8 * (v19 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v18) >> 6;
        while (++v20 != v30 || (v29 & 1) == 0)
        {
          v31 = v20 == v30;
          if (v20 == v30)
          {
            v20 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v20);
          if (v32 != -1)
          {
            v21 = __clz(__rbit64(~v32)) + (v20 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v16 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v16 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v9 + 48) + v21) = v26;
      sub_20BA1587C(v38, *(v9 + 56) + v27 * v21, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
      ++*(v9 + 16);
    }

    v23 = v10;
    while (1)
    {
      v10 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v24 = v11[v10];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v14 = (v24 - 1) & v24;
        goto LABEL_16;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
}

void sub_20BA0D09C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A38, &qword_20C154D38);
  v34 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v35 = *v22;
      if ((v34 & 1) == 0)
      {
      }

      sub_20C13E164();
      v24 = sub_20C137F94();
      MEMORY[0x20F2F58E0](v24);
      v25 = sub_20C13E1B4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v35;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20BA0D340(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763920, &qword_20C154C10);
  v40 = v4;
  v10 = sub_20C13DE74();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_20B51CCC8(&unk_27C769340, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      v26 = sub_20C13C7B4();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_20BA0D744(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_20C132EE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763950, &qword_20C154C50);
  v40 = v4;
  v10 = sub_20C13DE74();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_20B51CCC8(&qword_27C7675A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v26 = sub_20C13C7B4();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_20BA0DB20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769290, &qword_20C1689C8);
  v41 = v4;
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      if (v41)
      {
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v5 + 56) + 56 * v20;
        v42 = *v22;
        v43 = *(v22 + 16);
        v23 = *(v22 + 28);
        v44 = *(v22 + 29);
        v45 = *(v22 + 24);
        v46 = *(v22 + 32);
        v24 = *(v22 + 40);
        v25 = *(v22 + 48);
      }

      else
      {
        v26 = *(*(v5 + 48) + 8 * v20);
        v27 = *(v5 + 56) + 56 * v20;
        v25 = *(v27 + 48);
        v28 = *v27;
        v29 = *(v27 + 32);
        v49 = *(v27 + 16);
        v50 = v29;
        v48 = v28;
        v51 = v25;
        v46 = v29;
        v24 = BYTE8(v29);
        v44 = BYTE13(v49);
        v45 = DWORD2(v49);
        v23 = BYTE12(v49);
        v43 = v49;
        v42 = v28;
        v21 = v26;
        sub_20B7B2490(&v48, v47);
      }

      v30 = sub_20C13D5E4();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v48) = v23;
      v47[0] = v24;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 56 * v15;
      *v16 = v42;
      *(v16 + 16) = v43;
      *(v16 + 24) = v45;
      *(v16 + 28) = v23;
      *(v16 + 29) = v44;
      *(v16 + 32) = v46;
      *(v16 + 40) = v24;
      *(v16 + 48) = v25;
      ++*(v7 + 16);
      v5 = v40;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v41)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v39;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_20BA0DEB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v51 = a3(0);
  v10 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v43 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v48 = v9;
  v13 = sub_20C13DE74();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = v5;
    v45 = (v10 + 16);
    v46 = v12;
    v47 = v10;
    v49 = (v10 + 32);
    v21 = v13 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v47 + 72);
      v33 = v28 + v32 * v27;
      if (v48)
      {
        (*v49)(v50, v33, v51);
      }

      else
      {
        (*v45)(v50, v33, v51);
      }

      sub_20C13E164();
      sub_20C13CA64();
      v34 = sub_20C13E1B4();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      (*v49)((*(v14 + 56) + v32 * v22), v50, v51);
      ++*(v14 + 16);
      v12 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v8 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v8 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
}

void sub_20BA0E23C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769220, &qword_20C1689A8);
  v6 = sub_20C13DE74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_20C13E154();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_20BA0E4A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_20C132EE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769200, &qword_20C1689A0);
  v40 = v4;
  v10 = sub_20C13DE74();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_20B51CCC8(&qword_27C7675A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v26 = sub_20C13C7B4();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_20BA0E890(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  v8 = sub_20C13DE74();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_20C13E164();
      sub_20C13CA64();
      v28 = sub_20C13E1B4();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_20BA0EB2C()
{
  v1 = v0;
  v2 = sub_20C132EE4();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  MEMORY[0x28223BE20](v2);
  v51 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769210, &qword_20C154BF0);
  v5 = *v0;
  v6 = sub_20C13DE64();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v54 = v7;
    v46 = v1;
    v47 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    *(v54 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    v48 = v53 + 32;
    v49 = v53 + 16;
    v50 = v15;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v55 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v11 << 6);
        v20 = v52;
        v21 = v53;
        v22 = *(v53 + 72) * v19;
        v23 = v51;
        (*(v53 + 16))(v51, *(v5 + 48) + v22, v52);
        v19 *= 168;
        v24 = *(v5 + 56) + v19;
        v25 = *(v24 + 48);
        v26 = *(v24 + 64);
        v27 = *(v24 + 96);
        v62 = *(v24 + 80);
        v63 = v27;
        v60 = v25;
        v61 = v26;
        v28 = *(v24 + 112);
        v29 = *(v24 + 128);
        v30 = *(v24 + 144);
        v67 = *(v24 + 160);
        v65 = v29;
        v66 = v30;
        v64 = v28;
        v32 = *(v24 + 16);
        v31 = *(v24 + 32);
        v57 = *v24;
        v58 = v32;
        v59 = v31;
        v33 = v5;
        v34 = v54;
        (*(v21 + 32))(*(v54 + 48) + v22, v23, v20);
        v35 = *(v34 + 56);
        v5 = v33;
        v36 = v35 + v19;
        v37 = v64;
        v38 = v65;
        v39 = v66;
        *(v36 + 160) = v67;
        *(v36 + 128) = v38;
        *(v36 + 144) = v39;
        *(v36 + 112) = v37;
        v40 = v60;
        v41 = v61;
        v42 = v63;
        *(v36 + 80) = v62;
        *(v36 + 96) = v42;
        *(v36 + 48) = v40;
        *(v36 + 64) = v41;
        v44 = v58;
        v43 = v59;
        *v36 = v57;
        *(v36 + 16) = v44;
        *(v36 + 32) = v43;
        sub_20B622224(&v57, &v56);
        v15 = v50;
        v14 = v55;
      }

      while (v55);
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v1 = v46;
        v7 = v54;
        goto LABEL_18;
      }

      v18 = *(v47 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v55 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_20BA0EE38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767A50, &qword_20C154DE8);
  v2 = *v0;
  v3 = sub_20C13DE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_20B51F1D8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_20B6B3B74(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_20BA0EFDC()
{
  v1 = v0;
  v30 = sub_20C132EE4();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769280, &qword_20C154CC8);
  v3 = *v0;
  v4 = sub_20C13DE64();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    v27 = v32 + 32;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
      swift_unknownObjectRetain();
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_20BA0F25C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639C8, &qword_20C154CD8);
  v2 = *v0;
  v3 = sub_20C13DE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_20BA0F3CC()
{
  v1 = v0;
  v41 = sub_20C132E94();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C132EE4();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763910, &qword_20C154C00);
  v4 = *v0;
  v5 = sub_20C13DE64();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_20BA0F720()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763958, &qword_20C154C58);
  v2 = *v0;
  v3 = sub_20C13DE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_20BA0F888()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A68, &qword_20C154D90);
  v2 = *v0;
  v3 = sub_20C13DE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_20BA0F9F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769330, &unk_20C15A800);
  v2 = *v0;
  v3 = sub_20C13DE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_20B51D968(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_20BA0FBD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763938, &qword_20C154C30);
  v2 = *v0;
  v3 = sub_20C13DE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_20BA0FD80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769300, &qword_20C168A00);
  v2 = *v0;
  v3 = sub_20C13DE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_20BA0FEE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769258, &qword_20C1689B8);
  v2 = *v0;
  v3 = sub_20C13DE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_20BA10058(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_20C13DE64();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_20BA101A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769240, &qword_20C154C88);
  v2 = *v0;
  v3 = sub_20C13DE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_20BA10304()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7692D0, &qword_20C1689E0);
  v2 = *v0;
  v3 = sub_20C13DE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_20BA10474()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A60, &qword_20C154D78);
  v2 = *v0;
  v3 = sub_20C13DE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_20BA105C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769320, &qword_20C154C20);
  v2 = *v0;
  v3 = sub_20C13DE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 56;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        v35 = *(v19 + v17 + 48);
        v33 = v24;
        v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        v28 = v32;
        v29 = v33;
        v30 = v34;
        *(v27 + 48) = v35;
        *(v27 + 16) = v29;
        *(v27 + 32) = v30;
        *v27 = v28;

        sub_20B7600B4(&v32, v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_20BA10774()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A40, &qword_20C154D58);
  v2 = *v0;
  v3 = sub_20C13DE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}