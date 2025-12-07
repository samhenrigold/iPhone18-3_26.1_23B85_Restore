uint64_t _s8NewsFeed34FormatSupplementaryNodePinDistanceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  if (v4)
  {
    if (*(a2 + 9))
    {
      if (v3 == 255)
      {
        sub_1D610CA28(*a2, *(a2 + 8), 1);
        sub_1D610CA28(v2, 0xFFu, 1);
        sub_1D610CA28(v5, v6, 1);
        sub_1D610CA28(v2, 0xFFu, 1);
        sub_1D60CF6A8(v2, 0xFFu, 1);
        sub_1D60CF6A8(v5, v6, 1);
        if (v6 == 255)
        {
          sub_1D60CF6B4(v2, 0xFFu);
          return 1;
        }
      }

      else
      {
        v14 = *a1;
        v15 = v3;
        if (v6 != 255)
        {
          v12 = v5;
          v13 = v6;
          sub_1D610CA28(v5, v6, 1);
          sub_1D610CA28(v2, v3, 1);
          sub_1D610CA28(v5, v6, 1);
          sub_1D610CA28(v2, v3, 1);
          sub_1D610CA34(v2, v3);
          v8 = _s8NewsFeed44FormatSupplementaryNodePinDistanceAdjustmentO2eeoiySbAC_ACtFZ_0(&v14, &v12);
          sub_1D60CF6A8(v2, v3, 1);
          sub_1D60CF6A8(v5, v6, 1);
          sub_1D60CF6C8(v12, v13);
          sub_1D60CF6C8(v14, v15);
          sub_1D60CF6B4(v2, v3);
          result = 1;
          if (v8)
          {
            return result;
          }

          return 0;
        }

        sub_1D610CA28(v5, 0xFFu, 1);
        sub_1D610CA28(v2, v3, 1);
        sub_1D610CA28(v5, 0xFFu, 1);
        sub_1D610CA28(v2, v3, 1);
        sub_1D610CA34(v2, v3);
        sub_1D60CF6A8(v2, v3, 1);
        sub_1D60CF6A8(v5, 0xFFu, 1);
        sub_1D60CF6C8(v2, v3);
      }

      sub_1D60CF6B4(v2, v3);
      sub_1D60CF6B4(v5, v6);
      return 0;
    }

LABEL_8:
    sub_1D610CA28(*a2, *(a2 + 8), v7);
    sub_1D610CA28(v2, v3, v4);
    sub_1D60CF6A8(v2, v3, v4);
    sub_1D60CF6A8(v5, v6, v7);
    return 0;
  }

  if (*(a2 + 9))
  {
    goto LABEL_8;
  }

  sub_1D610CA28(*a2, *(a2 + 8), 0);
  sub_1D610CA28(v2, v3, 0);
  sub_1D633A310(v2, v5);
  v11 = v10;
  sub_1D60CF6A8(v2, v3, 0);
  sub_1D60CF6A8(v5, v6, 0);
  return v11 & 1;
}

unint64_t sub_1D6B00398(uint64_t a1)
{
  result = sub_1D6B003C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B003C0()
{
  result = qword_1EC891CE8;
  if (!qword_1EC891CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891CE8);
  }

  return result;
}

unint64_t sub_1D6B00454()
{
  result = qword_1EC891CF0;
  if (!qword_1EC891CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891CF0);
  }

  return result;
}

unint64_t sub_1D6B004A8(uint64_t a1)
{
  result = sub_1D6B004D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B004D0()
{
  result = qword_1EC891CF8;
  if (!qword_1EC891CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891CF8);
  }

  return result;
}

unint64_t sub_1D6B00564()
{
  result = qword_1EC891D00;
  if (!qword_1EC891D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891D00);
  }

  return result;
}

unint64_t sub_1D6B005B8(uint64_t a1)
{
  result = sub_1D6B005E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B005E0()
{
  result = qword_1EC891D08;
  if (!qword_1EC891D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891D08);
  }

  return result;
}

uint64_t sub_1D6B00674(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B006C8()
{
  result = qword_1EC891D10;
  if (!qword_1EC891D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891D10);
  }

  return result;
}

uint64_t sub_1D6B0071C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6B00764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

void *sub_1D6B007E4(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  if (v3 <= 1)
  {
    v4 = 0x676E696361705368;
    if (!v3)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8(0);
      v7 = *(*(v14 - 8) + 72);
      v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7270C10;
      v10 = (v9 + v15);
      v12 = v10;
      v11 = 6579265;
      v13 = 0xE300000000000000;
LABEL_7:
      sub_1D711F844(1701869908, 0xE400000000000000, v11, v13, v12);
      v16 = type metadata accessor for FormatInspectionItem(0);
      v17 = *(*(v16 - 8) + 56);
      v17(v10, 0, 1, v16);
      if (v2)
      {
        if (v2 != 1)
        {
          v4 = sub_1D6936F98(v2);
          v19 = v18;
LABEL_20:
          v42 = sub_1D711F844(0x65756C6156, 0xE500000000000000, v4, v19, &v10[v7]);
          (v17)(&v10[v7], 0, 1, v16, v42);
          sub_1D6795150(0xD000000000000013, 0x80000001D73E5AA0, 0, 0, v9, &v46);
          swift_setDeallocating();
LABEL_21:
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(inited + 56) = &type metadata for FormatInspectionGroup;
          *(inited + 64) = &off_1F518B2C0;
          v43 = swift_allocObject();
          *(inited + 32) = v43;
          *(v43 + 48) = v48;
          v44 = v47;
          *(v43 + 16) = v46;
          *(v43 + 32) = v44;
          v33 = sub_1D7073500(inited);
          swift_setDeallocating();
          v34 = inited + 32;
          goto LABEL_22;
        }
      }

      else
      {
        v4 = 0x676E696361705376;
      }

      v19 = 0xE800000000000000;
      goto LABEL_20;
    }

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8(0);
    v21 = *(*(v35 - 8) + 72);
    v36 = (*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7270C10;
    v24 = (v23 + v36);
    v25 = 0x7463617274627553;
LABEL_13:
    v37 = 0xE800000000000000;
    sub_1D711F844(1701869908, 0xE400000000000000, v25, 0xE800000000000000, v24);
    v38 = type metadata accessor for FormatInspectionItem(0);
    v39 = *(*(v38 - 8) + 56);
    v39(v24, 0, 1, v38);
    if (v2)
    {
      if (v2 != 1)
      {
        v4 = sub_1D6936F98(v2);
        v37 = v40;
      }
    }

    else
    {
      v4 = 0x676E696361705376;
    }

    v41 = sub_1D711F844(0x65756C6156, 0xE500000000000000, v4, v37, &v24[v21]);
    (v39)(&v24[v21], 0, 1, v38, v41);
    sub_1D6795150(0xD000000000000013, 0x80000001D73E5AA0, 0, 0, v23, &v46);
    swift_setDeallocating();
    goto LABEL_21;
  }

  if (v3 == 2)
  {
    v4 = 0x676E696361705368;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8(0);
    v21 = *(*(v20 - 8) + 72);
    v22 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7270C10;
    v24 = (v23 + v22);
    v25 = 0x796C7069746C754DLL;
    goto LABEL_13;
  }

  if (v3 == 3)
  {
    v4 = 0x676E696361705368;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8(0);
    v7 = *(*(v6 - 8) + 72);
    v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7270C10;
    v10 = (v9 + v8);
    v11 = 0x656469766944;
    v12 = v10;
    v13 = 0xE600000000000000;
    goto LABEL_7;
  }

  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1D7273AE0;
  sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  sub_1D5EA74B8(0);
  v28 = (*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7273AE0;
  sub_1D711F844(1701869908, 0xE400000000000000, 1701736270, 0xE400000000000000, (v29 + v28));
  v30 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v30 - 8) + 56))(v29 + v28, 0, 1, v30);
  sub_1D6795150(0xD000000000000013, 0x80000001D73E5AA0, 0, 0, v29, &v46);
  swift_setDeallocating();
  sub_1D5EF5F0C(v29 + v28, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(v26 + 56) = &type metadata for FormatInspectionGroup;
  *(v26 + 64) = &off_1F518B2C0;
  v31 = swift_allocObject();
  *(v26 + 32) = v31;
  *(v31 + 48) = v48;
  v32 = v47;
  *(v31 + 16) = v46;
  *(v31 + 32) = v32;
  v33 = sub_1D7073500(v26);
  swift_setDeallocating();
  v34 = v26 + 32;
LABEL_22:
  sub_1D5EF5F0C(v34, sub_1D5E4F358);
  return v33;
}

void *sub_1D6B010D8(__int128 *a1, uint64_t a2)
{
  v2 = a1[7];
  v58 = a1[6];
  v59 = v2;
  v60 = a1[8];
  v61 = *(a1 + 18);
  v3 = a1[3];
  v54 = a1[2];
  v55 = v3;
  v4 = a1[5];
  v56 = a1[4];
  v57 = v4;
  v5 = a1[1];
  v6 = *(a2 + 8);
  v52 = *a1;
  v53 = v5;
  if (v6 >> 8 <= 0xFE)
  {
    v14 = *a2;
    sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    if ((v6 & 0x100) != 0)
    {
      v25 = MEMORY[0x1E69E6F90];
      sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8(0);
      v39 = *(*(v26 - 8) + 72);
      v27 = (*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1D7270C10;
      sub_1D711F844(1701869908, 0xE400000000000000, 0x656D617246, 0xE500000000000000, (v28 + v27));
      v29 = type metadata accessor for FormatInspectionItem(0);
      v38 = *(*(v29 - 8) + 56);
      v38(v28 + v27, 0, 1, v29);
      sub_1D5B56024(0, &qword_1EC8803C0, sub_1D5E4F38C, v25);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_1D7273AE0;
      v49 = v59;
      v50 = v60;
      v45 = v55;
      v46 = v56;
      v51 = v61;
      v47 = v57;
      v48 = v58;
      v42 = v52;
      v43 = v53;
      v44 = v54;
      v40 = v14;
      v41 = v6;
      v31 = sub_1D6B007E4(&v42, &v40);
      *(v30 + 56) = &type metadata for FormatInspection;
      *(v30 + 64) = &off_1F51E3FD0;
      *(v30 + 32) = v31;
      v32 = sub_1D5F62BFC(v30);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v30 + 32));
      v33 = sub_1D7073500(v32);
      v9 = inited + 32;

      sub_1D711AD20(0x656D7473756A6441, 0xEA0000000000746ELL, v33, 0, 0, (v28 + v27 + v39));
      v38(v28 + v27 + v39, 0, 1, v29);
      sub_1D6795150(0x65636E6174736944, 0xE800000000000000, 0, 0, v28, &v42);
      swift_setDeallocating();
    }

    else
    {
      v9 = inited + 32;
      sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8(0);
      v16 = *(*(v15 - 8) + 72);
      v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D7270C10;
      v19 = v18 + v17;
      sub_1D711F844(1701869908, 0xE400000000000000, 0x6465786946, 0xE500000000000000, (v18 + v17));
      v20 = type metadata accessor for FormatInspectionItem(0);
      v21 = *(*(v20 - 8) + 56);
      v21(v19, 0, 1, v20);
      v22 = sub_1D6936F98(v14);
      v24 = sub_1D711F844(0x65756C6156, 0xE500000000000000, v22, v23, (v19 + v16));
      (v21)(v19 + v16, 0, 1, v20, v24);
      sub_1D6795150(0x65636E6174736944, 0xE800000000000000, 0, 0, v18, &v42);
      swift_setDeallocating();
    }

    swift_arrayDestroy();
  }

  else
  {
    v7 = MEMORY[0x1E69E6F90];
    sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v9 = inited + 32;
    sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v7);
    sub_1D5EA74B8(0);
    v11 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7273AE0;
    sub_1D711F844(1701869908, 0xE400000000000000, 1701736270, 0xE400000000000000, (v12 + v11));
    v13 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v13 - 8) + 56))(v12 + v11, 0, 1, v13);
    sub_1D6795150(0x65636E6174736944, 0xE800000000000000, 0, 0, v12, &v42);
    swift_setDeallocating();
    sub_1D5EF5F0C(v12 + v11, sub_1D5EA74B8);
  }

  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v34 = swift_allocObject();
  *(inited + 32) = v34;
  *(v34 + 48) = v44;
  v35 = v43;
  *(v34 + 16) = v42;
  *(v34 + 32) = v35;
  v36 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5EF5F0C(v9, sub_1D5E4F358);
  return v36;
}

NewsFeed::FormatLayoutSectionDescriptor::LayoutData __swiftcall FormatLayoutSectionDescriptor.LayoutData.init(layoutResult:)(NewsFeed::FeedLayoutResult *layoutResult)
{
  v61 = v1;
  v3 = type metadata accessor for FormatLayoutSectionDescriptor.Footer(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatLayoutSectionDescriptor.Header(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725EF8C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  rawValue = layoutResult->feedItemSupplementaryAttributes._rawValue;
  v59 = layoutResult->feedItemLayoutAttributes._rawValue;
  v57 = layoutResult->feedGroupDecorations._rawValue;
  v20 = *MEMORY[0x1E69D8478];
  v55 = *(v14 + 104);
  v55(v18, v20, v13, v16);
  v63 = v18;

  v58 = rawValue;
  sub_1D62ED47C(sub_1D6B022E0, v62, rawValue);
  v22 = v21;
  v53 = v18;
  v54 = 0;
  v23 = *(v14 + 8);
  v60 = v14 + 8;
  v56 = v23;
  v23(v18, v13);
  v24 = *(v22 + 16);
  if (v24)
  {
    v49[1] = v14 + 104;
    v50 = v13;
    v51 = v7;
    v52 = v4;
    v64 = MEMORY[0x1E69E7CC0];
    sub_1D6999D3C(0, v24, 0);
    v25 = v64;
    v26 = *(type metadata accessor for FeedItemSupplementaryAttributes(0) - 8);
    v27 = v22 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v28 = *(v26 + 72);
    do
    {
      sub_1D6B02570(v27, v12, type metadata accessor for FeedItemSupplementaryAttributes);
      v64 = v25;
      v30 = *(v25 + 16);
      v29 = *(v25 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D6999D3C((v29 > 1), v30 + 1, 1);
        v25 = v64;
      }

      *(v25 + 16) = v30 + 1;
      sub_1D6B02300(v12, v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v30, type metadata accessor for FormatLayoutSectionDescriptor.Header);
      v27 += v28;
      --v24;
    }

    while (v24);

    v31 = v61;
    v7 = v51;
    v4 = v52;
    v13 = v50;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
    v31 = v61;
  }

  v32 = v53;
  v33 = (v55)(v53, *MEMORY[0x1E69D8470], v13);
  MEMORY[0x1EEE9AC00](v33, v34);
  v49[-2] = v32;
  v35 = v58;

  sub_1D62ED47C(sub_1D6B02698, &v49[-4], v35);
  v37 = v36;

  v56(v32, v13);
  v38 = *(v37 + 16);
  if (v38)
  {
    v64 = MEMORY[0x1E69E7CC0];
    sub_1D6999CEC(0, v38, 0);
    v39 = v64;
    v40 = *(type metadata accessor for FeedItemSupplementaryAttributes(0) - 8);
    v41 = v37 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v42 = *(v40 + 72);
    do
    {
      sub_1D6B02570(v41, v7, type metadata accessor for FeedItemSupplementaryAttributes);
      v64 = v39;
      v43 = v7;
      v45 = *(v39 + 16);
      v44 = *(v39 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1D6999CEC((v44 > 1), v45 + 1, 1);
        v39 = v64;
      }

      *(v39 + 16) = v45 + 1;
      sub_1D6B02300(v43, v39 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v45, type metadata accessor for FormatLayoutSectionDescriptor.Footer);
      v41 += v42;
      --v38;
      v7 = v43;
    }

    while (v38);

    v31 = v61;
  }

  else
  {

    v39 = MEMORY[0x1E69E7CC0];
  }

  *v31 = v25;
  v31[1] = v39;
  result.footers._rawValue = v47;
  result.headers._rawValue = v46;
  return result;
}

uint64_t FormatLayoutSectionDescriptor.supplementaryAttributes.getter()
{
  v1 = v0[1];
  v2 = sub_1D6B01F1C(*v0, type metadata accessor for FormatLayoutSectionDescriptor.Header, type metadata accessor for FormatLayoutSectionDescriptor.Header, type metadata accessor for FormatLayoutSectionDescriptor.Header);
  v3 = sub_1D6B01F1C(v1, type metadata accessor for FormatLayoutSectionDescriptor.Footer, type metadata accessor for FormatLayoutSectionDescriptor.Footer, type metadata accessor for FormatLayoutSectionDescriptor.Footer);
  sub_1D69873E8(v3);
  return v2;
}

uint64_t sub_1D6B01F1C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v27 = a4;
  v6 = a2(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - v13;
  v26 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  MEMORY[0x1EEE9AC00](v26, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1D6998EB8(0, v18, 0);
    v19 = v31;
    v20 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v21 = *(v7 + 72);
    do
    {
      sub_1D6B02570(v20, v14, a3);
      sub_1D6B02570(v14, v10, a3);
      sub_1D6B02300(v10, v17, type metadata accessor for FeedItemSupplementaryAttributes);
      sub_1D6B02630(v14, v27);
      v31 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D6998EB8((v22 > 1), v23 + 1, 1);
        v19 = v31;
      }

      v29 = v26;
      v30 = sub_1D6B025D8();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
      sub_1D6B02570(v17, boxed_opaque_existential_1, type metadata accessor for FeedItemSupplementaryAttributes);
      *(v19 + 16) = v23 + 1;
      sub_1D5B63F14(&v28, v19 + 40 * v23 + 32);
      sub_1D6B02630(v17, type metadata accessor for FeedItemSupplementaryAttributes);
      v20 += v21;
      --v18;
    }

    while (v18);
  }

  return v19;
}

uint64_t sub_1D6B0218C()
{
  v1 = v0[1];
  v2 = sub_1D6B01F1C(*v0, type metadata accessor for FormatLayoutSectionDescriptor.Header, type metadata accessor for FormatLayoutSectionDescriptor.Header, type metadata accessor for FormatLayoutSectionDescriptor.Header);
  v3 = sub_1D6B01F1C(v1, type metadata accessor for FormatLayoutSectionDescriptor.Footer, type metadata accessor for FormatLayoutSectionDescriptor.Footer, type metadata accessor for FormatLayoutSectionDescriptor.Footer);
  sub_1D69873E8(v3);
  return v2;
}

uint64_t sub_1D6B02268(uint64_t a1)
{
  v2 = sub_1D6B0251C();

  return MEMORY[0x1EEE47F40](a1, v2);
}

uint64_t sub_1D6B022A4(uint64_t a1)
{
  v2 = sub_1D691183C();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D6B02300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6B02380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D6B023EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1D6B02468(uint64_t a1)
{
  result = type metadata accessor for FeedItemSupplementaryAttributes(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

unint64_t sub_1D6B0251C()
{
  result = qword_1EC891D18;
  if (!qword_1EC891D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891D18);
  }

  return result;
}

uint64_t sub_1D6B02570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D6B025D8()
{
  result = qword_1EDF13408;
  if (!qword_1EDF13408)
  {
    type metadata accessor for FeedItemSupplementaryAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13408);
  }

  return result;
}

uint64_t sub_1D6B02630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6B026D4(void *a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = (*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];

  sub_1D6FBAAA4(v4, a1, v7, v8);
  if (v2)
  {
  }

  else
  {
    v10 = v9;

    v30[0] = a1;
    v11 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v12 = v11();
    v13 = sub_1D5E03020(v12, v5);

    if (v13 < 0)
    {
      __break(1u);
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        v29 = v10;
        v30[0] = MEMORY[0x1E69E7CC0];
        sub_1D5BFC364(0, v13, 0);
        v14 = v30[0];
        v15 = *(v30[0] + 16);
        v16 = 16 * v15;
        do
        {
          v30[0] = v14;
          v17 = *(v14 + 24);
          v18 = v15 + 1;
          if (v15 >= v17 >> 1)
          {
            sub_1D5BFC364((v17 > 1), v15 + 1, 1);
            v14 = v30[0];
          }

          *(v14 + 16) = v18;
          v19 = v14 + v16;
          *(v19 + 32) = 87;
          *(v19 + 40) = 0xE100000000000000;
          v16 += 16;
          v15 = v18;
          --v13;
        }

        while (v13);
        v10 = v29;
      }

      v30[0] = v14;
      sub_1D5BBE0A8();
      sub_1D5BB0AB8();
      v20 = sub_1D7261F3C();
      v22 = v21;

      if (v10)
      {

        v24 = sub_1D62DD564(v23, a1);

        sub_1D62DF2F4(v24, v10, a1, 18, v31);
        type metadata accessor for FormatAttributedString(0);
        swift_allocObject();

        sub_1D61FFF18(v31, v30);
        sub_1D6BB8DF0(v20, v22, v31);
        sub_1D6BB92D8(a1);
        v28 = v27;

        sub_1D61FFF74(v31);
      }

      else
      {
        v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v26 = sub_1D726203C();

        v28 = [v25 initWithString_];
      }

      [v28 boundingRectWithSize:33 options:0 context:{1.79769313e308, 1.79769313e308}];
    }
  }
}

uint64_t _s8NewsFeed20FormatFontLineSizingV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (!*a1)
  {
    if (!v5)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v3, v5);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

LABEL_4:

  return sub_1D633D10C(v2, v4);
}

unint64_t sub_1D6B02B54(uint64_t a1)
{
  result = sub_1D6B02B7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B02B7C()
{
  result = qword_1EC891D20;
  if (!qword_1EC891D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891D20);
  }

  return result;
}

unint64_t sub_1D6B02BD0(void *a1)
{
  a1[1] = sub_1D66B6AA8();
  a1[2] = sub_1D66F8BDC();
  result = sub_1D6B02C08();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B02C08()
{
  result = qword_1EC891D28;
  if (!qword_1EC891D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891D28);
  }

  return result;
}

uint64_t WebEmbedDataVisualizationURLDataSource.contentType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5F8E840(v2, v3);
}

uint64_t WebEmbedDataVisualizationURLDataSource.key.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WebEmbedDataVisualizationURLDataSource.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedDataVisualizationURLDataSource.__allocating_init(contentType:key:url:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = *a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  v9 = OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
  v10 = sub_1D72585BC();
  (*(*(v10 - 8) + 32))(v8 + v9, a4, v10);
  return v8;
}

uint64_t WebEmbedDataVisualizationURLDataSource.init(contentType:key:url:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = *a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v6 = OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
  v7 = sub_1D72585BC();
  (*(*(v7 - 8) + 32))(v4 + v6, a4, v7);
  return v4;
}

uint64_t sub_1D6B02E58()
{
  v1 = 7955819;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x54746E65746E6F63;
  }
}

uint64_t sub_1D6B02EAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6B03C64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6B02ED4(uint64_t a1)
{
  v2 = sub_1D6B03270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B02F10(uint64_t a1)
{
  v2 = sub_1D6B03270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WebEmbedDataVisualizationURLDataSource.deinit()
{
  sub_1D62D46F4(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
  v2 = sub_1D72585BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t WebEmbedDataVisualizationURLDataSource.__deallocating_deinit()
{
  sub_1D62D46F4(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
  v2 = sub_1D72585BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t WebEmbedDataVisualizationURLDataSource.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6B036F8(0, &qword_1EDF024B0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B03270();
  sub_1D7264B5C();
  v11 = *(v3 + 24);
  v15 = *(v3 + 16);
  v16 = v11;
  v14[15] = 0;
  sub_1D5F8E840(v15, v11);
  sub_1D6B032C4();
  sub_1D72643BC();
  if (v2)
  {
    v12.n128_f64[0] = sub_1D62D46F4(v15, v16);
  }

  else
  {
    sub_1D62D46F4(v15, v16);
    LOBYTE(v15) = 1;
    sub_1D72643FC();
    LOBYTE(v15) = 2;
    sub_1D72585BC();
    sub_1D5B6AC44(&unk_1EDF45B70, MEMORY[0x1E6968FB8]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6, v12);
}

unint64_t sub_1D6B03270()
{
  result = qword_1EDF065D8;
  if (!qword_1EDF065D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF065D8);
  }

  return result;
}

unint64_t sub_1D6B032C4()
{
  result = qword_1EDF05FA0;
  if (!qword_1EDF05FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05FA0);
  }

  return result;
}

uint64_t WebEmbedDataVisualizationURLDataSource.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  WebEmbedDataVisualizationURLDataSource.init(from:)(a1);
  return v2;
}

uint64_t *WebEmbedDataVisualizationURLDataSource.init(from:)(void *a1)
{
  v3 = sub_1D72585BC();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B036F8(0, &qword_1EDF03860, MEMORY[0x1E69E6F48]);
  v22 = v7;
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B03270();
  v11 = v23;
  sub_1D7264B0C();
  if (v11)
  {
    swift_deallocPartialClassInstance();
    v17 = a1;
  }

  else
  {
    v23 = a1;
    v12 = v6;
    v14 = v20;
    v13 = v21;
    v25 = 0;
    sub_1D6B0375C();
    sub_1D726427C();
    *(v1 + 16) = v24;
    LOBYTE(v24) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v15;
    LOBYTE(v24) = 2;
    sub_1D5B6AC44(&unk_1EDF45B50, MEMORY[0x1E6968FD0]);
    v19 = v12;
    sub_1D726431C();
    (*(v14 + 8))(v10, v22);
    (*(v13 + 32))(v1 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v19, v3);
    v17 = v23;
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v1;
}

void sub_1D6B036F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6B03270();
    v7 = a3(a1, &type metadata for WebEmbedDataVisualizationURLDataSource.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6B0375C()
{
  result = qword_1EDF05F90;
  if (!qword_1EDF05F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F90);
  }

  return result;
}

uint64_t *sub_1D6B037B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = WebEmbedDataVisualizationURLDataSource.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D6B0389C()
{
  result = qword_1EC891D30;
  if (!qword_1EC891D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891D30);
  }

  return result;
}

unint64_t sub_1D6B038F4()
{
  result = qword_1EDF065C8;
  if (!qword_1EDF065C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF065C8);
  }

  return result;
}

unint64_t sub_1D6B0394C()
{
  result = qword_1EDF065D0;
  if (!qword_1EDF065D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF065D0);
  }

  return result;
}

uint64_t sub_1D6B039A0(__int128 *a1, uint64_t a2)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v28 - v15;
  v29 = a2;
  v17 = sub_1D72583DC();
  v19 = *(a1 + 4);
  v18 = *(a1 + 5);
  *&v31 = v17;
  *(&v31 + 1) = v20;

  MEMORY[0x1DA6F9910](v19, v18);

  sub_1D725855C();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v9 + 8))(v29, v8);
    v31 = *a1;
    sub_1D5BFB68C(&v31);
    v30 = a1[1];
    sub_1D5BFB68C(&v30);

    sub_1D5E3E404(v7);
    return 0;
  }

  else
  {
    v22 = *(v9 + 32);
    v22(v16, v7, v8);
    v23 = *a1;
    v24 = *(a1 + 1);

    WebEmbedDataVisualizationURLDataSourceContentType.init(rawValue:)(v23, v24, &v30);
    (*(v9 + 8))(v29, v8);
    v29 = *(&v30 + 1);
    v25 = v30;
    v31 = a1[1];
    v22(v12, v16, v8);

    type metadata accessor for WebEmbedDataVisualizationURLDataSource(0);
    v26 = swift_allocObject();
    v27 = v29;
    *(v26 + 16) = v25;
    *(v26 + 24) = v27;
    *(v26 + 32) = v31;
    v22((v26 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url), v12, v8);
    return v26;
  }
}

uint64_t sub_1D6B03C64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t PuzzleEmbedSubmitScoreHandler.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8NewsFeed29PuzzleEmbedSubmitScoreHandler_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PuzzleEmbedSubmitScoreHandler.delegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8NewsFeed29PuzzleEmbedSubmitScoreHandler_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D5EDA4EC;
}

id PuzzleEmbedSubmitScoreHandler.__allocating_init(scriptsManager:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC8NewsFeed29PuzzleEmbedSubmitScoreHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8NewsFeed29PuzzleEmbedSubmitScoreHandler_scriptsManager] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PuzzleEmbedSubmitScoreHandler.init(scriptsManager:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed29PuzzleEmbedSubmitScoreHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8NewsFeed29PuzzleEmbedSubmitScoreHandler_scriptsManager] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PuzzleEmbedSubmitScoreHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PuzzleEmbedSubmitScoreHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D6B0412C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8NewsFeed29PuzzleEmbedSubmitScoreHandler_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D6B04198(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8NewsFeed29PuzzleEmbedSubmitScoreHandler_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D6B047A0;
}

void _s8NewsFeed29PuzzleEmbedSubmitScoreHandlerC10didReceive_14securityOriginySo9SWMessage_p_So0l8SecurityK0_ptF_0(void *a1)
{
  v2 = v1;
  v4 = [a1 body];
  v5 = sub_1D7261D3C();

  v6 = sub_1D71BC9D8(v5);

  if (v6)
  {
    if (*(v6 + 16))
    {
      v7 = sub_1D5B69D90(0x65726F6373, 0xE500000000000000);
      if (v8)
      {
        sub_1D5B76B10(*(v6 + 56) + 32 * v7, v32);
        if (swift_dynamicCast())
        {
          if (qword_1EDF3B838 != -1)
          {
            swift_once();
          }

          v9 = sub_1D725C42C();
          __swift_project_value_buffer(v9, qword_1EDFFCFA8);

          v10 = sub_1D725C3FC();
          v11 = sub_1D7262EDC();

          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v32[0] = v13;
            *v12 = 136315138;
            v14 = sub_1D7261D4C();
            v16 = v15;

            v17 = sub_1D5BC5100(v14, v16, v32);

            *(v12 + 4) = v17;
            _os_log_impl(&dword_1D5B42000, v10, v11, "PuzzleEmbedSubmitScoreHandler received: %s", v12, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v13);
            MEMORY[0x1DA6FD500](v13, -1, -1);
            MEMORY[0x1DA6FD500](v12, -1, -1);
          }

          else
          {
          }

          v28 = v2 + OBJC_IVAR____TtC8NewsFeed29PuzzleEmbedSubmitScoreHandler_delegate;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v29 = *(v28 + 8);
            ObjectType = swift_getObjectType();
            (*(v29 + 8))(v2, &protocol witness table for PuzzleEmbedSubmitScoreHandler, v31, ObjectType, v29);
            swift_unknownObjectRelease();
          }

          return;
        }
      }
    }
  }

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725C42C();
  __swift_project_value_buffer(v18, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v19 = sub_1D725C3FC();
  v20 = sub_1D7262EBC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32[0] = v22;
    *v21 = 136315138;
    v23 = [a1 body];
    sub_1D7261D3C();

    v24 = sub_1D7261D4C();
    v26 = v25;

    v27 = sub_1D5BC5100(v24, v26, v32);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_1D5B42000, v19, v20, "PuzzleEmbedSubmitScoreHandler received invalid message %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1DA6FD500](v22, -1, -1);
    MEMORY[0x1DA6FD500](v21, -1, -1);
  }
}

unint64_t sub_1D6B047B4(void *a1)
{
  a1[1] = sub_1D668E58C();
  a1[2] = sub_1D668E758();
  result = sub_1D6B047EC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B047EC()
{
  result = qword_1EC891DB0;
  if (!qword_1EC891DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891DB0);
  }

  return result;
}

unint64_t sub_1D6B04840(uint64_t a1)
{
  result = sub_1D6B04868();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B04868()
{
  result = qword_1EC891DB8;
  if (!qword_1EC891DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891DB8);
  }

  return result;
}

uint64_t sub_1D6B048C0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66901CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static URLHandlerPattern.newsURLHandlerPatterns(paths:fragment:params:conditions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1D6B051F4(0);
    sub_1D725B28C();
    v8 = a1 + 40;
    do
    {
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D72AACF0;
      swift_bridgeObjectRetain_n();

      sub_1D725B26C();

      sub_1D725B26C();

      sub_1D725B26C();

      sub_1D725B26C();

      sub_1D725B26C();

      sub_1D725B26C();

      sub_1D725B26C();

      sub_1D725B26C();

      sub_1D6988634(v9);
      v8 += 16;
      --v6;
    }

    while (v6);
    return v10;
  }

  return result;
}

uint64_t static URLHandlerPattern.newsURLHandlerPatterns(path:fragment:params:conditions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D6B051F4(0);
  sub_1D725B28C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D72AACF0;

  sub_1D725B26C();

  sub_1D725B26C();

  sub_1D725B26C();

  sub_1D725B26C();

  sub_1D725B26C();

  sub_1D725B26C();

  sub_1D725B26C();

  sub_1D725B26C();
  return v7;
}

void sub_1D6B051F4(uint64_t a1)
{
  if (!qword_1EDF023C8)
  {
    sub_1D725B28C();
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF023C8);
    }
  }
}

uint64_t sub_1D6B05258()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6B05348(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6B05424(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6B05510@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6B05DB8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6B05540(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0x6E65727275437369;
  v5 = 0xEC00000064696150;
  v6 = 0x656C646E75427369;
  v7 = 0x80000001D73BA330;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x74666172447369;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x646961507369;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FormatIssueBinding.Bool.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6B05744()
{
  result = qword_1EC891DC0;
  if (!qword_1EC891DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891DC0);
  }

  return result;
}

unint64_t sub_1D6B05798(uint64_t a1)
{
  result = sub_1D6B057C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B057C0()
{
  result = qword_1EC891DC8;
  if (!qword_1EC891DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891DC8);
  }

  return result;
}

unint64_t sub_1D6B05854(void *a1)
{
  a1[1] = sub_1D667C7B0();
  a1[2] = sub_1D66FE2C8();
  result = sub_1D6B05744();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B05910()
{
  result = qword_1EC891DF0;
  if (!qword_1EC891DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891DF0);
  }

  return result;
}

unint64_t sub_1D6B05964()
{
  result = qword_1EDF2DD88[0];
  if (!qword_1EDF2DD88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2DD88);
  }

  return result;
}

uint64_t sub_1D6B059B8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  if (v4 <= 1)
  {
    if (*a1)
    {
      v6 = [*a2 isPaid];
      v5 = 0xE700000000000000;
      v7 = 0x64696150207349;
    }

    else
    {
      v6 = [*a2 isCurrent];
      v5 = 0xEA0000000000746ELL;
      v7 = 0x6572727543207349;
    }
  }

  else if (v4 == 2)
  {
    v6 = [*a2 isBundlePaid];
    v5 = 0xEE00646961502065;
    v7 = 0x6C646E7542207349;
  }

  else if (v4 == 3)
  {
    v5 = 0x80000001D73DEA30;
    v6 = *(a2 + 25) != 0;
    v7 = 0xD000000000000012;
  }

  else
  {
    v6 = [*a2 isDraft];
    v5 = 0xE800000000000000;
    v7 = 0x7466617244207349;
  }

  v8 = type metadata accessor for FormatInspectionItem(0);
  v9 = *(v8 + 24);
  *(a3 + v9) = v6;
  v10 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(a3 + v9, 0, 1, v10);
  *a3 = v7;
  a3[1] = v5;
  a3[2] = 0;
  a3[3] = 0;
  v11 = a3 + *(v8 + 28);
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = -1;
  return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
}

double sub_1D6B05BB8@<D0>(_OWORD *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5EA74B8(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[4];
  v24[5] = a1[5];
  v24[6] = v9;
  v25[0] = v10;
  *(v25 + 9) = *(a1 + 121);
  v12 = a1[3];
  v24[2] = a1[2];
  v24[3] = v12;
  v24[4] = v11;
  v13 = a1[1];
  v24[0] = *a1;
  v24[1] = v13;
  *&v22[0] = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 5, 0);
  v14 = 0;
  v15 = *&v22[0];
  do
  {
    v21 = byte_1F50F7230[v14 + 32];
    sub_1D6B059B8(&v21, v24, v8);
    *&v22[0] = v15;
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1D69972A4((v16 > 1), v17 + 1, 1);
      v15 = *&v22[0];
    }

    ++v14;
    *(v15 + 16) = v17 + 1;
    sub_1D5E4F52C(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17);
  }

  while (v14 != 5);
  sub_1D6795150(0x6E61656C6F6F42, 0xE700000000000000, 0, 0, v15, v22);

  result = *v22;
  v19 = v22[1];
  *a2 = v22[0];
  *(a2 + 16) = v19;
  *(a2 + 32) = v23;
  return result;
}

unint64_t sub_1D6B05DB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t static CoverIssueViewLayout.makeCatalogLayout(context:factories:options:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v11 = a1;
  v12 = a2;
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D7378], v6);
  sub_1D6B0A300(0, &qword_1EDF17FC8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  return sub_1D725A4CC();
}

uint64_t sub_1D6B05F30(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D6B0A0AC(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18[-v10];
  v12 = a2[40];
  v13 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v12);
  (*(v13 + 48))(v12, v13);
  v14 = a2[40];
  v15 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v14);
  (*(v15 + 56))(v14, v15);
  v21 = a1;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D74A8], v7);
  v19 = a2;
  v20 = a3;
  v16 = MEMORY[0x1E69D7150];
  sub_1D6B0A300(0, &qword_1EDF18070, MEMORY[0x1E69D7150]);
  sub_1D6B06860(&qword_1EDF18078, &qword_1EDF18070, v16, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6B06178(void *a1, void *a2, uint64_t a3)
{
  v57 = a3;
  v65 = a2;
  sub_1D6B0A0AC(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v48 - v8);
  v69 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 0x4024000000000000;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7488];
  v63 = *(v6 + 104);
  v64 = v11;
  v63(v9, v11, v5);
  v58 = v6 + 104;
  v12 = MEMORY[0x1E69D6F38];
  sub_1D6B0A300(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v14 = v13;
  v15 = sub_1D6B06860(&qword_1EDF18150, &qword_1EDF18148, v12, MEMORY[0x1E69D6F40]);
  v62 = v14;
  v51 = v15;
  sub_1D7259A9C();
  v16 = *(v6 + 8);
  v16(v9, v5);
  v60 = v16;
  v61 = v6 + 8;
  sub_1D6B0960C(v65, v57, a1, 16.0);
  v69 = a1;
  v59 = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = 0x4030000000000000;
  *v9 = v17;
  v50 = v5;
  v63(v9, v11, v5);
  sub_1D7259A9C();
  v16(v9, v5);
  v69 = a1;
  sub_1D5EF9444(0);
  v19 = v18;
  v57 = v18;
  v55 = swift_allocBox();
  v21 = v20;
  v49 = *(v19 + 48);
  v56 = *MEMORY[0x1E69D71E8];
  v22 = v56;
  v23 = sub_1D725A09C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 104);
  v26 = v24 + 104;
  v52 = v23;
  v25(v21, v22, v23);
  v53 = v26;
  v54 = v25;
  v27 = swift_allocObject();
  v28 = v65[40];
  v29 = v65[41];
  v30 = v65;
  __swift_project_boxed_opaque_existential_1(v65 + 37, v28);
  *(v27 + 16) = (*(v29 + 24))(v28, v29);
  v31 = v49;
  *(v21 + v49) = v27;
  v25(v21 + v31, *MEMORY[0x1E69D71F0], v23);
  *v9 = v55;
  LODWORD(v55) = *MEMORY[0x1E69D7468];
  v32 = v50;
  v33 = v63;
  (v63)(v9);
  v68 = v30;
  sub_1D72599EC();
  v34 = v60;
  v60(v9, v32);
  v35 = v59;
  v69 = v59;
  v36 = swift_allocObject();
  *(v36 + 16) = 0x401C000000000000;
  *v9 = v36;
  v33(v9, v64, v32);
  sub_1D7259A9C();
  v34(v9, v32);
  v69 = v35;
  v37 = v57;
  v38 = swift_allocBox();
  v40 = v39;
  v41 = *(v37 + 48);
  v42 = v52;
  v43 = v54;
  v54(v39, v56, v52);
  v43(v40 + v41, *MEMORY[0x1E69D7208], v42);
  *v9 = v38;
  v33(v9, v55, v32);
  v67 = v65;
  sub_1D72599EC();
  v44 = v60;
  v60(v9, v32);
  v45 = v59;
  v69 = v59;
  v46 = swift_allocObject();
  *(v46 + 16) = 0x4038000000000000;
  *v9 = v46;
  v33(v9, v64, v32);
  sub_1D7259A9C();
  v44(v9, v32);
  v69 = v45;
  v66 = v65;
  v33(v9, *MEMORY[0x1E69D7460], v32);
  sub_1D7259B2C();
  return (v44)(v9, v32);
}

uint64_t sub_1D6B06860(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6B0A300(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6B068A4(uint64_t a1, uint64_t a2)
{
  sub_1D6B0A0AC(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v29 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a1;
  swift_getKeyPath();
  v15 = *(a2 + 336);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v31 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v31;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    sub_1D6076D50(0);
    sub_1D6B0A0AC(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
    v20 = v19;
    v21 = *(v19 - 8);
    v22 = *(v21 + 80);
    v30 = v5;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    v25 = *MEMORY[0x1E69D7068];
    sub_1D6B0A0AC(0, &qword_1EDF180E0, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
    (*(*(v26 - 8) + 104))(v24 + v23, v25, v26);
    (*(v21 + 104))(v24 + v23, *MEMORY[0x1E69D7080], v20);
    v27 = MEMORY[0x1E69D6F38];
    sub_1D6B0A300(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    sub_1D6B06860(&qword_1EDF18150, &qword_1EDF18148, v27, MEMORY[0x1E69D6F40]);
    sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
    v28 = v31;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6B06D54(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v59 = sub_1D5EF9538;
  sub_1D6B0A0AC(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v54 = v4;
  v55 = v6;
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v41 - v8);
  v10 = sub_1D6B09EF0(a2);
  v49 = v10;
  v61 = a1;
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v51 = v9;
  *v9 = v11;
  v12 = *MEMORY[0x1E69D73E8];
  v13 = *(v6 + 104);
  v57 = v6 + 104;
  v58 = v13;
  v13(v9, v12, v5);
  sub_1D6076D50(0);
  v53 = v14;
  sub_1D6B0A0AC(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v16 = v15;
  v17 = *(v15 - 8);
  v42 = *(v17 + 72);
  v52 = *(v17 + 80);
  v18 = (v52 + 32) & ~v52;
  v50 = v18;
  v19 = swift_allocObject();
  v45 = v19;
  *(v19 + 16) = xmmword_1D7270C10;
  v20 = v19 + v18;
  *(v19 + v18) = 0x4034000000000000;
  LODWORD(v43) = *MEMORY[0x1E69D7240];
  v21 = v43;
  v22 = sub_1D725A13C();
  v23 = *(v22 - 8);
  v41 = *(v23 + 104);
  v44 = v23 + 104;
  v41(v20, v21, v22);
  v24 = *MEMORY[0x1E69D72D8];
  v25 = sub_1D725A29C();
  v26 = *(*(v25 - 8) + 104);
  v26(v20, v24, v25);
  v27 = *MEMORY[0x1E69D6FC0];
  v28 = *(v17 + 104);
  v47 = v16;
  v28(v20, v27, v16);
  v46 = v28;
  v48 = v17 + 104;
  v29 = v41;
  v30 = v42;
  *(v20 + v42) = 0x4008000000000000;
  v29(v20 + v30, v43, v22);
  v26(v20 + v30, v24, v25);
  v28(v20 + v30, *MEMORY[0x1E69D6FD0], v16);
  v31 = MEMORY[0x1E69D6F38];
  sub_1D6B0A300(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v44 = v32;
  v43 = sub_1D6B06860(&qword_1EDF18150, &qword_1EDF18148, v31, MEMORY[0x1E69D6F40]);
  sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  v49 = v49;
  v33 = v51;
  sub_1D7259A7C();

  v34 = v54;
  v35 = *(v55 + 8);
  v35(v33, v54);
  v61 = v60;
  swift_getKeyPath();
  v58(v33, *MEMORY[0x1E69D7470], v34);
  v36 = v50;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D7273AE0;
  v38 = *MEMORY[0x1E69D7070];
  sub_1D6B0A0AC(0, &qword_1EDF180E0, v59, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v39 - 8) + 104))(v37 + v36, v38, v39);
  v46(v37 + v36, *MEMORY[0x1E69D7080], v47);
  sub_1D7259A7C();

  return (v35)(v33, v34);
}

uint64_t sub_1D6B07334(uint64_t a1, uint64_t a2)
{
  v98 = a1;
  sub_1D6B0A0AC(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v99 = v4;
  v101 = *(v4 - 8);
  v5 = v101;
  MEMORY[0x1EEE9AC00](v4, v6);
  v100 = (v78 - v7);
  v102 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D6B09E0C(0);
  v9 = v8;
  v90 = swift_allocBox();
  v11 = v10;
  v12 = *(v9 + 48);
  v89 = *(v9 + 64);
  v13 = swift_allocObject();
  v14 = *(a2 + 232);
  v15 = *(a2 + 264);
  v103[6] = *(a2 + 248);
  *v104 = v15;
  *&v104[9] = *(a2 + 273);
  v16 = *(a2 + 168);
  v17 = *(a2 + 200);
  v103[2] = *(a2 + 184);
  v103[3] = v17;
  v103[4] = *(a2 + 216);
  v103[5] = v14;
  v103[0] = *(a2 + 152);
  v103[1] = v16;
  *(v13 + 16) = get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v103) != 0;
  *v11 = v13;
  v18 = *MEMORY[0x1E69D6F88];
  sub_1D6B0A0AC(0, &qword_1EC891E00, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D6F98]);
  (*(*(v19 - 8) + 104))(v11, v18, v19);
  sub_1D5EF9444(0);
  v21 = v20;
  v96 = v20;
  v22 = swift_allocBox();
  v24 = v23;
  v25 = *(v21 + 48);
  v26 = *MEMORY[0x1E69D71E8];
  v27 = sub_1D725A09C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 104);
  v30 = v28 + 104;
  v31 = v26;
  v32 = v27;
  v29(v24, v31);
  v93 = v30;
  v94 = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = 0x4000000000000000;
  *(v24 + v25) = v33;
  v88 = *MEMORY[0x1E69D71F0];
  v34 = v24 + v25;
  v35 = v32;
  (v29)(v34);
  *(v11 + v12) = v22;
  v95 = *MEMORY[0x1E69D7468];
  v36 = *(v5 + 104);
  v91 = v36;
  v37 = v99;
  (v36)(v11 + v12);
  (v36)(v11 + v89, *MEMORY[0x1E69D7470], v37);
  v92 = v5 + 104;
  v38 = v100;
  *v100 = v90;
  v39 = v38;
  v36();
  sub_1D6076D50(0);
  v90 = v40;
  sub_1D6B0A0AC(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v80 = v41;
  v42 = *(v41 - 8);
  v87 = *(v42 + 72);
  v89 = *(v42 + 80);
  v43 = (v89 + 32) & ~v89;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1D7273AE0;
  v86 = *MEMORY[0x1E69D7050];
  v45 = v86;
  sub_1D6B0A0AC(0, &qword_1EDF180E0, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  v83 = v46;
  v47 = *(v46 - 8);
  v84 = *(v47 + 104);
  v85 = v47 + 104;
  v78[0] = v43;
  v84(v44 + v43, v45, v46);
  v79 = *MEMORY[0x1E69D7080];
  v81 = *(v42 + 104);
  v82 = v42 + 104;
  v81(v44 + v43);
  v48 = MEMORY[0x1E69D6F38];
  sub_1D6B0A300(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v78[3] = v49;
  v78[2] = sub_1D6B06860(&qword_1EDF18150, &qword_1EDF18148, v48, MEMORY[0x1E69D6F40]);
  v78[1] = sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  v50 = *(v101 + 8);
  v101 += 8;
  KeyPath = v50;
  v50(v39, v37);
  v102 = v98;
  v98 = swift_getKeyPath();
  v51 = v96;
  v52 = swift_allocBox();
  v54 = v53;
  v55 = *(v51 + 48);
  v56 = swift_allocObject();
  *(v56 + 16) = 0x403C000000000000;
  *v54 = v56;
  v57 = v88;
  v58 = v35;
  v59 = v35;
  v60 = v94;
  (v94)(v54, v88, v59);
  v61 = swift_allocObject();
  *(v61 + 16) = 0x403C000000000000;
  *(v54 + v55) = v61;
  v60(v54 + v55, v57, v58);
  *v100 = v52;
  v91();
  v62 = v87;
  v63 = v78[0];
  v64 = swift_allocObject();
  v96 = v64;
  *(v64 + 16) = xmmword_1D7279970;
  v65 = v64 + v63;
  v66 = v83;
  v67 = v84;
  v84(v65, v86, v83);
  v68 = v79;
  v69 = v80;
  v70 = v81;
  (v81)(v65, v79, v80);
  v67(v65 + v62, *MEMORY[0x1E69D7070], v66);
  v70(v65 + v62, v68, v69);
  __asm { FMOV            V0.2D, #-10.0 }

  *(v65 + 2 * v62) = _Q0;
  v70(v65 + 2 * v62, *MEMORY[0x1E69D7090], v69);
  v76 = v100;
  sub_1D7259A7C();

  return KeyPath(v76, v99);
}

void sub_1D6B07C24(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, double a5)
{
  v15 = a1;
  sub_1D5EF92B8(a4, __src);
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  *(v8 + 24) = a2;
  v9 = a3[7];
  *(v8 + 128) = a3[6];
  *(v8 + 144) = v9;
  *(v8 + 153) = *(a3 + 121);
  v10 = a3[3];
  *(v8 + 64) = a3[2];
  *(v8 + 80) = v10;
  v11 = a3[5];
  *(v8 + 96) = a3[4];
  *(v8 + 112) = v11;
  v12 = a3[1];
  *(v8 + 32) = *a3;
  *(v8 + 48) = v12;
  memcpy((v8 + 176), __src, 0x188uLL);

  sub_1D5ECF2C4(a3, __src);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6B0A300(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6B06860(&qword_1EDF18150, &qword_1EDF18148, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259ABC();
}

void sub_1D6B07D7C(double a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  sub_1D5EF92B8(a5, __src);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a3;
  v10 = a4[7];
  *(v9 + 128) = a4[6];
  *(v9 + 144) = v10;
  *(v9 + 153) = *(a4 + 121);
  v11 = a4[3];
  *(v9 + 64) = a4[2];
  *(v9 + 80) = v11;
  v12 = a4[5];
  *(v9 + 96) = a4[4];
  *(v9 + 112) = v12;
  v13 = a4[1];
  *(v9 + 32) = *a4;
  *(v9 + 48) = v13;
  memcpy((v9 + 176), __src, 0x188uLL);

  sub_1D5ECF2C4(a4, __src);
  sub_1D7259D4C();

  sub_1D5EF92B8(a5, __src);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a3;
  memcpy((v14 + 32), __src, 0x188uLL);

  sub_1D7259D4C();
}

uint64_t sub_1D6B07EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v33 = a4;
  v31 = a2;
  v32 = a3;
  sub_1D6B0A0AC(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v30 = v7;
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v30 - v9);
  v39 = a1;
  sub_1D5EF9444(0);
  v12 = v11;
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(v12 + 48);
  v17 = *MEMORY[0x1E69D71E8];
  v18 = sub_1D725A09C();
  v19 = *(*(v18 - 8) + 104);
  v19(v15, v17, v18);
  v19(v15 + v16, *MEMORY[0x1E69D7208], v18);
  *v10 = v13;
  v20 = v30;
  (*(v34 + 104))(v10, *MEMORY[0x1E69D7468], v30);
  sub_1D6076D50(0);
  sub_1D6B0A0AC(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7273AE0;
  v26 = *MEMORY[0x1E69D7050];
  sub_1D6B0A0AC(0, &qword_1EDF180E0, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v27 - 8) + 104))(v25 + v24, v26, v27);
  (*(v23 + 104))(v25 + v24, *MEMORY[0x1E69D6FF0], v22);
  v35 = a5;
  v36 = v31;
  v37 = v32;
  v38 = v33;
  v28 = MEMORY[0x1E69D6FA8];
  sub_1D6B0A300(0, &qword_1EC891E08, MEMORY[0x1E69D6FA8]);
  sub_1D6B06860(&qword_1EC891E10, &qword_1EC891E08, v28, MEMORY[0x1E69D6FB0]);
  sub_1D7259A2C();

  return (*(v34 + 8))(v10, v20);
}

uint64_t sub_1D6B082D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v34 = a1;
  sub_1D6B0A0AC(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (&v29 - v11);
  v38 = a1;
  sub_1D5EF9444(0);
  v14 = v13;
  v30 = swift_allocBox();
  v16 = v15;
  v17 = *(v14 + 48);
  v18 = sub_1D725A09C();
  v19 = swift_allocBox();
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *v21 = v22;
  v23 = *(*(v18 - 8) + 104);
  v23(v21, *MEMORY[0x1E69D71F0], v18);
  *v16 = v19;
  v23(v16, *MEMORY[0x1E69D71F8], v18);
  v23((v16 + v17), *MEMORY[0x1E69D7208], v18);
  *v12 = v30;
  v24 = *(v9 + 104);
  v24(v12, *MEMORY[0x1E69D7468], v8);
  v35 = v31;
  v36 = v32;
  v37 = v33;
  v25 = MEMORY[0x1E69D6F38];
  sub_1D6B0A300(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6B06860(&qword_1EDF18150, &qword_1EDF18148, v25, MEMORY[0x1E69D6F40]);
  sub_1D72599EC();
  v26 = *(v9 + 8);
  v26(v12, v8);
  v38 = v34;
  v27 = swift_allocObject();
  *(v27 + 16) = a5;
  *v12 = v27;
  v24(v12, *MEMORY[0x1E69D7488], v8);
  sub_1D7259A9C();
  return (v26)(v12, v8);
}

uint64_t sub_1D6B08618(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1D69C61CC(0);
  v29 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B0A0AC(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v27 - v16;
  v41 = a1;
  swift_getKeyPath();
  v18 = *MEMORY[0x1E69D74A8];
  v19 = *(v14 + 104);
  v27 = v13;
  v19(v17, v18, v13);
  v40 = *(a2 + 24);
  v20 = *a3;
  if (*(a3 + 80) == 1 || (v42 = *(a3 + 104), !v42))
  {

    FCIssue.issueCoverModel.getter(&v37);
  }

  else
  {
    *&v37 = v20;
    *(&v37 + 1) = *(&v42 + 1);
    *&v38 = v42;
    v39[24] = 0;

    sub_1D6B0A3AC(&v42, v35);
    v21 = v20;
  }

  v35[0] = v37;
  v35[1] = v38;
  v36[0] = *v39;
  *(v36 + 9) = *&v39[9];
  v22 = a4[40];
  v23 = a4[41];
  __swift_project_boxed_opaque_existential_1(a4 + 37, v22);
  v24 = (*(v23 + 64))(v22, v23);
  v30 = 0;
  v31 = 0x4010000000000000;
  v32 = v24;
  v33 = -1;
  v34 = 0x3FE0000000000000;
  sub_1D6B0A0AC(0, &qword_1EDF180F8, sub_1D5EA52B8, &type metadata for IssueCoverViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  type metadata accessor for IssueCoverViewLayoutAttributesFactory();
  sub_1D5EF9538();
  sub_1D69C6348();
  sub_1D69C6184(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory, &protocol conformance descriptor for IssueCoverViewLayoutAttributesFactory);
  sub_1D7259D2C();
  v25 = MEMORY[0x1E69D6F38];
  sub_1D6B0A300(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6B06860(&qword_1EDF18150, &qword_1EDF18148, v25, MEMORY[0x1E69D6F40]);
  sub_1D7259A5C();

  (*(v28 + 8))(v11, v29);
  return (*(v14 + 8))(v17, v27);
}

uint64_t sub_1D6B08A6C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v35 = a3;
  v34 = a2;
  v32 = sub_1D5EF9538;
  sub_1D6B0A0AC(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v31 = v6;
  v33 = *(v6 - 8);
  v7 = v33;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v31 - v9);
  v39 = a1;
  sub_1D5EF9444(0);
  v12 = v11;
  v13 = swift_allocBox();
  v15 = v14;
  v16 = *(v12 + 48);
  v17 = *MEMORY[0x1E69D71E8];
  v18 = sub_1D725A09C();
  v19 = *(*(v18 - 8) + 104);
  v19(v15, v17, v18);
  v19(v15 + v16, *MEMORY[0x1E69D7208], v18);
  *v10 = v13;
  v20 = v31;
  (*(v7 + 104))(v10, *MEMORY[0x1E69D7468], v31);
  sub_1D6076D50(0);
  v21 = v32;
  sub_1D6B0A0AC(0, &qword_1EDF180C8, v32, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7273AE0;
  v27 = *MEMORY[0x1E69D7050];
  sub_1D6B0A0AC(0, &qword_1EDF180E0, v21, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v28 - 8) + 104))(v26 + v25, v27, v28);
  (*(v24 + 104))(v26 + v25, *MEMORY[0x1E69D6FF0], v23);
  v36 = a4;
  v37 = v34;
  v38 = v35;
  v29 = MEMORY[0x1E69D6FA8];
  sub_1D6B0A300(0, &qword_1EC891E08, MEMORY[0x1E69D6FA8]);
  sub_1D6B06860(&qword_1EC891E10, &qword_1EC891E08, v29, MEMORY[0x1E69D6FB0]);
  sub_1D7259A2C();

  return (*(v33 + 8))(v10, v20);
}

uint64_t sub_1D6B08E48(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v23 = a2;
  v24 = a3;
  sub_1D6B0A0AC(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v23 - v10);
  v28 = a1;
  sub_1D5EF9444(0);
  v13 = v12;
  v14 = swift_allocBox();
  v16 = v15;
  v17 = *(v13 + 48);
  v18 = *MEMORY[0x1E69D71E8];
  v19 = sub_1D725A09C();
  v20 = *(*(v19 - 8) + 104);
  v20(v16, v18, v19);
  v20(v16 + v17, *MEMORY[0x1E69D7208], v19);
  *v11 = v14;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7468], v7);
  v25 = a4;
  v26 = v23;
  v27 = v24;
  v21 = MEMORY[0x1E69D6F38];
  sub_1D6B0A300(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6B06860(&qword_1EDF18150, &qword_1EDF18148, v21, MEMORY[0x1E69D6F40]);
  sub_1D72599EC();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6B090C4(char *a1, uint64_t a2, void *a3, double a4)
{
  v38 = a2;
  v41 = a1;
  sub_1D69C61CC(0);
  v44 = v7;
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v42 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B0A0AC(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (v37 - v18);
  *&v50 = a1;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *v19 = v20;
  v21 = *(v12 + 104);
  v21(v19, *MEMORY[0x1E69D7480], v11);
  v22 = MEMORY[0x1E69D6F38];
  sub_1D6B0A300(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v24 = v23;
  sub_1D6B06860(&qword_1EDF18150, &qword_1EDF18148, v22, MEMORY[0x1E69D6F40]);
  v40 = v24;
  sub_1D7259A9C();
  v39 = *(v12 + 8);
  v37[1] = v12 + 8;
  v39(v19, v11);
  v57 = v41;
  swift_getKeyPath();
  v25 = *MEMORY[0x1E69D74A8];
  v41 = v15;
  v21(v15, v25, v11);
  v56 = *(v38 + 24);
  v26 = a3[1];
  if (a3[11] == 1 || (v27 = a3[14]) == 0)
  {

    FCIssue.issueCoverModel.getter(&v53);
  }

  else
  {
    v28 = a3[15];
    *&v53 = a3[1];
    *(&v53 + 1) = v28;
    *&v54 = v27;
    v55[24] = 0;

    v29 = v27;
    v30 = v26;
  }

  v50 = v53;
  v51 = v54;
  v52[0] = *v55;
  *(v52 + 9) = *&v55[9];
  v31 = a3[40];
  v32 = a3[41];
  __swift_project_boxed_opaque_existential_1(a3 + 37, v31);
  v33 = (*(v32 + 64))(v31, v32);
  v45 = 0;
  v46 = 0x4010000000000000;
  v47 = v33;
  v48 = -1;
  v49 = 0x3FE0000000000000;
  sub_1D6B0A0AC(0, &qword_1EDF180F8, sub_1D5EA52B8, &type metadata for IssueCoverViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  type metadata accessor for IssueCoverViewLayoutAttributesFactory();
  sub_1D5EF9538();
  sub_1D69C6348();
  sub_1D69C6184(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory, &protocol conformance descriptor for IssueCoverViewLayoutAttributesFactory);
  v34 = v42;
  sub_1D7259D2C();
  v35 = v41;
  sub_1D7259A5C();

  (*(v43 + 8))(v34, v44);
  return (v39)(v35, v11);
}

uint64_t sub_1D6B0960C(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v61 = *a3;
  v62 = a2;
  sub_1D69C61CC(0);
  v60 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B0A0AC(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v12 = v11;
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v58 - v18);
  v20 = *(a1 + 232);
  v21 = *(a1 + 264);
  v87 = *(a1 + 248);
  v88[0] = v21;
  *(v88 + 9) = *(a1 + 273);
  v22 = *(a1 + 168);
  v23 = *(a1 + 200);
  v83 = *(a1 + 184);
  v84 = v23;
  v85 = *(a1 + 216);
  v86 = v20;
  v81 = *(a1 + 152);
  v82 = v22;
  v24 = *(a1 + 232);
  v25 = *(a1 + 264);
  v95 = *(a1 + 248);
  v96[0] = v25;
  *(v96 + 9) = *(a1 + 273);
  v26 = *(a1 + 168);
  v27 = *(a1 + 200);
  v91 = *(a1 + 184);
  v92 = v27;
  v93 = *(a1 + 216);
  v94 = v24;
  v89 = *(a1 + 152);
  v90 = v26;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v89) == 1)
  {
    v64 = a3;
    swift_getKeyPath();
    v28 = *MEMORY[0x1E69D74A8];
    v29 = *(v63 + 104);
    v59 = v12;
    v29(v15, v28, v12);
    v76 = *(v62 + 24);
    v30 = *(a1 + 8);
    if (*(a1 + 88) == 1 || (v31 = *(a1 + 112)) == 0)
    {

      FCIssue.issueCoverModel.getter(&v73);
    }

    else
    {
      v32 = *(a1 + 120);
      *&v73 = *(a1 + 8);
      *(&v73 + 1) = v32;
      *&v74 = v31;
      BYTE8(v75[1]) = 0;

      v33 = v31;
      v34 = v30;
    }

    v77 = v73;
    v78 = v74;
    v79[0] = v75[0];
    *(v79 + 9) = *(v75 + 9);
    v56 = *(a1 + 320);
    v55 = *(a1 + 328);
    __swift_project_boxed_opaque_existential_1((a1 + 296), v56);
    v57 = (*(v55 + 64))(v56, v55);
    LOBYTE(v65) = 0;
    *(&v65 + 1) = 0x4010000000000000;
    *&v66 = v57;
    *(&v66 + 1) = -1;
    *&v67 = 0x3FE0000000000000;
    sub_1D6B0A0AC(0, &qword_1EDF180F8, sub_1D5EA52B8, &type metadata for IssueCoverViewLayoutAttributes, MEMORY[0x1E69D6F58]);
    type metadata accessor for IssueCoverViewLayoutAttributesFactory();
    sub_1D5EF9538();
    sub_1D69C6348();
    sub_1D69C6184(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory, &protocol conformance descriptor for IssueCoverViewLayoutAttributesFactory);
    sub_1D7259D2C();
    sub_1D6B06860(&qword_1EDF18150, &qword_1EDF18148, MEMORY[0x1E69D6F38], MEMORY[0x1E69D6F40]);
    sub_1D7259A5C();

    (*(v7 + 8))(v10, v60);
    return (*(v63 + 8))(v15, v59);
  }

  else
  {
    v79[4] = v95;
    v80[0] = v96[0];
    *(v80 + 9) = *(v96 + 9);
    v79[0] = v91;
    v79[1] = v92;
    v79[2] = v93;
    v79[3] = v94;
    v77 = v89;
    v78 = v90;
    v76 = a3;
    sub_1D5EF9444(0);
    v36 = v35;
    v60 = swift_allocBox();
    v38 = v37;
    v39 = *(v36 + 48);
    v40 = *MEMORY[0x1E69D71E8];
    v41 = sub_1D725A09C();
    v42 = v19;
    v43 = v12;
    v44 = *(*(v41 - 8) + 104);
    v44(v38, v40, v41);
    v44(v38 + v39, *MEMORY[0x1E69D7208], v41);
    *v42 = v60;
    v45 = v63;
    v46 = v42;
    (*(v63 + 104))(v42, *MEMORY[0x1E69D7468], v43);
    sub_1D6076D50(0);
    sub_1D6B0A0AC(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
    v48 = v47;
    v49 = *(v47 - 8);
    v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1D7273AE0;
    v52 = (*(v49 + 104))(v51 + v50, *MEMORY[0x1E69D7098], v48);
    MEMORY[0x1EEE9AC00](v52, v53);
    v71 = v87;
    v72[0] = v88[0];
    *(v72 + 9) = *(v88 + 9);
    v67 = v83;
    v68 = v84;
    v69 = v85;
    v70 = v86;
    v65 = v81;
    v66 = v82;
    sub_1D5ECF2C4(&v65, &v64);
    sub_1D6B06860(&qword_1EDF18150, &qword_1EDF18148, MEMORY[0x1E69D6F38], MEMORY[0x1E69D6F40]);
    sub_1D7259A2C();
    sub_1D5EF1C70(&v81);

    return (*(v45 + 8))(v46, v43);
  }
}

void sub_1D6B09E0C(uint64_t a1)
{
  if (!qword_1EC891DF8)
  {
    sub_1D6B0A0AC(255, &qword_1EC891E00, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D6F98]);
    sub_1D6B0A0AC(255, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC891DF8);
    }
  }
}

uint64_t sub_1D6B09EF0(uint64_t a1)
{
  v2 = sub_1D7261B9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = qword_1EDF347F8;
  if ((*(a1 + 56) & 4) == 0)
  {
    v8 = *(a1 + 368);
    if (*(v8 + qword_1EDF347F8))
    {
      return *(v8 + *(*v8 + 136));
    }

    sub_1D5B5DA7C();
    *v6 = sub_1D726308C();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
    a1 = sub_1D7261BBC();
    v9 = *(v3 + 8);
    v3 += 8;
    v9(v6, v2);
    if (a1)
    {
      return *(v8 + *(*v8 + 136));
    }

    __break(1u);
  }

  v8 = *(a1 + 376);
  if (*(v8 + v7))
  {
    return *(v8 + *(*v8 + 136));
  }

  sub_1D5B5DA7C();
  *v6 = sub_1D726308C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
  v10 = sub_1D7261BBC();
  result = (*(v3 + 8))(v6, v2);
  if (v10)
  {
    return *(v8 + *(*v8 + 136));
  }

  __break(1u);
  return result;
}

void sub_1D6B0A0AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t objectdestroy_26Tm_0()
{

  if (*(v0 + 112) != 1)
  {
  }

  if (*(v0 + 160) >= 0x12uLL)
  {
  }

  if (*(v0 + 264) != 1)
  {
  }

  if (*(v0 + 312) >= 0x12uLL)
  {
  }

  v1 = *(v0 + 328);
  if (v1)
  {

    if (*(v0 + 408) != 1)
    {
    }

    if (*(v0 + 456) >= 0x12uLL)
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 472));

  return swift_deallocObject();
}

void sub_1D6B0A300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for CoverIssueViewLayout;
    v8[1] = &type metadata for CoverIssueViewLayout.Attributes;
    v8[2] = sub_1D5EF9538();
    v8[3] = sub_1D5EF958C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6B0A3AC(uint64_t a1, uint64_t a2)
{
  sub_1D5B49CBC(0, &qword_1EC891E18, &type metadata for FeedIssue.Overrides.Image);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed34FormatPluginDataPlaceholderContentO(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 4)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1D6B0A43C(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

id sub_1D6B0A464()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v0 setNumberStyle_];
  result = [v0 setMaximumFractionDigits_];
  qword_1EC891E20 = v0;
  return result;
}

unint64_t sub_1D6B0A4EC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1D5BA6EF4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6B0A564(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1D6B0A67C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1D6B0A84C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v68 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for GroupLayoutContext;
  sub_1D5BF045C(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v68, type metadata accessor for GroupLayoutContext);
  v9 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
  v77 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
  v78 = v9;
  v79 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
  v80 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
  v10 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
  v75 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
  v76 = v10;
  v11 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory);
  sub_1D5CF6A5C(&v75, &v71);

  v12 = sub_1D6E8DE74(a1, a2);
  v13 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
  v71 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v72 = v13;
  v14 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
  v73 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
  v74 = v14;
  v57 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors);
  v58 = v12;
  v56 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options);
  v65 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks);
  v15 = MEMORY[0x1E69E6720];
  v50 = MEMORY[0x1E69E6720];
  sub_1D6B15C24(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, v70, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
  v16 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v17 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);
  v19 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v18 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8);
  v20 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
  v53 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 16);
  v54 = v18;
  v49[0] = v16;
  v49[1] = v20;
  v21 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 40);
  v55 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 32);
  v22 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines);
  v23 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);
  v51 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  v52 = v21;
  v66 = v22;
  v67 = v23;
  v24 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions);
  v25 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v61 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
  v62 = v24;
  v26 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
  v63 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  v64 = v25;
  v59 = v26;
  v27 = swift_allocObject();
  sub_1D5BF045C(v68, v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v60);
  v28 = v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
  v29 = v78;
  *(v28 + 32) = v77;
  *(v28 + 48) = v29;
  *(v28 + 64) = v79;
  *(v28 + 80) = v80;
  v30 = v76;
  *v28 = v75;
  *(v28 + 16) = v30;
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v11;
  v31 = v57;
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v58;
  v32 = (v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v33 = v72;
  *v32 = v71;
  v32[1] = v33;
  v34 = v74;
  v32[2] = v73;
  v32[3] = v34;
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v31;
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v56;
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v65;
  sub_1D6B15C24(v70, v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v15);
  v35 = (v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  *v35 = v16;
  v35[1] = v17;
  v36 = (v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v38 = v53;
  v37 = v54;
  *v36 = v19;
  v36[1] = v37;
  v36[2] = v38;
  v36[3] = v20;
  v39 = v52;
  v36[4] = v55;
  v36[5] = v39;
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v66;
  v40 = (v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  v41 = v67;
  *v40 = v51;
  v40[1] = v41;
  sub_1D6B154F0(&v71, &v69);

  sub_1D67F5880(v19, v37);
  v42 = v59;

  v43 = v62;

  v44 = v61;

  sub_1D6B15BC8(v70, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v50);
  sub_1D5BE7AAC(v68, type metadata accessor for GroupLayoutContext);
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v43;
  v45 = (v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v46 = v63;
  *v45 = v64;
  v45[1] = v44;
  v47 = (v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  *v47 = v46;
  v47[1] = v42;
  return v27;
}

uint64_t *sub_1D6B0ACE8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) && (a2 & 1) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors);
  sub_1D6D0A744(v11, a1);
  if ((v12 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      v68 = v6;

      a1 = sub_1D5D6021C(a1, v11);
      goto LABEL_10;
    }

LABEL_8:
    v68 = v6;

LABEL_10:
    v69 = type metadata accessor for GroupLayoutContext;
    sub_1D5BF045C(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v10, type metadata accessor for GroupLayoutContext);
    v13 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
    v79 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
    v80 = v13;
    v81 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
    v82 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
    v14 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    v77 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
    v78 = v14;
    v15 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
    v73 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory);
    v74 = v15;
    v16 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
    v85 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
    v86 = v16;
    v17 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
    v83 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
    v84 = v17;
    v18 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks);
    v71 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options);
    v72 = v18;
    v67 = MEMORY[0x1E69E6720];
    sub_1D6B15C24(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, v76, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
    v65 = v10;
    v19 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);
    v61 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    v70 = v19;
    v21 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
    v20 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8);
    v22 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
    v58 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 16);
    v59 = v21;
    v53 = v22;
    v54 = v20;
    v23 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 32);
    v56 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 40);
    v57 = v23;
    v55 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines);
    v24 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);
    v66 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    v60 = v24;
    v64 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions);
    *(swift_allocObject() + 16) = a1;
    sub_1D5CF6A5C(&v77, v75);

    sub_1D6B154F0(&v83, v75);

    v25 = v21;
    v27 = v53;
    v26 = v54;
    sub_1D67F5880(v25, v54);

    v28 = v55;

    v64 = sub_1D725A7DC();

    v29 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    v30 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
    v31 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
    v62 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
    v63 = v29;
    v3 = swift_allocObject();
    v32 = v65;
    sub_1D5BF045C(v65, v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v69);
    v33 = v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
    v34 = v80;
    *(v33 + 2) = v79;
    *(v33 + 3) = v34;
    *(v33 + 4) = v81;
    *(v33 + 10) = v82;
    v35 = v78;
    *v33 = v77;
    *(v33 + 1) = v35;
    v36 = v74;
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v73;
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v36;
    v37 = (v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
    v38 = v84;
    *v37 = v83;
    v37[1] = v38;
    v39 = v86;
    v37[2] = v85;
    v37[3] = v39;
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = a1;
    v40 = v72;
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v71;
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v40;
    v41 = v67;
    sub_1D6B15C24(v76, v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v67);
    v42 = (v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    v43 = v70;
    *v42 = v61;
    v42[1] = v43;
    v44 = (v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
    v45 = v58;
    *v44 = v59;
    v44[1] = v26;
    v44[2] = v45;
    v44[3] = v27;
    v46 = v56;
    v44[4] = v57;
    v44[5] = v46;
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v28;
    v47 = (v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    v48 = v60;
    *v47 = v66;
    v47[1] = v48;

    sub_1D6B15BC8(v76, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v41);
    sub_1D5BE7AAC(v32, type metadata accessor for GroupLayoutContext);
    v49 = v63;
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v64;
    v50 = (v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    *v50 = v49;
    v50[1] = v30;
    v51 = (v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
    *v51 = v62;
    v51[1] = v31;
    return v3;
  }

  if (a2)
  {
    goto LABEL_8;
  }

LABEL_3:

  return v3;
}

uint64_t sub_1D6B0B228(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v68 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for GroupLayoutContext;
  sub_1D5BF045C(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v68, type metadata accessor for GroupLayoutContext);
  v9 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
  v77 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
  v78 = v9;
  v79 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
  v80 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
  v10 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
  v75 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
  v76 = v10;
  v11 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory);
  sub_1D5CF6A5C(&v75, &v71);

  v12 = sub_1D6E8E000(a1, a2);
  v13 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
  v71 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v72 = v13;
  v14 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
  v73 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
  v74 = v14;
  v57 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors);
  v58 = v12;
  v56 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options);
  v65 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks);
  v15 = MEMORY[0x1E69E6720];
  v50 = MEMORY[0x1E69E6720];
  sub_1D6B15C24(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, v70, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
  v16 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v17 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);
  v19 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v18 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8);
  v20 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
  v53 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 16);
  v54 = v18;
  v49[0] = v16;
  v49[1] = v20;
  v21 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 40);
  v55 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 32);
  v22 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines);
  v23 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);
  v51 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  v52 = v21;
  v66 = v22;
  v67 = v23;
  v24 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions);
  v25 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v61 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
  v62 = v24;
  v26 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
  v63 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  v64 = v25;
  v59 = v26;
  v27 = swift_allocObject();
  sub_1D5BF045C(v68, v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v60);
  v28 = v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
  v29 = v78;
  *(v28 + 32) = v77;
  *(v28 + 48) = v29;
  *(v28 + 64) = v79;
  *(v28 + 80) = v80;
  v30 = v76;
  *v28 = v75;
  *(v28 + 16) = v30;
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v11;
  v31 = v57;
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v58;
  v32 = (v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v33 = v72;
  *v32 = v71;
  v32[1] = v33;
  v34 = v74;
  v32[2] = v73;
  v32[3] = v34;
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v31;
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v56;
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v65;
  sub_1D6B15C24(v70, v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v15);
  v35 = (v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  *v35 = v16;
  v35[1] = v17;
  v36 = (v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v38 = v53;
  v37 = v54;
  *v36 = v19;
  v36[1] = v37;
  v36[2] = v38;
  v36[3] = v20;
  v39 = v52;
  v36[4] = v55;
  v36[5] = v39;
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v66;
  v40 = (v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  v41 = v67;
  *v40 = v51;
  v40[1] = v41;
  sub_1D6B154F0(&v71, &v69);

  sub_1D67F5880(v19, v37);
  v42 = v59;

  v43 = v62;

  v44 = v61;

  sub_1D6B15BC8(v70, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v50);
  sub_1D5BE7AAC(v68, type metadata accessor for GroupLayoutContext);
  *(v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v43;
  v45 = (v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v46 = v63;
  *v45 = v64;
  v45[1] = v44;
  v47 = (v27 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  *v47 = v46;
  v47[1] = v42;
  return v27;
}

uint64_t sub_1D6B0B700()
{
  v1 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v67 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BF045C(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v67, type metadata accessor for GroupLayoutContext);
  v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
  v72 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
  v73 = v4;
  v74 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
  v75 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
  v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
  v6 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
  v57 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory);
  v70 = v5;
  v71 = v6;
  v63 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  v7 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
  v78 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
  v79 = v7;
  v8 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
  v76 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v77 = v8;
  v9 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors);
  v10 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options);
  v49 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks);
  v11 = v49;
  v12 = MEMORY[0x1E69E6720];
  v55 = MEMORY[0x1E69E6720];
  sub_1D6B15C24(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, v69, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
  v13 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v56 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);
  v14 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v15 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8);
  v16 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
  v47 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 16);
  v17 = v47;
  v48 = v15;
  v53 = v16;
  v54 = v13;
  v18 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 40);
  v51 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 32);
  v52 = v14;
  v19 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines);
  v64 = v18;
  v65 = v19;
  v20 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);
  v50 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  v66 = v20;
  v21 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions);
  v22 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v59 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
  v60 = v21;
  v23 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
  v61 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  v62 = v22;
  v58 = v23;
  v24 = swift_allocObject();
  sub_1D5BF045C(v67, v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, type metadata accessor for GroupLayoutContext);
  v25 = v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
  v26 = v73;
  *(v25 + 32) = v72;
  *(v25 + 48) = v26;
  *(v25 + 64) = v74;
  *(v25 + 80) = v75;
  v27 = v71;
  *v25 = v70;
  *(v25 + 16) = v27;
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v57;
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v63;
  v28 = (v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v29 = v77;
  *v28 = v76;
  v28[1] = v29;
  v30 = v79;
  v28[2] = v78;
  v28[3] = v30;
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v9;
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v10;
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v11;
  sub_1D6B15C24(v69, v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v12);
  v31 = (v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v32 = v56;
  *v31 = v54;
  v31[1] = v32;
  v33 = (v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v34 = v52;
  *v33 = v52;
  v33[1] = v15;
  v33[2] = v17;
  v35 = v51;
  v33[3] = v53;
  v33[4] = v35;
  v36 = v65;
  v33[5] = v64;
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v36;
  v37 = (v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  v38 = v66;
  *v37 = v50;
  v37[1] = v38;
  sub_1D5CF6A5C(&v70, v68);

  sub_1D6B154F0(&v76, v68);

  sub_1D67F5880(v34, v48);
  v39 = v58;

  v40 = v60;

  v41 = v59;

  sub_1D6B15BC8(v69, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v55);
  sub_1D5BE7AAC(v67, type metadata accessor for GroupLayoutContext);
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v40;
  v42 = (v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v43 = v61;
  *v42 = v62;
  v42[1] = v41;
  v44 = (v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  *v44 = v43;
  v44[1] = v39;
  return v24;
}

uint64_t sub_1D6B0BBC4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v67 = type metadata accessor for GroupLayoutContext;
    v68 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D5BF045C(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v7, type metadata accessor for GroupLayoutContext);
    v8 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
    v83 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
    v84 = v8;
    v85 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
    v86 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
    v9 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    v81 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
    v82 = v9;
    sub_1D5CF6A5C(&v81, &v77);
    v10 = sub_1D6E752E0(a1);
    v64 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
    v65 = v10;
    v11 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
    v77 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
    v78 = v11;
    v12 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
    v79 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
    v80 = v12;
    v52 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors);
    v13 = v52;
    v14 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options);
    v62 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks);
    v63 = v14;
    v15 = MEMORY[0x1E69E6720];
    v55 = MEMORY[0x1E69E6720];
    sub_1D6B15C24(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, v76, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
    v16 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);
    v51 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    v17 = v51;
    v18 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
    v58 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8);
    v59 = v18;
    v20 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 16);
    v53 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
    v19 = v53;
    v54 = v20;
    v21 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 40);
    v60 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 32);
    v61 = v16;
    v22 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines);
    v23 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);
    v56 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    v57 = v21;
    v73 = v22;
    v74 = v23;
    v24 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions);
    v25 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    v69 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
    v70 = v24;
    v26 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
    v71 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
    v72 = v25;
    v66 = v26;
    v2 = swift_allocObject();
    sub_1D5BF045C(v7, v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v67);
    v27 = v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
    v28 = v84;
    *(v27 + 32) = v83;
    *(v27 + 48) = v28;
    *(v27 + 64) = v85;
    *(v27 + 80) = v86;
    v29 = v82;
    *v27 = v81;
    *(v27 + 16) = v29;
    v30 = v64;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v65;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v30;
    v31 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
    v32 = v78;
    *v31 = v77;
    v31[1] = v32;
    v33 = v80;
    v31[2] = v79;
    v31[3] = v33;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v13;
    v34 = v62;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v63;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v34;
    sub_1D6B15C24(v76, v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v15);
    v35 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    v36 = v61;
    *v35 = v17;
    v35[1] = v36;
    v37 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
    v39 = v58;
    v38 = v59;
    *v37 = v59;
    v37[1] = v39;
    v37[2] = v20;
    v37[3] = v19;
    v40 = v57;
    v37[4] = v60;
    v37[5] = v40;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v73;
    v41 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    v42 = v74;
    *v41 = v56;
    v41[1] = v42;

    sub_1D6B154F0(&v77, &v75);

    sub_1D67F5880(v38, v39);
    v43 = v66;

    v44 = v70;

    v45 = v69;

    sub_1D6B15BC8(v76, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v55);
    sub_1D5BE7AAC(v68, type metadata accessor for GroupLayoutContext);
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v44;
    v46 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    v47 = v71;
    *v46 = v72;
    v46[1] = v45;
    v48 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
    *v48 = v47;
    v48[1] = v43;
  }

  else
  {
  }

  return v2;
}

uint64_t *sub_1D6B0C068(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](a1, v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v9 = sub_1D6F619D8(v6)) != 0)
  {
    v10 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors);
    v66 = type metadata accessor for GroupLayoutContext;
    v67 = v10;
    v11 = v9;
    sub_1D5BF045C(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v8, type metadata accessor for GroupLayoutContext);
    v12 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
    v77 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
    v78 = v12;
    v79 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
    v80 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
    v13 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory);
    v14 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
    v15 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    v63 = v4;
    v71 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
    v72 = v13;
    v75 = v14;
    v76 = v15;
    v16 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
    v83 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
    v84 = v16;
    v17 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
    v81 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
    v82 = v17;
    v69 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks);
    v65 = MEMORY[0x1E69E6720];
    sub_1D6B15C24(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, v74, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
    v18 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    v68 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);
    v62 = v8;
    v19 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8);
    v57 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
    v20 = v57;
    v58 = v18;
    v21 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
    v70 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 16);
    v55 = v21;
    v56 = v19;
    v22 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 32);
    v54 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 40);
    v23 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines);
    v52 = v22;
    v53 = v23;
    v24 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);
    v64 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    v61 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions);
    v25 = swift_allocObject();
    *(v25 + 16) = v11;
    *(v25 + 24) = v67;
    swift_bridgeObjectRetain_n();
    sub_1D5CF6A5C(&v75, v73);

    sub_1D6B154F0(&v81, v73);

    v26 = v52;
    sub_1D67F5880(v20, v19);

    v27 = v53;

    v61 = sub_1D725A7DC();

    v28 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    v29 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
    v30 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
    v59 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
    v60 = v28;
    v2 = swift_allocObject();
    v31 = v62;
    sub_1D5BF045C(v62, v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v66);
    v32 = v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
    v33 = v78;
    *(v32 + 2) = v77;
    *(v32 + 3) = v33;
    *(v32 + 4) = v79;
    *(v32 + 10) = v80;
    v34 = v76;
    *v32 = v75;
    *(v32 + 1) = v34;
    v35 = v71;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v72;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v35;
    v36 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
    v37 = v82;
    *v36 = v81;
    v36[1] = v37;
    v38 = v84;
    v36[2] = v83;
    v36[3] = v38;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v67;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v11;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v69;
    v39 = v65;
    sub_1D6B15C24(v74, v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v65);
    v40 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    v41 = v68;
    *v40 = v58;
    v40[1] = v41;
    v42 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
    v43 = v56;
    *v42 = v57;
    v42[1] = v43;
    v44 = v54;
    v45 = v55;
    v42[2] = v70;
    v42[3] = v45;
    v42[4] = v26;
    v42[5] = v44;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v27;
    v46 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    *v46 = v64;
    v46[1] = v24;

    sub_1D6B15BC8(v74, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v39);
    sub_1D5BE7AAC(v31, type metadata accessor for GroupLayoutContext);
    v47 = v60;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v61;
    v48 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    *v48 = v47;
    v48[1] = v29;
    v49 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
    *v49 = v59;
    v49[1] = v30;
  }

  else
  {
  }

  return v2;
}

uint64_t *sub_1D6B0C570(unint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (sub_1D7263BFC())
    {
      goto LABEL_3;
    }

LABEL_5:

    return v2;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v67 = v4;
  sub_1D5BF045C(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v8, type metadata accessor for GroupLayoutContext);
  v9 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
  v73 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
  v74 = v9;
  v75 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
  v76 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
  v10 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
  v71 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
  v72 = v10;
  v11 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory);
  v12 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  v13 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
  v79 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
  v80 = v13;
  v14 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors);
  v15 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
  v16 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options);
  v77 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v78 = v15;
  v69 = v8;
  v17 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks);
  v70[11] = a1;
  sub_1D5CF6A5C(&v71, v70);
  v66 = v11;

  v65 = v12;

  sub_1D6B154F0(&v77, v70);
  sub_1D6B15CF4(0, &qword_1EDF1B428, type metadata accessor for FormatBlock, MEMORY[0x1E69E62F8]);
  sub_1D6B155E4();
  sub_1D6B1566C(&qword_1EDF34300, type metadata accessor for FormatBlock, &protocol conformance descriptor for FormatBlock);
  v64 = v14;

  v63 = v16;

  v18 = sub_1D72623BC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70[0] = v17;
  sub_1D6B156FC(v18, sub_1D6B156B4, 0, isUniquelyReferenced_nonNull_native, v70);

  v58 = v70[0];
  v68 = MEMORY[0x1E69E6720];
  sub_1D6B15C24(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, v70, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
  v20 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v21 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);
  v22 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v23 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8);
  v24 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 16);
  v25 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
  v26 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 40);
  v55 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 32);
  v56 = v20;
  v54 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines);
  v27 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  v28 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);
  v52[1] = v26;
  v53 = v27;
  v29 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions);
  v30 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v59 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
  v60 = v29;
  v31 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
  v61 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  v62 = v30;
  v57 = v31;
  v2 = swift_allocObject();
  sub_1D5BF045C(v69, v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, type metadata accessor for GroupLayoutContext);
  v32 = v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
  v33 = v74;
  *(v32 + 2) = v73;
  *(v32 + 3) = v33;
  *(v32 + 4) = v75;
  *(v32 + 10) = v76;
  v34 = v72;
  *v32 = v71;
  *(v32 + 1) = v34;
  v35 = v65;
  *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v66;
  *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v35;
  v36 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v37 = v78;
  *v36 = v77;
  v36[1] = v37;
  v38 = v80;
  v36[2] = v79;
  v36[3] = v38;
  v39 = v63;
  *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v64;
  *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v39;
  *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v58;
  sub_1D6B15C24(v70, v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v68);
  v40 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v41 = v55;
  *v40 = v56;
  v40[1] = v21;
  v42 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  *v42 = v22;
  v42[1] = v23;
  v42[2] = v24;
  v42[3] = v25;
  v42[4] = v41;
  v42[5] = v26;
  v43 = v53;
  *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v54;
  v44 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  *v44 = v43;
  v44[1] = v28;

  sub_1D67F5880(v22, v23);
  v45 = v57;

  v46 = v60;

  v47 = v59;

  sub_1D6B15BC8(v70, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v68);
  sub_1D5BE7AAC(v69, type metadata accessor for GroupLayoutContext);
  *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v46;
  v48 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v49 = v61;
  *v48 = v62;
  v48[1] = v47;
  v50 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  *v50 = v49;
  v50[1] = v45;
  return v2;
}

uint64_t sub_1D6B0CB1C(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v3 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v67 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BF045C(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v67, type metadata accessor for GroupLayoutContext);
  v6 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
  v72 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
  v73 = v6;
  v74 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
  v75 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
  v7 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
  v8 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
  v53 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory);
  v70 = v7;
  v71 = v8;
  v9 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  v10 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
  v78 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
  v79 = v10;
  v11 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
  v76 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v77 = v11;
  v12 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors);
  v13 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options);
  v60 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks);
  v14 = MEMORY[0x1E69E6720];
  v52 = MEMORY[0x1E69E6720];
  sub_1D6B15C24(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, v69, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
  v16 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v15 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);
  v17 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8);
  v50 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v51 = v15;
  v65 = v17;
  v18 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 16);
  v63 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
  v64 = v18;
  v19 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 32);
  v61 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 40);
  v62 = v19;
  v49 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines);
  v20 = v49;
  v21 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions);
  v22 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v54 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
  v55 = v21;
  v23 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
  v56 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  v57 = v22;
  v66 = v23;
  v24 = swift_allocObject();
  sub_1D5BF045C(v67, v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, type metadata accessor for GroupLayoutContext);
  v25 = v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
  v26 = v73;
  *(v25 + 32) = v72;
  *(v25 + 48) = v26;
  *(v25 + 64) = v74;
  *(v25 + 80) = v75;
  v27 = v71;
  *v25 = v70;
  *(v25 + 16) = v27;
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v53;
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v9;
  v28 = (v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v29 = v77;
  *v28 = v76;
  v28[1] = v29;
  v30 = v79;
  v28[2] = v78;
  v28[3] = v30;
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v12;
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v13;
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v60;
  sub_1D6B15C24(v69, v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v14);
  v31 = (v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v33 = v50;
  v32 = v51;
  *v31 = v16;
  v31[1] = v32;
  v34 = (v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v36 = v64;
  v35 = v65;
  *v34 = v33;
  v34[1] = v35;
  v37 = v62;
  v38 = v63;
  v34[2] = v36;
  v34[3] = v38;
  v34[4] = v37;
  v34[5] = v61;
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v20;
  v39 = (v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  v40 = v59;
  *v39 = v58;
  v39[1] = v40;
  sub_1D5CF6A5C(&v70, v68);

  sub_1D6B154F0(&v76, v68);

  sub_1D67F5880(v33, v65);

  v41 = v55;

  v42 = v54;

  sub_1D6B15BC8(v69, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v52);
  sub_1D5BE7AAC(v67, type metadata accessor for GroupLayoutContext);
  *(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v41;
  v43 = (v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v44 = v56;
  *v43 = v57;
  v43[1] = v42;
  v45 = (v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  v46 = v66;
  *v45 = v44;
  v45[1] = v46;
  return v24;
}

uint64_t FormatNodeContext.resizeSnapshot.getter@<X0>(void *a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
  *a1 = *(v2 + *(type metadata accessor for GroupLayoutContext(0) + 48));
}

uint64_t sub_1D6B0CFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for GroupLayoutContext(0);
  v9 = *(a1 + *(v8 + 44));
  sub_1D7259F1C();
  v11 = v10;
  v12 = *(a1 + *(v8 + 32));
  type metadata accessor for FormatContextLayoutOptions();
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  *(v13 + 40) = a2;
  *(v13 + 48) = 0;
  *(v13 + 56) = a3;
  *a4 = v13;
}

void sub_1D6B0D084(uint64_t a1, void *a2, char *a3)
{
  v355 = a3;
  v4 = v3;
  v354 = a2;
  v351 = *v4;
  v6 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v353 = &v330 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v338, v9);
  v337 = &v330 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B15CF4(0, &qword_1EDF29610, type metadata accessor for FeedCustomItem, type metadata accessor for FormatNodeBindingItem);
  v339 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v345 = (&v330 - v13);
  v346 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v346, v14);
  v342 = (&v330 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6B15CF4(0, qword_1EDF29630, type metadata accessor for FeedPuzzleStatistic, type metadata accessor for FormatNodeBindingItem);
  v344 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v348 = (&v330 - v18);
  v340 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v340, v19);
  v341 = (&v330 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6B15CF4(0, &qword_1EDF29628, type metadata accessor for FeedRecipe, type metadata accessor for FormatNodeBindingItem);
  v343 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v347 = (&v330 - v23);
  v349 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v349, v24);
  v26 = &v330 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B15CF4(0, &qword_1EDF29618, type metadata accessor for FeedWebEmbed, type metadata accessor for FormatNodeBindingItem);
  *&v350 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = (&v330 - v29);
  v31 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v330 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B15CF4(0, &qword_1EDF29620, type metadata accessor for FeedHeadline, type metadata accessor for FormatNodeBindingItem);
  v36 = v35;
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = (&v330 - v38);
  v40 = *(a1 + 8);
  v399 = 0;
  v398 = 0u;
  v397 = 0u;
  memset(v396, 0, sizeof(v396));
  v395 = 0u;
  v436 = MEMORY[0x1E69E7CC0];
  v41 = swift_allocObject();
  v42 = v4;
  *(v41 + 16) = *&v4[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors];
  v357 = v41 + 16;
  v43 = *&v4[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack];
  v44 = *&v4[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8];
  v393 = v43;
  v394 = v44;
  if (v40 <= 4)
  {
    v348 = v36;
    if (v40 <= 1)
    {
      if (v40)
      {
        v67 = v41;
        if (v40 == 1)
        {
          v117 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16];
          v404 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings];
          v405 = v117;
          v118 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48];
          v406 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32];
          v407 = v118;
          v119 = v42;

          v120 = v356;
          sub_1D6B10774(v354, v355, &v374);
          if (!v120)
          {
            v331 = 0;
            v355 = v119;
            v356 = v44;
            v352 = v67;
            v371 = v382;
            v372 = v383;
            v373 = v384;
            v369 = v380;
            v370[0] = v381[0];
            v370[1] = v381[1];
            v370[2] = v381[2];
            v365 = v376;
            v366 = v377;
            v367 = v378;
            v368 = v379;
            v363 = v374;
            v364 = v375;
            v121 = sub_1D5EE5AA4();
            v122 = swift_allocObject();
            v123 = v381[0];
            v122[7] = v380;
            v122[8] = v123;
            *(v122 + 137) = *(v381 + 9);
            v124 = v377;
            v122[3] = v376;
            v122[4] = v124;
            v125 = v379;
            v122[5] = v378;
            v122[6] = v125;
            v126 = v375;
            v122[1] = v374;
            v122[2] = v126;
            v127 = v395;
            sub_1D5ECF2C4(&v363, v358);
            sub_1D67F58E4(v127, *(&v127 + 1));
            sub_1D6B15BC8(&v397, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6720]);
            swift_beginAccess();
            *&v397 = v122;
            *(&v398 + 1) = &type metadata for FeedIssue;
            v354 = v121;
            v399 = v121;
            v128 = v371;
            v129 = v372;
            v130 = v373;
            swift_beginAccess();
            v395 = v128;
            v396[0] = v129;
            v396[1] = v130;
            swift_beginAccess();
            v131 = v363;
            sub_1D6B159E4(0, &qword_1EDF199E0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6F90]);
            v132 = swift_allocObject();
            *(v132 + 16) = xmmword_1D7273AE0;
            sub_1D5ECF2C4(&v363, v358);
            sub_1D67F5880(v128, *(&v128 + 1));
            v133 = [v131 sourceChannel];
            *(v132 + 56) = &type metadata for FeedTag;
            *(v132 + 64) = sub_1D5EE5BA8();
            v134 = swift_allocObject();
            *(v132 + 32) = v134;
            v135 = [v133 identifier];
            v136 = sub_1D726207C();
            v138 = v137;

            *(v134 + 96) = xmmword_1D7279980;
            *(v134 + 112) = 0u;
            *(v134 + 128) = 0u;
            *(v134 + 144) = 0u;
            *(v134 + 160) = 0;
            *(v134 + 16) = v136;
            *(v134 + 24) = v138;
            *(v134 + 32) = v133;
            *(v134 + 40) = 0;
            *(v134 + 64) = 0;
            *(v134 + 72) = 0xE000000000000000;
            *(v134 + 48) = 0;
            *(v134 + 56) = 0;
            v139 = MEMORY[0x1E69E7CD0];
            *(v134 + 80) = 0;
            *(v134 + 88) = v139;
            sub_1D6985C1C(v132);
            v62 = v393;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v62 = sub_1D5BDEE24(0, v62[2] + 1, 1, v62);
            }

            v141 = v62[2];
            v140 = v62[3];
            if (v141 >= v140 >> 1)
            {
              v62 = sub_1D5BDEE24((v140 > 1), v141 + 1, 1, v62);
            }

            v93 = &type metadata for FeedIssue;
            *&v358[24] = &type metadata for FeedIssue;
            *&v358[32] = v354;
            v142 = swift_allocObject();
            *v358 = v142;
            v143 = v370[0];
            v142[7] = v369;
            v142[8] = v143;
            *(v142 + 137) = *(v370 + 9);
            v144 = v366;
            v142[3] = v365;
            v142[4] = v144;
            v145 = v368;
            v142[5] = v367;
            v142[6] = v145;
            v146 = v364;
            v142[1] = v363;
            v142[2] = v146;
            v62[2] = v141 + 1;
            sub_1D5B63F14(v358, &v62[5 * v141 + 4]);
            swift_endAccess();
            swift_beginAccess();

            sub_1D5B886D0(v147);
            swift_endAccess();
            swift_beginAccess();

            sub_1D6985C44(v148);
            swift_endAccess();
            v99 = &qword_1EC891EB0;
            goto LABEL_35;
          }

LABEL_60:
          sub_1D67F58E4(v395, *(&v395 + 1));
          sub_1D6B15BC8(&v397, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6720]);

          return;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (v40 == 2)
      {
        goto LABEL_3;
      }

      if (v40 != 3)
      {
        v50 = v41;
        v51 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16];
        v412 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings];
        v413 = v51;
        v52 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48];
        v414 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32];
        v415 = v52;
        v53 = v42;

        v54 = v356;
        sub_1D6B11398(v354, v355, &v374);
        if (!v54)
        {
          v331 = 0;
          v355 = v53;
          v356 = v44;
          v352 = v50;
          v55 = sub_1D5EE5BA8();
          v56 = swift_allocObject();
          sub_1D5EE5AF8(&v374, v56 + 16);
          sub_1D67F58E4(v395, *(&v395 + 1));
          sub_1D6B15BC8(&v397, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6720]);
          swift_beginAccess();
          *&v397 = v56;
          *(&v398 + 1) = &type metadata for FeedTag;
          v399 = v55;
          v57 = *(&v382 + 1);
          v59 = *(&v383 + 1);
          v58 = v383;
          v60 = v384;
          v61 = v385;
          swift_beginAccess();
          *&v395 = v57;
          *(&v395 + 1) = v58;
          *&v396[0] = v59;
          *(v396 + 8) = v60;
          *(&v396[1] + 1) = v61;
          swift_beginAccess();
          sub_1D5EE5AF8(&v374, &v363);
          sub_1D67F5880(v57, v58);
          sub_1D6985C1C(MEMORY[0x1E69E7CC0]);
          v62 = v393;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_1D5BDEE24(0, v62[2] + 1, 1, v62);
          }

          v64 = v62[2];
          v63 = v62[3];
          if (v64 >= v63 >> 1)
          {
            v62 = sub_1D5BDEE24((v63 > 1), v64 + 1, 1, v62);
          }

          *&v358[24] = &type metadata for FeedTag;
          *&v358[32] = v55;
          *v358 = swift_allocObject();
          sub_1D5EE5AF8(&v363, *v358 + 16);
          v62[2] = v64 + 1;
          sub_1D5B63F14(v358, &v62[5 * v64 + 4]);
          sub_1D5EE5B54(&v363);
          swift_endAccess();
          swift_beginAccess();

          sub_1D5B886D0(v65);
          swift_endAccess();
          swift_beginAccess();

          sub_1D6985C44(v66);
          swift_endAccess();
          sub_1D6B15A54(&v374, &qword_1EDF0E100, &type metadata for FeedTag, type metadata accessor for FormatNodeBindingItem);
          goto LABEL_68;
        }

        goto LABEL_60;
      }
    }

    v181 = v41;
    v182 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16];
    v400 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings];
    v401 = v182;
    v183 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48];
    v402 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32];
    v403 = v183;
    v184 = v42;

    v185 = v356;
    sub_1D6B100CC(v354, v355, v39);
    if (v185)
    {
      goto LABEL_60;
    }

    v331 = 0;
    v355 = v184;
    v356 = v44;
    v352 = v181;
    *(&v375 + 1) = v31;
    v354 = sub_1D6B1566C(&qword_1EDF34AD0, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
    *&v376 = v354;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v374);
    *&v350 = type metadata accessor for FeedHeadline;
    sub_1D5BF045C(v39, boxed_opaque_existential_1, type metadata accessor for FeedHeadline);
    sub_1D67F58E4(v395, *(&v395 + 1));
    sub_1D6B15BC8(&v397, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6720]);
    swift_beginAccess();
    v397 = v374;
    v398 = v375;
    v399 = v376;
    v254 = (v39 + *(v348 + 9));
    v255 = v254[1];
    v349 = *v254;
    v256 = v349;
    v347 = v255;
    v258 = v254[2];
    v257 = v254[3];
    v260 = v254[4];
    v259 = v254[5];
    swift_beginAccess();
    *&v395 = v256;
    v261 = v347;
    *(&v395 + 1) = v347;
    *&v396[0] = v258;
    *(&v396[0] + 1) = v257;
    *&v396[1] = v260;
    *(&v396[1] + 1) = v259;
    swift_beginAccess();
    sub_1D5BF045C(v39, v34, v350);
    sub_1D67F5880(v349, v261);
    v262 = FeedHeadline.additionalFormatFeedItems.getter();
    sub_1D6985C1C(v262);
    v62 = v393;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_1D5BDEE24(0, v62[2] + 1, 1, v62);
    }

    v264 = v62[2];
    v263 = v62[3];
    if (v264 >= v263 >> 1)
    {
      v62 = sub_1D5BDEE24((v263 > 1), v264 + 1, 1, v62);
    }

    *(&v375 + 1) = v31;
    *&v376 = v354;
    v265 = __swift_allocate_boxed_opaque_existential_1(&v374);
    sub_1D5BF045C(v34, v265, type metadata accessor for FeedHeadline);
    v62[2] = v264 + 1;
    sub_1D5B63F14(&v374, &v62[5 * v264 + 4]);
    sub_1D5BE7AAC(v34, type metadata accessor for FeedHeadline);
    swift_endAccess();
    swift_beginAccess();

    sub_1D5B886D0(v266);
    swift_endAccess();
    swift_beginAccess();

    sub_1D6985C44(v267);
    swift_endAccess();
    v114 = &qword_1EDF29620;
    v180 = type metadata accessor for FeedHeadline;
LABEL_66:
    v115 = v180;
    v116 = v39;
    goto LABEL_67;
  }

  if (v40 < 12)
  {
LABEL_3:
    v45 = v41;
    v46 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16];
    v408 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings];
    v409 = v46;
    v47 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48];
    v410 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32];
    v411 = v47;
    v48 = v42;

    v49 = v356;
    sub_1D6B10CF0(v354, v355, v30);
    if (v49)
    {
      goto LABEL_60;
    }

    v331 = 0;
    v355 = v48;
    v356 = v44;
    v352 = v45;
    *(&v375 + 1) = v349;
    v354 = sub_1D6B1566C(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
    *&v376 = v354;
    v100 = __swift_allocate_boxed_opaque_existential_1(&v374);
    v348 = type metadata accessor for FeedWebEmbed;
    sub_1D5BF045C(v30, v100, type metadata accessor for FeedWebEmbed);
    sub_1D67F58E4(v395, *(&v395 + 1));
    sub_1D6B15BC8(&v397, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6720]);
    swift_beginAccess();
    v397 = v374;
    v398 = v375;
    v399 = v376;
    v101 = (v30 + *(v350 + 36));
    v102 = *v101;
    v103 = v101[1];
    v105 = v101[2];
    v104 = v101[3];
    v107 = v101[4];
    v106 = v101[5];
    swift_beginAccess();
    *&v395 = v102;
    *(&v395 + 1) = v103;
    *&v396[0] = v105;
    *(&v396[0] + 1) = v104;
    *&v396[1] = v107;
    *(&v396[1] + 1) = v106;
    swift_beginAccess();
    sub_1D5BF045C(v30, v26, v348);
    sub_1D67F5880(v102, v103);
    v108 = FeedWebEmbed.additionalFormatFeedItems.getter();
    sub_1D6985C1C(v108);
    v62 = v393;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_1D5BDEE24(0, v62[2] + 1, 1, v62);
    }

    v110 = v62[2];
    v109 = v62[3];
    if (v110 >= v109 >> 1)
    {
      v62 = sub_1D5BDEE24((v109 > 1), v110 + 1, 1, v62);
    }

    *(&v375 + 1) = v349;
    *&v376 = v354;
    v111 = __swift_allocate_boxed_opaque_existential_1(&v374);
    sub_1D5BF045C(v26, v111, type metadata accessor for FeedWebEmbed);
    v62[2] = v110 + 1;
    sub_1D5B63F14(&v374, &v62[5 * v110 + 4]);
    sub_1D5BE7AAC(v26, type metadata accessor for FeedWebEmbed);
    swift_endAccess();
    swift_beginAccess();

    sub_1D5B886D0(v112);
    swift_endAccess();
    swift_beginAccess();

    sub_1D6985C44(v113);
    swift_endAccess();
    v114 = &qword_1EDF29618;
    v115 = type metadata accessor for FeedWebEmbed;
    v116 = v30;
    goto LABEL_67;
  }

  v67 = v41;
  if (v40 > 13)
  {
    if (v40 != 14)
    {
      if (v40 == 15)
      {
        v150 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16];
        v416 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings];
        v417 = v150;
        v151 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48];
        v418 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32];
        v419 = v151;
        v152 = v42;

        v153 = v347;
        v154 = v356;
        sub_1D6B118F8(v354, v355, v347);
        if (v154)
        {
          goto LABEL_60;
        }

        v331 = 0;
        v355 = v152;
        v356 = v44;
        v352 = v67;
        *(&v375 + 1) = v340;
        v354 = sub_1D6B1566C(&qword_1EDF12E00, type metadata accessor for FeedRecipe, &protocol conformance descriptor for FeedRecipe);
        *&v376 = v354;
        v155 = __swift_allocate_boxed_opaque_existential_1(&v374);
        sub_1D5BF045C(v153, v155, type metadata accessor for FeedRecipe);
        sub_1D67F58E4(v395, *(&v395 + 1));
        sub_1D6B15BC8(&v397, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6720]);
        swift_beginAccess();
        v397 = v374;
        v398 = v375;
        v399 = v376;
        v156 = (v153 + *(v343 + 36));
        v158 = *v156;
        *&v350 = v156[1];
        v157 = v350;
        v159 = v156[2];
        v160 = v156[3];
        v161 = v156[4];
        v162 = v156[5];
        swift_beginAccess();
        *&v395 = v158;
        *(&v395 + 1) = v157;
        *&v396[0] = v159;
        *(&v396[0] + 1) = v160;
        *&v396[1] = v161;
        *(&v396[1] + 1) = v162;
        swift_beginAccess();
        v163 = v153;
        v164 = v341;
        sub_1D5BF045C(v163, v341, type metadata accessor for FeedRecipe);
        sub_1D6B159E4(0, &qword_1EDF199E0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6F90]);
        v165 = swift_allocObject();
        *(v165 + 16) = xmmword_1D7273AE0;
        v166 = *(v164 + 7);
        sub_1D67F5880(v158, v350);
        v167 = [v166 sourceChannel];
        *(v165 + 56) = &type metadata for FeedTag;
        *(v165 + 64) = sub_1D5EE5BA8();
        v168 = swift_allocObject();
        *(v165 + 32) = v168;
        v169 = [v167 identifier];
        v170 = sub_1D726207C();
        v172 = v171;

        *(v168 + 96) = xmmword_1D7279980;
        *(v168 + 112) = 0u;
        *(v168 + 128) = 0u;
        *(v168 + 144) = 0u;
        *(v168 + 160) = 0;
        *(v168 + 16) = v170;
        *(v168 + 24) = v172;
        *(v168 + 32) = v167;
        *(v168 + 40) = 0;
        *(v168 + 64) = 0;
        *(v168 + 72) = 0xE000000000000000;
        *(v168 + 48) = 0;
        *(v168 + 56) = 0;
        v173 = MEMORY[0x1E69E7CD0];
        *(v168 + 80) = 0;
        *(v168 + 88) = v173;
        sub_1D6985C1C(v165);
        v62 = v393;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_1D5BDEE24(0, v62[2] + 1, 1, v62);
        }

        v175 = v62[2];
        v174 = v62[3];
        v39 = v347;
        if (v175 >= v174 >> 1)
        {
          v62 = sub_1D5BDEE24((v174 > 1), v175 + 1, 1, v62);
        }

        *(&v375 + 1) = v340;
        *&v376 = v354;
        v176 = __swift_allocate_boxed_opaque_existential_1(&v374);
        v177 = v341;
        sub_1D5BF045C(v341, v176, type metadata accessor for FeedRecipe);
        v62[2] = v175 + 1;
        sub_1D5B63F14(&v374, &v62[5 * v175 + 4]);
        sub_1D5BE7AAC(v177, type metadata accessor for FeedRecipe);
        swift_endAccess();
        swift_beginAccess();

        sub_1D5B886D0(v178);
        swift_endAccess();
        swift_beginAccess();

        sub_1D6985C44(v179);
        swift_endAccess();
        v114 = &qword_1EDF29628;
        v180 = type metadata accessor for FeedRecipe;
        goto LABEL_66;
      }

LABEL_59:
      v248 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16];
      v432 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings];
      v433 = v248;
      v249 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48];
      v434 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32];
      v435 = v249;
      v250 = v42;

      v251 = v345;
      v252 = v356;
      sub_1D6B130D0(v354, v355, v345);
      if (v252)
      {
        goto LABEL_60;
      }

      v331 = 0;
      v355 = v250;
      v356 = v44;
      v352 = v67;
      *(&v375 + 1) = v338;
      v354 = sub_1D6B1566C(&qword_1EDF15710, type metadata accessor for FeedCustomItem, &protocol conformance descriptor for FeedCustomItem);
      *&v376 = v354;
      v314 = __swift_allocate_boxed_opaque_existential_1(&v374);
      sub_1D5BF045C(v251, v314, type metadata accessor for FeedCustomItem);
      sub_1D67F58E4(v395, *(&v395 + 1));
      sub_1D6B15BC8(&v397, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6720]);
      swift_beginAccess();
      v397 = v374;
      v398 = v375;
      v399 = v376;
      v315 = (v251 + *(v339 + 36));
      v316 = *v315;
      v317 = v315[1];
      v319 = v315[2];
      v318 = v315[3];
      v320 = v315[4];
      v321 = v315[5];
      swift_beginAccess();
      *&v395 = v316;
      *(&v395 + 1) = v317;
      *&v396[0] = v319;
      *(&v396[0] + 1) = v318;
      *&v396[1] = v320;
      *(&v396[1] + 1) = v321;
      swift_beginAccess();
      v322 = v251;
      v323 = v337;
      sub_1D5BF045C(v322, v337, type metadata accessor for FeedCustomItem);
      sub_1D67F5880(v316, v317);
      sub_1D6985C1C(MEMORY[0x1E69E7CC0]);
      v62 = v393;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1D5BDEE24(0, v62[2] + 1, 1, v62);
      }

      v325 = v62[2];
      v324 = v62[3];
      v326 = v345;
      if (v325 >= v324 >> 1)
      {
        v62 = sub_1D5BDEE24((v324 > 1), v325 + 1, 1, v62);
      }

      *(&v375 + 1) = v338;
      *&v376 = v354;
      v327 = __swift_allocate_boxed_opaque_existential_1(&v374);
      sub_1D5BF045C(v323, v327, type metadata accessor for FeedCustomItem);
      v62[2] = v325 + 1;
      sub_1D5B63F14(&v374, &v62[5 * v325 + 4]);
      sub_1D5BE7AAC(v323, type metadata accessor for FeedCustomItem);
      swift_endAccess();
      swift_beginAccess();

      sub_1D5B886D0(v328);
      swift_endAccess();
      swift_beginAccess();

      sub_1D6985C44(v329);
      swift_endAccess();
      v114 = &qword_1EDF29610;
      v115 = type metadata accessor for FeedCustomItem;
      v116 = v326;
LABEL_67:
      sub_1D6B15988(v116, v114, v115, type metadata accessor for FormatNodeBindingItem);
      goto LABEL_68;
    }

    v219 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16];
    v428 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings];
    v429 = v219;
    v220 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48];
    v430 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32];
    v431 = v220;
    v221 = v42;

    v222 = v348;
    v223 = v356;
    sub_1D6B12A28(v354, v355, v348);
    if (v223)
    {
      goto LABEL_60;
    }

    v331 = 0;
    v355 = v221;
    v356 = v44;
    v352 = v67;
    *(&v375 + 1) = v346;
    v354 = sub_1D6B1566C(&qword_1EC885960, type metadata accessor for FeedPuzzleStatistic, &protocol conformance descriptor for FeedPuzzleStatistic);
    *&v376 = v354;
    v224 = __swift_allocate_boxed_opaque_existential_1(&v374);
    sub_1D5BF045C(v222, v224, type metadata accessor for FeedPuzzleStatistic);
    sub_1D67F58E4(v395, *(&v395 + 1));
    sub_1D6B15BC8(&v397, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6720]);
    swift_beginAccess();
    v397 = v374;
    v398 = v375;
    v399 = v376;
    v225 = (v222 + *(v344 + 36));
    v227 = v225[1];
    *&v350 = *v225;
    v226 = v350;
    v228 = v222;
    v229 = v225[2];
    v230 = v225[3];
    v231 = v225[4];
    v232 = v225[5];
    swift_beginAccess();
    *&v395 = v226;
    *(&v395 + 1) = v227;
    *&v396[0] = v229;
    *(&v396[0] + 1) = v230;
    *&v396[1] = v231;
    *(&v396[1] + 1) = v232;
    swift_beginAccess();
    v233 = v228;
    v234 = v342;
    sub_1D5BF045C(v233, v342, type metadata accessor for FeedPuzzleStatistic);
    sub_1D6B159E4(0, &qword_1EDF199E0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6F90]);
    v235 = swift_allocObject();
    *(v235 + 16) = xmmword_1D7273AE0;
    v236 = *(v234 + *(v346 + 32));
    *(v235 + 56) = &type metadata for FeedPuzzleType;
    *(v235 + 64) = sub_1D6307250();
    v237 = swift_allocObject();
    *(v235 + 32) = v237;
    sub_1D67F5880(v350, v227);
    v238 = [swift_unknownObjectRetain() identifier];
    v239 = sub_1D726207C();
    v241 = v240;

    LOBYTE(v374) = 1;
    *(v237 + 16) = 0;
    *(v237 + 24) = 0;
    *(v237 + 32) = 1;
    *(v237 + 40) = xmmword_1D728A8E0;
    *(v237 + 56) = v239;
    *(v237 + 64) = v241;
    *(v237 + 72) = v236;
    sub_1D6985C1C(v235);
    v62 = v393;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_1D5BDEE24(0, v62[2] + 1, 1, v62);
    }

    v243 = v62[2];
    v242 = v62[3];
    v39 = v348;
    if (v243 >= v242 >> 1)
    {
      v62 = sub_1D5BDEE24((v242 > 1), v243 + 1, 1, v62);
    }

    *(&v375 + 1) = v346;
    *&v376 = v354;
    v244 = __swift_allocate_boxed_opaque_existential_1(&v374);
    v245 = v342;
    sub_1D5BF045C(v342, v244, type metadata accessor for FeedPuzzleStatistic);
    v62[2] = v243 + 1;
    sub_1D5B63F14(&v374, &v62[5 * v243 + 4]);
    sub_1D5BE7AAC(v245, type metadata accessor for FeedPuzzleStatistic);
    swift_endAccess();
    swift_beginAccess();

    sub_1D5B886D0(v246);
    swift_endAccess();
    swift_beginAccess();

    sub_1D6985C44(v247);
    swift_endAccess();
    v114 = qword_1EDF29630;
    v180 = type metadata accessor for FeedPuzzleStatistic;
    goto LABEL_66;
  }

  if (v40 == 12)
  {
    v186 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16];
    v420 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings];
    v421 = v186;
    v187 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48];
    v422 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32];
    v423 = v187;
    v188 = v42;

    v189 = v356;
    sub_1D6B11FA0(v354, v355, &v374);
    if (!v189)
    {
      v331 = 0;
      v355 = v188;
      v356 = v44;
      v352 = v67;
      v190 = sub_1D63071A0();
      v191 = swift_allocObject();
      sub_1D5F2DEAC(&v374, v191 + 16);
      sub_1D67F58E4(v395, *(&v395 + 1));
      sub_1D6B15BC8(&v397, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6720]);
      swift_beginAccess();
      *&v397 = v191;
      *(&v398 + 1) = &type metadata for FeedPuzzle;
      v354 = v190;
      v399 = v190;
      v192 = v386;
      v193 = v387;
      v194 = v388;
      v195 = v389;
      v196 = v390;
      v197 = v391;
      swift_beginAccess();
      *&v395 = v192;
      *(&v395 + 1) = v193;
      *&v396[0] = v194;
      *(&v396[0] + 1) = v195;
      *&v396[1] = v196;
      *(&v396[1] + 1) = v197;
      swift_beginAccess();
      sub_1D5F2DEAC(&v374, &v363);
      v198 = *(&v366 + 1);
      sub_1D67F5880(v192, v193);
      v199 = [v198 puzzleType];
      v200 = [v199 identifier];
      v201 = sub_1D726207C();
      v203 = v202;

      LOBYTE(v360) = 1;
      *v358 = 0uLL;
      v358[16] = 1;
      *&v358[24] = xmmword_1D728A8E0;
      *&v358[40] = v201;
      *&v359 = v203;
      *(&v359 + 1) = v199;
      sub_1D6B159E4(0, &qword_1EDF199E0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6F90]);
      v204 = swift_allocObject();
      v350 = xmmword_1D7273AE0;
      *(v204 + 16) = xmmword_1D7273AE0;
      *(v204 + 56) = &type metadata for FeedPuzzleType;
      *(v204 + 64) = sub_1D6307250();
      v205 = swift_allocObject();
      *(v204 + 32) = v205;
      v206 = *&v358[16];
      v205[1] = *v358;
      v205[2] = v206;
      v207 = v359;
      v205[3] = *&v358[32];
      v205[4] = v207;
      v392 = v204;
      v208 = swift_allocObject();
      *(v208 + 16) = v350;
      *(v208 + 56) = &type metadata for FeedTag;
      *(v208 + 64) = sub_1D5EE5BA8();
      v209 = swift_allocObject();
      *(v208 + 32) = v209;
      sub_1D63071F4(v358, &v360);
      v210 = [swift_unknownObjectRetain() identifier];
      v211 = sub_1D726207C();
      v213 = v212;

      *(v209 + 96) = xmmword_1D7279980;
      *(v209 + 112) = 0u;
      *(v209 + 128) = 0u;
      *(v209 + 144) = 0u;
      *(v209 + 160) = 0;
      *(v209 + 16) = v211;
      *(v209 + 24) = v213;
      *(v209 + 32) = v199;
      *(v209 + 40) = 0;
      *(v209 + 64) = 0;
      *(v209 + 72) = 0xE000000000000000;
      *(v209 + 48) = 0;
      *(v209 + 56) = 0;
      v214 = MEMORY[0x1E69E7CD0];
      *(v209 + 80) = 0;
      *(v209 + 88) = v214;
      sub_1D6985C1C(v208);
      sub_1D5F2DE58(v358);
      sub_1D6985C1C(v392);
      v62 = v393;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1D5BDEE24(0, v62[2] + 1, 1, v62);
      }

      v216 = v62[2];
      v215 = v62[3];
      if (v216 >= v215 >> 1)
      {
        v62 = sub_1D5BDEE24((v215 > 1), v216 + 1, 1, v62);
      }

      v93 = &type metadata for FeedPuzzle;
      v361 = &type metadata for FeedPuzzle;
      v362 = v354;
      *&v360 = swift_allocObject();
      sub_1D5F2DEAC(&v363, v360 + 16);
      v62[2] = v216 + 1;
      sub_1D5B63F14(&v360, &v62[5 * v216 + 4]);
      sub_1D5F2DF58(&v363);
      swift_endAccess();
      swift_beginAccess();

      sub_1D5B886D0(v217);
      swift_endAccess();
      swift_beginAccess();

      sub_1D6985C44(v218);
      swift_endAccess();
      v99 = &unk_1EDF0E0F8;
      v149 = &v374;
      goto LABEL_52;
    }

    goto LABEL_60;
  }

  v68 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16];
  v424 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings];
  v425 = v68;
  v69 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48];
  v426 = *&v42[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32];
  v427 = v69;
  v70 = v42;

  v71 = v356;
  sub_1D6B12514(v354, v355, &v374);
  if (v71)
  {
    goto LABEL_60;
  }

  v331 = 0;
  v355 = v70;
  v356 = v44;
  v352 = v67;
  v367 = v378;
  v368 = v379;
  v369 = v380;
  v370[0] = v381[0];
  v363 = v374;
  v364 = v375;
  v365 = v376;
  v366 = v377;
  v72 = sub_1D6307250();
  v73 = swift_allocObject();
  v74 = v375;
  v73[1] = v374;
  v73[2] = v74;
  v75 = v377;
  v73[3] = v376;
  v73[4] = v75;
  v76 = v395;
  sub_1D63071F4(&v363, v358);
  sub_1D67F58E4(v76, *(&v76 + 1));
  sub_1D6B15BC8(&v397, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6720]);
  swift_beginAccess();
  *&v397 = v73;
  *(&v398 + 1) = &type metadata for FeedPuzzleType;
  v354 = v72;
  v399 = v72;
  v78 = *(&v368 + 1);
  v77 = v368;
  v79 = v369;
  v82 = v370[0];
  v81 = v82 >> 64;
  v80 = v82;
  *&v350 = *&v370[0];
  swift_beginAccess();
  v395 = __PAIR128__(v78, v77);
  v396[0] = v79;
  v396[1] = __PAIR128__(v81, v80);
  swift_beginAccess();
  v83 = *(&v366 + 1);
  sub_1D6B159E4(0, &qword_1EDF199E0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6F90]);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1D7273AE0;
  *(v84 + 56) = &type metadata for FeedTag;
  *(v84 + 64) = sub_1D5EE5BA8();
  v85 = swift_allocObject();
  *(v84 + 32) = v85;
  sub_1D63071F4(&v363, v358);
  sub_1D67F5880(v77, v78);
  v86 = [swift_unknownObjectRetain() identifier];
  v87 = sub_1D726207C();
  v89 = v88;

  *(v85 + 96) = xmmword_1D7279980;
  *(v85 + 112) = 0u;
  *(v85 + 128) = 0u;
  *(v85 + 144) = 0u;
  *(v85 + 160) = 0;
  *(v85 + 16) = v87;
  *(v85 + 24) = v89;
  *(v85 + 32) = v83;
  *(v85 + 40) = 0;
  *(v85 + 64) = 0;
  *(v85 + 72) = 0xE000000000000000;
  *(v85 + 48) = 0;
  *(v85 + 56) = 0;
  v90 = MEMORY[0x1E69E7CD0];
  *(v85 + 80) = 0;
  *(v85 + 88) = v90;
  sub_1D6985C1C(v84);
  v62 = v393;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v62 = sub_1D5BDEE24(0, v62[2] + 1, 1, v62);
  }

  v92 = v62[2];
  v91 = v62[3];
  if (v92 >= v91 >> 1)
  {
    v62 = sub_1D5BDEE24((v91 > 1), v92 + 1, 1, v62);
  }

  v93 = &type metadata for FeedPuzzleType;
  *&v358[24] = &type metadata for FeedPuzzleType;
  *&v358[32] = v354;
  v94 = swift_allocObject();
  *v358 = v94;
  v95 = v364;
  v94[1] = v363;
  v94[2] = v95;
  v96 = v366;
  v94[3] = v365;
  v94[4] = v96;
  v62[2] = v92 + 1;
  sub_1D5B63F14(v358, &v62[5 * v92 + 4]);
  swift_endAccess();
  swift_beginAccess();

  sub_1D5B886D0(v97);
  swift_endAccess();
  swift_beginAccess();

  sub_1D6985C44(v98);
  swift_endAccess();
  v99 = &qword_1EC891EA8;
LABEL_35:
  v149 = &v363;
LABEL_52:
  sub_1D6B15A54(v149, v99, v93, type metadata accessor for FormatNodeBindingItem);
LABEL_68:
  v268 = v62[2];
  v354 = v62;
  if (v268)
  {
    v269 = (v62 + 4);
    do
    {
      sub_1D5B68374(v269, &v363);
      sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
      sub_1D5B49474(0, &qword_1EDF208C0, &protocol descriptor for FormatContentSelectorProviding);
      if (swift_dynamicCast())
      {
        sub_1D5B63F14(v358, &v374);
        v270 = *(&v375 + 1);
        v271 = v376;
        __swift_project_boxed_opaque_existential_1(&v374, *(&v375 + 1));
        v272 = (*(v271 + 16))(v270, v271);
        swift_beginAccess();
        sub_1D5B87D50(v272);
        swift_endAccess();

        v273 = *(&v375 + 1);
        v274 = v376;
        __swift_project_boxed_opaque_existential_1(&v374, *(&v375 + 1));
        v275 = (*(v274 + 8))(v273, v274);
        swift_beginAccess();
        sub_1D5B87D50(v275);
        swift_endAccess();

        __swift_destroy_boxed_opaque_existential_1(&v374);
      }

      else
      {
        memset(v358, 0, 40);
        sub_1D6B15BC8(v358, &qword_1EDF208B8, &qword_1EDF208C0, &protocol descriptor for FormatContentSelectorProviding, MEMORY[0x1E69E6720]);
      }

      v269 += 40;
      --v268;
    }

    while (v268);
  }

  v276 = *&v355[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options];
  swift_beginAccess();
  v343 = v436;
  v277 = sub_1D6F619D8(v436);
  if (v277)
  {
    v278 = v277;
  }

  else
  {

    v278 = v276;
  }

  v279 = v352;
  v342 = type metadata accessor for GroupLayoutContext;
  v280 = v355;
  sub_1D5BF045C(&v355[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext], v353, type metadata accessor for GroupLayoutContext);
  v281 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48];
  v376 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32];
  v377 = v281;
  v378 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64];
  *&v379 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80];
  *&v350 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory];
  v282 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config];
  v283 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16];
  v344 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace];
  v374 = v282;
  v375 = v283;
  v284 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48];
  *&v358[32] = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32];
  v359 = v284;
  v285 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16];
  *v358 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings];
  *&v358[16] = v285;
  swift_beginAccess();
  v348 = *(v279 + 16);
  v357 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks];
  swift_beginAccess();
  v341 = MEMORY[0x1E69E6720];
  sub_1D6B15C24(&v397, &v360, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
  swift_beginAccess();
  v286 = *(&v395 + 1);
  v335 = *&v396[0];
  v336 = *(&v395 + 1);
  v346 = v395;
  v347 = *(&v396[0] + 1);
  v334 = *(&v396[1] + 1);
  v349 = *&v396[1];
  v345 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines];
  v287 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier];
  v337 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8];
  v339 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions];
  v340 = v287;
  v288 = swift_allocObject();
  *(v288 + 16) = v278;
  *(v288 + 24) = v279;
  v352 = v279;

  sub_1D5CF6A5C(&v374, &v363);

  sub_1D6B154F0(v358, &v363);

  sub_1D67F5880(v346, v286);

  v289 = v278;

  v339 = sub_1D725A7DC();

  v290 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8];
  v338 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier];
  v291 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8];
  v355 = *&v280[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier];
  v332 = v290;
  v333 = v291;
  v292 = swift_allocObject();
  v293 = v353;
  sub_1D5BF045C(v353, v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v342);
  v294 = v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
  v295 = v377;
  *(v294 + 32) = v376;
  *(v294 + 48) = v295;
  *(v294 + 64) = v378;
  *(v294 + 80) = v379;
  v296 = v375;
  *v294 = v374;
  *(v294 + 16) = v296;
  *(v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v350;
  *(v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v344;
  v297 = (v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v298 = *&v358[16];
  *v297 = *v358;
  v297[1] = v298;
  v299 = v359;
  v297[2] = *&v358[32];
  v297[3] = v299;
  *(v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v348;
  *(v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v289;
  *(v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v357;
  v300 = v341;
  sub_1D6B15C24(&v360, v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v341);
  v301 = (v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v302 = v356;
  *v301 = v354;
  v301[1] = v302;
  v303 = (v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v304 = v335;
  v305 = v336;
  *v303 = v346;
  v303[1] = v305;
  v303[2] = v304;
  v306 = v349;
  v303[3] = v347;
  v303[4] = v306;
  v303[5] = v334;
  *(v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v345;
  v307 = (v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  v308 = v337;
  *v307 = v340;
  v307[1] = v308;

  sub_1D6B15BC8(&v360, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v300);
  sub_1D5BE7AAC(v293, type metadata accessor for GroupLayoutContext);
  sub_1D67F58E4(v395, *(&v395 + 1));
  sub_1D6B15BC8(&v397, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v300);

  v309 = v338;
  *(v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v339;
  v310 = (v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v311 = v332;
  *v310 = v309;
  v310[1] = v311;
  v312 = (v292 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  v313 = v333;
  *v312 = v355;
  v312[1] = v313;
}

uint64_t sub_1D6B100CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a3;
  sub_1D6B15CF4(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v48 - v8;
  v10 = type metadata accessor for FeedHeadline(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v49 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = *v3;
  v14 = v76;
  v15 = *(v76 + 16);
  v52 = a1;
  v53 = a2;
  if (v15)
  {
    v16 = sub_1D5B69D90(a1, a2);
    if (v17)
    {
      sub_1D6B15C24(*(v14 + 56) + 104 * v16, &v54, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
      v65 = v58;
      v66 = v59;
      v67 = v60;
      v61 = v54;
      v62 = v55;
      v63 = v56;
      v64 = v57;
      v18 = v3;
      goto LABEL_11;
    }
  }

  v60 = 0;
  v19 = 0uLL;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v18 = v3;
  v20 = v3[1];
  if (!*(v20 + 16))
  {
    v67 = 0;
LABEL_10:
    v65 = v19;
    v66 = v19;
    v63 = v19;
    v64 = v19;
    v61 = v19;
    v62 = v19;
    goto LABEL_11;
  }

  v21 = sub_1D5B69D90(v52, v53);
  if ((v22 & 1) == 0)
  {
    v67 = 0;
    v19 = 0uLL;
    goto LABEL_10;
  }

  sub_1D6B15C24(*(v20 + 56) + 104 * v21, &v61, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
  if (*(&v55 + 1))
  {
    sub_1D5BE7AAC(&v54, sub_1D6B15AB0);
  }

LABEL_11:
  if (*(&v62 + 1))
  {
    v72 = v65;
    v73 = v66;
    v74 = v67;
    v68 = v61;
    v69 = v62;
    v70 = v63;
    v71 = v64;
    sub_1D5B68374(&v68, &v61);
    sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
    v23 = swift_dynamicCast();
    v24 = *(v11 + 56);
    if (v23)
    {
      v24(v9, 0, 1, v10);
      v25 = v49;
      sub_1D5BE3124(v9, v49, type metadata accessor for FeedHeadline);
      v26 = v50;
      sub_1D5BE3124(v25, v50, type metadata accessor for FeedHeadline);
      v63 = v70;
      v64 = v71;
      v65 = v72;
      v66 = v73;
      v67 = v74;
      v61 = v68;
      v62 = v69;
      v27 = *(&v70 + 1);
      sub_1D6B15CF4(0, &qword_1EDF29620, type metadata accessor for FeedHeadline, type metadata accessor for FormatNodeBindingItem);
      v29 = v28;
      v30 = v26;
      *(v26 + *(v28 + 28)) = v27;
      v31 = *(&v64 + 1);
      *(v30 + *(v28 + 32)) = v64;
      v32 = v65;
      v33 = v66;
      v34 = v67;

      sub_1D67F5880(v31, v32);
      result = sub_1D6B15BC8(&v61, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
      v36 = v50 + *(v29 + 36);
      *v36 = v31;
      *(v36 + 8) = v32;
      *(v36 + 24) = v33;
      *(v36 + 5) = v34;
      return result;
    }

    goto LABEL_17;
  }

  sub_1D5BE7AAC(&v61, sub_1D6B15AB0);
  sub_1D6752B3C();
  v51 = swift_allocError();
  v38 = v37;
  v39 = *(v14 + 16);
  if (v39)
  {
    v50 = sub_1D5B9A6D8(*(v14 + 16), 0);
    v49 = sub_1D5E2A8BC();
    v10 = *(&v68 + 1);
    v9 = v68;

    sub_1D5BF045C(&v76, &v61, sub_1D6B15B34);
    sub_1D5B87E38(v9);
    v24 = v49;
    if (v49 != v39)
    {
      __break(1u);
LABEL_17:
      v24(v9, 1, 1, v10);
      sub_1D6B15988(v9, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
      sub_1D6752B3C();
      swift_allocError();
      v41 = v40;
      v42 = v53;
      *v40 = v52;
      v40[1] = v42;
      sub_1D5B68374(&v68, (v40 + 2));
      *(v41 + 56) = 2;
      swift_willThrow();

      return sub_1D6B15BC8(&v68, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
    }
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
  }

  v43 = v18[1];
  v75 = v43;
  v44 = *(v43 + 16);
  if (!v44)
  {
    goto LABEL_22;
  }

  v45 = sub_1D5B9A6D8(*(v43 + 16), 0);
  v49 = sub_1D5E2A8BC();
  v46 = v68;
  sub_1D5BF045C(&v75, &v61, sub_1D6B15B34);
  sub_1D5B87E38(v46);
  if (v49 != v44)
  {
    __break(1u);
LABEL_22:
    v45 = MEMORY[0x1E69E7CC0];
  }

  v47 = v53;
  *v38 = v52;
  *(v38 + 8) = v47;
  *(v38 + 16) = v50;
  *(v38 + 24) = v45;
  *(v38 + 56) = 1;
  return swift_willThrow();
}

uint64_t sub_1D6B10774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v6 = a1;
  v73[0] = *v3;
  v8 = v73[0];
  if (*(v73[0] + 16))
  {
    v9 = sub_1D5B69D90(a1, a2);
    if (v10)
    {
      sub_1D6B15C24(*(v73[0] + 56) + 104 * v9, &v48, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
      v60 = v52;
      v61 = v53;
      *&v62 = v54;
      v56 = v48;
      v57 = v49;
      v58 = v50;
      v59 = v51;
      goto LABEL_11;
    }
  }

  *&v54 = 0;
  v11 = 0uLL;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = v3[1];
  if (!*(v12 + 16))
  {
    *&v62 = 0;
LABEL_10:
    v60 = v11;
    v61 = v11;
    v58 = v11;
    v59 = v11;
    v56 = v11;
    v57 = v11;
    goto LABEL_11;
  }

  v13 = sub_1D5B69D90(v6, v5);
  if ((v14 & 1) == 0)
  {
    *&v62 = 0;
    v11 = 0uLL;
    goto LABEL_10;
  }

  sub_1D6B15C24(*(v12 + 56) + 104 * v13, &v56, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
  if (*(&v49 + 1))
  {
    sub_1D5BE7AAC(&v48, sub_1D6B15AB0);
  }

LABEL_11:
  if (!*(&v57 + 1))
  {
    sub_1D5BE7AAC(&v56, sub_1D6B15AB0);
    sub_1D6752B3C();
    swift_allocError();
    v28 = v27;
    v29 = *(v8 + 16);
    v74 = v6;
    if (v29)
    {
      v39 = sub_1D5B9A6D8(v29, 0);
      v37 = sub_1D5E2A8BC();
      v30 = v56;

      sub_1D5BF045C(v73, &v48, sub_1D6B15B34);
      result = sub_1D5B87E38(v30);
      if (v37 != v29)
      {
        __break(1u);
        goto LABEL_25;
      }

      v6 = v74;
    }

    else
    {

      v39 = MEMORY[0x1E69E7CC0];
    }

    v72 = v4[1];
    v33 = *(v72 + 16);
    if (!v33)
    {
      v34 = MEMORY[0x1E69E7CC0];
      goto LABEL_23;
    }

    v38 = v5;
    v34 = sub_1D5B9A6D8(v33, 0);
    v35 = sub_1D5E2A8BC();
    v36 = v56;
    sub_1D5BF045C(&v72, &v48, sub_1D6B15B34);
    result = sub_1D5B87E38(v36);
    if (v35 == v33)
    {
      v5 = v38;
      v6 = v74;
LABEL_23:
      *v28 = v6;
      *(v28 + 8) = v5;
      *(v28 + 16) = v39;
      *(v28 + 24) = v34;
      *(v28 + 56) = 1;
      return swift_willThrow();
    }

LABEL_25:
    __break(1u);
    return result;
  }

  v69 = v60;
  v70 = v61;
  v71 = v62;
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v68 = v59;
  sub_1D5B68374(&v65, v64);
  sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
  if (swift_dynamicCast())
  {
    nullsub_1();
    v52 = v69;
    v53 = v70;
    *&v54 = v71;
    v48 = v65;
    v49 = v66;
    v50 = v67;
    v51 = v68;
    v15 = v56;
    v16 = v57;
    v17 = v59;
    *(a3 + 32) = v58;
    *(a3 + 48) = v17;
    *a3 = v15;
    *(a3 + 16) = v16;
    v18 = v60;
    v19 = v61;
    *(a3 + 121) = *(v63 + 9);
    v20 = v63[0];
    *(a3 + 96) = v62;
    *(a3 + 112) = v20;
    *(a3 + 64) = v18;
    *(a3 + 80) = v19;
    v21 = v51;
    *(a3 + 144) = *(&v50 + 1);
    *(a3 + 152) = v21;
    v22 = *(&v51 + 1);
    v23 = v52;
    v25 = v53;
    v24 = v54;

    sub_1D67F5880(v22, v23);
    result = sub_1D6B15BC8(&v48, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
    *(a3 + 160) = v22;
    *(a3 + 168) = v23;
    *(a3 + 184) = v25;
    *(a3 + 200) = v24;
  }

  else
  {
    sub_1D5D62850(&v40);
    v62 = v46;
    v63[0] = v47[0];
    *(v63 + 9) = *(v47 + 9);
    v58 = v42;
    v59 = v43;
    v60 = v44;
    v61 = v45;
    v56 = v40;
    v57 = v41;
    v54 = v46;
    v55[0] = v47[0];
    *(v55 + 9) = *(v47 + 9);
    v50 = v42;
    v51 = v43;
    v52 = v44;
    v53 = v45;
    v48 = v40;
    v49 = v41;
    sub_1D6B15A54(&v48, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720]);
    sub_1D6752B3C();
    swift_allocError();
    v32 = v31;
    *v31 = v6;
    v31[1] = v5;
    sub_1D5B68374(&v65, (v31 + 2));
    *(v32 + 56) = 2;
    swift_willThrow();

    return sub_1D6B15BC8(&v65, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
  }

  return result;
}

uint64_t sub_1D6B10CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a3;
  sub_1D6B15CF4(0, qword_1EDF34968, type metadata accessor for FeedWebEmbed, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v48 - v8;
  v10 = type metadata accessor for FeedWebEmbed(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v49 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = *v3;
  v14 = v76;
  v15 = *(v76 + 16);
  v52 = a1;
  v53 = a2;
  if (v15)
  {
    v16 = sub_1D5B69D90(a1, a2);
    if (v17)
    {
      sub_1D6B15C24(*(v14 + 56) + 104 * v16, &v54, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
      v65 = v58;
      v66 = v59;
      v67 = v60;
      v61 = v54;
      v62 = v55;
      v63 = v56;
      v64 = v57;
      v18 = v3;
      goto LABEL_11;
    }
  }

  v60 = 0;
  v19 = 0uLL;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v18 = v3;
  v20 = v3[1];
  if (!*(v20 + 16))
  {
    v67 = 0;
LABEL_10:
    v65 = v19;
    v66 = v19;
    v63 = v19;
    v64 = v19;
    v61 = v19;
    v62 = v19;
    goto LABEL_11;
  }

  v21 = sub_1D5B69D90(v52, v53);
  if ((v22 & 1) == 0)
  {
    v67 = 0;
    v19 = 0uLL;
    goto LABEL_10;
  }

  sub_1D6B15C24(*(v20 + 56) + 104 * v21, &v61, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
  if (*(&v55 + 1))
  {
    sub_1D5BE7AAC(&v54, sub_1D6B15AB0);
  }

LABEL_11:
  if (*(&v62 + 1))
  {
    v72 = v65;
    v73 = v66;
    v74 = v67;
    v68 = v61;
    v69 = v62;
    v70 = v63;
    v71 = v64;
    sub_1D5B68374(&v68, &v61);
    sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
    v23 = swift_dynamicCast();
    v24 = *(v11 + 56);
    if (v23)
    {
      v24(v9, 0, 1, v10);
      v25 = v49;
      sub_1D5BE3124(v9, v49, type metadata accessor for FeedWebEmbed);
      v26 = v50;
      sub_1D5BE3124(v25, v50, type metadata accessor for FeedWebEmbed);
      v63 = v70;
      v64 = v71;
      v65 = v72;
      v66 = v73;
      v67 = v74;
      v61 = v68;
      v62 = v69;
      v27 = *(&v70 + 1);
      sub_1D6B15CF4(0, &qword_1EDF29618, type metadata accessor for FeedWebEmbed, type metadata accessor for FormatNodeBindingItem);
      v29 = v28;
      v30 = v26;
      *(v26 + *(v28 + 28)) = v27;
      v31 = *(&v64 + 1);
      *(v30 + *(v28 + 32)) = v64;
      v32 = v65;
      v33 = v66;
      v34 = v67;

      sub_1D67F5880(v31, v32);
      result = sub_1D6B15BC8(&v61, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
      v36 = v50 + *(v29 + 36);
      *v36 = v31;
      *(v36 + 8) = v32;
      *(v36 + 24) = v33;
      *(v36 + 5) = v34;
      return result;
    }

    goto LABEL_17;
  }

  sub_1D5BE7AAC(&v61, sub_1D6B15AB0);
  sub_1D6752B3C();
  v51 = swift_allocError();
  v38 = v37;
  v39 = *(v14 + 16);
  if (v39)
  {
    v50 = sub_1D5B9A6D8(*(v14 + 16), 0);
    v49 = sub_1D5E2A8BC();
    v10 = *(&v68 + 1);
    v9 = v68;

    sub_1D5BF045C(&v76, &v61, sub_1D6B15B34);
    sub_1D5B87E38(v9);
    v24 = v49;
    if (v49 != v39)
    {
      __break(1u);
LABEL_17:
      v24(v9, 1, 1, v10);
      sub_1D6B15988(v9, qword_1EDF34968, type metadata accessor for FeedWebEmbed, MEMORY[0x1E69E6720]);
      sub_1D6752B3C();
      swift_allocError();
      v41 = v40;
      v42 = v53;
      *v40 = v52;
      v40[1] = v42;
      sub_1D5B68374(&v68, (v40 + 2));
      *(v41 + 56) = 2;
      swift_willThrow();

      return sub_1D6B15BC8(&v68, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
    }
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
  }

  v43 = v18[1];
  v75 = v43;
  v44 = *(v43 + 16);
  if (!v44)
  {
    goto LABEL_22;
  }

  v45 = sub_1D5B9A6D8(*(v43 + 16), 0);
  v49 = sub_1D5E2A8BC();
  v46 = v68;
  sub_1D5BF045C(&v75, &v61, sub_1D6B15B34);
  sub_1D5B87E38(v46);
  if (v49 != v44)
  {
    __break(1u);
LABEL_22:
    v45 = MEMORY[0x1E69E7CC0];
  }

  v47 = v53;
  *v38 = v52;
  *(v38 + 8) = v47;
  *(v38 + 16) = v50;
  *(v38 + 24) = v45;
  *(v38 + 56) = 1;
  return swift_willThrow();
}

uint64_t sub_1D6B11398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v70 = *v3;
  v8 = v70;
  if (*(v70 + 16))
  {
    v9 = sub_1D5B69D90(a1, a2);
    if (v10)
    {
      sub_1D6B15C24(*(v70 + 56) + 104 * v9, &v41, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
      v56 = v45;
      v57 = v46;
      *&v58 = v47;
      v52 = v41;
      v53 = v42;
      v54 = v43;
      v55 = v44;
      goto LABEL_11;
    }
  }

  *&v47 = 0;
  v11 = 0uLL;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = v3[1];
  if (!*(v12 + 16))
  {
    *&v58 = 0;
LABEL_10:
    v56 = v11;
    v57 = v11;
    v54 = v11;
    v55 = v11;
    v52 = v11;
    v53 = v11;
    goto LABEL_11;
  }

  v13 = sub_1D5B69D90(a1, v5);
  if ((v14 & 1) == 0)
  {
    *&v58 = 0;
    v11 = 0uLL;
    goto LABEL_10;
  }

  sub_1D6B15C24(*(v12 + 56) + 104 * v13, &v52, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
  if (*(&v42 + 1))
  {
    sub_1D5BE7AAC(&v41, sub_1D6B15AB0);
  }

LABEL_11:
  if (!*(&v53 + 1))
  {
    sub_1D5BE7AAC(&v52, sub_1D6B15AB0);
    sub_1D6752B3C();
    swift_allocError();
    v29 = v28;
    v30 = *(v8 + 16);
    if (v30)
    {
      v40 = sub_1D5B9A6D8(*(v8 + 16), 0);
      v38 = sub_1D5E2A8BC();
      v31 = v52;

      sub_1D5BF045C(&v70, &v41, sub_1D6B15B34);
      result = sub_1D5B87E38(v31);
      if (v38 != v30)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    v69 = v4[1];
    v34 = *(v69 + 16);
    if (!v34)
    {
      v35 = MEMORY[0x1E69E7CC0];
      goto LABEL_23;
    }

    v39 = v5;
    v35 = sub_1D5B9A6D8(v34, 0);
    v36 = sub_1D5E2A8BC();
    v37 = v52;
    sub_1D5BF045C(&v69, &v41, sub_1D6B15B34);
    result = sub_1D5B87E38(v37);
    if (v36 == v34)
    {
      v5 = v39;
LABEL_23:
      *v29 = a1;
      *(v29 + 8) = v5;
      *(v29 + 16) = v40;
      *(v29 + 24) = v35;
      *(v29 + 56) = 1;
      return swift_willThrow();
    }

LABEL_25:
    __break(1u);
    return result;
  }

  v66 = v56;
  v67 = v57;
  v68 = v58;
  v62 = v52;
  v63 = v53;
  v64 = v54;
  v65 = v55;
  sub_1D5B68374(&v62, v51);
  sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
  if (swift_dynamicCast())
  {
    v58 = v47;
    v59 = v48;
    v60 = v49;
    v15 = v50;
    v61 = v50;
    v16 = v43;
    v54 = v43;
    v55 = v44;
    v56 = v45;
    v57 = v46;
    v52 = v41;
    v53 = v42;
    v17 = v48;
    *(a3 + 96) = v47;
    *(a3 + 112) = v17;
    *(a3 + 128) = v60;
    *(a3 + 144) = v15;
    v18 = v55;
    v19 = v56;
    v20 = v57;
    *(a3 + 32) = v16;
    *(a3 + 48) = v18;
    *(a3 + 64) = v19;
    *(a3 + 80) = v20;
    v21 = v53;
    *a3 = v52;
    *(a3 + 16) = v21;
    v43 = v64;
    v44 = v65;
    v45 = v66;
    v46 = v67;
    v22 = v68;
    *&v47 = v68;
    v41 = v62;
    v42 = v63;
    v23 = v65;
    *(a3 + 152) = *(&v64 + 1);
    *(a3 + 160) = v23;
    v24 = *(&v44 + 1);
    v25 = v45;
    v26 = v46;

    sub_1D67F5880(v24, v25);
    result = sub_1D6B15BC8(&v41, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
    *(a3 + 168) = v24;
    *(a3 + 176) = v25;
    *(a3 + 192) = v26;
    *(a3 + 208) = v22;
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    sub_1D6B15A54(&v41, &unk_1EDF34F60, &type metadata for FeedTag, MEMORY[0x1E69E6720]);
    sub_1D6752B3C();
    swift_allocError();
    v33 = v32;
    *v32 = a1;
    v32[1] = v5;
    sub_1D5B68374(&v62, (v32 + 2));
    *(v33 + 56) = 2;
    swift_willThrow();

    return sub_1D6B15BC8(&v62, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
  }

  return result;
}

uint64_t sub_1D6B118F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a3;
  sub_1D6B15CF4(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v48 - v8;
  v10 = type metadata accessor for FeedRecipe(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v49 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = *v3;
  v14 = v76;
  v15 = *(v76 + 16);
  v52 = a1;
  v53 = a2;
  if (v15)
  {
    v16 = sub_1D5B69D90(a1, a2);
    if (v17)
    {
      sub_1D6B15C24(*(v14 + 56) + 104 * v16, &v54, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
      v65 = v58;
      v66 = v59;
      v67 = v60;
      v61 = v54;
      v62 = v55;
      v63 = v56;
      v64 = v57;
      v18 = v3;
      goto LABEL_11;
    }
  }

  v60 = 0;
  v19 = 0uLL;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v18 = v3;
  v20 = v3[1];
  if (!*(v20 + 16))
  {
    v67 = 0;
LABEL_10:
    v65 = v19;
    v66 = v19;
    v63 = v19;
    v64 = v19;
    v61 = v19;
    v62 = v19;
    goto LABEL_11;
  }

  v21 = sub_1D5B69D90(v52, v53);
  if ((v22 & 1) == 0)
  {
    v67 = 0;
    v19 = 0uLL;
    goto LABEL_10;
  }

  sub_1D6B15C24(*(v20 + 56) + 104 * v21, &v61, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
  if (*(&v55 + 1))
  {
    sub_1D5BE7AAC(&v54, sub_1D6B15AB0);
  }

LABEL_11:
  if (*(&v62 + 1))
  {
    v72 = v65;
    v73 = v66;
    v74 = v67;
    v68 = v61;
    v69 = v62;
    v70 = v63;
    v71 = v64;
    sub_1D5B68374(&v68, &v61);
    sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
    v23 = swift_dynamicCast();
    v24 = *(v11 + 56);
    if (v23)
    {
      v24(v9, 0, 1, v10);
      v25 = v49;
      sub_1D5BE3124(v9, v49, type metadata accessor for FeedRecipe);
      v26 = v50;
      sub_1D5BE3124(v25, v50, type metadata accessor for FeedRecipe);
      v63 = v70;
      v64 = v71;
      v65 = v72;
      v66 = v73;
      v67 = v74;
      v61 = v68;
      v62 = v69;
      v27 = *(&v70 + 1);
      sub_1D6B15CF4(0, &qword_1EDF29628, type metadata accessor for FeedRecipe, type metadata accessor for FormatNodeBindingItem);
      v29 = v28;
      v30 = v26;
      *(v26 + *(v28 + 28)) = v27;
      v31 = *(&v64 + 1);
      *(v30 + *(v28 + 32)) = v64;
      v32 = v65;
      v33 = v66;
      v34 = v67;

      sub_1D67F5880(v31, v32);
      result = sub_1D6B15BC8(&v61, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
      v36 = v50 + *(v29 + 36);
      *v36 = v31;
      *(v36 + 8) = v32;
      *(v36 + 24) = v33;
      *(v36 + 5) = v34;
      return result;
    }

    goto LABEL_17;
  }

  sub_1D5BE7AAC(&v61, sub_1D6B15AB0);
  sub_1D6752B3C();
  v51 = swift_allocError();
  v38 = v37;
  v39 = *(v14 + 16);
  if (v39)
  {
    v50 = sub_1D5B9A6D8(*(v14 + 16), 0);
    v49 = sub_1D5E2A8BC();
    v10 = *(&v68 + 1);
    v9 = v68;

    sub_1D5BF045C(&v76, &v61, sub_1D6B15B34);
    sub_1D5B87E38(v9);
    v24 = v49;
    if (v49 != v39)
    {
      __break(1u);
LABEL_17:
      v24(v9, 1, 1, v10);
      sub_1D6B15988(v9, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
      sub_1D6752B3C();
      swift_allocError();
      v41 = v40;
      v42 = v53;
      *v40 = v52;
      v40[1] = v42;
      sub_1D5B68374(&v68, (v40 + 2));
      *(v41 + 56) = 2;
      swift_willThrow();

      return sub_1D6B15BC8(&v68, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
    }
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
  }

  v43 = v18[1];
  v75 = v43;
  v44 = *(v43 + 16);
  if (!v44)
  {
    goto LABEL_22;
  }

  v45 = sub_1D5B9A6D8(*(v43 + 16), 0);
  v49 = sub_1D5E2A8BC();
  v46 = v68;
  sub_1D5BF045C(&v75, &v61, sub_1D6B15B34);
  sub_1D5B87E38(v46);
  if (v49 != v44)
  {
    __break(1u);
LABEL_22:
    v45 = MEMORY[0x1E69E7CC0];
  }

  v47 = v53;
  *v38 = v52;
  *(v38 + 8) = v47;
  *(v38 + 16) = v50;
  *(v38 + 24) = v45;
  *(v38 + 56) = 1;
  return swift_willThrow();
}

uint64_t sub_1D6B11FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v75 = *v3;
  v8 = v75;
  if (*(v75 + 16))
  {
    v9 = sub_1D5B69D90(a1, a2);
    if (v10)
    {
      sub_1D6B15C24(*(v75 + 56) + 104 * v9, &v40, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
      v58 = v44;
      v59 = v45;
      *&v60 = v46;
      v54 = v40;
      v55 = v41;
      v56 = v42;
      v57 = v43;
      goto LABEL_11;
    }
  }

  *&v46 = 0;
  v11 = 0uLL;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = v3[1];
  if (!*(v12 + 16))
  {
    *&v60 = 0;
LABEL_10:
    v58 = v11;
    v59 = v11;
    v56 = v11;
    v57 = v11;
    v54 = v11;
    v55 = v11;
    goto LABEL_11;
  }

  v13 = sub_1D5B69D90(a1, v5);
  if ((v14 & 1) == 0)
  {
    *&v60 = 0;
    v11 = 0uLL;
    goto LABEL_10;
  }

  sub_1D6B15C24(*(v12 + 56) + 104 * v13, &v54, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
  if (*(&v41 + 1))
  {
    sub_1D5BE7AAC(&v40, sub_1D6B15AB0);
  }

LABEL_11:
  if (!*(&v55 + 1))
  {
    sub_1D5BE7AAC(&v54, sub_1D6B15AB0);
    sub_1D6752B3C();
    swift_allocError();
    v28 = v27;
    v29 = *(v8 + 16);
    if (v29)
    {
      v39 = sub_1D5B9A6D8(*(v8 + 16), 0);
      v37 = sub_1D5E2A8BC();
      v30 = v54;

      sub_1D5BF045C(&v75, &v40, sub_1D6B15B34);
      result = sub_1D5B87E38(v30);
      if (v37 != v29)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {

      v39 = MEMORY[0x1E69E7CC0];
    }

    v74 = v4[1];
    v33 = *(v74 + 16);
    if (!v33)
    {
      v34 = MEMORY[0x1E69E7CC0];
      goto LABEL_23;
    }

    v38 = v5;
    v34 = sub_1D5B9A6D8(v33, 0);
    v35 = sub_1D5E2A8BC();
    v36 = v54;
    sub_1D5BF045C(&v74, &v40, sub_1D6B15B34);
    result = sub_1D5B87E38(v36);
    if (v35 == v33)
    {
      v5 = v38;
LABEL_23:
      *v28 = a1;
      *(v28 + 8) = v5;
      *(v28 + 16) = v39;
      *(v28 + 24) = v34;
      *(v28 + 56) = 1;
      return swift_willThrow();
    }

LABEL_25:
    __break(1u);
    return result;
  }

  v71 = v58;
  v72 = v59;
  v73 = v60;
  v67 = v54;
  v68 = v55;
  v69 = v56;
  v70 = v57;
  sub_1D5B68374(&v67, v53);
  sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
  if (swift_dynamicCast())
  {
    v64 = v50;
    v65 = v51;
    v66 = v52;
    v60 = v46;
    v61 = v47;
    v62 = v48;
    v63 = v49;
    v56 = v42;
    v57 = v43;
    v58 = v44;
    v59 = v45;
    v54 = v40;
    v55 = v41;
    v15 = v51;
    *(a3 + 160) = v50;
    *(a3 + 176) = v15;
    *(a3 + 192) = v66;
    v16 = v61;
    *(a3 + 96) = v60;
    *(a3 + 112) = v16;
    v17 = v63;
    *(a3 + 128) = v62;
    *(a3 + 144) = v17;
    v18 = v57;
    *(a3 + 32) = v56;
    *(a3 + 48) = v18;
    v19 = v59;
    *(a3 + 64) = v58;
    *(a3 + 80) = v19;
    v20 = v55;
    *a3 = v54;
    *(a3 + 16) = v20;
    v42 = v69;
    v43 = v70;
    v44 = v71;
    v45 = v72;
    v21 = v73;
    *&v46 = v73;
    v40 = v67;
    v41 = v68;
    v22 = v70;
    *(a3 + 208) = *(&v69 + 1);
    *(a3 + 216) = v22;
    v23 = *(&v43 + 1);
    v24 = v44;
    v25 = v45;

    sub_1D67F5880(v23, v24);
    result = sub_1D6B15BC8(&v40, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
    *(a3 + 224) = v23;
    *(a3 + 232) = v24;
    *(a3 + 248) = v25;
    *(a3 + 264) = v21;
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    sub_1D6B15A54(&v40, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720]);
    sub_1D6752B3C();
    swift_allocError();
    v32 = v31;
    *v31 = a1;
    v31[1] = v5;
    sub_1D5B68374(&v67, (v31 + 2));
    *(v32 + 56) = 2;
    swift_willThrow();

    return sub_1D6B15BC8(&v67, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
  }

  return result;
}

uint64_t sub_1D6B12514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v6 = a1;
  v60[0] = *v3;
  v8 = v60[0];
  if (*(v60[0] + 16))
  {
    v9 = sub_1D5B69D90(a1, a2);
    if (v10)
    {
      sub_1D6B15C24(*(v60[0] + 56) + 104 * v9, &v38, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
      v49 = v42;
      v50 = v43;
      v51 = v44;
      v45 = v38;
      v46 = v39;
      v47 = v40;
      v48 = v41;
      goto LABEL_11;
    }
  }

  v44 = 0;
  v11 = 0uLL;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = v3[1];
  if (!*(v12 + 16))
  {
    v51 = 0;
LABEL_10:
    v49 = v11;
    v50 = v11;
    v47 = v11;
    v48 = v11;
    v45 = v11;
    v46 = v11;
    goto LABEL_11;
  }

  v13 = sub_1D5B69D90(v6, v5);
  if ((v14 & 1) == 0)
  {
    v51 = 0;
    v11 = 0uLL;
    goto LABEL_10;
  }

  sub_1D6B15C24(*(v12 + 56) + 104 * v13, &v45, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
  if (*(&v39 + 1))
  {
    sub_1D5BE7AAC(&v38, sub_1D6B15AB0);
  }

LABEL_11:
  if (!*(&v46 + 1))
  {
    sub_1D5BE7AAC(&v45, sub_1D6B15AB0);
    sub_1D6752B3C();
    swift_allocError();
    v25 = v24;
    v26 = *(v8 + 16);
    v61 = v6;
    if (v26)
    {
      v36 = sub_1D5B9A6D8(v26, 0);
      v34 = sub_1D5E2A8BC();
      v27 = v52;

      sub_1D5BF045C(v60, &v45, sub_1D6B15B34);
      result = sub_1D5B87E38(v27);
      if (v34 != v26)
      {
        __break(1u);
        goto LABEL_25;
      }

      v6 = v61;
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
    }

    v59 = v4[1];
    v30 = *(v59 + 16);
    if (!v30)
    {
      v31 = MEMORY[0x1E69E7CC0];
      goto LABEL_23;
    }

    v35 = v5;
    v31 = sub_1D5B9A6D8(v30, 0);
    v32 = sub_1D5E2A8BC();
    v33 = v52;
    sub_1D5BF045C(&v59, &v45, sub_1D6B15B34);
    result = sub_1D5B87E38(v33);
    if (v32 == v30)
    {
      v5 = v35;
      v6 = v61;
LABEL_23:
      *v25 = v6;
      *(v25 + 8) = v5;
      *(v25 + 16) = v36;
      *(v25 + 24) = v31;
      *(v25 + 56) = 1;
      return swift_willThrow();
    }

LABEL_25:
    __break(1u);
    return result;
  }

  v56 = v49;
  v57 = v50;
  v58 = v51;
  v52 = v45;
  v53 = v46;
  v54 = v47;
  v55 = v48;
  sub_1D5B68374(&v52, v37);
  sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
  if (swift_dynamicCast())
  {
    v49 = v56;
    v50 = v57;
    v51 = v58;
    v45 = v52;
    v46 = v53;
    v47 = v54;
    v48 = v55;
    v15 = v38;
    v16 = v39;
    v17 = v41;
    *(a3 + 32) = v40;
    *(a3 + 48) = v17;
    *a3 = v15;
    *(a3 + 16) = v16;
    v18 = v48;
    *(a3 + 64) = *(&v47 + 1);
    *(a3 + 72) = v18;
    v19 = *(&v48 + 1);
    v20 = v49;
    v22 = v50;
    v21 = v51;

    sub_1D67F5880(v19, v20);
    result = sub_1D6B15BC8(&v45, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
    *(a3 + 80) = v19;
    *(a3 + 88) = v20;
    *(a3 + 104) = v22;
    *(a3 + 120) = v21;
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    sub_1D6B15A54(&v45, &unk_1EDF154F0, &type metadata for FeedPuzzleType, MEMORY[0x1E69E6720]);
    sub_1D6752B3C();
    swift_allocError();
    v29 = v28;
    *v28 = v6;
    v28[1] = v5;
    sub_1D5B68374(&v52, (v28 + 2));
    *(v29 + 56) = 2;
    swift_willThrow();

    return sub_1D6B15BC8(&v52, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
  }

  return result;
}

uint64_t sub_1D6B12A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a3;
  sub_1D6B15CF4(0, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v48 - v8;
  v10 = type metadata accessor for FeedPuzzleStatistic(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v49 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = *v3;
  v14 = v76;
  v15 = *(v76 + 16);
  v52 = a1;
  v53 = a2;
  if (v15)
  {
    v16 = sub_1D5B69D90(a1, a2);
    if (v17)
    {
      sub_1D6B15C24(*(v14 + 56) + 104 * v16, &v54, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
      v65 = v58;
      v66 = v59;
      v67 = v60;
      v61 = v54;
      v62 = v55;
      v63 = v56;
      v64 = v57;
      v18 = v3;
      goto LABEL_11;
    }
  }

  v60 = 0;
  v19 = 0uLL;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v18 = v3;
  v20 = v3[1];
  if (!*(v20 + 16))
  {
    v67 = 0;
LABEL_10:
    v65 = v19;
    v66 = v19;
    v63 = v19;
    v64 = v19;
    v61 = v19;
    v62 = v19;
    goto LABEL_11;
  }

  v21 = sub_1D5B69D90(v52, v53);
  if ((v22 & 1) == 0)
  {
    v67 = 0;
    v19 = 0uLL;
    goto LABEL_10;
  }

  sub_1D6B15C24(*(v20 + 56) + 104 * v21, &v61, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
  if (*(&v55 + 1))
  {
    sub_1D5BE7AAC(&v54, sub_1D6B15AB0);
  }

LABEL_11:
  if (*(&v62 + 1))
  {
    v72 = v65;
    v73 = v66;
    v74 = v67;
    v68 = v61;
    v69 = v62;
    v70 = v63;
    v71 = v64;
    sub_1D5B68374(&v68, &v61);
    sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
    v23 = swift_dynamicCast();
    v24 = *(v11 + 56);
    if (v23)
    {
      v24(v9, 0, 1, v10);
      v25 = v49;
      sub_1D5BE3124(v9, v49, type metadata accessor for FeedPuzzleStatistic);
      v26 = v50;
      sub_1D5BE3124(v25, v50, type metadata accessor for FeedPuzzleStatistic);
      v63 = v70;
      v64 = v71;
      v65 = v72;
      v66 = v73;
      v67 = v74;
      v61 = v68;
      v62 = v69;
      v27 = *(&v70 + 1);
      sub_1D6B15CF4(0, qword_1EDF29630, type metadata accessor for FeedPuzzleStatistic, type metadata accessor for FormatNodeBindingItem);
      v29 = v28;
      v30 = v26;
      *(v26 + *(v28 + 28)) = v27;
      v31 = *(&v64 + 1);
      *(v30 + *(v28 + 32)) = v64;
      v32 = v65;
      v33 = v66;
      v34 = v67;

      sub_1D67F5880(v31, v32);
      result = sub_1D6B15BC8(&v61, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
      v36 = v50 + *(v29 + 36);
      *v36 = v31;
      *(v36 + 8) = v32;
      *(v36 + 24) = v33;
      *(v36 + 5) = v34;
      return result;
    }

    goto LABEL_17;
  }

  sub_1D5BE7AAC(&v61, sub_1D6B15AB0);
  sub_1D6752B3C();
  v51 = swift_allocError();
  v38 = v37;
  v39 = *(v14 + 16);
  if (v39)
  {
    v50 = sub_1D5B9A6D8(*(v14 + 16), 0);
    v49 = sub_1D5E2A8BC();
    v10 = *(&v68 + 1);
    v9 = v68;

    sub_1D5BF045C(&v76, &v61, sub_1D6B15B34);
    sub_1D5B87E38(v9);
    v24 = v49;
    if (v49 != v39)
    {
      __break(1u);
LABEL_17:
      v24(v9, 1, 1, v10);
      sub_1D6B15988(v9, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic, MEMORY[0x1E69E6720]);
      sub_1D6752B3C();
      swift_allocError();
      v41 = v40;
      v42 = v53;
      *v40 = v52;
      v40[1] = v42;
      sub_1D5B68374(&v68, (v40 + 2));
      *(v41 + 56) = 2;
      swift_willThrow();

      return sub_1D6B15BC8(&v68, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
    }
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
  }

  v43 = v18[1];
  v75 = v43;
  v44 = *(v43 + 16);
  if (!v44)
  {
    goto LABEL_22;
  }

  v45 = sub_1D5B9A6D8(*(v43 + 16), 0);
  v49 = sub_1D5E2A8BC();
  v46 = v68;
  sub_1D5BF045C(&v75, &v61, sub_1D6B15B34);
  sub_1D5B87E38(v46);
  if (v49 != v44)
  {
    __break(1u);
LABEL_22:
    v45 = MEMORY[0x1E69E7CC0];
  }

  v47 = v53;
  *v38 = v52;
  *(v38 + 8) = v47;
  *(v38 + 16) = v50;
  *(v38 + 24) = v45;
  *(v38 + 56) = 1;
  return swift_willThrow();
}

uint64_t sub_1D6B130D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a3;
  sub_1D6B15CF4(0, qword_1EDF39CF0, type metadata accessor for FeedCustomItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v48 - v8;
  v10 = type metadata accessor for FeedCustomItem(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v49 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = *v3;
  v14 = v76;
  v15 = *(v76 + 16);
  v52 = a1;
  v53 = a2;
  if (v15)
  {
    v16 = sub_1D5B69D90(a1, a2);
    if (v17)
    {
      sub_1D6B15C24(*(v14 + 56) + 104 * v16, &v54, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
      v65 = v58;
      v66 = v59;
      v67 = v60;
      v61 = v54;
      v62 = v55;
      v63 = v56;
      v64 = v57;
      v18 = v3;
      goto LABEL_11;
    }
  }

  v60 = 0;
  v19 = 0uLL;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v18 = v3;
  v20 = v3[1];
  if (!*(v20 + 16))
  {
    v67 = 0;
LABEL_10:
    v65 = v19;
    v66 = v19;
    v63 = v19;
    v64 = v19;
    v61 = v19;
    v62 = v19;
    goto LABEL_11;
  }

  v21 = sub_1D5B69D90(v52, v53);
  if ((v22 & 1) == 0)
  {
    v67 = 0;
    v19 = 0uLL;
    goto LABEL_10;
  }

  sub_1D6B15C24(*(v20 + 56) + 104 * v21, &v61, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
  if (*(&v55 + 1))
  {
    sub_1D5BE7AAC(&v54, sub_1D6B15AB0);
  }

LABEL_11:
  if (*(&v62 + 1))
  {
    v72 = v65;
    v73 = v66;
    v74 = v67;
    v68 = v61;
    v69 = v62;
    v70 = v63;
    v71 = v64;
    sub_1D5B68374(&v68, &v61);
    sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
    v23 = swift_dynamicCast();
    v24 = *(v11 + 56);
    if (v23)
    {
      v24(v9, 0, 1, v10);
      v25 = v49;
      sub_1D5BE3124(v9, v49, type metadata accessor for FeedCustomItem);
      v26 = v50;
      sub_1D5BE3124(v25, v50, type metadata accessor for FeedCustomItem);
      v63 = v70;
      v64 = v71;
      v65 = v72;
      v66 = v73;
      v67 = v74;
      v61 = v68;
      v62 = v69;
      v27 = *(&v70 + 1);
      sub_1D6B15CF4(0, &qword_1EDF29610, type metadata accessor for FeedCustomItem, type metadata accessor for FormatNodeBindingItem);
      v29 = v28;
      v30 = v26;
      *(v26 + *(v28 + 28)) = v27;
      v31 = *(&v64 + 1);
      *(v30 + *(v28 + 32)) = v64;
      v32 = v65;
      v33 = v66;
      v34 = v67;

      sub_1D67F5880(v31, v32);
      result = sub_1D6B15BC8(&v61, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
      v36 = v50 + *(v29 + 36);
      *v36 = v31;
      *(v36 + 8) = v32;
      *(v36 + 24) = v33;
      *(v36 + 5) = v34;
      return result;
    }

    goto LABEL_17;
  }

  sub_1D5BE7AAC(&v61, sub_1D6B15AB0);
  sub_1D6752B3C();
  v51 = swift_allocError();
  v38 = v37;
  v39 = *(v14 + 16);
  if (v39)
  {
    v50 = sub_1D5B9A6D8(*(v14 + 16), 0);
    v49 = sub_1D5E2A8BC();
    v10 = *(&v68 + 1);
    v9 = v68;

    sub_1D5BF045C(&v76, &v61, sub_1D6B15B34);
    sub_1D5B87E38(v9);
    v24 = v49;
    if (v49 != v39)
    {
      __break(1u);
LABEL_17:
      v24(v9, 1, 1, v10);
      sub_1D6B15988(v9, qword_1EDF39CF0, type metadata accessor for FeedCustomItem, MEMORY[0x1E69E6720]);
      sub_1D6752B3C();
      swift_allocError();
      v41 = v40;
      v42 = v53;
      *v40 = v52;
      v40[1] = v42;
      sub_1D5B68374(&v68, (v40 + 2));
      *(v41 + 56) = 2;
      swift_willThrow();

      return sub_1D6B15BC8(&v68, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
    }
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
  }

  v43 = v18[1];
  v75 = v43;
  v44 = *(v43 + 16);
  if (!v44)
  {
    goto LABEL_22;
  }

  v45 = sub_1D5B9A6D8(*(v43 + 16), 0);
  v49 = sub_1D5E2A8BC();
  v46 = v68;
  sub_1D5BF045C(&v75, &v61, sub_1D6B15B34);
  sub_1D5B87E38(v46);
  if (v49 != v44)
  {
    __break(1u);
LABEL_22:
    v45 = MEMORY[0x1E69E7CC0];
  }

  v47 = v53;
  *v38 = v52;
  *(v38 + 8) = v47;
  *(v38 + 16) = v50;
  *(v38 + 24) = v45;
  *(v38 + 56) = 1;
  return swift_willThrow();
}

void sub_1D6B13778(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 24);
  v9 = *(*a1 + 32);
  swift_beginAccess();
  v10 = *(a3 + 16);
  type metadata accessor for FormatContextLayoutOptions();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v8;
  *(v11 + 32) = v9;
  *(v11 + 40) = a2;
  *(v11 + 48) = 0;
  *(v11 + 56) = v10;
  *a4 = v11;
}

uint64_t sub_1D6B13814(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 48);
  v78[2] = *(a1 + 32);
  v78[3] = v8;
  v78[4] = *(a1 + 64);
  v79 = *(a1 + 80);
  v9 = *(a1 + 16);
  v78[0] = *a1;
  v78[1] = v9;
  v10 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines);
  v11 = v9;

  sub_1D6B15D58(v78, &v80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v80 = v10;
  sub_1D6D780BC(v78, v11, *(&v11 + 1), isUniquelyReferenced_nonNull_native);
  v72 = v80;
  v67 = v7;
  sub_1D5BF045C(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v7, type metadata accessor for GroupLayoutContext);
  v13 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
  v82 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
  v83 = v13;
  v84 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
  v85 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
  v14 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
  v15 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory);
  v80 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
  v81 = v14;
  v64 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  v65 = v15;
  v16 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
  v88 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
  v89 = v16;
  v17 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
  v86 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v87 = v17;
  v18 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors);
  v56 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options);
  v19 = v56;
  v75 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks);
  v20 = MEMORY[0x1E69E6720];
  v58 = MEMORY[0x1E69E6720];
  sub_1D6B15C24(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, v77, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
  v22 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v21 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);
  v23 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8);
  v59 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v57 = v23;
  v25 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 16);
  v24 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
  v55[0] = v22;
  v55[1] = v25;
  v60 = v24;
  v61 = v21;
  v26 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 32);
  v73 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 40);
  v74 = v26;
  v27 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  v62 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);
  v63 = v27;
  v28 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions);
  v29 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v68 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
  v69 = v28;
  v30 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
  v70 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  v71 = v29;
  v66 = v30;
  v31 = swift_allocObject();
  sub_1D5BF045C(v7, v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, type metadata accessor for GroupLayoutContext);
  v32 = v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
  v33 = v83;
  *(v32 + 32) = v82;
  *(v32 + 48) = v33;
  *(v32 + 64) = v84;
  *(v32 + 80) = v85;
  v34 = v81;
  *v32 = v80;
  *(v32 + 16) = v34;
  v35 = v64;
  *(v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v65;
  *(v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v35;
  v36 = (v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v37 = v87;
  *v36 = v86;
  v36[1] = v37;
  v38 = v89;
  v36[2] = v88;
  v36[3] = v38;
  *(v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v18;
  *(v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v19;
  *(v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v75;
  sub_1D6B15C24(v77, v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v20);
  v39 = (v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v41 = v60;
  v40 = v61;
  *v39 = v22;
  v39[1] = v40;
  v42 = (v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v43 = v59;
  v44 = v57;
  *v42 = v59;
  v42[1] = v44;
  v42[2] = v25;
  v42[3] = v41;
  v45 = v73;
  v42[4] = v74;
  v42[5] = v45;
  *(v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v72;
  v46 = (v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  v47 = v62;
  *v46 = v63;
  v46[1] = v47;
  sub_1D5CF6A5C(&v80, v76);

  sub_1D6B154F0(&v86, v76);

  sub_1D67F5880(v43, v44);
  v48 = v66;

  v49 = v69;

  v50 = v68;

  sub_1D6B15BC8(v77, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v58);
  sub_1D5BE7AAC(v67, type metadata accessor for GroupLayoutContext);
  *(v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v49;
  v51 = (v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v52 = v70;
  *v51 = v71;
  v51[1] = v50;
  v53 = (v31 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  *v53 = v52;
  v53[1] = v48;
  return v31;
}

uint64_t sub_1D6B13CFC(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = a1[1];
  if (v7)
  {
    v9 = a1[2];
    v8 = a1[3];
    v10 = *a1;
    v70 = type metadata accessor for GroupLayoutContext;
    v74 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D5BF045C(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v74, type metadata accessor for GroupLayoutContext);
    v11 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
    v83 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
    v84 = v11;
    v85 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
    v86 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
    v12 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    v81 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
    v82 = v12;
    v67 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory);
    v75[0] = v10;
    v75[1] = v7;
    v75[2] = v9;
    v75[3] = v8;

    sub_1D5CF6A5C(&v81, &v77);

    v65 = sub_1D6E8E17C(v75);

    v13 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
    v77 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
    v78 = v13;
    v14 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
    v79 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
    v80 = v14;
    v53 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors);
    v15 = v53;
    v16 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options);
    v63 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks);
    v64 = v16;
    v17 = MEMORY[0x1E69E6720];
    v56 = MEMORY[0x1E69E6720];
    sub_1D6B15C24(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, v76, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
    v18 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);
    v52 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    v19 = v52;
    v21 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
    v20 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8);
    v22 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
    v59 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 16);
    v60 = v20;
    v23 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 40);
    v54 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 32);
    v24 = v54;
    v55 = v22;
    v61 = v23;
    v62 = v18;
    v25 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines);
    v26 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    v57 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);
    v58 = v26;
    v27 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions);
    v28 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
    v72 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    v73 = v25;
    v68 = v28;
    v69 = v27;
    v29 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
    v71 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
    v66 = v29;
    v2 = swift_allocObject();
    sub_1D5BF045C(v74, v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v70);
    v30 = v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
    v31 = v84;
    *(v30 + 32) = v83;
    *(v30 + 48) = v31;
    *(v30 + 64) = v85;
    *(v30 + 80) = v86;
    v32 = v82;
    *v30 = v81;
    *(v30 + 16) = v32;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v67;
    v33 = v64;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v65;
    v34 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
    v35 = v78;
    *v34 = v77;
    v34[1] = v35;
    v36 = v80;
    v34[2] = v79;
    v34[3] = v36;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v15;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v33;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v63;
    sub_1D6B15C24(v76, v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v17);
    v37 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    v38 = v62;
    *v37 = v19;
    v37[1] = v38;
    v39 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
    v41 = v59;
    v40 = v60;
    *v39 = v21;
    v39[1] = v40;
    v39[2] = v41;
    v39[3] = v22;
    v42 = v61;
    v39[4] = v24;
    v39[5] = v42;
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v73;
    v43 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    v44 = v57;
    *v43 = v58;
    v43[1] = v44;
    sub_1D6B154F0(&v77, v75);

    sub_1D67F5880(v21, v40);
    v45 = v66;

    v46 = v69;

    v47 = v68;

    sub_1D6B15BC8(v76, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v56);
    sub_1D5BE7AAC(v74, type metadata accessor for GroupLayoutContext);
    *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v46;
    v48 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    v49 = v71;
    *v48 = v72;
    v48[1] = v47;
    v50 = (v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
    *v50 = v49;
    v50[1] = v45;
  }

  else
  {
  }

  return v2;
}

uint64_t sub_1D6B141C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  type metadata accessor for FormatContextLayoutOptions();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  *(v9 + 48) = 0;
  *(v9 + 56) = a2;
  *a3 = v9;
}

uint64_t sub_1D6B1424C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 24);
  v9 = *(*a1 + 32);
  type metadata accessor for FormatContextLayoutOptions();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  *(v10 + 32) = v9;
  *(v10 + 40) = a2;
  *(v10 + 48) = 0;
  *(v10 + 56) = a3;
  *a4 = v10;
}

uint64_t sub_1D6B142D4(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v64 = a2;
  v3 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v70 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BF045C(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v70, type metadata accessor for GroupLayoutContext);
  v6 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
  v75 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
  v76 = v6;
  v77 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
  v78 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
  v7 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
  v8 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory);
  v73 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
  v74 = v7;
  v58 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  v59 = v8;
  v9 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
  v81 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
  v82 = v9;
  v10 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
  v79 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v80 = v10;
  v11 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors);
  v12 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options);
  v51 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks);
  v13 = v51;
  v14 = MEMORY[0x1E69E6720];
  v57 = MEMORY[0x1E69E6720];
  sub_1D6B15C24(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, v72, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
  v15 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);
  v50 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v16 = v50;
  v17 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8);
  v55 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v56 = v15;
  v54 = v17;
  v18 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 16);
  v19 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
  v20 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 40);
  v66 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 32);
  v67 = v19;
  v65 = v20;
  v21 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines);
  v22 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);
  v52 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  v53 = v18;
  v68 = v21;
  v69 = v22;
  v24 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  v23 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
  v61 = *(v2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions);
  v62 = v24;
  v60 = v23;
  v25 = swift_allocObject();
  sub_1D5BF045C(v70, v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, type metadata accessor for GroupLayoutContext);
  v26 = v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
  v27 = v76;
  *(v26 + 32) = v75;
  *(v26 + 48) = v27;
  *(v26 + 64) = v77;
  *(v26 + 80) = v78;
  v28 = v74;
  *v26 = v73;
  *(v26 + 16) = v28;
  v29 = v58;
  *(v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v59;
  *(v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v29;
  v30 = (v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v31 = v80;
  *v30 = v79;
  v30[1] = v31;
  v32 = v82;
  v30[2] = v81;
  v30[3] = v32;
  *(v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v11;
  *(v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v12;
  *(v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v13;
  sub_1D6B15C24(v72, v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v14);
  v33 = (v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v34 = v56;
  *v33 = v16;
  v33[1] = v34;
  v35 = (v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v36 = v54;
  v37 = v55;
  *v35 = v55;
  v35[1] = v36;
  v39 = v66;
  v38 = v67;
  v35[2] = v53;
  v35[3] = v38;
  v40 = v65;
  v35[4] = v39;
  v35[5] = v40;
  *(v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v68;
  v41 = (v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  v42 = v69;
  *v41 = v52;
  v41[1] = v42;
  sub_1D5CF6A5C(&v73, v71);

  sub_1D6B154F0(&v79, v71);

  sub_1D67F5880(v37, v36);
  v43 = v60;

  v44 = v61;

  sub_1D6B15BC8(v72, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v57);
  sub_1D5BE7AAC(v70, type metadata accessor for GroupLayoutContext);
  *(v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v44;
  v45 = (v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  v46 = v64;
  *v45 = v63;
  v45[1] = v46;
  v47 = (v25 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  *v47 = v62;
  v47[1] = v43;

  return v25;
}

uint64_t *sub_1D6B14744(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v63 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D5BF045C(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v9, type metadata accessor for GroupLayoutContext);
    v10 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
    v77 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
    v78 = v10;
    v79 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
    v80 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
    v11 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    v12 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory);
    v75 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
    v76 = v11;
    v60 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
    v61 = v12;
    v13 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
    v83 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
    v84 = v13;
    v14 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
    v81 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
    v82 = v14;
    v15 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors);
    v16 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options);
    v58 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks);
    v59 = v15;
    v66 = a1;
    v17 = MEMORY[0x1E69E6720];
    v57 = MEMORY[0x1E69E6720];
    sub_1D6B15C24(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, v74, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
    v18 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);
    v21 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
    v20 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8);
    v51 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    v19 = v51;
    v52 = v21;
    v55 = v20;
    v56 = v18;
    v22 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 16);
    v23 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
    v24 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 40);
    v69 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 32);
    v70 = v23;
    v67 = a2;
    v68 = v24;
    v25 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines);
    v26 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);
    v53 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    v54 = v22;
    v71 = v25;
    v72 = v26;
    v28 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    v27 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
    v64 = *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions);
    v65 = v28;
    v62 = v27;
    v3 = swift_allocObject();
    sub_1D5BF045C(v9, v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, type metadata accessor for GroupLayoutContext);
    v29 = v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
    v30 = v78;
    *(v29 + 32) = v77;
    *(v29 + 48) = v30;
    *(v29 + 64) = v79;
    *(v29 + 80) = v80;
    v31 = v76;
    *v29 = v75;
    *(v29 + 16) = v31;
    v32 = v60;
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v61;
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v32;
    v33 = (v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
    v34 = v82;
    *v33 = v81;
    v33[1] = v34;
    v35 = v84;
    v33[2] = v83;
    v33[3] = v35;
    v36 = v58;
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v59;
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v16;
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v36;
    sub_1D6B15C24(v74, v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v17);
    v37 = (v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    *v37 = v19;
    v37[1] = v56;
    v38 = (v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
    *v38 = v21;
    v40 = v54;
    v39 = v55;
    v38[1] = v55;
    v38[2] = v40;
    v41 = v69;
    v38[3] = v70;
    v38[4] = v41;
    v38[5] = v68;
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v71;
    v42 = (v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    v43 = v72;
    *v42 = v53;
    v42[1] = v43;
    sub_1D5CF6A5C(&v75, v73);

    sub_1D6B154F0(&v81, v73);

    v44 = v67;

    sub_1D67F5880(v52, v39);
    v45 = v62;

    v46 = v64;

    sub_1D6B15BC8(v74, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v57);
    sub_1D5BE7AAC(v63, type metadata accessor for GroupLayoutContext);
    *(v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v46;
    v47 = (v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    v48 = v66;
    *v47 = v65;
    v47[1] = v45;
    v49 = (v3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
    *v49 = v48;
    v49[1] = v44;
  }

  else
  {
  }

  return v3;
}

uint64_t *sub_1D6B14BDC(uint64_t a1)
{
  v3 = type metadata accessor for GroupLayoutContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 48);
  v76[2] = *(a1 + 32);
  v76[3] = v7;
  v76[4] = *(a1 + 64);
  v77 = *(a1 + 80);
  v8 = *(a1 + 16);
  v76[0] = *a1;
  v76[1] = v8;
  v9 = v8;
  if (v8 == 1)
  {
  }

  else
  {
    v59 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D5BF045C(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v6, type metadata accessor for GroupLayoutContext);
    v10 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory);
    v56 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
    v57 = v10;
    v11 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
    v72 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
    v73 = v11;
    v12 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
    v74 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
    v75 = v12;
    v13 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors);
    v54 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options);
    v55 = v13;
    v67 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks);
    v14 = MEMORY[0x1E69E6720];
    v53 = MEMORY[0x1E69E6720];
    sub_1D6B15C24(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, v71, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
    v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);
    v48 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    v16 = v48;
    v17 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8);
    v51 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
    v52 = v15;
    v50 = v17;
    v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 16);
    v18 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
    v20 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 40);
    v65 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 32);
    v66 = v18;
    v21 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines);
    v22 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);
    v49 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    v68 = v21;
    v69 = v22;
    v23 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions);
    v24 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
    v63 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    v64 = v20;
    v60 = v24;
    v61 = v23;
    v25 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
    v62 = *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
    v58 = v25;
    v1 = swift_allocObject();
    sub_1D5BF045C(v6, v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, type metadata accessor for GroupLayoutContext);
    v26 = v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
    *v26 = *a1;
    *(v26 + 16) = v9;
    *(v26 + 24) = *(a1 + 24);
    *(v26 + 40) = *(a1 + 40);
    *(v26 + 56) = *(a1 + 56);
    *(v26 + 72) = *(a1 + 72);
    v27 = v56;
    *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v57;
    *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v27;
    v28 = (v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
    v29 = v73;
    *v28 = v72;
    v28[1] = v29;
    v30 = v75;
    v28[2] = v74;
    v28[3] = v30;
    v31 = v54;
    *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v55;
    *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v31;
    *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v67;
    sub_1D6B15C24(v71, v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, v14);
    v32 = (v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    *v32 = v16;
    v33 = v51;
    v32[1] = v52;
    v34 = (v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
    v35 = v50;
    *v34 = v33;
    v34[1] = v35;
    v37 = v65;
    v36 = v66;
    v34[2] = v19;
    v34[3] = v36;
    v38 = v64;
    v34[4] = v37;
    v34[5] = v38;
    *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v68;
    v39 = (v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    v40 = v69;
    *v39 = v49;
    v39[1] = v40;
    sub_1D6B1555C(v76, v70);

    sub_1D6B154F0(&v72, v70);

    sub_1D67F5880(v33, v35);
    v41 = v58;

    v42 = v61;

    v43 = v60;

    sub_1D6B15BC8(v71, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, v53);
    sub_1D5BE7AAC(v59, type metadata accessor for GroupLayoutContext);
    *(v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v42;
    v44 = (v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    v45 = v62;
    *v44 = v63;
    v44[1] = v43;
    v46 = (v1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
    *v46 = v45;
    v46[1] = v41;
  }

  return v1;
}

uint64_t FormatNodeContext.deinit()
{
  sub_1D5BE7AAC(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, type metadata accessor for GroupLayoutContext);

  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
  v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
  v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
  v6 = *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

  sub_1D60B29F8(v1, v2, v3, v4, v5, v6);

  sub_1D6B15BC8(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6720]);

  sub_1D67F58E4(*(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary), *(v0 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8));

  return v0;
}

uint64_t FormatNodeContext.__deallocating_deinit()
{
  FormatNodeContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatNodeContext(uint64_t a1)
{
  result = qword_1EDF2F448;
  if (!qword_1EDF2F448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6B153E8(uint64_t a1)
{
  result = type metadata accessor for GroupLayoutContext(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1D6B1555C(uint64_t a1, uint64_t a2)
{
  sub_1D6B15CA4(0, &qword_1EDF33A38, &type metadata for FormatConfig, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6B155E4()
{
  result = qword_1EDF1B420;
  if (!qword_1EDF1B420)
  {
    sub_1D6B15CF4(255, &qword_1EDF1B428, type metadata accessor for FormatBlock, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B420);
  }

  return result;
}

uint64_t sub_1D6B1566C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1D6B156B4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return result;
}

void sub_1D6B156FC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v35 = v6;
  while (v9)
  {
    v38 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v42[0] = *v15;
    v42[1] = v16;
    v42[2] = v17;

    (a2)(&v39, v42);

    v18 = v39;
    v19 = v40;
    v20 = v41;
    v21 = *v43;
    v23 = sub_1D5B69D90(v39, v40);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v38 & 1) == 0)
      {
        sub_1D6D7F364();
      }
    }

    else
    {
      sub_1D6D684A8(v26, v38 & 1);
      v28 = sub_1D5B69D90(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v43;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v35;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1D5B87E38(a1);

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1D726493C();
  __break(1u);
}

uint64_t sub_1D6B15988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D6B15CF4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6B159E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B49474(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D6B15A54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1D6B15CA4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6B15AB0(uint64_t a1)
{
  if (!qword_1EDF29600)
  {
    sub_1D6B159E4(255, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF29600);
    }
  }
}

void sub_1D6B15B34(uint64_t a1)
{
  if (!qword_1EC891EB8)
  {
    sub_1D6B159E4(255, &qword_1EDF29608, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, type metadata accessor for FormatNodeBindingItem);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC891EB8);
    }
  }
}

uint64_t sub_1D6B15BC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1D6B159E4(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6B15C24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D6B159E4(0, a3, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6B15CA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D6B15CF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for DebugFormatBindingRequest(uint64_t a1)
{
  result = qword_1EC891EC0;
  if (!qword_1EC891EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6B15E28(uint64_t a1)
{
  type metadata accessor for FormatContentSubgroup(319);
  if (v1 <= 0x3F)
  {
    sub_1D62D786C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t _s8NewsFeed019FormatAnimationNodeD0O2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      v8 = *(v2 + 16);
      v9 = *(v3 + 16);

      v7 = _s8NewsFeed024FormatAnimationNodeBasicD0C2eeoiySbAC_ACtFZ_0(v8, v9);
      goto LABEL_9;
    }

LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  if (v4 != 1)
  {
    if (v3 >> 62 == 2)
    {
      v10 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      v7 = _s8NewsFeed024FormatAnimationNodeGroupD0C2eeoiySbAC_ACtFZ_0(v10, v11);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v3 >> 62 != 1)
  {
    goto LABEL_10;
  }

  v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

  v7 = _s8NewsFeed025FormatAnimationNodeSpringD0C2eeoiySbAC_ACtFZ_0(v5, v6);
LABEL_9:
  v12 = v7;

  return v12 & 1;
}

unint64_t sub_1D6B16020(uint64_t a1)
{
  result = sub_1D6B16048();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B16048()
{
  result = qword_1EC891ED0;
  if (!qword_1EC891ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891ED0);
  }

  return result;
}

unint64_t sub_1D6B1609C(void *a1)
{
  a1[1] = sub_1D66744D8();
  a1[2] = sub_1D6662968();
  result = sub_1D6B160D4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B160D4()
{
  result = qword_1EC891ED8;
  if (!qword_1EC891ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891ED8);
  }

  return result;
}

__n128 FeedJournalConfigEntry.init(_:_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

uint64_t AlertSubscriptionLimitReached.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t AlertSubscriptionLimitReached.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t AlertSubscriptionLimitReached.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t sub_1D6B163CC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t sub_1D6B16498()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t sub_1D6B1657C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t FormatHeadlineBinding.LayeredMedia.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6B166D0()
{
  result = qword_1EC891EE0;
  if (!qword_1EC891EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891EE0);
  }

  return result;
}

unint64_t sub_1D6B16724(uint64_t a1)
{
  result = sub_1D6B1674C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B1674C()
{
  result = qword_1EC891EE8;
  if (!qword_1EC891EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891EE8);
  }

  return result;
}

unint64_t sub_1D6B167A0(void *a1)
{
  a1[1] = sub_1D665B8D8();
  a1[2] = sub_1D66FB774();
  result = sub_1D6B166D0();
  a1[3] = result;
  return result;
}

uint64_t static FormatCommand.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 32);
  v9[0] = *(*a1 + 16);
  v9[1] = v4;
  v10[0] = *(v2 + 48);
  *(v10 + 15) = *(v2 + 63);
  v5 = *(v3 + 32);
  v7[0] = *(v3 + 16);
  v7[1] = v5;
  v8[0] = *(v3 + 48);
  *(v8 + 15) = *(v3 + 63);
  return _s8NewsFeed20FormatCommandBindingO2eeoiySbAC_ACtFZ_0(v9, v7) & 1;
}

uint64_t sub_1D6B1687C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 63);
  v14[1] = *(*v1 + 32);
  v15[0] = v5;
  *(v15 + 15) = v6;
  v14[0] = v4;
  v7 = *(v3 + 32);
  v11 = *(v3 + 16);
  v12 = v7;
  v13[0] = *(v3 + 48);
  *(v13 + 15) = *(v3 + 63);
  sub_1D62B5248(v14, v10);
  v8 = sub_1D688DD04(a1);
  sub_1D5D085FC(v14);
  return v8;
}

uint64_t sub_1D6B16934(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 32);
  v9[0] = *(*a1 + 16);
  v9[1] = v4;
  v10[0] = *(v2 + 48);
  *(v10 + 15) = *(v2 + 63);
  v5 = *(v3 + 32);
  v7[0] = *(v3 + 16);
  v7[1] = v5;
  v8[0] = *(v3 + 48);
  *(v8 + 15) = *(v3 + 63);
  return static FormatCommandBinding.== infix(_:_:)(v9, v7) & 1;
}

unint64_t sub_1D6B16998(uint64_t a1)
{
  result = sub_1D6B169C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B169C0()
{
  result = qword_1EC891EF0;
  if (!qword_1EC891EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891EF0);
  }

  return result;
}

unint64_t sub_1D6B16A14(void *a1)
{
  a1[1] = sub_1D5C6C910();
  a1[2] = sub_1D66807EC();
  result = sub_1D6B16A4C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B16A4C()
{
  result = qword_1EC891EF8;
  if (!qword_1EC891EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891EF8);
  }

  return result;
}

uint64_t sub_1D6B16ACC(uint64_t a1, char a2)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D725811C();

  return v4;
}

uint64_t sub_1D6B16CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1D6B16D3C;

  return sub_1D6B173B0(a5);
}

uint64_t sub_1D6B16D3C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6B16E3C, 0, 0);
}

uint64_t sub_1D6B16E3C()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed36SharingRecipeImageActivityItemSource_image);
  *(v1 + OBJC_IVAR____TtC8NewsFeed36SharingRecipeImageActivityItemSource_image) = v0[4];

  v3 = v0[1];

  return v3();
}

id SharingRecipeImageActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingRecipeImageActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SharingRecipeImageActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed36SharingRecipeImageActivityItemSource_image))
  {
    v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed36SharingRecipeImageActivityItemSource_image);
    v8 = sub_1D62B7E2C();
    *&v7 = v6;
    sub_1D5B7C390(&v7, a1);
    v3 = v6;
  }

  else
  {
    v4 = sub_1D67B380C();
    v3 = 0;
    *(a1 + 24) = v4;
    *a1 = MEMORY[0x1E69E7CA0] + 8;
  }

  return v3;
}

void SharingRecipeImageActivityItemSource.activityViewController(_:itemForActivityType:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1D726203C();
  v6 = v5;
  if (!a1)
  {

    goto LABEL_9;
  }

  v7 = sub_1D726207C();
  v9 = v8;
  if (v7 != sub_1D726207C() || v9 != v10)
  {
    v12 = sub_1D72646CC();

    if (v12)
    {
      goto LABEL_11;
    }

LABEL_9:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

LABEL_11:
  if (*(v2 + OBJC_IVAR____TtC8NewsFeed36SharingRecipeImageActivityItemSource_image))
  {
    v18 = *(v2 + OBJC_IVAR____TtC8NewsFeed36SharingRecipeImageActivityItemSource_image);
    v20 = sub_1D62B7E2C();
    *&v19 = v18;
    sub_1D5B7C390(&v19, a2);
    v13 = v18;
  }

  else
  {
    sub_1D5B5A6B4(0, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = sub_1D67B3C60();
    v13 = 0;
    *(a2 + 24) = v16;
    *a2 = v15;
  }

  v17 = v13;
}

uint64_t sub_1D6B173D0()
{
  v1 = [*(v0 + 48) thumbnailMedium];
  if (v1 && (v2 = v1, v3 = [v1 thumbnailAssetHandle], *(v0 + 56) = v3, v2, v3))
  {
    v4 = [v3 filePath];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1D726207C();
      v8 = v7;

      *(v0 + 32) = v6;
      *(v0 + 40) = v8;
      sub_1D5B5A6B4(0, qword_1EDF179A0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v9 = sub_1D725BB1C();
    }

    else
    {
      *(swift_task_alloc() + 16) = v3;
      sub_1D5B5A6B4(0, qword_1EDF179A0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v9 = sub_1D725BBAC();
    }

    *(v0 + 64) = v9;
    v12 = swift_task_alloc();
    *(v0 + 72) = v12;
    *v12 = v0;
    v12[1] = sub_1D6045B94;

    return MEMORY[0x1EEE44EE0](v0 + 16);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t type metadata accessor for DebugFormatManagerError(uint64_t a1)
{
  result = qword_1EC891F68;
  if (!qword_1EC891F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6B17630(uint64_t a1)
{
  sub_1D6B176EC();
  if (v1 <= 0x3F)
  {
    sub_1D6B1774C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DebugFormatManagerIndex(319);
      if (v3 <= 0x3F)
      {
        sub_1D6920A3C(319);
        if (v4 <= 0x3F)
        {
          sub_1D5EF3A64(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D6B176EC()
{
  if (!qword_1EC891F78)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC891F78);
    }
  }
}

void sub_1D6B1774C(uint64_t a1)
{
  if (!qword_1EC891F80[0])
  {
    sub_1D5BA6EF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EC891F80);
    }
  }
}

uint64_t sub_1D6B177BC()
{
  v1 = type metadata accessor for DebugFormatManagerError(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B181FC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1D6B182A8(v4);
        return 0xD000000000000023;
      }

      else
      {
        return 0xD000000000000016;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1D6920A3C(0);
      v8 = *(v7 + 48);
      v9 = sub_1D725BD1C();
      v10 = *(*(v9 - 8) + 8);
      v10(&v4[v8], v9);
      v10(v4, v9);
      return 0xD00000000000001DLL;
    }

    else
    {
      sub_1D6B182A8(v4);
      return 0xD000000000000012;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D6B182A8(v4);
      return 0x2064696C61766E49;
    }

    else
    {
      sub_1D6B182A8(v4);
      return 0x676E616843206F4ELL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D6B182A8(v4);
    return 0xD000000000000021;
  }

  else
  {
    sub_1D6B182A8(v4);
    return 0xD000000000000016;
  }
}

uint64_t sub_1D6B17A04(uint64_t a1)
{
  result = sub_1D6B18260(&qword_1EC88E370, type metadata accessor for DebugFormatManagerError, &unk_1D73234C4);
  *(a1 + 8) = result;
  return result;
}

char *sub_1D6B17A5C()
{
  v1 = v0;
  v2 = sub_1D725BD1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for DebugFormatManagerError(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B181FC(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v30 = *v14;
        v31 = *(v14 + 1);
        v61 = 0;
        v62 = 0xE000000000000000;
        sub_1D7263D4C();

        v61 = 0xD000000000000012;
        v62 = 0x80000001D73E5FF0;
        MEMORY[0x1DA6F9910](v30, v31);

        v28 = "The same package '";
        v29 = 0xD000000000000016;
        goto LABEL_12;
      }

      return 0xD00000000000004BLL;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1D6920A3C(0);
        v19 = *(v18 + 48);
        v20 = *(v3 + 32);
        v20(v10, v14, v2);
        v20(v6, &v14[v19], v2);
        sub_1D6B18260(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
        v61 = sub_1D72644BC();
        v62 = v21;
        MEMORY[0x1DA6F9910](540877088, 0xE400000000000000);
        v22 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v22);

        v23 = v61;
        v24 = *(v3 + 8);
        v24(v6, v2);
        v24(v10, v2);
        return v23;
      }

      v37 = *v14;
      if (*v14 >> 62)
      {
        goto LABEL_47;
      }

      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
LABEL_48:

        v40 = MEMORY[0x1E69E7CC0];
LABEL_49:
        v61 = v40;
        sub_1D5BBE0A8();
        sub_1D6B18260(&qword_1EDF3C840, sub_1D5BBE0A8, MEMORY[0x1E69E6310]);
        v54 = sub_1D7261F3C();
        v56 = v55;

        v61 = 0;
        v62 = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD000000000000045, 0x80000001D73E6030);
        MEMORY[0x1DA6F9910](v54, v56);

        return v61;
      }

      while (1)
      {
        v60 = MEMORY[0x1E69E7CC0];
        result = sub_1D5BFC364(0, v38 & ~(v38 >> 63), 0);
        if (v38 < 0)
        {
          break;
        }

        v39 = 0;
        v40 = v60;
        v58 = v37 & 0xFFFFFFFFFFFFFF8;
        v59 = v37 & 0xC000000000000001;
        while (1)
        {
          v41 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if (v59)
          {
            v42 = MEMORY[0x1DA6FB460](v39, v37);
          }

          else
          {
            if (v39 >= *(v58 + 16))
            {
              goto LABEL_46;
            }

            v42 = *(v37 + 8 * v39 + 32);
          }

          v61 = 5972013;
          v62 = 0xE300000000000000;
          v43 = *(*(v42 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
          if (v43 <= 2)
          {
            v44 = 0xE600000000000000;
            if (*(*(v42 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
            {
              if (v43 == 1)
              {
                v45 = 0x726564616548;
              }

              else
              {
                v45 = 0x7265746F6F46;
              }
            }

            else
            {
              v45 = 0x74756F79614CLL;
            }
          }

          else if (*(*(v42 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
          {
            if (v43 == 5)
            {
              v44 = 0xE700000000000000;
              v45 = 0x7972617262694CLL;
            }

            else
            {
              v44 = 0xEA0000000000646ELL;
              v45 = 0x756F72676B636142;
            }
          }

          else if (v43 == 3)
          {
            v44 = 0xE700000000000000;
            v45 = 0x6C6C6177796150;
          }

          else
          {
            v44 = 0xE500000000000000;
            v45 = 0x656D656854;
          }

          MEMORY[0x1DA6F9910](v45, v44);

          MEMORY[0x1DA6F9910](8285, 0xE200000000000000);
          v46 = *(v42 + 16);
          v47 = *(v46 + 16);
          v48 = *(v46 + 24);

          MEMORY[0x1DA6F9910](v47, v48);

          v49 = v61;
          v50 = v62;
          v60 = v40;
          v52 = *(v40 + 16);
          v51 = *(v40 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_1D5BFC364((v51 > 1), v52 + 1, 1);
            v40 = v60;
          }

          *(v40 + 16) = v52 + 1;
          v53 = v40 + 16 * v52;
          *(v53 + 32) = v49;
          *(v53 + 40) = v50;
          ++v39;
          if (v41 == v38)
          {

            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        v38 = sub_1D7263BFC();
        if (!v38)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v34 = *v14;
        v33 = *(v14 + 1);
        v35 = *(v14 + 2);
        v36 = *(v14 + 3);
        v61 = 0;
        v62 = 0xE000000000000000;
        sub_1D7263D4C();

        v61 = 0x6465746365707845;
        v62 = 0xEF203A6570795420;
        MEMORY[0x1DA6F9910](v35, v36);

        MEMORY[0x1DA6F9910](0x65666572206E6920, 0xEF272065636E6572);
        MEMORY[0x1DA6F9910](v34, v33);
      }

      else
      {
        v16 = *v14;
        v17 = *(v14 + 1);
        v61 = 0;
        v62 = 0xE000000000000000;
        sub_1D7263D4C();

        v61 = 0xD000000000000019;
        v62 = 0x80000001D73E60E0;
        MEMORY[0x1DA6F9910](v16, v17);
      }

      v29 = 39;
      v32 = 0xE100000000000000;
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v14;
      v27 = *(v14 + 1);

      v61 = 0;
      v62 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73E6080);
      MEMORY[0x1DA6F9910](v26, v27);

      v28 = "Invalid package '";
      v29 = 0xD000000000000035;
LABEL_12:
      v32 = v28 | 0x8000000000000000;
LABEL_15:
      MEMORY[0x1DA6F9910](v29, v32);
      return v61;
    }

    sub_1D6B182A8(v14);
    return 0;
  }

  return result;
}

uint64_t sub_1D6B181FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatManagerError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B18260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6B182A8(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatManagerError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6B18370(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D72646CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D6B183E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6B18370(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D6B1841C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C00104();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D6B18454(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6B184A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedValue.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v10 = a2[2];
  type metadata accessor for FeedValue.CodingKeys(255, v10, v3, a2[4]);
  swift_getWitnessTable();
  v4 = sub_1D726446C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  sub_1D726443C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t FeedValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v35 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FeedValue.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v36 = sub_1D726435C();
  v31 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v13);
  v15 = &v27 - v14;
  v32 = a2;
  v34 = a3;
  v16 = type metadata accessor for FeedValue(0, a2, a3, a4);
  v29 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v37;
  sub_1D7264B0C();
  if (!v20)
  {
    v28 = v19;
    v37 = v16;
    v22 = v31;
    v21 = v32;
    v23 = v33;
    v24 = v35;
    sub_1D726431C();
    (*(v22 + 8))(v15, v36);
    v25 = v28;
    (*(v23 + 32))(v28, v24, v21);
    (*(v29 + 32))(v30, v25, v37);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

id sub_1D6B18A18()
{
  v1 = OBJC_IVAR____TtC8NewsFeed39DebugFormatConsolePaneDisplayController____lazy_storage___consolePaneDebuggerButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatConsolePaneDisplayController____lazy_storage___consolePaneDebuggerButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatConsolePaneDisplayController____lazy_storage___consolePaneDebuggerButtonItem);
  }

  else
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v4 = sub_1D726203C();
    v5 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v5 style:0 target:v0 action:sel_doConsolePaneDebuggerDisplay];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D6B18B0C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed39DebugFormatConsolePaneDisplayController____lazy_storage___consolePaneLoggerButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatConsolePaneDisplayController____lazy_storage___consolePaneLoggerButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatConsolePaneDisplayController____lazy_storage___consolePaneLoggerButtonItem);
  }

  else
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v4 = sub_1D726203C();
    v5 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v5 style:0 target:v0 action:sel_doConsolePaneLoggerDisplay];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D6B18C00(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatConsolePaneDisplayController____lazy_storage___consolePaneDebuggerButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatConsolePaneDisplayController____lazy_storage___consolePaneLoggerButtonItem] = 0;
  v4 = OBJC_IVAR____TtC8NewsFeed39DebugFormatConsolePaneDisplayController_flexibleBarButtonItem;
  type metadata accessor for DebugFormatBarButtonItem();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:5 target:0 action:0];
  *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatConsolePaneDisplayController_editor] = a1;
  v7.receiver = v1;
  v7.super_class = ObjectType;

  v5 = objc_msgSendSuper2(&v7, sel_init);

  sub_1D725974C();

  sub_1D725971C();

  return v5;
}

void sub_1D6B18D28(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6B18A18();
  v4 = objc_opt_self();
  v5 = off_1E84CF340[v2];
  v6 = [v4 *off_1E84CF328[v2]];
  [v3 setTintColor_];

  v7 = sub_1D6B18B0C();
  v8 = [v4 *v5];
  [v7 setTintColor_];
}

double sub_1D6B18E60(char a1, char a2, char a3)
{

  sub_1D725972C();

  sub_1D725973C();

  return result;
}

double sub_1D6B1905C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a3;
  v33 = a1;
  v31 = type metadata accessor for FormatJson(0);
  MEMORY[0x1EEE9AC00](v31, v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[3];
  v27 = a2[2];
  v9 = v27;
  v11 = *(a2 + 32);
  sub_1D6B19668(0, &unk_1EDF020A0, type metadata accessor for FormatJsonKeyValue, MEMORY[0x1E69E6F90]);
  v12 = (type metadata accessor for FormatJsonKeyValue(0) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  v30 = v15;
  *(v15 + 16) = xmmword_1D7274590;
  v16 = (v15 + v14);
  v34 = v8;
  v35 = v7;
  v36 = v9;
  v37 = v10;
  v29 = v11;
  v38 = v11;
  v17 = v33;
  sub_1D6BF8300(v33, &v34, v6);
  *v16 = 0x7465737361;
  v16[1] = 0xE500000000000000;
  sub_1D6A5ADE8(v6, v16 + v12[7]);
  v18 = (v16 + v13);
  v25 = v13;
  v26 = v7;
  v28 = v8;
  v34 = v8;
  v35 = v7;
  v19 = v27;
  v36 = v27;
  v37 = v10;
  v38 = v11;
  sub_1D5EBF4E4(&v34, v6, v17);
  *v18 = 0x6E61656C6F6F62;
  v18[1] = 0xE700000000000000;
  sub_1D6A5ADE8(v6, v16 + v13 + v12[7]);
  v20 = 2 * v13;
  v21 = (v16 + 2 * v13);
  v22 = v28;
  v34 = v28;
  v35 = v7;
  v36 = v19;
  v37 = v10;
  LOBYTE(v13) = v29;
  v38 = v29;
  sub_1D6ACC0AC(v33, &v34, v6);
  *v21 = 0x726F6C6F63;
  v21[1] = 0xE500000000000000;
  sub_1D6A5ADE8(v6, v21 + v12[7]);
  v23 = (v16 + v20 + v25);
  v34 = v22;
  v35 = v26;
  v36 = v19;
  v37 = v10;
  v38 = v13;
  sub_1D67CF7D0(&v34, v6);
  *v23 = 0x676E69727473;
  v23[1] = 0xE600000000000000;
  sub_1D6A5ADE8(v6, v23 + v12[7]);
  *v32 = v30;
  swift_storeEnumTagMultiPayload();
  return result;
}