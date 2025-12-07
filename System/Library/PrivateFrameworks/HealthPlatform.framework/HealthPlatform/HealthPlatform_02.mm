uint64_t sub_228421FFC@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sharableModelReferences];
  type metadata accessor for SharableModelReference();
  sub_228428BB0(&qword_280DED6B8, type metadata accessor for SharableModelReference, MEMORY[0x277D85378]);
  v4 = sub_22855D51C();

  sub_2284200C4(v4);
  v6 = v5;

  v7 = sub_228429AB8(v6);

  *a2 = v7;
  return result;
}

void sub_2284220D0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a2 managedObjectContext];
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = sub_22842AFCC(v2, v5, v6);

    sub_228429950(v7, type metadata accessor for SharableModelReference, &qword_280DED6B8, type metadata accessor for SharableModelReference, sub_228482FB0);

    type metadata accessor for SharableModelReference();
    sub_228428BB0(&qword_280DED6B8, type metadata accessor for SharableModelReference, MEMORY[0x277D85378]);
    v8 = sub_22855D50C();

    [v6 setSharableModelReferences_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void FeedItem.associatedSharableModelReferences.setter(uint64_t a1)
{
  v3 = [v1 managedObjectContext];
  if (v3)
  {
    v4 = v3;
    v5 = v1;
    v6 = sub_22842AFCC(a1, v4, v5);

    sub_228429950(v6, type metadata accessor for SharableModelReference, &qword_280DED6B8, type metadata accessor for SharableModelReference, sub_228482FB0);

    type metadata accessor for SharableModelReference();
    sub_228428BB0(&qword_280DED6B8, type metadata accessor for SharableModelReference, MEMORY[0x277D85378]);
    v7 = sub_22855D50C();

    [v5 setSharableModelReferences_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void (*FeedItem.associatedSharableModelReferences.modify(uint64_t **a1))(id **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[1] = v2;
  v6 = [v2 sharableModelReferences];
  v5[2] = type metadata accessor for SharableModelReference();
  v5[3] = sub_228428BB0(&qword_280DED6B8, type metadata accessor for SharableModelReference, MEMORY[0x277D85378]);
  v7 = sub_22855D51C();

  sub_2284200C4(v7);
  v9 = v8;
  v5[4] = 0;

  v10 = sub_228429AB8(v9);

  *v5 = v10;
  return sub_228422558;
}

void sub_228422558(id **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if ((a2 & 1) == 0)
  {
    v11 = [(*a1)[1] managedObjectContext];
    if (v11)
    {
      v12 = v2[1];
      v13 = v11;
      v14 = v12;
      v15 = sub_22842AFCC(v3, v13, v14);

      sub_228429950(v15, type metadata accessor for SharableModelReference, &qword_280DED6B8, type metadata accessor for SharableModelReference, sub_228482FB0);

      v16 = sub_22855D50C();

      [v14 setSharableModelReferences_];

      goto LABEL_6;
    }

LABEL_9:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v5 = [v4 managedObjectContext];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = v2[1];
  v8 = v6;
  v9 = sub_22842AFCC(v3, v8, v7);

  sub_228429950(v9, type metadata accessor for SharableModelReference, &qword_280DED6B8, type metadata accessor for SharableModelReference, sub_228482FB0);

  v10 = sub_22855D50C();

  [v7 setSharableModelReferences_];

LABEL_6:

  free(v2);
}

uint64_t sub_22842280C(uint64_t a1)
{
  sub_22842B224(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_22842B288(a1, &v6 - v3, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  return FeedItem.relevantDateInterval.setter(v4);
}

uint64_t FeedItem.relevantDateInterval.setter(uint64_t a1)
{
  v2 = sub_22855BE1C();
  v43 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22842B224(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v42 = &v38 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = sub_22855C16C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v39 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  v45 = a1;
  sub_22842B288(a1, v14, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  v21 = type metadata accessor for RelevantDateInterval(0);
  v46 = *(*(v21 - 8) + 48);
  v22 = v46(v14, 1, v21);
  v40 = v16;
  v41 = v2;
  if (v22 == 1)
  {
    sub_22842B308(v14, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v23 = 0;
  }

  else
  {
    v24 = v43;
    (*(v43 + 16))(v4, v14, v2);
    sub_22842C018(v14, type metadata accessor for RelevantDateInterval);
    sub_22855BE0C();
    (*(v24 + 8))(v4, v2);
    v23 = sub_22855C10C();
    (*(v16 + 8))(v20, v15);
  }

  v25 = v47;
  [v47 setRelevantStartDate_];

  v26 = v45;
  sub_22842B288(v45, v12, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  v27 = v46;
  if (v46(v12, 1, v21) == 1)
  {
    sub_22842B308(v12, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v28 = 0;
  }

  else
  {
    v29 = v43;
    v30 = v41;
    (*(v43 + 16))(v4, v12, v41);
    sub_22842C018(v12, type metadata accessor for RelevantDateInterval);
    v31 = v39;
    sub_22855BDEC();
    (*(v29 + 8))(v4, v30);
    v27 = v46;
    v32 = sub_22855C10C();
    v25 = v47;
    v28 = v32;
    (*(v40 + 8))(v31, v15);
  }

  [v25 setRelevantEndDate_];

  v33 = v42;
  sub_22842B288(v26, v42, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  if (v27(v33, 1, v21) == 1)
  {
    sub_22842B308(v33, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v34 = 0.0;
  }

  else
  {
    v34 = *(v33 + *(v21 + 20));
    sub_22842C018(v33, type metadata accessor for RelevantDateInterval);
  }

  v35 = v44;
  [v25 setRelevantRampUpTime_];
  sub_22842B288(v26, v35, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  if (v27(v35, 1, v21) == 1)
  {
    sub_22842B308(v35, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v36 = 0.0;
  }

  else
  {
    v36 = *(v35 + *(v21 + 24));
    sub_22842C018(v35, type metadata accessor for RelevantDateInterval);
  }

  [v25 setRelevantRampDownTime_];
  return sub_22842B308(v26, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
}

void (*FeedItem.relevantDateInterval.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_22842B224(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  FeedItem.relevantDateInterval.getter(v5);
  return sub_228422FF8;
}

void sub_228422FF8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_22842B288(*(a1 + 16), v2, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    FeedItem.relevantDateInterval.setter(v2);
    sub_22842B308(v3, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  }

  else
  {
    FeedItem.relevantDateInterval.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

id FeedItem.userInterface.getter()
{
  v1 = [v0 legacyUserInterfaceKind];
  if (v1 <= 5)
  {
    v2 = v1;
    result = [v0 legacyUserInterfaceClassName];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = sub_22855D1AC();

    if (v2)
    {
      return v5;
    }
  }

  return 0;
}

void FeedItem.userInterface.setter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        [v4 setLegacyUserInterfaceKind_];
        v10 = sub_22855D17C();
        [v4 setLegacyUserInterfaceClassName_];
        v7 = a1;
        v8 = a2;
        v9 = 1;
      }

      else
      {
        [v4 setLegacyUserInterfaceKind_];
        v10 = sub_22855D17C();
        [v4 setLegacyUserInterfaceClassName_];
        v7 = a1;
        v8 = a2;
        v9 = 2;
      }
    }

    else
    {
      [v4 setLegacyUserInterfaceKind_];
      v10 = sub_22855D17C();
      [v4 setLegacyUserInterfaceClassName_];
      v7 = a1;
      v8 = a2;
      v9 = 0;
    }

LABEL_11:
    sub_22842B20C(v7, v8, v9);

    return;
  }

  if (a3 == 3)
  {
    [v4 setLegacyUserInterfaceKind_];
    v10 = sub_22855D17C();
    [v4 setLegacyUserInterfaceClassName_];
    v7 = a1;
    v8 = a2;
    v9 = 3;
    goto LABEL_11;
  }

  if (a3 == 4)
  {
    [v4 setLegacyUserInterfaceKind_];
    v10 = sub_22855D17C();
    [v4 setLegacyUserInterfaceClassName_];
    v7 = a1;
    v8 = a2;
    v9 = 4;
    goto LABEL_11;
  }

  [v4 setLegacyUserInterfaceKind_];

  [v4 setLegacyUserInterfaceClassName_];
}

void (*FeedItem.userInterface.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  *a1 = FeedItem.userInterface.getter();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_2284233E0;
}

void sub_2284233E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    sub_22840A934(*a1, v3, v4);
    FeedItem.userInterface.setter(v2, v3, v4);

    sub_22842B20C(v2, v3, v4);
  }

  else
  {
    FeedItem.userInterface.setter(*a1, v3, v4);
  }
}

void FeedItem.hostViewStyle.getter(char *a1@<X8>)
{
  swift_getObjectType();
  v3 = [v1 hostViewStyleRawValue];
  v4 = sub_22855D1AC();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = [v1 hostViewStyleRawValue];
  sub_22855D1AC();

  v9 = sub_22855DFBC();

  if (!v9)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (v9 != 1)
  {
LABEL_7:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v11 = sub_22855CABC();
    __swift_project_value_buffer(v11, qword_280DEEC98);
    v12 = v1;
    v13 = sub_22855CA8C();
    v14 = sub_22855D69C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136446722;
      v17 = sub_22855E34C();
      v19 = sub_2283F8938(v17, v18, &v30);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = [v12 hostViewStyleRawValue];
      v21 = sub_22855D1AC();
      v23 = v22;

      v24 = sub_2283F8938(v21, v23, &v30);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2080;
      v25 = [v12 description];
      v26 = sub_22855D1AC();
      v28 = v27;

      v29 = sub_2283F8938(v26, v28, &v30);

      *(v15 + 24) = v29;
      _os_log_impl(&dword_2283ED000, v13, v14, "%{public}s Unexpected host view style raw value %{public}s for feed item: %s, privacy: .private)", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v16, -1, -1);
      MEMORY[0x22AABAD40](v15, -1, -1);
    }

    goto LABEL_12;
  }

  v10 = 1;
LABEL_13:
  *a1 = v10;
}

void sub_228423744(_BYTE *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_22855D17C();

  [v2 setHostViewStyleRawValue_];
}

void FeedItem.hostViewStyle.setter(_BYTE *a1)
{
  v2 = sub_22855D17C();

  [v1 setHostViewStyleRawValue_];
}

void (*FeedItem.hostViewStyle.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  FeedItem.hostViewStyle.getter((a1 + 8));
  return sub_2284238C4;
}

void sub_2284238C4(void **a1)
{
  v1 = *a1;
  v2 = sub_22855D17C();

  [v1 setHostViewStyleRawValue_];
}

id FeedItem.__allocating_init(context:uniqueIdentifier:userInterface:pluginPackage:userData:dateSubmitted:relevantDateRange:contentKind:searchSectionHint:)(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13, unsigned __int8 a14)
{
  v66 = a7;
  v65 = a6;
  v63 = a4;
  v64 = a5;
  v62 = a2;
  v15 = type metadata accessor for RelevantDateInterval(0);
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x28223BE20](v15);
  v59 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D83D88];
  sub_22842B224(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v18 - 8);
  v58 = &v56 - v19;
  sub_22842B224(0, &qword_280DEE798, MEMORY[0x277CC88A8], v17);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v56 - v21;
  v23 = sub_22855BE1C();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v57 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v56 - v27;
  v67 = *a13;
  v29 = objc_opt_self();
  v30 = sub_22855D17C();
  v31 = [v29 entityForName:v30 inManagedObjectContext:a1];

  if (v31)
  {
    v70 = a12;
    v71 = a11;
    v32 = a10;
    v33 = objc_allocWithZone(v69);
    v68 = v31;
    v69 = a1;
    v34 = [v33 initWithEntity:v31 insertIntoManagedObjectContext:a1];
    v35 = sub_22855D17C();

    [v34 setUniqueIdentifier_];

    FeedItem.userInterface.setter(v63, v64, v65);
    v36 = sub_22855D17C();

    [v34 setPluginPackage_];

    if (a10 >> 60 == 15)
    {
      v37 = 0;
    }

    else
    {
      sub_22842B3E0(a9, a10);
      v37 = sub_22855C08C();
      sub_22842B378(a9, a10);
    }

    v38 = a14;
    [v34 setUserData_];

    v39 = sub_22855C10C();
    [v34 setDateSubmitted_];

    sub_22842B288(v70, v22, &qword_280DEE798, MEMORY[0x277CC88A8]);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      sub_22842B308(v22, &qword_280DEE798, MEMORY[0x277CC88A8]);
    }

    else
    {
      v40 = *(v24 + 32);
      v40(v28, v22, v23);
      v41 = *(v24 + 16);
      v66 = a10;
      v42 = v57;
      v41(v57, v28, v23);
      v43 = v59;
      v44 = v42;
      v38 = a14;
      v40(v59, v44, v23);
      v45 = v61;
      *&v43[*(v61 + 20)] = 0;
      *&v43[*(v45 + 24)] = 0;
      v46 = v43;
      v47 = v58;
      sub_22842C078(v46, v58, type metadata accessor for RelevantDateInterval);
      (*(v60 + 56))(v47, 0, 1, v45);
      FeedItem.relevantDateInterval.setter(v47);
      v32 = v66;
      (*(v24 + 8))(v28, v23);
    }

    v49 = v68;
    v48 = v69;
    v72 = v67;
    ContentKind.rawValue.getter();
    v50 = sub_22855D17C();

    [v34 setContentKindRawValue_];

    sub_22841E13C();
    if (v38 == 13)
    {
      v51 = 0xFFFFFFFFLL;
    }

    else
    {
      v51 = v38;
    }

    [v34 setSearchSectionHintRawValue_];
    sub_22841E13C();
    v52 = sub_22855D17C();
    [v34 setFavoriteStatusRawValue_];

    v53 = sub_22855D17C();
    [v34 setHostViewStyleRawValue_];

    sub_22842B378(a9, v32);
    sub_22842B308(v70, &qword_280DEE798, MEMORY[0x277CC88A8]);
    v54 = sub_22855C16C();
    (*(*(v54 - 8) + 8))(v71, v54);
    return v34;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t FeedItem.addFeatureTag<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getDynamicType();
  v9 = (*(*(a3 + 8) + 16))(a2);
  v11 = v10;
  v12 = (*(a4 + 16))(a2, a4);
  v14 = v13;
  v15 = [v5 managedObjectContext];
  if (v15)
  {
    v16 = v15;
    _s14HealthPlatform8FeedItemC9removeTag4nameySS_tF_0(v9, v11);
    type metadata accessor for EncodedFeatureTag();
    v17 = v16;
    sub_22842B3E0(v12, v14);
    v18 = EncodedFeatureTag.__allocating_init(context:name:data:)(v17, v9, v11, v12, v14);
    [v5 addFeatureTagsObject_];

    return sub_22842B38C(v12, v14);
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void FeedItem.addFeatureTag(name:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = [v4 managedObjectContext];
  if (v9)
  {
    v10 = v9;
    _s14HealthPlatform8FeedItemC9removeTag4nameySS_tF_0(a1, a2);
    type metadata accessor for EncodedFeatureTag();
    v11 = v10;

    sub_22842B3E0(a3, a4);
    v12 = EncodedFeatureTag.__allocating_init(context:name:data:)(v11, a1, a2, a3, a4);
    [v4 addFeatureTagsObject_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

void FeedItem.featureTag<A>(kind:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v6 = [v5 featureTags];
  type metadata accessor for EncodedFeatureTag();
  sub_228428BB0(qword_280DED8F8, type metadata accessor for EncodedFeatureTag, MEMORY[0x277D85378]);
  v7 = sub_22855D51C();

  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22855DAFC();
    sub_22855D56C();
    v8 = v28[1];
    v9 = v28[2];
    v10 = v28[3];
    v11 = v28[4];
    v12 = v28[5];
  }

  else
  {
    v13 = -1 << *(v7 + 32);
    v9 = (v7 + 56);
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

    v12 = (v15 & *(v7 + 56));

    v11 = 0;
    v8 = v7;
  }

  v16 = (v10 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v17 = v11;
  v18 = v12;
  v19 = v11;
  if (v12)
  {
LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (v21)
    {
      while (1)
      {
        v28[0] = v21;
        if (sub_228424600(v28, a1, a2, a3))
        {
          break;
        }

        v11 = v19;
        v12 = v20;
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_22855DB8C())
        {
          swift_dynamicCast();
          v21 = v28[0];
          v19 = v11;
          v20 = v12;
          if (v28[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_228407958(v8);

      (*(a3 + 16))(v21);

      v22 = 0;
      v23 = a5;
    }

    else
    {
LABEL_19:
      sub_228407958(v8);

      v22 = 1;
      v23 = a5;
    }

    (*(*(a2 - 8) + 56))(v23, v22, 1);
  }

  else
  {
    while (1)
    {
      v19 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        goto LABEL_19;
      }

      v18 = v9[v19];
      ++v17;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_228424600(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*a1 name];
  v7 = sub_22855D1AC();
  v9 = v8;

  if (v7 == (*(*(a4 + 8) + 16))(a3) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22855E15C();
  }

  return v12 & 1;
}

void _s14HealthPlatform8FeedItemC9removeTag4nameySS_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = [v2 managedObjectContext];
  if (!v4)
  {
LABEL_28:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v2 featureTags];
  type metadata accessor for EncodedFeatureTag();
  sub_228428BB0(qword_280DED8F8, type metadata accessor for EncodedFeatureTag, MEMORY[0x277D85378]);
  v7 = sub_22855D51C();

  v33 = v5;
  v32 = v3;
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22855DAFC();
    sub_22855D56C();
    v8 = v38;
    v9 = v39;
    v10 = v40;
    v11 = v41;
    v12 = v42;
  }

  else
  {
    v13 = -1 << *(v7 + 32);
    v9 = v7 + 56;
    v14 = ~v13;
    v15 = -v13;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v12 = v16 & *(v7 + 56);

    v10 = v14;
    v11 = 0;
    v8 = v7;
  }

  v17 = (v10 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v18 = v11;
  v19 = v12;
  v20 = v11;
  if (!v12)
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_24;
      }

      v19 = *(v9 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_13:
  v21 = (v19 - 1) & v19;
  v22 = *(*(v8 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
  if (v22)
  {
    while (1)
    {
      v23 = v8;
      v36 = v22;
      v24 = [v22 name];
      v25 = sub_22855D1AC();
      v27 = v26;

      if (v25 == a1 && v27 == a2)
      {
        break;
      }

      v29 = sub_22855E15C();

      if (v29)
      {
        goto LABEL_26;
      }

      v11 = v20;
      v12 = v21;
      v8 = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_15:
      if (sub_22855DB8C())
      {
        swift_dynamicCast();
        v22 = v37;
        v20 = v11;
        v21 = v12;
        if (v37)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

LABEL_26:
    sub_228407958(v23);

    v30 = [v32 featureTags];
    sub_22855D51C();

    v31 = sub_22855D50C();

    [v32 setFeatureTags_];

    [v33 deleteObject_];
  }

  else
  {
LABEL_24:
    sub_228407958(v8);
  }
}

uint64_t FeedItem.numberOfTags.getter()
{
  v1 = [v0 featureTags];
  type metadata accessor for EncodedFeatureTag();
  sub_228428BB0(qword_280DED8F8, type metadata accessor for EncodedFeatureTag, MEMORY[0x277D85378]);
  v2 = sub_22855D51C();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_22855DB4C();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return v3;
}

Swift::Void __swiftcall FeedItem.removeAllTags()()
{
  v1 = [v0 managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v20 = v0;
    v3 = [v0 featureTags];
    type metadata accessor for EncodedFeatureTag();
    sub_228428BB0(qword_280DED8F8, type metadata accessor for EncodedFeatureTag, MEMORY[0x277D85378]);
    v4 = sub_22855D51C();

    if ((v4 & 0xC000000000000001) != 0)
    {
      sub_22855DAFC();
      sub_22855D56C();
      v4 = v22;
      v5 = v23;
      v6 = v24;
      v7 = v25;
      v8 = v26;
    }

    else
    {
      v7 = 0;
      v9 = -1 << *(v4 + 32);
      v5 = v4 + 56;
      v6 = ~v9;
      v10 = -v9;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v8 = v11 & *(v4 + 56);
    }

    v12 = (v6 + 64) >> 6;
    if (v4 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v13 = v7;
      v14 = v8;
      v15 = v7;
      if (!v8)
      {
        break;
      }

LABEL_13:
      v16 = (v14 - 1) & v14;
      v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
      if (!v17)
      {
LABEL_19:
        sub_228407958(v4);
        v18 = sub_22855D17C();
        v19 = [v20 mutableSetValueForKeyPath_];

        [v19 removeAllObjects];
        return;
      }

      while (1)
      {
        [v2 deleteObject_];

        v7 = v15;
        v8 = v16;
        if ((v4 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_22855DB8C())
        {
          swift_dynamicCast();
          v17 = v21;
          v15 = v7;
          v16 = v8;
          if (v21)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_19;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  sub_22855DEDC();
  __break(1u);
}

uint64_t FeedItem.FeedItemCreationError.hashValue.getter()
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](0);
  return sub_22855E27C();
}

uint64_t sub_228424EE4()
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](0);
  return sub_22855E27C();
}

uint64_t sub_228424F28(uint64_t a1)
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](0);
  return sub_22855E27C();
}

uint64_t static FeedItem.existingFeedItem(with:in:)(uint64_t a1, id a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v3 = [a2 existingObjectWithID:a1 error:v9];
  v4 = v9[0];
  if (!v3)
  {
    v7 = v9[0];
    sub_22855BF3C();

    goto LABEL_5;
  }

  v5 = v3;
  type metadata accessor for FeedItem();
  v2 = swift_dynamicCastClass();
  v6 = v4;
  if (!v2)
  {

    sub_22842B434();
    swift_allocError();
LABEL_5:
    swift_willThrow();
  }

  return v2;
}

uint64_t FeedItem.description.getter()
{
  v29 = sub_22855E2CC();
  v28 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v2 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_228406280(&unk_283B7ECB0);
  swift_arrayDestroy();
  v32[3] = type metadata accessor for FeedItem();
  v32[0] = v0;
  v26[1] = v0;
  sub_22855E28C();
  v27 = v2;
  v26[0] = sub_22855E2BC();
  sub_22855DDCC();
  sub_22855DF8C();
  if (*(&v37 + 1))
  {
    v4 = v3 + 56;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v33 = v35;
      v34[0] = v36;
      v34[1] = v37;
      v6 = *(&v35 + 1);
      if (*(&v35 + 1))
      {
        v7 = v33;
        if (!*(v3 + 16) || (sub_22855E22C(), sub_22855D20C(), v8 = sub_22855E27C(), v9 = -1 << *(v3 + 32), v10 = v8 & ~v9, ((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
        {
LABEL_15:
          v30 = v7;
          v31 = v6;

          MEMORY[0x22AAB92A0](8250, 0xE200000000000000);
          sub_2283F6E48(v34, v32);
          v14 = sub_22855D1BC();
          MEMORY[0x22AAB92A0](v14);

          v15 = v30;
          v16 = v31;
          sub_22842C018(&v33, sub_22842B4D0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_2283F7678(0, *(v5 + 2) + 1, 1, v5);
          }

          v18 = *(v5 + 2);
          v17 = *(v5 + 3);
          if (v18 >= v17 >> 1)
          {
            v5 = sub_2283F7678((v17 > 1), v18 + 1, 1, v5);
          }

          *(v5 + 2) = v18 + 1;
          v19 = &v5[16 * v18];
          *(v19 + 4) = v15;
          *(v19 + 5) = v16;
          goto LABEL_4;
        }

        v11 = ~v9;
        while (1)
        {
          v12 = (*(v3 + 48) + 16 * v10);
          v13 = *v12 == v7 && v6 == v12[1];
          if (v13 || (sub_22855E15C() & 1) != 0)
          {
            break;
          }

          v10 = (v10 + 1) & v11;
          if (((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      sub_22842C018(&v33, sub_22842B4D0);

LABEL_4:
      sub_22855DF8C();
      if (!*(&v37 + 1))
      {
        goto LABEL_21;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_21:

  v32[0] = v5;
  sub_2283F779C(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2283F7928();
  v20 = sub_22855D15C();
  v22 = v21;

  v32[0] = 60;
  v32[1] = 0xE100000000000000;
  *&v35 = swift_getObjectType();
  sub_22842B488();
  v23 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v23);

  MEMORY[0x22AAB92A0](8236, 0xE200000000000000);
  MEMORY[0x22AAB92A0](v20, v22);

  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  v24 = v32[0];
  (*(v28 + 8))(v27, v29);
  return v24;
}

uint64_t sub_228425550(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_22855E22C();
    ContentKind.rawValue.getter();
    sub_22855D20C();

    v4 = sub_22855E27C();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xE500000000000000;
        v9 = 0x7472656C61;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            break;
          case 2:
            v8 = 0xE300000000000000;
            v9 = 7368801;
            break;
          case 3:
            v8 = 0xE700000000000000;
            v9 = 0x656C6369747261;
            break;
          case 4:
            v8 = 0xE800000000000000;
            v9 = 0x79726F6765746163;
            break;
          case 5:
            v8 = 0xE400000000000000;
            v9 = 1635017060;
            break;
          case 6:
            v9 = 0x67676F4C61746164;
            v8 = 0xEB00000000676E69;
            break;
          case 7:
            v9 = 0x6D6D755361746164;
            v8 = 0xEB00000000797261;
            break;
          case 8:
            v9 = 0xD000000000000010;
            v8 = 0x800000022856CF30;
            break;
          case 9:
            v9 = 0xD000000000000010;
            v8 = 0x800000022856CF50;
            break;
          case 0xA:
            v9 = 0xD000000000000010;
            v8 = 0x800000022856CF70;
            break;
          case 0xB:
            v9 = 0x5365727574616566;
            v8 = 0xED00007375746174;
            break;
          case 0xC:
            v8 = 0xE900000000000074;
            goto LABEL_22;
          case 0xD:
            v8 = 0xEF68637261655374;
LABEL_22:
            v9 = 0x6867696C68676968;
            break;
          case 0xE:
            v9 = 0x697461676976616ELL;
            v8 = 0xEA00000000006E6FLL;
            break;
          case 0xF:
            v8 = 0xE600000000000000;
            v9 = 0x617461446F6ELL;
            break;
          case 0x10:
            v9 = 0x726568746FLL;
            break;
          case 0x11:
            v9 = 0x6D726F6674616C70;
            v8 = 0xED00007472656C41;
            break;
          case 0x12:
            v9 = 0x6F69746F6D6F7270;
            v8 = 0xE90000000000006ELL;
            break;
          case 0x13:
            v8 = 0xE600000000000000;
            v9 = 0x74706D6F7270;
            break;
          case 0x14:
            v8 = 0xE700000000000000;
            v9 = 0x656C69666F7270;
            break;
          case 0x15:
            v9 = 0x6E6F6974616C6572;
            v8 = 0xEC00000070696873;
            break;
          case 0x16:
            v8 = 0xE800000000000000;
            v9 = 0x73676E6974746573;
            break;
          case 0x17:
            v8 = 0xE600000000000000;
            v9 = 0x657461647075;
            break;
          case 0x18:
            v8 = 0xE700000000000000;
            v9 = 0x72616265646973;
            break;
          default:
            v9 = 0xD000000000000011;
            v8 = 0x800000022856CEE0;
            break;
        }

        v10 = 0xE500000000000000;
        v11 = 0x7472656C61;
        switch(a1)
        {
          case 1:
            goto LABEL_76;
          case 2:
            v10 = 0xE300000000000000;
            if (v9 != 7368801)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 3:
            v10 = 0xE700000000000000;
            v14 = 0x6C6369747261;
            goto LABEL_55;
          case 4:
            v10 = 0xE800000000000000;
            if (v9 != 0x79726F6765746163)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 5:
            v10 = 0xE400000000000000;
            if (v9 != 1635017060)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 6:
            v15 = 0x67676F4C61746164;
            v16 = 6778473;
            goto LABEL_65;
          case 7:
            v15 = 0x6D6D755361746164;
            v16 = 7959137;
LABEL_65:
            v10 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v9 != v15)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 8:
            v10 = 0x800000022856CF30;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 9:
            v10 = 0x800000022856CF50;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 10:
            v10 = 0x800000022856CF70;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 11:
            v12 = 0x5365727574616566;
            v13 = 0x7375746174;
            goto LABEL_52;
          case 12:
            v10 = 0xE900000000000074;
            goto LABEL_62;
          case 13:
            v10 = 0xEF68637261655374;
LABEL_62:
            if (v9 != 0x6867696C68676968)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 14:
            v10 = 0xEA00000000006E6FLL;
            if (v9 != 0x697461676976616ELL)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 15:
            v10 = 0xE600000000000000;
            if (v9 != 0x617461446F6ELL)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 16:
            if (v9 != 0x726568746FLL)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 17:
            v12 = 0x6D726F6674616C70;
            v13 = 0x7472656C41;
LABEL_52:
            v10 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v9 != v12)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 18:
            v10 = 0xE90000000000006ELL;
            if (v9 != 0x6F69746F6D6F7270)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 19:
            v10 = 0xE600000000000000;
            v11 = 0x74706D6F7270;
LABEL_76:
            if (v9 == v11)
            {
              goto LABEL_77;
            }

            goto LABEL_78;
          case 20:
            v10 = 0xE700000000000000;
            v14 = 0x6C69666F7270;
LABEL_55:
            if (v9 != (v14 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 21:
            v10 = 0xEC00000070696873;
            if (v9 != 0x6E6F6974616C6572)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 22:
            v10 = 0xE800000000000000;
            if (v9 != 0x73676E6974746573)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 23:
            v10 = 0xE600000000000000;
            if (v9 != 0x657461647075)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          case 24:
            v10 = 0xE700000000000000;
            if (v9 != 0x72616265646973)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          default:
            v10 = 0x800000022856CEE0;
            if (v9 != 0xD000000000000011)
            {
              goto LABEL_78;
            }

LABEL_77:
            if (v8 == v10)
            {

              v17 = 1;
              return v17 & 1;
            }

LABEL_78:
            v17 = sub_22855E15C();

            if (v17)
            {
              return v17 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v17 & 1;
            }

            break;
        }
      }
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t FeedItem.isLoggingItem.getter()
{
  v1 = [v0 pinnedContentDomain];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22855D1AC();
    v5 = v4;

    if (v3 == 0xD000000000000026 && 0x800000022856D1B0 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_22855E15C();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t FeedItem.isSummaryItem.getter()
{
  v1 = [v0 pinnedContentDomain];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22855D1AC();
    v5 = v4;

    if (v3 == 0xD000000000000026 && 0x800000022856D180 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_22855E15C();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL sub_228425D94(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE500000000000000;
    v9 = 0x7472656C61;
    switch(*v4)
    {
      case 1:
        break;
      case 2:
        v8 = 0xE300000000000000;
        v9 = 7368801;
        break;
      case 3:
        v8 = 0xE700000000000000;
        v9 = 0x656C6369747261;
        break;
      case 4:
        v8 = 0xE800000000000000;
        v9 = 0x79726F6765746163;
        break;
      case 5:
        v8 = 0xE400000000000000;
        v9 = 1635017060;
        break;
      case 6:
        v9 = 0x67676F4C61746164;
        v8 = 0xEB00000000676E69;
        break;
      case 7:
        v9 = 0x6D6D755361746164;
        v8 = 0xEB00000000797261;
        break;
      case 8:
        v9 = 0xD000000000000010;
        v8 = 0x800000022856CF30;
        break;
      case 9:
        v9 = 0xD000000000000010;
        v8 = 0x800000022856CF50;
        break;
      case 0xA:
        v9 = 0xD000000000000010;
        v8 = 0x800000022856CF70;
        break;
      case 0xB:
        v9 = 0x5365727574616566;
        v8 = 0xED00007375746174;
        break;
      case 0xC:
        v8 = 0xE900000000000074;
        goto LABEL_23;
      case 0xD:
        v8 = 0xEF68637261655374;
LABEL_23:
        v9 = 0x6867696C68676968;
        break;
      case 0xE:
        v9 = 0x697461676976616ELL;
        v8 = 0xEA00000000006E6FLL;
        break;
      case 0xF:
        v8 = 0xE600000000000000;
        v9 = 0x617461446F6ELL;
        break;
      case 0x10:
        v9 = 0x726568746FLL;
        break;
      case 0x11:
        v9 = 0x6D726F6674616C70;
        v8 = 0xED00007472656C41;
        break;
      case 0x12:
        v9 = 0x6F69746F6D6F7270;
        v8 = 0xE90000000000006ELL;
        break;
      case 0x13:
        v8 = 0xE600000000000000;
        v9 = 0x74706D6F7270;
        break;
      case 0x14:
        v8 = 0xE700000000000000;
        v9 = 0x656C69666F7270;
        break;
      case 0x15:
        v9 = 0x6E6F6974616C6572;
        v8 = 0xEC00000070696873;
        break;
      case 0x16:
        v8 = 0xE800000000000000;
        v9 = 0x73676E6974746573;
        break;
      case 0x17:
        v8 = 0xE600000000000000;
        v9 = 0x657461647075;
        break;
      case 0x18:
        v8 = 0xE700000000000000;
        v9 = 0x72616265646973;
        break;
      default:
        v9 = 0xD000000000000011;
        v8 = 0x800000022856CEE0;
        break;
    }

    v10 = 0xE500000000000000;
    v11 = 0x7472656C61;
    switch(a1)
    {
      case 1:
        goto LABEL_77;
      case 2:
        v10 = 0xE300000000000000;
        if (v9 != 7368801)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 3:
        v10 = 0xE700000000000000;
        v14 = 0x6C6369747261;
        goto LABEL_56;
      case 4:
        v10 = 0xE800000000000000;
        if (v9 != 0x79726F6765746163)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 5:
        v10 = 0xE400000000000000;
        if (v9 != 1635017060)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 6:
        v15 = 0x67676F4C61746164;
        v16 = 6778473;
        goto LABEL_66;
      case 7:
        v15 = 0x6D6D755361746164;
        v16 = 7959137;
LABEL_66:
        v10 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v9 != v15)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 8:
        v10 = 0x800000022856CF30;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 9:
        v10 = 0x800000022856CF50;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 10:
        v10 = 0x800000022856CF70;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 11:
        v12 = 0x5365727574616566;
        v13 = 0x7375746174;
        goto LABEL_53;
      case 12:
        v10 = 0xE900000000000074;
        goto LABEL_63;
      case 13:
        v10 = 0xEF68637261655374;
LABEL_63:
        if (v9 != 0x6867696C68676968)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 14:
        v10 = 0xEA00000000006E6FLL;
        if (v9 != 0x697461676976616ELL)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 15:
        v10 = 0xE600000000000000;
        if (v9 != 0x617461446F6ELL)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 16:
        if (v9 != 0x726568746FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 17:
        v12 = 0x6D726F6674616C70;
        v13 = 0x7472656C41;
LABEL_53:
        v10 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v9 != v12)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 18:
        v10 = 0xE90000000000006ELL;
        if (v9 != 0x6F69746F6D6F7270)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 19:
        v10 = 0xE600000000000000;
        v11 = 0x74706D6F7270;
LABEL_77:
        if (v9 == v11)
        {
          goto LABEL_78;
        }

        goto LABEL_2;
      case 20:
        v10 = 0xE700000000000000;
        v14 = 0x6C69666F7270;
LABEL_56:
        if (v9 != (v14 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 21:
        v10 = 0xEC00000070696873;
        if (v9 != 0x6E6F6974616C6572)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 22:
        v10 = 0xE800000000000000;
        if (v9 != 0x73676E6974746573)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 23:
        v10 = 0xE600000000000000;
        if (v9 != 0x657461647075)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      case 24:
        v10 = 0xE700000000000000;
        if (v9 != 0x72616265646973)
        {
          goto LABEL_2;
        }

        goto LABEL_78;
      default:
        v10 = 0x800000022856CEE0;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_2;
        }

LABEL_78:
        if (v8 != v10)
        {
LABEL_2:
          v5 = sub_22855E15C();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

char *sub_2284263F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_22842B224(0, &qword_280DE8F00, sub_22842B828, MEMORY[0x277D84560]);
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

char *sub_228426540(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2283F779C(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_228426664(char *result, int64_t a2, char a3, char *a4)
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
    sub_22842B224(0, &qword_280DE8EF0, sub_22842B740, MEMORY[0x277D84560]);
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

char *sub_2284267E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_27D83F400, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2284269A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_27D83F430, &type metadata for SourceProfile, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228426B00(void *result, int64_t a2, char a3, void *a4)
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
    sub_22840CB74(0, &qword_27D83F488, &qword_27D83F480, &protocol descriptor for DiskHealthExperienceStoreObserver, 0);
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
    sub_22842BFBC(0, &qword_27D83F480, &protocol descriptor for DiskHealthExperienceStoreObserver, 0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228426CC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DE8FB0, &type metadata for PluginSharableModelChange, MEMORY[0x277D84560]);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228426E38(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22842B224(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_22842702C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DEE3B0, &type metadata for FeedItemContextChange, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228427160(void *result, int64_t a2, char a3, void *a4)
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
    sub_22840CB74(0, &qword_280DE8F78, &qword_280DE9F60, MEMORY[0x277D11B90], 1);
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
    sub_22842BFBC(0, &qword_280DE9F60, MEMORY[0x277D11B90], 1);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2284272C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228427870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2284272E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228427E50(a1, a2, a3, *v3, &qword_280DE8F90, &type metadata for Feed.Kind);
  *v3 = result;
  return result;
}

void *sub_228427310(void *a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_27D83F4A0, MEMORY[0x277D10C20], MEMORY[0x277D10C20]);
  *v3 = result;
  return result;
}

void *sub_228427360(void *a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DED028, type metadata accessor for UserProfile, type metadata accessor for UserProfile);
  *v3 = result;
  return result;
}

char *sub_2284273B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228427994(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2284273D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228427AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2284273F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228427BDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228427410(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228427D28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228427430(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228427E50(a1, a2, a3, *v3, &qword_280DEEC88, &type metadata for ContentKind);
  *v3 = result;
  return result;
}

void *sub_228427460(void *a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DE8F30, sub_22842BC38, sub_22842BC38);
  *v3 = result;
  return result;
}

void *sub_2284274B0(void *a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DED040, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

void *sub_228427500(void *a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_27D83F450, type metadata accessor for UnprotectedNotificationContentState, type metadata accessor for UnprotectedNotificationContentState);
  *v3 = result;
  return result;
}

void *sub_228427550(void *a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DE8FC8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_2284275A0(void *a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_27D83F458, type metadata accessor for ProtectedNotificationContentState, type metadata accessor for ProtectedNotificationContentState);
  *v3 = result;
  return result;
}

void *sub_2284275F0(void *a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_27D83F448, MEMORY[0x277CC9578], MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

void *sub_228427640(void *a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DEE3B8, type metadata accessor for PluginFeedItem, type metadata accessor for PluginFeedItem);
  *v3 = result;
  return result;
}

void *sub_228427690(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228427F54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2284276B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2284280B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2284276D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2284281F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2284276F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228428318(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_228427710(void *a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DE8FB8, type metadata accessor for PluginSharableModel, type metadata accessor for PluginSharableModel);
  *v3 = result;
  return result;
}

void *sub_228427760(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228428450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228427780(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2284285AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2284277A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2284286D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2284277C0(void *a1, int64_t a2, char a3)
{
  result = sub_22840AEF8(a1, a2, a3, *v3, &qword_280DE8F58, MEMORY[0x277D11C20], MEMORY[0x277D11C20]);
  *v3 = result;
  return result;
}

void *sub_228427810(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2284287FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228427830(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228428948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_228427850(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_228428A64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_228427870(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228427994(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DED020, &type metadata for PluginFeedItem.SharableModelReference, MEMORY[0x277D84560]);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228427AB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_27D83F490, &type metadata for CachingSharedSummaryTransactionBuilder.SummaryIdentifier, MEMORY[0x277D84560]);
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

void *sub_228427BDC(void *result, int64_t a2, char a3, void *a4)
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
    sub_22842B224(0, &qword_280DE8EC8, sub_2283FBB5C, MEMORY[0x277D84560]);
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
    sub_2283FBB5C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228427D28(char *result, int64_t a2, char a3, char *a4)
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
    sub_22842B224(0, &qword_280DE8F08, sub_22842BE10, MEMORY[0x277D84560]);
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

char *sub_228427E50(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2283F779C(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_228427F54(void *result, int64_t a2, char a3, void *a4)
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
    sub_22840CB74(0, &qword_27D83F438, &qword_27D83F440, &protocol descriptor for CoalescingNotification, 1);
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
    sub_22842BFBC(0, &qword_27D83F440, &protocol descriptor for CoalescingNotification, 1);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2284280B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_27D83F400, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2284281F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_27D83F430, &type metadata for SourceProfile, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228428318(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_280DEE3C0, &type metadata for ContentKind.Group, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228428450(void *result, int64_t a2, char a3, void *a4)
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
    sub_22842BBCC(0, &qword_280DE8F70, &qword_280DE9F40, MEMORY[0x277D11BA0], MEMORY[0x277D84560]);
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
    sub_22842BFBC(0, &qword_280DE9F40, MEMORY[0x277D11BA0], 0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2284285AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_22842B224(0, &qword_280DE8EF0, sub_22842B740, MEMORY[0x277D84560]);
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

char *sub_2284286D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_22842B224(0, &qword_280DE8EF8, type metadata accessor for _HKDataTypeCode, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2284287FC(void *result, int64_t a2, char a3, void *a4)
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
    sub_22842B224(0, &qword_280DE8F28, sub_22842B6A8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22842B6A8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228428948(char *result, int64_t a2, char a3, char *a4)
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
    sub_2283F779C(0, &qword_27D83F418, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_228428A64(void *result, int64_t a2, char a3, void *a4)
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
    sub_22842B224(0, &qword_27D83F408, sub_22842B70C, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22842B70C(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_228428BB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228428C28(uint64_t a1, void *a2)
{
  v4 = v2;
  v5 = a1;
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = (a1 & 0xFFFFFFFFFFFFFF8);
    v7 = sub_22855DB4C();
    result = MEMORY[0x277D84F90];
    if (!v7)
    {
      return result;
    }

    v47 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v44 = sub_22855DAEC();
    v45 = v9;
    v46 = 1;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v7 = *(v5 + 16);
  result = MEMORY[0x277D84F90];
  if (!v7)
  {
    return result;
  }

  v47 = MEMORY[0x277D84F90];
  sub_22855DD4C();
  v10 = sub_22855DAAC();
  v11 = *(v5 + 36);
  v44 = v10;
  v45 = v11;
  v46 = 0;
  v6 = (v5 & 0xFFFFFFFFFFFFFF8);
LABEL_7:
  type metadata accessor for DataType();
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  v12 = 0;
  v37 = v5 + 56;
  v36 = v5 + 64;
  v38 = v7;
  v39 = v5;
  while (v12 < v7)
  {
    v14 = __OFADD__(v12, 1);
    v15 = v12 + 1;
    if (v14)
    {
      goto LABEL_35;
    }

    v42 = v15;
    v16 = v44;
    v17 = v46;
    v18 = v45;
    sub_22845F448(v44, v45, v46, v5);
    v20 = v19;
    v21 = [v19 code];
    sub_22840CB74(0, &qword_280DED008, &qword_280DEEB20, MEMORY[0x277D84D98], 1);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_228560570;
    *(v22 + 56) = MEMORY[0x277D83B88];
    *(v22 + 64) = MEMORY[0x277D83C10];
    *(v22 + 32) = v21;
    *(v22 + 96) = MEMORY[0x277D837D0];
    *(v22 + 104) = sub_22840A7C8();
    *(v22 + 72) = 0x77615265646F63;
    *(v22 + 80) = 0xE700000000000000;
    v6 = sub_22855D62C();
    v23 = sub_22843A288(a2, v6, 1);
    v3 = v4;
    if (v4)
    {
      goto LABEL_41;
    }

    v24 = v23;
    if (v23)
    {
    }

    else
    {
      v25 = objc_opt_self();
      v26 = sub_22855D17C();
      v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:a2];

      v24 = swift_dynamicCastClassUnconditional();
    }

    [v24 setCodeRaw_];

    sub_22855DD1C();
    sub_22855DD5C();
    sub_22855DD6C();
    sub_22855DD2C();
    if (v40)
    {
      if (!v17)
      {
        goto LABEL_39;
      }

      v4 = 0;
      v5 = v39;
      if (sub_22855DB0C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v7 = v38;
      v12 = v42;
      sub_22842C208(0);
      v13 = sub_22855D54C();
      sub_22855DBBC();
      v13(v43, 0);
      if (v42 == v38)
      {
LABEL_32:
        sub_228416CB8(v44, v45, v46);
        return v47;
      }
    }

    else
    {
      if (v17)
      {
        goto LABEL_40;
      }

      v5 = v39;
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v28 = 1 << *(v39 + 32);
      if (v16 >= v28)
      {
        goto LABEL_36;
      }

      v29 = v16 >> 6;
      v30 = *(v37 + 8 * (v16 >> 6));
      if (((v30 >> v16) & 1) == 0)
      {
        goto LABEL_37;
      }

      v4 = 0;
      v3 = v18;
      if (*(v39 + 36) != v18)
      {
        goto LABEL_38;
      }

      v31 = v30 & (-2 << (v16 & 0x3F));
      if (v31)
      {
        v28 = __clz(__rbit64(v31)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v7 = v38;
        v12 = v42;
      }

      else
      {
        v32 = v29 << 6;
        v33 = v29 + 1;
        v34 = (v36 + 8 * v29);
        v7 = v38;
        v12 = v42;
        while (v33 < (v28 + 63) >> 6)
        {
          v35 = *v34++;
          v6 = v35;
          v32 += 64;
          ++v33;
          if (v35)
          {
            sub_228416CB8(v16, v3, 0);
            v28 = __clz(__rbit64(v6)) + v32;
            goto LABEL_31;
          }
        }

        sub_228416CB8(v16, v3, 0);
      }

LABEL_31:
      v44 = v28;
      v45 = v3;
      v46 = 0;
      if (v12 == v7)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:

  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000024, 0x800000022856DE00);
  v43[4] = v3;
  sub_22842BFBC(0, &qword_280DECFE0, MEMORY[0x277D84948], 1);
  sub_22855DDDC();
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

uint64_t sub_2284291F0(uint64_t a1)
{
  v2 = sub_22855C33C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_228428BB0(&qword_280DEE360, MEMORY[0x277D10C20], MEMORY[0x277D10C28]);
  result = MEMORY[0x22AAB95B0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_228482394(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_22842941C(uint64_t a1)
{
  v2 = type metadata accessor for UserProfile(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = *(a1 + 16);
  v16 = sub_228428BB0(qword_280DEDB78, type metadata accessor for UserProfile, &protocol conformance descriptor for UserProfile);
  v41 = v2;
  v17 = MEMORY[0x22AAB95B0](v15, v2, v16);
  v37 = v15;
  if (!v15)
  {
    return v17;
  }

  v18 = 0;
  v36 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v19 = *(v3 + 72);
  while (1)
  {
    v40 = v18;
    sub_22842BF58(v36 + v19 * v18, v14);
    sub_22855E22C();
    v20 = sub_22855C1DC();
    v38 = sub_228428BB0(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v39 = v20;
    sub_22855D14C();
    v21 = sub_22855E27C();
    v22 = -1 << *(v17 + 32);
    v23 = v21 & ~v22;
    if ((*(v17 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v24 = ~v22;
      while (1)
      {
        sub_22842BF58(*(v17 + 48) + v23 * v19, v6);
        if (sub_22855C1AC())
        {
          sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
          if (sub_22855D9AC())
          {
            break;
          }
        }

        sub_22842C018(v6, type metadata accessor for UserProfile);
        v23 = (v23 + 1) & v24;
        if (((*(v17 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      sub_22842C018(v6, type metadata accessor for UserProfile);
      goto LABEL_3;
    }

LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22842BF58(v14, v12);
    v42 = v17;
    v26 = *(v17 + 16);
    if (*(v17 + 24) <= v26)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_228489990();
    }

LABEL_22:
    v17 = v42;
    *(v42 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v23;
    sub_22842C078(v12, *(v17 + 48) + v23 * v19, type metadata accessor for UserProfile);
    v32 = *(v17 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      __break(1u);
      goto LABEL_26;
    }

    *(v17 + 16) = v34;
LABEL_3:
    sub_22842C018(v14, type metadata accessor for UserProfile);
    v18 = v40 + 1;
    if (v40 + 1 == v37)
    {
      return v17;
    }
  }

  v27 = v26 + 1;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_228485E64(v27);
  }

  else
  {
    sub_22848B028(v27);
  }

  v28 = v42;
  sub_22855E22C();
  sub_22855D14C();
  v29 = sub_22855E27C();
  v30 = -1 << *(v28 + 32);
  v23 = v29 & ~v30;
  if (((*(v28 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
    goto LABEL_22;
  }

  v31 = ~v30;
  while (1)
  {
    sub_22842BF58(*(v28 + 48) + v23 * v19, v9);
    if (sub_22855C1AC())
    {
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      if (sub_22855D9AC())
      {
        break;
      }
    }

    sub_22842C018(v9, type metadata accessor for UserProfile);
    v23 = (v23 + 1) & v31;
    if (((*(v28 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_26:
  sub_22842C018(v9, type metadata accessor for UserProfile);
  result = sub_22855E1AC();
  __break(1u);
  return result;
}

uint64_t (*sub_228429950(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(id *, uint64_t (*)(void))))(uint64_t)
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2(0); ; i = v20(0))
  {
    v12 = i;
    v13 = sub_228428BB0(a3, a4, MEMORY[0x277D85378]);
    result = MEMORY[0x22AAB95B0](v10, v12, v13);
    v22 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x22AAB9D20](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      a2 = v16;
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = a2;
    v19 = sub_22855DB4C();
    v20 = v18;
    v10 = v19;
  }

  a4 = result;
  a3 = sub_22855DB4C();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_228429AB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22842BE70();
  result = MEMORY[0x22AAB95B0](v2, &type metadata for PluginFeedItem.SharableModelReference, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_228482E60(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_228429B98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22842BA18();
  result = MEMORY[0x22AAB95B0](v2, &type metadata for ContentKind, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_228483930(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_228429C3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22842B968();
  result = MEMORY[0x22AAB95B0](v2, &type metadata for PluginFeedItem.NotificationIdentifier, v3);
  v9 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v10[0] = *v5;
      v10[1] = v6;
      v10[2] = *(v5 + 32);
      v11 = *(v5 + 48);
      sub_22842B9BC(v10, v8);
      sub_2284842E4(v8, v10);
      v7 = v8[0];

      v5 += 56;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_228429D08(uint64_t a1)
{
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_228428BB0(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x22AAB95B0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_228484698(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_228429EA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22842B914();
  result = MEMORY[0x22AAB95B0](v2, &type metadata for SourceProfile, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_228484978(&v8, v6);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t *sub_228429F58(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22855DB4C())
  {
    v12 = sub_2283EF310(0, a2, a3);
    v13 = sub_22842B880(a4, a2, a3, MEMORY[0x277D85378]);
    result = MEMORY[0x22AAB95B0](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x22AAB9D20](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22855DB4C();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22842A0C4(uint64_t a1, void *a2)
{
  v32 = a2;
  v4 = sub_22855C33C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v35 = v2;
    v31 = v7;
    v40 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v34 = a1 + 56;
    v10 = sub_22855DAAC();
    v36 = *(a1 + 36);
    v11 = type metadata accessor for MeasureIdentifierManagedObject();
    v12 = 0;
    v29 = v5 + 16;
    v30 = v11;
    v27 = v8;
    v28 = (v5 + 8);
    v26 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v15 = v10 >> 6;
      if ((*(v34 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      if (v36 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v33 = v12;
      v16 = v31;
      (*(v5 + 16))(v31, *(a1 + 48) + *(v5 + 72) * v10, v4);
      v17 = v35;
      sub_228491868(v16, v32, 1);
      v35 = v17;
      if (v17)
      {
        goto LABEL_28;
      }

      (*v28)(v16, v4);
      sub_22855DD1C();
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      v13 = 1 << *(a1 + 32);
      if (v10 >= v13)
      {
        goto LABEL_25;
      }

      v18 = *(v34 + 8 * v15);
      if ((v18 & (1 << v10)) == 0)
      {
        goto LABEL_26;
      }

      if (v36 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v10 & 0x3F));
      if (v19)
      {
        v13 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v14 = v27;
      }

      else
      {
        v20 = a1;
        v21 = v15 << 6;
        v22 = v15 + 1;
        v23 = (v26 + 8 * v15);
        v14 = v27;
        while (v22 < (v13 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_228416CB8(v10, v36, 0);
            v13 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        sub_228416CB8(v10, v36, 0);
LABEL_19:
        a1 = v20;
      }

      v12 = v33 + 1;
      v10 = v13;
      if (v33 + 1 == v14)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD00000000000001ALL, 0x800000022856DD90);
    MEMORY[0x22AAB92A0](0xD000000000000011, 0x800000022856DDB0);
    MEMORY[0x22AAB92A0](8250, 0xE200000000000000);
    v37 = v35;
    sub_22842BFBC(0, &qword_280DECFE0, MEMORY[0x277D84948], 1);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22842A4E8(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v38 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v7 = v4 + 56;
    v8 = sub_22855DAAC();
    v9 = *(v4 + 36);
    type metadata accessor for Keyword();
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    v10 = 0;
    v32 = v4 + 64;
    v33 = v5;
    v34 = v9;
    v35 = v4 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      if (v9 != *(v4 + 36))
      {
        goto LABEL_25;
      }

      v37 = v10;
      v13 = v4;
      v14 = (*(v4 + 48) + 16 * v8);
      v15 = *v14;
      v16 = v14[1];
      sub_22840CB74(0, &qword_280DED008, &qword_280DEEB20, MEMORY[0x277D84D98], 1);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_228560580;
      *(v17 + 56) = MEMORY[0x277D837D0];
      *(v17 + 64) = sub_22840A7C8();
      *(v17 + 32) = v15;
      *(v17 + 40) = v16;
      swift_bridgeObjectRetain_n();
      v18 = sub_22855D62C();
      v19 = sub_22843ABBC(a2, v18, 1);
      if (v3)
      {
        goto LABEL_29;
      }

      v20 = v19;
      if (!v19)
      {
        v21 = objc_opt_self();
        v22 = sub_22855D17C();
        v23 = [v21 insertNewObjectForEntityForName:v22 inManagedObjectContext:a2];

        v20 = swift_dynamicCastClassUnconditional();
      }

      v24 = sub_22855D17C();
      [v20 setIdentifier_];

      sub_22855DD1C();
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      v11 = 1 << *(v13 + 32);
      if (v8 >= v11)
      {
        goto LABEL_26;
      }

      v4 = v13;
      v7 = v35;
      v25 = *(v35 + 8 * v12);
      if ((v25 & (1 << v8)) == 0)
      {
        goto LABEL_27;
      }

      LODWORD(v9) = v34;
      if (v34 != *(v4 + 36))
      {
        goto LABEL_28;
      }

      v26 = v25 & (-2 << (v8 & 0x3F));
      if (v26)
      {
        v11 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = 0;
      }

      else
      {
        v27 = v12 << 6;
        v28 = v12 + 1;
        v29 = (v32 + 8 * v12);
        v3 = 0;
        while (v28 < (v11 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_228416CB8(v8, v34, 0);
            v11 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        sub_228416CB8(v8, v34, 0);
      }

LABEL_4:
      v10 = v37 + 1;
      v8 = v11;
      if (v37 + 1 == v33)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD00000000000001CLL, 0x800000022856DD10);
    sub_22842BFBC(0, &qword_280DECFE0, MEMORY[0x277D84948], 1);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22842A950(uint64_t a1, void *a2)
{
  v49 = a2;
  v45 = sub_22855C1DC();
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserProfile(0);
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v53 = v2;
    v58 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v52 = a1 + 56;
    v11 = sub_22855DAAC();
    v54 = *(a1 + 36);
    v48 = type metadata accessor for Profile();
    v12 = 0;
    v43 = 0x800000022856DA90;
    v40 = (v4 + 8);
    v38 = a1 + 64;
    v42 = xmmword_228560570;
    v41 = a1;
    v39 = v9;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v52 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (v54 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v50 = v12;
      v51 = 1 << v11;
      sub_22842BF58(*(a1 + 48) + *(v46 + 72) * v11, v8);
      v16 = v8;
      v17 = *&v8[*(v47 + 20)];
      sub_22840CB74(0, &qword_280DED008, &qword_280DEEB20, MEMORY[0x277D84D98], 1);
      v18 = swift_allocObject();
      *(v18 + 16) = v42;
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 64) = sub_22840A7C8();
      *(v18 + 32) = 0xD000000000000010;
      *(v18 + 40) = v43;
      v19 = [v17 identifier];
      if (!v19)
      {
        goto LABEL_30;
      }

      v20 = v19;
      sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
      *(v18 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
      *(v18 + 104) = sub_22842B880(&qword_280DED0B8, &unk_280DED0C0, 0x277CCAD78, MEMORY[0x277D85388]);
      *(v18 + 72) = v20;
      v21 = sub_22855D62C();
      v22 = v53;
      v23 = sub_22843BE20(v49, v21, 1);
      v53 = v22;
      if (v22)
      {
        goto LABEL_31;
      }

      v24 = v23;
      if (!v23)
      {
        v25 = objc_opt_self();
        v26 = sub_22855D17C();
        v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:v49];

        v24 = swift_dynamicCastClassUnconditional();
      }

      v28 = [v17 identifier];
      v29 = v44;
      sub_22855C1BC();

      v30 = sub_22855C19C();
      (*v40)(v29, v45);
      [v24 setUniqueIdentifier_];

      Profile.hkProfileIdentifier.setter(v17);
      v8 = v16;
      sub_22842C018(v16, type metadata accessor for UserProfile);
      sub_22855DD1C();
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      a1 = v41;
      v13 = 1 << *(v41 + 32);
      if (v11 >= v13)
      {
        goto LABEL_27;
      }

      v31 = *(v52 + 8 * v15);
      if ((v31 & v51) == 0)
      {
        goto LABEL_28;
      }

      if (v54 != *(v41 + 36))
      {
        goto LABEL_29;
      }

      v32 = v31 & (-2 << (v11 & 0x3F));
      if (v32)
      {
        v13 = __clz(__rbit64(v32)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v39;
      }

      else
      {
        v33 = v15 << 6;
        v34 = v15 + 1;
        v14 = v39;
        v35 = (v38 + 8 * v15);
        while (v34 < (v13 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            sub_228416CB8(v11, v54, 0);
            v13 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        sub_228416CB8(v11, v54, 0);
      }

LABEL_4:
      v12 = v50 + 1;
      v11 = v13;
      if (v50 + 1 == v14)
      {
        return v58;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD00000000000001CLL, 0x800000022856DD10);
    v55 = v53;
    sub_22842BFBC(0, &qword_280DECFE0, MEMORY[0x277D84948], 1);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22842AFCC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v24 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v21 = a1 + 56;
    v6 = sub_22855DAAC();
    v22 = *(a1 + 36);
    result = type metadata accessor for SharableModelReference();
    v7 = 0;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v21 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v10 = (*(a1 + 48) + 16 * v6);
      v11 = v10[1];
      v23[0] = *v10;
      v23[1] = v11;

      static SharableModelReference.findOrCreate(pluginSharableModelReference:in:for:)(v23, a2, a3);

      sub_22855DD1C();
      sub_22855DD5C();
      sub_22855DD6C();
      result = sub_22855DD2C();
      v8 = 1 << *(a1 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v12 = *(v21 + 8 * v9);
      if ((v12 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v13 = v12 & (-2 << (v6 & 0x3F));
      if (v13)
      {
        v8 = __clz(__rbit64(v13)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v9 << 6;
        v15 = v9 + 1;
        v16 = (a1 + 64 + 8 * v9);
        while (v15 < (v8 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_228416CB8(v6, v22, 0);
            v8 = __clz(__rbit64(v17)) + v14;
            goto LABEL_4;
          }
        }

        result = sub_228416CB8(v6, v22, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v4)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22842B20C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

void sub_22842B224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22842B288(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22842B224(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22842B308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22842B224(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22842B378(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22842B38C(result, a2);
  }

  return result;
}

uint64_t sub_22842B38C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22842B3E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_22842B434()
{
  result = qword_27D83F3F0;
  if (!qword_27D83F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F3F0);
  }

  return result;
}

unint64_t sub_22842B488()
{
  result = qword_280DE9FC0;
  if (!qword_280DE9FC0)
  {
    type metadata accessor for FeedItem();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE9FC0);
  }

  return result;
}

void sub_22842B4D0(uint64_t a1)
{
  if (!qword_280DEE3E8)
  {
    sub_2283F779C(255, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DEE3E8);
    }
  }
}

unint64_t sub_22842B568()
{
  result = qword_27D83F3F8;
  if (!qword_27D83F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F3F8);
  }

  return result;
}

uint64_t _s21FeedItemCreationErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s21FeedItemCreationErrorOwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_22842B6A8()
{
  if (!qword_280DE9678)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9678);
    }
  }
}

void sub_22842B740(uint64_t a1)
{
  if (!qword_280DE9430)
  {
    type metadata accessor for _HKDataTypeCode(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9430);
    }
  }
}

unint64_t sub_22842B7A8()
{
  result = qword_280DECA88;
  if (!qword_280DECA88)
  {
    sub_22842B224(255, &qword_280DECA90, type metadata accessor for HealthAppOrchestrationServer, MEMORY[0x277D83D88]);
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280DECA88);
  }

  return result;
}

void sub_22842B828()
{
  if (!qword_280DE9508)
  {
    v0 = sub_22855D61C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9508);
    }
  }
}

uint64_t sub_22842B880(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2283EF310(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22842B8C4()
{
  result = qword_27D83F428;
  if (!qword_27D83F428)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27D83F428);
  }

  return result;
}

unint64_t sub_22842B914()
{
  result = qword_280DEC170;
  if (!qword_280DEC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC170);
  }

  return result;
}

unint64_t sub_22842B968()
{
  result = qword_27D83F460;
  if (!qword_27D83F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F460);
  }

  return result;
}

unint64_t sub_22842BA18()
{
  result = qword_280DEC180[0];
  if (!qword_280DEC180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEC180);
  }

  return result;
}

unint64_t sub_22842BA6C()
{
  result = qword_280DE8E88;
  if (!qword_280DE8E88)
  {
    sub_22842BACC(255);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_280DE8E88);
  }

  return result;
}

void sub_22842BACC(uint64_t a1)
{
  if (!qword_280DE8E98)
  {
    type metadata accessor for CachingSharedSummaryTransactionBuilder();
    sub_22842BFBC(255, &qword_280DECFE0, MEMORY[0x277D84948], 1);
    v1 = sub_22855E2FC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE8E98);
    }
  }
}

unint64_t sub_22842BB50()
{
  result = qword_27D83F470;
  if (!qword_27D83F470)
  {
    sub_22842BBCC(255, &qword_27D83F478, &qword_27D83F480, &protocol descriptor for DiskHealthExperienceStoreObserver, MEMORY[0x277D83D88]);
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27D83F470);
  }

  return result;
}

void sub_22842BBCC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22842BFBC(255, a3, a4, 0);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22842BC38(uint64_t a1)
{
  if (!qword_280DE9D18)
  {
    sub_22842BCE4(255);
    type metadata accessor for PluginFeedItem(255);
    sub_228428BB0(&qword_280DE9B18, sub_22842BCE4, MEMORY[0x277CBCC58]);
    v1 = sub_22855CB1C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9D18);
    }
  }
}

void sub_22842BCE4(uint64_t a1)
{
  if (!qword_280DE9B10)
  {
    sub_22842BD78(255);
    sub_228428BB0(&qword_280DE9950, sub_22842BD78, MEMORY[0x277CBCD90]);
    v1 = sub_22855CBAC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9B10);
    }
  }
}

void sub_22842BD78(uint64_t a1)
{
  if (!qword_280DE9948)
  {
    sub_22842B224(255, &qword_280DEE728, type metadata accessor for PluginFeedItem, MEMORY[0x277D83D88]);
    v1 = sub_22855CCCC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9948);
    }
  }
}

void sub_22842BE10()
{
  if (!qword_280DE9510)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9510);
    }
  }
}

unint64_t sub_22842BE70()
{
  result = qword_280DEDAC8;
  if (!qword_280DEDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEDAC8);
  }

  return result;
}

void sub_22842BEC4(uint64_t a1)
{
  if (!qword_280DED220)
  {
    type metadata accessor for SharableModelReference();
    sub_228428BB0(&qword_280DED6B8, type metadata accessor for SharableModelReference, MEMORY[0x277D85378]);
    v1 = sub_22855D55C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED220);
    }
  }
}

uint64_t sub_22842BF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserProfile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22842BFBC(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22842C018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22842C078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22842C0E0(uint64_t a1)
{
  if (!qword_280DED210)
  {
    type metadata accessor for Profile();
    sub_228428BB0(&qword_280DED540, type metadata accessor for Profile, MEMORY[0x277D85378]);
    v1 = sub_22855D55C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED210);
    }
  }
}

void sub_22842C174(uint64_t a1)
{
  if (!qword_27D83F498)
  {
    type metadata accessor for MeasureIdentifierManagedObject();
    sub_228428BB0(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, MEMORY[0x277D85378]);
    v1 = sub_22855D55C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F498);
    }
  }
}

void sub_22842C208(uint64_t a1)
{
  if (!qword_27D83F4A8)
  {
    sub_2283EF310(255, &qword_280DEE7B8, 0x277CCD720);
    sub_22842B880(&qword_280DED1D8, &qword_280DEE7B8, 0x277CCD720, MEMORY[0x277D85378]);
    v1 = sub_22855D55C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F4A8);
    }
  }
}

void sub_22842C2B0(uint64_t a1)
{
  if (!qword_280DED218)
  {
    type metadata accessor for Keyword();
    sub_228428BB0(qword_280DED548, type metadata accessor for Keyword, MEMORY[0x277D85378]);
    v1 = sub_22855D55C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED218);
    }
  }
}

id sub_22842C344(unint64_t a1, uint64_t a2)
{
  v81 = sub_22855BE9C();
  v5 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v84 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v84)
    {
      v69 = a2;
      v70 = v2;
      v91 = MEMORY[0x277D84FA0];
      v92 = MEMORY[0x277D84FA0];
LABEL_4:
      v7 = objc_opt_self();
      v8 = 0;
      v85 = 0;
      v9 = 0;
      v82 = v7;
      v83 = a1 & 0xC000000000000001;
      v74 = a1 & 0xFFFFFFFFFFFFFF8;
      v78 = (v5 + 1);
      v79 = 0;
      v77 = *MEMORY[0x277CBE180];
      v76 = *MEMORY[0x277CBE148];
      v75 = *MEMORY[0x277CBE308];
      v72 = MEMORY[0x277D84FA0];
      v73 = MEMORY[0x277D84FA0];
      v71 = MEMORY[0x277D84FA0];
      while (1)
      {
        v2 = v9;
        if (v83)
        {
          v10 = MEMORY[0x22AAB9D20](v8, a1);
        }

        else
        {
          if (v8 >= *(v74 + 16))
          {
            goto LABEL_51;
          }

          v10 = *(a1 + 8 * v8 + 32);
        }

        v11 = v10;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v86 = v8 + 1;
        v9 = [v10 token];

        v12 = [v11 bundleID];
        a2 = sub_22855D1AC();
        v2 = v13;

        v14 = [v82 mainBundle];
        v15 = [v14 bundleIdentifier];

        if (v15)
        {
          v16 = a1;
          v17 = v9;
          v18 = sub_22855D1AC();
          v5 = v19;

          if (a2 == v18 && v2 == v5)
          {

            v9 = v17;
            a1 = v16;
            goto LABEL_7;
          }

          a2 = sub_22855E15C();

          v9 = v17;
          a1 = v16;
          if (a2)
          {

            goto LABEL_7;
          }
        }

        else
        {
        }

        v5 = (v85 + 1);
        if (__OFADD__(v85, 1))
        {
          goto LABEL_50;
        }

        a2 = [v11 objectIDNotification];
        v20 = v80;
        sub_22855BE3C();
        v21 = sub_22855BE7C();
        result = (*v78)(v20, v81);
        if (!v21)
        {
          __break(1u);
          return result;
        }

        v87 = sub_22855D1AC();
        v88 = v23;
        sub_22855DBEC();
        if (*(v21 + 16) && (v24 = sub_228443C14(v89), (v25 & 1) != 0))
        {
          sub_2283F6E48(*(v21 + 56) + 32 * v24, v90);
          sub_22842D0B4(v89);
          sub_22842D1C4(0);
          if (swift_dynamicCast())
          {
            a2 = v87;
            if ((v87 & 0xC000000000000001) != 0)
            {
              if (!sub_22855DB4C())
              {
                goto LABEL_44;
              }
            }

            else if (!*(v87 + 16))
            {
LABEL_44:

              goto LABEL_29;
            }

            sub_2284E206C(a2, v71);
            v71 = v26;
            v92 = v26;
          }
        }

        else
        {
          sub_22842D0B4(v89);
        }

LABEL_29:
        v87 = sub_22855D1AC();
        v88 = v27;
        sub_22855DBEC();
        if (*(v21 + 16) && (v28 = sub_228443C14(v89), (v29 & 1) != 0))
        {
          sub_2283F6E48(*(v21 + 56) + 32 * v28, v90);
          sub_22842D0B4(v89);
          sub_22842D1C4(0);
          if (swift_dynamicCast())
          {
            a2 = v87;
            if ((v87 & 0xC000000000000001) != 0)
            {
              if (!sub_22855DB4C())
              {
                goto LABEL_46;
              }
            }

            else if (!*(v87 + 16))
            {
LABEL_46:

              goto LABEL_36;
            }

            sub_2284E206C(a2, v73);
            v73 = v30;
          }
        }

        else
        {
          sub_22842D0B4(v89);
        }

LABEL_36:
        v87 = sub_22855D1AC();
        v88 = v31;
        sub_22855DBEC();
        v32 = *(v21 + 16);
        v79 = v5;
        if (v32 && (v33 = sub_228443C14(v89), (v34 & 1) != 0))
        {
          sub_2283F6E48(*(v21 + 56) + 32 * v33, v90);
          sub_22842D0B4(v89);

          sub_22842D1C4(0);
          if (swift_dynamicCast())
          {
            v35 = v87;
            if ((v87 & 0xC000000000000001) != 0)
            {
              if (!sub_22855DB4C())
              {
                goto LABEL_48;
              }
            }

            else if (!*(v87 + 16))
            {
LABEL_48:

              goto LABEL_6;
            }

            sub_2284E206C(v35, v72);
            v37 = v36;

            v72 = v37;
            v91 = v37;
          }

          else
          {
          }
        }

        else
        {

          sub_22842D0B4(v89);
        }

LABEL_6:
        v85 = v5;
LABEL_7:
        ++v8;
        if (v86 == v84)
        {
          goto LABEL_55;
        }
      }
    }

    return 0;
  }

LABEL_52:
  if (sub_22855DB4C() <= 0)
  {
    return 0;
  }

  v69 = a2;
  v70 = v2;
  a2 = MEMORY[0x277D84FA0];
  v91 = MEMORY[0x277D84FA0];
  v92 = MEMORY[0x277D84FA0];
  v84 = sub_22855DB4C();
  if (v84)
  {
    goto LABEL_4;
  }

  v73 = a2;
  v79 = 0;
  v9 = 0;
LABEL_55:
  v38 = v73;
  sub_22852546C(v73);

  sub_22852546C(v39);
  v40 = v91;
  v41 = v92;

  sub_2284E206C(v40, v41);
  sub_2284E206C(v38, v42);
  if ((v43 & 0xC000000000000001) != 0)
  {
    v86 = sub_22855DB4C();
  }

  else
  {
    v86 = *(v43 + 16);
  }

  v44 = v9;

  sub_22842D108(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560670;
  *(inited + 32) = sub_22855D1AC();
  *(inited + 40) = v46;
  sub_22842D1C4(0);
  v48 = v47;
  *(inited + 72) = v47;
  *(inited + 48) = v41;
  *(inited + 80) = sub_22855D1AC();
  *(inited + 88) = v49;
  *(inited + 120) = v48;
  *(inited + 96) = v73;
  *(inited + 128) = sub_22855D1AC();
  *(inited + 136) = v50;
  *(inited + 168) = v48;
  *(inited + 144) = v40;

  v51 = sub_22847C614(inited);
  swift_setDeallocating();
  sub_22842D160();
  swift_arrayDestroy();
  v52 = objc_opt_self();
  sub_22842CDF8(v51);

  v53 = sub_22855D0DC();

  sub_2283EF310(0, &qword_280DED110, 0x277CBE440);
  v54 = sub_22855D39C();
  [v52 mergeChangesFromRemoteContextSave:v53 intoContexts:v54];

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v55 = sub_22855CABC();
  __swift_project_value_buffer(v55, qword_280DEEC98);

  v56 = v70;
  v57 = sub_22855CA8C();
  v58 = sub_22855D6AC();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v89[0] = v85;
    *v59 = 136316418;
    v60 = [v56 debugDescription];
    v61 = sub_22855D1AC();
    v63 = v62;

    v64 = sub_2283F8938(v61, v63, v89);

    *(v59 + 4) = v64;
    *(v59 + 12) = 2048;
    *(v59 + 14) = v79;
    *(v59 + 22) = 2048;
    if ((v41 & 0xC000000000000001) != 0)
    {
      v65 = sub_22855DB4C();
    }

    else
    {
      v65 = *(v41 + 16);
    }

    *(v59 + 24) = v65;

    *(v59 + 32) = 2048;
    if ((v73 & 0xC000000000000001) != 0)
    {
      v66 = sub_22855DB4C();
    }

    else
    {
      v66 = *(v73 + 16);
    }

    *(v59 + 34) = v66;

    *(v59 + 42) = 2048;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v67 = sub_22855DB4C();
    }

    else
    {
      v67 = *(v40 + 16);
    }

    *(v59 + 44) = v67;

    *(v59 + 52) = 2048;
    *(v59 + 54) = v86;
    _os_log_impl(&dword_2283ED000, v57, v58, "%s mergeExternalChanges() merged transactions count: %ld, allInsertedObjectIDs count: %ld, allDeletedObjectIDs count: %ld, allUpdatedObjectIDs count: %ld, total objectsIDs count: %ld", v59, 0x3Eu);
    v68 = v85;
    __swift_destroy_boxed_opaque_existential_0(v85);
    MEMORY[0x22AABAD40](v68, -1, -1);
    MEMORY[0x22AABAD40](v59, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  return v44;
}

uint64_t sub_22842CDF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22842D2A0();
    v2 = sub_22855DF6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2283F6E48(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_228400400(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_228400400(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_228400400(v31, v32);
    result = sub_22855DBCC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_228400400(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_22842D108(uint64_t a1)
{
  if (!qword_280DED018)
  {
    sub_22842D160();
    v1 = sub_22855E12C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED018);
    }
  }
}

void sub_22842D160()
{
  if (!qword_280DED278)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DED278);
    }
  }
}

void sub_22842D1C4(uint64_t a1)
{
  if (!qword_280DED1E8)
  {
    sub_2283EF310(255, &qword_280DED160, 0x277CBE448);
    sub_22842D238();
    v1 = sub_22855D57C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED1E8);
    }
  }
}

unint64_t sub_22842D238()
{
  result = qword_280DED158;
  if (!qword_280DED158)
  {
    sub_2283EF310(255, &qword_280DED160, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED158);
  }

  return result;
}

void sub_22842D2A0()
{
  if (!qword_280DED048)
  {
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED048);
    }
  }
}

uint64_t sub_22842D304()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22842D368()
{
  type metadata accessor for LegacyGenerationExecutor.Planner();

  return swift_allocObject();
}

uint64_t sub_22842D3BC(uint64_t a1)
{
  v2 = sub_22842E10C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22842D3F8(uint64_t a1)
{
  v2 = sub_22842E10C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22842D440@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  result = swift_allocObject();
  *a2 = result;
  return result;
}

uint64_t sub_22842D480(void *a1)
{
  sub_22842E0B0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22842E10C();
  sub_22855E31C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22842D700(uint64_t (*a1)(void), uint64_t a2)
{
  v36[1] = a2;
  v37 = a1;
  v36[0] = sub_22855CABC();
  v3 = *(v36[0] - 8);
  v4 = MEMORY[0x28223BE20](v36[0]);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v36 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v36 - v10;
  v12 = *(v2 + 16);
  v13 = *(v12 + 16);
  os_unfair_lock_lock((v13 + 104));
  if (*(v13 + 16) != 1 || *(v13 + 40) && (*(v13 + 48) & 1) != 0)
  {
    v14 = *(v13 + 40);
    v15 = *(v13 + 56);
    v16 = *(v13 + 88);
    v46[2] = *(v13 + 72);
    v46[3] = v16;
    v46[0] = v14;
    v46[1] = v15;
    v45 = *(v13 + 24);
    v17 = *(v13 + 40);
    v18 = *(v13 + 56);
    v50 = *(v13 + 72);
    v51 = v16;
    v48 = v17;
    v49 = v18;
    v47 = *(v13 + 24);
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 88) = 0u;
    *(v13 + 72) = 0u;
    sub_22842DBD4(&v45, v52);
    sub_22842DC5C(&v47);
    v52[2] = v46[1];
    v52[3] = v46[2];
    v52[4] = v46[3];
    v52[0] = v45;
    v52[1] = v46[0];
    v19 = *&v46[0];
  }

  else
  {
    v19 = 0;
    memset(v52, 0, 80);
  }

  os_unfair_lock_unlock((v13 + 104));
  v44 = v52[0];
  v40 = *(&v52[1] + 8);
  v41 = *(&v52[2] + 8);
  v42 = *(&v52[3] + 8);
  v43 = *(&v52[4] + 1);
  if (v19)
  {
    swift_getObjectType();
    sub_22855C59C();
    v49 = v52[2];
    v50 = v52[3];
    v51 = v52[4];
    v47 = v52[0];
    v48 = v52[1];
    sub_22842DCDC(&v47, &v45);
    v20 = sub_22855CA8C();
    v21 = sub_22855D6AC();
    sub_22842DC5C(v52);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315138;
      v45 = v44;
      *(v46 + 8) = v40;
      v39 = v23;
      *(&v46[1] + 8) = v41;
      *(&v46[2] + 8) = v42;
      *&v46[0] = v19;
      *(&v46[3] + 1) = v43;
      sub_22842DCDC(&v47, &v38);
      v24 = sub_22855D1BC();
      v26 = sub_2283F8938(v24, v25, &v39);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_2283ED000, v20, v21, "[Legacy Generation Orchestration] Beginning background work request %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AABAD40](v23, -1, -1);
      MEMORY[0x22AABAD40](v22, -1, -1);

      sub_22842DC5C(v52);
    }

    else
    {
      sub_22842DC5C(v52);
    }

    (*(v3 + 8))(v11, v36[0]);
  }

  else
  {
    v27 = *(v12 + 16);
    os_unfair_lock_lock((v27 + 104));
    v28 = *(v27 + 16);
    os_unfair_lock_unlock((v27 + 104));
    swift_getObjectType();
    if (v28 == 1)
    {
      sub_22855C59C();
      v29 = sub_22855CA8C();
      v30 = sub_22855D6AC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2283ED000, v29, v30, "[Legacy Generation Orchestration] Foreground generation.", v31, 2u);
        MEMORY[0x22AABAD40](v31, -1, -1);
      }

      (*(v3 + 8))(v9, v36[0]);
    }

    else
    {
      sub_22855C59C();
      v32 = sub_22855CA8C();
      v33 = sub_22855D6AC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_2283ED000, v32, v33, "[Legacy Generation Orchestration] Idle.", v34, 2u);
        MEMORY[0x22AABAD40](v34, -1, -1);
      }

      (*(v3 + 8))(v6, v36[0]);
    }
  }

  return v37(0);
}

uint64_t sub_22842DBD4(uint64_t a1, uint64_t a2)
{
  sub_2283F88E8(0, &qword_280DEBC00, &type metadata for GenerationWorkRequest, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22842DC5C(uint64_t a1)
{
  sub_2283F88E8(0, &qword_280DEBC00, &type metadata for GenerationWorkRequest, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22842DD38(void (*a1)(uint64_t))
{
  v2 = sub_22855C85C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_22855C5CC();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2283F8E08(0, &qword_280DE8F58, MEMORY[0x277D11C20]);
  sub_22855C7DC();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228560580;
  sub_22855C5AC();
  sub_2283F8E08(0, &qword_280DE8F50, sub_22842DFA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228560580;
  *(v5 + 56) = sub_22855C83C();
  *(v5 + 64) = sub_22842E004(&qword_280DE9F08, 255, MEMORY[0x277D11C38], MEMORY[0x277D11C30]);
  __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  sub_22855C84C();
  sub_22855C82C();
  sub_22855C7BC();
  a1(v4);
}

unint64_t sub_22842DFA0()
{
  result = qword_280DE9E80;
  if (!qword_280DE9E80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE9E80);
  }

  return result;
}

uint64_t sub_22842E004(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_22842E0B0(uint64_t a1)
{
  if (!qword_27D83F4B8)
  {
    sub_22842E10C();
    v1 = sub_22855E0EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F4B8);
    }
  }
}

unint64_t sub_22842E10C()
{
  result = qword_27D83F4C0;
  if (!qword_27D83F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F4C0);
  }

  return result;
}

unint64_t sub_22842E174()
{
  result = qword_27D83F4C8;
  if (!qword_27D83F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F4C8);
  }

  return result;
}

unint64_t sub_22842E1CC()
{
  result = qword_27D83F4D0;
  if (!qword_27D83F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F4D0);
  }

  return result;
}

uint64_t sub_22842E258()
{
  result = swift_getKeyPath();
  qword_280DEBC38 = result;
  return result;
}

uint64_t static ContentKindFeatureTag.keyPath.getter()
{
  if (qword_280DEBC40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ContentKindFeatureTag.keyPath.setter(uint64_t a1)
{
  if (qword_280DEBC40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEBC38 = a1;
}

uint64_t (*static ContentKindFeatureTag.keyPath.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280DEBC40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22842E404()
{
  if (qword_280DEBC40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t getEnumTagSinglePayload for ContentKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22842E620()
{
  result = sub_22855D17C();
  qword_280DE93A0 = result;
  return result;
}

id static NSNotificationName.cachedSharedSummaryTransactionCompleted.getter()
{
  if (qword_280DE9398 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE93A0;

  return v1;
}

void sub_22842E6B4()
{
  v1 = [*(v0 + 16) transactionUUID];
  sub_22855C1BC();
}

void *CachingSharedSummaryTransactionBuilder.__allocating_init(transactionBuilder:fallbackTransactionFilter:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_228434304(a1, a2, a3);

  return v6;
}

void *CachingSharedSummaryTransactionBuilder.init(transactionBuilder:fallbackTransactionFilter:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_228434304(a1, a2, a3);

  return v4;
}

uint64_t sub_22842E7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *(v3 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v9 + 16);
  sub_228434624(&v9[4], v13);
  os_unfair_lock_unlock(v9 + 16);
  v10 = v13[0];
  if (v13[0])
  {
    v11 = v13[1];
    v13[0]();
    sub_228416CF8(v10, v11);
  }
}

void sub_22842E900(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    v8 = *(a5 + 40);
    MEMORY[0x28223BE20](a1);
    os_unfair_lock_lock((v8 + 64));
    sub_2284350D8((v8 + 16));
    os_unfair_lock_unlock((v8 + 64));
    a3(0);
  }
}

uint64_t sub_22842E9E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(v2 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v7 + 16);
  sub_228435484(&v7[4], v11);
  os_unfair_lock_unlock(v7 + 16);
  v8 = v11[0];
  if (v11[0])
  {
    v9 = v11[1];
    v11[0]();
    sub_228416CF8(v8, v9);
  }
}

void sub_22842EAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v9[4] = sub_228435038;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2284A72DC;
  v9[3] = &block_descriptor_143;
  v8 = _Block_copy(v9);

  [v6 discardWithCompletion_];
  _Block_release(v8);
}

void sub_22842EBE8(int a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    v9 = [objc_opt_self() defaultCenter];
    if (qword_280DE9398 != -1)
    {
      swift_once();
    }

    [v9 postNotificationName:qword_280DE93A0 object:a5];

    v10 = *(a5 + 40);
    os_unfair_lock_lock((v10 + 64));
    *(v10 + 16) = sub_22847C760(MEMORY[0x277D84F90]);

    os_unfair_lock_unlock((v10 + 64));
    a3(0);
  }
}

uint64_t sub_22842ED08(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *(v3 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v9 + 16);
  sub_228435484(&v9[4], v13);
  os_unfair_lock_unlock(v9 + 16);
  v10 = v13[0];
  if (v13[0])
  {
    v11 = v13[1];
    v13[0]();
    sub_228416CF8(v10, v11);
  }
}

void sub_22842EE1C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a3;
  v9[4] = a4;
  v11[4] = sub_228434FDC;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22842F0A4;
  v11[3] = &block_descriptor_137;
  v10 = _Block_copy(v11);

  [v8 commitAsUrgent:a2 & 1 completion:v10];
  _Block_release(v10);
}

void sub_22842EF20(void *a1, id a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = a1;
    v9 = [v7 defaultCenter];
    if (qword_280DE9398 != -1)
    {
      swift_once();
    }

    [v9 postNotificationName:qword_280DE93A0 object:a3];

    v14 = v8;
    a4(a1, 0);

    v10 = v14;
  }

  else
  {
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v12 = [objc_opt_self() hk:0 error:0 userInfo:?];
      a2 = 0;
      v11 = v12;
    }

    v13 = a2;
    a4(v11, 1);
    v10 = v11;
  }
}

void sub_22842F0A4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_22842F160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *(v3 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v9 + 16);
  sub_228435484(&v9[4], v13);
  os_unfair_lock_unlock(v9 + 16);
  v10 = v13[0];
  if (v13[0])
  {
    v11 = v13[1];
    v13[0]();
    sub_228416CF8(v10, v11);
  }
}

void sub_22842F278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = sub_22855D0DC();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_228434F70;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2284A72DC;
  v10[3] = &block_descriptor_131;
  v9 = _Block_copy(v10);

  [v6 addMetadata:v7 completion:v9];
  _Block_release(v9);
}

uint64_t sub_22842F398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = *(v4 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v11 + 16);
  sub_228435484(&v11[4], v15);
  os_unfair_lock_unlock(v11 + 16);
  v12 = v15[0];
  if (v15[0])
  {
    v13 = v15[1];
    v15[0]();
    sub_228416CF8(v12, v13);
  }
}

void sub_22842F4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 16);
  v11 = sub_22855D17C();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v14[4] = sub_228434F44;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2284A72DC;
  v14[3] = &block_descriptor_125;
  v13 = _Block_copy(v14);

  [v10 removeAllSummariesWithPackage:v11 completion:v13];
  _Block_release(v13);
}

void sub_22842F5E8(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    v8 = *(a5 + 40);
    MEMORY[0x28223BE20](a1);
    os_unfair_lock_lock((v8 + 64));
    sub_228434F54((v8 + 16));
    os_unfair_lock_unlock((v8 + 64));
    a3(0);
  }
}

uint64_t sub_22842F6C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(v3 + 48) + ((v10 << 11) | (32 * v13)));
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[3];
    v37 = v14[2];
    if (*v14 == a2 && v16 == a3)
    {
      v15 = a2;
      goto LABEL_16;
    }

    result = sub_22855E15C();
    if (result)
    {
LABEL_16:

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2284273D0(0, v11[2] + 1, 1);
      }

      v20 = v11[2];
      v19 = v11[3];
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v34 = v11[2];
        v35 = v20 + 1;
        result = sub_2284273D0((v19 > 1), v20 + 1, 1);
        v20 = v34;
        v21 = v35;
      }

      v11[2] = v21;
      v22 = &v11[4 * v20];
      v22[4] = v15;
      v22[5] = v16;
      v22[6] = v37;
      v22[7] = v17;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  v23 = v11[2];
  if (v23)
  {
    v24 = v11 + 7;
    do
    {
      v25 = *(v24 - 3);
      v26 = *(v24 - 2);
      v27 = *(v24 - 1);
      v28 = *v24;

      v29 = sub_228443C58(v25, v26, v27, v28);
      v31 = v30;

      if (v31)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = *a1;
        v40 = *a1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_228447E0C();
          v33 = v40;
        }

        sub_2284D24AC(v29, v33);
        *a1 = v33;
      }

      v24 += 4;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_22842F948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = swift_allocObject();
  v12[2] = v6;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = *(v6 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v14 + 16);
  sub_228435484(&v14[4], v18);
  os_unfair_lock_unlock(v14 + 16);
  v15 = v18[0];
  if (v18[0])
  {
    v16 = v18[1];
    v18[0]();
    sub_228416CF8(v15, v16);
  }
}

void sub_22842FA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 16);
  v13 = sub_22855D17C();
  v14 = sub_22855D39C();
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  v17[4] = sub_228434F14;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2284A72DC;
  v17[3] = &block_descriptor_118;
  v16 = _Block_copy(v17);

  [v12 removeSummariesWithPackage:v13 names:v14 completion:v16];
  _Block_release(v16);
}

void sub_22842FBE0(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    v8 = *(a5 + 40);
    MEMORY[0x28223BE20](a1);
    os_unfair_lock_lock((v8 + 64));
    sub_228434F24((v8 + 16));
    os_unfair_lock_unlock((v8 + 64));
    a3(0);
  }
}

uint64_t sub_22842FCC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v6 = *a1;
  v7 = *(*a1 + 64);
  v41 = *a1 + 64;
  v42 = a1;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v43 = MEMORY[0x277D84F90];
  v44 = a3;
  v47 = a2;
  while (v10)
  {
LABEL_10:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = (*(v6 + 48) + ((v13 << 11) | (32 * v16)));
    result = *v17;
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v21 = *v17 == a2 && v18 == a3;
    v46 = *v17;
    if (!v21)
    {
      result = sub_22855E15C();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    v49[0] = v19;
    v49[1] = v20;
    MEMORY[0x28223BE20](result);
    v39[2] = v49;

    v22 = v48;
    v23 = sub_2284C6D9C(sub_228435468, v39, v45);
    v48 = v22;
    if (v23)
    {
      v40 = v19;
      v24 = v43;
      result = swift_isUniquelyReferenced_nonNull_native();
      v50 = v24;
      if ((result & 1) == 0)
      {
        result = sub_2284273D0(0, *(v24 + 16) + 1, 1);
        v24 = v50;
      }

      v25 = v46;
      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_2284273D0((v26 > 1), v27 + 1, 1);
        v25 = v46;
        v24 = v50;
      }

      *(v24 + 16) = v27 + 1;
      v43 = v24;
      v28 = (v24 + 32 * v27);
      v28[4] = v25;
      v28[5] = v18;
      v28[6] = v40;
      v28[7] = v20;
    }

    else
    {
    }

    a3 = v44;
    a2 = v47;
  }

  v14 = v42;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v11)
    {
      break;
    }

    v10 = *(v41 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      a2 = v47;
      goto LABEL_10;
    }
  }

  v29 = *(v43 + 16);
  if (v29)
  {
    v30 = (v43 + 56);
    do
    {
      v31 = *(v30 - 3);
      v32 = *(v30 - 2);
      v33 = *(v30 - 1);
      v34 = *v30;

      v35 = sub_228443C58(v31, v32, v33, v34);
      LOBYTE(v33) = v36;

      if (v33)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *v14;
        v49[0] = *v14;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_228447E0C();
          v38 = v49[0];
        }

        sub_2284D24AC(v35, v38);
        *v14 = v38;
      }

      v30 += 4;
      --v29;
    }

    while (v29);
  }
}

uint64_t sub_228430004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *(v3 + 40);
  swift_retain_n();

  os_unfair_lock_lock(v9 + 16);
  sub_228435484(&v9[4], v13);
  os_unfair_lock_unlock(v9 + 16);
  v10 = v13[0];
  if (v13[0])
  {
    v11 = v13[1];
    v13[0]();
    sub_228416CF8(v10, v11);
  }
}

void sub_228430144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a1 + 16);
  sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
  v14 = sub_22855D39C();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  v17[4] = a6;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2284A72DC;
  v17[3] = a7;
  v16 = _Block_copy(v17);

  [v13 addSummaries:v14 completion:v16];
  _Block_release(v16);
}

void sub_22843027C(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    v8 = *(a5 + 40);
    MEMORY[0x28223BE20](a1);
    os_unfair_lock_lock((v8 + 64));
    sub_228435450((v8 + 16));
    os_unfair_lock_unlock((v8 + 64));
    a3(0);
  }
}

uint64_t sub_22843035C(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_21;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (result >= 1)
    {
      v4 = 0;
      v31 = a2;
      v32 = a2 & 0xC000000000000001;
      v29 = result;
      v30 = a1;
      while (1)
      {
        v7 = v32 ? MEMORY[0x22AAB9D20](v4) : *(a2 + 8 * v4 + 32);
        v8 = v7;
        v9 = [v7 package];
        v10 = sub_22855D1AC();
        v12 = v11;

        v33 = v8;
        v13 = [v8 name];
        v14 = sub_22855D1AC();
        v16 = v15;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *a1;
        v34 = *a1;
        v19 = sub_228443C58(v10, v12, v14, v16);
        v20 = *(v18 + 16);
        v21 = (a2 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          break;
        }

        a1 = a2;
        if (*(v18 + 24) >= v22)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_228447E0C();
          }
        }

        else
        {
          sub_228444708(v22, isUniquelyReferenced_nonNull_native);
          v23 = sub_228443C58(v10, v12, v14, v16);
          if ((a1 & 1) != (a2 & 1))
          {
            goto LABEL_24;
          }

          v19 = v23;
        }

        if (a1)
        {
          v5 = v34[7];
          v6 = *(v5 + 8 * v19);
          *(v5 + 8 * v19) = v33;
        }

        else
        {
          v34[(v19 >> 6) + 8] |= 1 << v19;
          v24 = (v34[6] + 32 * v19);
          *v24 = v10;
          v24[1] = v12;
          v24[2] = v14;
          v24[3] = v16;
          *(v34[7] + 8 * v19) = v33;
          v25 = v34[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_20;
          }

          v34[2] = v27;
        }

        ++v4;
        result = v29;
        a1 = v30;
        *v30 = v34;
        a2 = v31;
        if (v29 == v4)
        {
          return result;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v28 = a2;
      result = sub_22855DB4C();
      a2 = v28;
      if (!result)
      {
        return result;
      }
    }

    __break(1u);
LABEL_24:
    result = sub_22855E1BC();
    __break(1u);
  }

  return result;
}

uint64_t sub_2284305B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = v6;
  v12[6] = a4;
  v12[7] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = *(v6 + 40);

  swift_retain_n();

  os_unfair_lock_lock(v14 + 16);
  sub_22843471C(&v14[4]);
  os_unfair_lock_unlock(v14 + 16);
}

uint64_t sub_2284306CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v130 = a7;
  v129 = a6;
  v128 = a5;
  v140 = a2;
  v10 = sub_22855CFBC();
  v135 = *(v10 - 8);
  v136 = v10;
  MEMORY[0x28223BE20](v10);
  v134 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855CFEC();
  v132 = *(v12 - 8);
  v133 = v12;
  MEMORY[0x28223BE20](v12);
  v131 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22847C760(MEMORY[0x277D84F90]);
  v137 = a1;
  v138 = v14;
  v15 = a1[1];
  v18 = *(v15 + 64);
  v17 = v15 + 64;
  v16 = v18;
  v19 = 1 << *(a1[1] + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v139 = a1[1];

  v23 = 0;
  v141 = a3;
  v142 = a4;
  while (v21)
  {
LABEL_9:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = *(*(v139 + 56) + ((v23 << 9) | (8 * v25)));
    v27 = v26;
    if (a3)
    {
      v28 = [v26 package];
      v29 = sub_22855D1AC();
      v31 = v30;

      v32 = v29;
      a3 = v141;
      if (v32 == v140 && v31 == v141)
      {
      }

      else
      {
        v34 = sub_22855E15C();

        if ((v34 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    if (!a4 || (v35 = [v27 name], v36 = sub_22855D1AC(), v38 = v37, v35, aBlock = v36, v145 = v38, MEMORY[0x28223BE20](v39), *(&v122 - 2) = &aBlock, LOBYTE(v35) = sub_2284C6D9C(sub_228434EDC, (&v122 - 4), v142), a3 = v141, , a4 = v142, (v35 & 1) != 0))
    {
      v40 = [v27 package];
      v126 = sub_22855D1AC();
      v127 = v41;

      v42 = [v27 name];
      v43 = sub_22855D1AC();
      v125 = v44;

      v124 = v27;
      v45 = v138;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v45;
      v123 = v43;
      v47 = v43;
      v48 = v125;
      v50 = sub_228443C58(v126, v127, v47, v125);
      v51 = v45[2];
      v52 = (v49 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        goto LABEL_64;
      }

      v54 = v49;
      if (v45[3] >= v53)
      {
        a4 = v142;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228447E0C();
          goto LABEL_24;
        }

        a3 = v141;
        if (v49)
        {
          goto LABEL_29;
        }

LABEL_25:
        v57 = aBlock;
        aBlock[(v50 >> 6) + 8] |= 1 << v50;
        v58 = (v57[6] + 32 * v50);
        v59 = v127;
        *v58 = v126;
        v58[1] = v59;
        v58[2] = v123;
        v58[3] = v48;
        v60 = v124;
        *(v57[7] + 8 * v50) = v124;

        v61 = v57[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_66;
        }

        v138 = v57;
        v57[2] = v63;
      }

      else
      {
        sub_228444708(v53, isUniquelyReferenced_nonNull_native);
        v55 = sub_228443C58(v126, v127, v123, v48);
        if ((v54 & 1) != (v56 & 1))
        {
          goto LABEL_68;
        }

        v50 = v55;
LABEL_24:
        a4 = v142;
        a3 = v141;
        if ((v54 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_29:

        v138 = aBlock;
        v64 = aBlock[7];
        v65 = *(v64 + 8 * v50);
        v66 = v124;
        *(v64 + 8 * v50) = v124;
      }
    }

    else
    {
LABEL_19:
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(v17 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_9;
    }
  }

  v67 = *v137 + 64;
  v68 = 1 << *(*v137 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(*v137 + 64);
  v71 = (v68 + 63) >> 6;
  v139 = *v137;

  v72 = 0;
  while (2)
  {
    if (v70)
    {
LABEL_39:
      v74 = __clz(__rbit64(v70));
      v70 &= v70 - 1;
      v75 = *(*(v139 + 56) + ((v72 << 9) | (8 * v74)));
      v76 = v75;
      if (a3)
      {
        v77 = [v75 package];
        v78 = sub_22855D1AC();
        v80 = v79;

        if (v78 == v140 && v80 == v141)
        {
        }

        else
        {
          v82 = sub_22855E15C();

          if ((v82 & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      if (a4)
      {
        v83 = [v76 name];
        v84 = sub_22855D1AC();
        v86 = v85;

        aBlock = v84;
        v145 = v86;
        MEMORY[0x28223BE20](v87);
        *(&v122 - 2) = &aBlock;
        LOBYTE(v83) = sub_2284C6D9C(sub_228435468, (&v122 - 4), v142);

        a4 = v142;
        if ((v83 & 1) == 0)
        {
LABEL_49:

          a3 = v141;
          continue;
        }
      }

      v88 = [v76 package];
      v127 = sub_22855D1AC();
      v137 = v89;

      v90 = [v76 name];
      v91 = sub_22855D1AC();
      v126 = v92;

      v125 = v76;
      v93 = v138;
      v94 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v93;
      v124 = v91;
      v95 = v91;
      v96 = v126;
      v98 = sub_228443C58(v127, v137, v95, v126);
      v99 = v93[2];
      v100 = (v97 & 1) == 0;
      v101 = v99 + v100;
      if (__OFADD__(v99, v100))
      {
        goto LABEL_65;
      }

      v102 = v97;
      if (v93[3] >= v101)
      {
        a4 = v142;
        if (v94)
        {
          a3 = v141;
          if (v97)
          {
LABEL_59:

            v138 = aBlock;
            v111 = aBlock[7];
            v112 = *(v111 + 8 * v98);
            v113 = v125;
            *(v111 + 8 * v98) = v125;

            continue;
          }

          goto LABEL_55;
        }

        sub_228447E0C();
      }

      else
      {
        sub_228444708(v101, v94);
        v103 = sub_228443C58(v127, v137, v124, v96);
        if ((v102 & 1) != (v104 & 1))
        {
          goto LABEL_68;
        }

        v98 = v103;
      }

      a4 = v142;
      a3 = v141;
      if (v102)
      {
        goto LABEL_59;
      }

LABEL_55:
      v105 = aBlock;
      aBlock[(v98 >> 6) + 8] |= 1 << v98;
      v106 = (v105[6] + 32 * v98);
      v107 = v137;
      *v106 = v127;
      v106[1] = v107;
      v106[2] = v124;
      v106[3] = v96;
      v108 = v125;
      *(v105[7] + 8 * v98) = v125;

      v109 = v105[2];
      v62 = __OFADD__(v109, 1);
      v110 = v109 + 1;
      if (v62)
      {
        goto LABEL_67;
      }

      v138 = v105;
      v105[2] = v110;
      continue;
    }

    break;
  }

  while (1)
  {
    v73 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v73 >= v71)
    {

      v114 = swift_allocObject();
      v115 = v130;
      v114[2] = v129;
      v114[3] = v115;
      v114[4] = v138;
      v148 = sub_228434EFC;
      v149 = v114;
      aBlock = MEMORY[0x277D85DD0];
      v145 = 1107296256;
      v146 = sub_228401F54;
      v147 = &block_descriptor_106;
      v116 = _Block_copy(&aBlock);

      v117 = v131;
      sub_22855CFDC();
      v143 = MEMORY[0x277D84F90];
      sub_228435154(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v118 = MEMORY[0x277D85198];
      sub_2283FA2E8(0, &qword_280DED270, MEMORY[0x277D85198]);
      sub_2283F461C(&qword_280DED260, &qword_280DED270, v118);
      v119 = v134;
      v120 = v136;
      sub_22855DA9C();
      MEMORY[0x22AAB98B0](0, v117, v119, v116);
      _Block_release(v116);
      (*(v135 + 8))(v119, v120);
      (*(v132 + 8))(v117, v133);
    }

    v70 = *(v67 + 8 * v73);
    ++v72;
    if (v70)
    {
      v72 = v73;
      goto LABEL_39;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

uint64_t sub_228431144(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  if (v4)
  {
    v7 = sub_2284630BC();
    v8 = sub_228462534(&v12, (v7 + 32), v4, a3);
    v9 = v12;

    sub_228407958(v9);
    if (v8 != v4)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v3 = a1;
  }

  v12 = sub_228434270(v10);
  sub_228432F98(&v12);

  v3(v12, 0);
}

uint64_t sub_22843127C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 package];
  v5 = sub_22855D1AC();
  v7 = v6;

  v8 = [v3 package];
  v9 = sub_22855D1AC();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = 1;
    v14 = sub_22855E15C();

    if (v14)
    {
      return v13 & 1;
    }
  }

  v15 = [v2 package];
  v16 = sub_22855D1AC();
  v18 = v17;

  v19 = [v3 package];
  v20 = sub_22855D1AC();
  v22 = v21;

  if (v20 == v16 && v22 == v18)
  {
  }

  else
  {
    v23 = sub_22855E15C();

    if (v23)
    {
      v13 = 0;
      return v13 & 1;
    }
  }

  v24 = [v2 name];
  v25 = sub_22855D1AC();
  v27 = v26;

  v28 = [v3 name];
  v29 = sub_22855D1AC();
  v31 = v30;

  if (v25 == v29 && v27 == v31)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_22855E15C();
  }

  return v13 & 1;
}

uint64_t sub_2284314B8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22855E15C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22855E15C();
    }
  }

  return result;
}

uint64_t sub_22843155C()
{
  sub_22855E22C();
  sub_22855D20C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_2284315C4(uint64_t a1)
{
  sub_22855D20C();

  return sub_22855D20C();
}

uint64_t sub_228431614(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();
  sub_22855D20C();
  return sub_22855E27C();
}

void sub_228431678()
{
  v1 = *v0;
  v2 = v0[5];
  os_unfair_lock_lock((v2 + 64));
  if (*(v2 + 32))
  {

    os_unfair_lock_unlock((v2 + 64));
  }

  else
  {
    *(v2 + 32) = 1;
    os_unfair_lock_unlock((v2 + 64));
    v3 = v0[2];
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v4 + 24) = v1;
    v6[4] = sub_228434D6C;
    v6[5] = v4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_228431D38;
    v6[3] = &block_descriptor_72;
    v5 = _Block_copy(v6);

    [v3 addedSummariesWithPackage:0 names:0 resultsHandler:v5];
    _Block_release(v5);
  }
}

void sub_2284317D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  os_unfair_lock_lock((v4 + 64));
  sub_228434D74((v4 + 16), &v10);
  os_unfair_lock_unlock((v4 + 64));
  v5 = v10;
  if (v10)
  {
    if (v10 != 1)
    {
      v6 = *(v10 + 16);
      if (v6)
      {
        v7 = v10 + 40;
        do
        {
          v8 = *(v7 - 8);

          v8(v9);

          v7 += 16;
          --v6;
        }

        while (v6);
      }

      sub_228434D9C(v5);
    }
  }

  else
  {
    sub_228431678();
  }
}

void sub_228431898(id a1@<X1>, uint64_t *a2@<X0>, unint64_t a3@<X3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  if (a1)
  {
    v7 = a1;
    v8 = sub_22855BF2C();
    if (([v8 hk_isObjectNotFoundError] & 1) == 0)
    {
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v37 = sub_22855CABC();
      __swift_project_value_buffer(v37, qword_280DEEBF0);
      v38 = a1;
      v39 = sub_22855CA8C();
      v40 = sub_22855D68C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = a2;
        v43 = swift_slowAlloc();
        *v41 = 138412290;
        v44 = a1;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_2283ED000, v39, v40, "Failed to warm shared summary cache: %@", v41, 0xCu);
        sub_22841DC98(v43);
        v46 = v43;
        a2 = v42;
        MEMORY[0x22AABAD40](v46, -1, -1);
        MEMORY[0x22AABAD40](v41, -1, -1);
      }

      v47 = a2[5];
      if (v47 > 2)
      {
        v50 = sub_22847C760(MEMORY[0x277D84F90]);

        *a2 = v50;
        v49 = sub_2284349C8(a2, v8);
      }

      else
      {
        a2[5] = v47 + 1;
        v48 = sub_22847C760(MEMORY[0x277D84F90]);

        *a2 = v48;
        sub_228434D5C(a2[2]);
        v49 = 0;
        a2[2] = 0;
      }

      goto LABEL_38;
    }
  }

  if (!a3)
  {
    goto LABEL_35;
  }

  if (a3 >> 62)
  {
    goto LABEL_34;
  }

  v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_35:
    if (a4)
    {
      sub_228431DE4();
    }

    v49 = 1;
LABEL_38:
    *a5 = v49;
    return;
  }

  while (v9 >= 1)
  {
    v10 = 0;
    v54 = a2;
    v53 = v9;
    while (1)
    {
      v13 = (a3 & 0xC000000000000001) != 0 ? MEMORY[0x22AAB9D20](v10, a3) : *(a3 + 8 * v10 + 32);
      v14 = v13;
      v15 = [v13 package];
      v16 = sub_22855D1AC();
      v18 = v17;

      v56 = v14;
      v19 = [v14 name];
      v20 = sub_22855D1AC();
      v22 = v21;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *a2;
      v57 = *a2;
      v26 = sub_228443C58(v16, v18, v20, v22);
      v27 = *(v24 + 16);
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        break;
      }

      a2 = v25;
      if (*(v24 + 24) >= v29)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v57;
          if (v25)
          {
            goto LABEL_9;
          }
        }

        else
        {
          sub_228447E0C();
          v32 = v57;
          if (a2)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        sub_228444708(v29, isUniquelyReferenced_nonNull_native);
        v30 = sub_228443C58(v16, v18, v20, v22);
        if ((a2 & 1) != (v31 & 1))
        {
          goto LABEL_40;
        }

        v26 = v30;
        v32 = v57;
        if (a2)
        {
LABEL_9:
          v11 = v32[7];
          v12 = *(v11 + 8 * v26);
          *(v11 + 8 * v26) = v56;

          goto LABEL_10;
        }
      }

      v32[(v26 >> 6) + 8] |= 1 << v26;
      v33 = (v32[6] + 32 * v26);
      *v33 = v16;
      v33[1] = v18;
      v33[2] = v20;
      v33[3] = v22;
      *(v32[7] + 8 * v26) = v56;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_33;
      }

      v32[2] = v36;
LABEL_10:
      ++v10;
      a2 = v54;
      *v54 = v32;
      if (v53 == v10)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v9 = sub_22855DB4C();
    if (!v9)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_40:
  sub_22855E1BC();
  __break(1u);
}

uint64_t sub_228431D38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
    v6 = sub_22855D3AC();
  }

  v8 = a4;
  v7(v6, a3, a4);
}

void sub_228431DE4()
{
  v1 = [*(v0 + 16) healthStore];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    *(v3 + 24) = v2;
    v4 = objc_allocWithZone(MEMORY[0x277CCD958]);
    aBlock[4] = sub_2284349A0;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22850D278;
    aBlock[3] = &block_descriptor_1;
    v5 = _Block_copy(aBlock);

    v6 = v2;
    v7 = [v4 initWithHandler_];
    _Block_release(v5);

    [v6 executeQuery_];
  }

  else
  {
    sub_22855DEDC();
    __break(1u);
  }
}

uint64_t sub_228431F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  os_unfair_lock_lock((v4 + 64));
  sub_2284349A8((v4 + 16), &v10);
  os_unfair_lock_unlock((v4 + 64));
  v5 = *(v10 + 16);
  if (v5)
  {
    v6 = v10 + 40;
    do
    {
      v7 = *(v6 - 8);

      v7(v8);

      v6 += 16;
      --v5;
    }

    while (v5);
  }
}

void sub_228432004(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  if (!a1)
  {
    if (a4)
    {
      v21 = (*(a3 + 24))(a4);
      if (v21)
      {
        v22 = v21;
        v23 = objc_allocWithZone(MEMORY[0x277CCD938]);
        v32[4] = sub_228434D30;
        v32[5] = a3;
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 1107296256;
        v32[2] = sub_228432ECC;
        v32[3] = &block_descriptor_63;
        v24 = _Block_copy(v32);

        v25 = [v23 initWithTransaction:v22 package:0 resultsHandler:v24];
        _Block_release(v24);

        [a5 executeQuery_];

        v18 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }

      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v31 = sub_22855CABC();
      __swift_project_value_buffer(v31, qword_280DEEBF0);
      v27 = sub_22855CA8C();
      v28 = sub_22855D68C();
      if (!os_log_type_enabled(v27, v28))
      {
LABEL_19:

        v18 = sub_228434B8C(a2);
        goto LABEL_20;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "No fallback transaction selected.";
    }

    else
    {
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v26 = sub_22855CABC();
      __swift_project_value_buffer(v26, qword_280DEEBF0);
      v27 = sub_22855CA8C();
      v28 = sub_22855D68C();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_19;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "No fallback transactions found.";
    }

    _os_log_impl(&dword_2283ED000, v27, v28, v30, v29, 2u);
    MEMORY[0x22AABAD40](v29, -1, -1);
    goto LABEL_19;
  }

  v9 = a1;
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v10 = sub_22855CABC();
  __swift_project_value_buffer(v10, qword_280DEEBF0);
  v11 = a1;
  v12 = sub_22855CA8C();
  v13 = sub_22855D68C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_2283ED000, v12, v13, "Failed to fetch fallback transactions: %@", v14, 0xCu);
    sub_22841DC98(v15);
    MEMORY[0x22AABAD40](v15, -1, -1);
    MEMORY[0x22AABAD40](v14, -1, -1);
  }

  v18 = sub_228434B8C(a2);
LABEL_20:
  *a6 = v18;
}

uint64_t sub_2284323D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 40);
  os_unfair_lock_lock(v5 + 16);
  sub_228434D38(&v5[4], &v11);
  os_unfair_lock_unlock(v5 + 16);
  v6 = *(v11 + 16);
  if (v6)
  {
    v7 = v11 + 40;
    do
    {
      v8 = *(v7 - 8);

      v8(v9);

      v7 += 16;
      --v6;
    }

    while (v6);
  }
}

void sub_228432478(id a1@<X1>, uint64_t a2@<X0>, unint64_t a3@<X3>, char a4@<W4>, unint64_t a5@<X8>)
{
  v6 = a5;
  if (a1)
  {
    v7 = a1;
    v8 = a1;
    if (qword_280DEEBE8 == -1)
    {
LABEL_3:
      v9 = sub_22855CABC();
      __swift_project_value_buffer(v9, qword_280DEEBF0);
      v10 = v7;
      v11 = sub_22855CA8C();
      v12 = sub_22855D68C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = a2;
        v15 = swift_slowAlloc();
        *v13 = 138412290;
        v16 = v7;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&dword_2283ED000, v11, v12, "Failed to fetch fallback transactions: %@", v13, 0xCu);
        sub_22841DC98(v15);
        v18 = v15;
        a2 = v14;
        MEMORY[0x22AABAD40](v18, -1, -1);
        MEMORY[0x22AABAD40](v13, -1, -1);
      }

      v19 = sub_228434B8C(a2);
LABEL_33:
      *v6 = v19;
      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_3;
  }

  if (!a3)
  {
    goto LABEL_29;
  }

  v21 = a3;
  if (!(a3 >> 62))
  {
    v22 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_9;
    }

LABEL_29:
    if (a4)
    {
      v19 = sub_228434B8C(a2);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v6 = a5;
    goto LABEL_33;
  }

  v22 = sub_22855DB4C();
  v21 = a3;
  if (!v22)
  {
    goto LABEL_29;
  }

LABEL_9:
  if (v22 >= 1)
  {
    v23 = 0;
    v51 = a2;
    v52 = v21 & 0xC000000000000001;
    v49 = v22;
    v50 = v21;
    while (1)
    {
      v26 = v52 ? MEMORY[0x22AAB9D20](v23) : *(v21 + 8 * v23 + 32);
      v27 = v26;
      v28 = [v26 package];
      v29 = sub_22855D1AC();
      v31 = v30;

      v53 = v27;
      v32 = [v27 name];
      v7 = sub_22855D1AC();
      v34 = v33;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(a2 + 8);
      v6 = sub_228443C58(v29, v31, v7, v34);
      v38 = v36[2];
      v39 = (v37 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        break;
      }

      a2 = v37;
      if (v36[3] >= v40)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228447E0C();
        }
      }

      else
      {
        sub_228444708(v40, isUniquelyReferenced_nonNull_native);
        v41 = sub_228443C58(v29, v31, v7, v34);
        if ((a2 & 1) != (v42 & 1))
        {
          goto LABEL_35;
        }

        v6 = v41;
      }

      if (a2)
      {
        v24 = v36[7];
        v25 = *(v24 + 8 * v6);
        *(v24 + 8 * v6) = v53;
      }

      else
      {
        v36[(v6 >> 6) + 8] |= 1 << v6;
        v43 = (v36[6] + 32 * v6);
        *v43 = v29;
        v43[1] = v31;
        v43[2] = v7;
        v43[3] = v34;
        *(v36[7] + 8 * v6) = v53;
        v44 = v36[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_26;
        }

        v36[2] = v46;
      }

      ++v23;
      v21 = v50;
      a2 = v51;
      *(v51 + 8) = v36;
      if (v49 == v23)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __break(1u);
LABEL_35:
  sub_22855E1BC();
  __break(1u);
}

void sub_228432848(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = *(a1 + 16);
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      a4(a1);
    }

    else
    {
      a2(v10);
      sub_228434D5C(v10);
    }
  }

  else
  {
    v11 = *(a1 + 24);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_228426518(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_228426518((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[32 * v13];
    *(v14 + 4) = a4;
    *(v14 + 5) = a5;
    *(v14 + 6) = a2;
    *(v14 + 7) = a3;
    *(a1 + 24) = v11;
  }
}

void sub_228432960()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock(v1 + 16);
  sub_228435484(&v1[4], v4);
  os_unfair_lock_unlock(v1 + 16);
  v2 = v4[0];
  if (v4[0])
  {
    v3 = v4[1];
    v4[0]();
    sub_228416CF8(v2, v3);
  }
}

uint64_t sub_2284329DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v11 = *(a1 + 16);
  if (v11 >= 2)
  {
    v18 = swift_allocObject();
    if (v11 == 2)
    {
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;
      *a6 = sub_2284354D8;
      a6[1] = v18;
    }

    else
    {
      *(v18 + 16) = a2;
      *(v18 + 24) = a3;
      *(v18 + 32) = v11;
      *a6 = sub_228435044;
      a6[1] = v18;
      sub_228435074(v11);
    }
  }

  else
  {
    v13 = *(a1 + 32);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22842652C(0, *(v13 + 16) + 1, 1, v13);
      v13 = result;
    }

    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_22842652C((v15 > 1), v16 + 1, 1, v13);
      v13 = result;
    }

    *(v13 + 16) = v16 + 1;
    v17 = (v13 + 32 * v16);
    v17[4] = a4;
    v17[5] = a5;
    v17[6] = a2;
    v17[7] = a3;
    *(a1 + 32) = v13;
    *a6 = 0;
    a6[1] = 0;
  }

  return result;
}

uint64_t CachingSharedSummaryTransactionBuilder.deinit()
{

  return v0;
}

uint64_t CachingSharedSummaryTransactionBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228432BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_retain_n();

  sub_228432960();
}

uint64_t sub_228432CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  swift_retain_n();

  sub_228432960();
}

uint64_t sub_228432DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  swift_retain_n();

  sub_228432960();
}

uint64_t sub_228432ECC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
    v7 = sub_22855D3AC();
  }

  v10 = a2;
  v11 = a5;
  v9(v10, v7, a4, a5);
}

uint64_t sub_228432F98(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22851FDE8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_228433014(v6);
  return sub_22855DD2C();
}

void sub_228433014(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22855E10C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
        v6 = sub_22855D40C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_228433408(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_228433128(0, v2, 1, a1);
  }
}

void sub_228433128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v44 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v42 = v4;
    v43 = a3;
    v6 = *(v44 + 8 * a3);
    v41 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 package];
      v11 = sub_22855D1AC();
      v13 = v12;

      v14 = [v9 package];
      v15 = sub_22855D1AC();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {
      }

      else
      {
        v19 = sub_22855E15C();

        if (v19)
        {

          goto LABEL_21;
        }
      }

      v20 = [v8 package];
      v21 = sub_22855D1AC();
      v23 = v22;

      v24 = [v9 package];
      v25 = sub_22855D1AC();
      v27 = v26;

      if (v25 == v21 && v27 == v23)
      {
      }

      else
      {
        v28 = sub_22855E15C();

        if (v28)
        {

LABEL_5:
          a3 = v43 + 1;
          v4 = v42 + 8;
          v5 = v41 - 1;
          if (v43 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }
      }

      v29 = [v8 name];
      v30 = sub_22855D1AC();
      v32 = v31;

      v33 = [v9 name];
      v34 = sub_22855D1AC();
      v36 = v35;

      if (v30 == v34 && v32 == v36)
      {

        goto LABEL_5;
      }

      v37 = sub_22855E15C();

      if ((v37 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_21:
      if (!v44)
      {
        __break(1u);
        return;
      }

      v38 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v38;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}