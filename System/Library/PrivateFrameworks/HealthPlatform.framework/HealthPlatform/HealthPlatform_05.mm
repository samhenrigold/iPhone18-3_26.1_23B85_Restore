char *sub_2284562EC(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v19 = a1;
  v3 = *(*v2 + 104);
  v20 = sub_22855DA2C();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v19 - v5;
  swift_unknownObjectWeakInit();
  v7 = *(v3 - 8);
  v8 = *(v7 + 56);
  v8(v2 + *(*v2 + 136), 1, 1, v3);
  v9 = *(*v2 + 144);
  type metadata accessor for UnfairLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *(v10 + 16) = v11;
  *v11 = 0;
  *(v2 + v9) = v10;
  v12 = *(*v2 + 152);
  type metadata accessor for RecursiveUnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *(v13 + 16) = v14;
  *(v2 + v12) = v13;
  *v14 = 0;
  v15 = *(*v2 + 160);
  *(v2 + v15) = sub_22855D0CC();
  v16 = *(*v2 + 168);
  *(v2 + v16) = sub_22855CCAC();
  *(v2 + *(*v2 + 176)) = 0;
  *(v2 + *(*v2 + 184)) = 0;
  (*(v7 + 32))(v6, v19, v3);
  v8(v6, 0, 1, v3);
  v17 = *(*v2 + 136);
  swift_beginAccess();
  (*(v4 + 40))(v2 + v17, v6, v20);
  swift_endAccess();
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t sub_228456610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_228456670(uint64_t a1)
{
  result = sub_22855DA2C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22845678C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + *(*v0 + 144));
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(*v0 + 184);
  swift_beginAccess();
  if (*(v1 + v4))
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v5 = sub_22855CABC();
    __swift_project_value_buffer(v5, qword_280DEEC98);

    v6 = sub_22855CA8C();
    v7 = sub_22855D68C();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    Strong = v9;
    *v8 = 136446466;
    swift_getMetatypeMetadata();
    v10 = sub_22855D1BC();
    v12 = sub_2283F8938(v10, v11, &Strong);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v25[1] = swift_unknownObjectWeakLoadStrong();
    sub_22855DA2C();
    v13 = sub_22855D1BC();
    v15 = sub_2283F8938(v13, v14, &Strong);

    *(v8 + 14) = v15;
    v16 = "[%{public}s: Delegate called completion more than once! Delegate is %{public}s";
    goto LABEL_11;
  }

  *(v1 + v4) = 1;
  v17 = *(*v1 + 176);
  swift_beginAccess();
  if ((*(v1 + v17) & 1) == 0)
  {
    swift_getWitnessTable();
    PendingValuesInner.lock_sendPendingValuesIfNeeded()();
    goto LABEL_14;
  }

  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v18 = sub_22855CABC();
  __swift_project_value_buffer(v18, qword_280DEEBF0);

  v6 = sub_22855CA8C();
  v7 = sub_22855D6AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25[0] = v9;
    *v8 = 136446466;
    Strong = v2;
    swift_getMetatypeMetadata();
    v19 = sub_22855D1BC();
    v21 = sub_2283F8938(v19, v20, v25);

    *(v8 + 4) = v21;
    *(v8 + 12) = 2082;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_22855DA2C();
    v22 = sub_22855D1BC();
    v24 = sub_2283F8938(v22, v23, v25);

    *(v8 + 14) = v24;
    v16 = "[%{public}s]: delegate called completion, but we're already cancelled. Delegate: %{public}s";
LABEL_11:
    _os_log_impl(&dword_2283ED000, v6, v7, v16, v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v9, -1, -1);
    MEMORY[0x22AABAD40](v8, -1, -1);
  }

LABEL_12:

LABEL_14:
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_228456B84(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();

  return PendingValuesInner.enqueue(_:)(a1, v3, WitnessTable);
}

void sub_228456C0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

NSOperationQueue __swiftcall NSOperationQueue.init(name:maxConcurrentOperationCount:)(Swift::String name, Swift::Int_optional maxConcurrentOperationCount)
{
  is_nil = maxConcurrentOperationCount.is_nil;
  value = maxConcurrentOperationCount.value;
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = sub_22855D17C();

  [v4 setName_];

  if (!is_nil)
  {
    [v4 setMaxConcurrentOperationCount_];
  }

  return v4;
}

id static NSOperationQueue.makeSerial(name:qos:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v5 setMaxConcurrentOperationCount_];
  if (a2)
  {
    v6 = sub_22855D17C();
  }

  else
  {
    v6 = 0;
  }

  [v5 setName_];

  [v5 setQualityOfService_];
  return v5;
}

void sub_228456DC8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setQualityOfService_];
  v1 = sub_22855D17C();
  [v0 setName_];

  qword_27D83F750 = v0;
}

void sub_228456E74()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setQualityOfService_];
  v1 = sub_22855D17C();
  [v0 setName_];

  qword_27D83F758 = v0;
}

uint64_t sub_228456F20(uint64_t a1)
{
  sub_22855BDCC();
  swift_allocObject();

  sub_22855BDBC();
  sub_22845D78C(0);
  sub_22845CE60(&qword_27D83F788, sub_22845D78C, &protocol conformance descriptor for ValueJSONWrapper<A>);
  v1 = sub_22855BDAC();

  return v1;
}

uint64_t sub_2284570B0(uint64_t a1, uint64_t a2)
{
  sub_22855BDCC();
  swift_allocObject();

  sub_22855BDBC();
  sub_22845D57C(0, &qword_280DEE668, MEMORY[0x277D83808], MEMORY[0x277D837D8], type metadata accessor for ValueJSONWrapper);
  sub_22845D5D0();
  v2 = sub_22855BDAC();

  return v2;
}

uint64_t sub_22845723C(char a1)
{
  sub_22855BDCC();
  swift_allocObject();
  sub_22855BDBC();
  sub_22845DDAC(0, &qword_280DEE688, sub_22845D654, sub_22845D6A8, &type metadata for FeedItemTimeScope);
  sub_22845D6FC();
  v1 = sub_22855BDAC();

  return v1;
}

uint64_t sub_2284573B0(char a1)
{
  sub_22855BDCC();
  swift_allocObject();
  sub_22855BDBC();
  sub_22845DDAC(0, &qword_280DEE9A0, sub_22845DE28, sub_22845DE7C, &type metadata for FeedItemProminence);
  sub_22845DED0();
  v1 = sub_22855BDAC();

  return v1;
}

uint64_t sub_228457524(char a1)
{
  sub_22855BDCC();
  swift_allocObject();
  sub_22855BDBC();
  sub_22845DDAC(0, &qword_27D83F7B0, sub_22845DB7C, sub_22845DBD0, &type metadata for ContentKind);
  sub_22845DC24();
  v1 = sub_22855BDAC();

  return v1;
}

uint64_t sub_228457698(char a1)
{
  sub_22855BDCC();
  swift_allocObject();
  sub_22855BDBC();
  sub_22845DDAC(0, &qword_27D83F790, sub_22845D8AC, sub_22845D900, &type metadata for DailyRoutineKind);
  sub_22845D954();
  v1 = sub_22855BDAC();

  return v1;
}

uint64_t sub_228457810(double a1)
{
  sub_22855BDCC();
  swift_allocObject();
  sub_22855BDBC();
  sub_22845DB1C();
  sub_22845CE60(&qword_280DEE660, sub_22845DB1C, &protocol conformance descriptor for ValueJSONWrapper<A>);
  v1 = sub_22855BDAC();

  return v1;
}

uint64_t sub_22845797C(char a1)
{
  sub_22855BDCC();
  swift_allocObject();
  sub_22855BDBC();
  sub_22845DDAC(0, &qword_280DEE678, sub_22845D9E4, sub_22845DA38, &type metadata for DataVisualizationKind);
  sub_22845DA8C();
  v1 = sub_22855BDAC();

  return v1;
}

uint64_t PluginFeedItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PluginFeedItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PluginFeedItem.userInterface.getter()
{
  v1 = *(v0 + 16);
  sub_22840A934(v1, *(v0 + 24), *(v0 + 32));
  return v1;
}

uint64_t PluginFeedItem.userInterface.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_22842B20C(*(v3 + 16), *(v3 + 24), *(v3 + 32));
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t PluginFeedItem.actionHandlerClassName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PluginFeedItem.actionHandlerClassName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PluginFeedItem.actionHandlerUserData.getter()
{
  v1 = *(v0 + 56);
  sub_22843560C(v1, *(v0 + 64));
  return v1;
}

uint64_t PluginFeedItem.actionHandlerUserData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22842B378(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t PluginFeedItem.baseAutomationIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t PluginFeedItem.baseAutomationIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t PluginFeedItem.userData.getter()
{
  v1 = *(v0 + 88);
  sub_22843560C(v1, *(v0 + 96));
  return v1;
}

uint64_t PluginFeedItem.userData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22842B378(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t PluginFeedItem.relevantDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PluginFeedItem(0) + 44);

  return sub_228457F0C(v3, a1);
}

uint64_t type metadata accessor for PluginFeedItem(uint64_t a1)
{
  result = qword_280DEEB08;
  if (!qword_280DEEB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228457F0C(uint64_t a1, uint64_t a2)
{
  sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PluginFeedItem.relevantDateInterval.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PluginFeedItem(0) + 44);

  return sub_228457FD0(a1, v3);
}

uint64_t sub_228457FD0(uint64_t a1, uint64_t a2)
{
  sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PluginFeedItem.contentKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PluginFeedItem(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t PluginFeedItem.contentKind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PluginFeedItem(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

double PluginFeedItem.associatedHKTypes.getter()
{
  type metadata accessor for PluginFeedItem(0);

  return result;
}

uint64_t PluginFeedItem.associatedHKTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginFeedItem(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

double PluginFeedItem.associatedMeasureIdentifiers.getter()
{
  type metadata accessor for PluginFeedItem(0);

  return result;
}

uint64_t PluginFeedItem.associatedMeasureIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginFeedItem(0) + 56);

  *(v1 + v3) = a1;
  return result;
}

double PluginFeedItem.associatedSharableModelReferences.getter()
{
  type metadata accessor for PluginFeedItem(0);

  return result;
}

uint64_t PluginFeedItem.associatedSharableModelReferences.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginFeedItem(0) + 60);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PluginFeedItem.categoryIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginFeedItem(0) + 64));

  return v1;
}

uint64_t PluginFeedItem.categoryIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PluginFeedItem(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double PluginFeedItem.featureTags.getter()
{
  type metadata accessor for PluginFeedItem(0);

  return result;
}

uint64_t PluginFeedItem.featureTags.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginFeedItem(0) + 68);

  *(v1 + v3) = a1;
  return result;
}

double PluginFeedItem.keywords.getter()
{
  type metadata accessor for PluginFeedItem(0);

  return result;
}

uint64_t PluginFeedItem.keywords.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginFeedItem(0) + 72);

  *(v1 + v3) = a1;
  return result;
}

void *PluginFeedItem.sourceProfile.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginFeedItem(0) + 76));
  v2 = v1;
  return v1;
}

void PluginFeedItem.sourceProfile.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PluginFeedItem(0) + 76);

  *(v1 + v3) = a1;
}

uint64_t PluginFeedItem.localizedCategoryName.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginFeedItem(0) + 80));

  return v1;
}

uint64_t PluginFeedItem.localizedCategoryName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PluginFeedItem(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PluginFeedItem.localizedTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginFeedItem(0) + 84));

  return v1;
}

uint64_t PluginFeedItem.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PluginFeedItem(0) + 84));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PluginFeedItem.localizedDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginFeedItem(0) + 88));

  return v1;
}

uint64_t PluginFeedItem.localizedDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PluginFeedItem(0) + 88));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PluginFeedItem.sortHint.setter(uint64_t a1)
{
  result = type metadata accessor for PluginFeedItem(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t PluginFeedItem.searchSectionHint.setter(char a1)
{
  result = type metadata accessor for PluginFeedItem(0);
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t PluginFeedItem.indexForSearch.setter(char a1)
{
  result = type metadata accessor for PluginFeedItem(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t PluginFeedItem.hideInDiscover.setter(char a1)
{
  result = type metadata accessor for PluginFeedItem(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

double PluginFeedItem.pinnedContentIdentifier.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PluginFeedItem(0) + 108);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;

  return result;
}

__n128 PluginFeedItem.pinnedContentIdentifier.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for PluginFeedItem(0) + 108));

  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t sub_228458C48@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PluginFeedItem(0) + 112));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22845D554;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_22840FE74(v4, v5);
}

uint64_t sub_228458CDC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22845D52C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for PluginFeedItem(0) + 112));
  v8 = *v7;
  v9 = v7[1];
  sub_22840FE74(v3, v4);
  result = sub_228416CF8(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t PluginFeedItem.afterCommit.getter()
{
  v1 = (v0 + *(type metadata accessor for PluginFeedItem(0) + 112));
  v2 = *v1;
  sub_22840FE74(*v1, v1[1]);
  return v2;
}

uint64_t PluginFeedItem.afterCommit.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PluginFeedItem(0) + 112));
  result = sub_228416CF8(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PluginFeedItem.hostViewStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PluginFeedItem(0);
  *a1 = *(v1 + *(result + 116));
  return result;
}

uint64_t PluginFeedItem.hostViewStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PluginFeedItem(0);
  *(v1 + *(result + 116)) = v2;
  return result;
}

uint64_t PluginFeedItem.init(uniqueIdentifier:userInterface:userData:contentKind:sourceProfile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v41 = *a8;
  *(a9 + 33) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 56) = 0;
  *(a9 + 64) = 0xF000000000000000;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 96) = 0xF000000000000000;
  v17 = type metadata accessor for PluginFeedItem(0);
  v18 = v17[11];
  v19 = type metadata accessor for RelevantDateInterval(0);
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = MEMORY[0x277D84FA0];
  *(a9 + v17[13]) = MEMORY[0x277D84FA0];
  *(a9 + v17[14]) = v20;
  *(a9 + v17[15]) = v20;
  v21 = (a9 + v17[16]);
  *v21 = 0;
  v21[1] = 0;
  v22 = v17[17];
  *(a9 + v22) = MEMORY[0x277D84F98];
  *(a9 + v17[18]) = v20;
  v23 = (a9 + v17[20]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (a9 + v17[21]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (a9 + v17[22]);
  *v25 = 0;
  v25[1] = 0;
  *(a9 + v17[23]) = 0;
  *(a9 + v17[24]) = 13;
  *(a9 + v17[25]) = 1;
  *(a9 + v17[26]) = 2;
  v26 = (a9 + v17[27]);
  *v26 = 0;
  v26[1] = 0;
  v26[2] = 0;
  v27 = (a9 + v17[28]);
  *v27 = 0;
  v27[1] = 0;
  *(a9 + v17[29]) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v28 = *(a9 + 88);
  v29 = *(a9 + 96);
  sub_22843560C(a6, a7);
  sub_22842B378(v28, v29);
  *(a9 + 88) = a6;
  *(a9 + 96) = a7;
  *(a9 + v17[12]) = v41;
  *(a9 + v17[19]) = a10;
  v30 = off_281860230[0];
  v31 = a10;
  v32 = v30(&type metadata for ProminenceFeatureTag, &protocol witness table for ProminenceFeatureTag);
  v34 = v33;
  v35 = sub_2284573B0(1);
  v37 = v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(a9 + v22);
  sub_22845AF24(v35, v37, v32, v34, isUniquelyReferenced_nonNull_native);

  *(a9 + v22) = v42;

  return sub_22842B378(a6, a7);
}

uint64_t PluginFeedItem.addFeatureTag<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getDynamicType();
  v6 = (*(*(a3 + 8) + 16))(a2);
  v8 = v7;
  v9 = (*(a3 + 16))(a2, a3);
  v11 = v10;
  v12 = *(type metadata accessor for PluginFeedItem(0) + 68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + v12);
  sub_22845AF24(v9, v11, v6, v8, isUniquelyReferenced_nonNull_native);

  *(v3 + v12) = v15;
  return result;
}

Swift::Void __swiftcall PluginFeedItem.removeAllTags()()
{
  v1 = *(type metadata accessor for PluginFeedItem(0) + 68);

  *(v0 + v1) = MEMORY[0x277D84F98];
}

Swift::Void __swiftcall PluginFeedItem.removeTag(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  type metadata accessor for PluginFeedItem(0);
  sub_22845AA74(countAndFlagsBits, object, &v4);
  v3 = v4;

  sub_22842B378(v3, *(&v3 + 1));
}

uint64_t UserInterface.init(viewControllerClass:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = sub_22855D1AC();

  return v2;
}

uint64_t UserInterface.init(viewClass:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = sub_22855D1AC();

  return v2;
}

uint64_t UserInterface.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3)
    {
      v4 = 3;
    }

    else
    {
      if (a4 != 4)
      {
        return MEMORY[0x22AABA2B0](5);
      }

      v4 = 4;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x22AABA2B0](v4);

  return sub_22855D20C();
}

uint64_t UserInterface.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_22855E22C();
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      v4 = 3;
    }

    else
    {
      if (a3 != 4)
      {
        MEMORY[0x22AABA2B0](5);
        return sub_22855E27C();
      }

      v4 = 4;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x22AABA2B0](v4);
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_228459588(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v3 = 3;
    }

    else
    {
      if (v2 != 4)
      {
        return MEMORY[0x22AABA2B0](5);
      }

      v3 = 4;
    }
  }

  else if (*(v1 + 16))
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x22AABA2B0](v3);

  return sub_22855D20C();
}

uint64_t sub_228459640(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_22855E22C();
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v3 = 3;
    }

    else
    {
      if (v2 != 4)
      {
        MEMORY[0x22AABA2B0](5);
        return sub_22855E27C();
      }

      v3 = 4;
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x22AABA2B0](v3);
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t PluginFeedItem.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v27[4] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for RelevantDateInterval(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  sub_22855D20C();
  v11 = *(v1 + 32);
  if (v11 <= 2)
  {
    if (*(v1 + 32))
    {
      if (v11 == 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_11;
  }

  if (v11 == 3)
  {
    v12 = 3;
    goto LABEL_11;
  }

  if (v11 == 4)
  {
    v12 = 4;
LABEL_11:
    MEMORY[0x22AABA2B0](v12);
    sub_22855D20C();
    goto LABEL_12;
  }

  MEMORY[0x22AABA2B0](5);
LABEL_12:
  v13 = *(v1 + 96);
  if (v13 >> 60 == 15)
  {
    goto LABEL_20;
  }

  v14 = *(v1 + 88);
  v15 = objc_opt_self();
  sub_22842B3E0(v14, v13);
  v16 = sub_22855C08C();
  v27[0] = 0;
  v17 = [v15 JSONObjectWithData:v16 options:0 error:v27];

  if (v17)
  {
    v18 = v27[0];
    sub_22855DA7C();
    swift_unknownObjectRelease();
    sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
    if (swift_dynamicCast())
    {
      v19 = v26[1];
      sub_22855E24C();
      sub_22855D9BC();
      sub_22842B378(v14, v13);

      goto LABEL_20;
    }

    sub_22855E24C();
  }

  else
  {
    v20 = v27[0];
    v21 = sub_22855BF3C();
    v26[0] = v4;
    v22 = v21;

    swift_willThrow();
    sub_22855C0AC();
    v23 = v22;
    v4 = v26[0];
  }

  sub_22842B378(v14, v13);
LABEL_20:
  v24 = type metadata accessor for PluginFeedItem(0);
  sub_228457F0C(v2 + v24[11], v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_22855E24C();
  }

  else
  {
    sub_22845CCB4(v10, v7);
    sub_22855E24C();
    RelevantDateInterval.hash(into:)(a1);
    sub_22845CD60(v7, type metadata accessor for RelevantDateInterval);
  }

  LOBYTE(v27[0]) = *(v2 + v24[12]);
  ContentKind.rawValue.getter();
  sub_22855D20C();

  if (*(v2 + v24[16] + 8))
  {
    sub_22855E24C();
    sub_22855D20C();
  }

  else
  {
    sub_22855E24C();
  }

  if (*(v2 + v24[27] + 16))
  {
    sub_22855E24C();

    sub_22855D20C();

    sub_22855D20C();
  }

  else
  {
    sub_22855E24C();
  }

  sub_22844A080(a1, *(v2 + v24[13]));
  sub_22845BCA0(a1, *(v2 + v24[17]));
  sub_22844A6B8(a1, *(v2 + v24[18]));
  if (*(v2 + v24[20] + 8))
  {
    sub_22855E24C();
    sub_22855D20C();
  }

  else
  {
    sub_22855E24C();
  }

  if (*(v2 + v24[21] + 8))
  {
    sub_22855E24C();
    sub_22855D20C();
  }

  else
  {
    sub_22855E24C();
  }

  if (*(v2 + v24[22] + 8))
  {
    sub_22855E24C();
    sub_22855D20C();
  }

  else
  {
    sub_22855E24C();
  }

  MEMORY[0x22AABA2B0](*(v2 + v24[23]));
  sub_22855E24C();
  if (*(v2 + v24[26]) != 2)
  {
    sub_22855E24C();
  }

  sub_22855E24C();
  if (*(v2 + v24[24]) == 13)
  {
    sub_22855E24C();
  }

  else
  {
    sub_22855E24C();
    sub_22855E25C();
  }

  if (*(v2 + v24[19]))
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22855D20C();

  return sub_22844A6B8(a1, *(v2 + v24[15]));
}

uint64_t PluginFeedItem.hashValue.getter()
{
  sub_22855E22C();
  PluginFeedItem.hash(into:)(v1);
  return sub_22855E27C();
}

uint64_t sub_228459E04()
{
  sub_22855E22C();
  PluginFeedItem.hash(into:)(v1);
  return sub_22855E27C();
}

uint64_t sub_228459E48(uint64_t a1)
{
  sub_22855E22C();
  PluginFeedItem.hash(into:)(v2);
  return sub_22855E27C();
}

uint64_t PluginFeedItem.cachedObject<A>(using:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 96);
  if (v6 >> 60 == 15)
  {
    if (qword_280DEE500 != -1)
    {
      swift_once();
    }

    v7 = sub_22855CABC();
    __swift_project_value_buffer(v7, qword_280DEE508);
    v8 = sub_22855CA8C();
    v9 = sub_22855D67C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2283ED000, v8, v9, "Unable to decode cached user data because there isn't anything stored.", v10, 2u);
      MEMORY[0x22AABAD40](v10, -1, -1);
    }

    v11 = *(*(a1 - 8) + 56);

    return v11(a3, 1, 1, a1);
  }

  else
  {
    v13 = *(v3 + 88);
    sub_22842B3E0(v13, *(v3 + 96));
    sub_22855BD7C();
    (*(*(a1 - 8) + 56))(a3, 0, 1, a1);

    return sub_22842B378(v13, v6);
  }
}

uint64_t PluginFeedItem.description.getter()
{
  v31 = sub_22855E2CC();
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_228406280(&unk_283B7E788);
  swift_arrayDestroy();
  v28 = type metadata accessor for PluginFeedItem(0);
  v34[3] = v28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  sub_22844BBC4(v0, boxed_opaque_existential_1);
  sub_22855E28C();
  v29 = v2;
  v27 = sub_22855E2BC();
  sub_22855DDCC();
  sub_22855DF8C();
  if (*(&v39 + 1))
  {
    v5 = v3 + 56;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v35 = v37;
      v36[0] = v38;
      v36[1] = v39;
      v7 = *(&v37 + 1);
      if (*(&v37 + 1))
      {
        v8 = v35;
        if (!*(v3 + 16) || (sub_22855E22C(), sub_22855D20C(), v9 = sub_22855E27C(), v10 = -1 << *(v3 + 32), v11 = v9 & ~v10, ((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0))
        {
LABEL_15:
          v32 = v8;
          v33 = v7;

          MEMORY[0x22AAB92A0](8250, 0xE200000000000000);
          sub_2283F6E48(v36, v34);
          v15 = sub_22855D1BC();
          MEMORY[0x22AAB92A0](v15);

          v16 = v32;
          v17 = v33;
          sub_22845CD60(&v35, sub_22842B4D0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2283F7678(0, *(v6 + 2) + 1, 1, v6);
          }

          v19 = *(v6 + 2);
          v18 = *(v6 + 3);
          if (v19 >= v18 >> 1)
          {
            v6 = sub_2283F7678((v18 > 1), v19 + 1, 1, v6);
          }

          *(v6 + 2) = v19 + 1;
          v20 = &v6[16 * v19];
          *(v20 + 4) = v16;
          *(v20 + 5) = v17;
          goto LABEL_4;
        }

        v12 = ~v10;
        while (1)
        {
          v13 = (*(v3 + 48) + 16 * v11);
          v14 = *v13 == v8 && v7 == v13[1];
          if (v14 || (sub_22855E15C() & 1) != 0)
          {
            break;
          }

          v11 = (v11 + 1) & v12;
          if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      sub_22845CD60(&v35, sub_22842B4D0);

LABEL_4:
      sub_22855DF8C();
      if (!*(&v39 + 1))
      {
        goto LABEL_21;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_21:

  v34[0] = v6;
  sub_2283F77EC(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2283F7928();
  v21 = sub_22855D15C();
  v23 = v22;

  v34[0] = 60;
  v34[1] = 0xE100000000000000;
  *&v37 = v28;
  sub_22845CD18();
  v24 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v24);

  MEMORY[0x22AAB92A0](8236, 0xE200000000000000);
  MEMORY[0x22AAB92A0](v21, v23);

  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  v25 = v34[0];
  (*(v30 + 8))(v29, v31);
  return v25;
}

uint64_t sub_22845A6D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_22845BE1C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22842B38C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2284436A8(v13, a3, a4, &v12);
  v10 = v4;
  sub_22842B38C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

double sub_22845A864@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2283F6D18(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_228447C74();
      v10 = v12;
    }

    sub_228400400((*(v10 + 56) + 32 * v8), a3);
    sub_2284D22FC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_22845A908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_22844C56C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_228448204();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_22855C37C();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_2284D2684(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_22855C37C();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

double sub_22845AA74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2283F6D18(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_228448608();
      v10 = v12;
    }

    *a3 = *(*(v10 + 56) + 16 * v8);
    sub_2284D2888(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_2285620D0;
  }

  return result;
}

uint64_t sub_22845AB24(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2283FB154(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_228448C14();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_2284D2D80(v5, v7);
  *v2 = v7;
  return v8;
}

double sub_22845ABB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2283F6D18(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_228448EF4();
      v10 = v12;
    }

    sub_2283FAB3C((*(v10 + 56) + 40 * v8), a3);
    sub_2284D30C8(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_22845AC64(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2283F6D18(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_228447C74();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22844445C(v16, a4 & 1);
    v11 = sub_2283F6D18(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_22855E1BC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_228400400(a1, v22);
  }

  else
  {
    sub_2284C3438(v11, a2, a3, a1, v21);
  }
}

id sub_22845ADB4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_22844C56C(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_228448204();
      goto LABEL_7;
    }

    sub_228444EA0(v12, a3 & 1);
    v23 = sub_22844C56C(a2);
    if ((v13 & 1) == (v24 & 1))
    {
      v9 = v23;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for HKFeatureIdentifier(0);
    result = sub_22855E1BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_22855C37C();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_2284C34A4(v9, a2, a1, v15);

  return a2;
}

void sub_22845AF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2283F6D18(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_228448608();
      v13 = v21;
      goto LABEL_8;
    }

    sub_228445528(v18, a5 & 1);
    v13 = sub_2283F6D18(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_22855E1BC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    sub_22842B38C(v25, v26);
  }

  else
  {
    sub_2284C3550(v13, a3, a4, a1, a2, v23);
  }
}

id sub_22845B074(uint64_t a1, char a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_2283FB154(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_228448780();
      v10 = v18;
      goto LABEL_8;
    }

    sub_2284457D8(v15, a4 & 1);
    v10 = sub_2283FB154(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 16 * v10;
    v22 = *v21;
    v23 = *(v21 + 8);
    *v21 = a1;
    *(v21 + 8) = a2 & 1;

    return sub_22845D520(v22, v23);
  }

  else
  {
    sub_2284C35A0(v10, a3, a1, a2 & 1, v20);

    return a3;
  }
}

void sub_22845B1D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2283F6D18(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2284488F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_228445A5C(v16, a4 & 1);
    v11 = sub_2283F6D18(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_22855E1BC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_2284C35F0(v11, a2, a3, a1, v21);
  }
}

void sub_22845B318(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2283F6D18(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_228448A94();
      v11 = v19;
      goto LABEL_8;
    }

    sub_228445D30(v16, a4 & 1);
    v11 = sub_2283F6D18(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_22855E1BC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_2284C35F0(v11, a2, a3, a1, v21);
  }
}

id sub_22845B460(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2283FB154(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_228448C2C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_228446000(v13, a3 & 1);
    v8 = sub_2283FB154(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
      sub_22855E1BC();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_2284C3638(v8, a2, a1, v18);

  return a2;
}

id sub_22845B5A4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2283FB154(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_228448C14();
      v8 = v16;
      goto LABEL_8;
    }

    sub_228445FE8(v13, a3 & 1);
    v8 = sub_2283FB154(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v14)
  {
    *(*(*v4 + 56) + 8 * v8) = a1;
  }

  else
  {
    sub_2284C3940();

    return a2;
  }
}

void sub_22845B6EC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2283F6D18(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_228448EF4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_228446018(v16, a4 & 1);
    v11 = sub_2283F6D18(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_22855E1BC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_2283FAB3C(a1, v22);
  }

  else
  {
    sub_2284C367C(v11, a2, a3, a1, v21);
  }
}

id sub_22845B840(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_228443DA4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_2284491F4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_22844656C(v13, a3 & 1);
    v8 = sub_228443DA4(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_2283EF310(0, &qword_280DE94D8, 0x277CCD4D8);
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v14)
  {
    *(*(*v4 + 56) + 8 * v8) = a1;
  }

  else
  {
    sub_2284C3940();

    return a2;
  }
}

uint64_t sub_22845B988(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22855C5CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_228443DF4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2284494D8();
      goto LABEL_7;
    }

    sub_228446AA0(v17, a3 & 1);
    v22 = sub_228443DF4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2284C36EC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_22855E1BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

_OWORD *sub_22845BB54(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_228443C14(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_228449C60();
      goto LABEL_7;
    }

    sub_2284479C8(v13, a3 & 1);
    v19 = sub_228443C14(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22844BB04(a2, v21);
      return sub_2284C37A4(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_22855E1BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_228400400(a1, v17);
}

void sub_22845BCA0(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v15 = 0;
  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = (v9 << 10) | (16 * __clz(__rbit64(v6)));
      v11 = *(*(a2 + 48) + v10 + 8);
      v12 = (*(a2 + 56) + v10);
      v13 = *v12;
      v14 = v12[1];

      sub_22842B3E0(v13, v14);
      if (!v11)
      {
        break;
      }

      v6 &= v6 - 1;
      sub_22855D20C();

      sub_22855C0AC();
      sub_22842B38C(v13, v14);
      v15 ^= sub_22855E27C();
      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    MEMORY[0x22AABA2B0](v15);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22845BE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22855BEBC();
  v11 = result;
  if (result)
  {
    result = sub_22855BEDC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22855BECC();
  sub_2284436A8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_22845BED4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22842B3E0(a3, a4);
          return sub_22845A6D4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s14HealthPlatform13UserInterfaceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a6 == 3)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_22855E15C();
      }
    }

    else if (a3 == 4)
    {
      if (a6 == 4)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_22855E15C();
      }
    }

    else if (a6 == 5 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_22855E15C();
      }
    }

    else if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_22855E15C();
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_22855E15C();
  }

  return 0;
}

uint64_t sub_22845C148(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v23[4] = *MEMORY[0x277D85DE8];
  if (a2 >> 60 == 15)
  {
    if (a4 >> 60 == 15)
    {
LABEL_3:
      LOBYTE(v5) = 1;
      return v5 & 1;
    }

LABEL_5:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  if (a4 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v9 = objc_opt_self();
  sub_22843560C(a1, a2);
  sub_22843560C(a3, a4);
  v10 = sub_22855C08C();
  v23[0] = 0;
  v11 = [v9 JSONObjectWithData:v10 options:0 error:v23];

  if (!v11)
  {
    v18 = v23[0];
    v19 = sub_22855BF3C();

    swift_willThrow();
LABEL_20:
    sub_22843560C(a1, a2);
    sub_22843560C(a3, a4);
    LOBYTE(v5) = sub_22845BED4(a1, a2, a3, a4);
    sub_22842B378(a3, a4);
    sub_22842B378(a1, a2);
    sub_22842B378(a3, a4);

    sub_22842B378(a1, a2);
    return v5 & 1;
  }

  v12 = v23[0];
  sub_22855DA7C();
  swift_unknownObjectRelease();
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  if (swift_dynamicCast())
  {
    v13 = v22;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_22855C08C();
  v23[0] = 0;
  v15 = [v9 JSONObjectWithData:v14 options:0 error:v23];

  if (!v15)
  {
    v20 = v23[0];
    v19 = sub_22855BF3C();

    swift_willThrow();
    goto LABEL_20;
  }

  v16 = v23[0];
  sub_22855DA7C();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v5 = v22;
  }

  else
  {
    v5 = 0;
  }

  if (!v13)
  {
    sub_22842B378(a1, a2);
    sub_22842B378(a3, a4);
    if (!v5)
    {
      goto LABEL_3;
    }

    goto LABEL_5;
  }

  if (v5)
  {
    v17 = v5;
    LOBYTE(v5) = sub_22855D9AC();
  }

  sub_22842B378(a1, a2);
  sub_22842B378(a3, a4);

  return v5 & 1;
}

uint64_t _s14HealthPlatform14PluginFeedItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelevantDateInterval(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v79[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v79[-v9];
  sub_22845DCB4(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v79[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 != *a2 && (sub_22855E15C() & 1) == 0 || (_s14HealthPlatform13UserInterfaceO2eeoiySbAC_ACtFZ_0(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a2 + 16), *(a2 + 24), *(a2 + 32)) & 1) == 0 || (sub_22845C148(*(a1 + 88), *(a1 + 96), *(a2 + 88), *(a2 + 96)) & 1) == 0)
  {
    goto LABEL_74;
  }

  v15 = type metadata accessor for PluginFeedItem(0);
  v16 = v15[11];
  v17 = *(v12 + 48);
  sub_228457F0C(a1 + v16, v14);
  sub_228457F0C(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v17], 1, v4) == 1)
    {
      sub_22845DD34(v14);
      goto LABEL_8;
    }

LABEL_13:
    sub_22845CD60(v14, sub_22845DCB4);
    goto LABEL_74;
  }

  sub_228457F0C(v14, v10);
  if (v18(&v14[v17], 1, v4) == 1)
  {
    sub_22845CD60(v10, type metadata accessor for RelevantDateInterval);
    goto LABEL_13;
  }

  sub_22845CCB4(&v14[v17], v7);
  if ((sub_22855BDDC() & 1) == 0 || *&v10[*(v4 + 20)] != *&v7[*(v4 + 20)])
  {
    sub_22845CD60(v7, type metadata accessor for RelevantDateInterval);
    sub_22845CD60(v10, type metadata accessor for RelevantDateInterval);
    sub_22845DD34(v14);
    goto LABEL_74;
  }

  v25 = *(v4 + 24);
  v26 = *&v10[v25];
  v27 = *&v7[v25];
  sub_22845CD60(v7, type metadata accessor for RelevantDateInterval);
  sub_22845CD60(v10, type metadata accessor for RelevantDateInterval);
  sub_22845DD34(v14);
  if (v26 != v27)
  {
    goto LABEL_74;
  }

LABEL_8:
  v19 = v15[12];
  v20 = *(a1 + v19);
  LOBYTE(v19) = *(a2 + v19);
  v79[15] = v20;
  v79[14] = v19;
  v21 = ContentKind.rawValue.getter();
  v23 = v22;
  if (v21 == ContentKind.rawValue.getter() && v23 == v24)
  {
  }

  else
  {
    v28 = sub_22855E15C();

    if ((v28 & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  v29 = v15[16];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_22855E15C() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v33)
  {
    goto LABEL_74;
  }

  v34 = v15[27];
  v35 = a1 + v34;
  v36 = *(a1 + v34 + 16);
  v37 = (a2 + v34);
  v38 = v37[2];
  if (!v36)
  {
    if (!v38)
    {
LABEL_46:

      goto LABEL_47;
    }

    goto LABEL_38;
  }

  if (!v38)
  {
LABEL_38:

    goto LABEL_39;
  }

  v39 = *(v35 + 8);
  v40 = v37[1];
  if (*v35)
  {
    v41 = ".pinnedContent.summary";
  }

  else
  {
    v41 = "espiratory";
  }

  v42 = v41 | 0x8000000000000000;
  if (*v37)
  {
    v43 = ".pinnedContent.summary";
  }

  else
  {
    v43 = "espiratory";
  }

  if (v42 != (v43 | 0x8000000000000000))
  {
    v44 = sub_22855E15C();
    swift_bridgeObjectRetain_n();

    if (v44)
    {
      goto LABEL_41;
    }

    swift_bridgeObjectRelease_n();
LABEL_39:

    goto LABEL_74;
  }

  swift_bridgeObjectRetain_n();

LABEL_41:
  if (v39 == v40 && v36 == v38)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_46;
  }

  v45 = sub_22855E15C();
  swift_bridgeObjectRelease_n();

  if ((v45 & 1) == 0)
  {
    goto LABEL_74;
  }

LABEL_47:
  if ((sub_2284424C4(*(a1 + v15[13]), *(a2 + v15[13])) & 1) == 0 || !sub_22843FF48(*(a1 + v15[17]), *(a2 + v15[17])) || (sub_22844230C(*(a1 + v15[18]), *(a2 + v15[18])) & 1) == 0)
  {
    goto LABEL_74;
  }

  v46 = v15[20];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50 || (*v47 != *v49 || v48 != v50) && (sub_22855E15C() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v50)
  {
    goto LABEL_74;
  }

  v51 = v15[21];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55 || (*v52 != *v54 || v53 != v55) && (sub_22855E15C() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v55)
  {
    goto LABEL_74;
  }

  v56 = v15[22];
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (a2 + v56);
  v60 = v59[1];
  if (v58)
  {
    if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_22855E15C() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v60)
  {
    goto LABEL_74;
  }

  if (*(a1 + v15[23]) != *(a2 + v15[23]) || *(a1 + v15[25]) != *(a2 + v15[25]))
  {
    goto LABEL_74;
  }

  v63 = v15[26];
  v64 = *(a1 + v63);
  v65 = *(a2 + v63);
  if (v64 == 2)
  {
    if (v65 != 2)
    {
      goto LABEL_74;
    }

    goto LABEL_81;
  }

  v61 = 0;
  if (v65 != 2 && ((v65 ^ v64) & 1) == 0)
  {
LABEL_81:
    v66 = v15[24];
    v67 = *(a1 + v66);
    v68 = *(a2 + v66);
    if (v67 == 13)
    {
      if (v68 != 13)
      {
        goto LABEL_74;
      }
    }

    else if (v67 != v68)
    {
      goto LABEL_74;
    }

    v69 = v15[19];
    v70 = *(a2 + v69);
    if (*(a1 + v69))
    {
      if (!v70)
      {
        goto LABEL_74;
      }

      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      if ((sub_22855D9AC() & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else if (v70)
    {
      goto LABEL_74;
    }

    v71 = v15[29];
    v72 = *(a1 + v71);
    v73 = *(a2 + v71);
    if (v72)
    {
      v74 = 0x656D6F7268436F6ELL;
    }

    else
    {
      v74 = 0x656D6F726863;
    }

    if (v72)
    {
      v75 = 0xE800000000000000;
    }

    else
    {
      v75 = 0xE600000000000000;
    }

    if (v73)
    {
      v76 = 0x656D6F7268436F6ELL;
    }

    else
    {
      v76 = 0x656D6F726863;
    }

    if (v73)
    {
      v77 = 0xE800000000000000;
    }

    else
    {
      v77 = 0xE600000000000000;
    }

    if (v74 == v76 && v75 == v77)
    {

      goto LABEL_106;
    }

    v78 = sub_22855E15C();

    if (v78)
    {
LABEL_106:
      if (sub_22844230C(*(a1 + v15[15]), *(a2 + v15[15])))
      {
        v61 = sub_228442728(*(a1 + v15[14]), *(a2 + v15[14]));
        return v61 & 1;
      }
    }

LABEL_74:
    v61 = 0;
  }

  return v61 & 1;
}

uint64_t sub_22845CCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelevantDateInterval(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22845CD18()
{
  result = qword_280DEE720;
  if (!qword_280DEE720)
  {
    type metadata accessor for PluginFeedItem(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEE720);
  }

  return result;
}

uint64_t sub_22845CD60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22845CDC4()
{
  result = qword_27D83F760;
  if (!qword_27D83F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F760);
  }

  return result;
}

uint64_t sub_22845CE60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22845CED0(uint64_t a1)
{
  v1 = MEMORY[0x277D839B0];
  sub_2283F77EC(319, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    sub_2283F77EC(319, &qword_280DEE388, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      sub_22845D3E8(319, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
      if (v4 <= 0x3F)
      {
        sub_22845D1C4(319);
        if (v5 <= 0x3F)
        {
          sub_22845D2A0(319);
          if (v6 <= 0x3F)
          {
            sub_22845D334(319);
            if (v7 <= 0x3F)
            {
              sub_22845D57C(319, &qword_280DED2A0, MEMORY[0x277CC9318], MEMORY[0x277D837E0], MEMORY[0x277D834F8]);
              if (v8 <= 0x3F)
              {
                sub_22845D390();
                if (v9 <= 0x3F)
                {
                  sub_2283F77EC(319, qword_280DEDAD0, &type metadata for SearchSection, MEMORY[0x277D83D88]);
                  if (v10 <= 0x3F)
                  {
                    sub_2283F77EC(319, &unk_280DED228, v1, MEMORY[0x277D83D88]);
                    if (v11 <= 0x3F)
                    {
                      sub_2283F77EC(319, &qword_280DED6B0, &type metadata for PinnedContentIdentifier, MEMORY[0x277D83D88]);
                      if (v12 <= 0x3F)
                      {
                        sub_22845D3E8(319, &qword_280DECFC0, sub_2283FBB5C);
                        if (v13 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_22845D1C4(uint64_t a1)
{
  if (!qword_280DED1F0)
  {
    sub_2283EF310(255, &qword_280DEE7B8, 0x277CCD720);
    sub_22845D238();
    v1 = sub_22855D57C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED1F0);
    }
  }
}

unint64_t sub_22845D238()
{
  result = qword_280DED1D8;
  if (!qword_280DED1D8)
  {
    sub_2283EF310(255, &qword_280DEE7B8, 0x277CCD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED1D8);
  }

  return result;
}

void sub_22845D2A0(uint64_t a1)
{
  if (!qword_280DED208)
  {
    sub_22855C33C();
    sub_22845CE60(&qword_280DEE360, MEMORY[0x277D10C20], MEMORY[0x277D10C28]);
    v1 = sub_22855D57C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED208);
    }
  }
}

void sub_22845D334(uint64_t a1)
{
  if (!qword_280DED200)
  {
    sub_22842BE70();
    v1 = sub_22855D57C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED200);
    }
  }
}

void sub_22845D390()
{
  if (!qword_280DED1F8)
  {
    v0 = sub_22855D57C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED1F8);
    }
  }
}

void sub_22845D3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform13UserInterfaceO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22845D46C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22845D4B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22845D4F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22845D520(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_22845D57C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (!*a2)
  {
    v6 = (a5)(0, MEMORY[0x277D837D0], a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_22845D5D0()
{
  result = qword_280DEE670;
  if (!qword_280DEE670)
  {
    sub_22845D57C(255, &qword_280DEE668, MEMORY[0x277D83808], MEMORY[0x277D837D8], type metadata accessor for ValueJSONWrapper);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE670);
  }

  return result;
}

unint64_t sub_22845D654()
{
  result = qword_280DEE5B0;
  if (!qword_280DEE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE5B0);
  }

  return result;
}

unint64_t sub_22845D6A8()
{
  result = qword_280DEE5C0[0];
  if (!qword_280DEE5C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEE5C0);
  }

  return result;
}

unint64_t sub_22845D6FC()
{
  result = qword_280DEE690;
  if (!qword_280DEE690)
  {
    sub_22845DDAC(255, &qword_280DEE688, sub_22845D654, sub_22845D6A8, &type metadata for FeedItemTimeScope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE690);
  }

  return result;
}

void sub_22845D78C(uint64_t a1)
{
  if (!qword_27D83F770)
  {
    sub_22845D390();
    v3 = v2;
    v4 = sub_22845D84C(&qword_27D83F778, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    v5 = sub_22845D84C(&qword_27D83F780, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    v6 = type metadata accessor for ValueJSONWrapper(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27D83F770);
    }
  }
}

uint64_t sub_22845D84C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22845D390();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22845D8AC()
{
  result = qword_27D83F798;
  if (!qword_27D83F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F798);
  }

  return result;
}

unint64_t sub_22845D900()
{
  result = qword_27D83F7A0;
  if (!qword_27D83F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F7A0);
  }

  return result;
}

unint64_t sub_22845D954()
{
  result = qword_27D83F7A8;
  if (!qword_27D83F7A8)
  {
    sub_22845DDAC(255, &qword_27D83F790, sub_22845D8AC, sub_22845D900, &type metadata for DailyRoutineKind);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F7A8);
  }

  return result;
}

unint64_t sub_22845D9E4()
{
  result = qword_280DEE520;
  if (!qword_280DEE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE520);
  }

  return result;
}

unint64_t sub_22845DA38()
{
  result = qword_280DEE530;
  if (!qword_280DEE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE530);
  }

  return result;
}

unint64_t sub_22845DA8C()
{
  result = qword_280DEE680;
  if (!qword_280DEE680)
  {
    sub_22845DDAC(255, &qword_280DEE678, sub_22845D9E4, sub_22845DA38, &type metadata for DataVisualizationKind);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE680);
  }

  return result;
}

void sub_22845DB1C()
{
  if (!qword_280DEE658)
  {
    v0 = type metadata accessor for ValueJSONWrapper(0, MEMORY[0x277D839F8], MEMORY[0x277D83A30], MEMORY[0x277D83A08]);
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE658);
    }
  }
}

unint64_t sub_22845DB7C()
{
  result = qword_27D83F7B8;
  if (!qword_27D83F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F7B8);
  }

  return result;
}

unint64_t sub_22845DBD0()
{
  result = qword_27D83F7C0;
  if (!qword_27D83F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F7C0);
  }

  return result;
}

unint64_t sub_22845DC24()
{
  result = qword_27D83F7C8;
  if (!qword_27D83F7C8)
  {
    sub_22845DDAC(255, &qword_27D83F7B0, sub_22845DB7C, sub_22845DBD0, &type metadata for ContentKind);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F7C8);
  }

  return result;
}

void sub_22845DCB4(uint64_t a1)
{
  if (!qword_280DEE540[0])
  {
    sub_22845D3E8(255, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280DEE540);
    }
  }
}

uint64_t sub_22845DD34(uint64_t a1)
{
  sub_22845D3E8(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22845DDAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a4();
    v11 = type metadata accessor for ValueJSONWrapper(a1, a5, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_22845DE28()
{
  result = qword_280DEE988;
  if (!qword_280DEE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE988);
  }

  return result;
}

unint64_t sub_22845DE7C()
{
  result = qword_280DEE998;
  if (!qword_280DEE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE998);
  }

  return result;
}

unint64_t sub_22845DED0()
{
  result = qword_280DEE9A8[0];
  if (!qword_280DEE9A8[0])
  {
    sub_22845DDAC(255, &qword_280DEE9A0, sub_22845DE28, sub_22845DE7C, &type metadata for FeedItemProminence);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEE9A8);
  }

  return result;
}

uint64_t sub_22845DF84()
{
  result = sub_22855D1AC();
  qword_280DEBDC8 = result;
  *algn_280DEBDD0 = v1;
  return result;
}

uint64_t static UserDefaultsKeys.appLastOpenedDateKey.getter()
{
  if (qword_280DEBDC0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DEBDC8;

  return v0;
}

uint64_t sub_22845E064(void *a1)
{
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0x636974736F6E6761;
  }

  [a1 type];
  v6 = HKStringFromProfileType();
  v7 = sub_22855D1AC();
  v9 = v8;

  v15[0] = v7;
  v15[1] = v9;
  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v10 = [a1 identifier];
  sub_22855C1BC();

  v11 = sub_22855C17C();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x22AAB92A0](v11, v13);

  return v15[0];
}

Swift::Void __swiftcall NSManagedObjectContext.queue_deleteDataForInvalidProfiles(existingProfiles:)(Swift::OpaquePointer existingProfiles)
{
  ObjectType = swift_getObjectType();
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(existingProfiles._rawValue + 2);
  if (v6)
  {
    v7 = (existingProfiles._rawValue + 32);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v10 = *v7++;
      v9 = v10;
      if (v10)
      {
        v11 = v9;
        v12 = [v11 identifier];
        sub_22855C1BC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22842678C(0, v8[2] + 1, 1, v8);
        }

        v14 = v8[2];
        v13 = v8[3];
        if (v14 >= v13 >> 1)
        {
          v8 = sub_22842678C((v13 > 1), v14 + 1, 1, v8);
        }

        v8[2] = v14 + 1;
        (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, v5, v2);
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v15 = sub_22855CABC();
  __swift_project_value_buffer(v15, qword_280DEEC98);

  v16 = sub_22855CA8C();
  v17 = sub_22855D6AC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31[0] = v19;
    *v18 = 136446466;
    v31[1] = ObjectType;
    swift_getMetatypeMetadata();
    v20 = sub_22855D1BC();
    v22 = sub_2283F8938(v20, v21, v31);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = MEMORY[0x22AAB9430](v8, v2);
    v25 = sub_2283F8938(v23, v24, v31);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_2283ED000, v16, v17, "[%{public}s]: Deleting feedItems not associated with these sourceProfiles: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v19, -1, -1);
    MEMORY[0x22AABAD40](v18, -1, -1);
  }

  type metadata accessor for Profile();
  v26 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_228560570;
  sub_22845F344(0, &qword_280DE9658, MEMORY[0x277CC95F0], MEMORY[0x277D83940]);
  *(v27 + 56) = v28;
  *(v27 + 64) = sub_22845F3A8();
  *(v27 + 32) = v8;
  *(v27 + 96) = MEMORY[0x277D837D0];
  *(v27 + 104) = sub_22840A7C8();
  *(v27 + 72) = 0xD000000000000010;
  *(v27 + 80) = 0x800000022856DA90;
  v29 = sub_22855D62C();
  [v26 setPredicate_];
  sub_22845E644(v29);
}

void sub_22845E644(uint64_t a1)
{
  type metadata accessor for Profile();
  v10 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v10 setPredicate_];
  [v10 setIncludesPropertyValues_];
  v3 = sub_22855D97C();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAB9D20](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v1 deleteObject_];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

Swift::Void __swiftcall NSManagedObjectContext.queue_createProfiles(for:)(Swift::OpaquePointer a1)
{
  ObjectType = swift_getObjectType();
  v83 = sub_22855C1DC();
  v2 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UserProfile(0);
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x28223BE20](v4);
  v91 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(a1._rawValue + 2);
  if (!v74)
  {
    return;
  }

  v7 = 0;
  v75 = a1._rawValue + 32;
  v80 = 0x800000022856DA90;
  v81 = (v2 + 8);
  *&v5 = 136446722;
  v71 = v5;
  v79 = xmmword_228560570;
  v73 = xmmword_228560580;
  while (1)
  {
    v8 = *&v75[8 * v7];
    v77 = v8;
    if (!v8)
    {
      break;
    }

    sub_22845F344(0, &qword_280DED028, type metadata accessor for UserProfile, MEMORY[0x277D84560]);
    v9 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v73;
    v11 = v10 + v9;
    v12 = v8;
    v13 = [v12 identifier];
    sub_22855C1BC();

    *(v11 + *(v88 + 20)) = v12;
    v14 = sub_22845F998(v10);
    swift_setDeallocating();
    sub_22845FC38(v11);
    swift_deallocClassInstance();
    v15 = *(v14 + 16);
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_27:

    v40 = MEMORY[0x277D84F90];
LABEL_28:
    sub_228429908(v40);

    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v41 = sub_22855CABC();
    __swift_project_value_buffer(v41, qword_280DEEBF0);
    v42 = v77;
    v43 = v77;

    v44 = sub_22855CA8C();
    v45 = sub_22855D6AC();

    if (os_log_type_enabled(v44, v45))
    {
      LODWORD(v92) = v45;
      v46 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v96[0] = v90;
      *v46 = v71;
      v94 = ObjectType;
      swift_getMetatypeMetadata();
      v47 = sub_22855D1BC();
      v49 = sub_2283F8938(v47, v48, v96);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      if (v42)
      {
        v50 = v43;
        v86 = v43;
        v51 = v50;
        [v50 type];
        v52 = HKStringFromProfileType();
        v53 = sub_22855D1AC();
        v55 = v54;

        v94 = v53;
        v95 = v55;
        MEMORY[0x22AAB92A0](32, 0xE100000000000000);
        v56 = [v51 identifier];
        v57 = v7;
        v58 = v82;
        sub_22855C1BC();

        v59 = sub_22855C17C();
        v61 = v60;
        v62 = v58;
        v7 = v57;
        (*v81)(v62, v83);
        MEMORY[0x22AAB92A0](v59, v61);

        v43 = v86;

        v63 = v94;
        v64 = v95;
      }

      else
      {
        v64 = 0xE800000000000000;
        v63 = 0x636974736F6E6761;
      }

      v65 = sub_2283F8938(v63, v64, v96);

      *(v46 + 14) = v65;
      *(v46 + 22) = 2080;
      type metadata accessor for Profile();
      sub_2284602B0(&qword_280DED540, type metadata accessor for Profile, MEMORY[0x277D85378]);
      v66 = sub_22855D52C();
      v68 = v67;

      v69 = sub_2283F8938(v66, v68, v96);

      *(v46 + 24) = v69;
      _os_log_impl(&dword_2283ED000, v44, v92, "[%{public}s]: Updating profiles in cache for sourceProfile <%s>; profiles: <%s>", v46, 0x20u);
      v70 = v90;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v70, -1, -1);
      MEMORY[0x22AABAD40](v46, -1, -1);
    }

    else
    {
    }

    if (++v7 == v74)
    {
      return;
    }
  }

  v14 = MEMORY[0x277D84FA0];
  v15 = *(MEMORY[0x277D84FA0] + 16);
  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_7:
  v76 = v7;
  v96[0] = MEMORY[0x277D84F90];
  sub_22855DD4C();
  v92 = v14 + 56;
  v16 = sub_22855DAAC();
  v85 = sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  v17 = 0;
  v78 = v14 + 64;
  v86 = v14;
  v84 = v15;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v14 + 32))
  {
    v19 = v16 >> 6;
    if ((*(v92 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_37;
    }

    v90 = *(v14 + 36);
    v20 = v91;
    sub_22842BF58(*(v14 + 48) + *(v87 + 72) * v16, v91);
    v21 = *(v20 + *(v88 + 20));
    sub_22840A70C(0);
    v22 = swift_allocObject();
    *(v22 + 16) = v79;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_22840A7C8();
    *(v22 + 32) = 0xD000000000000010;
    *(v22 + 40) = v80;
    v23 = [v21 identifier];
    if (!v23)
    {
      goto LABEL_41;
    }

    v24 = v23;
    *(v22 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
    *(v22 + 104) = sub_22842B880(&qword_280DED0B8, &unk_280DED0C0, 0x277CCAD78, MEMORY[0x277D85388]);
    *(v22 + 72) = v24;
    v25 = sub_22855D62C();
    v26 = sub_22843B984(v89, v25, 1u);
    if (!v26)
    {
      v27 = objc_opt_self();
      v28 = sub_22855D17C();
      v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v89];

      type metadata accessor for Profile();
      v26 = swift_dynamicCastClassUnconditional();
    }

    v30 = [v21 identifier];
    v31 = v82;
    sub_22855C1BC();

    v32 = sub_22855C19C();
    (*v81)(v31, v83);
    [v26 setUniqueIdentifier_];

    Profile.hkProfileIdentifier.setter(v21);
    sub_22845FC38(v91);
    sub_22855DD1C();
    sub_22855DD5C();
    sub_22855DD6C();
    sub_22855DD2C();
    v14 = v86;
    v18 = 1 << *(v86 + 32);
    if (v16 >= v18)
    {
      goto LABEL_38;
    }

    v33 = *(v92 + 8 * v19);
    if ((v33 & (1 << v16)) == 0)
    {
      goto LABEL_39;
    }

    if (v90 != *(v86 + 9))
    {
      goto LABEL_40;
    }

    v34 = v33 & (-2 << (v16 & 0x3F));
    if (v34)
    {
      v18 = __clz(__rbit64(v34)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v35 = v19 << 6;
      v36 = v19 + 1;
      v37 = (v78 + 8 * v19);
      while (v36 < (v18 + 63) >> 6)
      {
        v39 = *v37++;
        v38 = v39;
        v35 += 64;
        ++v36;
        if (v39)
        {
          sub_228416CB8(v16, v90, 0);
          v18 = __clz(__rbit64(v38)) + v35;
          goto LABEL_9;
        }
      }

      sub_228416CB8(v16, v90, 0);
    }

LABEL_9:
    ++v17;
    v16 = v18;
    if (v17 == v84)
    {

      v40 = v96[0];
      v7 = v76;
      goto LABEL_28;
    }
  }

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
  __break(1u);
  v94 = 0;
  v95 = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD00000000000001CLL, 0x800000022856DD10);
  v93 = 0;
  sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
  sub_22855DDDC();
  sub_22855DEDC();
  __break(1u);
}

void sub_22845F344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22845F3A8()
{
  result = qword_280DE9650;
  if (!qword_280DE9650)
  {
    sub_22845F344(255, &qword_280DE9658, MEMORY[0x277CC95F0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9650);
  }

  return result;
}

void sub_22845F45C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AAB9BE0](a1, a2, v11);
      sub_2283EF310(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2283EF310(0, a5, a6);
    if (sub_22855DB2C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22855DB3C();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_22855D99C();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_22855D9AC();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

void sub_22845F68C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AAB9BE0](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (sub_22855DB2C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22855DB3C();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_22855D99C();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_22855D9AC();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_22845F8B0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48);
  v6 = v5 + *(*(type metadata accessor for UserProfile(0) - 8) + 72) * result;

  return sub_22842BF58(v6, a4);
}

uint64_t sub_22845F998(uint64_t a1)
{
  v26 = type metadata accessor for UserProfile(0);
  v2 = *(v26 - 8);
  v3 = MEMORY[0x28223BE20](v26);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_22846021C(0);
    v9 = sub_22855DC2C();
    v10 = 0;
    v11 = v9 + 56;
    v12 = *(v2 + 80);
    v24 = v8;
    v25 = a1 + ((v12 + 32) & ~v12);
    v13 = *(v2 + 72);
    while (1)
    {
      sub_22842BF58(v25 + v13 * v10, v7);
      sub_22855E22C();
      sub_22855C1DC();
      sub_2284602B0(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22855D14C();
      v14 = sub_22855E27C();
      v15 = ~(-1 << *(v9 + 32));
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v11 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) != 0)
      {
        while (1)
        {
          sub_22842BF58(*(v9 + 48) + v16 * v13, v5);
          if (sub_22855C1AC())
          {
            sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
            if (sub_22855D9AC())
            {
              break;
            }
          }

          sub_22845FC38(v5);
          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v11 + 8 * (v16 >> 6));
          v19 = 1 << v16;
          if ((v18 & (1 << v16)) == 0)
          {
            goto LABEL_5;
          }
        }

        sub_22845FC38(v5);
        sub_22845FC38(v7);
      }

      else
      {
LABEL_5:
        *(v11 + 8 * v17) = v18 | v19;
        result = sub_2284602F8(v7, *(v9 + 48) + v16 * v13);
        v21 = *(v9 + 16);
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v23;
      }

      if (++v10 == v24)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22845FC38(uint64_t a1)
{
  v2 = type metadata accessor for UserProfile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22845FCDC(unint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a5;
    v11 = a2;
    v12 = sub_22855DB4C();
    a2 = v11;
    a5 = v10;
    if (v12)
    {
LABEL_3:
      sub_22846017C(0, a2, a3, a4, a5);
      v7 = sub_22855DC2C();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_22855DB4C();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x22AAB9D20](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_22855D99C();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_2283EF310(0, a3, a4);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_22855D9AC();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_22855D99C();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_2283EF310(0, a3, a4);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_22855D9AC();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_22845FFC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_228460124();
    v3 = sub_22855DC2C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_22855E22C();

      sub_22855D20C();
      result = sub_22855E27C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_22855E15C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_228460124()
{
  if (!qword_280DEE3D0)
  {
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE3D0);
    }
  }
}

void sub_22846017C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_2283EF310(255, a3, a4);
    sub_22842B880(a5, a3, a4, MEMORY[0x277D85378]);
    v9 = sub_22855DC3C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22846021C(uint64_t a1)
{
  if (!qword_280DE9220)
  {
    type metadata accessor for UserProfile(255);
    sub_2284602B0(qword_280DEDB78, type metadata accessor for UserProfile, &protocol conformance descriptor for UserProfile);
    v1 = sub_22855DC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9220);
    }
  }
}

uint64_t sub_2284602B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2284602F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserProfile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HealthAppPluginInfo.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HealthAppPluginInfo.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t HealthAppPluginInfo.init(name:bundleIdentifier:bundle:principalObject:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a3;
  a7[4] = a4;
  a7[5] = a6;
  return result;
}

uint64_t HealthAppPluginInfo.LoadError.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_22855C06C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Error = type metadata accessor for HealthAppPluginInfo.LoadError(0);
  MEMORY[0x28223BE20](Error);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  strcpy(v30, "[LoadError]: ");
  HIWORD(v30[1]) = -4864;
  sub_228408514(v1, v8, type metadata accessor for HealthAppPluginInfo.LoadError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v26 = *v8;
        v28 = 0;
        v29 = 0xE000000000000000;
        sub_22855DC6C();
        MEMORY[0x22AAB92A0](0xD00000000000001CLL, 0x800000022856F060);
        v27[1] = v26;
        sub_228418D44();
        sub_22855DDDC();
        MEMORY[0x22AAB92A0](v28, v29);

        return v30[0];
      }

      v10 = *v8;
      v11 = v8[1];
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_22855DC6C();

      v12 = 0x800000022856F080;
      v13 = 0xD000000000000017;
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v16 = *v8;
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_22855DC6C();
      MEMORY[0x22AAB92A0](0xD000000000000068, 0x800000022856EFF0);
      v17 = MEMORY[0x22AAB9430](v16, MEMORY[0x277D837D0]);
      v19 = v18;

      MEMORY[0x22AAB92A0](v17, v19);
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 8)
    {
      v10 = *v8;
      v11 = v8[1];
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_22855DC6C();
      MEMORY[0x22AAB92A0](0xD00000000000004DLL, 0x800000022856EF80);
      goto LABEL_16;
    }

    v14 = *v8;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_22855DC6C();

    v28 = 0xD00000000000001FLL;
    v29 = 0x800000022856EFD0;
    v15 = [v14 description];
LABEL_20:
    v20 = v15;
    v21 = sub_22855D1AC();
    v23 = v22;

    MEMORY[0x22AAB92A0](v21, v23);

    MEMORY[0x22AAB92A0](v28, v29);

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v5, v8, v2);
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_22855DC6C();

      v28 = 0xD000000000000023;
      v29 = 0x800000022856F130;
      v25 = sub_22855C02C();
      MEMORY[0x22AAB92A0](v25);

      MEMORY[0x22AAB92A0](v28, v29);

      (*(v3 + 8))(v5, v2);
      return v30[0];
    }

    v10 = *v8;
    v11 = v8[1];
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_22855DC6C();

    v12 = 0x800000022856F160;
    v13 = 0xD000000000000020;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v10 = *v8;
    v11 = v8[1];
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_22855DC6C();

    v12 = 0x800000022856F100;
    v13 = 0xD000000000000021;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v14 = *v8;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_22855DC6C();

    v28 = 0xD000000000000020;
    v29 = 0x800000022856F0A0;
    v15 = [v14 description];
    goto LABEL_20;
  }

  v10 = *v8;
  v11 = v8[1];
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_22855DC6C();

  v12 = 0x800000022856F0D0;
  v13 = 0xD00000000000002DLL;
LABEL_15:
  v28 = v13;
  v29 = v12;
LABEL_16:
  MEMORY[0x22AAB92A0](v10, v11);
LABEL_17:

  MEMORY[0x22AAB92A0](v28, v29);
LABEL_21:

  return v30[0];
}

uint64_t HealthAppPluginSource.__allocating_init(bundleProvider:knownBundles:disabledBundleIdentifiers:allowedBundleIdentifiers:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  HealthAppPluginSource.init(bundleProvider:knownBundles:disabledBundleIdentifiers:allowedBundleIdentifiers:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t static HealthAppPluginSource.shared.getter()
{
  if (qword_280DEDF08 != -1)
  {
    swift_once();
  }
}

void (**sub_228460A9C())(char *, char *, uint64_t)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22855C06C();
  v47 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v49 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v46 = &v39 - v5;
  MEMORY[0x28223BE20](v4);
  v50 = &v39 - v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v8 = sub_22855BFBC();
  type metadata accessor for URLResourceKey(0);
  v9 = sub_22855D39C();
  v51[0] = 0;
  v10 = [v7 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v9 options:0 error:v51];

  v11 = v51[0];
  if (v10)
  {
    v41 = v0;
    v12 = sub_22855D3AC();
    v13 = v11;

    v14 = *(v12 + 16);
    v15 = MEMORY[0x277D84F90];
    v16 = v1;
    v43 = v1;
    v45 = v14;
    v40 = v7;
    if (v14)
    {
      v17 = 0;
      v44 = v47 + 16;
      v42 = (v47 + 8);
      v48 = (v47 + 32);
      while (1)
      {
        if (v17 >= *(v12 + 16))
        {
          __break(1u);
        }

        v18 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v19 = *(v47 + 72);
        (*(v47 + 16))(v50, v12 + v18 + v19 * v17, v16);
        if (sub_22855BF6C() == 0x6C7068746C616568 && v20 == 0xEC0000006E696775)
        {
          break;
        }

        v21 = sub_22855E15C();

        if (v21)
        {
          goto LABEL_11;
        }

        (*v42)(v50, v16);
LABEL_5:
        if (v45 == ++v17)
        {
          goto LABEL_16;
        }
      }

LABEL_11:
      v22 = v12;
      v23 = *v48;
      (*v48)(v49, v50, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51[0] = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2284274B0(0, v15[2] + 1, 1);
        v15 = v51[0];
      }

      v26 = v15[2];
      v25 = v15[3];
      if (v26 >= v25 >> 1)
      {
        sub_2284274B0((v25 > 1), v26 + 1, 1);
        v15 = v51[0];
      }

      v15[2] = v26 + 1;
      v27 = v15 + v18 + v26 * v19;
      v16 = v43;
      v23(v27, v49, v43);
      v12 = v22;
      goto LABEL_5;
    }

LABEL_16:

    v51[0] = MEMORY[0x277D84F90];
    v28 = v15[2];
    if (v28)
    {
      v29 = *(v47 + 16);
      v30 = v15 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v49 = *(v47 + 72);
      v50 = v29;
      v31 = (v47 + 8);
      v48 = MEMORY[0x277D84F90];
      do
      {
        v32 = v46;
        (v50)(v46, v30, v16);
        v33 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
        v34 = sub_22855BFBC();
        v35 = [v33 initWithURL_];

        v36 = (*v31)(v32, v16);
        if (v35)
        {
          MEMORY[0x22AAB9400](v36);
          if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22855D3EC();
            v16 = v43;
          }

          sub_22855D43C();
          v48 = v51[0];
        }

        v30 = &v49[v30];
        --v28;
      }

      while (v28);

      v37 = v48;
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v37 = v51[0];
    sub_22855BF3C();

    swift_willThrow();
  }

  return v37;
}

Swift::Void __swiftcall HealthAppPluginSource.install(plugins:)(Swift::OpaquePointer plugins)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 7);
  sub_228462B1C();
  os_unfair_lock_unlock(v2 + 7);
}

unint64_t HealthAppPluginSource.providedBundleIdentifiers()()
{
  result = (*(v0 + 24))();
  if (!v1)
  {
    v3 = result;
    v4 = 0;
    v5 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_22:
      v6 = sub_22855DB4C();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v21 = MEMORY[0x277D84F90];
        do
        {
          v8 = v7;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x22AAB9D20](v8, v3);
            }

            else
            {
              if (v8 >= *(v5 + 16))
              {
                goto LABEL_21;
              }

              v9 = *(v3 + 8 * v8 + 32);
            }

            v10 = v9;
            v7 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            v11 = [v9 bundleIdentifier];
            if (v11)
            {
              break;
            }

            ++v8;
            if (v7 == v6)
            {
              goto LABEL_24;
            }
          }

          v20 = v4;
          v12 = v11;
          v13 = sub_22855D1AC();
          v19 = v14;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_2283F7678(0, *(v21 + 2) + 1, 1, v21);
          }

          v16 = *(v21 + 2);
          v15 = *(v21 + 3);
          if (v16 >= v15 >> 1)
          {
            v21 = sub_2283F7678((v15 > 1), v16 + 1, 1, v21);
          }

          *(v21 + 2) = v16 + 1;
          v17 = &v21[16 * v16];
          v4 = v20;
          *(v17 + 4) = v13;
          *(v17 + 5) = v19;
        }

        while (v7 != v6);
        goto LABEL_24;
      }
    }

    else
    {
      v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v21 = MEMORY[0x277D84F90];
LABEL_24:

    v18 = sub_228406280(v21);

    return v18;
  }

  return result;
}

uint64_t HealthAppPluginSource.knownBundleIdentifiers()()
{
  v1 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2284272C0(0, v6, 0);
    v7 = v18;
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_228408514(v8, v4, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v11 = *(v4 + 2);
      v10 = *(v4 + 3);

      sub_228408700(v4);
      v18 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2284272C0((v12 > 1), v13 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v15 = sub_228406280(v7);

  return v15;
}

uint64_t HealthAppPluginSource.loadedPlugins()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 28));
  return v2;
}

unint64_t sub_22846140C(uint64_t *a1)
{
  result = (*(v1 + 24))();
  if (!v2)
  {
    v5 = result;
    if (result >> 62)
    {
      result = sub_22855DB4C();
      v6 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
          return result;
        }

        v7 = 0;
        v14 = v5 & 0xC000000000000001;
        v11 = v6;
        v12 = a1;
        do
        {
          if (v14)
          {
            v9 = MEMORY[0x22AAB9D20](v7, v5);
          }

          else
          {
            v9 = *(v5 + 8 * v7 + 32);
          }

          v10 = v9;
          sub_228408938(v9, a1, v13);
          v8 = v13[2];

          a1 = v12;
          swift_unknownObjectRelease();

          ++v7;
        }

        while (v11 != v7);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HealthAppPluginSource.loadPluginsFromDisk()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 7);
  sub_228462B54(&v1[4]);
  os_unfair_lock_unlock(v1 + 7);
}

void *HealthAppPluginSource.deinit()
{

  return v0;
}

uint64_t HealthAppPluginSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t HealthAppPluginSource.launchGenerationPlugins()()
{
  v42 = *v0;
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  *&v44 = &v38 - v3;
  v4 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v47 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v52 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v38 - v8;
  result = MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v43 = v0;
  v12 = v0[5];
  v13 = *(v12 + 16);
  v46 = v1;
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    *&v45 = v4;
    while (v15 < *(v12 + 16))
    {
      v17 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v18 = *(v47 + 72);
      sub_228408514(v12 + v17 + v18 * v15, v11, type metadata accessor for HealthAppPluginSource.KnownBundle);
      if (v11[*(v4 + 28)] == 1)
      {
        sub_22840875C(v11, v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22840B0EC(0, *(v16 + 16) + 1, 1);
          v16 = v48;
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_22840B0EC((v20 > 1), v21 + 1, 1);
          v16 = v48;
        }

        *(v16 + 16) = v21 + 1;
        result = sub_22840875C(v52, v16 + v17 + v21 * v18);
        v4 = v45;
      }

      else
      {
        result = sub_228408700(v11);
      }

      if (v14 == ++v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_13:
  v41 = *(v16 + 16);
  if (v41)
  {
    v22 = 0;
    v52 = MEMORY[0x277D84F90];
    v23 = v44;
    v24 = v39;
    v40 = v16;
    while (v22 < *(v16 + 16))
    {
      sub_228408514(v16 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v22, v24, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);
      v27 = v43;
      v28 = sub_22840B13C(v25, v26, v23);
      v29 = v27[2];
      MEMORY[0x28223BE20](v28);
      *(&v38 - 6) = v25;
      *(&v38 - 5) = v26;
      *(&v38 - 4) = v23;
      *(&v38 - 3) = v27;
      *(&v38 - 16) = 1;
      *(&v38 - 1) = v42;
      os_unfair_lock_lock((v29 + 28));
      v30 = v46;
      sub_22840B2D8((v29 + 16), &v48);
      if (v30)
      {
        os_unfair_lock_unlock((v29 + 28));

        sub_22840BD38(v23);
        sub_228408700(v24);

        return v52;
      }

      v46 = 0;
      os_unfair_lock_unlock((v29 + 28));
      sub_22840BD38(v23);
      v31 = v48;
      v32 = v50;
      v44 = v51;
      v45 = v49;
      sub_228408700(v24);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228409BF8(0, *(v52 + 2) + 1, 1, v52);
        v52 = result;
      }

      v34 = *(v52 + 2);
      v33 = *(v52 + 3);
      if (v34 >= v33 >> 1)
      {
        result = sub_228409BF8((v33 > 1), v34 + 1, 1, v52);
        v52 = result;
      }

      v35 = v52;
      *(v52 + 2) = v34 + 1;
      v36 = &v35[48 * v34];
      *(v36 + 4) = v31;
      ++v22;
      v37 = v44;
      *(v36 + 40) = v45;
      *(v36 + 7) = v32;
      *(v36 + 4) = v37;
      v16 = v40;
      if (v41 == v22)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v52 = MEMORY[0x277D84F90];
LABEL_24:

  return v52;
}

uint64_t HealthAppPluginSource.notificationCenterDelegateProvidingPlugins()()
{
  v42 = *v0;
  sub_228405990(0, qword_280DEDF70, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  *&v44 = &v38 - v3;
  v4 = type metadata accessor for HealthAppPluginSource.KnownBundle(0);
  v47 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v52 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v38 - v8;
  result = MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v43 = v0;
  v12 = v0[5];
  v13 = *(v12 + 16);
  v46 = v1;
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    *&v45 = v4;
    while (v15 < *(v12 + 16))
    {
      v17 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v18 = *(v47 + 72);
      sub_228408514(v12 + v17 + v18 * v15, v11, type metadata accessor for HealthAppPluginSource.KnownBundle);
      if (v11[*(v4 + 32)] == 1)
      {
        sub_22840875C(v11, v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22840B0EC(0, *(v16 + 16) + 1, 1);
          v16 = v48;
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_22840B0EC((v20 > 1), v21 + 1, 1);
          v16 = v48;
        }

        *(v16 + 16) = v21 + 1;
        result = sub_22840875C(v52, v16 + v17 + v21 * v18);
        v4 = v45;
      }

      else
      {
        result = sub_228408700(v11);
      }

      if (v14 == ++v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_13:
  v41 = *(v16 + 16);
  if (v41)
  {
    v22 = 0;
    v52 = MEMORY[0x277D84F90];
    v23 = v44;
    v24 = v39;
    v40 = v16;
    while (v22 < *(v16 + 16))
    {
      sub_228408514(v16 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v22, v24, type metadata accessor for HealthAppPluginSource.KnownBundle);
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);
      v27 = v43;
      v28 = sub_22840B13C(v25, v26, v23);
      v29 = v27[2];
      MEMORY[0x28223BE20](v28);
      *(&v38 - 6) = v25;
      *(&v38 - 5) = v26;
      *(&v38 - 4) = v23;
      *(&v38 - 3) = v27;
      *(&v38 - 16) = 1;
      *(&v38 - 1) = v42;
      os_unfair_lock_lock((v29 + 28));
      v30 = v46;
      sub_22840B2D8((v29 + 16), &v48);
      if (v30)
      {
        os_unfair_lock_unlock((v29 + 28));

        sub_22840BD38(v23);
        sub_228408700(v24);

        return v52;
      }

      v46 = 0;
      os_unfair_lock_unlock((v29 + 28));
      sub_22840BD38(v23);
      v31 = v48;
      v32 = v50;
      v44 = v51;
      v45 = v49;
      sub_228408700(v24);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228409BF8(0, *(v52 + 2) + 1, 1, v52);
        v52 = result;
      }

      v34 = *(v52 + 2);
      v33 = *(v52 + 3);
      if (v34 >= v33 >> 1)
      {
        result = sub_228409BF8((v33 > 1), v34 + 1, 1, v52);
        v52 = result;
      }

      v35 = v52;
      *(v52 + 2) = v34 + 1;
      v36 = &v35[48 * v34];
      *(v36 + 4) = v31;
      ++v22;
      v37 = v44;
      *(v36 + 40) = v45;
      *(v36 + 7) = v32;
      *(v36 + 4) = v37;
      v16 = v40;
      if (v41 == v22)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v52 = MEMORY[0x277D84F90];
LABEL_24:

  return v52;
}

uint64_t HealthAppPluginSource.conformingPlugins<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 7);

  os_unfair_lock_unlock(v3 + 7);
  sub_2283F783C(0, &qword_280DE9648, &type metadata for HealthAppPluginInfo, MEMORY[0x277D83940]);
  sub_228407900(&qword_280DE9640, &qword_280DE9648, &type metadata for HealthAppPluginInfo, MEMORY[0x277D83970]);
  v4 = sub_22855D2CC();

  return v4;
}

uint64_t sub_228462260@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectRetain();
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t HealthAppPluginSource.pluginObject<A>(name:_:)@<X0>(uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = HealthAppPluginSource.plugin(name:allowDynamicFallback:)(v10);
  if (!v4)
  {
    v8 = v11;

    v9 = swift_dynamicCast();
    return (*(*(a3 - 8) + 56))(a4, v9 ^ 1u, 1, a3);
  }

  return result;
}

void *sub_2284623E0(uint64_t a1, uint64_t a2)
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

  sub_2283F783C(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
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

void *sub_228462484(uint64_t a1, uint64_t a2)
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

  sub_2283F783C(0, &qword_27D83F400, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_228462534(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_2284626C0(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_22855DAFC();
  sub_2283EF310(0, a5, a6);
  sub_22844B928(a7, a5, a6);
  result = sub_22855D56C();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_22855DB8C())
      {
        goto LABEL_30;
      }

      sub_2283EF310(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void *sub_2284628F0(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v27 = result;
    v28 = a3;
    result = 0;
    v9 = 0;
    v26 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = a4;
      v15 = *(a4 + 48) + 56 * (__clz(__rbit64(v7)) | (v9 << 6));
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v7 &= v7 - 1;
      v19 = *(v15 + 32);
      v18 = *(v15 + 40);
      v20 = *(v15 + 48);
      v21 = *v15;
      *v8 = *v15;
      *(v8 + 16) = v17;
      *(v8 + 24) = v16;
      *(v8 + 32) = v19;
      *(v8 + 40) = v18;
      *(v8 + 48) = v20;
      if (v11 == v28)
      {
        v25 = v21;

        a4 = v14;
        v5 = v26;
        result = v27;
        a3 = v28;
        goto LABEL_24;
      }

      v8 += 56;
      v22 = v21;

      result = v11;
      v23 = __OFADD__(v11++, 1);
      a4 = v14;
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
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
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v24 = v9 + 1;
    }

    else
    {
      v24 = v10;
    }

    v9 = v24 - 1;
    a3 = result;
    v5 = v26;
    result = v27;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_228462B54(unint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    return sub_22846140C(result);
  }

  return result;
}

uint64_t sub_228462BA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_228462BEC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_228462C98(uint64_t a1)
{
  sub_228462DCC();
  if (v1 <= 0x3F)
  {
    sub_228462EB4(319, &qword_280DEE398, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      sub_228462DFC();
      if (v3 <= 0x3F)
      {
        sub_228462E2C();
        if (v4 <= 0x3F)
        {
          sub_228462E5C();
          if (v5 <= 0x3F)
          {
            sub_228462EB4(319, &qword_280DECFE8, sub_228418D44);
            if (v6 <= 0x3F)
            {
              sub_228462F00();
              if (v7 <= 0x3F)
              {
                sub_228462F6C();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_228462DCC()
{
  result = qword_280DED288;
  if (!qword_280DED288)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280DED288);
  }

  return result;
}

uint64_t sub_228462DFC()
{
  result = qword_280DED290;
  if (!qword_280DED290)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280DED290);
  }

  return result;
}

uint64_t sub_228462E2C()
{
  result = qword_280DED298;
  if (!qword_280DED298)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280DED298);
  }

  return result;
}

void sub_228462E5C()
{
  if (!qword_280DED0A0)
  {
    v0 = sub_2283EF310(0, &qword_280DED098, 0x277CCA8D8);
    if (!v1)
    {
      atomic_store(v0, &qword_280DED0A0);
    }
  }
}

void sub_228462EB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_228462F00()
{
  if (!qword_280DED258)
  {
    sub_2283F783C(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_280DED258);
    }
  }
}

uint64_t sub_228462F6C()
{
  result = qword_280DED280;
  if (!qword_280DED280)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280DED280);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_228462FDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_228463024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_228463074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_228463284()
{
  result = qword_280DEBD18;
  if (!qword_280DEBD18)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEBD18);
  }

  return result;
}

unint64_t sub_2284632CC()
{
  result = qword_27D83F7E0;
  if (!qword_27D83F7E0)
  {
    type metadata accessor for DateRangeFeatureTag(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83F7E0);
  }

  return result;
}

unint64_t sub_228463314()
{
  result = qword_280DEE840;
  if (!qword_280DEE840)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEE840);
  }

  return result;
}

unint64_t sub_22846335C()
{
  result = qword_280DEEC30;
  if (!qword_280DEEC30)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEEC30);
  }

  return result;
}

unint64_t sub_2284633A4()
{
  result = qword_27D83F7E8;
  if (!qword_27D83F7E8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83F7E8);
  }

  return result;
}

unint64_t sub_2284633EC()
{
  result = qword_27D83F7F0;
  if (!qword_27D83F7F0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83F7F0);
  }

  return result;
}

unint64_t sub_228463434()
{
  result = qword_27D83F7F8;
  if (!qword_27D83F7F8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83F7F8);
  }

  return result;
}

unint64_t sub_22846347C()
{
  result = qword_280DEE820;
  if (!qword_280DEE820)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEE820);
  }

  return result;
}

unint64_t sub_2284634C4()
{
  result = qword_280DEE828;
  if (!qword_280DEE828)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEE828);
  }

  return result;
}

unint64_t sub_22846350C()
{
  result = qword_280DEE838;
  if (!qword_280DEE838)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEE838);
  }

  return result;
}

unint64_t sub_228463554()
{
  result = qword_280DEE830;
  if (!qword_280DEE830)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEE830);
  }

  return result;
}

id static Keyword.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t UserDefault.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_228463ACC(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefault.wrappedValue.getter(a2, v11);
  return sub_2284637B4;
}

void sub_2284637B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_228463ACC(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_228463ACC((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_2284638A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_22855DA2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = sub_22855DA1C();
  v10 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  swift_unknownObjectRelease();
  v11 = *(v2 + 16);
  if (v9 == v10)
  {
    v17 = sub_22855D17C();
    [v11 setURL:0 forKey:v17];
    v14 = v17;
  }

  else
  {
    (*(v6 + 16))(v8, a1, v5);
    v12 = *(v4 - 8);
    if ((*(v12 + 48))(v8, 1, v4) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_22855E14C();
      (*(v12 + 8))(v8, v4);
    }

    v15 = sub_22855D17C();
    [v11 setObject:v13 forKey:v15];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_228463ACC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_22855DA2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9 = *(v4 - 8);
  (*(v9 + 16))(&v11 - v7, a1, v4);
  (*(v9 + 56))(v8, 0, 1, v4);
  sub_2284638A0(v8, a2);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_228463C14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_228463DA4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

id Profile.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id Profile.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for Profile();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id Profile.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Profile();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_2284641F8()
{
  if (qword_280DEE228 != -1)
  {
    swift_once();
  }

  xmmword_280DE92A0 = xmmword_280DEE230;

  return result;
}

uint64_t static HKSharedSummaryTransaction.currentHealthappdManagedTransactionVersionMetadata.getter()
{
  if (qword_280DE9298 != -1)
  {
    swift_once();
  }

  v0 = xmmword_280DE92A0;

  return v0;
}

uint64_t HKSharedSummaryTransaction.dateCommitted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 metadata];
  v4 = sub_22855D0EC();

  if (*(v4 + 16) && (v5 = sub_2283F6D18(0xD000000000000032, 0x800000022856F950), (v6 & 1) != 0))
  {
    sub_2283F6E48(*(v4 + 56) + 32 * v5, &v12);

    v7 = sub_22855C16C();
    v8 = swift_dynamicCast();
    return (*(*(v7 - 8) + 56))(a1, v8 ^ 1u, 1, v7);
  }

  else
  {

    v10 = sub_22855C16C();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

BOOL HKSharedSummaryTransaction.isCommitted.getter()
{
  sub_22843609C(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  HKSharedSummaryTransaction.dateCommitted.getter(v2);
  v3 = sub_22855C16C();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_2284648E4(v2);
  return v4;
}

uint64_t HKSharedSummaryTransaction.bundleVersion.getter()
{
  v1 = [v0 metadata];
  v2 = sub_22855D0EC();

  if (*(v2 + 16) && (v3 = sub_2283F6D18(0xD000000000000032, 0x800000022856F990), (v4 & 1) != 0))
  {
    sub_2283F6E48(*(v2 + 56) + 32 * v3, v7);

    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t HKSharedSummaryTransaction.hasPairedDeviceData.getter()
{
  v1 = [v0 metadata];
  v2 = sub_22855D0EC();

  if (*(v2 + 16) && (v3 = sub_2283F6D18(0xD000000000000038, 0x800000022856FA10), (v4 & 1) != 0))
  {
    sub_2283F6E48(*(v2 + 56) + 32 * v3, v7);

    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_2284646E4()
{
  v1 = [v0 metadata];
  v2 = sub_22855D0EC();

  if (*(v2 + 16) && (v3 = sub_2283F6D18(0xD000000000000048, 0x800000022856FA50), (v4 & 1) != 0))
  {
    sub_2283F6E48(*(v2 + 56) + 32 * v3, v7);

    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t HKSharedSummaryTransaction.isUsableHealthappdManagedTransaction.getter()
{
  v0 = sub_2284646E4();
  if (qword_280DE9298 != -1)
  {
    v4 = v0;
    v5 = v1;
    swift_once();
    v0 = v4;
    v1 = v5;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:
    v3 = 0;
    return v3 & 1;
  }

  if (!v1)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v0 == xmmword_280DE92A0 && v1 == *(&xmmword_280DE92A0 + 1))
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_22855E15C();
  }

  return v3 & 1;
}

id Collection<>.selectPreferredTransaction()(uint64_t a1, uint64_t a2)
{
  v3 = PreferredSummaryTransactionSelector.selectTransaction<A>(from:)(v2, a1, a2);

  return v3;
}

uint64_t sub_2284648E4(uint64_t a1)
{
  sub_22843609C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228464940(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2284272C0(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2283F6E48(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2284272C0((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_228464A54(unint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_22855DB4C();
    sub_22855DD4C();
    v2 = sub_22855DB4C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_22855DD4C();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x22AAB9D20](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_22855DD1C();
        sub_22855DD5C();
        sub_22855DD6C();
        sub_22855DD2C();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

id sub_228464BC8()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_228464EF4((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v5;
  v3 = [v5 viewContext];

  return v3;
}

uint64_t sub_228464C6C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_228464F10((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

id sub_228464CEC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v6 = sub_228464E14();
    v7 = [v6 newBackgroundContext];

    [v7 setAutomaticallyMergesChangesFromParent_];
    v8 = [objc_allocWithZone(MEMORY[0x277CBE460]) initWithMergeType_];
    [v7 setMergePolicy_];

    *a1 = v7;
    v4 = v7;
    v3 = 0;
  }

  *a2 = v4;
  return v3;
}

void sub_228464DB8(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  os_unfair_lock_lock((v2 + 24));
  sub_228466248((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_228464E14()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_228466264((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

id sub_228464E94@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v7 = sub_228465DC0(*(a2 + 32));
    *a1 = v7;
    v5 = v7;
    v4 = 0;
  }

  *a3 = v5;
  return v4;
}

void sub_228464F2C(void *a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 24));
  sub_228464F88((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

id sub_228464F88(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

void (*sub_228464FCC(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 24);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 24));
  sub_228466264((v3 + 16), &v5);
  a1[2] = 0;
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v5;
  return sub_228465078;
}

void sub_228465078(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v2 = v2;
    os_unfair_lock_lock((v3 + 24));
    sub_228466248((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    os_unfair_lock_lock((v3 + 24));
    sub_228466248((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }
}

id sub_228465120()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_228466264((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v5;
  v3 = [v5 persistentStoreCoordinator];

  return v3;
}

uint64_t sub_2284651C4()
{
  v0 = sub_22855C1DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_22855DC6C();

  v8 = 0x6C756E2F7665642FLL;
  v9 = 0xEA00000000002F6CLL;
  sub_22855C1CC();
  v4 = sub_22855C17C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x22AAB92A0](v4, v6);

  MEMORY[0x22AAB92A0](0x6574696C71732ELL, 0xE700000000000000);
  sub_22855BF9C();
}

uint64_t MemoryHealthExperienceStore.__allocating_init()()
{
  v0 = swift_allocObject();
  MemoryHealthExperienceStore.init()();
  return v0;
}

void *MemoryHealthExperienceStore.init()()
{
  v1 = v0;
  v2 = sub_22855C06C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284654EC(0, &qword_27D83F800, &unk_27D83F808, &qword_280DED110, 0x277CBE440);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  v1[2] = v6;
  sub_2284654EC(0, &qword_27D83F818, &qword_27D83F820, &qword_27D83F828, 0x277CBE4A0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  v1[3] = v7;
  sub_2284651C4();
  v8 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  v9 = sub_22855BFBC();
  v10 = [v8 initWithURL_];

  (*(v3 + 8))(v5, v2);
  v1[4] = v10;
  return v1;
}

void sub_2284654EC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_228465560(255, a3, a4, a5);
    type metadata accessor for os_unfair_lock_s(255);
    v6 = sub_22855DCFC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_228465560(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2283EF310(255, a3, a4);
    v5 = sub_22855DA2C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2284655B8()
{
  v2 = sub_228465DC0(*(v0 + 32));
  v3 = *(v0 + 24);
  os_unfair_lock_lock((v3 + 24));
  sub_228466248((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  if (v1)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_228465638(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_22855BF2C();
    sub_22855DC6C();

    v3 = [v2 description];
    v4 = sub_22855D1AC();
    v6 = v5;

    MEMORY[0x22AAB92A0](v4, v6);

    MEMORY[0x22AAB92A0](8236, 0xE200000000000000);
    v7 = [v2 userInfo];
    sub_22855D0EC();

    v8 = sub_22855D0FC();
    v10 = v9;

    MEMORY[0x22AAB92A0](v8, v10);

    sub_22855DEDC();
    __break(1u);
  }
}

uint64_t sub_2284657B4()
{
  v1 = v0;
  aBlock[0] = type metadata accessor for FeedItem();
  sub_22842B488();
  sub_22855D1BC();
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_22855D17C();

  v4 = [v2 initWithEntityName_];

  [v4 setIncludesPropertyValues_];
  v5 = *(v0 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_22846627C((v5 + 16), aBlock);
  os_unfair_lock_unlock((v5 + 24));
  v6 = aBlock[0];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_228465FF8;
  *(v8 + 24) = v7;
  aBlock[4] = sub_228466000;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228417B68;
  aBlock[3] = &block_descriptor_5;
  v9 = _Block_copy(aBlock);

  v10 = v4;

  [v6 performBlockAndWait_];

  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

id sub_2284659FC(uint64_t a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = sub_228464C6C();
  sub_22846618C();
  v3 = sub_22855D97C();

  v4 = sub_228464A54(v3);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (v5 >> 62)
  {
    v6 = sub_22855DB4C();
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  v7 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AAB9D20](v7, v5);
    }

    else
    {
      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    v10 = sub_228464C6C();
    [v10 deleteObject_];
  }

  while (v6 != v7);
LABEL_13:

  v11 = sub_228464C6C();
  v17[0] = 0;
  v12 = [v11 save_];

  v13 = v17[0];
  if (v12)
  {

    return v13;
  }

  else
  {
    v15 = v17[0];
    v16 = sub_22855BF3C();

    swift_willThrow();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t MemoryHealthExperienceStore.deinit()
{

  return v0;
}

uint64_t MemoryHealthExperienceStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_228465D3C()
{
  v2 = *v0;
  v3 = sub_228465DC0(*(v2 + 32));
  v4 = *(v2 + 24);
  os_unfair_lock_lock((v4 + 24));
  sub_228466248((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
  if (v1)
  {
    __break(1u);
  }

  else
  {
  }
}

id sub_228465DC0(void *a1)
{
  if (qword_280DEDE38 != -1)
  {
    swift_once();
  }

  v2 = qword_280DF6A98;
  v3 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v4 = sub_22855D17C();
  v5 = [v3 initWithName:v4 managedObjectModel:v2];

  sub_2284661F0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560690;
  *(v6 + 32) = a1;
  sub_2283EF310(0, &unk_280DED0D8, 0x277CBE4E0);
  v7 = a1;
  v8 = sub_22855D39C();

  [v5 setPersistentStoreDescriptions_];

  v14[4] = sub_228465638;
  v14[5] = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2283F83B0;
  v14[3] = &block_descriptor_17;
  v9 = _Block_copy(v14);
  [v5 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v9);
  v10 = [v5 viewContext];
  [v10 setAutomaticallyMergesChangesFromParent_];

  v11 = [v5 viewContext];
  v12 = [objc_allocWithZone(MEMORY[0x277CBE460]) initWithMergeType_];
  [v11 setMergePolicy_];

  return v5;
}

unint64_t sub_22846618C()
{
  result = qword_27D840260;
  if (!qword_27D840260)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D840260);
  }

  return result;
}

void sub_2284661F0()
{
  if (!qword_280DED000)
  {
    v0 = sub_22855E12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED000);
    }
  }
}

uint64_t (*MockSharableModelReadableStorage.fetchHandler.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228466408(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  v6 = *(v0 + 16);
  v7 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  sub_22855C94C();
  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = v9;
  return sub_2284196B0;
}

void sub_228466408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_22846646C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_228466408(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *(*a1 + 16);
  v10 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  swift_beginAccess();
  (*(v6 + 16))(v8, v9 + v10, v5);
  sub_22855C94C();
  (*(v6 + 8))(v8, v5);
  result = v12[0];
  *a2 = *v12;
  return result;
}

uint64_t sub_2284665C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22841C100;
  *(v5 + 24) = v4;
  swift_beginAccess();
  sub_228466408(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockSharableModelReadableStorage.fetchHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_228466408(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockSharableModelReadableStorage.fetchHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA8uLL);
  }

  v5 = v4;
  *a1 = v4;
  sub_228466408(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v7 = v6;
  *(v5 + 136) = v6;
  v8 = *(v6 - 8);
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  *(v5 + 144) = v9;
  v10 = *(v1 + 16);
  v11 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  *(v5 + 152) = v10;
  *(v5 + 160) = v11;
  v12 = v9;
  swift_beginAccess();
  (*(v8 + 16))(v12, v10 + v11, v7);
  sub_22855C94C();
  (*(v8 + 8))(v12, v7);
  v13 = swift_allocObject();
  *(v13 + 16) = *(v5 + 88);
  *(v5 + 72) = sub_22841C100;
  *(v5 + 80) = v13;
  return sub_228466984;
}

void sub_228466984(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 144);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v2[13] = sub_228466DFC;
    v2[14] = v6;
    swift_beginAccess();
    swift_retain_n();
    sub_22855C95C();
    swift_endAccess();
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v4;
    v2[15] = sub_228466DFC;
    v2[16] = v7;
    swift_beginAccess();

    sub_22855C95C();
    swift_endAccess();
  }

  free(v5);

  free(v2);
}

uint64_t MockSharableModelReadableStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for MockSharableModelStorage(0);
  swift_allocObject();
  *(v0 + 16) = MockSharableModelStorage.init()();
  return v0;
}

uint64_t MockSharableModelReadableStorage.init()()
{
  type metadata accessor for MockSharableModelStorage(0);
  swift_allocObject();
  *(v0 + 16) = MockSharableModelStorage.init()();
  return v0;
}

uint64_t MockSharableModelReadableStorage.fetch(matching:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228466408(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v18[-1] - v10;
  v12 = *(v3 + 16);
  v13 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  swift_beginAccess();
  (*(v9 + 16))(v11, v12 + v13, v8);
  sub_22855C94C();
  (*(v9 + 8))(v11, v8);
  v14 = v18[0];
  v17 = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v18[0] = sub_228466D28;
  v18[1] = v15;
  v14(&v17, v18);
}

uint64_t MockSharableModelReadableStorage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static StorageLocations.feedItemPluginsDirectory.getter()
{
  v0 = sub_22855BF5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22855C06C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static StorageLocations.rootDirectory.getter();
  v9[0] = 0xD000000000000026;
  v9[1] = 0x800000022856F190;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91C0], v0);
  sub_2283F79A4();
  sub_22855C05C();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

id sub_228466FD0()
{
  result = [objc_opt_self() defaultManager];
  qword_280DEBDE8 = result;
  return result;
}

id static StorageLocations.fileManager.getter()
{
  if (qword_280DEBDE0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DEBDE8;

  return v1;
}

uint64_t static StorageLocations.mobileLibraryHealthDirectory.getter()
{
  v0 = sub_22855C06C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static StorageLocations.homeMobileDirectory.getter();
  sub_22855BFCC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static StorageLocations.clientDirectory.getter()
{
  v0 = sub_22855C06C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  static StorageLocations.homeMobileDirectory.getter();
  sub_22855BFCC();
  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_22855BFCC();
  return (v7)(v6, v0);
}

uint64_t sub_22846758C()
{
  v0 = sub_22855CABC();
  __swift_allocate_value_buffer(v0, qword_280DEE808);
  __swift_project_value_buffer(v0, qword_280DEE808);
  return sub_22855CA9C();
}

HealthPlatform::LogCategory_optional __swiftcall LogCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22855E17C();

  v5 = 0;
  v6 = 7;
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v5 = 1;
      goto LABEL_19;
    case 2:
      v5 = 2;
      goto LABEL_19;
    case 3:
      v5 = 3;
      goto LABEL_19;
    case 4:
      v5 = 4;
      goto LABEL_19;
    case 5:
      v5 = 5;
      goto LABEL_19;
    case 6:
      v5 = 6;
LABEL_19:
      v6 = v5;
      break;
    case 7:
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    default:
      v6 = 25;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_228467810()
{
  v0 = LogCategory.rawValue.getter();
  v2 = v1;
  if (v0 == LogCategory.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22855E15C();
  }

  return v5 & 1;
}

uint64_t sub_2284678AC()
{
  sub_22855E22C();
  LogCategory.rawValue.getter();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_228467914(uint64_t a1)
{
  LogCategory.rawValue.getter();
  sub_22855D20C();
}

uint64_t sub_228467978(uint64_t a1)
{
  sub_22855E22C();
  LogCategory.rawValue.getter();
  sub_22855D20C();

  return sub_22855E27C();
}

unint64_t sub_2284679E8@<X0>(unint64_t *a1@<X8>)
{
  result = LogCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Array<A>.singleLineDescription()()
{
  v0 = MEMORY[0x277D837D0];
  sub_2283F788C(0, &qword_280DEE7C8, MEMORY[0x277D837D0]);
  sub_228467D44(&qword_280DEE7C0, &qword_280DEE7C8, v0, MEMORY[0x277D83958]);
  return sub_22855D15C();
}

uint64_t Optional.logDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  if ((*(v2 + 48))(v10, 1, v1) == 1)
  {
    return 7104878;
  }

  (*(v2 + 32))(v8, v10, v1);
  (*(v2 + 16))(v5, v8, v1);
  v13 = sub_22855D1BC();
  (*(v2 + 8))(v8, v1);
  return v13;
}

unint64_t sub_228467CAC()
{
  result = qword_280DEEC38;
  if (!qword_280DEEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEEC38);
  }

  return result;
}

uint64_t sub_228467D44(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2283F788C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228467DF8(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = sub_22855C85C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, a3);
  (*(v9 + 16))(v11, v12, v8);
  a4(0);
  return sub_22855C61C();
}

uint64_t sub_228467F54()
{
  v0 = sub_22855C85C();
  __swift_allocate_value_buffer(v0, qword_280DE9EA8);
  __swift_project_value_buffer(v0, qword_280DE9EA8);
  return sub_22855C84C();
}

void sub_228467FB8(uint64_t a1)
{
  if (!qword_280DEAB00)
  {
    type metadata accessor for HKWheelchairUse(255);
    v5[0] = v2;
    v5[1] = sub_22846B99C(&qword_280DE9468, type metadata accessor for HKWheelchairUse, &protocol conformance descriptor for HKWheelchairUse);
    v5[2] = sub_22846B99C(&qword_280DE9480, type metadata accessor for HKWheelchairUse, &protocol conformance descriptor for HKWheelchairUse);
    v5[3] = sub_22846B99C(&qword_280DE9478, type metadata accessor for HKWheelchairUse, &unk_22855FDD8);
    v3 = type metadata accessor for UserCharacteristicInputSignal(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_280DEAB00);
    }
  }
}

uint64_t sub_2284680F8()
{
  v0 = sub_22855C85C();
  __swift_allocate_value_buffer(v0, qword_280DE9EF0);
  __swift_project_value_buffer(v0, qword_280DE9EF0);
  return sub_22855C84C();
}

void sub_22846815C(uint64_t a1)
{
  if (!qword_280DEAB10[0])
  {
    v2 = sub_22855BEEC();
    v3 = MEMORY[0x277CC8990];
    v6[0] = v2;
    v6[1] = sub_22846B99C(&qword_280DECDB0, MEMORY[0x277CC8990], MEMORY[0x277CC89B0]);
    v6[2] = sub_22846B99C(&qword_280DECDC0, v3, MEMORY[0x277CC8998]);
    v6[3] = sub_22846B99C(&qword_280DECDB8, v3, MEMORY[0x277CC89A8]);
    v4 = type metadata accessor for UserCharacteristicInputSignal(a1, v6);
    if (!v5)
    {
      atomic_store(v4, qword_280DEAB10);
    }
  }
}

uint64_t sub_228468284()
{
  v0 = sub_22855C85C();
  __swift_allocate_value_buffer(v0, qword_280DE9EC8);
  __swift_project_value_buffer(v0, qword_280DE9EC8);
  return sub_22855C84C();
}

void sub_2284682E8(uint64_t a1)
{
  if (!qword_280DEAB08)
  {
    type metadata accessor for HKBiologicalSex(255);
    v5[0] = v2;
    v5[1] = sub_22846B99C(&qword_280DE94A0, type metadata accessor for HKBiologicalSex, &protocol conformance descriptor for HKBiologicalSex);
    v5[2] = sub_22846B99C(&qword_280DE94B8, type metadata accessor for HKBiologicalSex, &protocol conformance descriptor for HKBiologicalSex);
    v5[3] = sub_22846B99C(&qword_280DE94B0, type metadata accessor for HKBiologicalSex, &unk_22855FDAC);
    v3 = type metadata accessor for UserCharacteristicInputSignal(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_280DEAB08);
    }
  }
}

uint64_t sub_228468410@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22855C85C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t static UserCharacteristicInputSignal<>.wheelchairUse(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = a2;
  v23 = a4;
  v8 = sub_22855C85C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  if (qword_280DE9EA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_280DE9EA8);
  v16 = *(v9 + 16);
  v16(v14, v15, v8);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  v16(v12, v14, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2284686C8;
  *(v18 + 24) = v17;
  v19 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v20 = sub_2284693C0(a1, v22, a3, v23, v12, sub_22846BC9C, v18, sub_228467FB8);
  (*(v9 + 8))(v14, v8);
  return v20;
}

uint64_t UserCharacteristicInputSignal.__allocating_init(context:observer:identifier:provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_228468B44(a1, a2, a3, a4, a5, a6, a7, &unk_283B82498, sub_22846A884);
}

{
  return sub_228468B44(a1, a2, a3, a4, a5, a6, a7, &unk_283B82510, sub_22846A944);
}

{
  v14 = swift_allocObject();
  UserCharacteristicInputSignal.init(context:observer:identifier:provider:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t static UserCharacteristicInputSignal<>.dateOfBirth(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = a2;
  v23 = a4;
  v8 = sub_22855C85C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  if (qword_280DE9EE8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_280DE9EF0);
  v16 = *(v9 + 16);
  v16(v14, v15, v8);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  v16(v12, v14, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_2285628D8;
  *(v18 + 24) = v17;
  v19 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v20 = sub_2284693C0(a1, v22, a3, v23, v12, sub_22846A93C, v18, sub_22846815C);
  (*(v9 + 8))(v14, v8);
  return v20;
}

uint64_t sub_228468974(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_228468A14;

  return MEMORY[0x282120600](a1);
}

uint64_t sub_228468A14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_228468B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v26 = a3;
  v27 = a4;
  v25 = a9;
  v16 = sub_22855C85C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a5, v16);
  v20 = swift_allocObject();
  v21 = *(v10 + 96);
  *(v20 + 16) = *(v10 + 80);
  *(v20 + 32) = v21;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  v22 = swift_allocObject();
  UserCharacteristicInputSignal.init(context:observer:identifier:provider:)(a1, a2, v26, v27, v19, v25, v20);
  (*(v17 + 8))(a5, v16);
  return v22;
}

uint64_t static UserCharacteristicInputSignal<>.biologicalSex(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = a2;
  v23 = a4;
  v8 = sub_22855C85C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  if (qword_280DE9EC0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_280DE9EC8);
  v16 = *(v9 + 16);
  v16(v14, v15, v8);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  v16(v12, v14, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_22846A974;
  *(v18 + 24) = v17;
  v19 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v20 = sub_2284693C0(a1, v22, a3, v23, v12, sub_22846A9A0, v18, sub_2284682E8);
  (*(v9 + 8))(v14, v8);
  return v20;
}

void sub_228468EF8(void *a1@<X0>, SEL *a2@<X1>, SEL *a3@<X2>, uint64_t a4@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v6 = [a1 *a2];
  if (v6)
  {
    v7 = v6;
    v8 = v11[0];
    v9 = [v7 *a3];

    *a4 = v9;
    *(a4 + 8) = 0;
  }

  else
  {
    v10 = v11[0];
    sub_22855BF3C();

    swift_willThrow();
  }
}

uint64_t sub_228468FF4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22855C85C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, a2);
  (*(v6 + 16))(v8, v9, v5);
  return sub_22855C82C();
}

uint64_t UserCharacteristicInputSignal.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280DF6A40;
  v4 = sub_22855C85C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UserCharacteristicInputSignal.provider.getter()
{
  v1 = *(v0 + qword_280DF6A20);

  return v1;
}

uint64_t sub_22846923C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228469294();
  }

  return result;
}

uint64_t sub_228469294()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(v0 + qword_280DF6A20);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v1 + 80);
  *(v5 + 24) = *(v2 + 88);
  *(v5 + 40) = *(v1 + 104);
  *(v5 + 48) = v4;

  v3(sub_22846B9FC, v5);
}

uint64_t sub_2284693C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v30 = sub_22855D81C();
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855D7BC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22855CFEC();
  MEMORY[0x28223BE20](v13 - 8);
  a8(0);
  v14 = swift_allocObject();
  v29 = qword_280DF6A38;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_22855CFDC();
  v38 = MEMORY[0x277D84F90];
  sub_22846B99C(&unk_280DED140, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_2283FA33C(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22846B7E8();
  sub_22855DA9C();
  (*(v9 + 104))(v11, *MEMORY[0x277D85260], v30);
  v15 = sub_22855D84C();
  *(v14 + v29) = v15;
  v16 = v32;
  *(v14 + 16) = v31;
  *(v14 + 24) = v16;
  v17 = (v14 + qword_280DF6A28);
  v18 = v34;
  *v17 = v33;
  v17[1] = v18;
  v19 = qword_280DF6A40;
  v20 = sub_22855C85C();
  v21 = *(v20 - 8);
  v22 = v14 + v19;
  v23 = v35;
  (*(v21 + 16))(v22, v35, v20);
  v24 = (v14 + qword_280DF6A20);
  v25 = v37;
  *v24 = v36;
  v24[1] = v25;
  sub_22855C4AC();
  swift_allocObject();
  v26 = v15;
  v27 = sub_22855C48C();
  (*(v21 + 8))(v23, v20);
  *(v14 + qword_280DF6A30) = v27;
  return v14;
}

uint64_t UserCharacteristicInputSignal.init(context:observer:identifier:provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v35 = a6;
  v36 = a7;
  v33 = a4;
  v34 = a5;
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v29 = sub_22855D81C();
  v9 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855D7BC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22855CFEC();
  MEMORY[0x28223BE20](v13 - 8);
  v28 = qword_280DF6A38;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_22855CFDC();
  v37 = MEMORY[0x277D84F90];
  sub_22846B99C(&unk_280DED140, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_2283FA33C(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22846B7E8();
  sub_22855DA9C();
  (*(v9 + 104))(v11, *MEMORY[0x277D85260], v29);
  v14 = sub_22855D84C();
  *(v8 + v28) = v14;
  v15 = v31;
  *(v8 + 16) = v30;
  *(v8 + 24) = v15;
  v16 = (v8 + qword_280DF6A28);
  v17 = v33;
  *v16 = v32;
  v16[1] = v17;
  v18 = qword_280DF6A40;
  v19 = sub_22855C85C();
  v20 = *(v19 - 8);
  v21 = v8 + v18;
  v22 = v34;
  (*(v20 + 16))(v21, v34, v19);
  v23 = (v8 + qword_280DF6A20);
  v24 = v36;
  *v23 = v35;
  v23[1] = v24;
  sub_22855C4AC();
  swift_allocObject();
  v25 = v14;
  v26 = sub_22855C48C();
  (*(v20 + 8))(v22, v19);
  *(v8 + qword_280DF6A30) = v26;
  return v8;
}

uint64_t sub_228469B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2283FA33C(0, &qword_280DE9558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_22855D4EC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a1;
  v12[7] = a2;

  sub_22846FCD4(0, 0, v10, &unk_228562AA0, v12);
}

uint64_t sub_228469CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2283FA33C(0, &qword_280DE9558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22 - v17;
  v19 = sub_22855D4EC();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
  v20[7] = a8;
  v20[8] = a3;
  v20[9] = a4;
  v20[10] = a1;
  v20[11] = a2;

  sub_22846FCD4(0, 0, v18, &unk_228562A90, v20);
}

uint64_t sub_228469E34(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  sub_2283FA33C(0, &qword_280DECDA8, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v7[4] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v7[6] = v10;
  *v10 = v7;
  v10[1] = sub_228469FA0;

  return v12(v9);
}

uint64_t sub_228469FA0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22846A13C;
  }

  else
  {
    v2 = sub_22846A0B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22846A0B4()
{
  (*(v0 + 16))(*(v0 + 40), 0);
  sub_22846BC10(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22846A13C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_22855BEEC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v1;
  v3(v2, v1);

  sub_22846BC10(v0[4]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22846A22C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v10 = sub_22855DA2C();
  v8[5] = v10;
  v8[6] = *(v10 - 8);
  v8[7] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[8] = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_22846A3A4;

  return v14(v11);
}

uint64_t sub_22846A3A4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22846A550;
  }

  else
  {
    v2 = sub_22846A4B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22846A4B8()
{
  (*(v0 + 16))(*(v0 + 64), 0);
  (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22846A550()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[2];
  (*(*(v0[4] - 8) + 56))(v2, 1, 1);
  v4 = v1;
  v3(v2, v1);

  (*(v0[6] + 8))(v0[7], v0[5]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22846A6E4(void (*a1)(char *, void), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = sub_22855DA2C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  a3(v10);
  a1(v12, 0);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_22846A89C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_228468A14;

  return sub_228468974(a1);
}

uint64_t sub_22846A9BC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a2;
  v53 = a1;
  v11 = sub_22855CABC();
  ObjectType = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11);
  v54 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22855DA2C();
  v52 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v16 = sub_22855C85C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a4;
  v58 = a5;
  v63 = a4;
  v64 = a5;
  v59 = a6;
  v60 = a7;
  v65 = a6;
  v66 = a7;
  v20 = sub_22855C7AC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    v26 = v61;
    if (v61)
    {
      swift_getObjectType();
      v27 = v26;
      v28 = v54;
      sub_22855C59C();
      v29 = v26;

      v30 = sub_22855CA8C();
      v31 = sub_22855D68C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v63 = v34;
        *v32 = 136446466;
        v35 = UserCharacteristicInputSignal.description.getter();
        v37 = v36;

        v38 = sub_2283F8938(v35, v37, &v63);

        *(v32 + 4) = v38;
        *(v32 + 12) = 2112;
        v39 = v26;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 14) = v40;
        *v33 = v40;
        _os_log_impl(&dword_2283ED000, v30, v31, "%{public}s: Failed to fetch updated characteristic value: %@", v32, 0x16u);
        sub_22841DC98(v33);
        MEMORY[0x22AABAD40](v33, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x22AABAD40](v34, -1, -1);
        MEMORY[0x22AABAD40](v32, -1, -1);
      }

      else
      {
      }

      (*(ObjectType + 8))(v28, v56);
      v46 = sub_22855BF2C();
      v47 = [v46 hk_isDatabaseAccessibilityError];

      if (v47)
      {
        if (qword_27D83F018 != -1)
        {
          swift_once();
        }

        v48 = swift_allocObject();
        swift_weakInit();
        v49 = swift_allocObject();
        v50 = v58;
        v49[2] = v57;
        v49[3] = v50;
        v51 = v60;
        v49[4] = v59;
        v49[5] = v51;
        v49[6] = v48;

        sub_228506C84(sub_22846BA0C, v49);
      }

      else
      {
      }
    }

    else
    {
      v41 = *(result + qword_280DF6A28 + 8);
      v56 = *(result + qword_280DF6A28);
      v61 = v41;
      ObjectType = swift_getObjectType();
      (*(v17 + 16))(v19, v25 + qword_280DF6A40, v16);
      (*(v52 + 16))(v15, v53, v13);
      v43 = v57;
      v42 = v58;
      v45 = v59;
      v44 = v60;
      sub_22855C79C();
      v62 = v25;
      v63 = v43;
      v64 = v42;
      v65 = v45;
      v66 = v44;
      type metadata accessor for UserCharacteristicInputSignal(0, &v63);
      swift_getWitnessTable();
      sub_22855C78C();
      (*(v21 + 8))(v23, v20);
    }
  }

  return result;
}

uint64_t sub_22846AFBC(uint64_t a1)
{
  v1 = sub_22855CABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_22855C59C();

    v6 = sub_22855CA8C();
    v7 = sub_22855D6AC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;

      v10 = UserCharacteristicInputSignal.description.getter();
      v12 = v11;

      v13 = sub_2283F8938(v10, v12, &v14);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_2283ED000, v6, v7, "%{public}s: Device unlocked, retrying fetch characteristic", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x22AABAD40](v9, -1, -1);
      MEMORY[0x22AABAD40](v8, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    sub_228469294();
  }

  return result;
}

uint64_t UserCharacteristicInputSignal.deinit()
{
  swift_unknownObjectRelease();
  v1 = qword_280DF6A40;
  v2 = sub_22855C85C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t UserCharacteristicInputSignal.__deallocating_deinit()
{
  UserCharacteristicInputSignal.deinit();

  return swift_deallocClassInstance();
}

uint64_t UserCharacteristicInputSignal.description.getter()
{
  v2 = sub_22855E34C();
  MEMORY[0x22AAB92A0](95, 0xE100000000000000);
  sub_22855C85C();
  sub_22846B99C(&qword_280DE9E98, MEMORY[0x277D11C40], MEMORY[0x277D11C50]);
  v0 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v0);

  return v2;
}

uint64_t _s14HealthPlatform29UserCharacteristicInputSignalC16beginObservation4from14configurationsy0A13Orchestration19OptionalValueAnchorVyxGSg_SayAG21IdentityConfigurationVGtF_0()
{
  v1 = *v0;
  v2 = *v0;
  sub_22855C49C();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = *(v1 + 80);
  *(v4 + 24) = *(v2 + 88);
  *(v4 + 40) = *(v1 + 104);
  *(v4 + 48) = v3;

  sub_22855C46C();

  return sub_228469294();
}

unint64_t sub_22846B7E8()
{
  result = qword_280DED240;
  if (!qword_280DED240)
  {
    sub_2283FA33C(255, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED240);
  }

  return result;
}

uint64_t sub_22846B8A8(uint64_t a1)
{
  result = sub_22855C85C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22846B99C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22846BA3C(uint64_t a1)
{
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[2];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22846BCA0;

  return sub_22846A22C(a1, v6, v5, v7, v8, v9, v10, v4);
}

uint64_t sub_22846BB3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_228468A14;

  return sub_228469E34(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22846BC10(uint64_t a1)
{
  sub_2283FA33C(0, &qword_280DECDA8, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

HealthPlatform::PluginPinnedContentDomain_optional __swiftcall PluginPinnedContentDomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22855DFBC();

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

  *v2 = v5;
  return result;
}

uint64_t sub_22846BD58(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = ".pinnedContent.summary";
  }

  else
  {
    v2 = "espiratory";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = ".pinnedContent.summary";
  }

  else
  {
    v4 = "espiratory";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22855E15C();
  }

  return v5 & 1;
}

uint64_t sub_22846BDFC()
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_22846BE74(uint64_t a1)
{
  sub_22855D20C();
}

uint64_t sub_22846BED8(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_22846BF4C@<X0>(char *a2@<X8>)
{
  v3 = sub_22855DFBC();

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

void sub_22846BFAC(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = ".pinnedContent.summary";
  }

  else
  {
    v2 = "espiratory";
  }

  *a1 = 0xD000000000000026;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t PinnedContentIdentifier.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PinnedContentIdentifier.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

HealthPlatform::PinnedContentIdentifier __swiftcall PinnedContentIdentifier.init(domain:identifier:)(HealthPlatform::PluginPinnedContentDomain domain, Swift::String identifier)
{
  *v2 = *domain;
  *(v2 + 8) = identifier;
  result.identifier = identifier;
  result.domain = domain;
  return result;
}

uint64_t static PinnedContentIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (*a1)
  {
    v6 = ".pinnedContent.summary";
  }

  else
  {
    v6 = "espiratory";
  }

  v7 = v6 | 0x8000000000000000;
  if (*a2)
  {
    v8 = ".pinnedContent.summary";
  }

  else
  {
    v8 = "espiratory";
  }

  if (v7 == (v8 | 0x8000000000000000))
  {
  }

  else
  {
    v9 = sub_22855E15C();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_22855E15C();
}

uint64_t PinnedContentIdentifier.hash(into:)(uint64_t a1)
{
  sub_22855D20C();

  return sub_22855D20C();
}

uint64_t PinnedContentIdentifier.hashValue.getter()
{
  sub_22855E22C();
  sub_22855D20C();

  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_22846C2E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (*a1)
  {
    v6 = ".pinnedContent.summary";
  }

  else
  {
    v6 = "espiratory";
  }

  v7 = v6 | 0x8000000000000000;
  if (*a2)
  {
    v8 = ".pinnedContent.summary";
  }

  else
  {
    v8 = "espiratory";
  }

  if (v7 == (v8 | 0x8000000000000000))
  {
  }

  else
  {
    v9 = sub_22855E15C();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_22855E15C();
}

uint64_t sub_22846C408(uint64_t a1)
{
  sub_22855D20C();

  return sub_22855D20C();
}

uint64_t sub_22846C48C(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();

  sub_22855D20C();
  return sub_22855E27C();
}

unint64_t sub_22846C520()
{
  result = qword_27D83F870;
  if (!qword_27D83F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F870);
  }

  return result;
}

unint64_t sub_22846C578()
{
  result = qword_27D83F878;
  if (!qword_27D83F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F878);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22846C5F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}