uint64_t type metadata accessor for BrowseState(uint64_t a1)
{
  result = qword_2810EEB20;
  if (!qword_2810EEB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B47A83C(uint64_t a1)
{
  result = sub_24B516C4C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BrowseIdentifier(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for BrowseLoadState(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for BrowseIdentifier(uint64_t a1)
{
  result = qword_2810EE5C0;
  if (!qword_2810EE5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47A938(uint64_t a1)
{
  sub_24B47A9B0();
  if (v1 <= 0x3F)
  {
    sub_24B47A9E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24B47A9B0()
{
  result = qword_2810ED718;
  if (!qword_2810ED718)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_2810ED718);
  }

  return result;
}

void sub_24B47A9E0(uint64_t a1)
{
  if (!qword_2810ED720)
  {
    sub_24B516B8C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2810ED720);
    }
  }
}

uint64_t type metadata accessor for BrowseLoadState(uint64_t a1)
{
  result = qword_2810EE668;
  if (!qword_2810EE668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47AAA0(uint64_t a1)
{
  sub_24B47AB14();
  if (v1 <= 0x3F)
  {
    sub_24B47AB44(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24B47AB14()
{
  result = qword_2810ED710;
  if (!qword_2810ED710)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_2810ED710);
  }

  return result;
}

void sub_24B47AB44(uint64_t a1)
{
  if (!qword_2810EE888[0])
  {
    type metadata accessor for BrowseContent(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFE250, &qword_24B5253E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFE1E0, &qword_24B5252E0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, qword_2810EE888);
    }
  }
}

uint64_t type metadata accessor for BrowseContent(uint64_t a1)
{
  result = qword_2810EE870;
  if (!qword_2810EE870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47AC34(uint64_t a1)
{
  type metadata accessor for EditorialCollectionDetail(319);
  if (v1 <= 0x3F)
  {
    sub_24B47C82C();
    if (v2 <= 0x3F)
    {
      sub_24B47C874(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for EditorialCollectionDetail(uint64_t a1)
{
  result = qword_2810ED9C8;
  if (!qword_2810ED9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47AD08(uint64_t a1)
{
  sub_24B47AE04(319, qword_2810EE8E8, type metadata accessor for BrowseArtwork, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EditorialCollection(319);
    if (v2 <= 0x3F)
    {
      sub_24B47AE04(319, &qword_2810ED6F8, type metadata accessor for BrowseSectionDescriptor, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B47AE04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for BrowseArtwork(uint64_t a1)
{
  result = qword_2810EE918;
  if (!qword_2810EE918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47AEB4(uint64_t a1)
{
  sub_24B47AF70(319, &qword_2810EED40, MEMORY[0x277D09D68]);
  if (v1 <= 0x3F)
  {
    sub_24B47AF70(319, &qword_2810EED70, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B47AF70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B517C8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for EditorialCollection(uint64_t a1)
{
  result = qword_2810EE298;
  if (!qword_2810EE298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47B010(uint64_t a1)
{
  sub_24B47B0B8(319);
  if (v1 <= 0x3F)
  {
    sub_24B47B1C0();
    if (v2 <= 0x3F)
    {
      sub_24B516BAC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B47B0B8(uint64_t a1)
{
  if (!qword_2810ED6D8)
  {
    sub_24B47B114();
    v1 = sub_24B517C3C();
    if (!v2)
    {
      atomic_store(v1, &qword_2810ED6D8);
    }
  }
}

unint64_t sub_24B47B114()
{
  result = qword_2810ED800[0];
  if (!qword_2810ED800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810ED800);
  }

  return result;
}

unint64_t sub_24B47B16C()
{
  result = qword_2810ED7F8;
  if (!qword_2810ED7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED7F8);
  }

  return result;
}

void sub_24B47B1C0()
{
  if (!qword_2810ED708)
  {
    v0 = sub_24B517C8C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810ED708);
    }
  }
}

uint64_t type metadata accessor for BrowseSectionDescriptor(uint64_t a1)
{
  result = qword_2810EDC70;
  if (!qword_2810EDC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B47B25C(uint64_t a1)
{
  result = type metadata accessor for BrowseDetailDescriptor(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BrowseEditorialDescriptor(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for BrowseGalleryDescriptor(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for NewAndFeaturedDescriptor(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for BrowseDetailDescriptor(uint64_t a1)
{
  result = qword_2810EDED0;
  if (!qword_2810EDED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47B358(uint64_t a1)
{
  type metadata accessor for BrowseDetailContent(319);
  if (v1 <= 0x3F)
  {
    sub_24B47BBFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for BrowseDetailContent(uint64_t a1)
{
  result = qword_2810EE350;
  if (!qword_2810EE350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B47B430(uint64_t a1)
{
  result = type metadata accessor for BrowseDetailArtworkItem(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BrowseDetailTextItem(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for BrowseDetailVideoLinkItem(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for BrowseDetailArtworkItem(uint64_t a1)
{
  result = qword_2810EDDA8;
  if (!qword_2810EDDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47B504(uint64_t a1)
{
  sub_24B47B578(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B47B578(uint64_t a1)
{
  if (!qword_2810EED38)
  {
    type metadata accessor for BrowseArtwork(255);
    sub_24B47B60C(qword_2810EE948, type metadata accessor for BrowseArtwork, &protocol conformance descriptor for BrowseArtwork);
    v1 = sub_24B516CDC();
    if (!v2)
    {
      atomic_store(v1, &qword_2810EED38);
    }
  }
}

uint64_t sub_24B47B60C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B47B654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B47B69C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B47B6E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B47B72C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B47B774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B47B7BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for BrowseDetailTextItem(uint64_t a1)
{
  result = qword_2810EE178;
  if (!qword_2810EE178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47B970(uint64_t a1)
{
  sub_24B47B9EC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B47B9EC(uint64_t a1)
{
  if (!qword_2810EED88)
  {
    sub_24B516B8C();
    v1 = sub_24B517C8C();
    if (!v2)
    {
      atomic_store(v1, &qword_2810EED88);
    }
  }
}

uint64_t type metadata accessor for BrowseDetailVideoLinkItem(uint64_t a1)
{
  result = qword_2810EDB10;
  if (!qword_2810EDB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B47BA90(uint64_t a1)
{
  result = sub_24B516B8C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for VideoAsset(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for VideoAsset(uint64_t a1)
{
  result = qword_2810EEBC0;
  if (!qword_2810EEBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47BB68(uint64_t a1)
{
  sub_24B47B1C0();
  if (v1 <= 0x3F)
  {
    sub_24B516BAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B47BBFC()
{
  if (!qword_2810EE2B0[0])
  {
    v0 = sub_24B517C8C();
    if (!v1)
    {
      atomic_store(v0, qword_2810EE2B0);
    }
  }
}

uint64_t type metadata accessor for BrowseEditorialDescriptor(uint64_t a1)
{
  result = qword_2810EDA78;
  if (!qword_2810EDA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47BC98(uint64_t a1)
{
  sub_24B47BDB4(319, qword_2810EDBD0, &type metadata for BrowseGalleryDestination);
  if (v1 <= 0x3F)
  {
    sub_24B47BDB4(319, &qword_2810EE480, &type metadata for BrowseDisplayStyle);
    if (v2 <= 0x3F)
    {
      sub_24B47BDB4(319, qword_2810EE2B0, &type metadata for BrowseInsetBehavior);
      if (v3 <= 0x3F)
      {
        sub_24B47B9EC(319);
        if (v4 <= 0x3F)
        {
          sub_24B516B8C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B47BDB4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24B517C8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for BrowseGalleryDescriptor(uint64_t a1)
{
  result = qword_2810EDD10;
  if (!qword_2810EDD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47BE4C(uint64_t a1)
{
  sub_24B47BEF0(319);
  if (v1 <= 0x3F)
  {
    sub_24B516B8C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B47BEF0(uint64_t a1)
{
  if (!qword_2810ED700)
  {
    type metadata accessor for BrowseLazyItem(255);
    v1 = sub_24B517B8C();
    if (!v2)
    {
      atomic_store(v1, &qword_2810ED700);
    }
  }
}

uint64_t type metadata accessor for BrowseLazyItem(uint64_t a1)
{
  result = qword_2810EE710;
  if (!qword_2810EE710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B47BF94(uint64_t a1)
{
  result = type metadata accessor for BrowseItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for BrowseItem(uint64_t a1)
{
  result = qword_2810EED18;
  if (!qword_2810EED18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47C048(uint64_t a1)
{
  sub_24B47C320(319, &qword_2810EED88, MEMORY[0x277CC8C40]);
  if (v1 <= 0x3F)
  {
    sub_24B47B578(319);
    if (v2 <= 0x3F)
    {
      sub_24B47C374(319);
      if (v3 <= 0x3F)
      {
        sub_24B47C47C(319, qword_2810ED9D8, &type metadata for BrowseItemAssetLoadStatus, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24B47C47C(319, &qword_2810ED6E8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24B47C47C(319, &qword_2810EDBC8, &type metadata for DynamicBrickDisplayStyle, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24B47C47C(319, &qword_2810ED6F0, MEMORY[0x277D83E88], MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_24B47C320(319, &qword_2810EE790, type metadata accessor for EditorialLink);
                if (v8 <= 0x3F)
                {
                  sub_24B47C47C(319, &qword_2810EE2A8, &type metadata for BrowseItemMediaType, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_24B47C47C(319, &qword_2810ED708, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_24B47C47C(319, qword_2810EE0E8, &type metadata for BrowseTextAttributes, MEMORY[0x277D83D88]);
                      if (v11 <= 0x3F)
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

void sub_24B47C320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B517C8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24B47C374(uint64_t a1)
{
  if (!qword_2810ED6E0)
  {
    sub_24B47C3D0();
    v1 = sub_24B517C3C();
    if (!v2)
    {
      atomic_store(v1, &qword_2810ED6E0);
    }
  }
}

unint64_t sub_24B47C3D0()
{
  result = qword_2810EDDC0[0];
  if (!qword_2810EDDC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810EDDC0);
  }

  return result;
}

unint64_t sub_24B47C428()
{
  result = qword_2810EDDB8;
  if (!qword_2810EDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EDDB8);
  }

  return result;
}

void sub_24B47C47C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24B47C4CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for EditorialLink(uint64_t a1)
{
  result = qword_2810EE798;
  if (!qword_2810EE798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47C568()
{
  if (!qword_2810EE478)
  {
    v0 = type metadata accessor for EditorialVideoLink(0);
    if (!v1)
    {
      atomic_store(v0, &qword_2810EE478);
    }
  }
}

uint64_t sub_24B47C5B0(uint64_t a1)
{
  sub_24B47C568();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for EditorialVideoLink(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

uint64_t type metadata accessor for EditorialVideoLink(uint64_t a1)
{
  result = qword_2810EE468;
  if (!qword_2810EE468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B47C6B4(uint64_t a1)
{
  result = sub_24B516BAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for NewAndFeaturedDescriptor(uint64_t a1)
{
  result = qword_2810EDBB8;
  if (!qword_2810EDBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47C784(uint64_t a1)
{
  sub_24B47B9EC(319);
  if (v1 <= 0x3F)
  {
    sub_24B516B8C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B47C82C()
{
  if (!qword_2810EDD20[0])
  {
    v0 = type metadata accessor for BrowseGalleryDescriptor(0);
    if (!v1)
    {
      atomic_store(v0, qword_2810EDD20);
    }
  }
}

void sub_24B47C874(uint64_t a1)
{
  if (!qword_2810ED6F8)
  {
    type metadata accessor for BrowseSectionDescriptor(255);
    v1 = sub_24B517B8C();
    if (!v2)
    {
      atomic_store(v1, &qword_2810ED6F8);
    }
  }
}

unint64_t sub_24B47C910()
{
  result = qword_2810ED8B8[0];
  if (!qword_2810ED8B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810ED8B8);
  }

  return result;
}

uint64_t sub_24B47C984(_OWORD *a1)
{
  result = sub_24B516E2C();
  if (v3 <= 0x3F)
  {
    v10 = 0;
    v14 = result;
    result = sub_24B516D4C();
    if (v4 <= 0x3F)
    {
      v11 = 0;
      v15 = result;
      v5 = a1[2];
      v9[0] = a1[1];
      v9[1] = v5;
      v6 = a1[4];
      v9[2] = a1[3];
      v9[3] = v6;
      type metadata accessor for NewAndFeaturedDataItem(255, v9);
      swift_getWitnessTable();
      sub_24B516E6C();
      sub_24B517B8C();
      swift_getWitnessTable();
      swift_getWitnessTable();
      result = sub_24B51798C();
      if (v7 <= 0x3F)
      {
        v12 = 0;
        v16 = result;
        result = sub_24B516C4C();
        if (v8 <= 0x3F)
        {
          v13 = 0;
          v17 = result;
          v18 = &type metadata for SectionLayout;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_24B47CB00()
{
  result = qword_2810ED7F0;
  if (!qword_2810ED7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED7F0);
  }

  return result;
}

uint64_t sub_24B47CB6C(void *a1)
{
  sub_24B51702C();
  sub_24B482204();
  return swift_getWitnessTable();
}

uint64_t sub_24B47CBF0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24B47CC60(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B516BAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24B47CD0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B516BAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B47CDBC()
{

  return swift_deallocObject();
}

uint64_t sub_24B47CE00(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC150, &qword_24B519E60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  sub_24B51702C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  sub_24B51702C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  sub_24B51773C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC168, &qword_24B519E78);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC170, &qword_24B519E80);
  sub_24B51702C();
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC178, &qword_24B519E88);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B5177EC();
  sub_24B51702C();
  sub_24B51724C();
  sub_24B51724C();
  sub_24B51773C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC180, &qword_24B519E90);
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC188, &qword_24B519E98);
  sub_24B51702C();
  sub_24B51702C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B496A60(&qword_27EFFC190, &qword_27EFFC180, &qword_24B519E90, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  sub_24B496A60(&qword_27EFFC198, &qword_27EFFC188, &qword_24B519E98, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51731C();
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC1A0, &qword_24B519EA0);
  sub_24B51724C();
  swift_getOpaqueTypeConformance2();
  sub_24B4958E4(&qword_27EFFC1A8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  sub_24B4956B0();
  return swift_getWitnessTable();
}

uint64_t sub_24B47D4DC@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B51710C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B47D56C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC170, &qword_24B519E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B47D5DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC170, &qword_24B519E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B47D668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B516E2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_24B516D4C();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a3 + 32);
      v19[0] = *(a3 + 16);
      v19[1] = v14;
      v15 = *(a3 + 64);
      v19[2] = *(a3 + 48);
      v19[3] = v15;
      type metadata accessor for NewAndFeaturedDataItem(255, v19);
      swift_getWitnessTable();
      sub_24B516E6C();
      sub_24B517B8C();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v16 = sub_24B51798C();
      v17 = *(v16 - 8);
      if (*(v17 + 84) == a2)
      {
        return (*(v17 + 48))(a1 + *(a3 + 88), a2, v16);
      }

      v18 = sub_24B516C4C();
      return (*(*(v18 - 8) + 48))(a1 + *(a3 + 92), a2, v18);
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 84);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24B47D8BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24B516E2C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_24B516D4C();
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      v16 = *(a4 + 32);
      v21[0] = *(a4 + 16);
      v21[1] = v16;
      v17 = *(a4 + 64);
      v21[2] = *(a4 + 48);
      v21[3] = v17;
      type metadata accessor for NewAndFeaturedDataItem(255, v21);
      swift_getWitnessTable();
      sub_24B516E6C();
      sub_24B517B8C();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v18 = sub_24B51798C();
      v19 = *(v18 - 8);
      if (*(v19 + 84) == a3)
      {
        return (*(v19 + 56))(a1 + *(a4 + 88), a2, a2, v18);
      }

      v20 = sub_24B516C4C();
      return (*(*(v20 - 8) + 56))(a1 + *(a4 + 92), a2, a2, v20);
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 84);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24B47DB70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F8, &qword_24B51A700);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[14];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24B47DD08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F8, &qword_24B51A700);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[14];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_24B47DEA0(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_24B47DF4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B516C4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for BrowseIdentifier(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 2)
    {
      return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    State = type metadata accessor for BrowseLoadState(0);
    v16 = *(*(State - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, State);
  }
}

uint64_t sub_24B47E0CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24B516C4C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for BrowseIdentifier(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
  }

  else
  {
    State = type metadata accessor for BrowseLoadState(0);
    v16 = *(*(State - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, State);
  }

  return result;
}

uint64_t sub_24B47E25C()
{

  return swift_deallocObject();
}

uint64_t sub_24B47E2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B516BAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B47E394(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24B516BAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B47E4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B516BAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B47E57C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24B516BAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B47E624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B47E6F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24B47E7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB60, &qword_24B51CA70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for EditorialCollection(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24B47E8D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB60, &qword_24B51CA70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for EditorialCollection(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24B47EA0C()
{

  return swift_deallocObject();
}

uint64_t sub_24B47EA44()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 104);
  v26 = *(v0 + 16);
  v27 = v26;
  *&v28 = v2;
  *(&v28 + 1) = v1;
  v29 = v3;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v24 = *(v0 + 88);
  v25 = v3;
  v33 = v24;
  v34 = v7;
  v8 = type metadata accessor for NewAndFeaturedView(0, &v27);
  v9 = v0 + ((*(*(v8 - 1) + 80) + 112) & ~*(*(v8 - 1) + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE40, &unk_24B51DB50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24B51701C();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  else
  {
  }

  sub_24B4956A8(*(v9 + v8[29]), *(v9 + v8[29] + 8));
  v11 = v8[30];
  swift_getFunctionTypeMetadata1();
  v12 = sub_24B516C9C();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  v13 = v8[31];
  v27 = v26;
  v28 = v25;
  *&v29 = v4;
  *(&v29 + 1) = v5;
  v30 = v6;
  v31 = v24;
  v14 = type metadata accessor for NewAndFeaturedDataItem(255, &v27);
  swift_getFunctionTypeMetadata1();
  v15 = sub_24B516C9C();
  (*(*(v15 - 8) + 8))(v9 + v13, v15);
  v16 = v8[32];
  *&v27 = v14;
  swift_getExtendedExistentialTypeMetadata();
  v17 = sub_24B516C9C();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);
  v18 = v8[33];
  v19 = sub_24B516B8C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 8);
  v21(v9 + v18, v19);
  v22 = v8[34];
  if (!(*(v20 + 48))(v9 + v22, 1, v19))
  {
    v21(v9 + v22, v19);
  }

  return swift_deallocObject();
}

uint64_t sub_24B47ED84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE90, &qword_24B51DC38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + *(a3 + 116) + 16);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = *(a3 + 16);
  swift_getFunctionTypeMetadata1();
  v14 = sub_24B516C9C();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a2)
  {
    v8 = v14;
    v9 = *(v15 + 48);
    v10 = a1 + *(a3 + 120);
    goto LABEL_3;
  }

  v16 = *(a3 + 48);
  v17 = *(a3 + 56);
  v18 = *(a3 + 64);
  v20 = *(a3 + 72);
  v19 = *(a3 + 80);
  v21 = *(a3 + 88);
  v30 = *(a3 + 24);
  v31 = v13;
  v32 = v30;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v20;
  v37 = v19;
  v29 = v21;
  v38 = v21;
  type metadata accessor for NewAndFeaturedDataItem(255, &v31);
  swift_getFunctionTypeMetadata1();
  v22 = sub_24B516C9C();
  if (*(*(v22 - 8) + 84) == a2)
  {
    v23 = v22;
    v24 = *(v22 - 8);
    v25 = *(a3 + 124);
  }

  else
  {
    v31 = v13;
    v32 = v30;
    v33 = v16;
    v34 = v17;
    v35 = v18;
    v36 = v20;
    v37 = v19;
    v38 = v29;
    v31 = type metadata accessor for NewAndFeaturedDataItem(255, &v31);
    swift_getExtendedExistentialTypeMetadata();
    v26 = sub_24B516C9C();
    if (*(*(v26 - 8) + 84) == a2)
    {
      v23 = v26;
      v24 = *(v26 - 8);
      v25 = *(a3 + 128);
    }

    else
    {
      v27 = sub_24B516B8C();
      if (*(*(v27 - 8) + 84) != a2)
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
        return (*(*(v28 - 8) + 48))(a1 + *(a3 + 136), a2, v28);
      }

      v23 = v27;
      v24 = *(v27 - 8);
      v25 = *(a3 + 132);
    }
  }

  return (*(v24 + 48))(a1 + v25, a2, v23);
}

uint64_t sub_24B47F0C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE90, &qword_24B51DC38);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + *(a4 + 116) + 16) = -a2;
    return result;
  }

  v13 = *(a4 + 16);
  swift_getFunctionTypeMetadata1();
  v14 = sub_24B516C9C();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v10 = v14;
    v11 = *(v15 + 56);
    v12 = a1 + *(a4 + 120);
    goto LABEL_3;
  }

  v16 = *(a4 + 48);
  v17 = *(a4 + 56);
  v18 = *(a4 + 64);
  v20 = *(a4 + 72);
  v19 = *(a4 + 80);
  v21 = *(a4 + 88);
  v31 = *(a4 + 24);
  v32 = v13;
  v33 = v31;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v20;
  v38 = v19;
  v29 = v21;
  v30 = v19;
  v39 = v21;
  type metadata accessor for NewAndFeaturedDataItem(255, &v32);
  swift_getFunctionTypeMetadata1();
  v22 = sub_24B516C9C();
  if (*(*(v22 - 8) + 84) == a3)
  {
    v23 = v22;
    v24 = *(v22 - 8);
    v25 = *(a4 + 124);
  }

  else
  {
    v32 = v13;
    v33 = v31;
    v34 = v16;
    v35 = v17;
    v36 = v18;
    v37 = v20;
    v38 = v30;
    v39 = v29;
    v32 = type metadata accessor for NewAndFeaturedDataItem(255, &v32);
    swift_getExtendedExistentialTypeMetadata();
    v26 = sub_24B516C9C();
    if (*(*(v26 - 8) + 84) == a3)
    {
      v23 = v26;
      v24 = *(v26 - 8);
      v25 = *(a4 + 128);
    }

    else
    {
      v27 = sub_24B516B8C();
      if (*(*(v27 - 8) + 84) != a3)
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
        return (*(*(v28 - 8) + 56))(a1 + *(a4 + 136), a2, a2, v28);
      }

      v23 = v27;
      v24 = *(v27 - 8);
      v25 = *(a4 + 132);
    }
  }

  return (*(v24 + 56))(a1 + v25, a2, a2, v23);
}

uint64_t sub_24B47F410(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE48, &qword_24B51DB68);
  v2 = a1[2];
  v3 = a1[3];
  v47 = *a1;
  v48 = v2;
  v4 = a1[4];
  v49 = v3;
  v50 = v4;
  v5 = type metadata accessor for NewAndFeaturedDataItem(255, &v47);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  v6 = sub_24B51702C();
  sub_24B4C29D8();
  WitnessTable = swift_getWitnessTable();
  *&v47 = v6;
  *(&v47 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  v8 = sub_24B51724C();
  v9 = swift_getWitnessTable();
  *&v47 = v6;
  *(&v47 + 1) = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78, MEMORY[0x277CE1550]);
  v10 = swift_getWitnessTable();
  *&v47 = v5;
  *(&v47 + 1) = v8;
  *&v48 = v9;
  *(&v48 + 1) = v10;
  v11 = sub_24B516DFC();
  v12 = sub_24B516E8C();
  v13 = swift_getWitnessTable();
  v14 = sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8], MEMORY[0x277D097D0]);
  *&v47 = v11;
  *(&v47 + 1) = v12;
  *&v48 = v13;
  *(&v48 + 1) = v14;
  swift_getOpaqueTypeMetadata2();
  v15 = sub_24B516EDC();
  v16 = sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8], MEMORY[0x277D097F0]);
  *&v47 = v11;
  *(&v47 + 1) = v15;
  *&v48 = v13;
  *(&v48 + 1) = v16;
  swift_getOpaqueTypeMetadata2();
  v17 = sub_24B51724C();
  *&v47 = v11;
  *(&v47 + 1) = v12;
  *&v48 = v13;
  *(&v48 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  *&v47 = v11;
  *(&v47 + 1) = v15;
  *&v48 = v13;
  *(&v48 + 1) = v16;
  swift_getOpaqueTypeConformance2();
  v18 = swift_getWitnessTable();
  *&v47 = v17;
  *(&v47 + 1) = v18;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  *&v47 = v17;
  *(&v47 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B4C2B48();
  swift_getWitnessTable();
  v19 = sub_24B51791C();
  v20 = swift_getWitnessTable();
  *&v47 = v19;
  *(&v47 + 1) = v20;
  swift_getOpaqueTypeMetadata2();
  *&v47 = v19;
  *(&v47 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  v21 = sub_24B516F4C();
  v22 = swift_getWitnessTable();
  *&v47 = v21;
  *(&v47 + 1) = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = sub_24B51735C();
  *&v47 = v21;
  *(&v47 + 1) = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v47 = OpaqueTypeMetadata2;
  *(&v47 + 1) = v24;
  *&v48 = OpaqueTypeConformance2;
  *(&v48 + 1) = MEMORY[0x277CDE478];
  v26 = MEMORY[0x277CDE478];
  v27 = swift_getOpaqueTypeMetadata2();
  *&v47 = OpaqueTypeMetadata2;
  *(&v47 + 1) = v24;
  *&v48 = OpaqueTypeConformance2;
  *(&v48 + 1) = v26;
  v28 = swift_getOpaqueTypeConformance2();
  *&v47 = v27;
  *(&v47 + 1) = v28;
  v46 = swift_getOpaqueTypeMetadata2();
  *&v47 = v27;
  *(&v47 + 1) = v28;
  v45 = swift_getOpaqueTypeConformance2();
  *&v47 = v46;
  *(&v47 + 1) = v45;
  swift_getOpaqueTypeMetadata2();
  v29 = sub_24B516F3C();
  v30 = swift_getWitnessTable();
  *&v47 = v29;
  *(&v47 + 1) = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  *&v47 = v29;
  *(&v47 + 1) = v30;
  v32 = swift_getOpaqueTypeConformance2();
  *&v47 = v31;
  *(&v47 + 1) = v32;
  swift_getOpaqueTypeMetadata2();
  *&v47 = v31;
  *(&v47 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v33 = sub_24B516F4C();
  v34 = swift_getWitnessTable();
  *&v47 = v33;
  *(&v47 + 1) = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  *&v47 = v33;
  *(&v47 + 1) = v34;
  v36 = swift_getOpaqueTypeConformance2();
  *&v47 = v35;
  *(&v47 + 1) = v24;
  *&v48 = v36;
  v37 = MEMORY[0x277CDE478];
  *(&v48 + 1) = MEMORY[0x277CDE478];
  v38 = swift_getOpaqueTypeMetadata2();
  *&v47 = v35;
  *(&v47 + 1) = v24;
  *&v48 = v36;
  *(&v48 + 1) = v37;
  v39 = swift_getOpaqueTypeConformance2();
  *&v47 = v38;
  *(&v47 + 1) = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  *&v47 = v38;
  *(&v47 + 1) = v39;
  v41 = swift_getOpaqueTypeConformance2();
  *&v47 = v40;
  *(&v47 + 1) = v41;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  sub_24B51786C();
  sub_24B4C2E64();
  *&v47 = v46;
  *(&v47 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  *&v47 = v40;
  *(&v47 + 1) = v41;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B51780C();
  v42 = sub_24B51702C();
  swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  *&v47 = v42;
  *(&v47 + 1) = v43;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B47FCC4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v34 = *(v0 + 48);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 104);
  v7 = *(v0 + 16);
  v36 = *(v0 + 16);
  v35 = v36;
  *&v37 = v2;
  *(&v37 + 1) = v1;
  v38 = v34;
  v39 = v3;
  v40 = v4;
  v41 = v5;
  v42 = *(v0 + 88);
  v33 = v42;
  v43 = v6;
  v8 = type metadata accessor for NewAndFeaturedView(0, &v36);
  v9 = *(*(v8 - 1) + 80);
  v10 = *(*(v8 - 1) + 64);
  v37 = v34;
  v36 = v35;
  v11 = (v9 + 112) & ~v9;
  *&v38 = v3;
  *(&v38 + 1) = v4;
  v39 = v5;
  v40 = v33;
  v12 = type metadata accessor for NewAndFeaturedDataItem(0, &v36);
  *&v35 = *(*(v12 - 1) + 80);
  v13 = v0 + v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE40, &unk_24B51DB50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_24B51701C();
    (*(*(v14 - 8) + 8))(v0 + v11, v14);
  }

  else
  {
  }

  v32 = (v11 + v10 + v35) & ~v35;
  sub_24B4956A8(*(v13 + v8[29]), *(v13 + v8[29] + 8));
  v15 = v8[30];
  swift_getFunctionTypeMetadata1();
  v16 = sub_24B516C9C();
  (*(*(v16 - 8) + 8))(v13 + v15, v16);
  v17 = v8[31];
  swift_getFunctionTypeMetadata1();
  v18 = sub_24B516C9C();
  (*(*(v18 - 8) + 8))(v13 + v17, v18);
  v19 = v8[32];
  *&v36 = v12;
  swift_getExtendedExistentialTypeMetadata();
  v20 = sub_24B516C9C();
  (*(*(v20 - 8) + 8))(v13 + v19, v20);
  v21 = v8[33];
  v22 = sub_24B516B8C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 8);
  v24(v13 + v21, v22);
  v25 = v8[34];
  if (!(*(v23 + 48))(v13 + v25, 1, v22))
  {
    v24(v13 + v25, v22);
  }

  (*(*(*(&v35 + 1) - 8) + 8))(v0 + v32);
  (*(*(v7 - 8) + 8))(v0 + v32 + v12[21], v7);
  v26 = v12[22];
  v27 = sub_24B516DDC();
  v28 = *(*(v27 - 8) + 8);
  v28(v0 + v32 + v26, v27);
  v28(v0 + v32 + v12[23], v27);

  v29 = v12[30];
  v30 = sub_24B516C2C();
  (*(*(v30 - 8) + 8))(v0 + v32 + v29, v30);
  if (*(v0 + v32 + v12[31] + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24B480208()
{

  return swift_deallocObject();
}

uint64_t sub_24B480244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBE0, &qword_24B51CCA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBD8, &qword_24B51CCA0);
    swift_getFunctionTypeMetadata2();
    v8 = sub_24B516C9C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = *(*(*(a3 + 24) - 8) + 48);
      v14 = a1 + *(a3 + 56);

      return v13(v14, a2);
    }
  }
}

uint64_t sub_24B4803B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBE0, &qword_24B51CCA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBD8, &qword_24B51CCA0);
    swift_getFunctionTypeMetadata2();
    v8 = sub_24B516C9C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = *(*(*(a4 + 24) - 8) + 56);
      v14 = v5 + *(a4 + 56);

      return v13(v14, a2, a2);
    }
  }

  return result;
}

uint64_t sub_24B480528(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCFD8, &qword_24B51E2B0);
  sub_24B51724C();
  sub_24B516CFC();
  sub_24B51724C();
  sub_24B51773C();
  sub_24B51702C();
  sub_24B496A60(&qword_2810ED768, &qword_27EFFCFD8, &qword_24B51E2B0, MEMORY[0x277CDE158]);
  swift_getWitnessTable();
  sub_24B4C6AA4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B480734()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24B48077C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24B480840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24B516B8C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B480970(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24B516B8C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B480AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBD8, &qword_24B51CCA0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24B480BA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBD8, &qword_24B51CCA0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24B480CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B516B8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for VideoAsset(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24B480DEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B516B8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for VideoAsset(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24B480F14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B480F8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24B481008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B516B8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B4810B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24B516B8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B481158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24B516B8C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B481288(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24B516B8C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B4813B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BrowseDetailContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B481478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BrowseDetailContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24B481534()
{

  return swift_deallocObject();
}

uint64_t sub_24B48156C(uint64_t *a1)
{
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD0, &qword_24B524B10);
  sub_24B517C8C();
  sub_24B517C8C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  sub_24B51786C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD8, &qword_24B524B18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFE0, &qword_24B524B20);
  sub_24B4F68A8();
  sub_24B496A60(qword_27EFFE020, &qword_27EFFDFE0, &qword_24B524B20, MEMORY[0x277D84470]);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B51745C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51782C();
  sub_24B51724C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24B481890@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B5170EC();
  *a1 = result;
  return result;
}

uint64_t sub_24B4818E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B5170CC();
  *a1 = result;
  return result;
}

uint64_t sub_24B481940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B4819FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B481AAC()
{

  return swift_deallocObject();
}

uint64_t sub_24B481B30()
{
  v1 = sub_24B516B8C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 312) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24B481C7C()
{

  return swift_deallocObject();
}

uint64_t sub_24B481DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B481E7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24B481FE4(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBD68, &qword_24B5185F0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBD70, &qword_24B5185F8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  if (a2)
  {
    v10 = sub_24B51703C();
    v11 = sub_24B5173CC();
  }

  else
  {
    v11 = sub_24B5173BC();
    v10 = 0;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBD78, &qword_24B518600);
  (*(*(v12 - 8) + 16))(v9, a1, v12);
  v13 = &v9[*(v7 + 36)];
  *v13 = v10;
  v13[8] = v11;
  sub_24B482410(v9, v6);
  swift_storeEnumTagMultiPayload();
  sub_24B482480();
  sub_24B51723C();
  return sub_24B4825B8(v9);
}

unint64_t sub_24B482204()
{
  result = qword_27EFFBD60;
  if (!qword_27EFFBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBD60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BrowseInsetBehaviorModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowseInsetBehaviorModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24B482410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBD70, &qword_24B5185F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B482480()
{
  result = qword_27EFFBD80;
  if (!qword_27EFFBD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFBD70, &qword_24B5185F8);
    sub_24B482554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBD80);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24B482554()
{
  result = qword_27EFFBD88;
  if (!qword_27EFFBD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFBD78, &qword_24B518600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBD88);
  }

  return result;
}

uint64_t sub_24B4825B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBD70, &qword_24B5185F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B482620()
{
  result = qword_27EFFBD90;
  if (!qword_27EFFBD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFBD98, &qword_24B518608);
    sub_24B482480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBD90);
  }

  return result;
}

uint64_t BrowseEditorialGroup.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

FitnessBrowsing::BrowseEditorialGroup __swiftcall BrowseEditorialGroup.init(items:title:)(Swift::OpaquePointer items, Swift::String title)
{
  *v2 = items;
  *(v2 + 8) = title;
  result.title = title;
  result.items = items;
  return result;
}

uint64_t sub_24B4826E8()
{
  v1 = *v0;
  sub_24B517F7C();
  MEMORY[0x24C241D70](v1);
  return sub_24B517FBC();
}

uint64_t sub_24B482730(uint64_t a1)
{
  v2 = *v1;
  sub_24B517F7C();
  MEMORY[0x24C241D70](v2);
  return sub_24B517FBC();
}

uint64_t sub_24B482774()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 0x736D657469;
  }
}

uint64_t sub_24B4827A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B48288C(uint64_t a1)
{
  v2 = sub_24B482B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4828C8(uint64_t a1)
{
  v2 = sub_24B482B30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseEditorialGroup.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDA0, &qword_24B518620);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B482B30();

  sub_24B517FDC();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDB0, &qword_24B518628);
  sub_24B482E2C(&qword_27EFFBDB8, &qword_27EFFBDC0, &protocol conformance descriptor for BrowseLazyItem, MEMORY[0x277D83948]);
  sub_24B517EBC();

  if (!v2)
  {
    v12 = 1;
    sub_24B517E7C();
  }

  return (*(v5 + 8))(v7, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B482B30()
{
  result = qword_27EFFBDA8;
  if (!qword_27EFFBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBDA8);
  }

  return result;
}

uint64_t BrowseEditorialGroup.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDC8, &qword_24B518630);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B482B30();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDB0, &qword_24B518628);
  v14[15] = 0;
  sub_24B482E2C(&qword_27EFFBDD0, &qword_27EFFBDD8, &protocol conformance descriptor for BrowseLazyItem, MEMORY[0x277D83978]);
  sub_24B517E0C();
  v9 = v15;
  v14[14] = 1;
  v10 = sub_24B517DCC();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_24B482E2C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFBDB0, &qword_24B518628);
    sub_24B482EB4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B482EB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BrowseLazyItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static BrowseEditorialGroup.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_24B483BA0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_24B517EEC();
}

uint64_t sub_24B482FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE00, &unk_24B526580);
  MEMORY[0x28223BE20](v6);
  v8 = &v78 - v7;
  v9 = type metadata accessor for BrowseLazyItem(0);
  v109 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v97 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v98 = &v78 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v112 = &v78 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = &v78 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    return 0;
  }

  if (!v19 || a1 == a2)
  {
    return 1;
  }

  v20 = 0;
  v81 = a1 + 32;
  v80 = a2 + 32;
  v105 = v6;
  v93 = v9;
  v94 = v18;
  v79 = v19;
  while (1)
  {
    if (v20 == v19)
    {
      goto LABEL_119;
    }

    v21 = (v81 + 24 * v20);
    v22 = *v21;
    v23 = (v80 + 24 * v20);
    v110 = *v23;
    v111 = v22;
    v24 = *(v22 + 16);
    if (v24 != *(v110 + 16))
    {
      return 0;
    }

    v82 = v20;
    v25 = v21[2];
    v84 = v21[1];
    v26 = v23[2];
    v83 = v23[1];
    v86 = v26;
    v85 = v25;
    if (v24)
    {
      break;
    }

LABEL_101:
    if (v84 == v83 && v85 == v86)
    {
    }

    else
    {
      v75 = sub_24B517EEC();

      if ((v75 & 1) == 0)
      {
        return 0;
      }
    }

    v20 = v82 + 1;
    result = 1;
    v19 = v79;
    if (v82 + 1 == v79)
    {
      return result;
    }
  }

  v27 = *(v109 + 80);
  v28 = v111;

  v29 = v110;

  if (v28 == v29)
  {
    goto LABEL_101;
  }

  v30 = 0;
  v31 = (v27 + 32) & ~v27;
  v107 = v111 + v31;
  v106 = v110 + v31;
  v100 = v24;
  while (1)
  {
    v34 = v105;
    if (v30 >= *(v111 + 16))
    {
      break;
    }

    v35 = *(v109 + 72) * v30;
    result = sub_24B485050(v107 + v35, v18, type metadata accessor for BrowseLazyItem);
    if (v30 >= *(v110 + 16))
    {
      goto LABEL_118;
    }

    v36 = v106 + v35;
    v37 = v112;
    sub_24B485050(v36, v112, type metadata accessor for BrowseLazyItem);
    v38 = &v8[*(v34 + 48)];
    sub_24B485050(v18, v8, type metadata accessor for BrowseLazyItem);
    sub_24B485050(v37, v38, type metadata accessor for BrowseLazyItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v97;
      sub_24B485050(v8, v97, type metadata accessor for BrowseLazyItem);
      v40 = *(v39 + 8);
      v102 = *(v39 + 16);
      v42 = *(v39 + 24);
      v41 = *(v39 + 32);
      v43 = *(v39 + 40);
      v44 = *(v39 + 48);
      v45 = *(v39 + 64);
      v91 = *(v39 + 56);
      v104 = v45;
      v89 = *(v39 + 72);
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        sub_24B48511C(v112, type metadata accessor for BrowseLazyItem);
        v76 = v94;
        v77 = type metadata accessor for BrowseLazyItem;
LABEL_114:
        sub_24B48511C(v76, v77);
        sub_24B48517C(v8);
        goto LABEL_115;
      }

      v46 = v41;
      v47 = v8;
      v48 = *(v38 + 16);
      v95 = *(v38 + 8);
      v108 = v48;
      v49 = *(v38 + 32);
      v90 = *(v38 + 24);
      v99 = v49;
      v50 = *(v38 + 48);
      v92 = *(v38 + 40);
      v103 = v50;
      v51 = *(v38 + 64);
      v88 = *(v38 + 56);
      v101 = v51;
      v87 = *(v38 + 72);
      v52 = *v38;
      v53 = BrowseDisplayStyle.rawValue.getter(*v39);
      v55 = v54;
      if (v53 == BrowseDisplayStyle.rawValue.getter(v52) && v55 == v56)
      {

        goto LABEL_25;
      }

      v60 = sub_24B517EEC();

      if ((v60 & 1) == 0)
      {
        v33 = 0;
        v8 = v47;
        v18 = v94;
        goto LABEL_12;
      }

LABEL_25:
      v8 = v47;
      if (v102)
      {
        v32 = v46;
        if (v108 && (v40 == v95 && v102 == v108 || (sub_24B517EEC() & 1) != 0))
        {
LABEL_30:
          if (v32)
          {
            if (!v99 || (v42 != v90 || v32 != v99) && (sub_24B517EEC() & 1) == 0)
            {
LABEL_49:
              v33 = 0;
              v18 = v94;
              goto LABEL_12;
            }
          }

          else if (v99)
          {
            goto LABEL_49;
          }

          if ((v43 != v92 || v44 != v103) && (sub_24B517EEC() & 1) == 0)
          {
            goto LABEL_49;
          }

          v18 = v94;
          if (v91 == v88 && v104 == v101 || (sub_24B517EEC() & 1) != 0)
          {
            if (v89 <= 3)
            {
              v64 = 0x7974696C61646F6DLL;
              if (v89 != 2)
              {
                v64 = 0x7473696C79616C70;
              }

              v65 = 0xEF73647261632D6CLL;
              if (v89)
              {
                v65 = 0xEF736D6574692D6CLL;
              }

              if (v89 <= 1)
              {
                v62 = 0x6169726F74696465;
              }

              else
              {
                v62 = v64;
              }

              if (v89 <= 1)
              {
                v63 = v65;
              }

              else
              {
                v63 = 0xE800000000000000;
              }

              v61 = v87;
            }

            else
            {
              v61 = v87;
              if (v89 <= 5)
              {
                if (v89 == 4)
                {
                  v62 = 0x6D6172676F7270;
                }

                else
                {
                  v62 = 0x2D72656E69617274;
                }

                if (v89 == 4)
                {
                  v63 = 0xE700000000000000;
                }

                else
                {
                  v63 = 0xEC00000073706974;
                }
              }

              else if (v89 == 6)
              {
                v63 = 0xE700000000000000;
                v62 = 0x72656E69617274;
              }

              else if (v89 == 7)
              {
                v62 = 0x65486C6C65737075;
                v63 = 0xEC00000072656461;
              }

              else
              {
                v63 = 0xE700000000000000;
                v62 = 0x74756F6B726F77;
              }
            }

            if (v61 <= 3)
            {
              v72 = 0x7974696C61646F6DLL;
              if (v61 != 2)
              {
                v72 = 0x7473696C79616C70;
              }

              v73 = 0xEF73647261632D6CLL;
              if (v61)
              {
                v73 = 0xEF736D6574692D6CLL;
              }

              if (v61 <= 1)
              {
                v70 = 0x6169726F74696465;
              }

              else
              {
                v70 = v72;
              }

              if (v61 <= 1)
              {
                v71 = v73;
              }

              else
              {
                v71 = 0xE800000000000000;
              }
            }

            else
            {
              v66 = 0x65486C6C65737075;
              if (v61 != 7)
              {
                v66 = 0x74756F6B726F77;
              }

              v67 = 0xE700000000000000;
              v68 = 0xEC00000072656461;
              if (v61 != 7)
              {
                v68 = 0xE700000000000000;
              }

              if (v61 == 6)
              {
                v66 = 0x72656E69617274;
                v68 = 0xE700000000000000;
              }

              v69 = 0x6D6172676F7270;
              if (v61 != 4)
              {
                v69 = 0x2D72656E69617274;
                v67 = 0xEC00000073706974;
              }

              if (v61 <= 5)
              {
                v70 = v69;
              }

              else
              {
                v70 = v66;
              }

              if (v61 <= 5)
              {
                v71 = v67;
              }

              else
              {
                v71 = v68;
              }
            }

            if (v62 == v70 && v63 == v71)
            {
              v33 = 1;
            }

            else
            {
              v33 = sub_24B517EEC();
            }

            v18 = v94;
          }

          else
          {
            v33 = 0;
          }

LABEL_12:
          sub_24B48511C(v112, type metadata accessor for BrowseLazyItem);
          sub_24B48511C(v18, type metadata accessor for BrowseLazyItem);

          if ((v33 & 1) == 0)
          {
            goto LABEL_111;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v32 = v46;
        if (!v108)
        {
          goto LABEL_30;
        }
      }

      v33 = 0;
      v18 = v94;
      goto LABEL_12;
    }

    v57 = v98;
    sub_24B485050(v8, v98, type metadata accessor for BrowseLazyItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24B48511C(v112, type metadata accessor for BrowseLazyItem);
      sub_24B48511C(v18, type metadata accessor for BrowseLazyItem);
      v77 = type metadata accessor for BrowseItem;
      v76 = v57;
      goto LABEL_114;
    }

    v58 = v96;
    sub_24B4850B8(v38, v96);
    v59 = static BrowseItem.== infix(_:_:)(v57, v58);
    sub_24B48511C(v58, type metadata accessor for BrowseItem);
    sub_24B48511C(v112, type metadata accessor for BrowseLazyItem);
    sub_24B48511C(v18, type metadata accessor for BrowseLazyItem);
    sub_24B48511C(v57, type metadata accessor for BrowseItem);
    if ((v59 & 1) == 0)
    {
LABEL_111:
      sub_24B48511C(v8, type metadata accessor for BrowseLazyItem);
LABEL_115:

      return 0;
    }

LABEL_13:
    ++v30;
    result = sub_24B48511C(v8, type metadata accessor for BrowseLazyItem);
    if (v100 == v30)
    {
      goto LABEL_101;
    }
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
  return result;
}

uint64_t sub_24B483BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE00, &unk_24B526580);
  MEMORY[0x28223BE20](v42);
  v7 = &v36 - v6;
  v43 = type metadata accessor for BrowseLazyItem(0);
  v8 = MEMORY[0x28223BE20](v43);
  v38 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v36 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    return 0;
  }

  if (!v18 || a1 == a2)
  {
    return 1;
  }

  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v40 = *(v15 + 72);
  v41 = &v36 - v16;
  while (1)
  {
    sub_24B485050(v20, v17, type metadata accessor for BrowseLazyItem);
    sub_24B485050(v21, v14, type metadata accessor for BrowseLazyItem);
    v22 = &v7[*(v42 + 48)];
    sub_24B485050(v17, v7, type metadata accessor for BrowseLazyItem);
    sub_24B485050(v14, v22, type metadata accessor for BrowseLazyItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v33 = v37;
    sub_24B485050(v7, v37, type metadata accessor for BrowseLazyItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24B48511C(v33, type metadata accessor for BrowseItem);
      goto LABEL_16;
    }

    v34 = v36;
    sub_24B4850B8(v22, v36);
    v39 = _s15FitnessBrowsing10BrowseItemV2eeoiySbAC_ACtFZ_0(v33, v34);
    sub_24B48511C(v34, type metadata accessor for BrowseItem);
    sub_24B48511C(v33, type metadata accessor for BrowseItem);
    sub_24B48511C(v7, type metadata accessor for BrowseLazyItem);
    v17 = v41;
    if (!v39)
    {
      goto LABEL_17;
    }

LABEL_5:
    sub_24B48511C(v14, type metadata accessor for BrowseLazyItem);
    sub_24B48511C(v17, type metadata accessor for BrowseLazyItem);
    v21 += v40;
    v20 += v40;
    if (!--v18)
    {
      return 1;
    }
  }

  v23 = v38;
  sub_24B485050(v7, v38, type metadata accessor for BrowseLazyItem);
  v24 = v23[3];
  v51[2] = v23[2];
  v52[0] = v24;
  *(v52 + 9) = *(v23 + 57);
  v25 = v23[1];
  v51[0] = *v23;
  v51[1] = v25;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *(v22 + 1);
    v27 = *(v22 + 3);
    v49 = *(v22 + 2);
    v50[0] = v27;
    *(v50 + 9) = *(v22 + 57);
    v28 = *(v22 + 1);
    v48[0] = *v22;
    v48[1] = v28;
    v29 = v23[3];
    v46[2] = v23[2];
    v47[0] = v29;
    *(v47 + 9) = *(v23 + 57);
    v30 = v23[1];
    v46[0] = *v23;
    v46[1] = v30;
    v31 = *(v22 + 3);
    v44[2] = v49;
    v45[0] = v31;
    *(v45 + 9) = *(v22 + 57);
    v44[0] = v48[0];
    v44[1] = v26;
    v32 = _s15FitnessBrowsing21BrowseItemPlaceholderV2eeoiySbAC_ACtFZ_0(v46, v44);
    sub_24B4851E4(v48);
    sub_24B4851E4(v51);
    sub_24B48511C(v7, type metadata accessor for BrowseLazyItem);
    v17 = v41;
    if ((v32 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  sub_24B4851E4(v51);
LABEL_16:
  v17 = v41;
  sub_24B48517C(v7);
LABEL_17:
  sub_24B48511C(v14, type metadata accessor for BrowseLazyItem);
  sub_24B48511C(v17, type metadata accessor for BrowseLazyItem);
  return 0;
}

uint64_t sub_24B48407C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B4840D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseSectionDescriptor(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_24B485050(v13, v10, type metadata accessor for BrowseSectionDescriptor);
        sub_24B485050(v14, v7, type metadata accessor for BrowseSectionDescriptor);
        v16 = static BrowseSectionDescriptor.== infix(_:_:)(v10, v7);
        sub_24B48511C(v7, type metadata accessor for BrowseSectionDescriptor);
        sub_24B48511C(v10, type metadata accessor for BrowseSectionDescriptor);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t BrowseEditorialGroup.hash(into:)(__int128 *a1)
{
  sub_24B4844E8(a1, *v1);

  return sub_24B517B3C();
}

uint64_t BrowseEditorialGroup.hashValue.getter()
{
  v1 = *v0;
  sub_24B517F7C();
  sub_24B4844E8(v3, v1);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B484344()
{
  v1 = *v0;
  sub_24B517F7C();
  sub_24B4844E8(v3, v1);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B4843A8(__int128 *a1)
{
  sub_24B4844E8(a1, *v1);

  return sub_24B517B3C();
}

uint64_t sub_24B4843F8(uint64_t a1)
{
  v2 = *v1;
  sub_24B517F7C();
  sub_24B4844E8(v4, v2);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B484458(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_24B483BA0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_24B517EEC();
}

uint64_t sub_24B4844E8(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseLazyItem(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11;
  v13 = *(a2 + 16);
  result = MEMORY[0x24C241D70](v13);
  if (v13)
  {
    v15 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v16 = *(v7 + 72);
    v25[0] = v16;
    v25[1] = v6;
    do
    {
      sub_24B485050(v15, v12, type metadata accessor for BrowseLazyItem);
      sub_24B485050(v12, v10, type metadata accessor for BrowseLazyItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v18 = *(v10 + 2);
        v19 = *(v10 + 3);
        v20 = *(v10 + 4);
        v27 = *(v10 + 1);
        v28 = v19;
        v21 = *(v10 + 5);
        v31 = *(v10 + 6);
        v23 = *(v10 + 7);
        v22 = *(v10 + 8);
        v29 = v21;
        v30 = v23;
        v33 = v22;
        v24 = *v10;
        MEMORY[0x24C241D70](1);
        BrowseDisplayStyle.rawValue.getter(v24);
        sub_24B517B3C();

        v32 = v18;
        sub_24B517F9C();
        if (v18)
        {
          sub_24B517B3C();
        }

        v16 = v25[0];
        sub_24B517F9C();
        if (v20)
        {
          sub_24B517B3C();
        }

        sub_24B517B3C();
        sub_24B517B3C();
        sub_24B517B3C();
      }

      else
      {
        v17 = v26;
        sub_24B4850B8(v10, v26);
        MEMORY[0x24C241D70](0);
        BrowseItem.hash(into:)(a1);
        sub_24B48511C(v17, type metadata accessor for BrowseItem);
      }

      result = sub_24B48511C(v12, type metadata accessor for BrowseLazyItem);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return result;
}

unint64_t sub_24B484940()
{
  result = qword_27EFFBDE0;
  if (!qword_27EFFBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBDE0);
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

uint64_t sub_24B4849A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24B4849F0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_24B484A58()
{
  result = qword_27EFFBDE8;
  if (!qword_27EFFBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBDE8);
  }

  return result;
}

unint64_t sub_24B484AB0()
{
  result = qword_27EFFBDF0;
  if (!qword_27EFFBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBDF0);
  }

  return result;
}

unint64_t sub_24B484B08()
{
  result = qword_27EFFBDF8;
  if (!qword_27EFFBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBDF8);
  }

  return result;
}

uint64_t sub_24B484B5C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseLazyItem(0);
  v31 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = *(a2 + 16);
  result = MEMORY[0x24C241D70](v12);
  v33 = v12;
  if (v12)
  {
    v14 = 0;
    v32 = a2 + 32;
    v38 = v11;
    while (1)
    {
      v37 = v14;
      v15 = (v32 + 24 * v14);
      v16 = *v15;
      v34 = v15[1];
      v17 = v15[2];
      v18 = *(v16 + 16);
      MEMORY[0x24C241D70](v18);
      v35 = v17;
      v36 = v16;
      if (v18)
      {
        break;
      }

LABEL_4:
      v14 = v37 + 1;
      sub_24B517B3C();

      if (v14 == v33)
      {
        return result;
      }
    }

    v19 = v31;
    v20 = v16 + ((*(v31 + 80) + 32) & ~*(v31 + 80));

    v21 = *(v19 + 72);
    v40 = v21;
    while (1)
    {
      sub_24B485050(v20, v11, type metadata accessor for BrowseLazyItem);
      sub_24B485050(v11, v9, type metadata accessor for BrowseLazyItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v22 = v39;
      sub_24B4850B8(v9, v39);
      MEMORY[0x24C241D70](0);
      BrowseItem.hash(into:)(a1);
      sub_24B48511C(v22, type metadata accessor for BrowseItem);
LABEL_8:
      sub_24B48511C(v11, type metadata accessor for BrowseLazyItem);
      v20 += v21;
      if (!--v18)
      {
        goto LABEL_4;
      }
    }

    v23 = *(v9 + 2);
    v24 = *(v9 + 3);
    v25 = *(v9 + 4);
    v41 = *(v9 + 1);
    v42 = v24;
    v26 = *(v9 + 6);
    v28 = *(v9 + 7);
    v27 = *(v9 + 8);
    v43 = *(v9 + 5);
    v44 = v28;
    v46 = v27;
    v47 = v26;
    v29 = *v9;
    MEMORY[0x24C241D70](1);
    BrowseDisplayStyle.rawValue.getter(v29);
    sub_24B517B3C();

    v45 = v23;
    if (v23)
    {
      sub_24B517F9C();
      sub_24B517B3C();
      v11 = v38;
      if (v25)
      {
LABEL_12:
        sub_24B517F9C();
        sub_24B517B3C();
LABEL_15:
        v21 = v40;
        sub_24B517B3C();
        sub_24B517B3C();
        sub_24B517B3C();

        goto LABEL_8;
      }
    }

    else
    {
      sub_24B517F9C();
      v11 = v38;
      if (v25)
      {
        goto LABEL_12;
      }
    }

    sub_24B517F9C();
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_24B485050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4850B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B48511C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B48517C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE00, &unk_24B526580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B485248(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4C676E69646E6570;
    v6 = 0x50676E69646E6570;
    if (a1 != 2)
    {
      v6 = 0x676E6973756170;
    }

    if (a1)
    {
      v5 = 0x676E6964616F6CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x64656C696166;
    v2 = 0xD000000000000013;
    if (a1 != 7)
    {
      v2 = 0x696C6C65636E6163;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x646573756170;
    if (a1 != 4)
    {
      v3 = 0x6574656C706D6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B485380(uint64_t a1)
{
  v2 = sub_24B4861BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4853BC(uint64_t a1)
{
  v2 = sub_24B4861BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B485400@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B486580(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B485434(uint64_t a1)
{
  v2 = sub_24B486168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B485470(uint64_t a1)
{
  v2 = sub_24B486168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4854AC(uint64_t a1)
{
  v2 = sub_24B4862B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4854E8(uint64_t a1)
{
  v2 = sub_24B4862B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B485524(uint64_t a1)
{
  v2 = sub_24B486264();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B485560(uint64_t a1)
{
  v2 = sub_24B486264();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B48559C(uint64_t a1)
{
  v2 = sub_24B486408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4855D8(uint64_t a1)
{
  v2 = sub_24B486408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B485614(uint64_t a1)
{
  v2 = sub_24B48630C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B485650(uint64_t a1)
{
  v2 = sub_24B48630C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B48568C(uint64_t a1)
{
  v2 = sub_24B486360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4856C8(uint64_t a1)
{
  v2 = sub_24B486360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B485704(uint64_t a1)
{
  v2 = sub_24B486210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B485740(uint64_t a1)
{
  v2 = sub_24B486210();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B48577C(uint64_t a1)
{
  v2 = sub_24B48645C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4857B8(uint64_t a1)
{
  v2 = sub_24B48645C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4857F4(uint64_t a1)
{
  v2 = sub_24B4863B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B485830(uint64_t a1)
{
  v2 = sub_24B4863B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseItemAssetLoadStatus.encode(to:)(void *a1, int a2)
{
  LODWORD(v68) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE08, &qword_24B518860);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE10, &qword_24B518868);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE18, &qword_24B518870);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v44 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE20, &qword_24B518878);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v44 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE28, &qword_24B518880);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v44 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE30, &qword_24B518888);
  v67 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v66 = &v44 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE38, &qword_24B518890);
  v65 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v64 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE40, &qword_24B518898);
  v63 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE48, &qword_24B5188A0);
  v62 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE50, &qword_24B5188A8);
  v19 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v21 = &v44 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B486168();
  v69 = v21;
  sub_24B517FDC();
  v22 = (v19 + 8);
  v23 = v68;
  if (v68 <= 3u)
  {
    v61 = v16;
    v68 = v22;
    v30 = v62;
    v29 = v63;
    v31 = v64;
    v32 = v65;
    v33 = v66;
    v34 = v67;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v73 = 2;
        sub_24B4863B4();
        v38 = v31;
        v40 = v69;
        v39 = v70;
        sub_24B517E3C();
        (*(v32 + 8))(v38, v45);
      }

      else
      {
        v74 = 3;
        sub_24B486360();
        v42 = v33;
        v40 = v69;
        v39 = v70;
        sub_24B517E3C();
        (*(v34 + 8))(v42, v46);
      }
    }

    else
    {
      if (!v23)
      {
        v71[0] = 0;
        sub_24B48645C();
        v35 = v69;
        v36 = v70;
        sub_24B517E3C();
        (*(v30 + 8))(v18, v61);
        return (*v68)(v35, v36);
      }

      v72 = 1;
      sub_24B486408();
      v40 = v69;
      v39 = v70;
      sub_24B517E3C();
      (*(v29 + 8))(v15, v13);
    }

    return (*v68)(v40, v39);
  }

  else
  {
    if (v68 <= 5u)
    {
      if (v68 == 4)
      {
        v75 = 4;
        sub_24B48630C();
        v41 = v47;
        v25 = v69;
        v26 = v70;
        sub_24B517E3C();
        (*(v48 + 8))(v41, v49);
      }

      else
      {
        v76 = 5;
        sub_24B4862B8();
        v43 = v50;
        v25 = v69;
        v26 = v70;
        sub_24B517E3C();
        (*(v51 + 8))(v43, v52);
      }
    }

    else
    {
      if (v68 == 6)
      {
        v77 = 6;
        sub_24B486264();
        v24 = v53;
        v25 = v69;
        v26 = v70;
        sub_24B517E3C();
        v28 = v54;
        v27 = v55;
      }

      else if (v68 == 7)
      {
        v78 = 7;
        sub_24B486210();
        v24 = v56;
        v25 = v69;
        v26 = v70;
        sub_24B517E3C();
        v28 = v57;
        v27 = v58;
      }

      else
      {
        v79 = 8;
        sub_24B4861BC();
        v24 = v59;
        v25 = v69;
        v26 = v70;
        sub_24B517E3C();
        v28 = v60;
        v27 = v61;
      }

      (*(v28 + 8))(v24, v27);
    }

    return (*v22)(v25, v26);
  }
}

unint64_t sub_24B486168()
{
  result = qword_27EFFBE58;
  if (!qword_27EFFBE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE58);
  }

  return result;
}

unint64_t sub_24B4861BC()
{
  result = qword_27EFFBE60;
  if (!qword_27EFFBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE60);
  }

  return result;
}

unint64_t sub_24B486210()
{
  result = qword_27EFFBE68;
  if (!qword_27EFFBE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE68);
  }

  return result;
}

unint64_t sub_24B486264()
{
  result = qword_27EFFBE70;
  if (!qword_27EFFBE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE70);
  }

  return result;
}

unint64_t sub_24B4862B8()
{
  result = qword_27EFFBE78;
  if (!qword_27EFFBE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE78);
  }

  return result;
}

unint64_t sub_24B48630C()
{
  result = qword_27EFFBE80;
  if (!qword_27EFFBE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE80);
  }

  return result;
}

unint64_t sub_24B486360()
{
  result = qword_27EFFBE88;
  if (!qword_27EFFBE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE88);
  }

  return result;
}

unint64_t sub_24B4863B4()
{
  result = qword_27EFFBE90;
  if (!qword_27EFFBE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE90);
  }

  return result;
}

unint64_t sub_24B486408()
{
  result = qword_27EFFBE98;
  if (!qword_27EFFBE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE98);
  }

  return result;
}

unint64_t sub_24B48645C()
{
  result = qword_27EFFBEA0;
  if (!qword_27EFFBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEA0);
  }

  return result;
}

char *sub_24B4864C8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B486878(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t BrowseItemAssetLoadStatus.hashValue.getter(unsigned __int8 a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1);
  return sub_24B517FBC();
}

uint64_t sub_24B486580(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C676E69646E6570 && a2 == 0xEB0000000064616FLL;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50676E69646E6570 && a2 == 0xEC00000065737561 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6973756170 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_24B517EEC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B5274B0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x696C6C65636E6163 && a2 == 0xEA0000000000676ELL)
  {

    return 8;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

char *sub_24B486878(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF58, &qword_24B519160);
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v70 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF60, &qword_24B519168);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF68, &qword_24B519170);
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF70, &qword_24B519178);
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v47 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF78, &qword_24B519180);
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v72 = &v47 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF80, &qword_24B519188);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v71 = &v47 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF88, &qword_24B519190);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v67 = &v47 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF90, &qword_24B519198);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF98, &qword_24B5191A0);
  v50 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA0, &qword_24B5191A8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v22 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24B486168();
  v23 = v75;
  sub_24B517FCC();
  if (!v23)
  {
    v48 = v17;
    v47 = v15;
    v24 = v14;
    v25 = v71;
    v26 = v72;
    v27 = v73;
    v75 = v19;
    v49 = v21;
    v28 = sub_24B517E1C();
    v29 = (2 * *(v28 + 16)) | 1;
    v76 = v28;
    v77 = v28 + 32;
    v78 = 0;
    v79 = v29;
    v30 = sub_24B4A25C8();
    if (v30 != 9 && v78 == v79 >> 1)
    {
      v21 = v30;
      if (v30 <= 3u)
      {
        v31 = v49;
        if (v30 > 1u)
        {
          if (v30 == 2)
          {
            v80 = 2;
            sub_24B4863B4();
            v45 = v67;
            sub_24B517D7C();
            (*(v53 + 8))(v45, v54);
          }

          else
          {
            v80 = 3;
            sub_24B486360();
            sub_24B517D7C();
            (*(v55 + 8))(v25, v56);
          }

          (*(v75 + 8))(v31, v18);
          goto LABEL_29;
        }

        v32 = v75;
        if (v30)
        {
          v80 = 1;
          sub_24B486408();
          sub_24B517D7C();
          v42 = *(v51 + 8);
          v43 = v24;
          v44 = &v81;
        }

        else
        {
          v80 = 0;
          sub_24B48645C();
          v41 = v48;
          sub_24B517D7C();
          v42 = *(v50 + 8);
          v43 = v41;
          v44 = &v79;
        }
      }

      else
      {
        v31 = v49;
        if (v30 > 5u)
        {
          v32 = v75;
          if (v30 == 6)
          {
            v80 = 6;
            sub_24B486264();
            v33 = v68;
            sub_24B517D7C();
            v35 = v61;
            v34 = v62;
          }

          else
          {
            if (v30 != 7)
            {
              v80 = 8;
              sub_24B4861BC();
              v46 = v70;
              sub_24B517D7C();
              (*(v65 + 8))(v46, v66);
LABEL_28:
              (*(v32 + 8))(v31, v18);
LABEL_29:
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1(v74);
              return v21;
            }

            v80 = 7;
            sub_24B486210();
            v33 = v69;
            sub_24B517D7C();
            v35 = v63;
            v34 = v64;
          }

          goto LABEL_26;
        }

        v32 = v75;
        if (v30 != 4)
        {
          v80 = 5;
          sub_24B4862B8();
          v33 = v27;
          sub_24B517D7C();
          v35 = v59;
          v34 = v60;
LABEL_26:
          v42 = *(v35 + 8);
          v43 = v33;
          goto LABEL_27;
        }

        v80 = 4;
        sub_24B48630C();
        sub_24B517D7C();
        v42 = *(v58 + 8);
        v43 = v26;
        v44 = &v82;
      }

      v34 = *(v44 - 32);
LABEL_27:
      v42(v43, v34);
      goto LABEL_28;
    }

    v36 = sub_24B517D0C();
    v21 = swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
    *v38 = &type metadata for BrowseItemAssetLoadStatus;
    v39 = v49;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    (*(v75 + 8))(v39, v18);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v74);
  return v21;
}

unint64_t sub_24B487340()
{
  result = qword_27EFFBEA8;
  if (!qword_27EFFBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BrowseItemReferenceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowseItemReferenceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B487588()
{
  result = qword_27EFFBEB0;
  if (!qword_27EFFBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEB0);
  }

  return result;
}

unint64_t sub_24B4875E0()
{
  result = qword_27EFFBEB8;
  if (!qword_27EFFBEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEB8);
  }

  return result;
}

unint64_t sub_24B487638()
{
  result = qword_27EFFBEC0;
  if (!qword_27EFFBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEC0);
  }

  return result;
}

unint64_t sub_24B487690()
{
  result = qword_27EFFBEC8;
  if (!qword_27EFFBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEC8);
  }

  return result;
}

unint64_t sub_24B4876E8()
{
  result = qword_27EFFBED0;
  if (!qword_27EFFBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBED0);
  }

  return result;
}

unint64_t sub_24B487740()
{
  result = qword_27EFFBED8;
  if (!qword_27EFFBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBED8);
  }

  return result;
}

unint64_t sub_24B487798()
{
  result = qword_27EFFBEE0;
  if (!qword_27EFFBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEE0);
  }

  return result;
}

unint64_t sub_24B4877F0()
{
  result = qword_27EFFBEE8;
  if (!qword_27EFFBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEE8);
  }

  return result;
}

unint64_t sub_24B487848()
{
  result = qword_27EFFBEF0;
  if (!qword_27EFFBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEF0);
  }

  return result;
}

unint64_t sub_24B4878A0()
{
  result = qword_27EFFBEF8;
  if (!qword_27EFFBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEF8);
  }

  return result;
}

unint64_t sub_24B4878F8()
{
  result = qword_27EFFBF00;
  if (!qword_27EFFBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF00);
  }

  return result;
}

unint64_t sub_24B487950()
{
  result = qword_27EFFBF08;
  if (!qword_27EFFBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF08);
  }

  return result;
}

unint64_t sub_24B4879A8()
{
  result = qword_27EFFBF10;
  if (!qword_27EFFBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF10);
  }

  return result;
}

unint64_t sub_24B487A00()
{
  result = qword_27EFFBF18;
  if (!qword_27EFFBF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF18);
  }

  return result;
}

unint64_t sub_24B487A58()
{
  result = qword_27EFFBF20;
  if (!qword_27EFFBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF20);
  }

  return result;
}

unint64_t sub_24B487AB0()
{
  result = qword_27EFFBF28;
  if (!qword_27EFFBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF28);
  }

  return result;
}

unint64_t sub_24B487B08()
{
  result = qword_27EFFBF30;
  if (!qword_27EFFBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF30);
  }

  return result;
}

unint64_t sub_24B487B60()
{
  result = qword_27EFFBF38;
  if (!qword_27EFFBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF38);
  }

  return result;
}

unint64_t sub_24B487BB8()
{
  result = qword_27EFFBF40;
  if (!qword_27EFFBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF40);
  }

  return result;
}

unint64_t sub_24B487C10()
{
  result = qword_27EFFBF48;
  if (!qword_27EFFBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF48);
  }

  return result;
}

unint64_t sub_24B487C68()
{
  result = qword_27EFFBF50;
  if (!qword_27EFFBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF50);
  }

  return result;
}

uint64_t NewAndFeaturedSectionMetrics.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NewAndFeaturedSectionMetrics.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t NewAndFeaturedSectionMetrics.targetType.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall NewAndFeaturedSectionMetrics.init(identifier:index:name:targetType:type:metadata:)(FitnessBrowsing::NewAndFeaturedSectionMetrics *__return_ptr retstr, Swift::String identifier, Swift::Int index, Swift::String name, Swift::String targetType, Swift::String type, Swift::OpaquePointer metadata)
{
  retstr->identifier = identifier;
  retstr->index = index;
  retstr->name = name;
  retstr->targetType = targetType;
  retstr->type = type;
  retstr->metadata = metadata;
}

uint64_t sub_24B487DA0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_24B4A054C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_24B517EEC();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B487F44()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7954746567726174;
  v4 = 1701869940;
  if (v1 != 4)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7865646E69;
  if (v1 != 1)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B487FF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B489350(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B488024(uint64_t a1)
{
  v2 = sub_24B488EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B488060(uint64_t a1)
{
  v2 = sub_24B488EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewAndFeaturedSectionMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFB0, &qword_24B5191C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - v5;
  v7 = v1[2];
  v17[6] = v1[3];
  v17[7] = v7;
  v8 = v1[4];
  v17[4] = v1[5];
  v17[5] = v8;
  v9 = v1[6];
  v17[1] = v1[7];
  v10 = v1[9];
  v17[2] = v1[8];
  v17[3] = v9;
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_24B488EB0();
  sub_24B517FDC();
  v23 = 0;
  v15 = v17[8];
  sub_24B517E7C();
  if (!v15)
  {
    v22 = 1;
    sub_24B517EAC();
    v21 = 2;
    sub_24B517E7C();
    v20 = 3;
    sub_24B517E7C();
    v19 = 4;
    sub_24B517E7C();
    v17[9] = v10;
    v18 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFC0, &qword_24B5191C8);
    sub_24B488F04(&qword_27EFFBFC8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_24B517EBC();
  }

  return (*(v4 + 8))(v6, v14);
}

uint64_t NewAndFeaturedSectionMetrics.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 72);
  sub_24B517B3C();
  MEMORY[0x24C241D70](v3);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();

  return sub_24B488BDC(a1, v4);
}

uint64_t NewAndFeaturedSectionMetrics.hashValue.getter()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 72);
  sub_24B517F7C();
  sub_24B517B3C();
  MEMORY[0x24C241D70](v1);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B488BDC(v4, v3);
  return sub_24B517FBC();
}

uint64_t NewAndFeaturedSectionMetrics.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFD0, &qword_24B5191D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B488EB0();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_24B517DCC();
  v11 = v10;
  LOBYTE(v36[0]) = 1;
  v30 = sub_24B517DFC();
  LOBYTE(v36[0]) = 2;
  v27 = sub_24B517DCC();
  v29 = v12;
  LOBYTE(v36[0]) = 3;
  v13 = sub_24B517DCC();
  v28 = v14;
  v24 = v13;
  LOBYTE(v36[0]) = 4;
  v26 = 0;
  v23 = sub_24B517DCC();
  v25 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFC0, &qword_24B5191C8);
  v37[0] = 5;
  sub_24B488F04(&qword_27EFFBFD8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_24B517E0C();
  (*(v6 + 8))(v8, v5);
  v26 = v38;
  *&v31 = v9;
  *(&v31 + 1) = v11;
  v16 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v27;
  v17 = v29;
  *&v33 = v29;
  *(&v33 + 1) = v24;
  v18 = v28;
  *&v34 = v28;
  *(&v34 + 1) = v23;
  v19 = v25;
  *&v35 = v25;
  *(&v35 + 1) = v38;
  v20 = v34;
  a2[2] = v33;
  a2[3] = v20;
  v21 = v32;
  *a2 = v31;
  a2[1] = v21;
  a2[4] = v35;
  sub_24B488F70(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v9;
  v36[1] = v11;
  v36[2] = v16;
  v36[3] = v27;
  v36[4] = v17;
  v36[5] = v24;
  v36[6] = v18;
  v36[7] = v23;
  v36[8] = v19;
  v36[9] = v26;
  return sub_24B488FA8(v36);
}

uint64_t sub_24B488970()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 72);
  sub_24B517F7C();
  sub_24B517B3C();
  MEMORY[0x24C241D70](v1);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B488BDC(v4, v3);
  return sub_24B517FBC();
}

uint64_t sub_24B488A38(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 72);
  sub_24B517B3C();
  MEMORY[0x24C241D70](v3);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();

  return sub_24B488BDC(a1, v4);
}

uint64_t sub_24B488AE4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 72);
  sub_24B517F7C();
  sub_24B517B3C();
  MEMORY[0x24C241D70](v2);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B488BDC(v5, v4);
  return sub_24B517FBC();
}

uint64_t NewAndFeaturedSectionMetrics.identifierType.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_24B488BDC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C241D70](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_24B517B3C();

        sub_24B517B3C();

        result = sub_24B517FBC();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15FitnessBrowsing28NewAndFeaturedSectionMetricsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v14 = a1[9];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v17 = a2[7];
  v18 = a1[7];
  v15 = a2[8];
  v16 = a1[8];
  v13 = a2[9];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24B517EEC() & 1) == 0 || v2 != v8 || (v3 != v7 || v4 != v9) && (sub_24B517EEC() & 1) == 0 || (v5 != v10 || v6 != v11) && (sub_24B517EEC() & 1) == 0 || (v18 != v17 || v16 != v15) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  return sub_24B487DA0(v14, v13);
}

unint64_t sub_24B488EB0()
{
  result = qword_27EFFBFB8;
  if (!qword_27EFFBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBFB8);
  }

  return result;
}

uint64_t sub_24B488F04(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFBFC0, &qword_24B5191C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B488FDC()
{
  result = qword_27EFFBFE0;
  if (!qword_27EFFBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBFE0);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24B48904C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24B489094(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NewAndFeaturedSectionMetrics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewAndFeaturedSectionMetrics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B48924C()
{
  result = qword_27EFFBFE8;
  if (!qword_27EFFBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBFE8);
  }

  return result;
}

unint64_t sub_24B4892A4()
{
  result = qword_27EFFBFF0;
  if (!qword_27EFFBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBFF0);
  }

  return result;
}

unint64_t sub_24B4892FC()
{
  result = qword_27EFFBFF8;
  if (!qword_27EFFBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBFF8);
  }

  return result;
}

uint64_t sub_24B489350(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954746567726174 && a2 == 0xEA00000000006570 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id static NSBundle.browse.getter()
{
  type metadata accessor for BrowseBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

unint64_t BrowseFontTextStyle.rawValue.getter(char a1)
{
  result = 0x746954656772616CLL;
  switch(a1)
  {
    case 1:
      result = 0x72614C6172747865;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x31656C746974;
      break;
    case 4:
      result = 0x32656C746974;
      break;
    case 5:
      result = 0x33656C746974;
      break;
    case 6:
      result = 0x656E696C64616568;
      break;
    case 7:
      result = 0x6C64616568627573;
      break;
    case 8:
      result = 2036625250;
      break;
    case 9:
      result = 0x74756F6C6C6163;
      break;
    case 10:
      result = 0x65746F6E746F6F66;
      break;
    case 11:
      result = 0x316E6F6974706163;
      break;
    case 12:
      result = 0x326E6F6974706163;
      break;
    case 13:
      result = 0x336E6F6974706163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24B489778(char *a1, char *a2)
{
  v2 = *a2;
  v3 = BrowseFontTextStyle.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == BrowseFontTextStyle.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B517EEC();
  }

  return v8 & 1;
}

unint64_t sub_24B489800@<X0>(Swift::String *a1@<X0>, FitnessBrowsing::BrowseFontTextStyle_optional *a2@<X8>)
{
  result = _s15FitnessBrowsing19BrowseFontTextStyleO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_24B489830@<X0>(unint64_t *a1@<X8>)
{
  result = BrowseFontTextStyle.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B48991C()
{
  v1 = *v0;
  sub_24B517F7C();
  BrowseFontTextStyle.rawValue.getter(v1);
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B489980(uint64_t a1)
{
  BrowseFontTextStyle.rawValue.getter(*v1);
  sub_24B517B3C();
}

uint64_t sub_24B4899D4(uint64_t a1)
{
  v2 = *v1;
  sub_24B517F7C();
  BrowseFontTextStyle.rawValue.getter(v2);
  sub_24B517B3C();

  return sub_24B517FBC();
}

unint64_t _s15FitnessBrowsing19BrowseFontTextStyleO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B517D6C();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B489A84()
{
  result = qword_27EFFC000;
  if (!qword_27EFFC000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC008, &qword_24B5194A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC000);
  }

  return result;
}

unint64_t sub_24B489AEC()
{
  result = qword_27EFFC010;
  if (!qword_27EFFC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC010);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BrowseFontTextStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowseFontTextStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B489C90()
{
  result = qword_27EFFC018;
  if (!qword_27EFFC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC018);
  }

  return result;
}

uint64_t EditorialCollection.footnote.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t EditorialCollection.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t EditorialCollection.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t EditorialCollection.recencyTag.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t EditorialCollection.sharingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditorialCollection(0) + 36);
  v4 = sub_24B516BAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EditorialCollection.init(features:footnote:identifier:name:recencyTag:sharingURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  v12 = *(type metadata accessor for EditorialCollection(0) + 36);
  v13 = sub_24B516BAC();
  v14 = *(*(v13 - 8) + 32);

  return v14(&a9[v12], a11, v13);
}

uint64_t sub_24B489EBC()
{
  v1 = *v0;
  v2 = 0x7365727574616566;
  v3 = 1701667182;
  v4 = 0x5479636E65636572;
  if (v1 != 4)
  {
    v4 = 0x55676E6972616873;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746F6E746F6F66;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B489F78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B48B438(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B489FA0(uint64_t a1)
{
  v2 = sub_24B48A2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B489FDC(uint64_t a1)
{
  v2 = sub_24B48A2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialCollection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC020, &qword_24B5195A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B48A2F0();
  sub_24B517FDC();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC030, &qword_24B5195A8);
  sub_24B48A8AC(&qword_27EFFC038, sub_24B48A344, MEMORY[0x277D83B50]);
  sub_24B517EBC();
  if (!v2)
  {
    v10[6] = 1;
    sub_24B517E4C();
    v10[5] = 2;
    sub_24B517E7C();
    v10[4] = 3;
    sub_24B517E4C();
    v10[3] = 4;
    sub_24B517E4C();
    type metadata accessor for EditorialCollection(0);
    v10[2] = 5;
    sub_24B516BAC();
    sub_24B48B648(&qword_27EFFC048, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_24B517EBC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B48A2F0()
{
  result = qword_27EFFC028;
  if (!qword_27EFFC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC028);
  }

  return result;
}

unint64_t sub_24B48A344()
{
  result = qword_27EFFC040;
  if (!qword_27EFFC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC040);
  }

  return result;
}

uint64_t EditorialCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_24B516BAC();
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC050, &qword_24B5195B0);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for EditorialCollection(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24B48A2F0();
  v13 = v30;
  sub_24B517FCC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v25 = v5;
  v30 = v3;
  v14 = v28;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC030, &qword_24B5195A8);
  v37 = 0;
  sub_24B48A8AC(&qword_27EFFC058, sub_24B48A924, MEMORY[0x277D83B70]);
  v16 = v29;
  sub_24B517E0C();
  *v11 = v38;
  v36 = 1;
  v17 = v14;
  v11[1] = sub_24B517D9C();
  v11[2] = v18;
  v35 = 2;
  v11[3] = sub_24B517DCC();
  v11[4] = v19;
  v34 = 3;
  v11[5] = sub_24B517D9C();
  v11[6] = v20;
  v33 = 4;
  v11[7] = sub_24B517D9C();
  v11[8] = v21;
  v32 = 5;
  sub_24B48B648(&qword_27EFFC068, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v22 = v25;
  v23 = v30;
  sub_24B517E0C();
  (*(v17 + 8))(v8, v16);
  (*(v26 + 32))(v15 + *(v9 + 36), v22, v23);
  sub_24B48A978(v15, v27);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_24B48A9DC(v15);
}

uint64_t sub_24B48A8AC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC030, &qword_24B5195A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B48A924()
{
  result = qword_27EFFC060;
  if (!qword_27EFFC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC060);
  }

  return result;
}

uint64_t sub_24B48A978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialCollection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B48A9DC(uint64_t a1)
{
  v2 = type metadata accessor for EditorialCollection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EditorialCollection.hash(into:)(__int128 *a1)
{
  sub_24B48AE1C(a1, *v1);
  if (v1[2])
  {
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  sub_24B517B3C();
  if (!v1[6])
  {
    sub_24B517F9C();
    if (v1[8])
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_24B517F9C();
    goto LABEL_9;
  }

  sub_24B517F9C();
  sub_24B517B3C();
  if (!v1[8])
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_24B517F9C();
  sub_24B517B3C();
LABEL_9:
  type metadata accessor for EditorialCollection(0);
  sub_24B516BAC();
  sub_24B48B648(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_24B517A9C();
}

uint64_t EditorialCollection.hashValue.getter()
{
  sub_24B517F7C();
  EditorialCollection.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B48AC00()
{
  sub_24B517F7C();
  EditorialCollection.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B48AC44(uint64_t a1)
{
  sub_24B517F7C();
  EditorialCollection.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t sub_24B48AC84(__int128 *a1, uint64_t a2)
{
  sub_24B517FBC();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_9:
    sub_24B517F7C();
    v5 &= v5 - 1;
    sub_24B517B3C();

    result = sub_24B517FBC();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C241D70](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B48AE1C(__int128 *a1, uint64_t a2)
{
  result = sub_24B517FBC();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_24B517F7C();
    MEMORY[0x24C241D70](v12);
    result = sub_24B517FBC();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x24C241D70](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B48AF48(__int128 *a1, uint64_t a2)
{
  v4 = sub_24B516C6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = sub_24B517FBC();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_24B48B648(&qword_2810EED58, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
    v21 = sub_24B517A8C();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x24C241D70](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15FitnessBrowsing19EditorialCollectionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_24B512FB8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5 || (a1[1] != a2[1] || v4 != v5) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((a1[3] != a2[3] || a1[4] != a2[4]) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];
  if (v6)
  {
    if (!v7 || (a1[5] != a2[5] || v6 != v7) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[8];
  v9 = a2[8];
  if (v8)
  {
    if (v9 && (a1[7] == a2[7] && v8 == v9 || (sub_24B517EEC() & 1) != 0))
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_24:
  type metadata accessor for EditorialCollection(0);

  return sub_24B516B9C();
}

unint64_t sub_24B48B334()
{
  result = qword_27EFFC078;
  if (!qword_27EFFC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC078);
  }

  return result;
}

unint64_t sub_24B48B38C()
{
  result = qword_27EFFC080;
  if (!qword_27EFFC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC080);
  }

  return result;
}

unint64_t sub_24B48B3E4()
{
  result = qword_27EFFC088;
  if (!qword_27EFFC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC088);
  }

  return result;
}

uint64_t sub_24B48B438(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365727574616566 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xE800000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5479636E65636572 && a2 == 0xEA00000000006761 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x55676E6972616873 && a2 == 0xEA00000000004C52)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B48B648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void __swiftcall NewAndFeaturedLocalState.init(sectionMetrics:)(FitnessBrowsing::NewAndFeaturedLocalState *__return_ptr retstr, FitnessBrowsing::NewAndFeaturedSectionMetrics *sectionMetrics)
{
  v2 = *&sectionMetrics->targetType._object;
  *&retstr->sectionMetrics.name._object = *&sectionMetrics->name._object;
  *&retstr->sectionMetrics.targetType._object = v2;
  *&retstr->sectionMetrics.type._object = *&sectionMetrics->type._object;
  v3 = *&sectionMetrics->index;
  retstr->sectionMetrics.identifier = sectionMetrics->identifier;
  *&retstr->sectionMetrics.index = v3;
}

uint64_t sub_24B48B6B4()
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](0);
  return sub_24B517FBC();
}

uint64_t sub_24B48B6F8(uint64_t a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](0);
  return sub_24B517FBC();
}

uint64_t sub_24B48B75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D6E6F6974636573 && a2 == 0xEE00736369727465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B48B7EC(uint64_t a1)
{
  v2 = sub_24B48BA24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B48B828(uint64_t a1)
{
  v2 = sub_24B48BA24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewAndFeaturedLocalState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC090, &qword_24B5197C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = v1[3];
  v18 = v1[2];
  v19 = v7;
  v20 = v1[4];
  v8 = v1[1];
  v16 = *v1;
  v17 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B488F70(&v16, &v11);
  sub_24B48BA24();
  sub_24B517FDC();
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v11 = v16;
  v12 = v17;
  sub_24B48BA78();
  sub_24B517EBC();
  v10[2] = v13;
  v10[3] = v14;
  v10[4] = v15;
  v10[1] = v12;
  v10[0] = v11;
  sub_24B488FA8(v10);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B48BA24()
{
  result = qword_27EFFC098;
  if (!qword_27EFFC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC098);
  }

  return result;
}

unint64_t sub_24B48BA78()
{
  result = qword_27EFFC0A0;
  if (!qword_27EFFC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0A0);
  }

  return result;
}

uint64_t NewAndFeaturedLocalState.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC0A8, &qword_24B5197C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B48BA24();
  sub_24B517FCC();
  if (!v2)
  {
    sub_24B48BC4C();
    sub_24B517E0C();
    (*(v6 + 8))(v8, v5);
    v9 = v12[3];
    a2[2] = v12[2];
    a2[3] = v9;
    a2[4] = v12[4];
    v10 = v12[1];
    *a2 = v12[0];
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B48BC4C()
{
  result = qword_27EFFC0B0;
  if (!qword_27EFFC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0B0);
  }

  return result;
}

uint64_t static NewAndFeaturedLocalState.== infix(_:_:)(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v4 = a1[3];
  v25 = a1[4];
  v5 = a1[1];
  v22[0] = *a1;
  v22[1] = v5;
  v6 = a2[1];
  v7 = a2[3];
  v27 = a2[2];
  v28 = v7;
  v8 = a2[3];
  v29 = a2[4];
  v9 = a2[1];
  v26[0] = *a2;
  v26[1] = v9;
  v19 = v23;
  v20 = v4;
  v21 = a1[4];
  v17 = v22[0];
  v18 = v2;
  v14 = v27;
  v15 = v8;
  v16 = a2[4];
  v12 = v26[0];
  v13 = v6;
  sub_24B488F70(v22, v31);
  sub_24B488F70(v26, v31);
  v10 = _s15FitnessBrowsing28NewAndFeaturedSectionMetricsV2eeoiySbAC_ACtFZ_0(&v17, &v12);
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[0] = v12;
  v30[1] = v13;
  sub_24B488FA8(v30);
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v31[0] = v17;
  v31[1] = v18;
  sub_24B488FA8(v31);
  return v10 & 1;
}

uint64_t NewAndFeaturedLocalState.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 72);
  sub_24B517B3C();
  MEMORY[0x24C241D70](v3);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();

  return sub_24B488BDC(a1, v4);
}

uint64_t NewAndFeaturedLocalState.hashValue.getter()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 72);
  sub_24B517F7C();
  sub_24B517B3C();
  MEMORY[0x24C241D70](v1);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B488BDC(v4, v3);
  return sub_24B517FBC();
}

uint64_t sub_24B48BF34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v4 = a1[3];
  v25 = a1[4];
  v5 = a1[1];
  v22[0] = *a1;
  v22[1] = v5;
  v6 = a2[1];
  v7 = a2[3];
  v27 = a2[2];
  v28 = v7;
  v8 = a2[3];
  v29 = a2[4];
  v9 = a2[1];
  v26[0] = *a2;
  v26[1] = v9;
  v19 = v23;
  v20 = v4;
  v21 = a1[4];
  v17 = v22[0];
  v18 = v2;
  v14 = v27;
  v15 = v8;
  v16 = a2[4];
  v12 = v26[0];
  v13 = v6;
  sub_24B488F70(v22, v31);
  sub_24B488F70(v26, v31);
  v10 = _s15FitnessBrowsing28NewAndFeaturedSectionMetricsV2eeoiySbAC_ACtFZ_0(&v17, &v12);
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[0] = v12;
  v30[1] = v13;
  sub_24B488FA8(v30);
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v31[0] = v17;
  v31[1] = v18;
  sub_24B488FA8(v31);
  return v10 & 1;
}

unint64_t sub_24B48C028()
{
  result = qword_2810EDB20[0];
  if (!qword_2810EDB20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810EDB20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NewAndFeaturedLocalState.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NewAndFeaturedLocalState.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_24B48C178()
{
  result = qword_27EFFC0B8;
  if (!qword_27EFFC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0B8);
  }

  return result;
}

unint64_t sub_24B48C1D0()
{
  result = qword_27EFFC0C0;
  if (!qword_27EFFC0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0C0);
  }

  return result;
}

unint64_t sub_24B48C228()
{
  result = qword_27EFFC0C8;
  if (!qword_27EFFC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0C8);
  }

  return result;
}

uint64_t sub_24B48C28C()
{
  if (*v0)
  {
    return 0x74756F6B726F77;
  }

  else
  {
    return 0x697461746964656DLL;
  }
}

uint64_t sub_24B48C2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74756F6B726F77 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B48C3B0(uint64_t a1)
{
  v2 = sub_24B48C7D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B48C3EC(uint64_t a1)
{
  v2 = sub_24B48C7D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B48C428(uint64_t a1)
{
  v2 = sub_24B48C87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B48C464(uint64_t a1)
{
  v2 = sub_24B48C87C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B48C4A0(uint64_t a1)
{
  v2 = sub_24B48C828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B48C4DC(uint64_t a1)
{
  v2 = sub_24B48C828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaType.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC0D0, &qword_24B519A00);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC0D8, &qword_24B519A08);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC0E0, &qword_24B519A10);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B48C7D4();
  sub_24B517FDC();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24B48C828();
    sub_24B517E3C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24B48C87C();
    sub_24B517E3C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_24B48C7D4()
{
  result = qword_27EFFC0E8;
  if (!qword_27EFFC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0E8);
  }

  return result;
}

unint64_t sub_24B48C828()
{
  result = qword_27EFFC0F0;
  if (!qword_27EFFC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0F0);
  }

  return result;
}

unint64_t sub_24B48C87C()
{
  result = qword_27EFFC0F8;
  if (!qword_27EFFC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0F8);
  }

  return result;
}

uint64_t sub_24B48C8EC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B48C9A8(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t MediaType.hashValue.getter(char a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1 & 1);
  return sub_24B517FBC();
}

uint64_t sub_24B48C9A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC138, &qword_24B519D70);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC140, &qword_24B519D78);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC148, &qword_24B519D80);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B48C7D4();
  v11 = v26;
  sub_24B517FCC();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24B517E1C();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24B4A39B0();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24B517D0C();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
    *v19 = &type metadata for MediaType;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24B48C828();
    sub_24B517D7C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24B48C87C();
    sub_24B517D7C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_24B48CE98()
{
  result = qword_27EFFC100;
  if (!qword_27EFFC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC100);
  }

  return result;
}

unint64_t sub_24B48CEF0()
{
  result = qword_27EFFC108;
  if (!qword_27EFFC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC108);
  }

  return result;
}

unint64_t sub_24B48CF48()
{
  result = qword_27EFFC110;
  if (!qword_27EFFC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC110);
  }

  return result;
}

unint64_t sub_24B48CFA0()
{
  result = qword_27EFFC118;
  if (!qword_27EFFC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC118);
  }

  return result;
}

unint64_t sub_24B48CFF8()
{
  result = qword_27EFFC120;
  if (!qword_27EFFC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC120);
  }

  return result;
}

unint64_t sub_24B48D050()
{
  result = qword_27EFFC128;
  if (!qword_27EFFC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC128);
  }

  return result;
}

unint64_t sub_24B48D0A8()
{
  result = qword_27EFFC130;
  if (!qword_27EFFC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC130);
  }

  return result;
}

uint64_t sub_24B48D144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24B51722C();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_24B51723C();
}

uint64_t sub_24B48D23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24B51722C();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_24B51723C();
}

uint64_t sub_24B48D334@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B5176CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B51742C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    if (*a1 == 1)
    {
      v13 = 0xD000000000000017;
      v14 = v10;
      v15 = sub_24B5173EC();
      v16 = sub_24B5176FC();
      sub_24B51740C();
      (*(v9 + 104))(v12, *MEMORY[0x277CE0A10], v14);
      sub_24B51743C();

      (*(v9 + 8))(v12, v14);
      v17 = sub_24B5173FC();

      v28 = xmmword_24B519DE0;
      v25 = xmmword_24B519DF0;
      v27 = xmmword_24B519E00;
      v26 = xmmword_24B519E10;
      v18 = "creation.banner.tvos";
      result = sub_24B5176EC();
      v21 = v25;
      v20 = v26;
      v23 = v27;
      v22 = v28;
      v24 = v25;
    }

    else
    {
      v15 = sub_24B5173EC();
      v16 = sub_24B5176FC();
      sub_24B51741C();
      v17 = sub_24B5173FC();

      (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
      result = sub_24B51770C();
      v22 = xmmword_24B519D90;
      v24 = xmmword_24B519DA0;
      v21 = xmmword_24B519DB0;
      v23 = xmmword_24B519DC0;
      v20 = xmmword_24B519DD0;
      v18 = "wsing12BrowseBundle";
      v13 = 0xD000000000000014;
    }
  }

  else
  {
    v13 = 0xD000000000000017;
    v15 = sub_24B5173DC();
    v16 = sub_24B5176FC();
    sub_24B51741C();
    v17 = sub_24B5173FC();

    v28 = xmmword_24B519E20;
    v25 = xmmword_24B519E30;
    v27 = xmmword_24B519E40;
    v26 = xmmword_24B519E50;
    v18 = "creation.banner.regular";
    result = sub_24B5176EC();
    v24 = v25;
    v20 = v26;
    v23 = v27;
    v22 = v28;
    v21 = v26;
  }

  *a2 = v20;
  *(a2 + 16) = v23;
  *(a2 + 32) = v13;
  *(a2 + 40) = v18 | 0x8000000000000000;
  *(a2 + 48) = v21;
  *(a2 + 64) = v24;
  *(a2 + 80) = v22;
  *(a2 + 96) = v15;
  *(a2 + 104) = v16;
  *(a2 + 112) = v17;
  *(a2 + 120) = result;
  return result;
}

double sub_24B48D6A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC380, &unk_24B51A140);
  sub_24B51779C();
  return v1;
}

uint64_t sub_24B48D750()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFFC1E8, qword_24B519F68);
  sub_24B496A60(&qword_2810ED730, qword_27EFFC1E8, qword_24B519F68, MEMORY[0x277D04410]);

  return sub_24B516F7C();
}

uint64_t CreatePlanBannerView.init(store:createWorkoutPlanButtonViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_24B51778C();
  *a7 = v17;
  *(a7 + 8) = v18;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(a7 + 16) = sub_24B48D8D8;
  *(a7 + 24) = v13;
  *(a7 + 32) = 0;
  type metadata accessor for CreatePlanBannerView(0, a5, a6, v14);

  a3(v15);
}

uint64_t sub_24B48D918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC2A0, &qword_24B51A058);
  v5 = MEMORY[0x28223BE20](v21);
  v7 = &v19 - v6;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC298, &qword_24B51A050);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_24B48D750();
  swift_getKeyPath();
  sub_24B5179CC();

  v13 = v24;
  if (v24)
  {
    v19 = v23;
    (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = *(a1 + 16);
    v16 = (*(v8 + 32))(v15 + v14, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    MEMORY[0x28223BE20](v16);
    *(&v19 - 2) = v19;
    *(&v19 - 1) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC2A8, &qword_24B51A080);
    sub_24B4963C4();
    sub_24B5177CC();

    v17 = v20;
    (*(v20 + 16))(v7, v12, v10);
    swift_storeEnumTagMultiPayload();
    sub_24B496A60(&qword_27EFFC290, &qword_27EFFC298, &qword_24B51A050, MEMORY[0x277CDF028]);
    sub_24B51723C();
    return (*(v17 + 8))(v12, v10);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24B496A60(&qword_27EFFC290, &qword_27EFFC298, &qword_24B51A050, MEMORY[0x277CDF028]);
    return sub_24B51723C();
  }
}

uint64_t sub_24B48DCF0@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_24B5171AC();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24B51719C();
  sub_24B51718C();
  sub_24B51717C();
  sub_24B51718C();
  sub_24B51774C();
  sub_24B51716C();

  sub_24B51718C();
  sub_24B5171CC();
  v5 = sub_24B5174AC();
  v7 = v6;
  v9 = v8;
  sub_24B5173EC();
  v10 = sub_24B51749C();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_24B49627C(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  v18 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC2C0, &qword_24B51A088) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC2F0, &qword_24B51A0A0) + 28);
  v20 = *MEMORY[0x277CE0B30];
  v21 = sub_24B51747C();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v14 & 1;
  *(a3 + 24) = v16;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v22 = sub_24B51771C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC2A8, &qword_24B51A080);
  *(a3 + *(result + 36)) = v22;
  return result;
}

uint64_t sub_24B48DF90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, v2 + *(v6 + 40), v4);
  v9(a2, v8, v4);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24B48E090@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v5 = *(a1 + 16);
  sub_24B51724C();
  v6 = sub_24B51773C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v18[-v11];
  v13 = *(a1 + 24);
  v19 = v5;
  v20 = v13;
  v21 = v2;
  v23 = sub_24B4962E0();
  v24 = v13;
  WitnessTable = swift_getWitnessTable();
  sub_24B51772C();
  v22 = WitnessTable;
  swift_getWitnessTable();
  v15 = *(v7 + 16);
  v15(v12, v10, v6);
  v16 = *(v7 + 8);
  v16(v10, v6);
  v15(a2, v12, v6);
  return (v16)(v12, v6);
}

uint64_t sub_24B48E28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v28 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v27 = &v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC158, &qword_24B519E68);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v29 = sub_24B51724C();
  v13 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v15 = &v27 - v14;
  v30 = a3;
  PlanBannerView = type metadata accessor for CreatePlanBannerView(0, a2, a3, v16);
  sub_24B48D750();
  swift_getKeyPath();
  sub_24B5179CC();

  if (v34 > 1u)
  {
    sub_24B48DF90(PlanBannerView, v8);
    v20 = v27;
    v21 = v28;
    v22 = *(v28 + 16);
    v22(v27, v8, a2);
    v23 = *(v21 + 8);
    v23(v8, a2);
    v22(v8, v20, a2);
    v24 = sub_24B4962E0();
    v19 = v30;
    sub_24B48D23C(v8, v10, a2, v24, v30);
    v23(v8, a2);
    v23(v20, a2);
  }

  else
  {
    sub_24B48D918(PlanBannerView, v12);
    v18 = sub_24B4962E0();
    v19 = v30;
    sub_24B48D144(v12, v10, a2, v18, v30);
    sub_24B49689C(v12, &qword_27EFFC158, &qword_24B519E68);
  }

  v32 = sub_24B4962E0();
  v33 = v19;
  v25 = v29;
  swift_getWitnessTable();
  (*(v13 + 16))(v31, v15, v25);
  return (*(v13 + 8))(v15, v25);
}

uint64_t sub_24B48E600@<X0>(double *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v22 = a2;
  v24 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v21 = *(a2 + 16);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  v5 = sub_24B51780C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = sub_24B51702C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  sub_24B51721C();
  v16 = *(v22 + 24);
  v25 = v21;
  v26 = v16;
  v27 = v23;
  v28 = a1;
  sub_24B5177FC();
  WitnessTable = swift_getWitnessTable();
  sub_24B51764C();
  (*(v6 + 8))(v8, v5);
  v29 = WitnessTable;
  v30 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v18 = *(v10 + 16);
  v18(v15, v13, v9);
  v19 = *(v10 + 8);
  v19(v13, v9);
  v18(v24, v15, v9);
  return (v19)(v15, v9);
}

uint64_t sub_24B48E940@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v38 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v33 = *(a2 + 16);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  v31[1] = sub_24B51792C();
  v31[0] = swift_getWitnessTable();
  v5 = sub_24B51780C();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v31 - v6;
  v8 = sub_24B51702C();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = v31 - v9;
  v44[16] = swift_getWitnessTable();
  v44[17] = MEMORY[0x277CDF918];
  v34 = v8;
  WitnessTable = swift_getWitnessTable();
  v44[0] = v8;
  v44[1] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  sub_24B51721C();
  v17 = *(a2 + 24);
  v18 = v33;
  v40 = v33;
  v41 = v17;
  v42 = v36;
  v43 = a1;
  sub_24B5177FC();
  sub_24B51764C();
  (*(v32 + 8))(v7, v5);
  sub_24B51737C();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = a1[5];
  *(v19 + 96) = a1[4];
  *(v19 + 112) = v20;
  v21 = a1[7];
  *(v19 + 128) = a1[6];
  *(v19 + 144) = v21;
  v22 = a1[1];
  *(v19 + 32) = *a1;
  *(v19 + 48) = v22;
  v23 = a1[3];
  *(v19 + 64) = a1[2];
  *(v19 + 80) = v23;
  PlanBanner = type metadata accessor for CreatePlanBannerView.Layout(0, v18, v17, v24);
  (*(*(PlanBanner - 8) + 16))(v44, a1, PlanBanner);
  sub_24B5178CC();
  v26 = v34;
  v27 = v39;
  sub_24B51760C();

  (*(v37 + 8))(v27, v26);
  v28 = *(v11 + 16);
  v28(v16, v14, OpaqueTypeMetadata2);
  v29 = *(v11 + 8);
  v29(v14, OpaqueTypeMetadata2);
  v28(v38, v16, OpaqueTypeMetadata2);
  return (v29)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_24B48EE5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v61 = a4;
  v56 = a1;
  v64 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  WitnessTable = sub_24B51724C();
  v63 = sub_24B51773C();
  v68 = *(v63 - 8);
  v8 = MEMORY[0x28223BE20](v63);
  v66 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v52 - v10;
  PlanBannerView = type metadata accessor for CreatePlanBannerView(0, a3, a4, v11);
  sub_24B48D750();
  swift_getKeyPath();
  sub_24B5179CC();

  v71 = v75;
  v72 = v76;
  sub_24B496228();
  v12 = sub_24B5174BC();
  v14 = v13;
  v16 = v15;
  v17 = a2;
  v18 = sub_24B51749C();
  v20 = v19;
  v22 = v21;
  sub_24B49627C(v12, v14, v16 & 1);

  v81 = a2[15];
  v75 = v81;

  v58 = sub_24B51748C();
  v57 = v23;
  v59 = v24;
  v60 = v25;
  sub_24B49627C(v18, v20, v22 & 1);

  sub_24B49628C(&v81);
  sub_24B48D750();
  swift_getKeyPath();
  sub_24B5179CC();

  v71 = v75;
  v72 = v76;
  v26 = sub_24B5174BC();
  v28 = v27;
  v30 = v29;
  v31 = sub_24B51749C();
  v33 = v32;
  v35 = v34;
  sub_24B49627C(v26, v28, v30 & 1);

  v80 = v17[13];
  v75 = v80;

  v36 = sub_24B51748C();
  v53 = v37;
  v54 = v38;
  v55 = v39;
  sub_24B49627C(v31, v33, v35 & 1);

  sub_24B49628C(&v80);
  v40 = v66;
  sub_24B48E090(PlanBannerView, v66);
  v79[4] = sub_24B4962E0();
  v79[5] = v61;
  v79[3] = swift_getWitnessTable();
  v41 = v63;
  WitnessTable = swift_getWitnessTable();
  v42 = v68;
  v61 = *(v68 + 16);
  v43 = v67;
  v61(v67, v40, v41);
  v44 = *(v42 + 8);
  v68 = v42 + 8;
  PlanBannerView = v44;
  v44(v40, v41);
  v45 = v58;
  v46 = v57;
  v75 = v58;
  v76 = v57;
  LODWORD(v56) = v59 & 1;
  v77 = v59 & 1;
  v47 = v53;
  v71 = v36;
  v72 = v53;
  v59 = v54 & 1;
  v73 = v54 & 1;
  v74 = v55;
  v78 = v60;
  v79[0] = &v75;
  v79[1] = &v71;
  v61(v40, v43, v41);
  v79[2] = v40;
  LOBYTE(v40) = v56;
  sub_24B496398(v45, v46, v56);

  v48 = v47;
  v49 = v47;
  LOBYTE(v47) = v59;
  sub_24B496398(v36, v49, v59);

  v70[0] = MEMORY[0x277CE0BD8];
  v70[1] = MEMORY[0x277CE0BD8];
  v70[2] = v41;
  v69[0] = MEMORY[0x277CE0BC8];
  v69[1] = MEMORY[0x277CE0BC8];
  v69[2] = WitnessTable;
  sub_24B4F5C48(v79, 3uLL, v70);
  sub_24B49627C(v36, v48, v47);

  sub_24B49627C(v45, v46, v40);

  v50 = PlanBannerView;
  PlanBannerView(v67, v41);
  v50(v66, v41);
  sub_24B49627C(v71, v72, v73);

  sub_24B49627C(v75, v76, v77);
}

uint64_t sub_24B48F4C8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v38 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v33 = *(a2 + 16);
  sub_24B51724C();
  sub_24B51773C();
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  v31[1] = sub_24B51792C();
  v31[0] = swift_getWitnessTable();
  v5 = sub_24B51780C();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v31 - v6;
  v8 = sub_24B51702C();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = v31 - v9;
  v44[16] = swift_getWitnessTable();
  v44[17] = MEMORY[0x277CDF918];
  v34 = v8;
  WitnessTable = swift_getWitnessTable();
  v44[0] = v8;
  v44[1] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  sub_24B51721C();
  v17 = *(a2 + 24);
  v18 = v33;
  v40 = v33;
  v41 = v17;
  v42 = v36;
  v43 = a1;
  sub_24B5177FC();
  sub_24B51764C();
  (*(v32 + 8))(v7, v5);
  sub_24B51737C();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = a1[5];
  *(v19 + 96) = a1[4];
  *(v19 + 112) = v20;
  v21 = a1[7];
  *(v19 + 128) = a1[6];
  *(v19 + 144) = v21;
  v22 = a1[1];
  *(v19 + 32) = *a1;
  *(v19 + 48) = v22;
  v23 = a1[3];
  *(v19 + 64) = a1[2];
  *(v19 + 80) = v23;
  PlanBanner = type metadata accessor for CreatePlanBannerView.Layout(0, v18, v17, v24);
  (*(*(PlanBanner - 8) + 16))(v44, a1, PlanBanner);
  sub_24B5178CC();
  v26 = v34;
  v27 = v39;
  sub_24B51760C();

  (*(v37 + 8))(v27, v26);
  v28 = *(v11 + 16);
  v28(v16, v14, OpaqueTypeMetadata2);
  v29 = *(v11 + 8);
  v29(v14, OpaqueTypeMetadata2);
  v28(v38, v16, OpaqueTypeMetadata2);
  return (v29)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_24B48FA0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a1;
  v35 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v28 = a3;
  v32 = sub_24B51724C();
  v8 = sub_24B51773C();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v30 = &v26 - v9;
  v10 = sub_24B51702C();
  v31 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v33 = &v26 - v14;
  v27 = sub_24B51721C();
  v66 = 0;
  sub_24B49002C(a2, a3, a4, &v58);
  v73 = v62;
  v74[0] = v63[0];
  *(v74 + 9) = *(v63 + 9);
  v69 = v58;
  v70 = v59;
  v72 = v61;
  v71 = v60;
  v75[0] = v58;
  v75[1] = v59;
  v75[2] = v60;
  v75[3] = v61;
  v75[4] = v62;
  v76[0] = v63[0];
  *(v76 + 9) = *(v63 + 9);
  sub_24B496724(&v69, &v56, &qword_27EFFC308, &qword_24B51A110);
  sub_24B49689C(v75, &qword_27EFFC308, &qword_24B51A110);
  *(&v65[3] + 7) = v72;
  *(&v65[4] + 7) = v73;
  *(&v65[5] + 7) = v74[0];
  v65[6] = *(v74 + 9);
  *(v65 + 7) = v69;
  *(&v65[1] + 7) = v70;
  *(&v65[2] + 7) = v71;
  v15 = v66;
  sub_24B5178CC();
  sub_24B51707C();
  *(&v67[6] + 7) = *&v67[21];
  *(&v67[8] + 7) = *&v67[23];
  *(&v67[10] + 7) = *&v67[25];
  *(&v67[12] + 7) = v68;
  *(v67 + 7) = *&v67[15];
  *(&v67[2] + 7) = *&v67[17];
  *(&v67[4] + 7) = *&v67[19];
  *&v56 = v27;
  *(&v56 + 1) = 0x4024000000000000;
  v57[0] = v15;
  *&v57[49] = v65[3];
  *&v57[65] = v65[4];
  *&v57[81] = v65[5];
  *&v57[97] = v65[6];
  *&v57[1] = v65[0];
  *&v57[17] = v65[1];
  *&v57[33] = v65[2];
  *&v57[161] = *&v67[6];
  *&v57[145] = *&v67[4];
  *&v57[129] = *&v67[2];
  *&v57[113] = *v67;
  *&v57[224] = *(&v68 + 1);
  *&v57[209] = *&v67[12];
  *&v57[193] = *&v67[10];
  *&v57[177] = *&v67[8];
  PlanBannerView = type metadata accessor for CreatePlanBannerView(0, v28, a4, v16);
  v18 = v30;
  sub_24B48E090(PlanBannerView, v30);
  sub_24B5178CC();
  v55[5] = sub_24B4962E0();
  v55[6] = a4;
  v55[4] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_24B51762C();
  (*(v34 + 8))(v18, v8);
  v55[2] = WitnessTable;
  v55[3] = MEMORY[0x277CDF678];
  v20 = swift_getWitnessTable();
  v21 = v31;
  v22 = *(v31 + 16);
  v23 = v33;
  v22(v33, v13, v10);
  v24 = *(v21 + 8);
  v24(v13, v10);
  v51 = *&v57[176];
  v52 = *&v57[192];
  v53 = *&v57[208];
  v54 = *&v57[224];
  v47 = *&v57[112];
  v48 = *&v57[128];
  v49 = *&v57[144];
  v50 = *&v57[160];
  v43 = *&v57[48];
  v44 = *&v57[64];
  v45 = *&v57[80];
  v46 = *&v57[96];
  v39 = v56;
  v40 = *v57;
  v41 = *&v57[16];
  v42 = *&v57[32];
  v55[0] = &v39;
  v22(v13, v23, v10);
  v55[1] = v13;
  sub_24B496724(&v56, &v58, &qword_27EFFC160, &qword_24B519E70);
  v38[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC160, &qword_24B519E70);
  v38[1] = v10;
  v36 = sub_24B49678C();
  v37 = v20;
  sub_24B4F5C48(v55, 2uLL, v38);
  sub_24B49689C(&v56, &qword_27EFFC160, &qword_24B519E70);
  v24(v23, v10);
  v24(v13, v10);
  v63[7] = v51;
  v63[8] = v52;
  v63[9] = v53;
  v64 = v54;
  v63[3] = v47;
  v63[4] = v48;
  v63[5] = v49;
  v63[6] = v50;
  v62 = v43;
  v63[0] = v44;
  v63[1] = v45;
  v63[2] = v46;
  v58 = v39;
  v59 = v40;
  v60 = v41;
  v61 = v42;
  return sub_24B49689C(&v58, &qword_27EFFC160, &qword_24B519E70);
}

uint64_t sub_24B49002C@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for CreatePlanBannerView(0, a2, a3, a3);
  sub_24B48D750();
  swift_getKeyPath();
  sub_24B5179CC();

  sub_24B496228();
  v6 = sub_24B5174BC();
  v8 = v7;
  v10 = v9;
  v11 = sub_24B51749C();
  v13 = v12;
  v15 = v14;
  sub_24B49627C(v6, v8, v10 & 1);

  v44 = a1[15];
  v43 = v44;

  v16 = sub_24B51748C();
  v40 = v17;
  v41 = v16;
  v39 = v18;
  v42 = v19;
  sub_24B49627C(v11, v13, v15 & 1);

  sub_24B49628C(&v44);
  KeyPath = swift_getKeyPath();
  sub_24B48D750();
  swift_getKeyPath();
  sub_24B5179CC();

  v20 = sub_24B5174BC();
  v22 = v21;
  LOBYTE(v13) = v23;
  v24 = sub_24B51749C();
  v26 = v25;
  v28 = v27;
  sub_24B49627C(v20, v22, v13 & 1);

  v43 = a1[13];

  v29 = sub_24B51748C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_24B49627C(v24, v26, v28 & 1);

  sub_24B49628C(&v43);
  v36 = swift_getKeyPath();
  *a4 = v41;
  *(a4 + 8) = v40;
  *(a4 + 16) = v39 & 1;
  *(a4 + 24) = v42;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 2;
  *(a4 + 48) = 0;
  *(a4 + 56) = v29;
  *(a4 + 64) = v31;
  *(a4 + 72) = v33 & 1;
  *(a4 + 80) = v35;
  *(a4 + 88) = v36;
  *(a4 + 96) = 3;
  *(a4 + 104) = 0;
  sub_24B496398(v41, v40, v39 & 1);

  sub_24B496398(v29, v31, v33 & 1);

  sub_24B49627C(v29, v31, v33 & 1);

  sub_24B49627C(v41, v40, v39 & 1);
}

uint64_t sub_24B4903A8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v30 = a3;
  v31 = a2;
  v32 = a1;
  v34 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v29 = *(a3 + 16);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v5 = sub_24B51702C();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277CDF918];
  v49 = WitnessTable;
  v50 = MEMORY[0x277CDF918];
  v28 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v8 = sub_24B51702C();
  v45 = swift_getWitnessTable();
  v46 = v7;
  v9 = swift_getWitnessTable();
  v47 = v8;
  v48 = v9;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  v10 = sub_24B51773C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = *v31;
  v18 = *(v30 + 24);
  v35 = v29;
  v36 = v18;
  v37 = v17;
  v38 = v33;
  v39 = v32;
  v47 = v5;
  v19 = v28;
  v48 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v19;
  v44 = OpaqueTypeConformance2;
  v21 = swift_getWitnessTable();
  v47 = v8;
  v48 = v9;
  v22 = swift_getOpaqueTypeConformance2();
  v41 = v21;
  v42 = v22;
  v23 = swift_getWitnessTable();
  sub_24B51772C();
  v40 = v23;
  swift_getWitnessTable();
  v24 = *(v11 + 16);
  v24(v16, v14, v10);
  v25 = *(v11 + 8);
  v25(v14, v10);
  v24(v34, v16, v10);
  return (v25)(v16, v10);
}

uint64_t sub_24B49083C@<X0>(int a1@<W0>, void (*a2)(char *, uint64_t)@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v83 = a5;
  v82 = a4;
  v85 = a3;
  v86 = a2;
  LODWORD(OpaqueTypeConformance2) = a1;
  v90 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  sub_24B51724C();
  sub_24B51773C();
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v6 = sub_24B51702C();
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277CDF918];
  v108 = WitnessTable;
  v109 = MEMORY[0x277CDF918];
  v92 = v6;
  v93 = swift_getWitnessTable();
  v106 = v6;
  v107 = v93;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v78 = *(OpaqueTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v77 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v75 - v12;
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v13 = sub_24B51702C();
  v104 = swift_getWitnessTable();
  v105 = v8;
  v14 = swift_getWitnessTable();
  v106 = v13;
  v107 = v14;
  v91 = v14;
  v15 = swift_getOpaqueTypeMetadata2();
  v75 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v79 = &v75 - v19;
  v20 = sub_24B51724C();
  v80 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v75 - v22;
  v24 = *(v13 - 8);
  v25 = MEMORY[0x28223BE20](v21);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v75 - v28;
  v89 = OpaqueTypeMetadata2;
  v88 = sub_24B51724C();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v81 = &v75 - v30;
  PlanBannerView = type metadata accessor for CreatePlanBannerView(0, v82, v83, v31);
  if (OpaqueTypeConformance2)
  {
    if (OpaqueTypeConformance2 == 1)
    {
      sub_24B48E940(v85, PlanBannerView, v18);
      v106 = v13;
      v107 = v91;
      v85 = MEMORY[0x277CDEBE0];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v33 = v75;
      v34 = *(v75 + 16);
      v35 = v79;
      v34(v79, v18, v15);
      v36 = v18;
      v86 = *(v33 + 8);
      v86(v18, v15);
      v34(v18, v35, v15);
      v37 = v91;
      v38 = OpaqueTypeConformance2;
      sub_24B48D23C(v18, v13, v15, v91, OpaqueTypeConformance2);
      v96 = v37;
      v97 = v38;
      v39 = v37;
      OpaqueTypeConformance2 = swift_getWitnessTable();
      v40 = v20;
      v42 = v92;
      v41 = v93;
      v106 = v92;
      v107 = v93;
      v43 = swift_getOpaqueTypeConformance2();
      v44 = v81;
      sub_24B48D144(v23, v40, v89, OpaqueTypeConformance2, v43);
      (*(v80 + 8))(v23, v40);
      v45 = v36;
      v46 = v39;
      v47 = v86;
      v86(v45, v15);
      v47(v79, v15);
      v48 = v41;
      v49 = v44;
    }

    else
    {
      v58 = v77;
      sub_24B48F4C8(v85, PlanBannerView, v77);
      v46 = v91;
      v106 = v92;
      v107 = v93;
      OpaqueTypeConformance2 = MEMORY[0x277CDEBE0];
      v86 = swift_getOpaqueTypeConformance2();
      v59 = v20;
      v49 = v81;
      v60 = v78;
      v61 = *(v78 + 16);
      v62 = v76;
      v63 = v89;
      v61(v76, v58, v89);
      v85 = *(v60 + 8);
      v85(v58, v63);
      v61(v58, v62, v63);
      v42 = v92;
      v106 = v13;
      v107 = v46;
      v64 = swift_getOpaqueTypeConformance2();
      v102 = v46;
      v103 = v64;
      v65 = swift_getWitnessTable();
      sub_24B48D23C(v58, v59, v63, v65, v86);
      v66 = v85;
      v85(v58, v63);
      v67 = v63;
      v48 = v93;
      (v66)(v62, v67);
    }
  }

  else
  {
    sub_24B48E600(v85, PlanBannerView, v27);
    v50 = v24;
    v51 = v24;
    v52 = v20;
    v53 = *(v51 + 16);
    v53(v29, v27, v13);
    v86 = *(v50 + 8);
    v86(v27, v13);
    v53(v27, v29, v13);
    v46 = v91;
    v106 = v13;
    v107 = v91;
    v85 = MEMORY[0x277CDEBE0];
    v54 = swift_getOpaqueTypeConformance2();
    sub_24B48D144(v27, v13, v15, v46, v54);
    v94 = v46;
    v95 = v54;
    OpaqueTypeConformance2 = swift_getWitnessTable();
    v42 = v92;
    v55 = v80;
    v49 = v81;
    v106 = v92;
    v107 = v93;
    v56 = swift_getOpaqueTypeConformance2();
    sub_24B48D144(v23, v52, v89, OpaqueTypeConformance2, v56);
    (*(v55 + 8))(v23, v52);
    v57 = v86;
    v86(v27, v13);
    v57(v29, v13);
    v48 = v93;
  }

  v68 = v90;
  v106 = v13;
  v107 = v46;
  v69 = swift_getOpaqueTypeConformance2();
  v100 = v46;
  v101 = v69;
  v70 = swift_getWitnessTable();
  v106 = v42;
  v107 = v48;
  v71 = swift_getOpaqueTypeConformance2();
  v98 = v70;
  v99 = v71;
  v72 = v88;
  swift_getWitnessTable();
  v73 = v87;
  (*(v87 + 16))(v68, v49, v72);
  return (*(v73 + 8))(v49, v72);
}

uint64_t sub_24B49133C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v23 = a1;
  v21 = a3;
  v22 = a2;
  v25 = a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC150, &qword_24B519E60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v5 = *(a3 + 16);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  sub_24B51702C();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277CDF918];
  v35 = WitnessTable;
  v36 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v8 = sub_24B51702C();
  v31 = swift_getWitnessTable();
  v32 = v7;
  v33 = v8;
  v34 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  sub_24B51773C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC168, &qword_24B519E78);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  v9 = sub_24B51780C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  LOBYTE(v7) = *v22;
  sub_24B51721C();
  v16 = *(v21 + 24);
  v26 = v5;
  v27 = v16;
  v28 = v23;
  v29 = v24;
  v30 = v7;
  sub_24B5177FC();
  swift_getWitnessTable();
  v17 = *(v10 + 16);
  v17(v15, v13, v9);
  v18 = *(v10 + 8);
  v18(v13, v9);
  v17(v25, v15, v9);
  return (v18)(v15, v9);
}

uint64_t sub_24B491794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a5;
  v55 = a4;
  v56 = a3;
  v58 = a2;
  v59 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v7 = sub_24B51702C();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x277CDF918];
  v66[11] = WitnessTable;
  v66[12] = MEMORY[0x277CDF918];
  v54 = MEMORY[0x277CDFAD8];
  v53 = swift_getWitnessTable();
  v52 = v7;
  v44 = MEMORY[0x277CDEBE0];
  swift_getOpaqueTypeMetadata2();
  v45 = sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v10 = sub_24B51702C();
  v66[9] = swift_getWitnessTable();
  v66[10] = v9;
  v49 = v10;
  v48 = swift_getWitnessTable();
  v63 = v10;
  v64 = v48;
  swift_getOpaqueTypeMetadata2();
  v46 = sub_24B51724C();
  v11 = sub_24B51773C();
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v43 = &v41 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC168, &qword_24B519E78);
  v13 = sub_24B51702C();
  v50 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = &v41 - v17;
  v18 = sub_24B51775C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  type metadata accessor for BrowseBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();

  v24 = [v23 bundleForClass_];
  sub_24B51777C();
  (*(v19 + 104))(v21, *MEMORY[0x277CE0FE0], v18);
  v25 = sub_24B51776C();

  (*(v19 + 8))(v21, v18);
  LOBYTE(v63) = v56;
  PlanBannerView = type metadata accessor for CreatePlanBannerView(0, v55, v57, v26);
  v28 = v43;
  sub_24B4903A8(v42, &v63, PlanBannerView, v43);
  v29 = v53;
  v63 = v52;
  v64 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66[7] = v29;
  v66[8] = OpaqueTypeConformance2;
  v31 = swift_getWitnessTable();
  v63 = v49;
  v64 = v48;
  v32 = swift_getOpaqueTypeConformance2();
  v66[5] = v31;
  v66[6] = v32;
  v66[4] = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  sub_24B51757C();
  (*(v51 + 8))(v28, v11);
  v34 = sub_24B496A60(&qword_27EFFC270, &qword_27EFFC168, &qword_24B519E78, MEMORY[0x277CE04A0]);
  v66[2] = v33;
  v66[3] = v34;
  v35 = swift_getWitnessTable();
  v36 = v50;
  v37 = *(v50 + 16);
  v38 = v47;
  v37(v47, v16, v13);
  v39 = *(v36 + 8);
  v39(v16, v13);
  v63 = v25;
  v64 = 0x4007878787878787;
  v65 = 256;
  v66[0] = &v63;
  v37(v16, v38, v13);
  v66[1] = v16;

  v62[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC150, &qword_24B519E60);
  v62[1] = v13;
  v60 = sub_24B496154();
  v61 = v35;
  sub_24B4F5C48(v66, 2uLL, v62);

  v39(v38, v13);
  v39(v16, v13);
}

uint64_t sub_24B491F68@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v27 = a4;
  v23 = a3;
  v24 = a2;
  v25 = a1;
  v28 = a5;
  v22[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC170, &qword_24B519E80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v6 = *(a3 + 16);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  sub_24B51702C();
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277CDF918];
  v38 = WitnessTable;
  v39 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v9 = sub_24B51702C();
  v34 = swift_getWitnessTable();
  v35 = v8;
  v36 = v9;
  v37 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  sub_24B51773C();
  sub_24B51702C();
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC178, &qword_24B519E88);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  v10 = sub_24B5177EC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v17 = *v24;
  sub_24B51715C();
  v18 = *(v23 + 24);
  v29 = v6;
  v30 = v18;
  v31 = v25;
  v32 = v26;
  v33 = v17;
  sub_24B5177DC();
  swift_getWitnessTable();
  v19 = *(v11 + 16);
  v19(v16, v14, v10);
  v20 = *(v11 + 8);
  v20(v14, v10);
  v19(v28, v16, v10);
  return (v20)(v16, v10);
}

uint64_t sub_24B4923E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v84 = a7;
  v85 = a8;
  v82 = a6;
  v91 = a4;
  v92 = a5;
  v83 = a3;
  v87 = a1;
  v88 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v8 = sub_24B51702C();
  WitnessTable = swift_getWitnessTable();
  v10 = MEMORY[0x277CDF918];
  v104 = WitnessTable;
  v105 = MEMORY[0x277CDF918];
  v90 = MEMORY[0x277CDFAD8];
  v77 = swift_getWitnessTable();
  v75 = v8;
  v62 = MEMORY[0x277CDEBE0];
  swift_getOpaqueTypeMetadata2();
  v64 = sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v11 = sub_24B51702C();
  v102 = swift_getWitnessTable();
  v103 = v10;
  v68 = v11;
  v67 = swift_getWitnessTable();
  *&v109[0] = v11;
  *(&v109[0] + 1) = v67;
  swift_getOpaqueTypeMetadata2();
  v66 = sub_24B51724C();
  v65 = sub_24B51773C();
  v71 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v59 - v12;
  v70 = sub_24B51702C();
  v76 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v63 = &v59 - v13;
  v72 = sub_24B51702C();
  v81 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v59 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC178, &qword_24B519E88);
  v15 = sub_24B51702C();
  v79 = *(v15 - 8);
  v80 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v73 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = &v59 - v18;
  v19 = sub_24B51775C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC170, &qword_24B519E80);
  v23 = MEMORY[0x28223BE20](v89);
  v74 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v86 = &v59 - v25;
  v26 = v87;
  type metadata accessor for BrowseBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();

  v29 = [v28 bundleForClass_];
  sub_24B51777C();
  (*(v20 + 104))(v22, *MEMORY[0x277CE0FE0], v19);
  v30 = sub_24B51776C();

  (*(v20 + 8))(v22, v19);
  v31 = *v26;
  PlanBannerView = type metadata accessor for CreatePlanBannerView(0, v91, v92, v32);
  sub_24B48D6A0();
  sub_24B5178CC();
  sub_24B516FCC();
  LOBYTE(v98[0]) = 0;
  *&v101[22] = v107;
  *&v101[38] = v108;
  *&v101[6] = v106;
  *&v99 = v30;
  *(&v99 + 1) = v31;
  *v100 = 256;
  *&v100[2] = *v101;
  *&v100[18] = *&v101[16];
  *&v100[34] = *&v101[32];
  *&v100[48] = *(&v108 + 1);
  sub_24B51737C();
  sub_24B5178EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC328, &qword_24B51A120);
  sub_24B495768(&qword_27EFFC330, &qword_27EFFC328, &qword_24B51A120, sub_24B496154);
  v33 = v86;
  sub_24B51760C();
  v109[2] = *&v100[16];
  v109[3] = *&v100[32];
  v110 = *&v100[48];
  v109[0] = v99;
  v109[1] = *v100;
  sub_24B49689C(v109, &qword_27EFFC328, &qword_24B51A120);
  *(v33 + *(v89 + 36)) = 0;
  LOBYTE(v99) = v83;
  v34 = v61;
  sub_24B4903A8(v87, &v99, PlanBannerView, v61);
  sub_24B5178CC();
  v35 = v77;
  *&v99 = v75;
  *(&v99 + 1) = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98[11] = v35;
  v98[12] = OpaqueTypeConformance2;
  v37 = swift_getWitnessTable();
  *&v99 = v68;
  *(&v99 + 1) = v67;
  v38 = swift_getOpaqueTypeConformance2();
  v98[9] = v37;
  v98[10] = v38;
  v98[8] = swift_getWitnessTable();
  v39 = v65;
  v40 = swift_getWitnessTable();
  v41 = v63;
  sub_24B51763C();
  (*(v71 + 8))(v34, v39);
  sub_24B5178CC();
  v42 = MEMORY[0x277CDFC60];
  v98[6] = v40;
  v98[7] = MEMORY[0x277CDFC60];
  v57 = v70;
  v58 = swift_getWitnessTable();
  v43 = v69;
  sub_24B51763C();
  (*(v76 + 8))(v41, v57);
  v93 = v91;
  v94 = v92;
  v95 = v88;
  sub_24B5178CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC338, &qword_24B51A128);
  v98[4] = v58;
  v98[5] = v42;
  v44 = v72;
  v45 = swift_getWitnessTable();
  sub_24B496A60(&qword_27EFFC340, &qword_27EFFC338, &qword_24B51A128, MEMORY[0x277CDF7D8]);
  v46 = v73;
  sub_24B51752C();
  (*(v81 + 8))(v43, v44);
  v47 = sub_24B496A60(&qword_27EFFC348, &qword_27EFFC178, &qword_24B519E88, MEMORY[0x277CE0328]);
  v98[2] = v45;
  v98[3] = v47;
  v48 = v80;
  v92 = swift_getWitnessTable();
  v50 = v78;
  v49 = v79;
  v51 = *(v79 + 16);
  v52 = v46;
  v51(v78, v46, v48);
  v53 = *(v49 + 8);
  v53(v46, v48);
  v54 = v86;
  v55 = v74;
  sub_24B47D56C(v86, v74);
  *&v99 = v55;
  v51(v52, v50, v48);
  *(&v99 + 1) = v52;
  v98[0] = v89;
  v98[1] = v48;
  v96 = sub_24B496938();
  v97 = v92;
  sub_24B4F5C48(&v99, 2uLL, v98);
  v53(v50, v48);
  sub_24B47D5DC(v54);
  v53(v52, v48);
  return sub_24B47D5DC(v55);
}