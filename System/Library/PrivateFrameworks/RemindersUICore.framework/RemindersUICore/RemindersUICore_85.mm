uint64_t TTRTreeStorageDerivedRerootedTree.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v23 = *(v11 + 16);
  v24 = v15;
  v23(&v22 - v13, a1, v12);
  v16 = v4;
  (*(v5 + 16))(v7, v14, v4);
  v17 = *(AssociatedTypeWitness - 8);
  LODWORD(a1) = (*(v17 + 48))(v7, 1, AssociatedTypeWitness);
  v18 = *(v5 + 8);
  v18(v7, v16);
  if (a1 == 1)
  {
    v18(v14, v16);
    (*(v17 + 16))(v14, v22 + *(*v22 + 104), AssociatedTypeWitness);
    (*(v17 + 56))(v14, 0, 1, AssociatedTypeWitness);
  }

  v20 = v24;
  v19 = v25;
  (v23)(v25, v14, v24);
  (*(v11 + 56))(v19, 0, 1, v20);
  return (*(v11 + 8))(v14, v20);
}

uint64_t TTRTreeStorageDerivedRerootedTree.convertToImmediateUpstream(_:for:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedTypeWitness();
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = sub_21DBFBA8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v38 = a1;
  v39 = &v36 - v18;
  v19 = a1;
  v21 = v20;
  (*(v11 + 16))(v15, v19, v10, v17);
  if ((*(v21 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v15, v10);
    type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v22);
    return sub_21DBFA68C();
  }

  else
  {
    (*(v21 + 32))(v39, v15, AssociatedTypeWitness);
    v24 = *(AssociatedConformanceWitness + 24);
    v24(AssociatedTypeWitness, AssociatedConformanceWitness);
    v24(AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_getAssociatedConformanceWitness();
    v25 = sub_21DBFA10C();
    v26 = *(v37 + 8);
    v26(v6, v4);
    v26(v9, v4);
    v28 = type metadata accessor for TTRDerivedTreeLocation(255, AssociatedTypeWitness, AssociatedConformanceWitness, v27);
    sub_21DBFC5CC();
    v29 = *(v28 - 8);
    swift_allocObject();
    v31 = sub_21DBFA60C();
    v32 = v30;
    if (v25)
    {
      v33 = v36;
      (*(v21 + 56))(v36, 1, 1, AssociatedTypeWitness);
      TTRDerivedTreeLocation.init(parent:index:)(v33, *(v38 + *(v28 + 36)), AssociatedTypeWitness, AssociatedConformanceWitness, v32);
    }

    else
    {
      (*(v29 + 16))(v30, v38, v28);
    }

    sub_21D23C8B4(v31, v28);
    v35 = v34;
    (*(v21 + 8))(v39, AssociatedTypeWitness);
    return v35;
  }
}

char *TTRTreeStorageDerivedRerootedTree.deinit()
{
  swift_unknownObjectRelease();
  v1 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t TTRTreeStorageDerivedRerootedTree.__deallocating_deinit()
{
  TTRTreeStorageDerivedRerootedTree.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D8DA2C4(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageDerivedRerootedTree<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D8DA300(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageDerivedRerootedTree<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D8DA33C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t TTRHelpAnchor.IOSHelpTopic.identifier.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRHelpAnchor.IOSHelpTopic.version.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRHelpAnchor.IOSHelpTopic.helpTopicID.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

void sub_21D8DA4C8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 systemVersion];

  v2 = sub_21DBFA16C();
  v4 = v3;

  qword_27CE63818 = v2;
  unk_27CE63820 = v4;
}

uint64_t static TTRHelpAnchor.IOSHelpTopic.defaultVersion.getter()
{
  if (qword_27CE56E10 != -1)
  {
    swift_once();
  }

  v0 = qword_27CE63818;
  sub_21DBF8E0C();
  return v0;
}

void __swiftcall TTRHelpAnchor.IOSHelpTopic.init(identifier:helpTopicID:version:)(RemindersUICore::TTRHelpAnchor::IOSHelpTopic *__return_ptr retstr, Swift::String identifier, Swift::String helpTopicID, Swift::String version)
{
  retstr->identifier = identifier;
  retstr->version = version;
  retstr->helpTopicID = helpTopicID;
}

uint64_t static TTRHelpAnchor.IOSHelpTopic.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21DBFC64C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_21DBFC64C();
}

uint64_t TTRHelpAnchor.MacOSHelpAnchor.helpAnchor.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRHelpAnchor.MacOSHelpAnchor.book.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

RemindersUICore::TTRHelpAnchor::MacOSHelpAnchor __swiftcall TTRHelpAnchor.MacOSHelpAnchor.init(helpAnchor:)(Swift::String helpAnchor)
{
  v1[1]._countAndFlagsBits = 0xD000000000000018;
  v1[1]._object = 0x800000021DC6FA20;
  *v1 = helpAnchor;
  result.helpAnchor = helpAnchor;
  return result;
}

uint64_t static TTRHelpAnchor.MacOSHelpAnchor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21DBFC64C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_21DBFC64C();
    }
  }

  return result;
}

double TTRHelpAnchor.iOSHelpTopic.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_21D8DA800(v2, v3, v4, v5, v6, v7);
}

double sub_21D8DA800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    sub_21DBF8E0C();
  }

  return result;
}

__n128 TTRHelpAnchor.iOSHelpTopic.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_21D4F432C(*v1, *(v1 + 8));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

double TTRHelpAnchor.macOSHelpAnchor.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21D8DA8CC(v2, v3, v4, v5);
}

double sub_21D8DA8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_21DBF8E0C();

    sub_21DBF8E0C();
  }

  return result;
}

__n128 TTRHelpAnchor.macOSHelpAnchor.setter(uint64_t a1)
{
  sub_21D8DA944(*(v1 + 48), *(v1 + 56));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  return result;
}

double sub_21D8DA944(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void __swiftcall TTRHelpAnchor.init(iOSHelpTopic:macOSHelpAnchor:)(RemindersUICore::TTRHelpAnchor *__return_ptr retstr, RemindersUICore::TTRHelpAnchor::IOSHelpTopic_optional *iOSHelpTopic, RemindersUICore::TTRHelpAnchor::MacOSHelpAnchor_optional macOSHelpAnchor)
{
  v8 = *macOSHelpAnchor.value.helpAnchor._countAndFlagsBits;
  helpTopicID = iOSHelpTopic->value.helpTopicID;
  v5 = *(macOSHelpAnchor.value.helpAnchor._countAndFlagsBits + 16);
  v6 = *(macOSHelpAnchor.value.helpAnchor._countAndFlagsBits + 24);
  sub_21D4F432C(0, 0);
  version = iOSHelpTopic->value.version;
  retstr->iOSHelpTopic.value.identifier = iOSHelpTopic->value.identifier;
  retstr->iOSHelpTopic.value.version = version;
  sub_21D8DA944(0, 0);
  retstr->iOSHelpTopic.value.helpTopicID = helpTopicID;
  retstr->macOSHelpAnchor.value.helpAnchor = v8;
  retstr->macOSHelpAnchor.value.book._countAndFlagsBits = v5;
  retstr->macOSHelpAnchor.value.book._object = v6;
}

id static HLPHelpViewController.viewController(forShowing:)(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v1 = sub_21DBFA12C();
  v2 = sub_21DBFA12C();
  v3 = [objc_opt_self() helpViewControllerWithIdentifier:v1 version:v2];

  if (!v3)
  {
    return 0;
  }

  [v3 setShowTopicViewOnLoad_];
  [v3 setDisplayHelpTopicsOnly_];
  v4 = sub_21DBFA12C();
  [v3 setSelectedHelpTopicID_];

  v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v5 setModalPresentationStyle_];

  return v5;
}

uint64_t TTRLearnMoreContent.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t _s15RemindersUICore13TTRHelpAnchorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v69 = a1[6];
  v68 = a1[7];
  v70 = a1[8];
  v71 = a1[9];
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  v67 = a2[6];
  v66 = a2[7];
  v64 = a2[8];
  v65 = a2[9];
  if (!v3)
  {
    v62 = *a1;
    v29 = a2[2];
    v30 = a2[1];
    sub_21D8DA800(v2, 0, v5, v4, v6, v7);
    if (!v8)
    {
      sub_21D8DA800(v9, 0, v29, v11, v13, v12);
      v3 = 0;
      v27 = v62;
      goto LABEL_21;
    }

    v73 = v9;
    sub_21D8DA800(v9, v8, v29, v11, v13, v12);
    v31 = v62;
    v3 = 0;
    goto LABEL_15;
  }

  v63 = a2[4];
  v72 = a2[5];
  v73 = *a2;
  if (!v8)
  {
    v32 = a2[3];
    v33 = a1[2];
    v34 = a1[4];
    v31 = *a1;
    v30 = 0;
    v35 = a1[5];
    v36 = a1[3];
    sub_21D8DA800(v2, v3, v33, v4, v6, v35);
    sub_21D8DA800(v9, 0, v10, v32, v63, v72);
    sub_21D8DA800(v31, v3, v33, v36, v34, v35);

LABEL_15:
    sub_21D4F432C(v31, v3);
    v37 = v73;
    v38 = v30;
LABEL_17:
    sub_21D4F432C(v37, v38);
    return 0;
  }

  if ((v2 != v9 || v3 != v8) && (v14 = a2[3], v15 = a1[2], v16 = a1[4], v17 = *a1, v18 = a1[3], v19 = sub_21DBFC64C(), v4 = v18, v2 = v17, v6 = v16, v5 = v15, v11 = v14, (v19 & 1) == 0) || (v5 != v10 || v4 != v11) && (v20 = v11, v21 = v5, v22 = v6, v23 = v2, v24 = v4, v25 = sub_21DBFC64C(), v4 = v24, v2 = v23, v6 = v22, v5 = v21, v11 = v20, (v25 & 1) == 0))
  {
    v39 = v3;
    v40 = v10;
    v41 = v11;
    v61 = v6;
    v42 = v7;
    v43 = v2;
    v44 = v3;
    v45 = v8;
    v46 = v7;
    v47 = v4;
    sub_21D8DA800(v2, v39, v5, v4, v6, v42);
    sub_21D8DA800(v73, v45, v40, v41, v63, v72);
    sub_21D8DA800(v43, v44, v5, v47, v61, v46);
    sub_21D4F432C(v73, v45);

    v37 = v43;
    v38 = v44;
    goto LABEL_17;
  }

  if (v6 == v63 && v7 == v12)
  {
    v26 = v6;
    v27 = v2;
    v28 = v4;
    sub_21D8DA800(v2, v3, v5, v4, v6, v7);
    sub_21D8DA800(v73, v8, v10, v11, v26, v7);
    sub_21D8DA800(v27, v3, v5, v28, v26, v7);
    sub_21D4F432C(v73, v8);

LABEL_21:
    sub_21D4F432C(v27, v3);
LABEL_22:
    if (v68)
    {
      v49 = v69;
      v51 = v66;
      v50 = v67;
      if (v66)
      {
        if (v69 == v67 && v68 == v66 || (sub_21DBFC64C() & 1) != 0)
        {
          if (v70 == v64 && v71 == v65)
          {
            sub_21D8DA8CC(v69, v68, v70, v71);
            sub_21D8DA8CC(v67, v66, v70, v71);
            sub_21D8DA8CC(v69, v68, v70, v71);
            sub_21D8DA944(v67, v66);

            v52 = v69;
            v53 = v68;
LABEL_39:
            sub_21D8DA944(v52, v53);
            return 1;
          }

          v58 = sub_21DBFC64C();
          sub_21D8DA8CC(v69, v68, v70, v71);
          sub_21D8DA8CC(v67, v66, v64, v65);
          sub_21D8DA8CC(v69, v68, v70, v71);
          sub_21D8DA944(v67, v66);

          sub_21D8DA944(v69, v68);
          if (v58)
          {
            return 1;
          }
        }

        else
        {
          sub_21D8DA8CC(v69, v68, v70, v71);
          sub_21D8DA8CC(v67, v66, v64, v65);
          sub_21D8DA8CC(v69, v68, v70, v71);
          sub_21D8DA944(v67, v66);

          sub_21D8DA944(v69, v68);
        }

        return 0;
      }

      sub_21D8DA8CC(v69, v68, v70, v71);
      sub_21D8DA8CC(v67, 0, v64, v65);
      sub_21D8DA8CC(v69, v68, v70, v71);
    }

    else
    {
      v49 = v69;
      sub_21D8DA8CC(v69, 0, v70, v71);
      v51 = v66;
      v50 = v67;
      if (!v66)
      {
        sub_21D8DA8CC(v67, 0, v64, v65);
        v52 = v69;
        v53 = 0;
        goto LABEL_39;
      }

      sub_21D8DA8CC(v67, v66, v64, v65);
    }

    sub_21D8DA944(v49, v68);
    sub_21D8DA944(v50, v51);
    return 0;
  }

  v59 = v7;
  v54 = v6;
  v55 = v2;
  v56 = v7;
  v57 = v4;
  v60 = sub_21DBFC64C();
  sub_21D8DA800(v55, v3, v5, v57, v54, v56);
  sub_21D8DA800(v73, v8, v10, v11, v63, v72);
  sub_21D8DA800(v55, v3, v5, v57, v54, v59);
  sub_21D4F432C(v73, v8);

  sub_21D4F432C(v55, v3);
  result = 0;
  if (v60)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_21D8DB418()
{
  result = qword_27CE63828;
  if (!qword_27CE63828)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRLearnMoreContent, &type metadata for TTRLearnMoreContent, v0, v1);
    atomic_store(result, &qword_27CE63828);
  }

  return result;
}

double destroy for TTRHelpAnchor(uint64_t a1)
{
  if (*(a1 + 8))
  {
  }

  if (*(a1 + 56))
  {
  }

  return result;
}

uint64_t initializeWithCopy for TTRHelpAnchor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v10;
    *(a1 + 32) = *(a2 + 32);
    v7 = *(a2 + 56);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v11;
    return a1;
  }

  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v7 = *(a2 + 56);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRHelpAnchor(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      sub_21DBF8E0C();

      a1[2] = a2[2];
      a1[3] = a2[3];
      sub_21DBF8E0C();

      a1[4] = a2[4];
      a1[5] = a2[5];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D8DB738(a1);
      v6 = *(a2 + 1);
      v5 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 1) = v6;
      *(a1 + 2) = v5;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
    a1[4] = a2[4];
    a1[5] = a2[5];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v8;
    *a1 = v7;
  }

  v9 = a2[7];
  if (a1[7])
  {
    if (v9)
    {
      a1[6] = a2[6];
      a1[7] = a2[7];
      sub_21DBF8E0C();

      a1[8] = a2[8];
      a1[9] = a2[9];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D7F5A5C((a1 + 6));
      v10 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v10;
    }
  }

  else if (v9)
  {
    a1[6] = a2[6];
    a1[7] = a2[7];
    a1[8] = a2[8];
    a1[9] = a2[9];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v11 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v11;
  }

  return a1;
}

uint64_t assignWithTake for TTRHelpAnchor(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      *a1 = *a2;
      *(a1 + 8) = v4;

      v5 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v5;

      v6 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v6;

      if (!*(a1 + 56))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    sub_21D8DB738(a1);
  }

  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = *(a2 + 32);
  if (!*(a1 + 56))
  {
LABEL_10:
    v10 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v10;
    return a1;
  }

LABEL_7:
  v8 = *(a2 + 56);
  if (!v8)
  {
    sub_21D7F5A5C(a1 + 48);
    goto LABEL_10;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;

  v9 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v9;

  return a1;
}

id TTRExtensionContextInputItem.attributedTitle.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *TTRExtensionContextInputItem.attributedContentText.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t TTRExtensionContextInputItem.init(attributedTitle:attributedContentText:attachments:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TTRNSExtensionContextProvider.__allocating_init(extensionContext:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

char *TTRNSExtensionContextProvider.inputItems.getter()
{
  v1 = [*(v0 + 16) inputItems];
  v2 = sub_21DBFA5EC();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_21D0CEB98(v4, v17);
      sub_21D0CEB98(v17, v16);
      sub_21D0D8CF0(0, &qword_27CE63830, 0x277CCA9D8);
      if (swift_dynamicCast())
      {
        v6 = [v15 attributedTitle];
        v7 = [v15 attributedContentText];
        v8 = [v15 attachments];
        if (v8)
        {
          v9 = v8;
          sub_21D0D8CF0(0, &qword_280D0C308, 0x277CCAA88);
          v10 = sub_21DBFA5EC();
        }

        else
        {

          v10 = 0;
        }

        __swift_destroy_boxed_opaque_existential_0(v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_21D213DCC(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_21D213DCC((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        v13 = &v5[24 * v12];
        *(v13 + 4) = v6;
        *(v13 + 5) = v7;
        *(v13 + 6) = v10;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v17);
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t TTRNSExtensionContextProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double destroy for TTRExtensionContextInputItem(id *a1)
{

  return result;
}

void *sub_21D8DBC14(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;
  v6 = v4;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRExtensionContextInputItem(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRExtensionContextInputItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

double TTRRemindersBoardPresentationTreeUpdates.updates(forColumnID:)@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *&v19 = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v2;
  v21 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  sub_21D8DC230(&v2[*(v21 + 20)], v9, type metadata accessor for TTRRemindersBoardPresentationTrees);
  v10 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn(0);
  v11 = &a2[*(v10 + 20)];
  v12 = a2;
  v13 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  v14 = *(v13 + 24);
  sub_21D8DC230(v19, &v11[v14], type metadata accessor for TTRRemindersListViewModel.ItemID);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AE8, &qword_21DC0A070);
  v15 = swift_allocObject();
  v19 = *(v9 + 40);
  *(v15 + 16) = v19;
  sub_21D8DC230(&v11[v14], v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AF0, &qword_21DC0A078);
  v16 = swift_allocObject();
  v16[2] = v15;
  sub_21D8DC14C(v6, v16 + *(*v16 + 104), type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D8DC230(v9, v11, type metadata accessor for TTRRemindersBoardPresentationTrees);
  *&v11[*(v13 + 20)] = v16;
  swift_unknownObjectRetain();
  sub_21D8E062C(v9, type metadata accessor for TTRRemindersBoardPresentationTrees);
  v17 = *(v20 + *(v21 + 24));
  *v12 = v22;
  *&v12[*(v10 + 24)] = v17;
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D8DC0BC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, _BYTE *a6@<X8>)
{
  *a6 = *a1;
  v10 = a4(0);
  result = sub_21D8DC14C(a2, &a6[*(v10 + 20)], a5);
  *&a6[*(v10 + 24)] = a3;
  return result;
}

uint64_t sub_21D8DC14C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D8DC230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_21D8DC2B0(uint64_t (*a1)(void))
{
  a1(0);

  sub_21DBF8E0C();
  return result;
}

_BYTE *initializeBufferWithCopyOfBuffer for TTRRemindersBoardPresentationTreeUpdates(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) == 0)
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v6 = &a1[v5];
    v8 = &a2[v5];
    v9 = *&a2[v5 + 24];
    *&a1[v5 + 24] = v9;
    (**(v9 - 8))(&a1[v5], &a2[v5]);
    *(v6 + 40) = *(v8 + 40);
    *(v6 + 7) = *(v8 + 7);
    v91 = v6;
    v92 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
    v10 = *(v92 + 28);
    v11 = &v6[v10];
    v88 = v8;
    v12 = &v8[v10];
    *v11 = v8[v10];
    *(v11 + 1) = *&v8[v10 + 1];
    v13 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
    v14 = *(v13 + 28);
    v15 = v11;
    v16 = &v11[v14];
    v17 = v12;
    v18 = &v12[v14];
    v19 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    v86 = *(v19 - 8);
    v20 = *(v86 + 48);
    swift_unknownObjectRetain();
    sub_21DBF8E0C();
    v89 = v20;
    v94 = v13;
    if (v20(v18, 1, v19))
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
      memcpy(v16, v18, *(*(v21 - 8) + 64));
      v22 = a2;
      v23 = v15;
      v24 = v17;
      v25 = a1;
      goto LABEL_51;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v39 = *v18;
      v28 = v16;
      *v16 = *v18;
      v40 = v39;
      swift_storeEnumTagMultiPayload();
      v22 = a2;
      v23 = v15;
      goto LABEL_17;
    }

    v22 = a2;
    v28 = v16;
    if (EnumCaseMultiPayload != 1)
    {
      v23 = v15;
      if (!EnumCaseMultiPayload)
      {
        v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v30 = swift_getEnumCaseMultiPayload();
        v24 = v17;
        if (v30 > 4)
        {
          v25 = a1;
          if (v30 <= 7)
          {
            if (v30 == 5 || v30 == 6)
            {
              goto LABEL_27;
            }

            goto LABEL_38;
          }

          if (v30 != 8 && v30 != 9)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v25 = a1;
          if (v30 > 2)
          {
LABEL_27:
            v44 = sub_21DBF563C();
            (*(*(v44 - 8) + 16))(v28, v18, v44);
            swift_storeEnumTagMultiPayload();
            goto LABEL_49;
          }

          if (v30 != 1)
          {
            if (v30 == 2)
            {
              goto LABEL_27;
            }

LABEL_38:
            memcpy(v28, v18, *(*(v29 - 8) + 64));
            goto LABEL_49;
          }
        }

        v45 = *v18;
        *v28 = *v18;
        v46 = v45;
        swift_storeEnumTagMultiPayload();
        goto LABEL_49;
      }

      memcpy(v28, v18, *(v86 + 64));
LABEL_17:
      v24 = v17;
      v25 = a1;
LABEL_50:
      (*(v86 + 56))(v28, 0, 1, v19);
LABEL_51:
      v51 = *(v13 + 32);
      v52 = &v23[v51];
      v53 = &v24[v51];
      if (v89(&v24[v51], 1, v19))
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
        memcpy(v52, v53, *(*(v54 - 8) + 64));
LABEL_97:
        *&v23[v94[9]] = *&v24[v94[9]];
        v75 = v94[10];
        v76 = &v23[v75];
        v77 = &v24[v75];
        *v76 = *v77;
        *(v76 + 1) = *(v77 + 1);
        *&v23[v94[11]] = *&v24[v94[11]];
        *&v91[*(v92 + 32)] = *&v88[*(v92 + 32)];
        *&v25[*(a3 + 24)] = *&v22[*(a3 + 24)];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        swift_unknownObjectRetain();
        sub_21DBF8E0C();
        return v25;
      }

      v55 = swift_getEnumCaseMultiPayload();
      if (v55 == 2)
      {
        v65 = *v53;
        *v52 = *v53;
        v66 = v65;
        goto LABEL_95;
      }

      if (v55 != 1)
      {
        if (v55)
        {
          memcpy(v52, v53, *(v86 + 64));
LABEL_96:
          (*(v86 + 56))(v52, 0, 1, v19);
          goto LABEL_97;
        }

        v56 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v57 = swift_getEnumCaseMultiPayload();
        if (v57 > 4)
        {
          if (v57 <= 7)
          {
            if (v57 == 5 || v57 == 6)
            {
              goto LABEL_74;
            }

            goto LABEL_85;
          }

          if (v57 != 8 && v57 != 9)
          {
            goto LABEL_85;
          }
        }

        else
        {
          if (v57 > 2)
          {
LABEL_74:
            v69 = sub_21DBF563C();
            (*(*(v69 - 8) + 16))(v52, v53, v69);
            swift_storeEnumTagMultiPayload();
            goto LABEL_95;
          }

          if (v57 != 1)
          {
            if (v57 == 2)
            {
              goto LABEL_74;
            }

LABEL_85:
            memcpy(v52, v53, *(*(v56 - 8) + 64));
            goto LABEL_95;
          }
        }

        v70 = *v53;
        *v52 = *v53;
        v71 = v70;
        swift_storeEnumTagMultiPayload();
        goto LABEL_95;
      }

      v90 = v23;
      v83 = v19;
      v85 = v22;
      v58 = *v53;
      *v52 = *v53;
      v59 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v60 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v61 = *(v60 - 8);
      v62 = *(v61 + 48);
      v63 = v58;
      if (v62(v53 + v59, 1, v60))
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v52 + v59, v53 + v59, *(*(v64 - 8) + 64));
        v19 = v83;
        v22 = v85;
        v23 = v90;
LABEL_95:
        swift_storeEnumTagMultiPayload();
        goto LABEL_96;
      }

      v67 = v59;
      v68 = swift_getEnumCaseMultiPayload();
      v19 = v83;
      v22 = v85;
      if (v68 > 4)
      {
        v23 = v90;
        if (v68 <= 7)
        {
          if (v68 == 5 || v68 == 6)
          {
            goto LABEL_86;
          }

          goto LABEL_93;
        }

        if (v68 != 8 && v68 != 9)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v23 = v90;
        if (v68 > 2)
        {
LABEL_86:
          v72 = sub_21DBF563C();
          (*(*(v72 - 8) + 16))(v52 + v67, v53 + v67, v72);
          swift_storeEnumTagMultiPayload();
LABEL_94:
          (*(v61 + 56))(v52 + v67, 0, 1, v60);
          goto LABEL_95;
        }

        if (v68 != 1)
        {
          if (v68 == 2)
          {
            goto LABEL_86;
          }

LABEL_93:
          memcpy(v52 + v67, v53 + v67, *(v61 + 64));
          goto LABEL_94;
        }
      }

      v73 = *(v53 + v67);
      *(v52 + v67) = v73;
      v74 = v73;
      swift_storeEnumTagMultiPayload();
      goto LABEL_94;
    }

    v82 = v19;
    v84 = a2;
    v31 = *v18;
    *v16 = *v18;
    v81 = v16;
    v32 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    v36 = v31;
    v37 = v32;
    if (v35(v18 + v32, 1, v33))
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      v28 = v81;
      memcpy(v81 + v37, v18 + v37, *(*(v38 - 8) + 64));
      v19 = v82;
      v22 = v84;
      v23 = v15;
      v24 = v17;
      v25 = a1;
LABEL_49:
      swift_storeEnumTagMultiPayload();
      goto LABEL_50;
    }

    v28 = v81;
    v79 = v33;
    v80 = v34;
    v41 = v37;
    v42 = swift_getEnumCaseMultiPayload();
    v19 = v82;
    v23 = v15;
    if (v42 > 4)
    {
      v22 = v84;
      v24 = v17;
      v43 = v80;
      if (v42 <= 7)
      {
        v25 = a1;
        if (v42 == 5 || v42 == 6)
        {
          goto LABEL_40;
        }

        goto LABEL_47;
      }

      v25 = a1;
      if (v42 != 8 && v42 != 9)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v22 = v84;
      v24 = v17;
      v43 = v80;
      if (v42 > 2)
      {
        v25 = a1;
LABEL_40:
        v47 = sub_21DBF563C();
        (*(*(v47 - 8) + 16))(v81 + v41, v18 + v41, v47);
        v48 = v79;
        swift_storeEnumTagMultiPayload();
LABEL_48:
        (*(v80 + 56))(v81 + v41, 0, 1, v48);
        goto LABEL_49;
      }

      v25 = a1;
      if (v42 != 1)
      {
        if (v42 == 2)
        {
          goto LABEL_40;
        }

LABEL_47:
        memcpy(v81 + v41, v18 + v41, *(v43 + 64));
        v48 = v79;
        goto LABEL_48;
      }
    }

    v49 = *(v18 + v41);
    *(v81 + v41) = v49;
    v50 = v49;
    v48 = v79;
    swift_storeEnumTagMultiPayload();
    goto LABEL_48;
  }

  v26 = *a2;
  *a1 = *a2;
  v25 = (v26 + ((v4 + 16) & ~v4));

  return v25;
}

double destroy for TTRRemindersBoardPresentationTreeUpdates(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + *(a2 + 20));
  __swift_destroy_boxed_opaque_existential_0(v2);
  swift_unknownObjectRelease();

  v3 = v2 + *(type metadata accessor for TTRRemindersBoardPresentationTrees(0) + 28);
  v4 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v5 = &v3[*(v4 + 28)];
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v7 = *(*(v6 - 8) + 48);
  if (!v7(v5, 1, v6))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
LABEL_45:
      v23 = *v5;
LABEL_46:

      goto LABEL_2;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_2;
      }

      type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 > 4)
      {
        if (v11 <= 7)
        {
          if (v11 != 5 && v11 != 6)
          {
            goto LABEL_2;
          }

LABEL_41:
          v21 = sub_21DBF563C();
          (*(*(v21 - 8) + 8))(v5, v21);
          goto LABEL_2;
        }

        if (v11 != 8 && v11 != 9)
        {
          goto LABEL_2;
        }
      }

      else
      {
        if (v11 > 2)
        {
          goto LABEL_41;
        }

        if (v11 != 1)
        {
          if (v11 != 2)
          {
            goto LABEL_2;
          }

          goto LABEL_41;
        }
      }

      goto LABEL_45;
    }

    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v15 - 8) + 48))(v5 + v14, 1, v15))
    {
      goto LABEL_2;
    }

    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 4)
    {
      if (v16 <= 7)
      {
        if (v16 == 5)
        {
          goto LABEL_62;
        }

        v17 = v16 == 6;
LABEL_60:
        if (!v17)
        {
          goto LABEL_2;
        }

LABEL_62:
        v25 = sub_21DBF563C();
        (*(*(v25 - 8) + 8))(v5 + v14, v25);
        goto LABEL_2;
      }

      if (v16 != 8)
      {
        v27 = v14;
        if (v16 != 9)
        {
          goto LABEL_2;
        }

        goto LABEL_72;
      }
    }

    else
    {
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          goto LABEL_62;
        }

        v17 = v16 == 4;
        goto LABEL_60;
      }

      if (v16 != 1)
      {
        v17 = v16 == 2;
        goto LABEL_60;
      }
    }

    v27 = v14;
LABEL_72:
    v23 = *(v5 + v27);
    goto LABEL_46;
  }

LABEL_2:
  v8 = &v3[*(v4 + 32)];
  if (v7(v8, 1, v6))
  {
    goto LABEL_3;
  }

  v12 = swift_getEnumCaseMultiPayload();
  if (v12 == 2)
  {
    goto LABEL_49;
  }

  if (v12 == 1)
  {

    v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v19 - 8) + 48))(v8 + v18, 1, v19))
    {
      goto LABEL_3;
    }

    v20 = swift_getEnumCaseMultiPayload();
    if (v20 > 4)
    {
      if (v20 <= 7)
      {
        if (v20 != 5 && v20 != 6)
        {
          goto LABEL_3;
        }

LABEL_63:
        v26 = sub_21DBF563C();
        (*(*(v26 - 8) + 8))(v8 + v18, v26);
        goto LABEL_3;
      }

      if (v20 != 8 && v20 != 9)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v20 > 2)
      {
        goto LABEL_63;
      }

      if (v20 != 1)
      {
        if (v20 != 2)
        {
          goto LABEL_3;
        }

        goto LABEL_63;
      }
    }

    v24 = *(v8 + v18);
    goto LABEL_50;
  }

  if (v12)
  {
    goto LABEL_3;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 <= 4)
  {
    if (v13 > 2)
    {
      goto LABEL_42;
    }

    if (v13 != 1)
    {
      if (v13 != 2)
      {
        goto LABEL_3;
      }

LABEL_42:
      v22 = sub_21DBF563C();
      (*(*(v22 - 8) + 8))(v8, v22);
      goto LABEL_3;
    }

    goto LABEL_49;
  }

  if (v13 > 7)
  {
    if (v13 != 8 && v13 != 9)
    {
      goto LABEL_3;
    }

LABEL_49:
    v24 = *v8;
LABEL_50:

    goto LABEL_3;
  }

  if (v13 == 5 || v13 == 6)
  {
    goto LABEL_42;
  }

LABEL_3:

  swift_unknownObjectRelease();

  return result;
}

_BYTE *initializeWithCopy for TTRRemindersBoardPresentationTreeUpdates(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = &a1[v3];
  v5 = &a2[v3];
  v6 = *&a2[v3 + 24];
  *&a1[v3 + 24] = v6;
  (**(v6 - 8))(&a1[v3], &a2[v3]);
  *(v4 + 40) = *(v5 + 40);
  *(v4 + 7) = *(v5 + 7);
  v77 = v4;
  v78 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v7 = *(v78 + 28);
  v8 = &v4[v7];
  v76 = v5;
  v9 = &v5[v7];
  *v8 = *v9;
  *(v8 + 1) = *(v9 + 1);
  v10 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v11 = v10[7];
  v12 = &v8[v11];
  v13 = &v9[v11];
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  v82 = v14;
  v75 = v15;
  if (v16(v13, 1, v14))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
    memcpy(v12, v13, *(*(v17 - 8) + 64));
    goto LABEL_47;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v30 = *v13;
    v19 = v12;
    *v12 = *v13;
    v31 = v30;
    goto LABEL_45;
  }

  v19 = v12;
  if (EnumCaseMultiPayload == 1)
  {
    v72 = v16;
    v73 = v10;
    v22 = *v13;
    *v12 = *v13;
    v71 = v12;
    v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    v27 = v22;
    v28 = v23;
    if (v26(v13 + v23, 1, v24))
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      v19 = v71;
      memcpy(v71 + v28, v13 + v28, *(*(v29 - 8) + 64));
      v10 = v73;
      v16 = v72;
LABEL_45:
      swift_storeEnumTagMultiPayload();
      goto LABEL_46;
    }

    v19 = v71;
    v69 = v28;
    v70 = v24;
    v32 = swift_getEnumCaseMultiPayload();
    if (v32 > 4)
    {
      v10 = v73;
      v16 = v72;
      v33 = v25;
      if (v32 <= 7)
      {
        if (v32 == 5 || v32 == 6)
        {
          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (v32 != 8 && v32 != 9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v10 = v73;
      v16 = v72;
      v33 = v25;
      if (v32 > 2)
      {
LABEL_36:
        v37 = sub_21DBF563C();
        v38 = v69;
        (*(*(v37 - 8) + 16))(v71 + v69, v13 + v69, v37);
        v39 = v70;
        swift_storeEnumTagMultiPayload();
LABEL_44:
        (*(v25 + 56))(v71 + v38, 0, 1, v39);
        goto LABEL_45;
      }

      if (v32 != 1)
      {
        if (v32 == 2)
        {
          goto LABEL_36;
        }

LABEL_43:
        v38 = v69;
        memcpy(v71 + v69, v13 + v69, *(v33 + 64));
        v39 = v70;
        goto LABEL_44;
      }
    }

    v38 = v69;
    v40 = *(v13 + v69);
    *(v71 + v69) = v40;
    v41 = v40;
    v39 = v70;
    swift_storeEnumTagMultiPayload();
    goto LABEL_44;
  }

  if (!EnumCaseMultiPayload)
  {
    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_24;
        }

        goto LABEL_35;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_24:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 16))(v19, v13, v34);
        swift_storeEnumTagMultiPayload();
        goto LABEL_45;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_24;
        }

LABEL_35:
        memcpy(v19, v13, *(*(v20 - 8) + 64));
        goto LABEL_45;
      }
    }

    v35 = *v13;
    *v19 = *v13;
    v36 = v35;
    swift_storeEnumTagMultiPayload();
    goto LABEL_45;
  }

  memcpy(v12, v13, *(v15 + 64));
LABEL_46:
  (*(v15 + 56))(v19, 0, 1, v82);
LABEL_47:
  v42 = v10[8];
  v43 = &v8[v42];
  v44 = &v9[v42];
  if (!v16(&v9[v42], 1, v82))
  {
    v46 = swift_getEnumCaseMultiPayload();
    if (v46 == 2)
    {
      v56 = *v44;
      *v43 = *v44;
      v57 = v56;
      goto LABEL_91;
    }

    if (v46 != 1)
    {
      if (v46)
      {
        memcpy(v43, v44, *(v75 + 64));
LABEL_92:
        (*(v75 + 56))(v43, 0, 1, v82);
        goto LABEL_93;
      }

      v47 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v48 = swift_getEnumCaseMultiPayload();
      if (v48 > 4)
      {
        if (v48 <= 7)
        {
          if (v48 == 5 || v48 == 6)
          {
            goto LABEL_70;
          }

          goto LABEL_81;
        }

        if (v48 != 8 && v48 != 9)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v48 > 2)
        {
LABEL_70:
          v59 = sub_21DBF563C();
          (*(*(v59 - 8) + 16))(v43, v44, v59);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v48 != 1)
        {
          if (v48 == 2)
          {
            goto LABEL_70;
          }

LABEL_81:
          memcpy(v43, v44, *(*(v47 - 8) + 64));
          goto LABEL_91;
        }
      }

      v60 = *v44;
      *v43 = *v44;
      v61 = v60;
      swift_storeEnumTagMultiPayload();
      goto LABEL_91;
    }

    v74 = v10;
    v49 = *v44;
    *v43 = *v44;
    v50 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v51 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v52 = *(v51 - 8);
    v53 = *(v52 + 48);
    v54 = v49;
    if (v53(v44 + v50, 1, v51))
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v43 + v50, v44 + v50, *(*(v55 - 8) + 64));
      v10 = v74;
LABEL_91:
      swift_storeEnumTagMultiPayload();
      goto LABEL_92;
    }

    v58 = swift_getEnumCaseMultiPayload();
    if (v58 > 4)
    {
      v10 = v74;
      if (v58 <= 7)
      {
        if (v58 == 5 || v58 == 6)
        {
          goto LABEL_82;
        }

        goto LABEL_89;
      }

      if (v58 != 8 && v58 != 9)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v10 = v74;
      if (v58 > 2)
      {
LABEL_82:
        v62 = sub_21DBF563C();
        (*(*(v62 - 8) + 16))(v43 + v50, v44 + v50, v62);
        swift_storeEnumTagMultiPayload();
LABEL_90:
        (*(v52 + 56))(v43 + v50, 0, 1, v51);
        goto LABEL_91;
      }

      if (v58 != 1)
      {
        if (v58 == 2)
        {
          goto LABEL_82;
        }

LABEL_89:
        memcpy(v43 + v50, v44 + v50, *(v52 + 64));
        goto LABEL_90;
      }
    }

    v63 = *(v44 + v50);
    *(v43 + v50) = v63;
    v64 = v63;
    swift_storeEnumTagMultiPayload();
    goto LABEL_90;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  memcpy(v43, v44, *(*(v45 - 8) + 64));
LABEL_93:
  *&v8[v10[9]] = *&v9[v10[9]];
  v65 = v10[10];
  v66 = &v8[v65];
  v67 = &v9[v65];
  *v66 = *v67;
  *(v66 + 1) = *(v67 + 1);
  *&v8[v10[11]] = *&v9[v10[11]];
  *&v77[*(v78 + 32)] = *&v76[*(v78 + 32)];
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  return a1;
}

_BYTE *assignWithCopy for TTRRemindersBoardPresentationTreeUpdates(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  __swift_assign_boxed_opaque_existential_1(&a1[v4], &a2[v4]);
  v7 = v6[6];
  v5[5] = v6[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v5[6] = v7;
  v5[7] = v6[7];
  sub_21DBF8E0C();

  v129 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v130 = v6;
  v8 = *(v129 + 28);
  v9 = v5 + v8;
  v10 = v6 + v8;
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v134 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v11 = v134[7];
  v12 = &v9[v11];
  v13 = &v10[v11];
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v127 = *(v14 - 8);
  v15 = *(v127 + 48);
  v16 = v15(v12, 1, v14);
  v133 = v14;
  v17 = v15(v13, 1, v14);
  if (v16)
  {
    if (!v17)
    {
      v18 = v14;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v31 = *v13;
        *v12 = *v13;
        v32 = v31;
        goto LABEL_81;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(v12, v13, *(v127 + 64));
LABEL_82:
          (*(v127 + 56))(v12, 0, 1, v18);
          goto LABEL_83;
        }

        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = swift_getEnumCaseMultiPayload();
        if (v21 > 4)
        {
          if (v21 <= 7)
          {
            if (v21 == 5 || v21 == 6)
            {
              goto LABEL_40;
            }

            goto LABEL_60;
          }

          if (v21 != 8 && v21 != 9)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v21 > 2)
          {
LABEL_40:
            v40 = sub_21DBF563C();
            (*(*(v40 - 8) + 16))(v12, v13, v40);
            swift_storeEnumTagMultiPayload();
            goto LABEL_81;
          }

          if (v21 != 1)
          {
            if (v21 == 2)
            {
              goto LABEL_40;
            }

LABEL_60:
            memcpy(v12, v13, *(*(v20 - 8) + 64));
            goto LABEL_81;
          }
        }

        v41 = *v13;
        *v12 = *v13;
        v42 = v41;
        swift_storeEnumTagMultiPayload();
        goto LABEL_81;
      }

      v26 = *v13;
      *v12 = *v13;
      v117 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v120 = v12;
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v115 = *(v27 - 8);
      v28 = *(v115 + 48);
      v29 = v26;
      if (v28(v13 + v117, 1, v27))
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        v12 = v120;
        memcpy(v120 + v117, v13 + v117, *(*(v30 - 8) + 64));
        v18 = v133;
LABEL_81:
        swift_storeEnumTagMultiPayload();
        goto LABEL_82;
      }

      v114 = v27;
      v36 = swift_getEnumCaseMultiPayload();
      v18 = v133;
      if (v36 > 4)
      {
        v12 = v120;
        if (v36 <= 7)
        {
          v37 = v115;
          if (v36 == 5 || v36 == 6)
          {
            goto LABEL_61;
          }

          goto LABEL_79;
        }

        v37 = v115;
        if (v36 != 8 && v36 != 9)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v12 = v120;
        if (v36 > 2)
        {
LABEL_61:
          v46 = v117;
          v47 = sub_21DBF563C();
          (*(*(v47 - 8) + 16))(v12 + v46, v13 + v46, v47);
          v48 = v114;
          swift_storeEnumTagMultiPayload();
LABEL_80:
          (*(v115 + 56))(v12 + v46, 0, 1, v48);
          goto LABEL_81;
        }

        v37 = v115;
        if (v36 != 1)
        {
          if (v36 == 2)
          {
            goto LABEL_61;
          }

LABEL_79:
          v46 = v117;
          memcpy(v12 + v117, v13 + v117, *(v37 + 64));
          v48 = v114;
          goto LABEL_80;
        }
      }

      v49 = *(v13 + v117);
      *(v120 + v117) = v49;
      v46 = v117;
      v50 = v49;
      v48 = v114;
      swift_storeEnumTagMultiPayload();
      goto LABEL_80;
    }

LABEL_13:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
    memcpy(v12, v13, *(*(v22 - 8) + 64));
    v18 = v14;
    goto LABEL_83;
  }

  if (v17)
  {
    sub_21D8E062C(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
    goto LABEL_13;
  }

  v18 = v14;
  if (v3 == a2)
  {
    goto LABEL_83;
  }

  sub_21D8E062C(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 == 2)
  {
    v38 = *v13;
    *v12 = *v13;
    v39 = v38;
    swift_storeEnumTagMultiPayload();
    goto LABEL_83;
  }

  if (v23 != 1)
  {
    if (v23)
    {
      memcpy(v12, v13, *(v127 + 64));
      goto LABEL_83;
    }

    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v25 = swift_getEnumCaseMultiPayload();
    if (v25 > 4)
    {
      if (v25 <= 7)
      {
        if (v25 == 5 || v25 == 6)
        {
          goto LABEL_65;
        }

        goto LABEL_167;
      }

      if (v25 != 8 && v25 != 9)
      {
        goto LABEL_167;
      }
    }

    else
    {
      if (v25 > 2)
      {
LABEL_65:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(v12, v13, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_186;
      }

      if (v25 != 1)
      {
        if (v25 == 2)
        {
          goto LABEL_65;
        }

LABEL_167:
        memcpy(v12, v13, *(*(v24 - 8) + 64));
        goto LABEL_186;
      }
    }

    v52 = *v13;
    *v12 = *v13;
    v53 = v52;
    swift_storeEnumTagMultiPayload();
    goto LABEL_186;
  }

  v121 = *v13;
  *v12 = *v13;
  v124 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v116 = *(v33 - 8);
  v118 = *(v116 + 48);
  v34 = v121;
  if (!v118(v13 + v124, 1, v33))
  {
    v122 = v33;
    v43 = swift_getEnumCaseMultiPayload();
    v18 = v133;
    if (v43 > 4)
    {
      v44 = v116;
      if (v43 <= 7)
      {
        v45 = v124;
        if (v43 == 5 || v43 == 6)
        {
          goto LABEL_170;
        }

        goto LABEL_184;
      }

      v45 = v124;
      if (v43 != 8 && v43 != 9)
      {
        goto LABEL_184;
      }
    }

    else
    {
      v44 = v116;
      if (v43 > 2)
      {
        v45 = v124;
LABEL_170:
        v107 = sub_21DBF563C();
        (*(*(v107 - 8) + 16))(v12 + v45, v13 + v45, v107);
        v108 = v122;
        swift_storeEnumTagMultiPayload();
LABEL_185:
        (*(v116 + 56))(v12 + v45, 0, 1, v108);
        goto LABEL_186;
      }

      v45 = v124;
      if (v43 != 1)
      {
        if (v43 == 2)
        {
          goto LABEL_170;
        }

LABEL_184:
        memcpy(v12 + v45, v13 + v45, *(v44 + 64));
        v108 = v122;
        goto LABEL_185;
      }
    }

    v109 = *(v13 + v124);
    *(v12 + v124) = v109;
    v110 = v109;
    v108 = v122;
    swift_storeEnumTagMultiPayload();
    goto LABEL_185;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  memcpy(v12 + v124, v13 + v124, *(*(v35 - 8) + 64));
  v18 = v133;
LABEL_186:
  swift_storeEnumTagMultiPayload();
LABEL_83:
  v54 = v134[8];
  v55 = &v9[v54];
  v56 = &v10[v54];
  v57 = v15(&v9[v54], 1, v18);
  v58 = v18;
  v59 = v57;
  v60 = v15(v56, 1, v58);
  if (v59)
  {
    if (!v60)
    {
      v61 = v133;
      v62 = swift_getEnumCaseMultiPayload();
      if (v62 == 2)
      {
        v76 = *v56;
        *v55 = *v56;
        v77 = v76;
        goto LABEL_164;
      }

      if (v62 != 1)
      {
        if (v62)
        {
          memcpy(v55, v56, *(v127 + 64));
LABEL_165:
          (*(v127 + 56))(v55, 0, 1, v61);
          goto LABEL_166;
        }

        v63 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v64 = swift_getEnumCaseMultiPayload();
        if (v64 > 4)
        {
          if (v64 <= 7)
          {
            if (v64 == 5 || v64 == 6)
            {
              goto LABEL_123;
            }

            goto LABEL_143;
          }

          if (v64 != 8 && v64 != 9)
          {
            goto LABEL_143;
          }
        }

        else
        {
          if (v64 > 2)
          {
LABEL_123:
            v88 = sub_21DBF563C();
            (*(*(v88 - 8) + 16))(v55, v56, v88);
            swift_storeEnumTagMultiPayload();
            goto LABEL_164;
          }

          if (v64 != 1)
          {
            if (v64 == 2)
            {
              goto LABEL_123;
            }

LABEL_143:
            memcpy(v55, v56, *(*(v63 - 8) + 64));
            goto LABEL_164;
          }
        }

        v89 = *v56;
        *v55 = *v56;
        v90 = v89;
        swift_storeEnumTagMultiPayload();
        goto LABEL_164;
      }

      v125 = v3;
      v69 = *v56;
      *v55 = *v56;
      v70 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v71 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v123 = v55;
      v72 = *(v71 - 8);
      v73 = *(v72 + 48);
      v74 = v69;
      if (v73(v56 + v70, 1, v71))
      {
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        v55 = v123;
        memcpy(v123 + v70, v56 + v70, *(*(v75 - 8) + 64));
        v3 = v125;
        v61 = v133;
LABEL_164:
        swift_storeEnumTagMultiPayload();
        goto LABEL_165;
      }

      v119 = v70;
      v84 = swift_getEnumCaseMultiPayload();
      v3 = v125;
      if (v84 > 4)
      {
        v61 = v133;
        v85 = v72;
        v55 = v123;
        if (v84 <= 7)
        {
          if (v84 == 5 || v84 == 6)
          {
            goto LABEL_144;
          }

          goto LABEL_162;
        }

        if (v84 != 8 && v84 != 9)
        {
          goto LABEL_162;
        }
      }

      else
      {
        v61 = v133;
        v85 = v72;
        v55 = v123;
        if (v84 > 2)
        {
LABEL_144:
          v92 = sub_21DBF563C();
          v93 = v119;
          (*(*(v92 - 8) + 16))(v55 + v119, v56 + v119, v92);
          swift_storeEnumTagMultiPayload();
LABEL_163:
          (*(v85 + 56))(v55 + v93, 0, 1, v71);
          goto LABEL_164;
        }

        if (v84 != 1)
        {
          if (v84 == 2)
          {
            goto LABEL_144;
          }

LABEL_162:
          v93 = v119;
          memcpy(v55 + v119, v56 + v119, *(v85 + 64));
          goto LABEL_163;
        }
      }

      v93 = v119;
      v94 = *(v56 + v119);
      *(v55 + v119) = v94;
      v95 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_163;
    }

    goto LABEL_95;
  }

  if (!v60)
  {
    if (v3 == a2)
    {
      goto LABEL_166;
    }

    sub_21D8E062C(v55, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v66 = swift_getEnumCaseMultiPayload();
    if (v66 == 2)
    {
      v86 = *v56;
      *v55 = *v56;
      v87 = v86;
      swift_storeEnumTagMultiPayload();
      goto LABEL_166;
    }

    if (v66 != 1)
    {
      if (v66)
      {
        v65 = *(v127 + 64);
        goto LABEL_96;
      }

      v67 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v68 = swift_getEnumCaseMultiPayload();
      if (v68 > 4)
      {
        if (v68 <= 7)
        {
          if (v68 == 5 || v68 == 6)
          {
            goto LABEL_148;
          }

          goto LABEL_168;
        }

        if (v68 != 8 && v68 != 9)
        {
          goto LABEL_168;
        }
      }

      else
      {
        if (v68 > 2)
        {
LABEL_148:
          v96 = sub_21DBF563C();
          (*(*(v96 - 8) + 16))(v55, v56, v96);
          swift_storeEnumTagMultiPayload();
          goto LABEL_189;
        }

        if (v68 != 1)
        {
          if (v68 == 2)
          {
            goto LABEL_148;
          }

LABEL_168:
          memcpy(v55, v56, *(*(v67 - 8) + 64));
          goto LABEL_189;
        }
      }

      v97 = *v56;
      *v55 = *v56;
      v98 = v97;
      swift_storeEnumTagMultiPayload();
      goto LABEL_189;
    }

    v126 = v3;
    v78 = *v56;
    *v55 = *v56;
    v128 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v79 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v80 = *(v79 - 8);
    v81 = *(v80 + 48);
    v82 = v78;
    if (v81(v56 + v128, 1, v79))
    {
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v55 + v128, v56 + v128, *(*(v83 - 8) + 64));
      v3 = v126;
LABEL_189:
      swift_storeEnumTagMultiPayload();
      goto LABEL_166;
    }

    v91 = swift_getEnumCaseMultiPayload();
    v3 = v126;
    if (v91 > 4)
    {
      if (v91 <= 7)
      {
        if (v91 == 5 || v91 == 6)
        {
          goto LABEL_174;
        }

        goto LABEL_187;
      }

      if (v91 != 8 && v91 != 9)
      {
        goto LABEL_187;
      }
    }

    else
    {
      if (v91 > 2)
      {
LABEL_174:
        v111 = sub_21DBF563C();
        (*(*(v111 - 8) + 16))(v55 + v128, v56 + v128, v111);
        swift_storeEnumTagMultiPayload();
LABEL_188:
        (*(v80 + 56))(v55 + v128, 0, 1, v79);
        goto LABEL_189;
      }

      if (v91 != 1)
      {
        if (v91 == 2)
        {
          goto LABEL_174;
        }

LABEL_187:
        memcpy(v55 + v128, v56 + v128, *(v80 + 64));
        goto LABEL_188;
      }
    }

    v112 = *(v56 + v128);
    *(v55 + v128) = v112;
    v113 = v112;
    swift_storeEnumTagMultiPayload();
    goto LABEL_188;
  }

  sub_21D8E062C(v55, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_95:
  v65 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
LABEL_96:
  memcpy(v55, v56, v65);
LABEL_166:
  *&v9[v134[9]] = *&v10[v134[9]];
  sub_21DBF8E0C();

  v99 = v134[10];
  v100 = &v9[v99];
  v101 = &v10[v99];
  *v100 = *v101;
  *(v100 + 1) = *(v101 + 1);
  sub_21DBF8E0C();

  *&v9[v134[11]] = *&v10[v134[11]];
  sub_21DBF8E0C();

  v102 = *(v129 + 32);
  v103 = (v5 + v102);
  v104 = (v130 + v102);
  v105 = v104[1];
  *v103 = *v104;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v103[1] = v105;
  *&v3[*(a3 + 24)] = *&a2[*(a3 + 24)];
  sub_21DBF8E0C();

  return v3;
}

uint64_t sub_21D8E062C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *initializeWithTake for TTRRemindersBoardPresentationTreeUpdates(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = &a1[v3];
  v5 = &a2[v3];
  *(v4 + 4) = *&a2[v3 + 32];
  v6 = *&a2[v3 + 16];
  *v4 = *&a2[v3];
  *(v4 + 1) = v6;
  *(v4 + 40) = *&a2[v3 + 40];
  *(v4 + 7) = *&a2[v3 + 56];
  v55 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v7 = *(v55 + 28);
  v8 = &v4[v7];
  v9 = &v5[v7];
  *v8 = v5[v7];
  *(v8 + 1) = *&v5[v7 + 1];
  v10 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v11 = v10[7];
  v12 = &v8[v11];
  v13 = &v9[v11];
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v54 = *(v14 - 8);
  v15 = *(v54 + 48);
  if (v15(v13, 1, v14))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
    memcpy(v12, v13, *(*(v16 - 8) + 64));
    goto LABEL_36;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v47 = v10;
    v52 = v15;
    *v12 = *v13;
    v20 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v49 = v12;
    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v13 + v20, 1, v21))
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      v12 = v49;
      memcpy(v49 + v20, v13 + v20, *(*(v23 - 8) + 64));
      v15 = v52;
LABEL_34:
      swift_storeEnumTagMultiPayload();
      v10 = v47;
      goto LABEL_35;
    }

    v45 = v21;
    v46 = v20;
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 <= 3)
    {
      v12 = v49;
      v15 = v52;
      if (v24 == 2 || v24 == 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = v49;
      v15 = v52;
      if (v24 == 4 || v24 == 5 || v24 == 6)
      {
LABEL_20:
        v25 = sub_21DBF563C();
        (*(*(v25 - 8) + 32))(v12 + v46, v13 + v46, v25);
        v26 = v45;
        swift_storeEnumTagMultiPayload();
LABEL_33:
        (*(v22 + 56))(v12 + v46, 0, 1, v26);
        goto LABEL_34;
      }
    }

    memcpy(v12 + v46, v13 + v46, *(v22 + 64));
    v26 = v45;
    goto LABEL_33;
  }

  if (!EnumCaseMultiPayload)
  {
    v51 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 <= 3)
    {
      if (v18 == 2 || v18 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v18 == 4 || v18 == 5 || v18 == 6)
    {
LABEL_9:
      v19 = sub_21DBF563C();
      (*(*(v19 - 8) + 32))(v12, v13, v19);
      swift_storeEnumTagMultiPayload();
LABEL_25:
      swift_storeEnumTagMultiPayload();
      goto LABEL_35;
    }

    memcpy(v12, v13, *(*(v51 - 8) + 64));
    goto LABEL_25;
  }

  memcpy(v12, v13, *(v54 + 64));
LABEL_35:
  (*(v54 + 56))(v12, 0, 1, v14);
LABEL_36:
  v27 = v10[8];
  v28 = &v8[v27];
  v29 = &v9[v27];
  if (!v15(&v9[v27], 1, v14))
  {
    v31 = swift_getEnumCaseMultiPayload();
    if (v31 != 1)
    {
      if (v31)
      {
        memcpy(v28, v29, *(v54 + 64));
LABEL_69:
        (*(v54 + 56))(v28, 0, 1, v14);
        goto LABEL_70;
      }

      v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_44;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_44:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(v28, v29, v34);
        swift_storeEnumTagMultiPayload();
LABEL_68:
        swift_storeEnumTagMultiPayload();
        goto LABEL_69;
      }

      memcpy(v28, v29, *(*(v32 - 8) + 64));
      goto LABEL_68;
    }

    *v28 = *v29;
    v53 = v28;
    v35 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v29 + v35, 1, v36))
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v53 + v35, v29 + v35, *(*(v38 - 8) + 64));
      v28 = v53;
      goto LABEL_68;
    }

    v48 = v35;
    v50 = v36;
    v39 = swift_getEnumCaseMultiPayload();
    if (v39 <= 3)
    {
      v28 = v53;
      if (v39 != 2)
      {
        v40 = v48;
        if (v39 == 3)
        {
LABEL_55:
          v41 = sub_21DBF563C();
          (*(*(v41 - 8) + 32))(v28 + v40, v29 + v40, v41);
          v42 = v50;
          swift_storeEnumTagMultiPayload();
LABEL_67:
          (*(v37 + 56))(v28 + v40, 0, 1, v42);
          goto LABEL_68;
        }

LABEL_66:
        memcpy(v28 + v40, v29 + v40, *(v37 + 64));
        v42 = v50;
        goto LABEL_67;
      }
    }

    else
    {
      v28 = v53;
      if (v39 != 4)
      {
        v40 = v48;
        if (v39 == 5 || v39 == 6)
        {
          goto LABEL_55;
        }

        goto LABEL_66;
      }
    }

    v43 = sub_21DBF563C();
    v40 = v48;
    (*(*(v43 - 8) + 32))(v28 + v48, v29 + v48, v43);
    v42 = v50;
    swift_storeEnumTagMultiPayload();
    goto LABEL_67;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  memcpy(v28, v29, *(*(v30 - 8) + 64));
LABEL_70:
  *&v8[v10[9]] = *&v9[v10[9]];
  *&v8[v10[10]] = *&v9[v10[10]];
  *&v8[v10[11]] = *&v9[v10[11]];
  *&v4[*(v55 + 32)] = *&v5[*(v55 + 32)];
  result = a1;
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return result;
}

_BYTE *assignWithTake for TTRRemindersBoardPresentationTreeUpdates(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = &a1[v3];
  v5 = &a2[v3];
  __swift_destroy_boxed_opaque_existential_0(&a1[v3]);
  v6 = *(v5 + 1);
  *v4 = *v5;
  *(v4 + 1) = v6;
  v7 = *(v5 + 5);
  v8 = *(v5 + 6);
  *(v4 + 4) = *(v5 + 4);
  *(v4 + 5) = v7;
  swift_unknownObjectRelease();
  v9 = *(v5 + 7);
  *(v4 + 6) = v8;
  *(v4 + 7) = v9;

  v89 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v10 = *(v89 + 28);
  v11 = &v4[v10];
  v12 = &v5[v10];
  *v11 = v5[v10];
  v11[1] = v5[v10 + 1];
  v11[2] = v5[v10 + 2];
  v93 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v13 = v93[7];
  v14 = &v11[v13];
  v15 = &v12[v13];
  v16 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v88 = *(v16 - 8);
  v17 = *(v88 + 48);
  v18 = v17(v14, 1, v16);
  v19 = v17(v15, 1, v16);
  if (v18)
  {
    if (!v19)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(v14, v15, *(v88 + 64));
LABEL_61:
          (*(v88 + 56))(v14, 0, 1, v16);
          goto LABEL_62;
        }

        v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v22 = swift_getEnumCaseMultiPayload();
        if (v22 <= 3)
        {
          if (v22 == 2 || v22 == 3)
          {
            goto LABEL_9;
          }
        }

        else if (v22 == 4 || v22 == 5 || v22 == 6)
        {
LABEL_9:
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 32))(v14, v15, v23);
          swift_storeEnumTagMultiPayload();
LABEL_60:
          swift_storeEnumTagMultiPayload();
          goto LABEL_61;
        }

        memcpy(v14, v15, *(*(v21 - 8) + 64));
        goto LABEL_60;
      }

      v86 = v16;
      *v14 = *v15;
      v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v84 = v14;
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v15 + v29, 1, v30))
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        v14 = v84;
        memcpy(v84 + v29, v15 + v29, *(*(v32 - 8) + 64));
        v16 = v86;
        goto LABEL_60;
      }

      v81 = v31;
      v82 = v29;
      v80 = v30;
      v35 = swift_getEnumCaseMultiPayload();
      if (v35 <= 3)
      {
        v16 = v86;
        if (v35 != 2)
        {
          v36 = v82;
          if (v35 == 3)
          {
LABEL_34:
            v37 = sub_21DBF563C();
            v38 = v84;
            (*(*(v37 - 8) + 32))(v84 + v36, v15 + v36, v37);
            v39 = v80;
            swift_storeEnumTagMultiPayload();
LABEL_59:
            (*(v81 + 56))(&v38[v82], 0, 1, v39);
            v14 = v38;
            goto LABEL_60;
          }

LABEL_58:
          v38 = v84;
          memcpy(v84 + v36, v15 + v36, *(v81 + 64));
          v39 = v80;
          goto LABEL_59;
        }
      }

      else
      {
        v16 = v86;
        if (v35 != 4)
        {
          v36 = v82;
          if (v35 == 5 || v35 == 6)
          {
            goto LABEL_34;
          }

          goto LABEL_58;
        }
      }

      v44 = sub_21DBF563C();
      v38 = v84;
      (*(*(v44 - 8) + 32))(v84 + v82, v15 + v82, v44);
      v39 = v80;
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    sub_21D8E062C(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_12:
    v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
LABEL_13:
    memcpy(v14, v15, v24);
    goto LABEL_62;
  }

  if (a1 == a2)
  {
    goto LABEL_62;
  }

  sub_21D8E062C(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v25 = swift_getEnumCaseMultiPayload();
  if (v25 == 1)
  {
    *v14 = *v15;
    v87 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v85 = *(v33 - 8);
    if ((*(v85 + 48))(v15 + v87, 1, v33))
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v14 + v87, v15 + v87, *(*(v34 - 8) + 64));
      goto LABEL_138;
    }

    v83 = v33;
    v40 = swift_getEnumCaseMultiPayload();
    if (v40 <= 3)
    {
      if (v40 != 2)
      {
        v41 = v87;
        if (v40 == 3)
        {
LABEL_50:
          v42 = sub_21DBF563C();
          (*(*(v42 - 8) + 32))(v14 + v41, v15 + v41, v42);
          v43 = v83;
          swift_storeEnumTagMultiPayload();
LABEL_137:
          (*(v85 + 56))(v14 + v41, 0, 1, v43);
          goto LABEL_138;
        }

LABEL_136:
        memcpy(v14 + v41, v15 + v41, *(v85 + 64));
        v43 = v83;
        goto LABEL_137;
      }
    }

    else if (v40 != 4)
    {
      v41 = v87;
      if (v40 == 5 || v40 == 6)
      {
        goto LABEL_50;
      }

      goto LABEL_136;
    }

    v79 = sub_21DBF563C();
    v41 = v87;
    (*(*(v79 - 8) + 32))(v14 + v87, v15 + v87, v79);
    v43 = v83;
    swift_storeEnumTagMultiPayload();
    goto LABEL_137;
  }

  if (v25)
  {
    v24 = *(v88 + 64);
    goto LABEL_13;
  }

  v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 <= 3)
  {
    if (v27 == 2 || v27 == 3)
    {
      goto LABEL_21;
    }

LABEL_57:
    memcpy(v14, v15, *(*(v26 - 8) + 64));
    goto LABEL_138;
  }

  if (v27 != 4 && v27 != 5 && v27 != 6)
  {
    goto LABEL_57;
  }

LABEL_21:
  v28 = sub_21DBF563C();
  (*(*(v28 - 8) + 32))(v14, v15, v28);
  swift_storeEnumTagMultiPayload();
LABEL_138:
  swift_storeEnumTagMultiPayload();
LABEL_62:
  v45 = v93[8];
  v46 = &v11[v45];
  v47 = &v12[v45];
  v48 = v17(&v11[v45], 1, v16);
  v49 = v17(v47, 1, v16);
  if (v48)
  {
    if (!v49)
    {
      v50 = swift_getEnumCaseMultiPayload();
      if (v50 != 1)
      {
        if (v50)
        {
          memcpy(v46, v47, *(v88 + 64));
LABEL_122:
          (*(v88 + 56))(v46, 0, 1, v16);
          goto LABEL_123;
        }

        v51 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v52 = swift_getEnumCaseMultiPayload();
        if (v52 <= 3)
        {
          if (v52 == 2 || v52 == 3)
          {
            goto LABEL_70;
          }
        }

        else if (v52 == 4 || v52 == 5 || v52 == 6)
        {
LABEL_70:
          v53 = sub_21DBF563C();
          (*(*(v53 - 8) + 32))(v46, v47, v53);
          swift_storeEnumTagMultiPayload();
LABEL_121:
          swift_storeEnumTagMultiPayload();
          goto LABEL_122;
        }

        memcpy(v46, v47, *(*(v51 - 8) + 64));
        goto LABEL_121;
      }

      *v46 = *v47;
      v59 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v60 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v61 = *(v60 - 8);
      if ((*(v61 + 48))(v47 + v59, 1, v60))
      {
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v46 + v59, v47 + v59, *(*(v62 - 8) + 64));
        goto LABEL_121;
      }

      v67 = swift_getEnumCaseMultiPayload();
      if (v67 <= 3)
      {
        if (v67 == 2 || v67 == 3)
        {
          goto LABEL_95;
        }
      }

      else if (v67 == 4 || v67 == 5 || v67 == 6)
      {
LABEL_95:
        v68 = sub_21DBF563C();
        (*(*(v68 - 8) + 32))(v46 + v59, v47 + v59, v68);
        swift_storeEnumTagMultiPayload();
LABEL_120:
        (*(v61 + 56))(v46 + v59, 0, 1, v60);
        goto LABEL_121;
      }

      memcpy(v46 + v59, v47 + v59, *(v61 + 64));
      goto LABEL_120;
    }

    goto LABEL_73;
  }

  if (!v49)
  {
    if (a1 == a2)
    {
      goto LABEL_123;
    }

    sub_21D8E062C(v46, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v55 = swift_getEnumCaseMultiPayload();
    if (v55 != 1)
    {
      if (v55)
      {
        v54 = *(v88 + 64);
        goto LABEL_74;
      }

      v56 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v57 = swift_getEnumCaseMultiPayload();
      if (v57 <= 3)
      {
        if (v57 == 2 || v57 == 3)
        {
          goto LABEL_82;
        }
      }

      else if (v57 == 4 || v57 == 5 || v57 == 6)
      {
LABEL_82:
        v58 = sub_21DBF563C();
        (*(*(v58 - 8) + 32))(v46, v47, v58);
        swift_storeEnumTagMultiPayload();
LABEL_141:
        swift_storeEnumTagMultiPayload();
        goto LABEL_123;
      }

      memcpy(v46, v47, *(*(v56 - 8) + 64));
      goto LABEL_141;
    }

    *v46 = *v47;
    v63 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v64 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v47 + v63, 1, v64))
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v46 + v63, v47 + v63, *(*(v66 - 8) + 64));
      goto LABEL_141;
    }

    v69 = swift_getEnumCaseMultiPayload();
    if (v69 <= 3)
    {
      if (v69 == 2 || v69 == 3)
      {
        goto LABEL_111;
      }
    }

    else if (v69 == 4 || v69 == 5 || v69 == 6)
    {
LABEL_111:
      v70 = sub_21DBF563C();
      (*(*(v70 - 8) + 32))(v46 + v63, v47 + v63, v70);
      swift_storeEnumTagMultiPayload();
LABEL_140:
      (*(v65 + 56))(v46 + v63, 0, 1, v64);
      goto LABEL_141;
    }

    memcpy(v46 + v63, v47 + v63, *(v65 + 64));
    goto LABEL_140;
  }

  sub_21D8E062C(v46, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_73:
  v54 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
LABEL_74:
  memcpy(v46, v47, v54);
LABEL_123:
  *&v11[v93[9]] = *&v12[v93[9]];

  v71 = v93[10];
  v72 = &v11[v71];
  v73 = &v12[v71];
  *v72 = *v73;
  *(v72 + 1) = *(v73 + 1);

  *&v11[v93[11]] = *&v12[v93[11]];

  v74 = *(v89 + 32);
  v75 = &v4[v74];
  v76 = &v5[v74];
  v77 = v76[1];
  *v75 = *v76;
  swift_unknownObjectRelease();
  v75[1] = v77;
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersBoardPresentationTreeUpdates.UpdateScope(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = ((v7 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v8 = -2;
  }

  if (v8 < 0)
  {
    v8 = -1;
  }

  v9 = v8 + 1;
  v10 = v8 - 1;
  if (v9 >= 3)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRBoardReminderCellInfoButtonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21D8E2CC0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *sub_21D8E2CF0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

_BYTE *initializeBufferWithCopyOfBuffer for TTRRemindersBoardPresentationTreeUpdatesForColumn(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    *a1 = *a2;
    v6 = *(a3 + 20);
    v8 = &a1[v6];
    v9 = &a2[v6];
    v10 = *&a2[v6 + 24];
    *&a1[v6 + 24] = v10;
    (**(v10 - 8))(&a1[v6], &a2[v6]);
    *(v8 + 40) = *(v9 + 40);
    *(v8 + 7) = *(v9 + 7);
    v109 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
    v11 = *(v109 + 28);
    v106 = v8;
    v107 = v9;
    v12 = &v8[v11];
    v13 = &v9[v11];
    *v12 = v9[v11];
    *(v12 + 1) = *&v9[v11 + 1];
    v112 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
    v14 = *(v112 + 28);
    v15 = v12;
    v16 = &v12[v14];
    v17 = v13;
    v18 = &v13[v14];
    v19 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    v113 = *(v19 - 8);
    v20 = *(v113 + 48);
    swift_unknownObjectRetain();
    sub_21DBF8E0C();
    v108 = v20;
    v111 = a2;
    if (v20(v18, 1, v19))
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
      memcpy(v16, v18, *(*(v21 - 8) + 64));
      v22 = v112;
      v23 = a1;
      goto LABEL_49;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v35 = *v18;
      *v16 = *v18;
      v36 = v35;
      swift_storeEnumTagMultiPayload();
      v22 = v112;
      v23 = a1;
      goto LABEL_48;
    }

    v23 = a1;
    if (EnumCaseMultiPayload != 1)
    {
      v22 = v112;
      if (!EnumCaseMultiPayload)
      {
        v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v27 = swift_getEnumCaseMultiPayload();
        if (v27 > 4)
        {
          if (v27 <= 7)
          {
            if (v27 == 5 || v27 == 6)
            {
              goto LABEL_26;
            }

            goto LABEL_37;
          }

          if (v27 != 8 && v27 != 9)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v27 > 2)
          {
LABEL_26:
            v40 = sub_21DBF563C();
            (*(*(v40 - 8) + 16))(v16, v18, v40);
            swift_storeEnumTagMultiPayload();
            goto LABEL_47;
          }

          if (v27 != 1)
          {
            if (v27 == 2)
            {
              goto LABEL_26;
            }

LABEL_37:
            memcpy(v16, v18, *(*(v26 - 8) + 64));
            goto LABEL_47;
          }
        }

        v41 = *v18;
        *v16 = *v18;
        v42 = v41;
        swift_storeEnumTagMultiPayload();
        goto LABEL_47;
      }

      memcpy(v16, v18, *(v113 + 64));
LABEL_48:
      (*(v113 + 56))(v16, 0, 1, v19);
LABEL_49:
      v47 = v22[8];
      v48 = &v15[v47];
      v49 = &v13[v47];
      if (v108(&v13[v47], 1, v19))
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
        memcpy(v48, v49, *(*(v50 - 8) + 64));
        goto LABEL_95;
      }

      v51 = swift_getEnumCaseMultiPayload();
      if (v51 == 2)
      {
        v61 = *v49;
        *v48 = *v49;
        v62 = v61;
        goto LABEL_93;
      }

      if (v51 != 1)
      {
        if (v51)
        {
          memcpy(v48, v49, *(v113 + 64));
LABEL_94:
          (*(v113 + 56))(v48, 0, 1, v19);
LABEL_95:
          *&v15[v22[9]] = *&v17[v22[9]];
          v72 = v22[10];
          v73 = &v15[v72];
          v74 = &v17[v72];
          *v73 = *v74;
          *(v73 + 1) = *(v74 + 1);
          *&v15[v22[11]] = *&v17[v22[11]];
          *&v106[*(v109 + 32)] = *&v107[*(v109 + 32)];
          v75 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
          *&v106[*(v75 + 20)] = *&v107[*(v75 + 20)];
          v76 = *(v75 + 24);
          v77 = &v106[v76];
          v78 = &v107[v76];
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          swift_unknownObjectRetain();

          v79 = swift_getEnumCaseMultiPayload();
          if (v79 == 2)
          {
            v91 = *v78;
            *v77 = *v78;
            v92 = v91;
            swift_storeEnumTagMultiPayload();
            v80 = v111;
            goto LABEL_138;
          }

          if (v79 != 1)
          {
            v80 = v111;
            if (!v79)
            {
              v81 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v82 = swift_getEnumCaseMultiPayload();
              if (v82 > 4)
              {
                if (v82 <= 7)
                {
                  if (v82 == 5 || v82 == 6)
                  {
                    goto LABEL_116;
                  }

                  goto LABEL_127;
                }

                if (v82 != 8 && v82 != 9)
                {
                  goto LABEL_127;
                }
              }

              else
              {
                if (v82 > 2)
                {
LABEL_116:
                  v94 = sub_21DBF563C();
                  (*(*(v94 - 8) + 16))(v77, v78, v94);
                  swift_storeEnumTagMultiPayload();
                  goto LABEL_137;
                }

                if (v82 != 1)
                {
                  if (v82 == 2)
                  {
                    goto LABEL_116;
                  }

LABEL_127:
                  memcpy(v77, v78, *(*(v81 - 8) + 64));
                  goto LABEL_137;
                }
              }

              v95 = *v78;
              *v77 = *v78;
              v96 = v95;
              swift_storeEnumTagMultiPayload();
              goto LABEL_137;
            }

            memcpy(v77, v78, *(v113 + 64));
LABEL_138:
            *&v23[*(a3 + 24)] = *&v80[*(a3 + 24)];
            sub_21DBF8E0C();
            return v23;
          }

          v83 = v23;
          v84 = *v78;
          *v77 = *v78;
          v85 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v86 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v87 = *(v86 - 8);
          v88 = *(v87 + 48);
          v89 = v84;
          if (v88(v78 + v85, 1, v86))
          {
            v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
            memcpy(v77 + v85, v78 + v85, *(*(v90 - 8) + 64));
            v23 = v83;
            v80 = v111;
LABEL_137:
            swift_storeEnumTagMultiPayload();
            goto LABEL_138;
          }

          v93 = swift_getEnumCaseMultiPayload();
          v23 = v83;
          v80 = v111;
          if (v93 > 4)
          {
            if (v93 <= 7)
            {
              if (v93 == 5 || v93 == 6)
              {
                goto LABEL_128;
              }

              goto LABEL_135;
            }

            if (v93 != 8 && v93 != 9)
            {
              goto LABEL_135;
            }
          }

          else
          {
            if (v93 > 2)
            {
LABEL_128:
              v97 = sub_21DBF563C();
              (*(*(v97 - 8) + 16))(v77 + v85, v78 + v85, v97);
              swift_storeEnumTagMultiPayload();
LABEL_136:
              (*(v87 + 56))(v77 + v85, 0, 1, v86);
              goto LABEL_137;
            }

            if (v93 != 1)
            {
              if (v93 == 2)
              {
                goto LABEL_128;
              }

LABEL_135:
              memcpy(v77 + v85, v78 + v85, *(v87 + 64));
              goto LABEL_136;
            }
          }

          v98 = *(v78 + v85);
          *(v77 + v85) = v98;
          v99 = v98;
          swift_storeEnumTagMultiPayload();
          goto LABEL_136;
        }

        v52 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v53 = swift_getEnumCaseMultiPayload();
        if (v53 > 4)
        {
          if (v53 <= 7)
          {
            if (v53 == 5 || v53 == 6)
            {
              goto LABEL_72;
            }

            goto LABEL_83;
          }

          if (v53 != 8 && v53 != 9)
          {
            goto LABEL_83;
          }
        }

        else
        {
          if (v53 > 2)
          {
LABEL_72:
            v66 = sub_21DBF563C();
            (*(*(v66 - 8) + 16))(v48, v49, v66);
            swift_storeEnumTagMultiPayload();
            goto LABEL_93;
          }

          if (v53 != 1)
          {
            if (v53 == 2)
            {
              goto LABEL_72;
            }

LABEL_83:
            memcpy(v48, v49, *(*(v52 - 8) + 64));
            goto LABEL_93;
          }
        }

        v67 = *v49;
        *v48 = *v49;
        v68 = v67;
        swift_storeEnumTagMultiPayload();
        goto LABEL_93;
      }

      v105 = v23;
      v54 = *v49;
      *v48 = *v49;
      v55 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v57 = *(v56 - 8);
      v58 = *(v57 + 48);
      v59 = v54;
      if (v58(v49 + v55, 1, v56))
      {
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v48 + v55, v49 + v55, *(*(v60 - 8) + 64));
        v23 = v105;
        v22 = v112;
LABEL_93:
        swift_storeEnumTagMultiPayload();
        goto LABEL_94;
      }

      v63 = v57;
      v64 = swift_getEnumCaseMultiPayload();
      v65 = v55;
      if (v64 > 4)
      {
        v23 = v105;
        v22 = v112;
        if (v64 <= 7)
        {
          if (v64 == 5 || v64 == 6)
          {
            goto LABEL_84;
          }

          goto LABEL_91;
        }

        if (v64 != 8 && v64 != 9)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v23 = v105;
        v22 = v112;
        if (v64 > 2)
        {
LABEL_84:
          v69 = sub_21DBF563C();
          (*(*(v69 - 8) + 16))(v48 + v65, v49 + v65, v69);
          swift_storeEnumTagMultiPayload();
LABEL_92:
          (*(v63 + 56))(v48 + v65, 0, 1, v56);
          goto LABEL_93;
        }

        if (v64 != 1)
        {
          if (v64 == 2)
          {
            goto LABEL_84;
          }

LABEL_91:
          memcpy(v48 + v65, v49 + v65, *(v63 + 64));
          goto LABEL_92;
        }
      }

      v70 = *(v49 + v65);
      *(v48 + v65) = v70;
      v71 = v70;
      swift_storeEnumTagMultiPayload();
      goto LABEL_92;
    }

    v103 = v19;
    v104 = a1;
    v28 = *v18;
    v102 = v16;
    *v16 = *v18;
    v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v28;
    if (v32(v18 + v29, 1, v30))
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      v16 = v102;
      memcpy(v102 + v29, v18 + v29, *(*(v34 - 8) + 64));
      v19 = v103;
      v23 = v104;
      v22 = v112;
LABEL_47:
      swift_storeEnumTagMultiPayload();
      goto LABEL_48;
    }

    v37 = v29;
    v38 = swift_getEnumCaseMultiPayload();
    v19 = v103;
    v101 = v30;
    if (v38 > 4)
    {
      v23 = v104;
      v22 = v112;
      v39 = v31;
      if (v38 <= 7)
      {
        if (v38 == 5 || v38 == 6)
        {
          goto LABEL_38;
        }

        goto LABEL_45;
      }

      if (v38 != 8 && v38 != 9)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v23 = v104;
      v22 = v112;
      v39 = v31;
      if (v38 > 2)
      {
LABEL_38:
        v43 = sub_21DBF563C();
        v16 = v102;
        (*(*(v43 - 8) + 16))(v102 + v37, v18 + v37, v43);
        v44 = v101;
        swift_storeEnumTagMultiPayload();
LABEL_46:
        (*(v31 + 56))(v16 + v37, 0, 1, v44);
        goto LABEL_47;
      }

      if (v38 != 1)
      {
        if (v38 == 2)
        {
          goto LABEL_38;
        }

LABEL_45:
        v16 = v102;
        memcpy(v102 + v37, v18 + v37, *(v39 + 64));
        v44 = v101;
        goto LABEL_46;
      }
    }

    v45 = *(v18 + v37);
    v16 = v102;
    *(v102 + v37) = v45;
    v46 = v45;
    v44 = v101;
    swift_storeEnumTagMultiPayload();
    goto LABEL_46;
  }

  v24 = *a2;
  *a1 = *a2;
  v23 = (v24 + ((v5 + 16) & ~v5));

  return v23;
}

double destroy for TTRRemindersBoardPresentationTreeUpdatesForColumn(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + *(a2 + 20));
  __swift_destroy_boxed_opaque_existential_0(v2);
  swift_unknownObjectRelease();

  v3 = v2 + *(type metadata accessor for TTRRemindersBoardPresentationTrees(0) + 28);
  v4 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v5 = &v3[*(v4 + 28)];
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v7 = *(*(v6 - 8) + 48);
  if (!v7(v5, 1, v6))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
LABEL_76:
      v33 = *v5;
LABEL_77:

      goto LABEL_2;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_2;
      }

      type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 > 4)
      {
        if (v14 <= 7)
        {
          if (v14 != 5 && v14 != 6)
          {
            goto LABEL_2;
          }

LABEL_72:
          v31 = sub_21DBF563C();
          (*(*(v31 - 8) + 8))(v5, v31);
          goto LABEL_2;
        }

        if (v14 != 8 && v14 != 9)
        {
          goto LABEL_2;
        }
      }

      else
      {
        if (v14 > 2)
        {
          goto LABEL_72;
        }

        if (v14 != 1)
        {
          if (v14 != 2)
          {
            goto LABEL_2;
          }

          goto LABEL_72;
        }
      }

      goto LABEL_76;
    }

    v20 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v21 - 8) + 48))(v5 + v20, 1, v21))
    {
      goto LABEL_2;
    }

    v22 = swift_getEnumCaseMultiPayload();
    if (v22 > 4)
    {
      if (v22 <= 7)
      {
        if (v22 == 5)
        {
          goto LABEL_93;
        }

        v23 = v22 == 6;
LABEL_91:
        if (!v23)
        {
          goto LABEL_2;
        }

LABEL_93:
        v35 = sub_21DBF563C();
        (*(*(v35 - 8) + 8))(v5 + v20, v35);
        goto LABEL_2;
      }

      if (v22 != 8)
      {
        v37 = v20;
        if (v22 != 9)
        {
          goto LABEL_2;
        }

        goto LABEL_103;
      }
    }

    else
    {
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          goto LABEL_93;
        }

        v23 = v22 == 4;
        goto LABEL_91;
      }

      if (v22 != 1)
      {
        v23 = v22 == 2;
        goto LABEL_91;
      }
    }

    v37 = v20;
LABEL_103:
    v33 = *(v5 + v37);
    goto LABEL_77;
  }

LABEL_2:
  v8 = &v3[*(v4 + 32)];
  if (v7(v8, 1, v6))
  {
    goto LABEL_3;
  }

  v15 = swift_getEnumCaseMultiPayload();
  if (v15 == 2)
  {
    goto LABEL_80;
  }

  if (v15 == 1)
  {

    v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v25 - 8) + 48))(v8 + v24, 1, v25))
    {
      goto LABEL_3;
    }

    v26 = swift_getEnumCaseMultiPayload();
    if (v26 > 4)
    {
      if (v26 <= 7)
      {
        if (v26 != 5 && v26 != 6)
        {
          goto LABEL_3;
        }

LABEL_94:
        v36 = sub_21DBF563C();
        (*(*(v36 - 8) + 8))(v8 + v24, v36);
        goto LABEL_3;
      }

      if (v26 != 8 && v26 != 9)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v26 > 2)
      {
        goto LABEL_94;
      }

      if (v26 != 1)
      {
        if (v26 != 2)
        {
          goto LABEL_3;
        }

        goto LABEL_94;
      }
    }

    v34 = *(v8 + v24);
    goto LABEL_81;
  }

  if (v15)
  {
    goto LABEL_3;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v16 = swift_getEnumCaseMultiPayload();
  if (v16 <= 4)
  {
    if (v16 > 2)
    {
      goto LABEL_73;
    }

    if (v16 != 1)
    {
      if (v16 != 2)
      {
        goto LABEL_3;
      }

LABEL_73:
      v32 = sub_21DBF563C();
      (*(*(v32 - 8) + 8))(v8, v32);
      goto LABEL_3;
    }

    goto LABEL_80;
  }

  if (v16 > 7)
  {
    if (v16 != 8 && v16 != 9)
    {
      goto LABEL_3;
    }

LABEL_80:
    v34 = *v8;
LABEL_81:

    goto LABEL_3;
  }

  if (v16 == 5 || v16 == 6)
  {
    goto LABEL_73;
  }

LABEL_3:

  swift_unknownObjectRelease();
  v9 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);

  v10 = (v2 + *(v9 + 24));
  v11 = swift_getEnumCaseMultiPayload();
  if (v11 == 2)
  {
    goto LABEL_51;
  }

  if (v11 == 1)
  {

    v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v18 - 8) + 48))(v10 + v17, 1, v18))
    {
      goto LABEL_53;
    }

    v19 = swift_getEnumCaseMultiPayload();
    if (v19 > 4)
    {
      if (v19 <= 7)
      {
        if (v19 != 5 && v19 != 6)
        {
          goto LABEL_53;
        }

LABEL_68:
        v30 = sub_21DBF563C();
        (*(*(v30 - 8) + 8))(v10 + v17, v30);
        goto LABEL_53;
      }

      if (v19 != 8 && v19 != 9)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v19 > 2)
      {
        goto LABEL_68;
      }

      if (v19 != 1)
      {
        if (v19 != 2)
        {
          goto LABEL_53;
        }

        goto LABEL_68;
      }
    }

    v28 = *(v10 + v17);
    goto LABEL_52;
  }

  if (v11)
  {
    goto LABEL_53;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v12 = swift_getEnumCaseMultiPayload();
  if (v12 <= 4)
  {
    if (v12 > 2)
    {
      goto LABEL_48;
    }

    if (v12 != 1)
    {
      if (v12 != 2)
      {
        goto LABEL_53;
      }

LABEL_48:
      v27 = sub_21DBF563C();
      (*(*(v27 - 8) + 8))(v10, v27);
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (v12 > 7)
  {
    if (v12 != 8 && v12 != 9)
    {
      goto LABEL_53;
    }

LABEL_51:
    v28 = *v10;
LABEL_52:

    goto LABEL_53;
  }

  if (v12 == 5 || v12 == 6)
  {
    goto LABEL_48;
  }

LABEL_53:

  return result;
}

_BYTE *initializeWithCopy for TTRRemindersBoardPresentationTreeUpdatesForColumn(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v6 = &a1[v4];
  v7 = &a2[v4];
  v8 = *&a2[v4 + 24];
  *&a1[v4 + 24] = v8;
  (**(v8 - 8))(&a1[v4], &a2[v4]);
  *(v6 + 40) = *(v7 + 40);
  *(v6 + 7) = *(v7 + 7);
  v109 = v7;
  v110 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v9 = *(v110 + 28);
  v106 = v6;
  v10 = &v6[v9];
  v11 = &v7[v9];
  *v10 = *v11;
  *(v10 + 1) = *(v11 + 1);
  v12 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v13 = *(v12 + 28);
  v14 = v10;
  v15 = &v10[v13];
  v105 = v11;
  v16 = &v11[v13];
  v17 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v113 = *(v17 - 8);
  v18 = *(v113 + 48);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  v107 = v18;
  v112 = a2;
  if (v18(v16, 1, v17))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
    memcpy(v15, v16, *(*(v19 - 8) + 64));
    v20 = a1;
    v21 = v12;
    v22 = v14;
    v23 = v105;
    goto LABEL_48;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v37 = *v16;
    v25 = v15;
    *v15 = *v16;
    v38 = v37;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v21 = v12;
    goto LABEL_15;
  }

  v20 = a1;
  v25 = v15;
  if (EnumCaseMultiPayload == 1)
  {
    v102 = v17;
    v103 = a1;
    v28 = *v16;
    *v15 = *v16;
    v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v28;
    v34 = v29;
    v35 = v32(v16 + v29, 1, v30);
    v21 = v12;
    if (v35)
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v25 + v34, v16 + v34, *(*(v36 - 8) + 64));
      v17 = v102;
      v20 = v103;
      v22 = v14;
      v23 = v105;
LABEL_46:
      swift_storeEnumTagMultiPayload();
      goto LABEL_47;
    }

    v39 = v34;
    v40 = swift_getEnumCaseMultiPayload();
    v17 = v102;
    v22 = v14;
    if (v40 > 4)
    {
      v20 = v103;
      v23 = v105;
      if (v40 <= 7)
      {
        if (v40 == 5 || v40 == 6)
        {
          goto LABEL_37;
        }

        goto LABEL_44;
      }

      if (v40 != 8 && v40 != 9)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v20 = v103;
      v23 = v105;
      if (v40 > 2)
      {
LABEL_37:
        v44 = sub_21DBF563C();
        (*(*(v44 - 8) + 16))(v25 + v39, v16 + v39, v44);
        v45 = v30;
        swift_storeEnumTagMultiPayload();
LABEL_45:
        (*(v31 + 56))(v25 + v39, 0, 1, v45);
        goto LABEL_46;
      }

      if (v40 != 1)
      {
        if (v40 == 2)
        {
          goto LABEL_37;
        }

LABEL_44:
        memcpy(v25 + v39, v16 + v39, *(v31 + 64));
        v45 = v30;
        goto LABEL_45;
      }
    }

    v46 = *(v16 + v39);
    *(v25 + v39) = v46;
    v47 = v46;
    v45 = v30;
    swift_storeEnumTagMultiPayload();
    goto LABEL_45;
  }

  v21 = v12;
  if (!EnumCaseMultiPayload)
  {
    v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v27 = swift_getEnumCaseMultiPayload();
    v22 = v14;
    if (v27 > 4)
    {
      v23 = v105;
      if (v27 <= 7)
      {
        if (v27 == 5 || v27 == 6)
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      }

      if (v27 != 8 && v27 != 9)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v23 = v105;
      if (v27 > 2)
      {
LABEL_25:
        v41 = sub_21DBF563C();
        (*(*(v41 - 8) + 16))(v15, v16, v41);
        swift_storeEnumTagMultiPayload();
        goto LABEL_46;
      }

      if (v27 != 1)
      {
        if (v27 == 2)
        {
          goto LABEL_25;
        }

LABEL_36:
        memcpy(v15, v16, *(*(v26 - 8) + 64));
        goto LABEL_46;
      }
    }

    v42 = *v16;
    *v15 = *v16;
    v43 = v42;
    swift_storeEnumTagMultiPayload();
    goto LABEL_46;
  }

  memcpy(v15, v16, *(v113 + 64));
LABEL_15:
  v22 = v14;
  v23 = v105;
LABEL_47:
  (*(v113 + 56))(v25, 0, 1, v17);
LABEL_48:
  v48 = v21[8];
  v49 = &v22[v48];
  v50 = &v23[v48];
  if (v107(&v23[v48], 1, v17))
  {
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
    memcpy(v49, v50, *(*(v51 - 8) + 64));
    goto LABEL_94;
  }

  v52 = swift_getEnumCaseMultiPayload();
  switch(v52)
  {
    case 2:
      v62 = *v50;
      *v49 = *v50;
      v63 = v62;
      goto LABEL_92;
    case 1:
      v108 = v21;
      v104 = v20;
      v55 = *v50;
      *v49 = *v50;
      v56 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v57 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v58 = *(v57 - 8);
      v59 = *(v58 + 48);
      v60 = v55;
      if (v59(v50 + v56, 1, v57))
      {
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v49 + v56, v50 + v56, *(*(v61 - 8) + 64));
        v20 = v104;
        v21 = v108;
LABEL_92:
        swift_storeEnumTagMultiPayload();
        goto LABEL_93;
      }

      v64 = v58;
      v65 = swift_getEnumCaseMultiPayload();
      v66 = v56;
      if (v65 > 4)
      {
        v20 = v104;
        v21 = v108;
        if (v65 <= 7)
        {
          if (v65 == 5 || v65 == 6)
          {
            goto LABEL_83;
          }

          goto LABEL_90;
        }

        if (v65 != 8 && v65 != 9)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v20 = v104;
        v21 = v108;
        if (v65 > 2)
        {
LABEL_83:
          v70 = sub_21DBF563C();
          (*(*(v70 - 8) + 16))(v49 + v66, v50 + v66, v70);
          swift_storeEnumTagMultiPayload();
LABEL_91:
          (*(v64 + 56))(v49 + v66, 0, 1, v57);
          goto LABEL_92;
        }

        if (v65 != 1)
        {
          if (v65 == 2)
          {
            goto LABEL_83;
          }

LABEL_90:
          memcpy(v49 + v66, v50 + v66, *(v64 + 64));
          goto LABEL_91;
        }
      }

      v71 = *(v50 + v66);
      *(v49 + v66) = v71;
      v72 = v71;
      swift_storeEnumTagMultiPayload();
      goto LABEL_91;
    case 0:
      v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v54 = swift_getEnumCaseMultiPayload();
      if (v54 > 4)
      {
        if (v54 <= 7)
        {
          if (v54 == 5 || v54 == 6)
          {
            goto LABEL_71;
          }

          goto LABEL_82;
        }

        if (v54 != 8 && v54 != 9)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v54 > 2)
        {
LABEL_71:
          v67 = sub_21DBF563C();
          (*(*(v67 - 8) + 16))(v49, v50, v67);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v54 != 1)
        {
          if (v54 == 2)
          {
            goto LABEL_71;
          }

LABEL_82:
          memcpy(v49, v50, *(*(v53 - 8) + 64));
          goto LABEL_92;
        }
      }

      v68 = *v50;
      *v49 = *v50;
      v69 = v68;
      swift_storeEnumTagMultiPayload();
      goto LABEL_92;
  }

  memcpy(v49, v50, *(v113 + 64));
LABEL_93:
  (*(v113 + 56))(v49, 0, 1, v17);
LABEL_94:
  *&v22[v21[9]] = *&v23[v21[9]];
  v73 = v21[10];
  v74 = &v22[v73];
  v75 = &v23[v73];
  *v74 = *v75;
  *(v74 + 1) = *(v75 + 1);
  *&v22[v21[11]] = *&v23[v21[11]];
  *&v106[*(v110 + 32)] = *&v109[*(v110 + 32)];
  v76 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  *&v106[*(v76 + 20)] = *&v109[*(v76 + 20)];
  v77 = *(v76 + 24);
  v78 = &v106[v77];
  v79 = &v109[v77];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  swift_unknownObjectRetain();

  v80 = swift_getEnumCaseMultiPayload();
  if (v80 == 2)
  {
    v92 = *v79;
    *v78 = *v79;
    v93 = v92;
    swift_storeEnumTagMultiPayload();
    v81 = v112;
    goto LABEL_137;
  }

  if (v80 == 1)
  {
    v84 = v20;
    v85 = *v79;
    *v78 = *v79;
    v86 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v87 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v88 = *(v87 - 8);
    v89 = *(v88 + 48);
    v90 = v85;
    if (v89(v79 + v86, 1, v87))
    {
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v78 + v86, v79 + v86, *(*(v91 - 8) + 64));
      v20 = v84;
      v81 = v112;
LABEL_136:
      swift_storeEnumTagMultiPayload();
      goto LABEL_137;
    }

    v94 = swift_getEnumCaseMultiPayload();
    v20 = v84;
    v81 = v112;
    if (v94 > 4)
    {
      if (v94 <= 7)
      {
        if (v94 == 5 || v94 == 6)
        {
          goto LABEL_127;
        }

        goto LABEL_134;
      }

      if (v94 != 8 && v94 != 9)
      {
        goto LABEL_134;
      }
    }

    else
    {
      if (v94 > 2)
      {
LABEL_127:
        v98 = sub_21DBF563C();
        (*(*(v98 - 8) + 16))(v78 + v86, v79 + v86, v98);
        swift_storeEnumTagMultiPayload();
LABEL_135:
        (*(v88 + 56))(v78 + v86, 0, 1, v87);
        goto LABEL_136;
      }

      if (v94 != 1)
      {
        if (v94 == 2)
        {
          goto LABEL_127;
        }

LABEL_134:
        memcpy(v78 + v86, v79 + v86, *(v88 + 64));
        goto LABEL_135;
      }
    }

    v99 = *(v79 + v86);
    *(v78 + v86) = v99;
    v100 = v99;
    swift_storeEnumTagMultiPayload();
    goto LABEL_135;
  }

  v81 = v112;
  if (!v80)
  {
    v82 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v83 = swift_getEnumCaseMultiPayload();
    if (v83 > 4)
    {
      if (v83 <= 7)
      {
        if (v83 == 5 || v83 == 6)
        {
          goto LABEL_115;
        }

        goto LABEL_126;
      }

      if (v83 != 8 && v83 != 9)
      {
        goto LABEL_126;
      }
    }

    else
    {
      if (v83 > 2)
      {
LABEL_115:
        v95 = sub_21DBF563C();
        (*(*(v95 - 8) + 16))(v78, v79, v95);
        swift_storeEnumTagMultiPayload();
        goto LABEL_136;
      }

      if (v83 != 1)
      {
        if (v83 == 2)
        {
          goto LABEL_115;
        }

LABEL_126:
        memcpy(v78, v79, *(*(v82 - 8) + 64));
        goto LABEL_136;
      }
    }

    v96 = *v79;
    *v78 = *v79;
    v97 = v96;
    swift_storeEnumTagMultiPayload();
    goto LABEL_136;
  }

  memcpy(v78, v79, *(v113 + 64));
LABEL_137:
  *&v20[*(a3 + 24)] = *&v81[*(a3 + 24)];
  sub_21DBF8E0C();
  return v20;
}

_BYTE *assignWithCopy for TTRRemindersBoardPresentationTreeUpdatesForColumn(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  __swift_assign_boxed_opaque_existential_1(&a1[v4], &a2[v4]);
  v7 = v6[6];
  v5[5] = v6[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v5[6] = v7;
  v5[7] = v6[7];
  sub_21DBF8E0C();

  v154 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v8 = *(v154 + 28);
  v9 = v5 + v8;
  v10 = v6 + v8;
  *v9 = *(v6 + v8);
  v9[1] = *(v6 + v8 + 1);
  v9[2] = *(v6 + v8 + 2);
  v159 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v11 = *(v159 + 28);
  v12 = &v9[v11];
  v13 = &v10[v11];
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v153 = *(v14 - 8);
  v15 = *(v153 + 48);
  __dst = v12;
  LODWORD(v12) = v15(v12, 1, v14);
  v162 = v14;
  v16 = v15(v13, 1, v14);
  v160 = a2;
  if (v12)
  {
    if (v16)
    {
      v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
      v18 = __dst;
LABEL_6:
      memcpy(v18, v13, v17);
      v19 = v14;
      v20 = v159;
      goto LABEL_84;
    }

    v19 = v14;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v20 = v159;
    if (EnumCaseMultiPayload == 2)
    {
      v31 = *v13;
      v30 = __dst;
      *__dst = v31;
      v32 = v31;
      goto LABEL_82;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        v33 = v13;
        v30 = __dst;
        memcpy(__dst, v33, *(v153 + 64));
LABEL_83:
        (*(v153 + 56))(v30, 0, 1, v19);
        goto LABEL_84;
      }

      v147 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v22 = swift_getEnumCaseMultiPayload();
      if (v22 > 4)
      {
        if (v22 <= 7)
        {
          if (v22 == 5 || v22 == 6)
          {
            goto LABEL_41;
          }

          goto LABEL_61;
        }

        if (v22 != 8 && v22 != 9)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v22 > 2)
        {
LABEL_41:
          v40 = sub_21DBF563C();
          v30 = __dst;
          (*(*(v40 - 8) + 16))();
          swift_storeEnumTagMultiPayload();
          goto LABEL_82;
        }

        if (v22 != 1)
        {
          if (v22 == 2)
          {
            goto LABEL_41;
          }

LABEL_61:
          v45 = v13;
          v30 = __dst;
          memcpy(__dst, v45, *(*(v147 - 8) + 64));
          goto LABEL_82;
        }
      }

      v41 = *v13;
      v30 = __dst;
      *__dst = v41;
      v42 = v41;
      swift_storeEnumTagMultiPayload();
      goto LABEL_82;
    }

    v149 = v6;
    v25 = *v13;
    *__dst = *v13;
    v144 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v142 = *(v26 - 8);
    v27 = *(v142 + 48);
    v28 = v25;
    if (v27(v13 + v144, 1, v26))
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(__dst + v144, v13 + v144, *(*(v29 - 8) + 64));
      v19 = v162;
      v20 = v159;
      v30 = __dst;
      v6 = v149;
LABEL_82:
      swift_storeEnumTagMultiPayload();
      goto LABEL_83;
    }

    v141 = v26;
    v36 = swift_getEnumCaseMultiPayload();
    v19 = v162;
    v20 = v159;
    if (v36 > 4)
    {
      v6 = v149;
      v37 = v142;
      if (v36 <= 7)
      {
        if (v36 == 5 || v36 == 6)
        {
          goto LABEL_62;
        }

        goto LABEL_80;
      }

      if (v36 != 8 && v36 != 9)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v6 = v149;
      v37 = v142;
      if (v36 > 2)
      {
LABEL_62:
        v46 = sub_21DBF563C();
        v47 = v13 + v144;
        v30 = __dst;
        (*(*(v46 - 8) + 16))(__dst + v144, v47, v46);
        swift_storeEnumTagMultiPayload();
LABEL_81:
        (*(v142 + 56))(v30 + v144, 0, 1, v141);
        goto LABEL_82;
      }

      if (v36 != 1)
      {
        if (v36 == 2)
        {
          goto LABEL_62;
        }

LABEL_80:
        v53 = v13 + v144;
        v30 = __dst;
        memcpy(__dst + v144, v53, *(v37 + 64));
        goto LABEL_81;
      }
    }

    v48 = *(v13 + v144);
    v30 = __dst;
    *(__dst + v144) = v48;
    v49 = v48;
    swift_storeEnumTagMultiPayload();
    goto LABEL_81;
  }

  if (v16)
  {
    sub_21D8E062C(__dst, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
    v18 = __dst;
    goto LABEL_6;
  }

  v19 = v14;
  v20 = v159;
  if (a1 != a2)
  {
    sub_21D8E062C(__dst, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v23 = swift_getEnumCaseMultiPayload();
    if (v23 == 2)
    {
      v38 = *v13;
      *__dst = *v13;
      v39 = v38;
      swift_storeEnumTagMultiPayload();
      goto LABEL_84;
    }

    if (v23 != 1)
    {
      if (v23)
      {
        memcpy(__dst, v13, *(v153 + 64));
        goto LABEL_84;
      }

      v148 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 > 4)
      {
        if (v24 <= 7)
        {
          if (v24 == 5 || v24 == 6)
          {
            goto LABEL_66;
          }

          goto LABEL_213;
        }

        if (v24 != 8 && v24 != 9)
        {
          goto LABEL_213;
        }
      }

      else
      {
        if (v24 > 2)
        {
LABEL_66:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))();
          swift_storeEnumTagMultiPayload();
          goto LABEL_231;
        }

        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_66;
          }

LABEL_213:
          memcpy(__dst, v13, *(*(v148 - 8) + 64));
          goto LABEL_231;
        }
      }

      v51 = *v13;
      *__dst = *v13;
      v52 = v51;
      swift_storeEnumTagMultiPayload();
      goto LABEL_231;
    }

    v143 = *v13;
    *__dst = *v13;
    v150 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v145 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v139 = *(v145 - 8);
    v140 = *(v139 + 48);
    v34 = v143;
    if (v140(v13 + v150, 1, v145))
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(__dst + v150, v13 + v150, *(*(v35 - 8) + 64));
      v19 = v162;
LABEL_231:
      swift_storeEnumTagMultiPayload();
      goto LABEL_84;
    }

    v43 = swift_getEnumCaseMultiPayload();
    v19 = v162;
    if (v43 > 4)
    {
      v44 = v139;
      if (v43 <= 7)
      {
        if (v43 == 5 || v43 == 6)
        {
          goto LABEL_215;
        }

        goto LABEL_229;
      }

      if (v43 != 8 && v43 != 9)
      {
        goto LABEL_229;
      }
    }

    else
    {
      v44 = v139;
      if (v43 > 2)
      {
LABEL_215:
        v130 = sub_21DBF563C();
        v131 = v13 + v150;
        v132 = __dst;
        (*(*(v130 - 8) + 16))(__dst + v150, v131, v130);
        swift_storeEnumTagMultiPayload();
LABEL_230:
        (*(v139 + 56))(v132 + v150, 0, 1, v145);
        goto LABEL_231;
      }

      if (v43 != 1)
      {
        if (v43 == 2)
        {
          goto LABEL_215;
        }

LABEL_229:
        v138 = v13 + v150;
        v132 = __dst;
        memcpy(__dst + v150, v138, *(v44 + 64));
        goto LABEL_230;
      }
    }

    v133 = *(v13 + v150);
    v132 = __dst;
    *(__dst + v150) = v133;
    v134 = v133;
    swift_storeEnumTagMultiPayload();
    goto LABEL_230;
  }

LABEL_84:
  v54 = v20[8];
  v55 = &v9[v54];
  v56 = &v10[v54];
  v57 = v15(&v9[v54], 1, v19);
  v58 = v19;
  v59 = v57;
  v60 = v15(v56, 1, v58);
  if (v59)
  {
    if (!v60)
    {
      v61 = v162;
      v62 = swift_getEnumCaseMultiPayload();
      if (v62 == 2)
      {
        v76 = *v56;
        *v55 = *v56;
        v77 = v76;
        swift_storeEnumTagMultiPayload();
        goto LABEL_167;
      }

      if (v62 != 1)
      {
        if (!v62)
        {
          v63 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v64 = swift_getEnumCaseMultiPayload();
          if (v64 > 4)
          {
            if (v64 <= 7)
            {
              if (v64 == 5 || v64 == 6)
              {
                goto LABEL_124;
              }

              goto LABEL_144;
            }

            if (v64 != 8 && v64 != 9)
            {
              goto LABEL_144;
            }
          }

          else
          {
            if (v64 > 2)
            {
LABEL_124:
              v87 = sub_21DBF563C();
              (*(*(v87 - 8) + 16))(v55, v56, v87);
              swift_storeEnumTagMultiPayload();
LABEL_145:
              swift_storeEnumTagMultiPayload();
              goto LABEL_167;
            }

            if (v64 != 1)
            {
              if (v64 == 2)
              {
                goto LABEL_124;
              }

LABEL_144:
              memcpy(v55, v56, *(*(v63 - 8) + 64));
              goto LABEL_145;
            }
          }

          v88 = *v56;
          *v55 = *v56;
          v89 = v88;
          swift_storeEnumTagMultiPayload();
          goto LABEL_145;
        }

        memcpy(v55, v56, *(v153 + 64));
LABEL_167:
        (*(v153 + 56))(v55, 0, 1, v61);
        goto LABEL_168;
      }

      v151 = v6;
      v69 = *v56;
      *v55 = *v56;
      v70 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      __dsta = v55;
      v71 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v72 = *(v71 - 8);
      v73 = *(v72 + 48);
      v74 = v69;
      if (v73(v56 + v70, 1, v71))
      {
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        v55 = __dsta;
        memcpy(__dsta + v70, v56 + v70, *(*(v75 - 8) + 64));
        v61 = v162;
        v20 = v159;
LABEL_166:
        swift_storeEnumTagMultiPayload();
        v6 = v151;
        goto LABEL_167;
      }

      v83 = v70;
      v84 = swift_getEnumCaseMultiPayload();
      v61 = v162;
      v20 = v159;
      v146 = v71;
      if (v84 > 4)
      {
        v55 = __dsta;
        if (v84 <= 7)
        {
          if (v84 == 5 || v84 == 6)
          {
            goto LABEL_146;
          }

          goto LABEL_164;
        }

        if (v84 != 8 && v84 != 9)
        {
          goto LABEL_164;
        }
      }

      else
      {
        v55 = __dsta;
        if (v84 > 2)
        {
LABEL_146:
          v92 = sub_21DBF563C();
          (*(*(v92 - 8) + 16))(__dsta + v83, v56 + v83, v92);
          v93 = v146;
          swift_storeEnumTagMultiPayload();
LABEL_165:
          (*(v72 + 56))(v55 + v83, 0, 1, v93);
          goto LABEL_166;
        }

        if (v84 != 1)
        {
          if (v84 == 2)
          {
            goto LABEL_146;
          }

LABEL_164:
          memcpy(v55 + v83, v56 + v83, *(v72 + 64));
          v93 = v146;
          goto LABEL_165;
        }
      }

      v94 = *(v56 + v83);
      *(__dsta + v83) = v94;
      v95 = v94;
      v93 = v146;
      swift_storeEnumTagMultiPayload();
      goto LABEL_165;
    }

    goto LABEL_96;
  }

  if (v60)
  {
    sub_21D8E062C(v55, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_96:
    v65 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
LABEL_97:
    memcpy(v55, v56, v65);
    goto LABEL_168;
  }

  if (a1 == v160)
  {
    goto LABEL_168;
  }

  sub_21D8E062C(v55, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v66 = swift_getEnumCaseMultiPayload();
  if (v66 == 2)
  {
    v85 = *v56;
    *v55 = *v56;
    v86 = v85;
    swift_storeEnumTagMultiPayload();
    goto LABEL_168;
  }

  if (v66 != 1)
  {
    if (v66)
    {
      v65 = *(v153 + 64);
      goto LABEL_97;
    }

    v67 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v68 = swift_getEnumCaseMultiPayload();
    if (v68 > 4)
    {
      if (v68 <= 7)
      {
        if (v68 == 5 || v68 == 6)
        {
          goto LABEL_150;
        }

        goto LABEL_214;
      }

      if (v68 != 8 && v68 != 9)
      {
        goto LABEL_214;
      }
    }

    else
    {
      if (v68 > 2)
      {
LABEL_150:
        v96 = sub_21DBF563C();
        (*(*(v96 - 8) + 16))(v55, v56, v96);
        swift_storeEnumTagMultiPayload();
        goto LABEL_234;
      }

      if (v68 != 1)
      {
        if (v68 == 2)
        {
          goto LABEL_150;
        }

LABEL_214:
        memcpy(v55, v56, *(*(v67 - 8) + 64));
        goto LABEL_234;
      }
    }

    v97 = *v56;
    *v55 = *v56;
    v98 = v97;
    swift_storeEnumTagMultiPayload();
    goto LABEL_234;
  }

  v78 = *v56;
  *v55 = *v56;
  __dstb = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v79 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v152 = *(v79 - 8);
  v80 = *(v152 + 48);
  v81 = v78;
  if (!v80(&__dstb[v56], 1, v79))
  {
    v90 = swift_getEnumCaseMultiPayload();
    v20 = v159;
    if (v90 > 4)
    {
      v91 = v152;
      if (v90 <= 7)
      {
        if (v90 == 5 || v90 == 6)
        {
          goto LABEL_219;
        }

        goto LABEL_232;
      }

      if (v90 != 8 && v90 != 9)
      {
        goto LABEL_232;
      }
    }

    else
    {
      v91 = v152;
      if (v90 > 2)
      {
LABEL_219:
        v135 = sub_21DBF563C();
        (*(*(v135 - 8) + 16))(&__dstb[v55], &__dstb[v56], v135);
        swift_storeEnumTagMultiPayload();
LABEL_233:
        (*(v152 + 56))(&__dstb[v55], 0, 1, v79);
        goto LABEL_234;
      }

      if (v90 != 1)
      {
        if (v90 == 2)
        {
          goto LABEL_219;
        }

LABEL_232:
        memcpy(&__dstb[v55], &__dstb[v56], *(v91 + 64));
        goto LABEL_233;
      }
    }

    v136 = *&__dstb[v56];
    *&__dstb[v55] = v136;
    v137 = v136;
    swift_storeEnumTagMultiPayload();
    goto LABEL_233;
  }

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  memcpy(&__dstb[v55], &__dstb[v56], *(*(v82 - 8) + 64));
  v20 = v159;
LABEL_234:
  swift_storeEnumTagMultiPayload();
LABEL_168:
  *&v9[v20[9]] = *&v10[v20[9]];
  sub_21DBF8E0C();

  v99 = v20[10];
  v100 = &v9[v99];
  v101 = &v10[v99];
  *v100 = *v101;
  *(v100 + 1) = *(v101 + 1);
  sub_21DBF8E0C();

  *&v9[v20[11]] = *&v10[v20[11]];
  sub_21DBF8E0C();

  v102 = *(v154 + 32);
  v103 = (v5 + v102);
  v104 = (v6 + v102);
  v105 = v104[1];
  *v103 = *v104;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v103[1] = v105;
  v106 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  *(v5 + *(v106 + 20)) = *(v6 + *(v106 + 20));

  if (a1 == v160)
  {
    goto LABEL_212;
  }

  v107 = *(v106 + 24);
  v108 = (v5 + v107);
  v109 = (v6 + v107);
  sub_21D8E062C(v5 + v107, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v110 = swift_getEnumCaseMultiPayload();
  switch(v110)
  {
    case 2:
      v120 = *v109;
      *v108 = *v109;
      v121 = v120;
      goto LABEL_211;
    case 1:
      v113 = *v109;
      *v108 = *v109;
      v114 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v115 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v116 = *(v115 - 8);
      v117 = *(v116 + 48);
      v118 = v113;
      if (v117(v109 + v114, 1, v115))
      {
        v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v108 + v114, v109 + v114, *(*(v119 - 8) + 64));
LABEL_211:
        swift_storeEnumTagMultiPayload();
        goto LABEL_212;
      }

      v122 = swift_getEnumCaseMultiPayload();
      if (v122 > 4)
      {
        if (v122 <= 7)
        {
          if (v122 == 5 || v122 == 6)
          {
            goto LABEL_202;
          }

          goto LABEL_209;
        }

        if (v122 != 8 && v122 != 9)
        {
          goto LABEL_209;
        }
      }

      else
      {
        if (v122 > 2)
        {
LABEL_202:
          v126 = sub_21DBF563C();
          (*(*(v126 - 8) + 16))(v108 + v114, v109 + v114, v126);
          swift_storeEnumTagMultiPayload();
LABEL_210:
          (*(v116 + 56))(v108 + v114, 0, 1, v115);
          goto LABEL_211;
        }

        if (v122 != 1)
        {
          if (v122 == 2)
          {
            goto LABEL_202;
          }

LABEL_209:
          memcpy(v108 + v114, v109 + v114, *(v116 + 64));
          goto LABEL_210;
        }
      }

      v127 = *(v109 + v114);
      *(v108 + v114) = v127;
      v128 = v127;
      swift_storeEnumTagMultiPayload();
      goto LABEL_210;
    case 0:
      v111 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v112 = swift_getEnumCaseMultiPayload();
      if (v112 > 4)
      {
        if (v112 <= 7)
        {
          if (v112 == 5 || v112 == 6)
          {
            goto LABEL_190;
          }

          goto LABEL_201;
        }

        if (v112 != 8 && v112 != 9)
        {
          goto LABEL_201;
        }
      }

      else
      {
        if (v112 > 2)
        {
LABEL_190:
          v123 = sub_21DBF563C();
          (*(*(v123 - 8) + 16))(v108, v109, v123);
          swift_storeEnumTagMultiPayload();
          goto LABEL_211;
        }

        if (v112 != 1)
        {
          if (v112 == 2)
          {
            goto LABEL_190;
          }

LABEL_201:
          memcpy(v108, v109, *(*(v111 - 8) + 64));
          goto LABEL_211;
        }
      }

      v124 = *v109;
      *v108 = *v109;
      v125 = v124;
      swift_storeEnumTagMultiPayload();
      goto LABEL_211;
  }

  memcpy(v108, v109, *(v153 + 64));
LABEL_212:
  *&a1[*(a3 + 24)] = *&v160[*(a3 + 24)];
  sub_21DBF8E0C();

  return a1;
}

_BYTE *initializeWithTake for TTRRemindersBoardPresentationTreeUpdatesForColumn(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = &a1[v3];
  v5 = &a2[v3];
  *(v4 + 4) = *&a2[v3 + 32];
  v6 = *&a2[v3 + 16];
  *v4 = *&a2[v3];
  *(v4 + 1) = v6;
  *(v4 + 40) = *&a2[v3 + 40];
  *(v4 + 7) = *&a2[v3 + 56];
  v70 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v7 = *(v70 + 28);
  v8 = &v4[v7];
  v9 = &v5[v7];
  *v8 = v5[v7];
  *(v8 + 1) = *&v5[v7 + 1];
  v10 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v11 = v10[7];
  v12 = &v8[v11];
  v13 = &v9[v11];
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v74 = *(v14 - 8);
  v15 = *(v74 + 48);
  if (v15(v13, 1, v14))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
    memcpy(v12, v13, *(*(v16 - 8) + 64));
    goto LABEL_31;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v63 = v15;
    v68 = v14;
    *v12 = *v13;
    v20 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v65 = v12;
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v13 + v20, 1, v21))
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      v12 = v65;
      memcpy(v65 + v20, v13 + v20, *(*(v23 - 8) + 64));
      v14 = v68;
      v15 = v63;
      goto LABEL_29;
    }

    v62 = v20;
    v61 = v21;
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 <= 3)
    {
      v14 = v68;
      v15 = v63;
      if (v24 == 2 || v24 == 3)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v14 = v68;
      v15 = v63;
      if (v24 == 4 || v24 == 5 || v24 == 6)
      {
LABEL_27:
        v25 = sub_21DBF563C();
        (*(*(v25 - 8) + 32))(v65 + v62, v13 + v62, v25);
        swift_storeEnumTagMultiPayload();
        v26 = v61;
LABEL_28:
        (*(v22 + 56))(v65 + v62, 0, 1, v26);
        v12 = v65;
        goto LABEL_29;
      }
    }

    memcpy(v65 + v62, v13 + v62, *(v22 + 64));
    v26 = v61;
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    v67 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 <= 3)
    {
      if (v18 == 2 || v18 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v18 == 4 || v18 == 5 || v18 == 6)
    {
LABEL_9:
      v19 = sub_21DBF563C();
      (*(*(v19 - 8) + 32))(v12, v13, v19);
      swift_storeEnumTagMultiPayload();
LABEL_29:
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    }

    memcpy(v12, v13, *(*(v67 - 8) + 64));
    goto LABEL_29;
  }

  memcpy(v12, v13, *(v74 + 64));
LABEL_30:
  (*(v74 + 56))(v12, 0, 1, v14);
LABEL_31:
  v27 = v10[8];
  v28 = &v8[v27];
  v29 = &v9[v27];
  if (v15(&v9[v27], 1, v14))
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
    memcpy(v28, v29, *(*(v30 - 8) + 64));
    goto LABEL_66;
  }

  v31 = swift_getEnumCaseMultiPayload();
  if (v31 == 1)
  {
    v69 = v14;
    *v28 = *v29;
    v35 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v29 + v35, 1, v36))
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v28 + v35, v29 + v35, *(*(v38 - 8) + 64));
      v14 = v69;
      goto LABEL_64;
    }

    v64 = v35;
    v66 = v36;
    v39 = swift_getEnumCaseMultiPayload();
    if (v39 <= 3)
    {
      v14 = v69;
      if (v39 != 2)
      {
        v40 = v64;
        if (v39 == 3)
        {
LABEL_50:
          v41 = sub_21DBF563C();
          (*(*(v41 - 8) + 32))(v28 + v40, v29 + v40, v41);
          v42 = v66;
          swift_storeEnumTagMultiPayload();
LABEL_63:
          (*(v37 + 56))(v28 + v40, 0, 1, v42);
          goto LABEL_64;
        }

LABEL_62:
        memcpy(v28 + v40, v29 + v40, *(v37 + 64));
        v42 = v66;
        goto LABEL_63;
      }
    }

    else
    {
      v14 = v69;
      if (v39 != 4)
      {
        v40 = v64;
        if (v39 == 5 || v39 == 6)
        {
          goto LABEL_50;
        }

        goto LABEL_62;
      }
    }

    v43 = sub_21DBF563C();
    v40 = v64;
    (*(*(v43 - 8) + 32))(v28 + v64, v29 + v64, v43);
    v42 = v66;
    swift_storeEnumTagMultiPayload();
    goto LABEL_63;
  }

  if (!v31)
  {
    v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v33 = swift_getEnumCaseMultiPayload();
    if (v33 <= 3)
    {
      if (v33 == 2 || v33 == 3)
      {
        goto LABEL_39;
      }
    }

    else if (v33 == 4 || v33 == 5 || v33 == 6)
    {
LABEL_39:
      v34 = sub_21DBF563C();
      (*(*(v34 - 8) + 32))(v28, v29, v34);
      swift_storeEnumTagMultiPayload();
LABEL_64:
      swift_storeEnumTagMultiPayload();
      goto LABEL_65;
    }

    memcpy(v28, v29, *(*(v32 - 8) + 64));
    goto LABEL_64;
  }

  memcpy(v28, v29, *(v74 + 64));
LABEL_65:
  (*(v74 + 56))(v28, 0, 1, v14);
LABEL_66:
  *&v8[v10[9]] = *&v9[v10[9]];
  *&v8[v10[10]] = *&v9[v10[10]];
  *&v8[v10[11]] = *&v9[v10[11]];
  *&v4[*(v70 + 32)] = *&v5[*(v70 + 32)];
  v44 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  *&v4[*(v44 + 20)] = *&v5[*(v44 + 20)];
  v45 = *(v44 + 24);
  v46 = &v4[v45];
  v47 = &v5[v45];
  v48 = swift_getEnumCaseMultiPayload();
  if (v48 == 1)
  {
    *v46 = *v47;
    v53 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(&v47[v53], 1, v54))
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&v46[v53], &v47[v53], *(*(v56 - 8) + 64));
LABEL_98:
      v60 = a3;
      swift_storeEnumTagMultiPayload();
      v51 = a2;
      result = a1;
      goto LABEL_99;
    }

    v58 = swift_getEnumCaseMultiPayload();
    if (v58 <= 3)
    {
      if (v58 == 2 || v58 == 3)
      {
        goto LABEL_83;
      }
    }

    else if (v58 == 4 || v58 == 5 || v58 == 6)
    {
LABEL_83:
      v59 = sub_21DBF563C();
      (*(*(v59 - 8) + 32))(&v46[v53], &v47[v53], v59);
      swift_storeEnumTagMultiPayload();
LABEL_97:
      (*(v55 + 56))(&v46[v53], 0, 1, v54);
      goto LABEL_98;
    }

    memcpy(&v46[v53], &v47[v53], *(v55 + 64));
    goto LABEL_97;
  }

  if (!v48)
  {
    v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v50 = swift_getEnumCaseMultiPayload();
    v51 = a2;
    if (v50 <= 3)
    {
      if (v50 == 2 || v50 == 3)
      {
        goto LABEL_72;
      }
    }

    else if (v50 == 4 || v50 == 5 || v50 == 6)
    {
LABEL_72:
      v52 = sub_21DBF563C();
      (*(*(v52 - 8) + 32))(v46, v47, v52);
      swift_storeEnumTagMultiPayload();
LABEL_88:
      swift_storeEnumTagMultiPayload();
      result = a1;
      goto LABEL_89;
    }

    memcpy(v46, v47, *(*(v49 - 8) + 64));
    goto LABEL_88;
  }

  memcpy(v46, v47, *(v74 + 64));
  v51 = a2;
  result = a1;
LABEL_89:
  v60 = a3;
LABEL_99:
  *&result[*(v60 + 24)] = *&v51[*(v60 + 24)];
  return result;
}

_BYTE *assignWithTake for TTRRemindersBoardPresentationTreeUpdatesForColumn(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = &a1[v3];
  v5 = &a2[v3];
  __swift_destroy_boxed_opaque_existential_0(&a1[v3]);
  v6 = *(v5 + 1);
  *v4 = *v5;
  *(v4 + 1) = v6;
  v7 = *(v5 + 5);
  v8 = *(v5 + 6);
  *(v4 + 4) = *(v5 + 4);
  *(v4 + 5) = v7;
  swift_unknownObjectRelease();
  v9 = *(v5 + 7);
  *(v4 + 6) = v8;
  *(v4 + 7) = v9;

  v104 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v10 = *(v104 + 28);
  v11 = &v4[v10];
  v12 = &v5[v10];
  *v11 = v5[v10];
  v11[1] = v5[v10 + 1];
  v11[2] = v5[v10 + 2];
  v108 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v13 = v108[7];
  v14 = &v11[v13];
  v15 = &v12[v13];
  v16 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v103 = *(v16 - 8);
  v17 = *(v103 + 48);
  v18 = v17(v14, 1, v16);
  v19 = v17(v15, 1, v16);
  if (v18)
  {
    if (!v19)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(v14, v15, *(v103 + 64));
LABEL_61:
          (*(v103 + 56))(v14, 0, 1, v16);
          goto LABEL_62;
        }

        v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v22 = swift_getEnumCaseMultiPayload();
        if (v22 <= 3)
        {
          if (v22 == 2 || v22 == 3)
          {
            goto LABEL_9;
          }
        }

        else if (v22 == 4 || v22 == 5 || v22 == 6)
        {
LABEL_9:
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 32))(v14, v15, v23);
          swift_storeEnumTagMultiPayload();
LABEL_60:
          swift_storeEnumTagMultiPayload();
          goto LABEL_61;
        }

        memcpy(v14, v15, *(*(v21 - 8) + 64));
        goto LABEL_60;
      }

      v101 = v16;
      *v14 = *v15;
      v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v99 = v14;
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v15 + v29, 1, v30))
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        v14 = v99;
        memcpy(v99 + v29, v15 + v29, *(*(v32 - 8) + 64));
        v16 = v101;
        goto LABEL_60;
      }

      v96 = v31;
      v97 = v29;
      v95 = v30;
      v35 = swift_getEnumCaseMultiPayload();
      if (v35 <= 3)
      {
        v16 = v101;
        if (v35 != 2)
        {
          v36 = v97;
          if (v35 == 3)
          {
LABEL_34:
            v37 = sub_21DBF563C();
            v38 = v99;
            (*(*(v37 - 8) + 32))(v99 + v36, v15 + v36, v37);
            v39 = v95;
            swift_storeEnumTagMultiPayload();
LABEL_59:
            (*(v96 + 56))(&v38[v97], 0, 1, v39);
            v14 = v38;
            goto LABEL_60;
          }

LABEL_58:
          v38 = v99;
          memcpy(v99 + v36, v15 + v36, *(v96 + 64));
          v39 = v95;
          goto LABEL_59;
        }
      }

      else
      {
        v16 = v101;
        if (v35 != 4)
        {
          v36 = v97;
          if (v35 == 5 || v35 == 6)
          {
            goto LABEL_34;
          }

          goto LABEL_58;
        }
      }

      v44 = sub_21DBF563C();
      v38 = v99;
      (*(*(v44 - 8) + 32))(v99 + v97, v15 + v97, v44);
      v39 = v95;
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    sub_21D8E062C(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_12:
    v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
LABEL_13:
    memcpy(v14, v15, v24);
    goto LABEL_62;
  }

  if (a1 == a2)
  {
    goto LABEL_62;
  }

  sub_21D8E062C(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v25 = swift_getEnumCaseMultiPayload();
  if (v25 == 1)
  {
    *v14 = *v15;
    v102 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v100 = *(v33 - 8);
    if ((*(v100 + 48))(v15 + v102, 1, v33))
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v14 + v102, v15 + v102, *(*(v34 - 8) + 64));
      goto LABEL_172;
    }

    v98 = v33;
    v40 = swift_getEnumCaseMultiPayload();
    if (v40 <= 3)
    {
      if (v40 != 2)
      {
        v41 = v102;
        if (v40 == 3)
        {
LABEL_50:
          v42 = sub_21DBF563C();
          (*(*(v42 - 8) + 32))(v14 + v41, v15 + v41, v42);
          v43 = v98;
          swift_storeEnumTagMultiPayload();
LABEL_171:
          (*(v100 + 56))(v14 + v41, 0, 1, v43);
          goto LABEL_172;
        }

LABEL_170:
        memcpy(v14 + v41, v15 + v41, *(v100 + 64));
        v43 = v98;
        goto LABEL_171;
      }
    }

    else if (v40 != 4)
    {
      v41 = v102;
      if (v40 == 5 || v40 == 6)
      {
        goto LABEL_50;
      }

      goto LABEL_170;
    }

    v94 = sub_21DBF563C();
    v41 = v102;
    (*(*(v94 - 8) + 32))(v14 + v102, v15 + v102, v94);
    v43 = v98;
    swift_storeEnumTagMultiPayload();
    goto LABEL_171;
  }

  if (v25)
  {
    v24 = *(v103 + 64);
    goto LABEL_13;
  }

  v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 <= 3)
  {
    if (v27 == 2 || v27 == 3)
    {
      goto LABEL_21;
    }

LABEL_57:
    memcpy(v14, v15, *(*(v26 - 8) + 64));
    goto LABEL_172;
  }

  if (v27 != 4 && v27 != 5 && v27 != 6)
  {
    goto LABEL_57;
  }

LABEL_21:
  v28 = sub_21DBF563C();
  (*(*(v28 - 8) + 32))(v14, v15, v28);
  swift_storeEnumTagMultiPayload();
LABEL_172:
  swift_storeEnumTagMultiPayload();
LABEL_62:
  v45 = v108[8];
  v46 = &v11[v45];
  v47 = &v12[v45];
  v48 = v17(&v11[v45], 1, v16);
  v49 = v17(v47, 1, v16);
  if (v48)
  {
    v50 = a1;
    if (!v49)
    {
      v51 = swift_getEnumCaseMultiPayload();
      if (v51 != 1)
      {
        if (v51)
        {
          memcpy(v46, v47, *(v103 + 64));
LABEL_124:
          (*(v103 + 56))(v46, 0, 1, v16);
          goto LABEL_125;
        }

        v52 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v53 = swift_getEnumCaseMultiPayload();
        if (v53 <= 3)
        {
          if (v53 == 2 || v53 == 3)
          {
            goto LABEL_70;
          }
        }

        else if (v53 == 4 || v53 == 5 || v53 == 6)
        {
LABEL_70:
          v54 = sub_21DBF563C();
          (*(*(v54 - 8) + 32))(v46, v47, v54);
          swift_storeEnumTagMultiPayload();
LABEL_123:
          swift_storeEnumTagMultiPayload();
          goto LABEL_124;
        }

        memcpy(v46, v47, *(*(v52 - 8) + 64));
        goto LABEL_123;
      }

      *v46 = *v47;
      v60 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v61 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v62 = *(v61 - 8);
      if ((*(v62 + 48))(v47 + v60, 1, v61))
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v46 + v60, v47 + v60, *(*(v63 - 8) + 64));
LABEL_122:
        v50 = a1;
        goto LABEL_123;
      }

      v68 = swift_getEnumCaseMultiPayload();
      if (v68 <= 3)
      {
        if (v68 == 2 || v68 == 3)
        {
          goto LABEL_95;
        }
      }

      else if (v68 == 4 || v68 == 5 || v68 == 6)
      {
LABEL_95:
        v69 = sub_21DBF563C();
        (*(*(v69 - 8) + 32))(v46 + v60, v47 + v60, v69);
        swift_storeEnumTagMultiPayload();
LABEL_121:
        (*(v62 + 56))(v46 + v60, 0, 1, v61);
        goto LABEL_122;
      }

      memcpy(v46 + v60, v47 + v60, *(v62 + 64));
      goto LABEL_121;
    }

    goto LABEL_73;
  }

  v50 = a1;
  if (v49)
  {
    sub_21D8E062C(v46, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_73:
    v55 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
LABEL_74:
    memcpy(v46, v47, v55);
    goto LABEL_125;
  }

  if (a1 == a2)
  {
    goto LABEL_125;
  }

  sub_21D8E062C(v46, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v56 = swift_getEnumCaseMultiPayload();
  if (v56 != 1)
  {
    if (v56)
    {
      v55 = *(v103 + 64);
      goto LABEL_74;
    }

    v57 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v58 = swift_getEnumCaseMultiPayload();
    if (v58 <= 3)
    {
      if (v58 == 2 || v58 == 3)
      {
        goto LABEL_82;
      }
    }

    else if (v58 == 4 || v58 == 5 || v58 == 6)
    {
LABEL_82:
      v59 = sub_21DBF563C();
      (*(*(v59 - 8) + 32))(v46, v47, v59);
      swift_storeEnumTagMultiPayload();
LABEL_119:
      swift_storeEnumTagMultiPayload();
      goto LABEL_125;
    }

    memcpy(v46, v47, *(*(v57 - 8) + 64));
    goto LABEL_119;
  }

  *v46 = *v47;
  v64 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v65 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v66 = *(v65 - 8);
  if (!(*(v66 + 48))(v47 + v64, 1, v65))
  {
    v70 = swift_getEnumCaseMultiPayload();
    if (v70 <= 3)
    {
      if (v70 == 2 || v70 == 3)
      {
        goto LABEL_111;
      }
    }

    else if (v70 == 4 || v70 == 5 || v70 == 6)
    {
LABEL_111:
      v71 = sub_21DBF563C();
      (*(*(v71 - 8) + 32))(v46 + v64, v47 + v64, v71);
      swift_storeEnumTagMultiPayload();
LABEL_174:
      (*(v66 + 56))(v46 + v64, 0, 1, v65);
      goto LABEL_175;
    }

    memcpy(v46 + v64, v47 + v64, *(v66 + 64));
    goto LABEL_174;
  }

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  memcpy(v46 + v64, v47 + v64, *(*(v67 - 8) + 64));
LABEL_175:
  v50 = a1;
  swift_storeEnumTagMultiPayload();
LABEL_125:
  *&v11[v108[9]] = *&v12[v108[9]];

  v72 = v108[10];
  v73 = &v11[v72];
  v74 = &v12[v72];
  *v73 = *v74;
  *(v73 + 1) = *(v74 + 1);

  *&v11[v108[11]] = *&v12[v108[11]];

  v75 = *(v104 + 32);
  v76 = &v4[v75];
  v77 = &v5[v75];
  v78 = v77[1];
  *v76 = *v77;
  swift_unknownObjectRelease();
  v76[1] = v78;
  v79 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  *&v4[*(v79 + 20)] = *&v5[*(v79 + 20)];

  if (v50 == a2)
  {
    goto LABEL_157;
  }

  v80 = *(v79 + 24);
  v81 = &v4[v80];
  v82 = &v5[v80];
  sub_21D8E062C(v81, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v83 = swift_getEnumCaseMultiPayload();
  if (v83 == 1)
  {
    *v81 = *v82;
    v87 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v88 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v89 = *(v88 - 8);
    if ((*(v89 + 48))(&v82[v87], 1, v88))
    {
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&v81[v87], &v82[v87], *(*(v90 - 8) + 64));
      goto LABEL_156;
    }

    v91 = swift_getEnumCaseMultiPayload();
    if (v91 <= 3)
    {
      if (v91 == 2 || v91 == 3)
      {
        goto LABEL_143;
      }
    }

    else if (v91 == 4 || v91 == 5 || v91 == 6)
    {
LABEL_143:
      v92 = sub_21DBF563C();
      (*(*(v92 - 8) + 32))(&v81[v87], &v82[v87], v92);
      swift_storeEnumTagMultiPayload();
LABEL_155:
      (*(v89 + 56))(&v81[v87], 0, 1, v88);
      goto LABEL_156;
    }

    memcpy(&v81[v87], &v82[v87], *(v89 + 64));
    goto LABEL_155;
  }

  if (!v83)
  {
    v84 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v85 = swift_getEnumCaseMultiPayload();
    if (v85 <= 3)
    {
      if (v85 == 2 || v85 == 3)
      {
        goto LABEL_132;
      }
    }

    else if (v85 == 4 || v85 == 5 || v85 == 6)
    {
LABEL_132:
      v86 = sub_21DBF563C();
      (*(*(v86 - 8) + 32))(v81, v82, v86);
      swift_storeEnumTagMultiPayload();
LABEL_156:
      swift_storeEnumTagMultiPayload();
      goto LABEL_157;
    }

    memcpy(v81, v82, *(*(v84 - 8) + 64));
    goto LABEL_156;
  }

  memcpy(v81, v82, *(v103 + 64));
LABEL_157:
  *&v50[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return v50;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }

  else
  {
    v13 = *(a1 + *(a3 + 24));
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = *(v10 + 56);
    v13 = a1 + *(a4 + 20);

    return v12(v13, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D8EB7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void TTRWrappingArrangement.ReferenceItem.init(frame:baselineOffsetFromTop:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
}

double TTRWrappingArrangement.__allocating_init(containerView:visibleArrangedSubviews:bounds:horizontalSpacing:verticalSpacing:maxRowCount:firstRowReferenceItem:viewsRequiringNewRows:customSpacingByView:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v26 = swift_allocObject();
  v27 = *(a5 + 32);
  v28 = *(a5 + 40);
  result = 0.0;
  *(v26 + 160) = 0u;
  *(v26 + 176) = 0u;
  *(v26 + 192) = 0u;
  *(v26 + 208) = 0u;
  *(v26 + 224) = MEMORY[0x277D84F90];
  *(v26 + 248) = 0u;
  *(v26 + 296) = 0;
  *(v26 + 304) = 1;
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  *(v26 + 32) = a8;
  *(v26 + 40) = a9;
  *(v26 + 48) = a10;
  *(v26 + 56) = a11;
  *(v26 + 64) = a12;
  *(v26 + 72) = a13;
  *(v26 + 80) = a3;
  *(v26 + 88) = a4 & 1;
  v30 = *(a5 + 16);
  *(v26 + 96) = *a5;
  *(v26 + 112) = v30;
  *(v26 + 128) = v27;
  *(v26 + 136) = v28;
  *(v26 + 144) = a6;
  *(v26 + 152) = a7;
  *(v26 + 232) = 0u;
  *(v26 + 264) = 0u;
  *(v26 + 280) = 0u;
  return result;
}

void __swiftcall TTRWrappingArrangement.computeLayout()(RemindersUICore::TTRWrappingArrangement::Layout *__return_ptr retstr)
{
  v33 = retstr;
  sub_21D8EC56C();
  Width = CGRectGetWidth(*(v1 + 32));
  v41 = MEMORY[0x277D84F90];
  v3 = *(v1 + 64);
  v4 = 0.0;
  if ((*(v1 + 304) & 1) == 0)
  {
    v4 = v3 + CGRectGetMaxX(*(v1 + 264));
  }

  v39 = v4;
  v40 = 0;
  v5 = *(v1 + 24);
  if (v5 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    swift_beginAccess();
    swift_beginAccess();
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D44740](v8, v5);
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v11 = *(v5 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [*(v1 + 16) contentLayoutSizeFittingSize:v11 forArrangedSubview:{0.0, 0.0}];
      v15 = v14;
      v17 = v16;
      v42.origin.y = 0.0;
      v42.origin.x = v4;
      v42.size.width = v15;
      v42.size.height = v17;
      if (Width < CGRectGetMaxX(v42) || (v18 = *(v1 + 144)) != 0 && [v18 containsObject_])
      {
        if (*(v9 + 2) || *(v1 + 305) == 1)
        {
          sub_21D8EC6D4(v9);
          v41 = v7;

          v19 = 0.0;
          if ((*(v1 + 304) & 1) == 0)
          {
            v19 = v3 + CGRectGetMaxX(*(v1 + 264));
          }

          v39 = v19;
          v40 = 0;
          v9 = v7;
        }

        if (Width < v15)
        {
          v15 = Width;
        }

        v4 = 0.0;
      }

      [v12 effectiveFirstBaselineOffsetFromTop];
      v21 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21D2141DC(0, *(v9 + 2) + 1, 1, v9);
      }

      v23 = *(v9 + 2);
      v22 = *(v9 + 3);
      if (v23 >= v22 >> 1)
      {
        v9 = sub_21D2141DC((v22 > 1), v23 + 1, 1, v9);
      }

      *(v9 + 2) = v23 + 1;
      v24 = &v9[40 * v23];
      *(v24 + 4) = v4;
      *(v24 + 5) = 0;
      *(v24 + 6) = v15;
      *(v24 + 7) = v17;
      *(v24 + 8) = v21;
      v41 = v9;
      v43.origin.y = 0.0;
      v43.origin.x = v4;
      v43.size.width = v15;
      v43.size.height = v17;
      MaxX = CGRectGetMaxX(v43);
      sub_21D8EC968(v8, v5);
      v4 = MaxX + v26;
      v39 = v4;
      if (Width > v4)
      {

        v10 = i;
      }

      else
      {
        sub_21D8EC6D4(v9);
        v41 = v7;

        v10 = i;
        if (*(v1 + 304))
        {

          v4 = 0.0;
        }

        else
        {
          v27 = CGRectGetMaxX(*(v1 + 264));

          v4 = v3 + v27;
        }

        v39 = v4;
        v40 = 0;
        v9 = v7;
      }

      ++v8;
      if (v13 == v10)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_35:
  if (*(v9 + 2))
  {
    sub_21D8EC604(v1, &v41, &v39);
  }

  v28 = *(v1 + 192);
  v30 = *(v1 + 224);
  v36 = *(v1 + 208);
  v29 = v36;
  v37 = v30;
  v38 = *(v1 + 240);
  v32 = *(v1 + 176);
  v35[0] = *(v1 + 160);
  v31 = v35[0];
  v35[1] = v32;
  v35[2] = v28;
  v33->visibleSubviewCount = v38;
  v33->rawUsedRect.origin = v28;
  v33->rawUsedRect.size = v29;
  *&v33->frames._rawValue = v30;
  v33->usedRect.origin = v31;
  v33->usedRect.size = v32;
  sub_21D8ECC3C(v35, v34);
}

void TTRWrappingArrangement.CustomSpacing.leading.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
}

void TTRWrappingArrangement.CustomSpacing.trailing.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
}

uint64_t TTRWrappingArrangement.CustomSpacing.isEmpty.getter()
{
  swift_beginAccess();
  if (*(v0 + 24) != 1)
  {
    return 0;
  }

  swift_beginAccess();
  return *(v0 + 40);
}

uint64_t TTRWrappingArrangement.CustomSpacing.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t TTRWrappingArrangement.CustomSpacing.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  return result;
}

uint64_t TTRWrappingArrangement.CustomSpacing.__allocating_init(leading:trailing:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 1;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;
  swift_beginAccess();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  swift_beginAccess();
  *(v8 + 32) = a3;
  *(v8 + 40) = a4 & 1;
  return v8;
}

uint64_t TTRWrappingArrangement.CustomSpacing.init(leading:trailing:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
  swift_beginAccess();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;
  swift_beginAccess();
  *(v4 + 32) = a3;
  *(v4 + 40) = a4 & 1;
  return v4;
}

uint64_t TTRWrappingArrangement.CustomSpacing.__allocating_init(customSpacing:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  LOBYTE(v3) = *(a1 + 40);

  swift_beginAccess();
  *(v2 + 32) = v5;
  *(v2 + 40) = v3;
  return v2;
}

uint64_t TTRWrappingArrangement.CustomSpacing.init(customSpacing:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  LOBYTE(v3) = *(a1 + 40);

  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v3;
  return v1;
}

void TTRWrappingArrangement.ReferenceItem.frame.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void TTRWrappingArrangement.Layout.usedRect.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void TTRWrappingArrangement.Layout.rawUsedRect.setter(double a1, double a2, double a3, double a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

__n128 TTRWrappingArrangement.firstRowReferenceItem.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  result = *(v1 + 96);
  v5 = *(v1 + 112);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

void *TTRWrappingArrangement.viewsRequiringNewRows.getter()
{
  v1 = *(v0 + 144);
  v2 = v1;
  return v1;
}

void *TTRWrappingArrangement.customSpacingByView.getter()
{
  v1 = *(v0 + 152);
  v2 = v1;
  return v1;
}

uint64_t TTRWrappingArrangement.init(containerView:visibleArrangedSubviews:bounds:horizontalSpacing:verticalSpacing:maxRowCount:firstRowReferenceItem:viewsRequiringNewRows:customSpacingByView:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v14 = *(a5 + 32);
  v15 = *(a5 + 40);
  *(v13 + 160) = 0u;
  *(v13 + 176) = 0u;
  *(v13 + 192) = 0u;
  *(v13 + 208) = 0u;
  *(v13 + 224) = MEMORY[0x277D84F90];
  *(v13 + 248) = 0u;
  *(v13 + 296) = 0;
  *(v13 + 304) = 1;
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a8;
  *(v13 + 40) = a9;
  *(v13 + 48) = a10;
  *(v13 + 56) = a11;
  *(v13 + 64) = a12;
  *(v13 + 72) = a13;
  *(v13 + 80) = a3;
  *(v13 + 88) = a4 & 1;
  v16 = *(a5 + 16);
  *(v13 + 96) = *a5;
  *(v13 + 112) = v16;
  *(v13 + 128) = v14;
  *(v13 + 136) = v15;
  *(v13 + 144) = a6;
  *(v13 + 152) = a7;
  *(v13 + 232) = 0u;
  *(v13 + 264) = 0u;
  *(v13 + 280) = 0u;
  return v13;
}

__n128 sub_21D8EC56C()
{
  v1 = *(v0 + 208);
  v8[2] = *(v0 + 192);
  v8[3] = v1;
  v8[4] = *(v0 + 224);
  v9 = *(v0 + 240);
  v2 = *(v0 + 176);
  v8[0] = *(v0 + 160);
  v8[1] = v2;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  v3 = MEMORY[0x277D84F90];
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 224) = v3;
  sub_21D6BA6FC(v8);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  *(v0 + 248) = *(v0 + 32);
  result = *(v0 + 96);
  v7 = *(v0 + 112);
  *(v0 + 264) = result;
  *(v0 + 280) = v7;
  *(v0 + 296) = v4;
  *(v0 + 304) = v5;
  *(v0 + 305) = v5 ^ 1;
  return result;
}

void sub_21D8EC604(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = sub_21DBF8E0C();
  sub_21D8EC6D4(v6);

  swift_beginAccess();
  *a2 = MEMORY[0x277D84F90];

  v7 = 0.0;
  if ((*(a1 + 304) & 1) == 0)
  {
    v8 = *(a1 + 64);
    v7 = v8 + CGRectGetMaxX(*(a1 + 264));
  }

  swift_beginAccess();
  *a3 = v7;
  *(a3 + 8) = 0;
}

void sub_21D8EC6D4(uint64_t a1)
{
  if ((*(v1 + 304) & 1) == 0)
  {
    width = *(v1 + 280);
    height = *(v1 + 288);
    x = *(v1 + 264);
    y = *(v1 + 272);
    if (!CGRectIsEmpty(*(v1 + 192)))
    {
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      v34 = CGRectUnion(*(v1 + 192), v37);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
    }

    *(v1 + 192) = x;
    *(v1 + 200) = y;
    *(v1 + 208) = width;
    *(v1 + 216) = height;
    if ((*(v1 + 88) & 1) != 0 || *(v1 + 232) < *(v1 + 80))
    {
      *(v1 + 160) = x;
      *(v1 + 168) = y;
      *(v1 + 176) = width;
      *(v1 + 184) = height;
    }
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    if (*(v1 + 304))
    {
      v8 = (a1 + 64);
      v9 = 0.0;
      v10 = *(a1 + 16);
      do
      {
        v11 = *v8;
        v8 += 5;
        v12 = v11;
        if (v9 <= v11)
        {
          v9 = v12;
        }

        --v10;
      }

      while (v10);
    }

    else
    {
      v13 = *(v1 + 296);
      v9 = v13 + CGRectGetMinY(*(v1 + 264));
    }

    v14 = *(v1 + 80);
    v15 = *(v1 + 88);
    v16 = (a1 + 64);
    do
    {
      v35 = CGRectOffset(*(v16 - 4), *(v1 + 248), v9 - *v16 + *(v1 + 256));
      v17 = v35.origin.x;
      v18 = v35.origin.y;
      v19 = v35.size.width;
      v20 = v35.size.height;
      v21 = *(v1 + 224);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 224) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_21D2140D8(0, *(v21 + 2) + 1, 1, v21);
        *(v1 + 224) = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_21D2140D8((v23 > 1), v24 + 1, 1, v21);
      }

      *(v21 + 2) = v24 + 1;
      v25 = &v21[32 * v24];
      v25[4] = v17;
      v25[5] = v18;
      v25[6] = v19;
      v25[7] = v20;
      *(v1 + 224) = v21;
      if (!CGRectIsEmpty(*(v1 + 192)))
      {
        v38.origin.x = v17;
        v38.origin.y = v18;
        v38.size.width = v19;
        v38.size.height = v20;
        v36 = CGRectUnion(*(v1 + 192), v38);
        v17 = v36.origin.x;
        v18 = v36.origin.y;
        v19 = v36.size.width;
        v20 = v36.size.height;
      }

      *(v1 + 192) = v17;
      *(v1 + 200) = v18;
      *(v1 + 208) = v19;
      *(v1 + 216) = v20;
      if ((v15 & 1) != 0 || *(v1 + 232) < v14)
      {
        *(v1 + 160) = v17;
        *(v1 + 168) = v18;
        *(v1 + 176) = v19;
        *(v1 + 184) = v20;
        v26 = *(v1 + 240);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }

        *(v1 + 240) = v28;
      }

      v16 += 5;
      --v7;
    }

    while (v7);
  }

  v29 = *(v1 + 232);
  v27 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v27)
  {
    goto LABEL_30;
  }

  *(v1 + 232) = v30;
  v31 = *(v1 + 32);
  MaxY = CGRectGetMaxY(*(v1 + 192));
  v33 = *(v1 + 72);
  *(v1 + 248) = v31;
  *(v1 + 256) = MaxY + v33;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0;
  *(v1 + 304) = 1;
}

unint64_t sub_21D8EC968(unint64_t a1, unint64_t a2)
{
  v6 = a1;
  v7 = *(v3 + 152);
  if (v7)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_29;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      for (i = *(a2 + 8 * a1 + 32); ; i = MEMORY[0x223D44740](v6, a2))
      {
        v9 = i;
        v2 = [v7 objectForKey_];

        v4 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

LABEL_7:
        if (!(a2 >> 62))
        {
          result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
          v6 = 0;
          if (!v7 || v4 >= result)
          {
            goto LABEL_15;
          }

          if ((a2 & 0xC000000000000001) != 0)
          {
            goto LABEL_32;
          }

          if (v4 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v11 = *(a2 + 8 * v4 + 32);
            goto LABEL_14;
          }

          __break(1u);
          return result;
        }

        result = sub_21DBFBD7C();
        if ((result & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }

        __break(1u);
LABEL_29:
        ;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_32:
    v11 = MEMORY[0x223D44740](v4, a2);
LABEL_14:
    v12 = v11;
    v6 = [v7 objectForKey_];

LABEL_15:
    if (v2)
    {
      swift_beginAccess();
      if (v2[40] != 1)
      {
LABEL_25:
        swift_beginAccess();

        if (!v6)
        {
          return result;
        }

        goto LABEL_26;
      }
    }

    if (v6)
    {
      swift_beginAccess();
      if (v6[24] != 1)
      {
        goto LABEL_24;
      }
    }
  }

  v2 = 0;
  v4 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    goto LABEL_7;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  if (v2)
  {
    goto LABEL_25;
  }

LABEL_26:
  swift_beginAccess();
}

id *TTRWrappingArrangement.deinit()
{

  return v0;
}

uint64_t TTRWrappingArrangement.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D8ECC3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  sub_21DBF8E0C();
  return a2;
}

uint64_t _s15RemindersUICore22TTRWrappingArrangementC13CustomSpacingC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  swift_beginAccess();
  result = *(a2 + 40);
  if ((v9 & 1) == 0)
  {
    return (v8 == *(a2 + 32)) & ~result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRTreeViewAnimationByType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRTreeViewAnimationByType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t initializeWithCopy for TTRWrappingArrangement.Layout(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRWrappingArrangement.Layout(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  sub_21DBF8E0C();

  a1[9] = a2[9];
  a1[10] = a2[10];
  return a1;
}

uint64_t assignWithTake for TTRWrappingArrangement.Layout(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRWrappingArrangement.Layout(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRWrappingArrangement.Layout(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRWrappingArrangement.RowState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRWrappingArrangement.RowState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21D8ED150()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63858);
  v1 = __swift_project_value_buffer(v0, qword_27CE63858);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D8ED280(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6, uint64_t a7)
{
  v12 = (*(a3 + 8))(a2, a3);
  v13 = (*(a3 + 16))(a2, a3);
  *(swift_allocObject() + 16) = a1;
  sub_21D0D8CF0(0, a5, a6);
  v14 = a1;
  sub_21DBFB6BC();

  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v15 = sub_21DBFB12C();
  v16 = sub_21DBF826C();

  return v16;
}

id TTRItemFetchingInteractorCapability.fetchListSynchronously(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21D8ED4C0(a1, a2, a3, &selRef_fetchListWithObjectID_error_, "fetchListSynchronously failed {error: %s}");
}

id TTRItemFetchingInteractorCapability.fetchCustomSmartListSynchronously(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21D8ED4C0(a1, a2, a3, &selRef_fetchCustomSmartListWithObjectID_error_, "fetchCustomSmartListSynchronously failed {error: %s}");
}

id sub_21D8ED4C0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, const char *a5)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = (*(a3 + 8))(a2, a3);
  v23[0] = 0;
  v9 = [v8 *a4];

  v10 = v23[0];
  if (!v9)
  {
    v11 = v10;
    v12 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56E18 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_27CE63858);
    v14 = v12;
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAEBC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_21DBFC74C();
      v21 = sub_21D0CDFB4(v19, v20, v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_21D0C9000, v15, v16, a5, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223D46520](v18, -1, -1);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v9;
}

id sub_21D8ED7CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X2>, void *a4@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v5 = [a1 *a3];
  v6 = v9[0];
  if (v5)
  {
    *a4 = v5;
    return v6;
  }

  else
  {
    v8 = v9[0];
    sub_21DBF52DC();

    return swift_willThrow();
  }
}

void REMAlarmVehicleTriggerEvent.localizedDescription.getter(uint64_t result)
{
  if (result)
  {
    if (result == 2)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    if (result == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_8:
        sub_21DBF516C();
        return;
      }

LABEL_9:
      swift_once();
      goto LABEL_8;
    }

    if (qword_27CE56E20 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_27CE63870);
    v2 = MEMORY[0x277D84F90];
    v3 = sub_21D17716C(MEMORY[0x277D84F90]);
    v4 = sub_21D17716C(v2);
    sub_21DAEAB00("unknown event", 13, 2, v3, v4);
    __break(1u);
  }
}

void REMAlarmVehicleTrigger.localizedDescription.getter()
{
  v1 = [v0 event];
  if (v1)
  {
    if (v1 == 2)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    if (v1 == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_8:
        sub_21DBF516C();
        return;
      }

LABEL_9:
      swift_once();
      goto LABEL_8;
    }

    if (qword_27CE56E20 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE63870);
    v3 = MEMORY[0x277D84F90];
    v4 = sub_21D17716C(MEMORY[0x277D84F90]);
    v5 = sub_21D17716C(v3);
    sub_21DAEAB00("unknown event", 13, 2, v4, v5);
    __break(1u);
  }
}

uint64_t sub_21D8EDDF4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63870);
  v1 = __swift_project_value_buffer(v0, qword_27CE63870);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D8EDEBC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRNoAnimationContainerGridView_areImplicitAnimationsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D8EDF00(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore31TTRNoAnimationContainerGridView_areImplicitAnimationsEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_21D8EDFB0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore32TTRNoAnimationContainerStackView_areImplicitAnimationsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D8EDFF4(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore32TTRNoAnimationContainerStackView_areImplicitAnimationsEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_21D8EE0A4()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRNoAnimationContainerFlowView_areImplicitAnimationsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D8EE0E8(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore31TTRNoAnimationContainerFlowView_areImplicitAnimationsEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_21D8EE198()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore30TTRNoAnimationContainerBoxView_areImplicitAnimationsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D8EE1DC(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore30TTRNoAnimationContainerBoxView_areImplicitAnimationsEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

Swift::Int_optional __swiftcall NUIContainerView.ttr_index(ofArrangedSubview:)(UIView *ofArrangedSubview)
{
  v2 = [v1 indexOfArrangedSubview_];
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2;
    v5 = sub_21DBF4B4C();
    v3 = v4 == v5;
    if (v4 == v5)
    {
      v2 = 0;
    }

    else
    {
      v2 = v4;
    }
  }

  result.value = v2;
  result.is_nil = v3;
  return result;
}

double sub_21D8EE2FC()
{
  result = *MEMORY[0x277CEC618];
  qword_27CE63888 = *MEMORY[0x277CEC618];
  return result;
}

double sub_21D8EE314()
{
  result = *MEMORY[0x277CEC610];
  qword_27CE63890 = *MEMORY[0x277CEC610];
  return result;
}

double sub_21D8EE350(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

__n128 sub_21D8EE398()
{
  result = *MEMORY[0x277CEC608];
  v1 = *(MEMORY[0x277CEC608] + 16);
  xmmword_27CE63898 = *MEMORY[0x277CEC608];
  *&qword_27CE638A8 = v1;
  return result;
}

double static UIEdgeInsets.nuiUseDefault.getter()
{
  if (qword_27CE56E40 != -1)
  {
    swift_once();
  }

  return *&xmmword_27CE63898;
}

id sub_21D8EE40C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRNoAnimationContainerGridView_areImplicitAnimationsEnabled;
  swift_beginAccess();
  v2 = v0[v1];
  v8 = v0;
  if (v2)
  {
    v9.receiver = v0;
    v9.super_class = type metadata accessor for TTRNoAnimationContainerGridView();
    return objc_msgSendSuper2(&v9, sel_layoutSubviews);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_21D8EE584;
    *(v5 + 24) = &v7;
    aBlock[4] = sub_21D0E6070;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_110;
    v6 = _Block_copy(aBlock);

    [v4 performWithoutAnimation_];
    _Block_release(v6);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

id TTRNoAnimationContainerGridView.__allocating_init(arrangedSubviewRows:)(uint64_t a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
    v2 = sub_21DBFA5DC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviewRows_];

  return v3;
}

id TTRNoAnimationContainerGridView.init(arrangedSubviewRows:)(uint64_t a1)
{
  v1[OBJC_IVAR____TtC15RemindersUICore31TTRNoAnimationContainerGridView_areImplicitAnimationsEnabled] = 0;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
    v2 = sub_21DBFA5DC();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for TTRNoAnimationContainerGridView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithArrangedSubviewRows_, v2);

  return v3;
}

id sub_21D8EE878()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore32TTRNoAnimationContainerStackView_areImplicitAnimationsEnabled;
  swift_beginAccess();
  v2 = v0[v1];
  v8 = v0;
  if (v2)
  {
    v9.receiver = v0;
    v9.super_class = type metadata accessor for TTRNoAnimationContainerStackView();
    return objc_msgSendSuper2(&v9, sel_layoutSubviews);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_21D8EE9F0;
    *(v5 + 24) = &v7;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_7_4;
    v6 = _Block_copy(aBlock);

    [v4 performWithoutAnimation_];
    _Block_release(v6);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

id TTRNoAnimationContainerBoxView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_21D8EEC50()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRNoAnimationContainerFlowView_areImplicitAnimationsEnabled;
  swift_beginAccess();
  v2 = v0[v1];
  v8 = v0;
  if (v2)
  {
    v9.receiver = v0;
    v9.super_class = type metadata accessor for TTRNoAnimationContainerFlowView();
    return objc_msgSendSuper2(&v9, sel_layoutSubviews);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_21D8EEDC8;
    *(v5 + 24) = &v7;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_21_3;
    v6 = _Block_copy(aBlock);

    [v4 performWithoutAnimation_];
    _Block_release(v6);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_21D8EEE6C(void *a1, uint64_t (*a2)(void), double a3, double a4, double a5, double a6)
{
  v6[*a1] = 0;
  v12.receiver = v6;
  v12.super_class = a2();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a3, a4, a5, a6);
}

id sub_21D8EEEFC(_BYTE *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, uint64_t (*a8)(void))
{
  a1[*a7] = 0;
  v13.receiver = a1;
  v13.super_class = a8();
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_21D8EEF98(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  v4[*a2] = 0;
  if (a1)
  {
    sub_21D114EC8();
    v6 = sub_21DBFA5DC();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v4;
  v9.super_class = a3(a1);
  v7 = objc_msgSendSuper2(&v9, sel_initWithArrangedSubviews_, v6);

  return v7;
}

id sub_21D8EF06C(void *a1, void *a2, uint64_t (*a3)(void))
{
  v3[*a2] = 0;
  v7.receiver = v3;
  v7.super_class = a3();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

_BYTE *sub_21D8EF100(_BYTE *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  a1[*a4] = 0;
  v9.receiver = a1;
  v9.super_class = a5();
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

id sub_21D8EF19C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void keypath_setTm_1(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

RemindersUICore::TTRIHashtagWrappingCollectionView::LayoutResult __swiftcall TTRIHashtagWrappingCollectionView.LayoutResult.init(totalRowCountIncludingHidden:hiddenHashtagLabelCount:)(Swift::Int totalRowCountIncludingHidden, Swift::Int hiddenHashtagLabelCount)
{
  *v2 = totalRowCountIncludingHidden;
  v2[1] = hiddenHashtagLabelCount;
  result.hiddenHashtagLabelCount = hiddenHashtagLabelCount;
  result.totalRowCountIncludingHidden = totalRowCountIncludingHidden;
  return result;
}

uint64_t TTRIHashtagWrappingCollectionView.FocusStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRIHashtagWrappingCollectionView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIHashtagWrappingCollectionView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t TTRIHashtagWrappingCollectionView.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void TTRIHashtagWrappingCollectionView.isEnabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_isEnabled;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags;
    v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags];
    *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags] = v7 | 4;
    if ((v7 | 4) != v7)
    {
      [v1 setNeedsLayout];
      if (v1[v6])
      {
        [v1 invalidateIntrinsicContentSize];
      }
    }
  }
}

void (*TTRIHashtagWrappingCollectionView.isEnabled.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D8EF8F4;
}

void sub_21D8EF8F4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    TTRIHashtagWrappingCollectionView.isEnabled.setter(v3);
  }

  else
  {
    v5 = *(v2 + 24);
    v4 = *(v2 + 32);
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = *(v2 + 24);
      v8 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags;
      v9 = *(v7 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags);
      *(v7 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags) = v9 | 4;
      if ((v9 | 4) != v9)
      {
        [*(v2 + 24) setNeedsLayout];
        if (*(v7 + v8))
        {
          [*(v2 + 24) invalidateIntrinsicContentSize];
        }
      }
    }
  }

  free(v2);
}

double TTRIHashtagWrappingCollectionView.allTagsButtonState.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
  sub_21DBF8E0C();
  return result;
}

double sub_21D8EF9F4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
  sub_21DBF8E0C();
  v8[0] = v6;
  v8[1] = v5;
  sub_21D8EFAE8(v8);

  return result;
}

double TTRIHashtagWrappingCollectionView.allTagsButtonState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  v8[0] = v5;
  v8[1] = v6;
  sub_21D8EFAE8(v8);

  return result;
}

void sub_21D8EFAE8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState];
  swift_beginAccess();
  v5 = *(v4 + 1);
  if (!v5)
  {
    if (!v2)
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    goto LABEL_10;
  }

  if (!v2)
  {
LABEL_10:

LABEL_11:
    v7 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags;
    v8 = *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags];
    *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags] = v8 | 1;
    if ((v8 | 1) != v8)
    {
      [v1 setNeedsLayout];
      if (v1[v7])
      {
        [v1 invalidateIntrinsicContentSize];
      }
    }

    return;
  }

  v6 = *v4 == v3 && v5 == v2;
  if (!v6 && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_11;
  }
}

void (*TTRIHashtagWrappingCollectionView.allTagsButtonState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  sub_21DBF8E0C();
  return sub_21D8EFC6C;
}

void sub_21D8EFC6C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {
    sub_21DBF8E0C();
    v10 = v9;
    v11 = v8;
    sub_21D8EFAE8(&v10);
  }

  else
  {
    v10 = v9;
    v11 = v8;
    sub_21D8EFAE8(&v10);
  }

  free(v2);
}

void TTRIHashtagWrappingCollectionView.addTagButtonState.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_21D8EFD5C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v5;
  sub_21D8EFE60(&v6);
}

void TTRIHashtagWrappingCollectionView.addTagButtonState.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = v2;
  if (v4 != v2)
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags;
    v6 = *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags];
    *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags] = v6 | 1;
    if ((v6 | 1) != v6)
    {
      [v1 setNeedsLayout];
      if (v1[v5])
      {
        [v1 invalidateIntrinsicContentSize];
      }
    }
  }
}

void sub_21D8EFE60(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState;
  swift_beginAccess();
  if (v2 != v1[v3])
  {
    v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags;
    v5 = *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags];
    *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags] = v5 | 1;
    if ((v5 | 1) != v5)
    {
      [v1 setNeedsLayout];
      if (v1[v4])
      {
        [v1 invalidateIntrinsicContentSize];
      }
    }
  }
}

void (*TTRIHashtagWrappingCollectionView.addTagButtonState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D8EFF90;
}

void sub_21D8EFF90(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  sub_21D8EFE60(v6);

  free(v2);
}

double TTRIHashtagWrappingCollectionView.hashtagLabels.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double sub_21D8F0044(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_21DBF8E0C();
  sub_21D8F0118(v5);

  return result;
}

double TTRIHashtagWrappingCollectionView.hashtagLabels.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_21D8F0118(v4);

  return result;
}

uint64_t sub_21D8F0118(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  result = sub_21D1D57A4(*&v1[v3], a1);
  if ((result & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags;
    v6 = *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags];
    *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags] = v6 | 1;
    if ((v6 | 1) != v6)
    {
      result = [v1 setNeedsLayout];
      if (v1[v5])
      {
        return [v1 invalidateIntrinsicContentSize];
      }
    }
  }

  return result;
}

void (*TTRIHashtagWrappingCollectionView.hashtagLabels.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D8F0254;
}

void sub_21D8F0254(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 24);
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21D8F0118(v5);
  }

  else
  {
    sub_21D8F0118(v5);
  }

  free(v2);
}

uint64_t TTRIHashtagWrappingCollectionView.selection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_internalSelection;
  swift_beginAccess();
  v4 = sub_21DBF6C1C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_21D8F0360@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_internalSelection;
  swift_beginAccess();
  v5 = sub_21DBF6C1C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21D8F03EC(uint64_t a1)
{
  v2 = sub_21DBF6C1C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2, v4);
  TTRIHashtagWrappingCollectionView.setSelection(_:animated:)(v6, 0);
  return (*(v3 + 8))(v6, v2);
}

uint64_t TTRIHashtagWrappingCollectionView.selection.setter(void (*a1)(char *, char *, uint64_t, __n128))
{
  TTRIHashtagWrappingCollectionView.setSelection(_:animated:)(a1, 0);
  v2 = sub_21DBF6C1C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t TTRIHashtagWrappingCollectionView.setSelection(_:animated:)(void (*a1)(char *, char *, uint64_t, __n128), int a2)
{
  v3 = v2;
  v51 = a2;
  v52 = a1;
  v4 = sub_21DBF6C0C();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF6C1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (v43 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = (v43 - v14);
  MEMORY[0x28223BE20](v16);
  v50 = v43 - v17;
  v18 = &v3[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState];
  swift_beginAccess();
  if (!*&v3[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = *(v18 + 1);
  v20 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v21 = *&v3[v20];
  v22 = *(v8 + 16);
  (v22)(v15, v52, v7);
  v52 = v22;
  (v22)(v12, v15, v7);
  v23 = (*(v8 + 88))(v12, v7);
  v24 = v23;
  if (v23 != *MEMORY[0x277D45378])
  {
    if (v23 == *MEMORY[0x277D45398] || v23 == *MEMORY[0x277D45380])
    {
      if (!v19)
      {
        v33 = v53;
        sub_21DBF6BCC();
        (*(v8 + 8))(v15, v7);
        (*(v8 + 32))(v15, v33, v7);
      }

      goto LABEL_11;
    }

LABEL_27:
    sub_21DBF8E0C();
    result = sub_21DBFC63C();
    __break(1u);
    return result;
  }

  (*(v8 + 96))(v12, v7);
  v25 = *v12;
  v45 = v12[1];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830);
  v46 = v6;
  v47 = v26;
  v27 = *(v26 + 64);
  v48 = *(v48 + 32);
  v28 = (v48)(v6, v12 + v27, v49);
  v43[1] = v43;
  MEMORY[0x28223BE20](v28);
  v43[-2] = v21;
  sub_21DBF8E0C();
  v44 = sub_21D8F747C(v25, sub_21D8F6690);
  MEMORY[0x28223BE20](v44);
  v43[-2] = v21;
  v29 = sub_21D8F747C(v45, sub_21D8F6690);

  (*(v8 + 8))(v15, v7);
  v30 = v46;
  v31 = *(v47 + 64);
  *v15 = v44;
  v15[1] = v29;
  (v48)(v15 + v31, v30, v49);
  (*(v8 + 104))(v15, v24, v7);
LABEL_11:
  v34 = v50;
  (*(v8 + 32))(v50, v15, v7);
  v35 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_internalSelection;
  swift_beginAccess();
  v36 = v53;
  (v52)(v53, &v3[v35], v7);
  sub_21D8F91CC(&qword_27CE63930, MEMORY[0x277D453A0], MEMORY[0x277D453B0]);
  v37 = sub_21DBFA10C();
  v38 = *(v8 + 8);
  v38(v36, v7);
  if ((v37 & 1) == 0)
  {
    if (v51)
    {
      [v3 layoutIfNeeded];
    }

    swift_beginAccess();
    (*(v8 + 24))(&v3[v35], v34, v7);
    swift_endAccess();
    v39 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags;
    v40 = *&v3[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags];
    *&v3[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags] = v40 | 2;
    if ((v40 | 2) != v40)
    {
      [v3 setNeedsLayout];
      if (v3[v39])
      {
        [v3 invalidateIntrinsicContentSize];
      }
    }

    if (v51)
    {
      v41 = *&v3[v39];
      if (v41)
      {
        *&v3[v39] = 0;
        if (v41)
        {
          sub_21D8F2104();
        }

        if ((v41 & 3) != 0)
        {
          v54 = 0x3FE0000000000000;
          v55 = 0;
          sub_21D8F2684(&v54);
        }

        if ((v41 & 5) != 0)
        {
          sub_21D8F2CF0();
        }
      }
    }
  }

  return (v38)(v34, v7);
}

void (*TTRIHashtagWrappingCollectionView.selection.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_21DBF6C1C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_internalSelection;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_21D8F0CF8;
}

void sub_21D8F0CF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    TTRIHashtagWrappingCollectionView.setSelection(_:animated:)(v4, 0);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    TTRIHashtagWrappingCollectionView.setSelection(_:animated:)(*(v2 + 56), 0);
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t TTRIHashtagWrappingCollectionView.maxRowCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v1)
  {
    v2 = v1 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
    swift_beginAccess();
    return *v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D8F0E40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v3)
  {
    v4 = v3 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
    swift_beginAccess();
    v5 = *(v4 + 8);
    *a2 = *v4;
    *(a2 + 8) = v5;
  }

  else
  {
    __break(1u);
  }
}

void TTRIHashtagWrappingCollectionView.maxRowCount.setter(uint64_t a1, char a2)
{
  v3 = *&v2[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v6 = &v3[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount];
  swift_beginAccess();
  if (v6[8])
  {
    if (a2)
    {
      return;
    }

LABEL_7:
    v7 = &v3[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount];
    swift_beginAccess();
    v8 = *v7;
    v9 = v7[8];
    *v7 = a1;
    v7[8] = a2 & 1;
    if (a2)
    {
      if (v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 != a1)
      {
        LOBYTE(v9) = 1;
      }

      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    [v3 setNeedsInvalidation_];
LABEL_14:
    [v2 invalidateIntrinsicContentSize];
    return;
  }

  if ((a2 & 1) != 0 || *v6 != a1)
  {
    goto LABEL_7;
  }
}

uint64_t (*TTRIHashtagWrappingCollectionView.maxRowCount.modify(uint64_t (**a1)()))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v4 = result;
  *a1 = result;
  *(result + 5) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v5)
  {
    v6 = v5 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
    swift_beginAccess();
    v7 = *(v6 + 8);
    *(v4 + 3) = *v6;
    *(v4 + 32) = v7;
    return sub_21D8F1074;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D8F1074(uint64_t a1)
{
  v1 = *a1;
  TTRIHashtagWrappingCollectionView.maxRowCount.setter(*(*a1 + 24), *(*a1 + 32));

  free(v1);
}

uint64_t TTRIHashtagWrappingCollectionView.allowsEmptySelection.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsEmptySelection;
  swift_beginAccess();
  return *(v0 + v1);
}

void TTRIHashtagWrappingCollectionView.allowsEmptySelection.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsEmptySelection;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t TTRIHashtagWrappingCollectionView.allowsExcludedSelection.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsExcludedSelection;
  swift_beginAccess();
  return *(v0 + v1);
}

void TTRIHashtagWrappingCollectionView.allowsExcludedSelection.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsExcludedSelection;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void TTRIHashtagWrappingCollectionView.focusStyle.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusStyle;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_21D8F12F4(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusStyle;
  swift_beginAccess();
  v5 = v3[v4];
  v3[v4] = v2;
  if (v5 != v2)
  {
    [v3 setNeedsFocusUpdate];
  }
}

void TTRIHashtagWrappingCollectionView.focusStyle.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusStyle;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = v2;
  if (v4 != v2)
  {
    [v1 setNeedsFocusUpdate];
  }
}

void (*TTRIHashtagWrappingCollectionView.focusStyle.modify(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusStyle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D8F1464;
}

void sub_21D8F1464(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsFocusUpdate];
  }

  free(v1);
}

id sub_21D8F14C0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_isEnabled] = 1;
  v10 = &v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels] = MEMORY[0x277D84F90];
  v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsEmptySelection] = 1;
  v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsExcludedSelection] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusStyle] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator] = 0;
  sub_21DBF6BDC();
  v11 = &v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_lastLayoutResult];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState] = xmmword_21DC19C40;
  v12 = &v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_targetHashtagLabelForPerformingDrop];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusGuide] = 0;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_21D8F1650();

  return v13;
}

void sub_21D8F1650()
{
  [v0 bounds];
  v5 = [objc_allocWithZone(type metadata accessor for TTRContainerWrappingView()) initWithFrame_];
  [v5 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];
  v6 = v5;
  [v6 setLayoutMarginsRelativeArrangement_];
  [v6 setPreservesSuperviewLayoutMargins_];
  [v6 setLayoutMargins_];

  v7 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_horizontalSpacing;
  swift_beginAccess();
  v8 = *&v6[v7];
  *&v6[v7] = 0x4020000000000000;
  if (v8 != 8.0)
  {
    [v6 setNeedsInvalidation_];
  }

  v9 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_verticalSpacing;
  swift_beginAccess();
  v10 = *&v6[v9];
  *&v6[v9] = 0x4020000000000000;
  if (v10 != 8.0)
  {
    [v6 setNeedsInvalidation_];
  }

  [v6 setDelegate_];

  [v0 addSubview_];
  v11 = *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer];
  *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer] = v6;
  v12 = v6;

  type metadata accessor for TTRIHashtagCollectionViewAdaptor();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v13 + 48) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v13 + 24) = sel_addTagButtonAction_;
  *(v13 + 32) = sel_hashtagButtonAction_;
  *(v13 + 48) = &protocol witness table for TTRIHashtagWrappingCollectionView;
  swift_unknownObjectWeakAssign();
  *(v13 + 56) = v6;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE63A70, &unk_21DC30C28);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 32) = v13;
  swift_beginAccess();
  *(v14 + 24) = &protocol witness table for TTRIHashtagWrappingCollectionView;
  swift_unknownObjectWeakAssign();
  *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator] = v14;
  v15 = v12;

  v16 = [objc_allocWithZone(MEMORY[0x277D754A0]) initWithDelegate_];
  [v0 addInteraction_];
  v17 = [objc_allocWithZone(MEMORY[0x277D753B8]) initWithDelegate_];
  [v0 addInteraction_];
  v18 = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v19 = *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusGuide];
  *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusGuide] = v18;
  v20 = v18;

  [v0 bounds];
  [v20 _setManualLayoutFrame_];
  [v0 addLayoutGuide_];
}

id sub_21D8F1A40(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_isEnabled] = 1;
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState] = 1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels] = MEMORY[0x277D84F90];
  v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsEmptySelection] = 1;
  v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsExcludedSelection] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusStyle] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_populator] = 0;
  sub_21DBF6BDC();
  v5 = &v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_lastLayoutResult];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_dropState] = xmmword_21DC19C40;
  v6 = &v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_targetHashtagLabelForPerformingDrop];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusGuide] = 0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_21D8F1650();
  }

  return v8;
}

Swift::Void __swiftcall TTRIHashtagWrappingCollectionView.layoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags];
  if (v1)
  {
    *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags] = 0;
    if (v1)
    {
      sub_21D8F2104();
    }

    if ((v1 & 3) != 0)
    {
      v6 = 0;
      v7 = 1;
      sub_21D8F2684(&v6);
    }

    if ((v1 & 5) != 0)
    {
      sub_21D8F2CF0();
    }
  }

  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];

    v4 = *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusGuide];
    if (v4)
    {
      v5 = v4;
      [v0 bounds];
      [v5 _setManualLayoutFrame_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

CGSize __swiftcall TTRIHashtagWrappingCollectionView.sizeThatFits(_:)(CGSize result)
{
  height = result.height;
  width = result.width;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags);
  if (v4)
  {
    *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags) = 0;
    if (v4)
    {
      sub_21D8F2104();
    }

    if ((v4 & 3) != 0)
    {
      v6 = 0;
      v7 = 1;
      sub_21D8F2684(&v6);
    }

    if ((v4 & 5) != 0)
    {
      sub_21D8F2CF0();
    }
  }

  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v5)
  {

    [v5 sizeThatFits_];
  }

  else
  {
    __break(1u);
  }

  return result;
}