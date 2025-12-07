uint64_t sub_216F3DB18()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216F3DB6C()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216F3DBC0()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216F3DC54()
{

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__headline, &qword_27CACE3F8, &unk_217073A90);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__contentDescriptor, &qword_27CACE120, &unk_217074850);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__playAction, &qword_27CABFF98, &unk_217049930);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__segue, &qword_27CABFF98, &unk_217049930);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__artwork, &qword_27CACE100, &qword_21707B640);

  return v0;
}

uint64_t sub_216F3DD70()
{
  v0 = sub_216F3DC54();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216F3DDC4()
{
  v1 = *(type metadata accessor for HorizontalLockup(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for HorizontalLockup._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_18();
    *(v0 + v1) = sub_216F3D2E4(v2);
  }

  OUTLINED_FUNCTION_615();
  return sub_216F3DE60(v3, v4, v5, v6);
}

uint64_t sub_216F3DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_217007914();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_216F2EFD8(a2, a1, a3, a4);
        break;
      case 2:
        sub_216F2F05C(a2, a1, a3, a4);
        break;
      case 3:
        sub_216F3E0E8(a2, a1, a3, a4);
        break;
      case 4:
        sub_216F3E16C(a2, a1, a3, a4);
        break;
      case 5:
        v11 = sub_216788020;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__headlineColor;
        v17 = &type metadata for HorizontalLockup.HeadlineColor;
        goto LABEL_7;
      case 6:
        sub_216F3E248(a2, a1, a3, a4);
        break;
      case 7:
        sub_216F3E324(a2, a1, a3, a4);
        break;
      case 8:
        sub_216F3E400(a2, a1, a3, a4);
        break;
      case 9:
        sub_216F3E4DC(a2, a1, a3, a4);
        break;
      case 10:
        sub_216F3E568(a2, a1, a3, a4);
        break;
      case 11:
        sub_216F3E5F4(a2, a1, a3, a4);
        break;
      case 12:
        v11 = sub_21678724C;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__artworkTreatment;
        v17 = &type metadata for ArtworkShape;
LABEL_7:
        sub_216F3E6D0(v12, v13, v14, v15, v16, v11, v17);
        break;
      case 13:
      case 14:
      case 15:
        sub_216F3E778();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F3E0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2170079A4();
  return swift_endAccess();
}

uint64_t sub_216F3E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AttributedDateRange(0);
  sub_216F40BB0(&qword_27CAC3DD0, type metadata accessor for AttributedDateRange, &unk_217072840);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F3E248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ContentDescriptor(0);
  sub_216F40BB0(&qword_27CACE3E0, type metadata accessor for ContentDescriptor, &unk_21707D078);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F3E324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AnyAction(0);
  sub_216F40BB0(&qword_27CACE3E8, type metadata accessor for AnyAction, &unk_2170779D0);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F3E400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AnyAction(0);
  sub_216F40BB0(&qword_27CACE3E8, type metadata accessor for AnyAction, &unk_2170779D0);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F3E4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_217007944();
  return swift_endAccess();
}

uint64_t sub_216F3E568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_217007964();
  return swift_endAccess();
}

uint64_t sub_216F3E5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Artwork(0);
  sub_216F40BB0(qword_27CAC77F0, type metadata accessor for Artwork, &unk_217077D30);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F3E6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v8 = swift_beginAccess();
  a6(v8);
  sub_217007954();
  return swift_endAccess();
}

uint64_t sub_216F3E778()
{
  OUTLINED_FUNCTION_71_3();
  swift_beginAccess();
  sub_2170079A4();
  return swift_endAccess();
}

uint64_t sub_216F3E7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for HorizontalLockup(0);
  result = sub_216F3E860(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_109();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F3E860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_216F2F980(a1, a2, a3, a4);
  if (!v4)
  {
    sub_216F2FA1C(a1, a2, a3, a4);
    sub_216F3EA5C(a1, a2, a3, a4);
    sub_216F3EAF8(a1, a2, a3, a4);
    sub_216F3F5D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__headlineColor, sub_216788020);
    sub_216F3ECEC(a1, a2, a3, a4);
    sub_216F3EEE0(a1, a2, a3, a4);
    sub_216F3F0D4(a1, a2, a3, a4);
    sub_216F3F2C8(a1, a2, a3, a4);
    sub_216F3F358(a1, a2, a3, a4);
    sub_216F3F3E4(a1, a2, a3, a4);
    sub_216F3F5D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__artworkTreatment, sub_21678724C);
    sub_216F3F684(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__liveBadgeLabel, 13);
    sub_216F3F684(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__accessibilityLabel, 14);
    return sub_216F3F684(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__rankingText, 15);
  }

  return result;
}

uint64_t sub_216F3EA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 56))
  {
    sub_21700DF14();
    sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F3EAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3F8, &unk_217073A90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AttributedDateRange(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__headline;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CACE3F8, &unk_217073A90);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE3F8, &unk_217073A90);
  }

  sub_216F3DB18();
  sub_216F40BB0(&qword_27CAC3DD0, type metadata accessor for AttributedDateRange, &unk_217072840);
  sub_217007B04();
  return sub_216F3DBC0();
}

uint64_t sub_216F3ECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__contentDescriptor;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CACE120, &unk_217074850);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE120, &unk_217074850);
  }

  sub_216F3DB18();
  sub_216F40BB0(&qword_27CACE3E0, type metadata accessor for ContentDescriptor, &unk_21707D078);
  sub_217007B04();
  return sub_216F3DBC0();
}

uint64_t sub_216F3EEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AnyAction(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__playAction;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CABFF98, &unk_217049930);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CABFF98, &unk_217049930);
  }

  sub_216F3DB18();
  sub_216F40BB0(&qword_27CACE3E8, type metadata accessor for AnyAction, &unk_2170779D0);
  sub_217007B04();
  return sub_216F3DBC0();
}

uint64_t sub_216F3F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for AnyAction(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__segue;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CABFF98, &unk_217049930);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CABFF98, &unk_217049930);
  }

  sub_216F3DB18();
  sub_216F40BB0(&qword_27CACE3E8, type metadata accessor for AnyAction, &unk_2170779D0);
  sub_217007B04();
  return sub_216F3DBC0();
}

uint64_t sub_216F3F2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__showExplicitBadge;
  result = swift_beginAccess();
  if (*(a1 + v5) != 2)
  {
    return sub_217007A74();
  }

  return result;
}

uint64_t sub_216F3F358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__numberOfSocialBadges;
  result = swift_beginAccess();
  if ((*(v4 + 4) & 1) == 0)
  {
    return sub_217007A94();
  }

  return result;
}

uint64_t sub_216F3F3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100, &qword_21707B640);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__artwork;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CACE100, &qword_21707B640);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE100, &qword_21707B640);
  }

  sub_216F3DB18();
  sub_216F40BB0(qword_27CAC77F0, type metadata accessor for Artwork, &unk_217077D30);
  sub_217007B04();
  return sub_216F3DBC0();
}

uint64_t sub_216F3F5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_71_3();
  v9 = v8 + *v7;
  OUTLINED_FUNCTION_37();
  result = swift_beginAccess();
  if ((*(v9 + 9) & 1) == 0)
  {
    a6(result);
    OUTLINED_FUNCTION_97_2();
    return sub_217007A84();
  }

  return result;
}

uint64_t sub_216F3F684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_71_3();
  v8 = v7 + *v6;
  OUTLINED_FUNCTION_37();
  result = swift_beginAccess();
  if (*(v8 + 8))
  {
    sub_21700DF14();
    sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F3F728(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_114();
  if (*(a1 + v4) != *(a2 + v4))
  {

    OUTLINED_FUNCTION_82();
    sub_216F3F7F0();
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_217007884();
  OUTLINED_FUNCTION_1_228();
  sub_216F40BB0(v7, v8, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_38();
  return sub_21700E494() & 1;
}

void sub_216F3F7F0()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v184 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v182 = v7 - v6;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3D0, &unk_217074160);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v187 = &v182 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100, &qword_21707B640);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  v185 = v12 - v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47_1();
  v186 = v15;
  v16 = OUTLINED_FUNCTION_4_1();
  v197 = type metadata accessor for AnyAction(v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v189 = v19 - v18;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE090, &qword_217073A30);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77();
  v190 = v21 - v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47_1();
  v194 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  v26 = OUTLINED_FUNCTION_36(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77();
  v188 = v27 - v28;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v29);
  v192 = &v182 - v30;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v31);
  v191 = &v182 - v32;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47_1();
  v202 = v34;
  v35 = OUTLINED_FUNCTION_4_1();
  v199 = type metadata accessor for ContentDescriptor(v35);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7();
  v193 = v38 - v37;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3C0, &qword_217074170);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  v200 = &v182 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  v42 = OUTLINED_FUNCTION_36(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77();
  v195 = v43 - v44;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_47_1();
  v201 = v46;
  v47 = OUTLINED_FUNCTION_4_1();
  v48 = type metadata accessor for AttributedDateRange(v47);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_7();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5A0, &qword_217074178);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12_2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3F8, &unk_217073A90);
  v53 = OUTLINED_FUNCTION_36(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_77();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v182 - v58;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v203 = v4;
  v60 = *(v4 + 16);
  v61 = *(v4 + 24);
  OUTLINED_FUNCTION_37();
  v62 = swift_beginAccess();
  v204 = v2;
  v64 = v2[3];
  if (v61)
  {
    if (!v64)
    {
      goto LABEL_39;
    }

    v65 = v204[2];
    v66 = v60 == v65 && v61 == v64;
    if (!v66 && (OUTLINED_FUNCTION_88_11(v62, v63, v65, v64) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v64)
  {
    goto LABEL_39;
  }

  v67 = v203;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v68 = *(v67 + 32);
  v69 = *(v67 + 40);
  v70 = v204;
  OUTLINED_FUNCTION_37();
  v71 = swift_beginAccess();
  v73 = v70[5];
  if (v69)
  {
    if (!v73)
    {
      goto LABEL_39;
    }

    v74 = v204[4];
    v75 = v68 == v74 && v69 == v73;
    if (!v75 && (OUTLINED_FUNCTION_88_11(v71, v72, v74, v73) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v73)
  {
    goto LABEL_39;
  }

  v76 = v203;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v77 = *(v76 + 48);
  v78 = *(v76 + 56);
  v79 = v204;
  OUTLINED_FUNCTION_37();
  v80 = swift_beginAccess();
  v82 = v79[7];
  if (v78)
  {
    if (!v82)
    {
      goto LABEL_39;
    }

    v83 = v204[6];
    v84 = v77 == v83 && v78 == v82;
    if (!v84 && (OUTLINED_FUNCTION_88_11(v80, v81, v83, v82) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v82)
  {
    goto LABEL_39;
  }

  v85 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__headline;
  v86 = v203;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(v86 + v85, v59, &qword_27CACE3F8, &unk_217073A90);
  v87 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__headline;
  v88 = v204;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v89 = *(v50 + 48);
  v90 = OUTLINED_FUNCTION_27_0();
  sub_216683A80(v90, v91, &qword_27CACE3F8, &unk_217073A90);
  sub_216683A80(v88 + v87, v0 + v89, &qword_27CACE3F8, &unk_217073A90);
  OUTLINED_FUNCTION_31_2(v0, 1, v48);
  if (v66)
  {
    v92 = v203;

    sub_216697664(v59, &qword_27CACE3F8, &unk_217073A90);
    OUTLINED_FUNCTION_31_2(v0 + v89, 1, v48);
    if (v66)
    {
      sub_216697664(v0, &qword_27CACE3F8, &unk_217073A90);
      goto LABEL_41;
    }

LABEL_36:
    v94 = &qword_27CACE5A0;
    v95 = &qword_217074178;
    v96 = v0;
LABEL_37:
    sub_216697664(v96, v94, v95);
    goto LABEL_38;
  }

  sub_216683A80(v0, v56, &qword_27CACE3F8, &unk_217073A90);
  OUTLINED_FUNCTION_31_2(v0 + v89, 1, v48);
  if (v93)
  {

    sub_216697664(v59, &qword_27CACE3F8, &unk_217073A90);
    sub_216F3DBC0();
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_14_89();
  sub_216F3DB18();
  v97 = v203;

  v88 = v204;

  v98 = sub_216F238C4();
  sub_216F3DBC0();
  sub_216697664(v59, &qword_27CACE3F8, &unk_217073A90);
  v92 = v97;
  sub_216F3DBC0();
  sub_216697664(v0, &qword_27CACE3F8, &unk_217073A90);
  if ((v98 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_41:
  v99 = (v92 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__headlineColor);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v100 = *v99;
  v101 = *(v99 + 9);
  v102 = v88 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__headlineColor;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v101)
  {
    v104 = v201;
    v103 = v202;
    if ((v102[9] & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v104 = v201;
    v103 = v202;
    if (v102[9])
    {
      goto LABEL_38;
    }

    v108 = *v102;
    if (v102[8])
    {
      if (v108)
      {
        if (v108 == 1)
        {
          if (v100 != 1)
          {
            goto LABEL_38;
          }
        }

        else if (v100 != 2)
        {
          goto LABEL_38;
        }
      }

      else if (v100)
      {
        goto LABEL_38;
      }
    }

    else if (v100 != v108)
    {
      goto LABEL_38;
    }
  }

  v105 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__contentDescriptor;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_64_2(v92 + v105, v104);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v106 = *(v198 + 48);
  v107 = v200;
  OUTLINED_FUNCTION_64_2(v104, v200);
  OUTLINED_FUNCTION_59_15();
  OUTLINED_FUNCTION_31_2(v107, 1, v199);
  if (v66)
  {
    sub_216697664(v104, &qword_27CACE120, &unk_217074850);
    OUTLINED_FUNCTION_12_4(v107 + v106);
    if (v66)
    {
      sub_216697664(v107, &qword_27CACE120, &unk_217074850);
      goto LABEL_61;
    }

LABEL_57:
    v94 = &qword_27CACE3C0;
    v95 = &qword_217074170;
LABEL_84:
    v96 = v107;
    goto LABEL_37;
  }

  sub_216683A80(v107, v195, &qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_12_4(v107 + v106);
  if (v109)
  {
    sub_216697664(v104, &qword_27CACE120, &unk_217074850);
    sub_216F3DBC0();
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_16_81();
  sub_216F3DB18();
  OUTLINED_FUNCTION_109();
  sub_216FE1ABC();
  v111 = v110;
  sub_216F3DBC0();
  sub_216697664(v104, &qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_98();
  sub_216F3DBC0();
  v112 = OUTLINED_FUNCTION_27_0();
  sub_216697664(v112, v113, &unk_217074850);
  if ((v111 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_61:
  v114 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__playAction;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_64_2(v92 + v114, v103);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v115 = *(v196 + 48);
  v107 = v194;
  OUTLINED_FUNCTION_64_2(v103, v194);
  OUTLINED_FUNCTION_59_15();
  v116 = v197;
  OUTLINED_FUNCTION_31_2(v107, 1, v197);
  if (v66)
  {
    sub_216697664(v103, &qword_27CABFF98, &unk_217049930);
    OUTLINED_FUNCTION_5_3(v107 + v115);
    if (!v66)
    {
      goto LABEL_83;
    }

    sub_216697664(v107, &qword_27CABFF98, &unk_217049930);
  }

  else
  {
    sub_216683A80(v107, v191, &qword_27CABFF98, &unk_217049930);
    OUTLINED_FUNCTION_5_3(v107 + v115);
    if (v117)
    {
      sub_216697664(v103, &qword_27CABFF98, &unk_217049930);
      OUTLINED_FUNCTION_42_37();
LABEL_82:
      sub_216F3DBC0();
LABEL_83:
      v94 = &qword_27CACE090;
      v95 = &qword_217073A30;
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_2_191();
    sub_216F3DB18();
    OUTLINED_FUNCTION_109();
    sub_216F82038();
    OUTLINED_FUNCTION_40_34();
    sub_216F3DBC0();
    OUTLINED_FUNCTION_82_2();
    sub_216697664(v118, v119, v120);
    sub_216F3DBC0();
    OUTLINED_FUNCTION_82_2();
    sub_216697664(v121, v122, v123);
    if ((v116 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v124 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__segue;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v125 = v192;
  OUTLINED_FUNCTION_64_2(v92 + v124, v192);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v126 = *(v196 + 48);
  v107 = v190;
  OUTLINED_FUNCTION_64_2(v125, v190);
  OUTLINED_FUNCTION_59_15();
  OUTLINED_FUNCTION_31_2(v107, 1, v197);
  if (v66)
  {
    sub_216697664(v125, &qword_27CABFF98, &unk_217049930);
    OUTLINED_FUNCTION_12_4(v107 + v126);
    if (v66)
    {
      sub_216697664(v107, &qword_27CABFF98, &unk_217049930);
      goto LABEL_86;
    }

    goto LABEL_83;
  }

  sub_216683A80(v107, v188, &qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_12_4(v107 + v126);
  if (v127)
  {
    sub_216697664(v192, &qword_27CABFF98, &unk_217049930);
    OUTLINED_FUNCTION_42_37();
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_2_191();
  sub_216F3DB18();
  sub_216F82038();
  OUTLINED_FUNCTION_40_34();
  sub_216F3DBC0();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v128, v129, v130);
  sub_216F3DBC0();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v131, v132, v133);
  if ((&qword_27CABFF98 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_86:
  v134 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__showExplicitBadge;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v135 = *(v92 + v134);
  v136 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__showExplicitBadge;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v137 = *(v88 + v136);
  if (v135 == 2)
  {
    if (v137 != 2)
    {
      goto LABEL_38;
    }
  }

  else if (v137 == 2 || ((v135 ^ v137) & 1) != 0)
  {
    goto LABEL_38;
  }

  v138 = (v92 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__numberOfSocialBadges);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v139 = *v138;
  v140 = *(v138 + 4);
  v141 = v88 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__numberOfSocialBadges;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v140)
  {
    if ((v141[4] & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if ((v141[4] & 1) != 0 || v139 != *v141)
  {
    goto LABEL_38;
  }

  v142 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__artwork;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v143 = v92 + v142;
  v144 = v186;
  OUTLINED_FUNCTION_64_2(v143, v186);
  v145 = OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__artwork;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v146 = *(v183 + 48);
  v147 = v144;
  v148 = v187;
  OUTLINED_FUNCTION_64_2(v147, v187);
  OUTLINED_FUNCTION_64_2(v88 + v145, v148 + v146);
  OUTLINED_FUNCTION_31_2(v148, 1, v184);
  if (v66)
  {
    sub_216697664(v186, &qword_27CACE100, &qword_21707B640);
    OUTLINED_FUNCTION_5_3(v148 + v146);
    if (v66)
    {
      sub_216697664(v187, &qword_27CACE100, &qword_21707B640);
      goto LABEL_107;
    }

LABEL_104:
    sub_216697664(v187, &qword_27CACE3D0, &unk_217074160);
    goto LABEL_38;
  }

  sub_216683A80(v148, v185, &qword_27CACE100, &qword_21707B640);
  OUTLINED_FUNCTION_5_3(v148 + v146);
  if (v149)
  {
    sub_216697664(v186, &qword_27CACE100, &qword_21707B640);
    sub_216F3DBC0();
    goto LABEL_104;
  }

  OUTLINED_FUNCTION_15_79();
  sub_216F3DB18();
  v150 = OUTLINED_FUNCTION_27_0();
  v152 = sub_216F848D8(v150, v151);
  sub_216F3DBC0();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v153, v154, v155);
  sub_216F3DBC0();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v156, v157, v158);
  if ((v152 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_107:
  v159 = (v203 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__artworkTreatment);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v160 = *v159;
  v161 = *(v159 + 9);
  v162 = v204 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__artworkTreatment;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v161)
  {
    if ((v162[9] & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v162[9])
    {
      goto LABEL_38;
    }

    v169 = *v162;
    if (v162[8])
    {
      if (v169)
      {
        if (v169 == 1)
        {
          if (v160 != 1)
          {
            goto LABEL_38;
          }
        }

        else if (v160 != 2)
        {
          goto LABEL_38;
        }
      }

      else if (v160)
      {
        goto LABEL_38;
      }
    }

    else if (v160 != v169)
    {
      goto LABEL_38;
    }
  }

  v163 = (v203 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__liveBadgeLabel);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v164 = *v163;
  v165 = v163[1];
  v166 = (v204 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__liveBadgeLabel);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v167 = v166[1];
  if (v165)
  {
    if (!v167)
    {
      goto LABEL_38;
    }

    v168 = v164 == *v166 && v165 == v167;
    if (!v168 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v167)
  {
    goto LABEL_38;
  }

  v170 = (v203 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__accessibilityLabel);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v171 = *v170;
  v172 = v170[1];
  v173 = (v204 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__accessibilityLabel);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v174 = v173[1];
  if (v172)
  {
    if (!v174)
    {
      goto LABEL_38;
    }

    v175 = v171 == *v173 && v172 == v174;
    if (!v175 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v174)
  {
    goto LABEL_38;
  }

  v176 = (v203 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__rankingText);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v177 = *v176;
  v178 = v176[1];
  v179 = (v204 + OBJC_IVAR____TtCV18SwiftMusicProtocol16HorizontalLockupP33_E2B9F5A1F5E2118EDE0FCDB33F3F892913_StorageClass__rankingText);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v180 = v179[1];
  if (v178)
  {
    if (v180)
    {
      if (v177 != *v179 || v178 != v180)
      {
        sub_21700F7D4();
      }

      sub_21700DF14();

      goto LABEL_39;
    }

LABEL_38:

    goto LABEL_39;
  }

  sub_21700DF14();

  if (v180)
  {
  }

LABEL_39:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F40A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F40BB0(&qword_27CACE560, type metadata accessor for HorizontalLockup, &unk_217073DA8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F40AC4(uint64_t a1)
{
  v2 = sub_216F40BB0(&qword_27CAB6D98, type metadata accessor for HorizontalLockup, &unk_217073D30);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F40B34(uint64_t a1, uint64_t a2)
{
  sub_216F40BB0(&qword_27CAB6D98, type metadata accessor for HorizontalLockup, &unk_217073D30);

  return sub_217007A34();
}

uint64_t sub_216F40BB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216F40BFC()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22C88);
  __swift_project_value_buffer(v0, qword_27CB22C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015230;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "HEADLINE_COLOR_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HEADLINE_COLOR_DEFAULT";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HEADLINE_COLOR_TINT_COLOR";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F40E68(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F40EF8()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22CA0);
  __swift_project_value_buffer(v0, qword_27CB22CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015240;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "horizontal_lockups";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "display_style";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "shelf";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 102;
  *v14 = "grid";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 103;
  *v16 = "single";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F411D8()
{
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 103:
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_615();
        sub_216F41DC0(v19, v20, v21, v22);
        break;
      case 2:
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_615();
        sub_216F41344(v7, v8, v9, v10);
        break;
      case 101:
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_615();
        sub_216F413B8(v15, v16, v17, v18);
        break;
      case 102:
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_615();
        sub_216F418BC(v11, v12, v13, v14);
        break;
      case 1:
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_615();
        sub_216F412A4(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_216F412A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HorizontalLockup(0);
  sub_216F40BB0(&qword_27CAB6D98, type metadata accessor for HorizontalLockup, &unk_217073D30);
  return sub_2170079C4();
}

uint64_t sub_216F41344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HorizontalLockupCollection(0);
  sub_216F43EEC();
  return sub_217007954();
}

uint64_t sub_216F413B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Presentation.StackedShelf(0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580, &qword_217073AA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE588, &unk_217075480);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for HorizontalLockupCollection(0) + 20);
  v26 = a1;
  sub_216683A80(a1 + v25, v10, &qword_27CAC6580, &qword_217073AA0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v10, &qword_27CAC6580, &qword_217073AA0);
  }

  else
  {
    sub_216F3DB18();
    sub_216F3DB18();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_216F3DBC0();
    }

    else
    {
      sub_216697664(v18, &qword_27CACE588, &unk_217075480);
      sub_216F3DB18();
      sub_216F3DB18();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_216F40BB0(&qword_27CACE570, type metadata accessor for Presentation.StackedShelf, &unk_217076E90);
  v19 = v30;
  sub_2170079D4();
  if (v19)
  {
    v20 = v18;
    return sub_216697664(v20, &qword_27CACE588, &unk_217075480);
  }

  sub_216683A80(v18, v15, &qword_27CACE588, &unk_217075480);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_216697664(v18, &qword_27CACE588, &unk_217075480);
    v20 = v15;
    return sub_216697664(v20, &qword_27CACE588, &unk_217075480);
  }

  sub_216F3DB18();
  if (EnumTagSinglePayload != 1)
  {
    sub_217007924();
  }

  v22 = v28;
  sub_216697664(v18, &qword_27CACE588, &unk_217075480);
  v24 = v25;
  v23 = v26;
  sub_216697664(v26 + v25, &qword_27CAC6580, &qword_217073AA0);
  sub_216F3DB18();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_216F418BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Presentation.Grid(0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580, &qword_217073AA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE590, &qword_217074150);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for HorizontalLockupCollection(0) + 20);
  v26 = a1;
  sub_216683A80(a1 + v25, v10, &qword_27CAC6580, &qword_217073AA0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v10, &qword_27CAC6580, &qword_217073AA0);
  }

  else
  {
    sub_216F3DB18();
    sub_216F3DB18();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_216697664(v18, &qword_27CACE590, &qword_217074150);
      sub_216F3DB18();
      sub_216F3DB18();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_216F3DBC0();
    }
  }

  sub_216F40BB0(&qword_27CACE578, type metadata accessor for Presentation.Grid, &unk_217076A58);
  v19 = v30;
  sub_2170079D4();
  if (v19)
  {
    v20 = v18;
    return sub_216697664(v20, &qword_27CACE590, &qword_217074150);
  }

  sub_216683A80(v18, v15, &qword_27CACE590, &qword_217074150);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_216697664(v18, &qword_27CACE590, &qword_217074150);
    v20 = v15;
    return sub_216697664(v20, &qword_27CACE590, &qword_217074150);
  }

  sub_216F3DB18();
  if (EnumTagSinglePayload != 1)
  {
    sub_217007924();
  }

  v22 = v28;
  sub_216697664(v18, &qword_27CACE590, &qword_217074150);
  v24 = v25;
  v23 = v26;
  sub_216697664(v26 + v25, &qword_27CAC6580, &qword_217073AA0);
  sub_216F3DB18();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_216F41DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for Presentation.Single(0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580, &qword_217073AA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE598, &qword_217074158);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for HorizontalLockupCollection(0) + 20);
  v26 = a1;
  sub_216683A80(a1 + v25, v10, &qword_27CAC6580, &qword_217073AA0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v10, &qword_27CAC6580, &qword_217073AA0);
  }

  else
  {
    sub_216F3DB18();
    sub_216F3DB18();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_216697664(v18, &qword_27CACE598, &qword_217074158);
      sub_216F3DB18();
      sub_216F3DB18();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_216F3DBC0();
    }
  }

  sub_216F40BB0(&qword_27CACE580, type metadata accessor for Presentation.Single, &unk_217076FF8);
  v19 = v30;
  sub_2170079D4();
  if (v19)
  {
    v20 = v18;
    return sub_216697664(v20, &qword_27CACE598, &qword_217074158);
  }

  sub_216683A80(v18, v15, &qword_27CACE598, &qword_217074158);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_216697664(v18, &qword_27CACE598, &qword_217074158);
    v20 = v15;
    return sub_216697664(v20, &qword_27CACE598, &qword_217074158);
  }

  sub_216F3DB18();
  if (EnumTagSinglePayload != 1)
  {
    sub_217007924();
  }

  v22 = v28;
  sub_216697664(v18, &qword_27CACE598, &qword_217074158);
  v24 = v25;
  v23 = v26;
  sub_216697664(v26 + v25, &qword_27CAC6580, &qword_217073AA0);
  sub_216F3DB18();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_216F422C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580, &qword_217073AA0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  if (!*(*v3 + 16) || (type metadata accessor for HorizontalLockup(0), sub_216F40BB0(&qword_27CAB6D98, type metadata accessor for HorizontalLockup, &unk_217073D30), OUTLINED_FUNCTION_97_2(), result = sub_217007AF4(), !v4))
  {
    v11 = OUTLINED_FUNCTION_4_0();
    result = sub_216F42490(v11, v12, v13, v14);
    if (!v4)
    {
      v15 = type metadata accessor for HorizontalLockupCollection(0);
      sub_216683A80(v5 + *(v15 + 20), v9, &qword_27CAC6580, &qword_217073AA0);
      v16 = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(0);
      if (__swift_getEnumTagSinglePayload(v9, 1, v16) != 1)
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v18 = OUTLINED_FUNCTION_4_0();
            sub_216F42750(v18, v19, v20, v21);
          }

          else
          {
            v26 = OUTLINED_FUNCTION_4_0();
            sub_216F42970(v26, v27, v28, v29);
          }
        }

        else
        {
          v22 = OUTLINED_FUNCTION_4_0();
          sub_216F42534(v22, v23, v24, v25);
        }

        OUTLINED_FUNCTION_0_266();
        sub_216F3DBC0();
      }

      return sub_217007864();
    }
  }

  return result;
}

uint64_t sub_216F42490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HorizontalLockupCollection(0);
  if ((*(a1 + *(result + 28) + 9) & 1) == 0)
  {
    sub_216F43EEC();
    return sub_217007A84();
  }

  return result;
}

uint64_t sub_216F42534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580, &qword_217073AA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Presentation.StackedShelf(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for HorizontalLockupCollection(0);
  sub_216683A80(a1 + *(v9 + 20), v7, &qword_27CAC6580, &qword_217073AA0);
  v10 = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_216697664(v7, &qword_27CAC6580, &qword_217073AA0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_216F3DB18();
      sub_216F40BB0(&qword_27CACE570, type metadata accessor for Presentation.StackedShelf, &unk_217076E90);
      sub_217007B04();
      return sub_216F3DBC0();
    }

    result = sub_216F3DBC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_216F42750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580, &qword_217073AA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Presentation.Grid(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for HorizontalLockupCollection(0);
  sub_216683A80(a1 + *(v9 + 20), v7, &qword_27CAC6580, &qword_217073AA0);
  v10 = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_216697664(v7, &qword_27CAC6580, &qword_217073AA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_216F3DB18();
      sub_216F40BB0(&qword_27CACE578, type metadata accessor for Presentation.Grid, &unk_217076A58);
      sub_217007B04();
      return sub_216F3DBC0();
    }

    result = sub_216F3DBC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_216F42970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580, &qword_217073AA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Presentation.Single(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for HorizontalLockupCollection(0);
  sub_216683A80(a1 + *(v9 + 20), v7, &qword_27CAC6580, &qword_217073AA0);
  v10 = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_216697664(v7, &qword_27CAC6580, &qword_217073AA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_216F3DB18();
      sub_216F40BB0(&qword_27CACE580, type metadata accessor for Presentation.Single, &unk_217076FF8);
      sub_217007B04();
      return sub_216F3DBC0();
    }

    result = sub_216F3DBC0();
  }

  __break(1u);
  return result;
}

void sub_216F42B90()
{
  OUTLINED_FUNCTION_49();
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(v3);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6580, &qword_217073AA0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE470, &qword_217073AB0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_2();
  sub_216F260E4();
  if ((v12 & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = type metadata accessor for HorizontalLockupCollection(0);
  v14 = *(v13 + 28);
  v15 = v1 + v14;
  v16 = *(v1 + v14 + 9);
  v17 = v0 + v14;
  if (v16)
  {
    if ((*(v17 + 9) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v17 + 9) & 1) != 0 || !sub_216F27A88(*v15, *(v15 + 8) & 1, *v17))
  {
    goto LABEL_16;
  }

  v25[1] = v13;
  v18 = *(v13 + 20);
  v19 = *(v10 + 48);
  sub_216683A80(v1 + v18, v2, &qword_27CAC6580, &qword_217073AA0);
  sub_216683A80(v0 + v18, v2 + v19, &qword_27CAC6580, &qword_217073AA0);
  OUTLINED_FUNCTION_31_2(v2, 1, v4);
  if (v20)
  {
    OUTLINED_FUNCTION_31_2(v2 + v19, 1, v4);
    if (v20)
    {
      sub_216697664(v2, &qword_27CAC6580, &qword_217073AA0);
LABEL_18:
      sub_217007884();
      OUTLINED_FUNCTION_1_228();
      sub_216F40BB0(v23, v24, MEMORY[0x277D216D0]);
      sub_21700E494();
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sub_216683A80(v2, v9, &qword_27CAC6580, &qword_217073AA0);
  OUTLINED_FUNCTION_31_2(v2 + v19, 1, v4);
  if (v20)
  {
    OUTLINED_FUNCTION_0_266();
    sub_216F3DBC0();
LABEL_15:
    sub_216697664(v2, &qword_27CACE470, &qword_217073AB0);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_4_157();
  sub_216F3DB18();
  OUTLINED_FUNCTION_98();
  sub_216F3C578();
  v22 = v21;
  sub_216F3DBC0();
  sub_216F3DBC0();
  sub_216697664(v2, &qword_27CAC6580, &qword_217073AA0);
  if (v22)
  {
    goto LABEL_18;
  }

LABEL_16:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F42EC8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F8F4();
  a1(0);
  v6 = OUTLINED_FUNCTION_45_0();
  sub_216F40BB0(v6, v7, a4);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F42F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_217007884();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_216F42FC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_217007884();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_216F4308C(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F40BB0(&qword_27CACE558, type metadata accessor for HorizontalLockupCollection, &unk_217073F38);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F43120(uint64_t a1)
{
  v2 = sub_216F40BB0(&qword_27CACE4E8, type metadata accessor for HorizontalLockupCollection, &unk_217073EC0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F43190(uint64_t a1, uint64_t a2)
{
  sub_216F40BB0(&qword_27CACE4E8, type metadata accessor for HorizontalLockupCollection, &unk_217073EC0);

  return sub_217007A34();
}

uint64_t sub_216F43210()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22CB8);
  __swift_project_value_buffer(v0, qword_27CB22CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217018C90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LOCKUP_STYLE_UNSPECIFIED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOCKUP_STYLE_SMALL";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LOCKUP_STYLE_REGULAR";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LOCKUP_STYLE_LARGE";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_217007B24();
}

unint64_t sub_216F434B8()
{
  result = qword_27CACE480;
  if (!qword_27CACE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE480);
  }

  return result;
}

unint64_t sub_216F43510()
{
  result = qword_27CACE488;
  if (!qword_27CACE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE488);
  }

  return result;
}

unint64_t sub_216F43598()
{
  result = qword_27CACE4A0;
  if (!qword_27CACE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE4A0);
  }

  return result;
}

unint64_t sub_216F435F0()
{
  result = qword_27CACE4A8;
  if (!qword_27CACE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE4A8);
  }

  return result;
}

unint64_t sub_216F43648()
{
  result = qword_27CACE4B0;
  if (!qword_27CACE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE4B0);
  }

  return result;
}

unint64_t sub_216F436D0()
{
  result = qword_27CACE4C8;
  if (!qword_27CACE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE4C8);
  }

  return result;
}

uint64_t sub_216F4398C(uint64_t a1)
{
  result = sub_217007884();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HorizontalLockup._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_216F43A48(uint64_t a1)
{
  sub_216F43B5C(319, &qword_27CACE518, type metadata accessor for HorizontalLockup, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_216F43B5C(319, &qword_27CACE520, type metadata accessor for HorizontalLockupCollection.OneOf_Presentation, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_217007884();
      if (v3 <= 0x3F)
      {
        sub_216F43BC0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216F43B5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216F43BC0()
{
  if (!qword_27CACE528)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_27CACE528);
    }
  }
}

uint64_t sub_216F43C10(uint64_t a1)
{
  result = type metadata accessor for Presentation.StackedShelf(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Presentation.Grid(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Presentation.Single(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_216F43CB0(uint64_t a1)
{
  sub_216F43B5C(319, &qword_27CACE550, type metadata accessor for AttributedDateRange, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_216F43B5C(319, qword_280E49D78, type metadata accessor for ContentDescriptor, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_216F43B5C(319, qword_280E48698, type metadata accessor for AnyAction, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_216F43B5C(319, &qword_27CACE350, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_216F43EEC()
{
  result = qword_27CACE568;
  if (!qword_27CACE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE568);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_88_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_21700F7D4();
}

uint64_t OUTLINED_FUNCTION_92_11()
{

  return sub_216F3DB18();
}

uint64_t OUTLINED_FUNCTION_109_9()
{
  type metadata accessor for HorizontalLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_216F43FE0()
{
  v0 = type metadata accessor for ReplayPage(0);
  OUTLINED_FUNCTION_35_0(*(v0 + 24));
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t type metadata accessor for ReplayPage(uint64_t a1)
{
  result = qword_27CACE5E0;
  if (!qword_27CACE5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216F44078(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ReplayPage(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_216F440C0()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_25_58(v1) + 24);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_35_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F44168()
{
  v1 = (v0 + *(type metadata accessor for ReplayPage(0) + 24));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_216F441A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5A8, &qword_217074190);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_6_132();
  v6 = OUTLINED_FUNCTION_20_4(*(v5 + 28));
  sub_2168282D4(v6, v7, &qword_27CACE5A8, &qword_217074190);
  v8 = type metadata accessor for Page.Header(0);
  v9 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v9, v10, v8);
  if (v11)
  {
    sub_217007874();
    v12 = *(v8 + 20);
    if (qword_27CACDF18 != -1)
    {
      OUTLINED_FUNCTION_7_126(&qword_27CACDF18);
    }

    *(a1 + v12) = qword_27CACFBB0;
    v13 = OUTLINED_FUNCTION_16_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_216697664(v1, &qword_27CACE5A8, &qword_217074190);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_267();
    v16 = OUTLINED_FUNCTION_92_0();
    return sub_216F464AC(v16, v17, v18);
  }

  return result;
}

uint64_t sub_216F442C8()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for ReplayPage(v2) + 28);
  sub_216697664(v1 + v3, &qword_27CACE5A8, &qword_217074190);
  OUTLINED_FUNCTION_0_267();
  sub_216F464AC(v0, v1 + v3, v4);
  type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*sub_216F44344(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5A8, &qword_217074190);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Page.Header(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_34();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for ReplayPage(0);
  OUTLINED_FUNCTION_18_1(*(v11 + 28));
  OUTLINED_FUNCTION_31_2(v6, 1, v7);
  if (v12)
  {
    sub_217007874();
    v13 = *(v7 + 20);
    if (qword_27CACDF18 != -1)
    {
      OUTLINED_FUNCTION_7_126(&qword_27CACDF18);
    }

    *&v10[v13] = qword_27CACFBB0;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_216697664(v6, &qword_27CACE5A8, &qword_217074190);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_267();
    sub_216F464AC(v6, v10, v15);
  }

  return sub_216F444DC;
}

uint64_t sub_216F44504()
{
  v0 = OUTLINED_FUNCTION_116();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_6_132();
  v5 = OUTLINED_FUNCTION_20_4(*(v4 + 28));
  sub_2168282D4(v5, v6, &qword_27CACE5A8, &qword_217074190);
  type metadata accessor for Page.Header(0);
  v7 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_92_0();
  sub_216697664(v12, v13, &qword_217074190);
  return v11;
}

uint64_t sub_216F445A8()
{
  v1 = type metadata accessor for ReplayPage(0);
  sub_216697664(v0 + *(v1 + 28), &qword_27CACE5A8, &qword_217074190);
  type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F4460C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5B0, &qword_217074198);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_6_132();
  v6 = OUTLINED_FUNCTION_20_4(*(v5 + 32));
  sub_2168282D4(v6, v7, &qword_27CACE5B0, &qword_217074198);
  v8 = type metadata accessor for PageMetricsFields(0);
  v9 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v9, v10, v8);
  if (v11)
  {
    sub_217007874();
    v12 = a1 + v8[5];
    *v12 = 0;
    *(v12 + 8) = 256;
    OUTLINED_FUNCTION_30_3(v8[6]);
    v13 = a1 + v8[7];
    *v13 = 0;
    *(v13 + 8) = v14;
    OUTLINED_FUNCTION_30_3(v8[8]);
    OUTLINED_FUNCTION_30_3(v8[9]);
    v15 = OUTLINED_FUNCTION_16_1();
    result = OUTLINED_FUNCTION_31_2(v15, v16, v8);
    if (!v11)
    {
      return sub_216697664(v1, &qword_27CACE5B0, &qword_217074198);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_192();
    v17 = OUTLINED_FUNCTION_92_0();
    return sub_216F464AC(v17, v18, v19);
  }

  return result;
}

uint64_t sub_216F44730()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for ReplayPage(v2) + 32);
  sub_216697664(v1 + v3, &qword_27CACE5B0, &qword_217074198);
  OUTLINED_FUNCTION_2_192();
  sub_216F464AC(v0, v1 + v3, v4);
  type metadata accessor for PageMetricsFields(0);
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*sub_216F447AC(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5B0, &qword_217074198);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for PageMetricsFields(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_34();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for ReplayPage(0);
  OUTLINED_FUNCTION_18_1(*(v11 + 32));
  OUTLINED_FUNCTION_31_2(v6, 1, v7);
  if (v12)
  {
    sub_217007874();
    v13 = &v10[v7[5]];
    *v13 = 0;
    *(v13 + 4) = 256;
    v14 = &v10[v7[6]];
    *v14 = 0;
    *(v14 + 1) = 0;
    v15 = &v10[v7[7]];
    *v15 = 0;
    *(v15 + 4) = 256;
    v16 = &v10[v7[8]];
    *v16 = 0;
    *(v16 + 1) = 0;
    v17 = &v10[v7[9]];
    *v17 = 0;
    *(v17 + 1) = 0;
    OUTLINED_FUNCTION_31_2(v6, 1, v7);
    if (!v12)
    {
      sub_216697664(v6, &qword_27CACE5B0, &qword_217074198);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_192();
    sub_216F464AC(v6, v10, v18);
  }

  return sub_216F4494C;
}

void sub_216F44974(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v13 = (*a1)[2];
  v14 = **a1;
  if (a2)
  {
    sub_216F46508((*a1)[4], v10, a5);
    sub_216697664(v14 + v9, a3, a4);
    sub_216F464AC(v10, v14 + v9, a5);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
    sub_216F46564();
  }

  else
  {
    sub_216697664(v14 + v9, a3, a4);
    sub_216F464AC(v11, v14 + v9, a5);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t sub_216F44A80()
{
  v0 = OUTLINED_FUNCTION_116();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_6_132();
  v5 = OUTLINED_FUNCTION_20_4(*(v4 + 32));
  sub_2168282D4(v5, v6, &qword_27CACE5B0, &qword_217074198);
  type metadata accessor for PageMetricsFields(0);
  v7 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_92_0();
  sub_216697664(v12, v13, &qword_217074198);
  return v11;
}

uint64_t sub_216F44B24()
{
  v1 = type metadata accessor for ReplayPage(0);
  sub_216697664(v0 + *(v1 + 32), &qword_27CACE5B0, &qword_217074198);
  type metadata accessor for PageMetricsFields(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F44B88()
{
  v0 = type metadata accessor for ReplayPage(0);
  OUTLINED_FUNCTION_35_0(*(v0 + 36));
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F44BD4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ReplayPage(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_216F44C1C()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_25_58(v1) + 36);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_35_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F44CC4()
{
  v1 = (v0 + *(type metadata accessor for ReplayPage(0) + 36));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_216F44CFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplayPage(0) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216F44D70()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for ReplayPage(v2) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*sub_216F44DE0())()
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ReplayPage(v0);
  return nullsub_1;
}

void sub_216F44E24(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = type metadata accessor for ReplayPage(0);
  sub_217007874();
  OUTLINED_FUNCTION_30_3(*(v1 + 24));
  type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  type metadata accessor for PageMetricsFields(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_30_3(*(v1 + 36));
}

uint64_t sub_216F44EE0()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22CD0);
  __swift_project_value_buffer(v0, qword_27CB22CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015240;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "header";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sections";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "page_metrics";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "resourceMapJSONString";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F45164()
{
  if (qword_27CACDC18 != -1)
  {
    OUTLINED_FUNCTION_8_120(&qword_27CACDC18);
  }

  v0 = sub_217007B44();

  return __swift_project_value_buffer(v0, qword_27CB22CD0);
}

uint64_t sub_216F451B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CACDC18 != -1)
  {
    OUTLINED_FUNCTION_8_120(&qword_27CACDC18);
  }

  v2 = sub_217007B44();
  v3 = __swift_project_value_buffer(v2, qword_27CB22CD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_216F45250(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_217007914();
    if (v2 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v5 = OUTLINED_FUNCTION_7_2();
        sub_216F45310(v5, v6, v7, v8);
        break;
      case 2:
        v21 = OUTLINED_FUNCTION_7_2();
        sub_216F45374(v21, v22, v23, v24);
        break;
      case 3:
        v13 = OUTLINED_FUNCTION_7_2();
        sub_216F45428(v13, v14, v15, v16);
        break;
      case 4:
        v17 = OUTLINED_FUNCTION_7_2();
        sub_216F454C8(v17, v18, v19, v20);
        break;
      case 6:
        v9 = OUTLINED_FUNCTION_7_2();
        sub_216F4557C(v9, v10, v11, v12);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F45374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ReplayPage(0);
  type metadata accessor for Page.Header(0);
  sub_216F468DC(&qword_27CACE610, type metadata accessor for Page.Header, &unk_21707C550);
  return sub_2170079D4();
}

uint64_t sub_216F45428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Section(0);
  sub_216F468DC(&qword_27CAC6570, type metadata accessor for Section, &unk_217079120);
  return sub_2170079C4();
}

uint64_t sub_216F454C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ReplayPage(0);
  type metadata accessor for PageMetricsFields(0);
  sub_216F468DC(&qword_27CACE608, type metadata accessor for PageMetricsFields, &unk_21707DB30);
  return sub_2170079D4();
}

uint64_t sub_216F455E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_216F45718(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = OUTLINED_FUNCTION_4_0();
    sub_216F45790(v6, v7, v8, v9);
    if (*(*v3 + 16))
    {
      type metadata accessor for Section(0);
      sub_216F468DC(&qword_27CAC6570, type metadata accessor for Section, &unk_217079120);
      sub_217007AF4();
    }

    v10 = OUTLINED_FUNCTION_4_0();
    sub_216F45964(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_4_0();
    sub_216F45B38(v14, v15, v16, v17);
    type metadata accessor for ReplayPage(0);
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F45718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ReplayPage(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F45790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5A8, &qword_217074190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Page.Header(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplayPage(0);
  sub_2168282D4(a1 + *(v11 + 28), v7, &qword_27CACE5A8, &qword_217074190);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE5A8, &qword_217074190);
  }

  sub_216F464AC(v7, v10, type metadata accessor for Page.Header);
  sub_216F468DC(&qword_27CACE610, type metadata accessor for Page.Header, &unk_21707C550);
  sub_217007B04();
  return sub_216F46564();
}

uint64_t sub_216F45964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5B0, &qword_217074198);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for PageMetricsFields(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplayPage(0);
  sub_2168282D4(a1 + *(v11 + 32), v7, &qword_27CACE5B0, &qword_217074198);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE5B0, &qword_217074198);
  }

  sub_216F464AC(v7, v10, type metadata accessor for PageMetricsFields);
  sub_216F468DC(&qword_27CACE608, type metadata accessor for PageMetricsFields, &unk_21707DB30);
  sub_217007B04();
  return sub_216F46564();
}

uint64_t sub_216F45B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ReplayPage(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F45BB0(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for PageMetricsFields(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5B0, &qword_217074198);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v70 = &v67 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5B8, &qword_2170741A0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v67 - v11;
  v13 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5A8, &qword_217074190);
  OUTLINED_FUNCTION_36(v17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v67 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE5C0, &qword_2170741A8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v67 - v23;
  v25 = type metadata accessor for ReplayPage(0);
  v26 = v25[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_45;
    }

    v31 = *v27 == *v29 && v28 == v30;
    if (!v31 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v30)
  {
    goto LABEL_45;
  }

  v67 = v6;
  v68 = v12;
  v32 = a2;
  v33 = v25[7];
  v34 = a1;
  v35 = *(v21 + 48);
  v69 = v34;
  sub_2168282D4(v34 + v33, v24, &qword_27CACE5A8, &qword_217074190);
  sub_2168282D4(v32 + v33, &v24[v35], &qword_27CACE5A8, &qword_217074190);
  OUTLINED_FUNCTION_31_2(v24, 1, v13);
  if (v31)
  {
    OUTLINED_FUNCTION_31_2(&v24[v35], 1, v13);
    if (v31)
    {
      sub_216697664(v24, &qword_27CACE5A8, &qword_217074190);
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  sub_2168282D4(v24, v20, &qword_27CACE5A8, &qword_217074190);
  OUTLINED_FUNCTION_31_2(&v24[v35], 1, v13);
  if (v36)
  {
    sub_216F46564();
LABEL_18:
    v37 = &qword_27CACE5C0;
    v38 = &qword_2170741A8;
LABEL_19:
    v39 = v24;
LABEL_20:
    sub_216697664(v39, v37, v38);
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_0_267();
  sub_216F464AC(&v24[v35], v16, v40);
  if (*&v20[*(v13 + 20)] != *&v16[*(v13 + 20)])
  {

    sub_216FCDA78();
    v42 = v41;

    if ((v42 & 1) == 0)
    {
      sub_216F46564();
      OUTLINED_FUNCTION_8();
      sub_216F46564();
      v37 = &qword_27CACE5A8;
      v38 = &qword_217074190;
      goto LABEL_19;
    }
  }

  sub_217007884();
  OUTLINED_FUNCTION_5_149();
  sub_216F468DC(v43, v44, MEMORY[0x277D216D0]);
  v45 = sub_21700E494();
  sub_216F46564();
  OUTLINED_FUNCTION_116();
  sub_216F46564();
  sub_216697664(v24, &qword_27CACE5A8, &qword_217074190);
  if ((v45 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_24:
  v46 = v69;
  sub_216F27140();
  if ((v47 & 1) == 0)
  {
    goto LABEL_45;
  }

  v48 = v25[8];
  v49 = *(v71 + 48);
  v50 = v68;
  sub_2168282D4(v46 + v48, v68, &qword_27CACE5B0, &qword_217074198);
  sub_2168282D4(v32 + v48, v50 + v49, &qword_27CACE5B0, &qword_217074198);
  v51 = v72;
  OUTLINED_FUNCTION_31_2(v50, 1, v72);
  if (v31)
  {
    OUTLINED_FUNCTION_31_2(v50 + v49, 1, v51);
    if (v31)
    {
      sub_216697664(v50, &qword_27CACE5B0, &qword_217074198);
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v52 = v70;
  sub_2168282D4(v50, v70, &qword_27CACE5B0, &qword_217074198);
  OUTLINED_FUNCTION_31_2(v50 + v49, 1, v51);
  if (v53)
  {
    sub_216F46564();
LABEL_33:
    v37 = &qword_27CACE5B8;
    v38 = &qword_2170741A0;
    v39 = v50;
    goto LABEL_20;
  }

  v54 = v50 + v49;
  v55 = v67;
  sub_216F464AC(v54, v67, type metadata accessor for PageMetricsFields);
  v56 = sub_216FF24FC(v52, v55);
  sub_216F46564();
  OUTLINED_FUNCTION_92_0();
  sub_216F46564();
  sub_216697664(v50, &qword_27CACE5B0, &qword_217074198);
  if ((v56 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_36:
  v57 = v25[9];
  v58 = (v46 + v57);
  v59 = *(v46 + v57 + 8);
  v60 = (v32 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (v61)
    {
      v62 = *v58 == *v60 && v59 == v61;
      if (v62 || (sub_21700F7D4() & 1) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    v65 = 0;
    return v65 & 1;
  }

  if (v61)
  {
    goto LABEL_45;
  }

LABEL_43:
  sub_217007884();
  OUTLINED_FUNCTION_5_149();
  sub_216F468DC(v63, v64, MEMORY[0x277D216D0]);
  v65 = sub_21700E494();
  return v65 & 1;
}

uint64_t sub_216F46214()
{
  sub_21700F8F4();
  type metadata accessor for ReplayPage(0);
  sub_216F468DC(&qword_27CACE5C8, type metadata accessor for ReplayPage, &unk_2170742B0);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F462D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F468DC(&qword_27CACE600, type metadata accessor for ReplayPage, &unk_217074228);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F4634C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_216F45164();
  v3 = sub_217007B44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_216F463BC(uint64_t a1)
{
  v2 = sub_216F468DC(&qword_27CAB6C60, type metadata accessor for ReplayPage, &unk_2170741B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F4642C(uint64_t a1, uint64_t a2)
{
  sub_216F468DC(&qword_27CAB6C60, type metadata accessor for ReplayPage, &unk_2170741B0);

  return sub_217007A34();
}

uint64_t sub_216F464AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216F46508(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216F46564()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216F46700(uint64_t a1)
{
  sub_216F46878(319, &qword_27CACE5F0, type metadata accessor for Section, MEMORY[0x277D83940]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_217007884();
    if (v4 <= 0x3F)
    {
      sub_216688154();
      v2 = v5;
      if (v6 <= 0x3F)
      {
        sub_216F46878(319, qword_280E48900, type metadata accessor for Page.Header, MEMORY[0x277D83D88]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_216F46878(319, &qword_27CACE5F8, type metadata accessor for PageMetricsFields, MEMORY[0x277D83D88]);
        if (v9 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_216F46878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_216F468DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216F46924(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_216F46970@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplayYearGradient(0) + 24);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216F46A04()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for ReplayYearGradient(v2) + 24);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*sub_216F46A74())()
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ReplayYearGradient(v0);
  return nullsub_1;
}

uint64_t sub_216F46AB8@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  type metadata accessor for ReplayYearGradient(0);
  return sub_217007874();
}

uint64_t sub_216F46AF8(double a1)
{
  type metadata accessor for ReplayYearListItem(0);
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F46B68()
{
  v3 = OUTLINED_FUNCTION_37_0();
  v4 = (v1 + *(type metadata accessor for ReplayYearListItem(v3) + 20));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t sub_216F46BA8()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for ReplayYearListItem(v2);
  v4 = OUTLINED_FUNCTION_59_1(*(v3 + 20));
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v0[3] = v4;
  *v0 = v6;
  v0[1] = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F46C50()
{
  v1 = (v0 + *(type metadata accessor for ReplayYearListItem(0) + 20));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_216F46CB8()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for ReplayYearListItem(v2);
  v4 = OUTLINED_FUNCTION_59_1(*(v3 + 24));
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v0[3] = v4;
  *v0 = v6;
  v0[1] = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F46D78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_17_0();
  v4 = type metadata accessor for ReplayYearListItem(v3);
  v5 = OUTLINED_FUNCTION_20_4(*(v4 + 28));
  sub_2168282D4(v5, v6, &qword_27CABFF98, &unk_217049930);
  v7 = type metadata accessor for AnyAction(0);
  v8 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v8, v9, v7);
  if (v10)
  {
    type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    sub_217007874();
    v15 = OUTLINED_FUNCTION_16_1();
    result = OUTLINED_FUNCTION_31_2(v15, v16, v7);
    if (!v10)
    {
      return sub_216697664(v0, &qword_27CABFF98, &unk_217049930);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_183();
    v17 = OUTLINED_FUNCTION_92_0();
    return sub_216F472A0(v17, v18);
  }

  return result;
}

uint64_t sub_216F46E80()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for ReplayYearListItem(v2) + 28);
  sub_216697664(v1 + v3, &qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_3_183();
  sub_216F472A0(v0, v1 + v3);
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*sub_216F46EFC(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for ReplayYearListItem(0) + 28);
  *(v3 + 10) = v10;
  v11 = OUTLINED_FUNCTION_20_4(v10);
  sub_2168282D4(v11, v12, &qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_19_4(v6);
  if (v13)
  {
    type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    sub_217007874();
    OUTLINED_FUNCTION_19_4(v6);
    if (!v13)
    {
      sub_216697664(v6, &qword_27CABFF98, &unk_217049930);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_183();
    sub_216F472A0(v6, v9);
  }

  return sub_216F47070;
}

uint64_t sub_216F47098()
{
  v0 = OUTLINED_FUNCTION_116();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v5 = type metadata accessor for ReplayYearListItem(v4);
  v6 = OUTLINED_FUNCTION_20_4(*(v5 + 28));
  sub_2168282D4(v6, v7, &qword_27CABFF98, &unk_217049930);
  type metadata accessor for AnyAction(0);
  v8 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_92_0();
  sub_216697664(v13, v14, &unk_217049930);
  return v12;
}

uint64_t sub_216F47140()
{
  v1 = type metadata accessor for ReplayYearListItem(0);
  sub_216697664(v0 + *(v1 + 28), &qword_27CABFF98, &unk_217049930);
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F471A4@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE618, &qword_217074390);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_17_0();
  v6 = type metadata accessor for ReplayYearListItem(v5);
  v7 = OUTLINED_FUNCTION_20_4(*(v6 + 32));
  sub_2168282D4(v7, v8, &qword_27CACE618, &qword_217074390);
  v9 = type metadata accessor for ReplayYearGradient(0);
  v10 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v10, v11, v9);
  if (v12)
  {
    v13 = MEMORY[0x277D84F90];
    *a1 = MEMORY[0x277D84F90];
    a1[1] = v13;
    sub_217007874();
    v14 = OUTLINED_FUNCTION_16_1();
    result = OUTLINED_FUNCTION_31_2(v14, v15, v9);
    if (!v12)
    {
      return sub_216697664(v1, &qword_27CACE618, &qword_217074390);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_229();
    v16 = OUTLINED_FUNCTION_92_0();
    return sub_216F472A0(v16, v17);
  }

  return result;
}

uint64_t sub_216F472A0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216F472F8()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for ReplayYearListItem(v2) + 32);
  sub_216697664(v1 + v3, &qword_27CACE618, &qword_217074390);
  OUTLINED_FUNCTION_1_229();
  sub_216F472A0(v0, v1 + v3);
  type metadata accessor for ReplayYearGradient(0);
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*sub_216F47374(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE618, &qword_217074390);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for ReplayYearGradient(0);
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for ReplayYearListItem(0) + 32);
  *(v3 + 10) = v10;
  v11 = OUTLINED_FUNCTION_20_4(v10);
  sub_2168282D4(v11, v12, &qword_27CACE618, &qword_217074390);
  OUTLINED_FUNCTION_19_4(v6);
  if (v13)
  {
    v14 = MEMORY[0x277D84F90];
    *v9 = MEMORY[0x277D84F90];
    v9[1] = v14;
    sub_217007874();
    OUTLINED_FUNCTION_19_4(v6);
    if (!v13)
    {
      sub_216697664(v6, &qword_27CACE618, &qword_217074390);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_229();
    sub_216F472A0(v6, v9);
  }

  return sub_216F474DC;
}

void sub_216F47504(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(*a1 + 10);
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  v11 = (*a1)[1];
  v12 = (*a1)[2];
  v13 = **a1;
  if (a2)
  {
    sub_216F47610((*a1)[4], v9);
    sub_216697664(v13 + v8, a3, a4);
    sub_216F472A0(v9, v13 + v8);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
    sub_216F47668();
  }

  else
  {
    sub_216697664(v13 + v8, a3, a4);
    sub_216F472A0(v10, v13 + v8);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

uint64_t sub_216F47610(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216F47668()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216F476BC()
{
  v0 = OUTLINED_FUNCTION_116();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v5 = type metadata accessor for ReplayYearListItem(v4);
  v6 = OUTLINED_FUNCTION_20_4(*(v5 + 32));
  sub_2168282D4(v6, v7, &qword_27CACE618, &qword_217074390);
  type metadata accessor for ReplayYearGradient(0);
  v8 = OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_31_2(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_92_0();
  sub_216697664(v13, v14, &qword_217074390);
  return v12;
}

uint64_t sub_216F47764()
{
  v1 = type metadata accessor for ReplayYearListItem(0);
  sub_216697664(v0 + *(v1 + 32), &qword_27CACE618, &qword_217074390);
  type metadata accessor for ReplayYearGradient(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F477C8()
{
  OUTLINED_FUNCTION_31_0();
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_216F47824@<X0>(uint64_t a2@<X8>)
{
  sub_217007874();
  v3 = type metadata accessor for ReplayYearListItem(0);
  v4 = (a2 + *(v3 + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + *(v3 + 24));
  *v5 = 0;
  v5[1] = 0;
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  type metadata accessor for ReplayYearGradient(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_216F478D0(void (*a1)(void))
{
  a1(0);
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F47960()
{
  v3 = OUTLINED_FUNCTION_37_0();
  v5 = (v1 + *(v4(v3) + 24));

  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t sub_216F479A4()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_36_47(v1);
  v3 = type metadata accessor for ReplayYearList(v2);
  v4 = OUTLINED_FUNCTION_59_1(*(v3 + 24));
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v0[3] = v4;
  *v0 = v6;
  v0[1] = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_216F47A64(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_216F47AA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplayYearList(0) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216F47B18()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for ReplayYearList(v2) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*sub_216F47B88())()
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ReplayYearList(v0);
  return nullsub_1;
}

uint64_t sub_216F47BCC@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for ReplayYearList(0);
  result = sub_217007874();
  v4 = (a1 + *(v2 + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_216F47C34()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22CE8);
  __swift_project_value_buffer(v0, qword_27CB22CE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217013D90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dark_mode_colors";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "light_mode_colors";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F47E4C()
{
  OUTLINED_FUNCTION_21_3();
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_47_2();
      sub_217007984();
    }
  }

  return result;
}

uint64_t sub_216F47EAC()
{
  OUTLINED_FUNCTION_29_57();
  if (!*(*v0 + 16) || (result = OUTLINED_FUNCTION_42_38(*v0, 1), !v1))
  {
    v4 = *(v2 + 8);
    if (!*(v4 + 16) || (result = OUTLINED_FUNCTION_42_38(v4, 2), !v1))
    {
      type metadata accessor for ReplayYearGradient(0);
      OUTLINED_FUNCTION_47_2();
      return sub_217007864();
    }
  }

  return result;
}

uint64_t sub_216F47F3C(uint64_t a1)
{
  OUTLINED_FUNCTION_41_38(a1);
  sub_216E20CEC();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  sub_216E20CEC();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ReplayYearGradient(0);
  sub_217007884();
  OUTLINED_FUNCTION_0_268();
  v5 = sub_216F49C70(v3, v4, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_67_2(v5) & 1;
}

uint64_t sub_216F48060(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F49C70(&qword_27CACE6C8, type metadata accessor for ReplayYearGradient, &unk_217074420);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F480F4(uint64_t a1)
{
  v2 = sub_216F49C70(&qword_27CABFF78, type metadata accessor for ReplayYearGradient, &unk_2170743A8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F48164(uint64_t a1, uint64_t a2)
{
  sub_216F49C70(&qword_27CABFF78, type metadata accessor for ReplayYearGradient, &unk_2170743A8);

  return sub_217007A34();
}

uint64_t sub_216F481FC()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22D00);
  __swift_project_value_buffer(v0, qword_27CB22D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217018C90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "action";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "year_gradient";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F48494()
{
  OUTLINED_FUNCTION_21_3();
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_7_2();
        sub_216F48548(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_7_2();
        sub_216F49784();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_7_2();
        sub_216F485AC(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_7_2();
        sub_216F48660(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F485AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ReplayYearListItem(0);
  type metadata accessor for AnyAction(0);
  sub_216F49C70(&qword_27CACE3E8, type metadata accessor for AnyAction, &unk_2170779D0);
  return sub_2170079D4();
}

uint64_t sub_216F48660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ReplayYearListItem(0);
  type metadata accessor for ReplayYearGradient(0);
  sub_216F49C70(&qword_27CABFF78, type metadata accessor for ReplayYearGradient, &unk_2170743A8);
  return sub_2170079D4();
}

uint64_t sub_216F48714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_22_2();
  result = sub_216F48794(v4, v5, v6, v7);
  if (!v3)
  {
    OUTLINED_FUNCTION_22_2();
    sub_216F498D0();
    v9 = OUTLINED_FUNCTION_22_2();
    sub_216F4880C(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_22_2();
    sub_216F489E0(v13, v14, v15, v16);
    OUTLINED_FUNCTION_109();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F48794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ReplayYearListItem(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F4880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AnyAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplayYearListItem(0);
  sub_2168282D4(a1 + *(v11 + 28), v7, &qword_27CABFF98, &unk_217049930);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CABFF98, &unk_217049930);
  }

  sub_216F472A0(v7, v10);
  sub_216F49C70(&qword_27CACE3E8, type metadata accessor for AnyAction, &unk_2170779D0);
  sub_217007B04();
  return sub_216F47668();
}

uint64_t sub_216F489E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE618, &qword_217074390);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ReplayYearGradient(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplayYearListItem(0);
  sub_2168282D4(a1 + *(v11 + 32), v7, &qword_27CACE618, &qword_217074390);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE618, &qword_217074390);
  }

  sub_216F472A0(v7, v10);
  sub_216F49C70(&qword_27CABFF78, type metadata accessor for ReplayYearGradient, &unk_2170743A8);
  sub_217007B04();
  return sub_216F47668();
}

uint64_t sub_216F48BB4()
{
  v3 = OUTLINED_FUNCTION_37_0();
  v63 = type metadata accessor for ReplayYearGradient(v3);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE618, &qword_217074390);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v62 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE628, &unk_217074398);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_17_0();
  type metadata accessor for AnyAction(v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_36(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE090, &qword_217073A30);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  v23 = type metadata accessor for ReplayYearListItem(0);
  OUTLINED_FUNCTION_6_9();
  if (v26)
  {
    if (!v24)
    {
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_5_78(v25);
    v29 = v29 && v27 == v28;
    if (!v29 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v24)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_6_9();
  if (!v32)
  {
    if (!v30)
    {
      goto LABEL_19;
    }

LABEL_45:
    v50 = 0;
    return v50 & 1;
  }

  if (!v30)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_5_78(v31);
  v35 = v29 && v33 == v34;
  if (!v35 && (sub_21700F7D4() & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_19:
  v58 = v2;
  v60 = v0;
  v36 = *(v23 + 28);
  v37 = v1;
  v38 = *(v19 + 48);
  v59 = v37;
  sub_2168282D4(v37 + v36, v22, &qword_27CABFF98, &unk_217049930);
  sub_2168282D4(v60 + v36, &v22[v38], &qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_19_4(v22);
  if (v29)
  {
    OUTLINED_FUNCTION_19_4(&v22[v38]);
    if (v29)
    {
      sub_216697664(v22, &qword_27CABFF98, &unk_217049930);
      goto LABEL_29;
    }

LABEL_27:
    v40 = &qword_27CACE090;
    v41 = &qword_217073A30;
    v42 = v22;
LABEL_44:
    sub_216697664(v42, v40, v41);
    goto LABEL_45;
  }

  sub_2168282D4(v22, v18, &qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_19_4(&v22[v38]);
  if (v39)
  {
    sub_216F47668();
    goto LABEL_27;
  }

  sub_216F472A0(&v22[v38], v14);
  v43 = sub_216F82038();
  sub_216F47668();
  sub_216F47668();
  sub_216697664(v22, &qword_27CABFF98, &unk_217049930);
  if ((v43 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_29:
  v44 = *(v23 + 32);
  v45 = *(v9 + 48);
  v46 = v58;
  sub_2168282D4(v59 + v44, v58, &qword_27CACE618, &qword_217074390);
  sub_2168282D4(v60 + v44, v46 + v45, &qword_27CACE618, &qword_217074390);
  v47 = v63;
  OUTLINED_FUNCTION_31_2(v46, 1, v63);
  if (v29)
  {
    OUTLINED_FUNCTION_31_2(v46 + v45, 1, v47);
    if (v29)
    {
      sub_216697664(v46, &qword_27CACE618, &qword_217074390);
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  sub_2168282D4(v46, v62, &qword_27CACE618, &qword_217074390);
  OUTLINED_FUNCTION_31_2(v46 + v45, 1, v47);
  if (v51)
  {
    sub_216F47668();
LABEL_38:
    v40 = &qword_27CACE628;
    v41 = &unk_217074398;
    v42 = v46;
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1_229();
  sub_216F472A0(v46 + v45, v61);
  sub_216E20CEC();
  if ((v52 & 1) == 0 || (sub_216E20CEC(), (v53 & 1) == 0))
  {
    sub_216F47668();
    sub_216F47668();
    v40 = &qword_27CACE618;
    v41 = &qword_217074390;
    v42 = v58;
    goto LABEL_44;
  }

  sub_217007884();
  OUTLINED_FUNCTION_0_268();
  sub_216F49C70(v54, v55, MEMORY[0x277D216D0]);
  v56 = sub_21700E494();
  sub_216F47668();
  sub_216F47668();
  sub_216697664(v58, &qword_27CACE618, &qword_217074390);
  if ((v56 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_34:
  sub_217007884();
  OUTLINED_FUNCTION_0_268();
  sub_216F49C70(v48, v49, MEMORY[0x277D216D0]);
  v50 = sub_21700E494();
  return v50 & 1;
}

uint64_t sub_216F49244(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F49C70(&qword_27CACE6C0, type metadata accessor for ReplayYearListItem, &unk_217074588);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F492D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  OUTLINED_FUNCTION_110();
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F4933C(uint64_t a1)
{
  v2 = sub_216F49C70(&qword_27CABFF80, type metadata accessor for ReplayYearListItem, &unk_217074510);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F493AC(uint64_t a1, uint64_t a2)
{
  sub_216F49C70(&qword_27CABFF80, type metadata accessor for ReplayYearListItem, &unk_217074510);

  return sub_217007A34();
}

uint64_t sub_216F4945C()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22D18);
  __swift_project_value_buffer(v0, qword_27CB22D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217013D90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "years";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "selected_year_id";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F4967C()
{
  OUTLINED_FUNCTION_21_3();
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_8_121();
      OUTLINED_FUNCTION_7_2();
      sub_216F49784();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_7_2();
      sub_216F496E4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_216F496E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ReplayYearListItem(0);
  sub_216F49C70(&qword_27CABFF80, type metadata accessor for ReplayYearListItem, &unk_217074510);
  return sub_2170079C4();
}

uint64_t sub_216F49784()
{
  v0 = OUTLINED_FUNCTION_10_0();
  v1(v0);
  OUTLINED_FUNCTION_47_2();
  return sub_2170079A4();
}

uint64_t sub_216F497D4()
{
  OUTLINED_FUNCTION_29_57();
  if (!*(*v1 + 16) || (type metadata accessor for ReplayYearListItem(0), sub_216F49C70(&qword_27CABFF80, type metadata accessor for ReplayYearListItem, &unk_217074510), result = sub_217007AF4(), !v0))
  {
    OUTLINED_FUNCTION_8_121();
    result = sub_216F498D0();
    if (!v0)
    {
      type metadata accessor for ReplayYearList(0);
      OUTLINED_FUNCTION_47_2();
      return sub_217007864();
    }
  }

  return result;
}

uint64_t sub_216F498D0()
{
  v1 = OUTLINED_FUNCTION_10_0();
  result = v2(v1);
  if (*(v0 + *(result + 24) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F49A30(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_21700F8F4();
  a1(0);
  sub_216F49C70(a2, a3, a4);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F49AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F49C70(&qword_27CACE6B8, type metadata accessor for ReplayYearList, &unk_2170746F0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F49B80(uint64_t a1)
{
  v2 = sub_216F49C70(&qword_27CACE668, type metadata accessor for ReplayYearList, &unk_217074678);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F49BF0(uint64_t a1, uint64_t a2)
{
  sub_216F49C70(&qword_27CACE668, type metadata accessor for ReplayYearList, &unk_217074678);

  return sub_217007A34();
}

uint64_t sub_216F49C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_216F4A040(uint64_t a1)
{
  sub_216F4A238(319, &qword_280E29E40, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_217007884();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216F4A108(uint64_t a1)
{
  sub_217007884();
  if (v1 <= 0x3F)
  {
    sub_216F4A238(319, &qword_280E2A070, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_216F4A28C(319, qword_280E48698, type metadata accessor for AnyAction, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_216F4A28C(319, &qword_27CACE698, type metadata accessor for ReplayYearGradient, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216F4A238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_216F4A28C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216F4A318(uint64_t a1)
{
  sub_216F4A28C(319, &qword_27CACE6B0, type metadata accessor for ReplayYearListItem, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_217007884();
    if (v2 <= 0x3F)
    {
      sub_216F4A238(319, &qword_280E2A070, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216F4A400()
{
  OUTLINED_FUNCTION_1_230();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F4A480()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_25_59();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_133();
    v6 = OUTLINED_FUNCTION_18();
    v7 = sub_216F4C2F8(v6);
    OUTLINED_FUNCTION_97_0(v7);
  }

  OUTLINED_FUNCTION_147(v5 + 16, v9);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
}

void (*sub_216F4A510())(void **a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_1_230();
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return sub_216F4A5A4;
}

BOOL sub_216F4A5BC()
{
  OUTLINED_FUNCTION_1_230();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v2 + 24) != 0;
}

uint64_t sub_216F4A604()
{
  v1 = *(type metadata accessor for CircleLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_133();
    v3 = sub_216F4C2F8(v3);
    *(v0 + v1) = v3;
  }

  OUTLINED_FUNCTION_147(v3 + 16, v5);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
}

uint64_t sub_216F4A680@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_115();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_1_230();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_77_0();
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_7_6();
  if (v7)
  {
    v8 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
    sub_217007874();
    result = OUTLINED_FUNCTION_7_6();
    if (!v7)
    {
      return sub_216697664(v1, &qword_27CABFF98, &unk_217049930);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_96();
    return sub_216F4C7E4();
  }

  return result;
}

uint64_t sub_216F4A790(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  if ((OUTLINED_FUNCTION_25_59() & 1) == 0)
  {
    OUTLINED_FUNCTION_6_133();
    v3 = OUTLINED_FUNCTION_18();
    v4 = sub_216F4C2F8(v3);
    OUTLINED_FUNCTION_97_0(v4);
  }

  OUTLINED_FUNCTION_11_96();
  sub_216F4C7E4();
  v5 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_57_1(v5);
  OUTLINED_FUNCTION_56_0();
  sub_216F2EB2C();
  return swift_endAccess();
}

void sub_216F4A878()
{
  OUTLINED_FUNCTION_49();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  type metadata accessor for AnyAction(v8);
  OUTLINED_FUNCTION_34();
  v10 = *(v9 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_1_230();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    v13 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
    sub_217007874();
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v0, &qword_27CABFF98, &unk_217049930);
    }
  }

  else
  {
    sub_216F4C7E4();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F4AA80()
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_1_230();
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__headline;
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_43_36();
}

uint64_t sub_216F4AB50()
{
  OUTLINED_FUNCTION_1_230();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F4ABC8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  OUTLINED_FUNCTION_76();
  v8 = *(type metadata accessor for CircleLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_133();
    v11 = OUTLINED_FUNCTION_18();
    v10 = sub_216F4C2F8(v11);
    *(v7 + v8) = v10;
  }

  v12 = (v10 + *a3);
  OUTLINED_FUNCTION_147(v12, v14);
  *v12 = v5;
  v12[1] = v3;
}

uint64_t sub_216F4AC58()
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_1_230();
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__title;
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_43_36();
}

BOOL sub_216F4AD10(void *a1)
{
  OUTLINED_FUNCTION_1_230();
  v4 = *(v1 + v3) + *a1;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v4 + 8) != 0;
}

uint64_t sub_216F4AD70(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for CircleLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_133();
    v7 = OUTLINED_FUNCTION_18();
    v6 = sub_216F4C2F8(v7);
    *(v3 + v4) = v6;
  }

  v8 = (v6 + *a1);
  OUTLINED_FUNCTION_147(v8, v10);
  *v8 = 0;
  v8[1] = 0;
}

uint64_t sub_216F4AE0C()
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_1_230();
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__subtitle;
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_43_36();
}

uint64_t sub_216F4AED0@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_115();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_1_230();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_77_0();
  v7 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_6();
  if (v8)
  {
    sub_217007874();
    v9 = type metadata accessor for ContentDescriptor.ContentKind(0);
    OUTLINED_FUNCTION_15_74(v9);
    v10 = type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_15_74(v10);
    v11 = (a1 + *(v7 + 28));
    *v11 = 0;
    v11[1] = 0;
    result = OUTLINED_FUNCTION_7_6();
    if (!v8)
    {
      return sub_216697664(v1, &qword_27CACE120, &unk_217074850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_88();
    return sub_216F4C7E4();
  }

  return result;
}

uint64_t sub_216F4AFEC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  if ((OUTLINED_FUNCTION_25_59() & 1) == 0)
  {
    OUTLINED_FUNCTION_6_133();
    v3 = OUTLINED_FUNCTION_18();
    v4 = sub_216F4C2F8(v3);
    OUTLINED_FUNCTION_97_0(v4);
  }

  OUTLINED_FUNCTION_13_88();
  sub_216F4C7E4();
  v5 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_57_1(v5);
  OUTLINED_FUNCTION_56_0();
  sub_216F2EB2C();
  return swift_endAccess();
}

void sub_216F4B0D4()
{
  OUTLINED_FUNCTION_49();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  v9 = type metadata accessor for ContentDescriptor(v8);
  OUTLINED_FUNCTION_34();
  v11 = *(v10 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_1_230();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_6_3();
  if (v13)
  {
    sub_217007874();
    v14 = type metadata accessor for ContentDescriptor.ContentKind(0);
    OUTLINED_FUNCTION_60(v14);
    v15 = type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_60(v15);
    v16 = &v12[*(v9 + 28)];
    *v16 = 0;
    *(v16 + 1) = 0;
    OUTLINED_FUNCTION_6_3();
    if (!v13)
    {
      sub_216697664(v0, &qword_27CACE120, &unk_217074850);
    }
  }

  else
  {
    sub_216F4C7E4();
  }

  OUTLINED_FUNCTION_26();
}

BOOL sub_216F4B2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_76();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  OUTLINED_FUNCTION_1_230();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_2166A6EA4();
  v13 = a4(0);
  v14 = __swift_getEnumTagSinglePayload(v12, 1, v13) != 1;
  sub_216697664(v12, v5, v4);
  return v14;
}

uint64_t sub_216F4B3AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  OUTLINED_FUNCTION_76();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = *(type metadata accessor for CircleLockup(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_6_133();
    v13 = OUTLINED_FUNCTION_18();
    *(v4 + v12) = sub_216F4C2F8(v13);
  }

  v14 = a3(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
  swift_beginAccess();
  sub_216F2EB2C();
  return swift_endAccess();
}

uint64_t sub_216F4B4B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_115();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_1_230();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_77_0();
  v7 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_7_6();
  if (v8)
  {
    sub_217007874();
    v9 = type metadata accessor for Artwork.ArtworkDictionary(0);
    OUTLINED_FUNCTION_15_74(v9);
    v10 = (a1 + *(v7 + 24));
    *v10 = 0;
    v10[1] = 0;
    result = OUTLINED_FUNCTION_7_6();
    if (!v8)
    {
      return sub_216697664(v1, &qword_27CACE100, &qword_21707B640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_110();
    return sub_216F4C7E4();
  }

  return result;
}

uint64_t sub_216F4B5BC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100, &qword_21707B640);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  if ((OUTLINED_FUNCTION_25_59() & 1) == 0)
  {
    OUTLINED_FUNCTION_6_133();
    v3 = OUTLINED_FUNCTION_18();
    v4 = sub_216F4C2F8(v3);
    OUTLINED_FUNCTION_97_0(v4);
  }

  OUTLINED_FUNCTION_10_110();
  sub_216F4C7E4();
  v5 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_57_1(v5);
  OUTLINED_FUNCTION_56_0();
  sub_216F2EB2C();
  return swift_endAccess();
}

void sub_216F4B6A4()
{
  OUTLINED_FUNCTION_49();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47_0(v2);
  v3 = OUTLINED_FUNCTION_119();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_36(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_46(v7);
  v9 = type metadata accessor for Artwork(v8);
  OUTLINED_FUNCTION_34();
  v11 = *(v10 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_1_230();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_6_3();
  if (v13)
  {
    sub_217007874();
    v14 = type metadata accessor for Artwork.ArtworkDictionary(0);
    OUTLINED_FUNCTION_60(v14);
    v15 = &v12[*(v9 + 24)];
    *v15 = 0;
    *(v15 + 1) = 0;
    OUTLINED_FUNCTION_6_3();
    if (!v13)
    {
      sub_216697664(v0, &qword_27CACE100, &qword_21707B640);
    }
  }

  else
  {
    sub_216F4C7E4();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F4B830(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_109();
    sub_216F4C83C();
    a3(v6);
    sub_216F4C894();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t sub_216F4B954()
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_1_230();
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__accessibilityLabel;
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return OUTLINED_FUNCTION_43_36();
}

void sub_216F4BA00(void **a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  if (a2)
  {
    sub_21700DF14();
    v5 = OUTLINED_FUNCTION_109();
    a3(v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_109();
    a3(v6);
  }

  free(v4);
}

uint64_t sub_216F4BA9C@<X0>(uint64_t a2@<X8>)
{
  sub_217007874();
  v3 = *(type metadata accessor for CircleLockup(0) + 20);
  if (qword_27CACDC40 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27CACE6D0;
}

uint64_t sub_216F4BB18()
{
  OUTLINED_FUNCTION_24_51();
  OUTLINED_FUNCTION_41_14();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216F4BB40(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  result = OUTLINED_FUNCTION_24_51();
  *v5 = a1;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

uint64_t (*sub_216F4BB7C(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *(a1 + 12) = *(type metadata accessor for CircleLockupCollection(0) + 24);
  OUTLINED_FUNCTION_41_14();
  if (!v6)
  {
    v4 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = (v3 | v5) & 1;
  return sub_216F226B0;
}

uint64_t sub_216F4BC0C()
{
  result = OUTLINED_FUNCTION_24_51();
  *v1 = 0;
  *(v1 + 8) = 256;
  return result;
}

uint64_t sub_216F4BC30@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CircleLockupCollection(0) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216F4BCA4()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for CircleLockupCollection(v2) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*sub_216F4BD14())()
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for CircleLockupCollection(v0);
  return nullsub_1;
}

uint64_t sub_216F4BD8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_216EA9F08();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_216F4BDE4@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for CircleLockupCollection(0);
  result = sub_217007874();
  v4 = a1 + *(v2 + 24);
  *v4 = 0;
  *(v4 + 4) = 256;
  return result;
}

uint64_t sub_216F4BE68()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22D30);
  __swift_project_value_buffer(v0, qword_27CB22D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21705BDD0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_217007B14();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "segue";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "headline";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "title";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "subtitle";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "content_descriptor";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "artwork";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "accessibility_label";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  return sub_217007B24();
}

uint64_t sub_216F4C1F8()
{
  OUTLINED_FUNCTION_6_133();
  result = sub_216F4C228();
  qword_27CACE6D0 = result;
  return result;
}

uint64_t sub_216F4C228()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__segue;
  v2 = type metadata accessor for AnyAction(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__headline);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__title);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__subtitle);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__contentDescriptor;
  v7 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__artwork;
  v9 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  v10 = (v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__accessibilityLabel);
  *v10 = 0;
  v10[1] = 0;
  return v0;
}

uint64_t sub_216F4C2F8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100, &qword_21707B640);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  MEMORY[0x28223BE20](v8 - 8);
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__segue;
  v35[0] = OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__segue;
  v10 = type metadata accessor for AnyAction(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__headline);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__title);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__subtitle);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__contentDescriptor;
  v35[1] = OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__contentDescriptor;
  v15 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__artwork;
  v35[2] = OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__artwork;
  v17 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v18 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__accessibilityLabel);
  v36 = v18;
  *v18 = 0;
  v18[1] = 0;
  swift_beginAccess();
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v19;
  *(v1 + 24) = v20;
  swift_beginAccess();
  sub_2166A6EA4();
  swift_beginAccess();
  sub_21700DF14();
  sub_216F2EB2C();
  swift_endAccess();
  v21 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__headline);
  swift_beginAccess();
  v23 = *v21;
  v22 = v21[1];
  swift_beginAccess();
  *v11 = v23;
  v11[1] = v22;
  sub_21700DF14();

  v24 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__title);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  *v12 = v26;
  v12[1] = v25;
  sub_21700DF14();

  v27 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__subtitle);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  swift_beginAccess();
  *v13 = v29;
  v13[1] = v28;
  sub_21700DF14();

  swift_beginAccess();
  sub_2166A6EA4();
  swift_beginAccess();
  sub_216F2EB2C();
  swift_endAccess();
  swift_beginAccess();
  sub_2166A6EA4();
  swift_beginAccess();
  sub_216F2EB2C();
  swift_endAccess();
  v30 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__accessibilityLabel);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  sub_21700DF14();

  v33 = v36;
  swift_beginAccess();
  *v33 = v32;
  v33[1] = v31;

  return v2;
}

uint64_t sub_216F4C7E4()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216F4C83C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216F4C894()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216F4C908()
{

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__segue, &qword_27CABFF98, &unk_217049930);

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__contentDescriptor, &qword_27CACE120, &unk_217074850);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__artwork, &qword_27CACE100, &qword_21707B640);

  return v0;
}

uint64_t sub_216F4C9D8()
{
  v0 = sub_216F4C908();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216F4CA2C()
{
  v1 = *(type metadata accessor for CircleLockup(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for CircleLockup._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_18();
    *(v0 + v1) = sub_216F4C2F8(v2);
  }

  OUTLINED_FUNCTION_615();
  return sub_216F4CAC8(v3, v4, v5, v6);
}

uint64_t sub_216F4CAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_217007914();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_216F2EFD8(a2, a1, a3, a4);
        continue;
      case 2:
        sub_216F4CC40(a2, a1, a3, a4);
        continue;
      case 3:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__headline;
        goto LABEL_9;
      case 4:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__title;
        goto LABEL_9;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__subtitle;
        goto LABEL_9;
      case 6:
        sub_216F4CD1C(a2, a1, a3, a4);
        continue;
      case 7:
        sub_216F4CDF8(a2, a1, a3, a4);
        continue;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__accessibilityLabel;
LABEL_9:
        sub_216F4CED4(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F4CC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AnyAction(0);
  sub_216F4E548(&qword_27CACE3E8, type metadata accessor for AnyAction, &unk_2170779D0);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F4CD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ContentDescriptor(0);
  sub_216F4E548(&qword_27CACE3E0, type metadata accessor for ContentDescriptor, &unk_21707D078);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F4CDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Artwork(0);
  sub_216F4E548(qword_27CAC77F0, type metadata accessor for Artwork, &unk_217077D30);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F4CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_2170079A4();
  return swift_endAccess();
}

uint64_t sub_216F4CF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for CircleLockup(0);
  result = sub_216F4CFC4(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_109();
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F4CFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_216F2F980(a1, a2, a3, a4);
  if (!v4)
  {
    sub_216F4D0D4(a1, a2, a3, a4);
    sub_216F4D68C(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__headline, 3);
    sub_216F4D68C(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__title, 4);
    sub_216F4D68C(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__subtitle, 5);
    sub_216F4D2BC(a1, a2, a3, a4);
    sub_216F4D4A4(a1, a2, a3, a4);
    return sub_216F4D68C(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__accessibilityLabel, 8);
  }

  return result;
}

uint64_t sub_216F4D0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AnyAction(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CABFF98, &unk_217049930);
  }

  sub_216F4C7E4();
  sub_216F4E548(&qword_27CACE3E8, type metadata accessor for AnyAction, &unk_2170779D0);
  sub_217007B04();
  return sub_216F4C894();
}

uint64_t sub_216F4D2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CACE120, &unk_217074850);
  }

  sub_216F4C7E4();
  sub_216F4E548(&qword_27CACE3E0, type metadata accessor for ContentDescriptor, &unk_21707D078);
  sub_217007B04();
  return sub_216F4C894();
}

uint64_t sub_216F4D4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100, &qword_21707B640);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CACE100, &qword_21707B640);
  }

  sub_216F4C7E4();
  sub_216F4E548(qword_27CAC77F0, type metadata accessor for Artwork, &unk_217077D30);
  sub_217007B04();
  return sub_216F4C894();
}

uint64_t sub_216F4D68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  OUTLINED_FUNCTION_37();
  result = swift_beginAccess();
  if (*(v6 + 8))
  {
    sub_21700DF14();
    sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F4D738()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_1_230();
  if (*(v1 + v2) != *(v0 + v2))
  {

    OUTLINED_FUNCTION_82();
    sub_216F4D7FC();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_217007884();
  OUTLINED_FUNCTION_12_96();
  sub_216F4E548(v5, v6, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_38();
  return sub_21700E494() & 1;
}

void sub_216F4D7FC()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v102 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3D0, &unk_217074160);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v97 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100, &qword_21707B640);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v99 = v11;
  MEMORY[0x28223BE20](v12);
  v109 = &v97 - v13;
  v105 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v100 = v16 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3C0, &qword_217074170);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v106 = &v97 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  v20 = OUTLINED_FUNCTION_36(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v103 = v21;
  MEMORY[0x28223BE20](v22);
  v108 = &v97 - v23;
  v111 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v107 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE090, &qword_217073A30);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = &v97 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  v32 = OUTLINED_FUNCTION_36(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  v110 = v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v97 - v35;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v38 = *(v4 + 16);
  v37 = *(v4 + 24);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v39 = *(v2 + 24);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_66;
    }

    v40 = v38 == *(v2 + 16) && v37 == v39;
    if (!v40 && (sub_21700F7D4() & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  else if (v39)
  {
    goto LABEL_66;
  }

  v97 = v0;
  v98 = v8;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_2166A6EA4();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v41 = *(v27 + 48);
  sub_2166A6EA4();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v30, 1, v111) == 1)
  {

    sub_216697664(v36, &qword_27CABFF98, &unk_217049930);
    OUTLINED_FUNCTION_5_3(&v30[v41]);
    if (!v40)
    {
      goto LABEL_17;
    }

    sub_216697664(v30, &qword_27CABFF98, &unk_217049930);
  }

  else
  {
    sub_2166A6EA4();
    OUTLINED_FUNCTION_5_3(&v30[v41]);
    if (v40)
    {

      sub_216697664(v36, &qword_27CABFF98, &unk_217049930);
      sub_216F4C894();
LABEL_17:
      sub_216697664(v30, &qword_27CACE090, &qword_217073A30);
      goto LABEL_65;
    }

    sub_216F4C7E4();

    v42 = sub_216F82038();
    sub_216F4C894();
    v43 = OUTLINED_FUNCTION_119();
    sub_216697664(v43, v44, &unk_217049930);
    sub_216F4C894();
    sub_216697664(v30, &qword_27CABFF98, &unk_217049930);
    if ((v42 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v45 = v4;
  v46 = (v4 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__headline);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v47 = *v46;
  v48 = v46[1];
  v49 = (v2 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__headline);
  OUTLINED_FUNCTION_37();
  v50 = swift_beginAccess();
  v52 = v49[1];
  if (v48)
  {
    v53 = v108;
    v54 = v109;
    if (!v52)
    {
      goto LABEL_65;
    }

    v55 = v47 == *v49 && v48 == v52;
    if (!v55 && (OUTLINED_FUNCTION_38_44(v50, v51, *v49, v52) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v53 = v108;
    v54 = v109;
    if (v52)
    {
      goto LABEL_65;
    }
  }

  v56 = (v45 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__title);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v57 = *v56;
  v58 = v56[1];
  v59 = (v2 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__title);
  OUTLINED_FUNCTION_37();
  v60 = swift_beginAccess();
  v62 = v59[1];
  if (v58)
  {
    if (!v62)
    {
      goto LABEL_65;
    }

    v63 = v57 == *v59 && v58 == v62;
    if (!v63 && (OUTLINED_FUNCTION_38_44(v60, v61, *v59, v62) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (v62)
  {
    goto LABEL_65;
  }

  v64 = (v45 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__subtitle);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v65 = *v64;
  v66 = v64[1];
  v67 = (v2 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__subtitle);
  OUTLINED_FUNCTION_37();
  v68 = swift_beginAccess();
  v70 = v67[1];
  if (v66)
  {
    if (!v70)
    {
      goto LABEL_65;
    }

    v71 = v65 == *v67 && v66 == v70;
    if (!v71 && (OUTLINED_FUNCTION_38_44(v68, v69, *v67, v70) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (v70)
  {
    goto LABEL_65;
  }

  v72 = OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__contentDescriptor;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_37_49(v45 + v72, v53);
  v73 = OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__contentDescriptor;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v74 = *(v104 + 48);
  v75 = v106;
  OUTLINED_FUNCTION_37_49(v53, v106);
  OUTLINED_FUNCTION_37_49(v2 + v73, v75 + v74);
  if (__swift_getEnumTagSinglePayload(v75, 1, v105) == 1)
  {
    sub_216697664(v53, &qword_27CACE120, &unk_217074850);
    OUTLINED_FUNCTION_5_3(v75 + v74);
    if (!v40)
    {
      goto LABEL_54;
    }

    sub_216697664(v75, &qword_27CACE120, &unk_217074850);
  }

  else
  {
    sub_2166A6EA4();
    OUTLINED_FUNCTION_5_3(v75 + v74);
    if (v40)
    {
      sub_216697664(v53, &qword_27CACE120, &unk_217074850);
      sub_216F4C894();
LABEL_54:
      v76 = &qword_27CACE3C0;
      v77 = &qword_217074170;
      v78 = v75;
LABEL_64:
      sub_216697664(v78, v76, v77);
      goto LABEL_65;
    }

    sub_216F4C7E4();
    sub_216FE1ABC();
    v80 = v79;
    sub_216F4C894();
    sub_216697664(v53, &qword_27CACE120, &unk_217074850);
    sub_216F4C894();
    sub_216697664(v75, &qword_27CACE120, &unk_217074850);
    if ((v80 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v81 = OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__artwork;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_37_49(v45 + v81, v54);
  v82 = OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__artwork;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v83 = *(v101 + 48);
  v84 = v98;
  OUTLINED_FUNCTION_37_49(v54, v98);
  OUTLINED_FUNCTION_37_49(v2 + v82, v84 + v83);
  if (__swift_getEnumTagSinglePayload(v84, 1, v102) == 1)
  {
    sub_216697664(v54, &qword_27CACE100, &qword_21707B640);
    OUTLINED_FUNCTION_5_3(v84 + v83);
    if (!v40)
    {
      goto LABEL_63;
    }

    sub_216697664(v84, &qword_27CACE100, &qword_21707B640);
    v85 = v45;
  }

  else
  {
    v86 = v99;
    sub_2166A6EA4();
    OUTLINED_FUNCTION_5_3(v84 + v83);
    if (v40)
    {
      sub_216697664(v54, &qword_27CACE100, &qword_21707B640);
      sub_216F4C894();
LABEL_63:
      v76 = &qword_27CACE3D0;
      v77 = &unk_217074160;
      v78 = v84;
      goto LABEL_64;
    }

    v87 = v97;
    sub_216F4C7E4();
    v88 = sub_216F848D8(v86, v87);
    sub_216F4C894();
    sub_216697664(v54, &qword_27CACE100, &qword_21707B640);
    sub_216F4C894();
    v89 = OUTLINED_FUNCTION_115();
    sub_216697664(v89, v90, &qword_21707B640);
    v85 = v45;
    if ((v88 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v91 = (v85 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__accessibilityLabel);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v92 = *v91;
  v93 = v91[1];
  v94 = (v2 + OBJC_IVAR____TtCV18SwiftMusicProtocol12CircleLockupP33_37B9CB3BD111964201393BEF3791BB0D13_StorageClass__accessibilityLabel);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v95 = v94[1];
  if (v93)
  {
    if (v95)
    {
      if (v92 != *v94 || v93 != v95)
      {
        sub_21700F7D4();
      }

      sub_21700DF14();

      goto LABEL_66;
    }

LABEL_65:

    goto LABEL_66;
  }

  sub_21700DF14();

  if (v95)
  {
  }

LABEL_66:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F4E3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F4E548(&qword_27CACE7B8, type metadata accessor for CircleLockup, &unk_217074A00);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F4E45C(uint64_t a1)
{
  v2 = sub_216F4E548(&qword_27CACBF50, type metadata accessor for CircleLockup, &unk_217074988);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F4E4CC(uint64_t a1, uint64_t a2)
{
  sub_216F4E548(&qword_27CACBF50, type metadata accessor for CircleLockup, &unk_217074988);

  return sub_217007A34();
}

uint64_t sub_216F4E548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216F4E5BC()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22D48);
  __swift_project_value_buffer(v0, qword_27CB22D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217013D90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "circle_lockups";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "display_style";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F4E7D4()
{
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_615();
      sub_216F4E8EC(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_615();
      sub_216F4E84C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_216F4E84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CircleLockup(0);
  sub_216F4E548(&qword_27CACBF50, type metadata accessor for CircleLockup, &unk_217074988);
  return sub_2170079C4();
}

uint64_t sub_216F4E8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CircleLockupCollection(0);
  sub_216EA9F08();
  return sub_217007954();
}

uint64_t sub_216F4E960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CircleLockup(0), sub_216F4E548(&qword_27CACBF50, type metadata accessor for CircleLockup, &unk_217074988), result = sub_217007AF4(), !v4))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_615();
    result = sub_216F4EA64(v6, v7, v8, v9);
    if (!v4)
    {
      type metadata accessor for CircleLockupCollection(0);
      return sub_217007864();
    }
  }

  return result;
}

uint64_t sub_216F4EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CircleLockupCollection(0);
  if ((*(a1 + *(result + 24) + 9) & 1) == 0)
  {
    sub_216EA9F08();
    return sub_217007A84();
  }

  return result;
}

uint64_t sub_216F4EB08()
{
  OUTLINED_FUNCTION_92();
  sub_216F26540();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for CircleLockupCollection(0) + 24);
  v4 = v1 + v3;
  v5 = *(v1 + v3 + 9);
  v6 = v0 + v3;
  if ((v5 & 1) == 0)
  {
    if ((*(v6 + 9) & 1) != 0 || !sub_216F27A88(*v4, *(v4 + 8) & 1, *v6))
    {
      return 0;
    }

LABEL_7:
    sub_217007884();
    OUTLINED_FUNCTION_12_96();
    sub_216F4E548(v7, v8, MEMORY[0x277D216D0]);
    return sub_21700E494() & 1;
  }

  if (*(v6 + 9))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_216F4EC30(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_21700F8F4();
  a1(0);
  sub_216F4E548(a2, a3, a4);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F4ECEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F4E548(&qword_27CACE7B0, type metadata accessor for CircleLockupCollection, &unk_217074B68);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F4ED80(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F4EDE8(uint64_t a1)
{
  v2 = sub_216F4E548(&qword_27CACE760, type metadata accessor for CircleLockupCollection, &unk_217074AF0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F4EE58(uint64_t a1, uint64_t a2)
{
  sub_216F4E548(&qword_27CACE760, type metadata accessor for CircleLockupCollection, &unk_217074AF0);

  return sub_217007A34();
}

uint64_t sub_216F4EED8()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22D60);
  __swift_project_value_buffer(v0, qword_27CB22D60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015230;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LOCKUP_STYLE_UNSPECIFIED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOCKUP_STYLE_REGULAR";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LOCKUP_STYLE_LARGE";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_217007B24();
}

unint64_t sub_216F4F148()
{
  result = qword_27CACE720;
  if (!qword_27CACE720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE720);
  }

  return result;
}

unint64_t sub_216F4F1A0()
{
  result = qword_27CACE728;
  if (!qword_27CACE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE728);
  }

  return result;
}

unint64_t sub_216F4F1F8()
{
  result = qword_27CACE730;
  if (!qword_27CACE730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACE738, qword_2170748A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE730);
  }

  return result;
}

unint64_t sub_216F4F260()
{
  result = qword_27CACE740;
  if (!qword_27CACE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACE740);
  }

  return result;
}

uint64_t sub_216F4F51C(uint64_t a1)
{
  result = sub_217007884();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CircleLockup._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_216F4F5C8(uint64_t a1)
{
  sub_216F4F8A0(319, &qword_27CACE790, type metadata accessor for CircleLockup, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_217007884();
    if (v2 <= 0x3F)
    {
      sub_216F4F694();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216F4F694()
{
  if (!qword_27CACE798)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_27CACE798);
    }
  }
}

void sub_216F4F6FC(uint64_t a1)
{
  sub_216F4F8A0(319, qword_280E48698, type metadata accessor for AnyAction, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_216F4F8A0(319, qword_280E49D78, type metadata accessor for ContentDescriptor, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_216F4F8A0(319, &qword_27CACE350, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_216F4F8A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_216F4F904()
{
  OUTLINED_FUNCTION_5_150();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F4F984()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_29_58();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v7 = OUTLINED_FUNCTION_18();
    v8 = sub_216F52DB4(v7);
    OUTLINED_FUNCTION_97_0(v8);
  }

  OUTLINED_FUNCTION_139(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
}

void (*sub_216F4FA10())(void **a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_54_0(v3) + 40) = v0;
  OUTLINED_FUNCTION_4_158();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  sub_21700DF14();
  return sub_216F4FAA0;
}

BOOL sub_216F4FAB8()
{
  OUTLINED_FUNCTION_5_150();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v2 + 24) != 0;
}

uint64_t sub_216F4FB00()
{
  v3 = OUTLINED_FUNCTION_53_23();
  v5 = *(v0 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v5 = sub_216F52DB4(v5);
    *(v1 + v2) = v5;
  }

  OUTLINED_FUNCTION_139(v5 + 16, v4);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
}

void sub_216F4FB7C()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_46(v8);
  type metadata accessor for AnyAction(v9);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_120_1(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_4_158();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v13)
  {
    type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    sub_217007874();
    OUTLINED_FUNCTION_6_3();
    if (!v13)
    {
      sub_216697664(v0, &qword_27CABFF98, &unk_217049930);
    }
  }

  else
  {
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F4FD60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_4_158();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_2();
  sub_216683A80(v3, v4, v5, &unk_217049930);
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_7_6();
  if (v6)
  {
    type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_78_2();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    sub_217007874();
    result = OUTLINED_FUNCTION_7_6();
    if (!v6)
    {
      return sub_216697664(v0, &qword_27CABFF98, &unk_217049930);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    return sub_216F535D8();
  }

  return result;
}

uint64_t sub_216F4FE84(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for PlaylistTrackLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v12 = OUTLINED_FUNCTION_18();
    v11 = sub_216F52DB4(v12);
    *(v4 + v9) = v11;
  }

  sub_216F535D8();
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = *a2;
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_2166861C8(v8, v11 + v17, &qword_27CABFF98, &unk_217049930);
  return swift_endAccess();
}

void sub_216F4FFA8()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_46(v8);
  type metadata accessor for AnyAction(v9);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_120_1(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_4_158();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v13)
  {
    type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    sub_217007874();
    OUTLINED_FUNCTION_6_3();
    if (!v13)
    {
      sub_216697664(v0, &qword_27CABFF98, &unk_217049930);
    }
  }

  else
  {
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F50150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_76();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  OUTLINED_FUNCTION_4_158();
  v15 = *a3;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(v5 + v15, v14, v6, v4);
  v16 = a4(0);
  OUTLINED_FUNCTION_31_2(v14, 1, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_216697664(v14, v6, v4);
  return v18;
}

uint64_t sub_216F50254(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_76();
  v9 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = *(type metadata accessor for PlaylistTrackLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v5 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v19 = OUTLINED_FUNCTION_18();
    v18 = sub_216F52DB4(v19);
    *(v9 + v16) = v18;
  }

  a3(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = *a4;
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_2166861C8(v15, v18 + v24, v6, v4);
  return swift_endAccess();
}

uint64_t sub_216F50350@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100, &qword_21707B640);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_4_158();
  v6 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__artwork;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(v1 + v6, v2, &qword_27CACE100, &qword_21707B640);
  v7 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_7_6();
  if (v8)
  {
    sub_217007874();
    type metadata accessor for Artwork.ArtworkDictionary(0);
    v9 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    v13 = (a1 + *(v7 + 24));
    *v13 = 0;
    v13[1] = 0;
    result = OUTLINED_FUNCTION_7_6();
    if (!v8)
    {
      return sub_216697664(v2, &qword_27CACE100, &qword_21707B640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_42();
    OUTLINED_FUNCTION_92_0();
    return sub_216F535D8();
  }

  return result;
}

uint64_t sub_216F50468(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100, &qword_21707B640);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  if ((OUTLINED_FUNCTION_29_58() & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v3 = OUTLINED_FUNCTION_18();
    v4 = sub_216F52DB4(v3);
    OUTLINED_FUNCTION_97_0(v4);
  }

  OUTLINED_FUNCTION_35_42();
  sub_216F535D8();
  type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  v9 = OUTLINED_FUNCTION_95_0();
  sub_2166861C8(v9, v10, v11, v12);
  return swift_endAccess();
}

void sub_216F5055C()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_46(v8);
  v10 = type metadata accessor for Artwork(v9);
  OUTLINED_FUNCTION_34();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_120_1(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_4_158();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v15)
  {
    sub_217007874();
    v16 = OUTLINED_FUNCTION_79_2();
    v17 = type metadata accessor for Artwork.ArtworkDictionary(v16);
    OUTLINED_FUNCTION_60(v17);
    v18 = &v14[*(v10 + 24)];
    *v18 = 0;
    *(v18 + 1) = 0;
    OUTLINED_FUNCTION_6_3();
    if (!v15)
    {
      sub_216697664(v0, &qword_27CACE100, &qword_21707B640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_26();
}

void (*sub_216F50748())(void **a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5_150();
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__title);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return sub_216F507EC;
}

uint64_t sub_216F50828(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  if ((OUTLINED_FUNCTION_29_58() & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v3 = OUTLINED_FUNCTION_18();
    v4 = sub_216F52DB4(v3);
    OUTLINED_FUNCTION_97_0(v4);
  }

  OUTLINED_FUNCTION_0_269();
  sub_216F535D8();
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  v9 = OUTLINED_FUNCTION_95_0();
  sub_2166861C8(v9, v10, v11, v12);
  return swift_endAccess();
}

void sub_216F5091C()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_46(v8);
  v10 = type metadata accessor for ContentDescriptor(v9);
  OUTLINED_FUNCTION_34();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_120_1(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_4_158();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v15)
  {
    sub_217007874();
    v16 = OUTLINED_FUNCTION_79_2();
    v17 = type metadata accessor for ContentDescriptor.ContentKind(v16);
    OUTLINED_FUNCTION_60(v17);
    v18 = type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_60(v18);
    v19 = &v14[*(v10 + 28)];
    *v19 = 0;
    *(v19 + 1) = 0;
    OUTLINED_FUNCTION_6_3();
    if (!v15)
    {
      sub_216697664(v0, &qword_27CACE120, &unk_217074850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F50B18()
{
  v0 = OUTLINED_FUNCTION_49_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_193(v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_16_4();
  return OUTLINED_FUNCTION_103();
}

double sub_216F50BA4()
{
  OUTLINED_FUNCTION_5_150();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__durationMilliseconds;
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_216F50BFC(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for PlaylistTrackLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v7 = OUTLINED_FUNCTION_18();
    v6 = sub_216F52DB4(v7);
    *(v2 + v4) = v6;
  }

  v8 = v6 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__durationMilliseconds;
  v9 = OUTLINED_FUNCTION_48_0();
  result = OUTLINED_FUNCTION_147(v9, v10);
  *v8 = a1;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_216F50C84()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_5_150();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__durationMilliseconds;
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *(v1 + 72) = v5;
  return OUTLINED_FUNCTION_103();
}

void sub_216F50D14(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 88);
    v10 = *(v3 + 80);
    OUTLINED_FUNCTION_10_111();
    v11 = OUTLINED_FUNCTION_18();
    v8 = sub_216F52DB4(v11);
    *(v10 + v9) = v8;
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  v13 = v8 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__durationMilliseconds;
  OUTLINED_FUNCTION_147(v13, v3 + v12);
  *v13 = v4;
  *(v13 + 8) = 0;

  free(v3);
}

BOOL sub_216F50DC8()
{
  OUTLINED_FUNCTION_5_150();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__durationMilliseconds;
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return (*(v2 + 8) & 1) == 0;
}

uint64_t sub_216F50E18()
{
  v1 = v0;
  v2 = *(type metadata accessor for PlaylistTrackLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v5 = OUTLINED_FUNCTION_18();
    v4 = sub_216F52DB4(v5);
    *(v1 + v2) = v4;
  }

  v6 = v4 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__durationMilliseconds;
  v7 = OUTLINED_FUNCTION_48_0();
  result = OUTLINED_FUNCTION_147(v7, v8);
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_216F50EA4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_158();
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v1 + a1) & 1;
}

uint64_t sub_216F50EF0(char a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_29_58();
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v8 = OUTLINED_FUNCTION_18();
    v9 = sub_216F52DB4(v8);
    OUTLINED_FUNCTION_97_0(v9);
  }

  v10 = OUTLINED_FUNCTION_22_12();
  result = OUTLINED_FUNCTION_147(v10, v11);
  *(v7 + a2) = a1 & 1;
  return result;
}

uint64_t sub_216F50F5C()
{
  v0 = OUTLINED_FUNCTION_49_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_193(v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_16_4();
  return OUTLINED_FUNCTION_103();
}

void sub_216F50FD0(uint64_t *a1, char a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v5 + 80);
    v12 = *(v5 + 72);
    OUTLINED_FUNCTION_10_111();
    v13 = OUTLINED_FUNCTION_18();
    v10 = sub_216F52DB4(v13);
    *(v12 + v11) = v10;
  }

  v14 = 48;
  if (a2)
  {
    v14 = 24;
  }

  v15 = *a3;
  OUTLINED_FUNCTION_147(v10 + v15, v5 + v14);
  *(v10 + v15) = v8;

  free(v5);
}

BOOL sub_216F5108C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_158();
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v1 + a1) != 2;
}

uint64_t sub_216F510DC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_53_23();
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v7 = OUTLINED_FUNCTION_18();
    v6 = sub_216F52DB4(v7);
    *(v2 + v3) = v6;
  }

  v8 = OUTLINED_FUNCTION_22_12();
  result = OUTLINED_FUNCTION_147(v8, v9);
  *(v6 + a1) = 2;
  return result;
}

uint64_t sub_216F51148()
{
  OUTLINED_FUNCTION_5_150();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F511BC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  OUTLINED_FUNCTION_76();
  v8 = *(type metadata accessor for PlaylistTrackLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v11 = OUTLINED_FUNCTION_18();
    v10 = sub_216F52DB4(v11);
    *(v7 + v8) = v10;
  }

  v12 = (v10 + *a3);
  OUTLINED_FUNCTION_147(v12, v14);
  *v12 = v5;
  v12[1] = v3;
}

void (*sub_216F5124C())(void **a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5_150();
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__rankingText);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v3[3] = v6;
  v3[4] = v7;
  sub_21700DF14();
  return sub_216F512F0;
}

void sub_216F51308(void **a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  if (a2)
  {
    sub_21700DF14();
    v5 = OUTLINED_FUNCTION_109();
    a3(v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_109();
    a3(v6);
  }

  free(v4);
}

BOOL sub_216F51398(void *a1)
{
  OUTLINED_FUNCTION_5_150();
  v4 = *(v1 + v3) + *a1;
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v4 + 8) != 0;
}

uint64_t sub_216F513F4(void *a1)
{
  v5 = OUTLINED_FUNCTION_53_23();
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v7 = OUTLINED_FUNCTION_18();
    v6 = sub_216F52DB4(v7);
    *(v2 + v3) = v6;
  }

  v8 = (v6 + *a1);
  v9 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_147(v9, v10);
  *v8 = 0;
  v8[1] = 0;
}

void (*sub_216F51478())(uint64_t *a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_5_150();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__subtitleLinks;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  *(v1 + 48) = *(v4 + v5);
  sub_21700DF14();
  return sub_216F51504;
}

double sub_216F51530()
{
  OUTLINED_FUNCTION_4_158();
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  return result;
}

uint64_t sub_216F5157C(uint64_t a1, uint64_t *a2)
{
  v5 = OUTLINED_FUNCTION_31_0();
  v6 = *(type metadata accessor for PlaylistTrackLockup(v5) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v10 = OUTLINED_FUNCTION_18();
    v11 = sub_216F52DB4(v10);
    OUTLINED_FUNCTION_97_0(v11);
  }

  v12 = *a2;
  OUTLINED_FUNCTION_139(v9 + v12, v8);
  *(v9 + v12) = v2;
}

void (*sub_216F515FC())(uint64_t *a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_54_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_5_150();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__tertiaryLinks;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  *(v1 + 48) = *(v4 + v5);
  sub_21700DF14();
  return sub_216F51688;
}

void sub_216F516A8(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {
    v7 = sub_21700DF14();
    a4(v7);
  }

  else
  {
    v9 = *(v4 + 64);
    v10 = *(v4 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 64);
      v14 = *(v4 + 56);
      OUTLINED_FUNCTION_10_111();
      v15 = OUTLINED_FUNCTION_18();
      v12 = sub_216F52DB4(v15);
      *(v14 + v13) = v12;
    }

    v16 = *a3;
    OUTLINED_FUNCTION_147(v12 + v16, v4 + 24);
    *(v12 + v16) = v5;
  }

  free(v4);
}

uint64_t sub_216F51784()
{
  v0 = OUTLINED_FUNCTION_49_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_193(v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_16_4();
  return OUTLINED_FUNCTION_103();
}

uint64_t sub_216F51828()
{
  v0 = OUTLINED_FUNCTION_49_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_193(v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_16_4();
  return OUTLINED_FUNCTION_103();
}

uint64_t sub_216F518CC()
{
  v0 = OUTLINED_FUNCTION_49_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_193(v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_16_4();
  return OUTLINED_FUNCTION_103();
}

uint64_t sub_216F51970()
{
  v0 = OUTLINED_FUNCTION_49_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_193(v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_16_4();
  return OUTLINED_FUNCTION_103();
}

uint64_t sub_216F51A08@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_4_158();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_2();
  sub_216683A80(v5, v6, v7, &unk_217074850);
  v8 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_6();
  if (v9)
  {
    sub_217007874();
    type metadata accessor for ContentDescriptor.ContentKind(0);
    v10 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    type metadata accessor for ContentIdentifiers(0);
    v14 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = (a1 + *(v8 + 28));
    *v18 = 0;
    v18[1] = 0;
    result = OUTLINED_FUNCTION_7_6();
    if (!v9)
    {
      return sub_216697664(v1, &qword_27CACE120, &unk_217074850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    return sub_216F535D8();
  }

  return result;
}

uint64_t sub_216F51B3C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  if ((OUTLINED_FUNCTION_29_58() & 1) == 0)
  {
    OUTLINED_FUNCTION_10_111();
    v3 = OUTLINED_FUNCTION_18();
    v4 = sub_216F52DB4(v3);
    OUTLINED_FUNCTION_97_0(v4);
  }

  OUTLINED_FUNCTION_0_269();
  sub_216F535D8();
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  v9 = OUTLINED_FUNCTION_95_0();
  sub_2166861C8(v9, v10, v11, v12);
  return swift_endAccess();
}

void sub_216F51C30()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_46(v8);
  v10 = type metadata accessor for ContentDescriptor(v9);
  OUTLINED_FUNCTION_34();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_120_1(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_4_158();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v15)
  {
    sub_217007874();
    v16 = OUTLINED_FUNCTION_79_2();
    v17 = type metadata accessor for ContentDescriptor.ContentKind(v16);
    OUTLINED_FUNCTION_60(v17);
    v18 = type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_60(v18);
    v19 = &v14[*(v10 + 28)];
    *v19 = 0;
    *(v19 + 1) = 0;
    OUTLINED_FUNCTION_6_3();
    if (!v15)
    {
      sub_216697664(v0, &qword_27CACE120, &unk_217074850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F51DB4(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_109();
    sub_216F5362C();
    a3(v6);
    sub_216F53680();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t sub_216F51EC0@<X0>(uint64_t a2@<X8>)
{
  sub_217007874();
  v3 = *(type metadata accessor for PlaylistTrackLockup(0) + 20);
  if (qword_27CACDC60 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27CACE7C0;
}

uint64_t sub_216F51F3C@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17_0();
  v7 = type metadata accessor for PlaylistTrackLockupCollection(v6);
  sub_216683A80(v1 + *(v7 + 24), v2, &qword_27CACE120, &unk_217074850);
  v8 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_7_6();
  if (v9)
  {
    sub_217007874();
    type metadata accessor for ContentDescriptor.ContentKind(0);
    v10 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    type metadata accessor for ContentIdentifiers(0);
    v14 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = (a1 + *(v8 + 28));
    *v18 = 0;
    v18[1] = 0;
    result = OUTLINED_FUNCTION_7_6();
    if (!v9)
    {
      return sub_216697664(v2, &qword_27CACE120, &unk_217074850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_269();
    OUTLINED_FUNCTION_92_0();
    return sub_216F535D8();
  }

  return result;
}

uint64_t sub_216F52050()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for PlaylistTrackLockupCollection(v1);
  sub_216697664(v0 + *(v2 + 24), &qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_0_269();
  OUTLINED_FUNCTION_95_0();
  sub_216F535D8();
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*sub_216F520C8())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_36(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for ContentDescriptor(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_34();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for PlaylistTrackLockupCollection(0) + 24);
  *(v3 + 10) = v11;
  sub_216683A80(v1 + v11, v6, &qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_6_3();
  if (v12)
  {
    sub_217007874();
    v13 = OUTLINED_FUNCTION_79_2();
    v14 = type metadata accessor for ContentDescriptor.ContentKind(v13);
    OUTLINED_FUNCTION_60(v14);
    v15 = type metadata accessor for ContentIdentifiers(0);
    OUTLINED_FUNCTION_60(v15);
    v16 = &v10[*(v7 + 28)];
    *v16 = 0;
    *(v16 + 1) = 0;
    OUTLINED_FUNCTION_6_3();
    if (!v12)
    {
      sub_216697664(v6, &qword_27CACE120, &unk_217074850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_269();
    OUTLINED_FUNCTION_70_1();
  }

  return sub_216F52238;
}

void sub_216F52238(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_216F5362C();
    sub_216697664(v8 + v3, &qword_27CACE120, &unk_217074850);
    sub_216F535D8();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
    sub_216F53680();
  }

  else
  {
    sub_216697664(v8 + v3, &qword_27CACE120, &unk_217074850);
    OUTLINED_FUNCTION_0_269();
    sub_216F535D8();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_216F52354()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v5 = type metadata accessor for PlaylistTrackLockupCollection(v4);
  sub_216683A80(v0 + *(v5 + 24), v1, &qword_27CACE120, &unk_217074850);
  v6 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_31_2(v1, 1, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_92_0();
  sub_216697664(v9, v10, &unk_217074850);
  return v8;
}

uint64_t sub_216F52408()
{
  v1 = type metadata accessor for PlaylistTrackLockupCollection(0);
  sub_216697664(v0 + *(v1 + 24), &qword_27CACE120, &unk_217074850);
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_38_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_216F5246C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlaylistTrackLockupCollection(0) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_216F524E0()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = *(type metadata accessor for PlaylistTrackLockupCollection(v2) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*sub_216F52550())()
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for PlaylistTrackLockupCollection(v0);
  return nullsub_1;
}

uint64_t sub_216F52594@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for PlaylistTrackLockupCollection(0);
  sub_217007874();
  type metadata accessor for ContentDescriptor(0);
  v1 = OUTLINED_FUNCTION_17_1();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F52620()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22D78);
  __swift_project_value_buffer(v0, qword_27CB22D78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2170587F0;
  v4 = v40 + v3 + v1[14];
  *(v40 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_217007B14();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v40 + v3 + v2 + v1[14];
  *(v40 + v3 + v2) = 2;
  *v8 = "segue";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v40 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "play_action";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v40 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "artwork";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v40 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "title";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v40 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "content_descriptor";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v40 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "show_explicit_badge";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v40 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "duration_milliseconds";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v40 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "show_popularity_indicator";
  *(v22 + 1) = 25;
  v22[16] = 2;
  v7();
  v23 = (v40 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "rankingText";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v40 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "subtitle_links";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v40 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "tertiaryLinks";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v40 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "is_prominent";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v7();
  v31 = (v40 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "is_disabled";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v7();
  v33 = (v40 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "has_video";
  *(v34 + 1) = 9;
  v34[16] = 2;
  v7();
  v35 = (v40 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "is_preview_mode";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v7();
  v37 = (v40 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "social_profile_content_descriptor";
  *(v38 + 1) = 33;
  v38[16] = 2;
  v7();
  return sub_217007B24();
}

uint64_t sub_216F52C08()
{
  OUTLINED_FUNCTION_10_111();
  result = sub_216F52C38();
  qword_27CACE7C0 = result;
  return result;
}

uint64_t sub_216F52C38()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__segue;
  v2 = type metadata accessor for AnyAction(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__playAction, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__artwork;
  v4 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__title);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__contentDescriptor;
  v7 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__showExplicitBadge) = 2;
  v8 = v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__durationMilliseconds;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__showPopularityIndicator) = 2;
  v9 = (v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__rankingText);
  *v9 = 0;
  v9[1] = 0;
  v10 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__subtitleLinks) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__tertiaryLinks) = v10;
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isProminent) = 2;
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isDisabled) = 2;
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__hasVideo_p) = 2;
  *(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isPreviewMode) = 2;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__socialProfileContentDescriptor, 1, 1, v7);
  return v0;
}

uint64_t sub_216F52DB4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100, &qword_21707B640);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v63 - v8;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v10 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__segue;
  v11 = type metadata accessor for AnyAction(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v63 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__playAction;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__playAction, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__artwork;
  v64 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__artwork;
  v13 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__title);
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__contentDescriptor;
  v65 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__contentDescriptor;
  v16 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v67 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__showExplicitBadge;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__showExplicitBadge) = 2;
  v17 = v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__durationMilliseconds;
  v68 = v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__durationMilliseconds;
  *v17 = 0;
  *(v17 + 8) = 1;
  v69 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__showPopularityIndicator;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__showPopularityIndicator) = 2;
  v18 = (v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__rankingText);
  *v18 = 0;
  v18[1] = 0;
  v71 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__subtitleLinks;
  v19 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__subtitleLinks) = MEMORY[0x277D84F90];
  v20 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__tertiaryLinks;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__tertiaryLinks) = v19;
  v72 = v20;
  v73 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isProminent;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isProminent) = 2;
  v74 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isDisabled;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isDisabled) = 2;
  v75 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__hasVideo_p;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__hasVideo_p) = 2;
  v21 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isPreviewMode;
  *(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isPreviewMode) = 2;
  v76 = v21;
  v77 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__socialProfileContentDescriptor;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__socialProfileContentDescriptor, 1, 1, v16);
  swift_beginAccess();
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v22;
  *(v1 + 24) = v23;
  v24 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__segue;
  swift_beginAccess();
  sub_216683A80(a1 + v24, v9, &qword_27CABFF98, &unk_217049930);
  swift_beginAccess();
  sub_21700DF14();
  sub_2166861C8(v9, v1 + v10, &qword_27CABFF98, &unk_217049930);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__playAction;
  swift_beginAccess();
  sub_216683A80(a1 + v25, v9, &qword_27CABFF98, &unk_217049930);
  v26 = v63;
  swift_beginAccess();
  sub_2166861C8(v9, v1 + v26, &qword_27CABFF98, &unk_217049930);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__artwork;
  swift_beginAccess();
  v28 = v66;
  sub_216683A80(a1 + v27, v66, &qword_27CACE100, &qword_21707B640);
  v29 = v64;
  swift_beginAccess();
  sub_2166861C8(v28, v1 + v29, &qword_27CACE100, &qword_21707B640);
  swift_endAccess();
  v30 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__title);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  swift_beginAccess();
  *v14 = v32;
  v14[1] = v31;
  sub_21700DF14();

  v33 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__contentDescriptor;
  swift_beginAccess();
  v34 = v70;
  sub_216683A80(a1 + v33, v70, &qword_27CACE120, &unk_217074850);
  v35 = v65;
  swift_beginAccess();
  sub_2166861C8(v34, v1 + v35, &qword_27CACE120, &unk_217074850);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__showExplicitBadge;
  swift_beginAccess();
  LOBYTE(v36) = *(a1 + v36);
  v37 = v67;
  swift_beginAccess();
  *(v1 + v37) = v36;
  v38 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__durationMilliseconds);
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  v40 = v68;
  swift_beginAccess();
  *v40 = v39;
  *(v40 + 8) = v38;
  v41 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__showPopularityIndicator;
  swift_beginAccess();
  LOBYTE(v41) = *(a1 + v41);
  v42 = v69;
  swift_beginAccess();
  *(v1 + v42) = v41;
  v43 = (a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__rankingText);
  swift_beginAccess();
  v45 = *v43;
  v44 = v43[1];
  swift_beginAccess();
  *v18 = v45;
  v18[1] = v44;
  sub_21700DF14();

  v46 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__subtitleLinks;
  swift_beginAccess();
  v47 = *(a1 + v46);
  v48 = v71;
  swift_beginAccess();
  *(v1 + v48) = v47;
  sub_21700DF14();

  v49 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__tertiaryLinks;
  swift_beginAccess();
  v50 = *(a1 + v49);
  v51 = v72;
  swift_beginAccess();
  *(v1 + v51) = v50;
  sub_21700DF14();

  v52 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isProminent;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + v52);
  v53 = v73;
  swift_beginAccess();
  *(v1 + v53) = v52;
  v54 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isDisabled;
  swift_beginAccess();
  LOBYTE(v54) = *(a1 + v54);
  v55 = v74;
  swift_beginAccess();
  *(v1 + v55) = v54;
  v56 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__hasVideo_p;
  swift_beginAccess();
  LOBYTE(v56) = *(a1 + v56);
  v57 = v75;
  swift_beginAccess();
  *(v1 + v57) = v56;
  v58 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isPreviewMode;
  swift_beginAccess();
  LOBYTE(v58) = *(a1 + v58);
  v59 = v76;
  swift_beginAccess();
  *(v1 + v59) = v58;
  v60 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__socialProfileContentDescriptor;
  swift_beginAccess();
  sub_216683A80(a1 + v60, v34, &qword_27CACE120, &unk_217074850);

  v61 = v77;
  swift_beginAccess();
  sub_2166861C8(v34, v1 + v61, &qword_27CACE120, &unk_217074850);
  swift_endAccess();
  return v1;
}

uint64_t sub_216F535D8()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216F5362C()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216F53680()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216F536F4()
{

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__segue, &qword_27CABFF98, &unk_217049930);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__playAction, &qword_27CABFF98, &unk_217049930);
  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__artwork, &qword_27CACE100, &qword_21707B640);

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__contentDescriptor, &qword_27CACE120, &unk_217074850);

  sub_216697664(v0 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__socialProfileContentDescriptor, &qword_27CACE120, &unk_217074850);
  return v0;
}

uint64_t sub_216F5380C()
{
  v0 = sub_216F536F4();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216F53860()
{
  v1 = *(type metadata accessor for PlaylistTrackLockup(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for PlaylistTrackLockup._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_18();
    *(v0 + v1) = sub_216F52DB4(v2);
  }

  OUTLINED_FUNCTION_615();
  sub_216F538FC(v3, v4, v5, v6);
}

void sub_216F538FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_217007914();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_216F2EFD8(a2, a1, a3, a4);
        break;
      case 2:
      case 3:
        sub_216F53B94();
        break;
      case 4:
        sub_216F53C24(a2, a1, a3, a4);
        break;
      case 5:
      case 10:
        sub_216F53E68();
        break;
      case 6:
        sub_216F53D00(a2, a1, a3, a4);
        break;
      case 7:
      case 9:
      case 13:
      case 14:
      case 15:
      case 16:
        sub_216F53F6C();
        break;
      case 8:
        sub_216F53DDC(a2, a1, a3, a4);
        break;
      case 11:
      case 12:
        sub_216F53ECC();
        break;
      case 17:
        sub_216F53FD0(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

void sub_216F53B94()
{
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_12_97();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_32_45();
  sub_216F5622C(v0, v1, &unk_2170779D0);
  OUTLINED_FUNCTION_38_1();
  v2 = sub_2170079D4();
  OUTLINED_FUNCTION_87_14(v2);
  OUTLINED_FUNCTION_83_16();
}

uint64_t sub_216F53C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Artwork(0);
  sub_216F5622C(qword_27CAC77F0, type metadata accessor for Artwork, &unk_217077D30);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F53D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ContentDescriptor(0);
  sub_216F5622C(&qword_27CACE3E0, type metadata accessor for ContentDescriptor, &unk_21707D078);
  sub_2170079D4();
  return swift_endAccess();
}

uint64_t sub_216F53DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_217007994();
  return swift_endAccess();
}

uint64_t sub_216F53E68()
{
  OUTLINED_FUNCTION_12_97();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_45_36();
  OUTLINED_FUNCTION_47_2();
  v0 = sub_2170079A4();
  return OUTLINED_FUNCTION_87_14(v0);
}

void sub_216F53ECC()
{
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_12_97();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  type metadata accessor for Link(0);
  sub_216F5622C(&qword_27CABE100, type metadata accessor for Link, &unk_2170759A0);
  OUTLINED_FUNCTION_38_1();
  v0 = sub_2170079C4();
  OUTLINED_FUNCTION_87_14(v0);
  OUTLINED_FUNCTION_83_16();
}

uint64_t sub_216F53F6C()
{
  OUTLINED_FUNCTION_12_97();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_45_36();
  OUTLINED_FUNCTION_47_2();
  v0 = sub_217007944();
  return OUTLINED_FUNCTION_87_14(v0);
}

uint64_t sub_216F53FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for ContentDescriptor(0);
  sub_216F5622C(&qword_27CACE3E0, type metadata accessor for ContentDescriptor, &unk_21707D078);
  sub_2170079D4();
  return swift_endAccess();
}

void sub_216F540AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PlaylistTrackLockup(0);
  OUTLINED_FUNCTION_47_2();
  sub_216F54110(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_109();
    sub_217007864();
  }
}

void sub_216F54110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_216F2F980(a1, a2, a3, a4);
  if (!v4)
  {
    sub_216F544E4(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__segue, 2);
    sub_216F544E4(a1, a2, a3, a4, &OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__playAction, 3);
    sub_216F5469C(a1, a2, a3, a4);
    sub_216F54AF8();
    sub_216F54884(a1, a2, a3, a4);
    sub_216F54B78();
    sub_216F54A6C(a1, a2, a3, a4);
    sub_216F54B78();
    sub_216F54AF8();
    v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__subtitleLinks;
    swift_beginAccess();
    if (*(*(a1 + v9) + 16))
    {
      type metadata accessor for Link(0);
      sub_216F5622C(&qword_27CABE100, type metadata accessor for Link, &unk_2170759A0);
      sub_21700DF14();
      sub_217007AF4();
    }

    v10 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__tertiaryLinks;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for Link(0);
      sub_216F5622C(&qword_27CABE100, type metadata accessor for Link, &unk_2170759A0);
      sub_21700DF14();
      sub_217007AF4();
    }

    sub_216F54B78();
    sub_216F54B78();
    sub_216F54B78();
    sub_216F54B78();
    sub_216F54BE8(a1, a2, a3, a4);
  }
}

uint64_t sub_216F544E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v18[1] = a6;
  v18[2] = a3;
  v18[7] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  v12 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v14 = *a5;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(a1 + v14, v11, &qword_27CABFF98, &unk_217049930);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_216697664(v11, &qword_27CABFF98, &unk_217049930);
  }

  sub_216F535D8();
  OUTLINED_FUNCTION_32_45();
  sub_216F5622C(v16, v17, &unk_2170779D0);
  OUTLINED_FUNCTION_45_36();
  sub_217007B04();
  return sub_216F53680();
}

uint64_t sub_216F5469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100, &qword_21707B640);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__artwork;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CACE100, &qword_21707B640);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE100, &qword_21707B640);
  }

  sub_216F535D8();
  sub_216F5622C(qword_27CAC77F0, type metadata accessor for Artwork, &unk_217077D30);
  sub_217007B04();
  return sub_216F53680();
}

uint64_t sub_216F54884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__contentDescriptor;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CACE120, &unk_217074850);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE120, &unk_217074850);
  }

  sub_216F535D8();
  sub_216F5622C(&qword_27CACE3E0, type metadata accessor for ContentDescriptor, &unk_21707D078);
  sub_217007B04();
  return sub_216F53680();
}

uint64_t sub_216F54A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__durationMilliseconds;
  result = swift_beginAccess();
  if ((*(v4 + 8) & 1) == 0)
  {
    return sub_217007AC4();
  }

  return result;
}

void sub_216F54AF8()
{
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_63_11();
  v2 = v1 + *v0;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v2 + 8))
  {
    sub_21700DF14();
    OUTLINED_FUNCTION_38_1();
    sub_217007AD4();
  }

  OUTLINED_FUNCTION_83_16();
}

void sub_216F54B78()
{
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_63_11();
  v1 = v0;
  v3 = *v2;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v1 + v3) != 2)
  {
    OUTLINED_FUNCTION_45_36();
    OUTLINED_FUNCTION_615();
    sub_217007A74();
  }

  OUTLINED_FUNCTION_83_16();
}

uint64_t sub_216F54BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__socialProfileContentDescriptor;
  swift_beginAccess();
  sub_216683A80(a1 + v9, v7, &qword_27CACE120, &unk_217074850);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE120, &unk_217074850);
  }

  sub_216F535D8();
  sub_216F5622C(&qword_27CACE3E0, type metadata accessor for ContentDescriptor, &unk_21707D078);
  sub_217007B04();
  return sub_216F53680();
}

uint64_t sub_216F54DD0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_150();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_216F54E9C(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_217007884();
  OUTLINED_FUNCTION_34_41();
  sub_216F5622C(v8, v9, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_38();
  return sub_21700E494() & 1;
}

BOOL sub_216F54E9C(uint64_t a1, uint64_t a2)
{
  v211 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3C0, &qword_217074170);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v209 = &v203 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v206 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  v207 = &v203 - v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v208 = &v203 - v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v217 = &v203 - v21;
  v215 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v212 = v24 - v23;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3D0, &unk_217074160);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  v216 = &v203 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100, &qword_21707B640);
  v28 = OUTLINED_FUNCTION_36(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v213 = v29;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v30);
  v221 = &v203 - v31;
  v32 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7();
  v219 = v35 - v34;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE090, &qword_217073A30);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v220 = v37;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v38);
  v40 = &v203 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  v42 = OUTLINED_FUNCTION_36(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  v218 = v43;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v44);
  v222 = &v203 - v45;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v46);
  v48 = &v203 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v203 - v50;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v224 = a1;
  v53 = *(a1 + 16);
  v52 = *(a1 + 24);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v54 = *(a2 + 24);
  if (v52)
  {
    if (!v54)
    {
      return 0;
    }

    v55 = v53 == *(a2 + 16) && v52 == v54;
    if (!v55 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  v204 = v10;
  v205 = v7;
  v225 = a2;
  v56 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__segue;
  v57 = v224;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(v57 + v56, v51, &qword_27CABFF98, &unk_217049930);
  v58 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__segue;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v59 = *(v223 + 48);
  sub_216683A80(v51, v40, &qword_27CABFF98, &unk_217049930);
  v60 = v225 + v58;
  v61 = v225;
  sub_216683A80(v60, &v40[v59], &qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_31_2(v40, 1, v32);
  if (v55)
  {

    sub_216697664(v51, &qword_27CABFF98, &unk_217049930);
    OUTLINED_FUNCTION_31_2(&v40[v59], 1, v32);
    if (v55)
    {
      sub_216697664(v40, &qword_27CABFF98, &unk_217049930);
      goto LABEL_21;
    }

LABEL_18:
    v63 = &qword_27CACE090;
    v64 = &qword_217073A30;
LABEL_19:
    v65 = v40;
LABEL_30:
    sub_216697664(v65, v63, v64);
    goto LABEL_31;
  }

  sub_216683A80(v40, v48, &qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_31_2(&v40[v59], 1, v32);
  if (v62)
  {

    sub_216697664(v51, &qword_27CABFF98, &unk_217049930);
    OUTLINED_FUNCTION_31_6();
    sub_216F53680();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_30_57();
  sub_216F535D8();
  v57 = v224;

  v66 = sub_216F82038();
  sub_216F53680();
  sub_216697664(v51, &qword_27CABFF98, &unk_217049930);
  sub_216F53680();
  OUTLINED_FUNCTION_47_2();
  sub_216697664(v67, v68, v69);
  if ((v66 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v70 = v222;
  OUTLINED_FUNCTION_49_2();
  sub_216683A80(v71, v72, v73, v74);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_18();
  v75 = v220;
  OUTLINED_FUNCTION_49_2();
  sub_216683A80(v76, v77, v78, v79);
  OUTLINED_FUNCTION_49_2();
  sub_216683A80(v80, v81, v82, v83);
  OUTLINED_FUNCTION_31_2(v75, 1, v32);
  if (v55)
  {
    sub_216697664(v70, &qword_27CABFF98, &unk_217049930);
    OUTLINED_FUNCTION_31_2(&unk_27CACE000 + v75, 1, v32);
    v84 = v221;
    if (v55)
    {
      sub_216697664(v75, &qword_27CABFF98, &unk_217049930);
      goto LABEL_34;
    }

LABEL_29:
    v63 = &qword_27CACE090;
    v64 = &qword_217073A30;
    v65 = v75;
    goto LABEL_30;
  }

  sub_216683A80(v75, v218, &qword_27CABFF98, &unk_217049930);
  OUTLINED_FUNCTION_31_2(&unk_27CACE000 + v75, 1, v32);
  v84 = v221;
  if (v85)
  {
    sub_216697664(v222, &qword_27CABFF98, &unk_217049930);
    OUTLINED_FUNCTION_31_6();
    sub_216F53680();
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_30_57();
  sub_216F535D8();
  OUTLINED_FUNCTION_109();
  v87 = sub_216F82038();
  OUTLINED_FUNCTION_86_13();
  sub_216697664(v222, &qword_27CABFF98, &unk_217049930);
  sub_216F53680();
  sub_216697664(v75, &qword_27CABFF98, &unk_217049930);
  if ((v87 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_49_2();
  sub_216683A80(v88, v89, v90, v91);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_18();
  v92 = v216;
  OUTLINED_FUNCTION_49_2();
  sub_216683A80(v93, v94, v95, v96);
  OUTLINED_FUNCTION_49_2();
  v40 = v92;
  sub_216683A80(v97, v98, v99, v100);
  v101 = v215;
  OUTLINED_FUNCTION_31_2(v92, 1, v215);
  if (v55)
  {
    sub_216697664(v84, &qword_27CACE100, &qword_21707B640);
    OUTLINED_FUNCTION_31_2(&unk_27CACE000 + v92, 1, v101);
    v102 = v217;
    if (v55)
    {
      sub_216697664(v92, &qword_27CACE100, &qword_21707B640);
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  sub_216683A80(v92, v213, &qword_27CACE100, &qword_21707B640);
  OUTLINED_FUNCTION_31_2(&unk_27CACE000 + v92, 1, v101);
  v104 = v217;
  if (v103)
  {
    sub_216697664(v84, &qword_27CACE100, &qword_21707B640);
    sub_216F53680();
LABEL_42:
    v63 = &qword_27CACE3D0;
    v64 = &unk_217074160;
    goto LABEL_19;
  }

  sub_216F535D8();
  v105 = OUTLINED_FUNCTION_109();
  LODWORD(v223) = sub_216F848D8(v105, v106);
  OUTLINED_FUNCTION_86_13();
  v102 = v104;
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v107, v108, v109);
  sub_216F53680();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v110, v111, v112);
  if ((v223 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_44:
  v113 = (v57 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__title);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v114 = *v113;
  v115 = v113[1];
  v116 = (v61 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__title);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v117 = v116[1];
  if (v115)
  {
    if (!v117)
    {
      goto LABEL_31;
    }

    if (v114 != *v116 || v115 != v117)
    {
      OUTLINED_FUNCTION_7_4();
      if ((sub_21700F7D4() & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v117)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_49_2();
  sub_216683A80(v119, v120, v121, v122);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v123 = v209;
  OUTLINED_FUNCTION_82_18();
  OUTLINED_FUNCTION_49_2();
  sub_216683A80(v124, v125, v126, v127);
  OUTLINED_FUNCTION_49_2();
  sub_216683A80(v128, v129, v130, v131);
  v132 = v211;
  OUTLINED_FUNCTION_31_2(v123, 1, v211);
  if (v55)
  {
    sub_216697664(v102, &qword_27CACE120, &unk_217074850);
    OUTLINED_FUNCTION_31_2(&unk_27CACE000 + v123, 1, v132);
    if (v55)
    {
      sub_216697664(v123, &qword_27CACE120, &unk_217074850);
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  sub_216683A80(v123, v208, &qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_31_2(&unk_27CACE000 + v123, 1, v132);
  if (v133)
  {
    sub_216697664(v217, &qword_27CACE120, &unk_217074850);
    OUTLINED_FUNCTION_8_122();
    sub_216F53680();
LABEL_61:
    v63 = &qword_27CACE3C0;
    v64 = &qword_217074170;
    v65 = v123;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_33_3();
  sub_216F535D8();
  sub_216FE1ABC();
  v135 = v134;
  OUTLINED_FUNCTION_86_13();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v136, v137, v138);
  sub_216F53680();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v139, v140, v141);
  if ((v135 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_63:
  v142 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__showExplicitBadge;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v143 = *(v57 + v142);
  v144 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__showExplicitBadge;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v145 = *(v61 + v144);
  if (v143 == 2)
  {
    if (v145 != 2)
    {
      goto LABEL_31;
    }
  }

  else if (v145 == 2 || ((v143 ^ v145) & 1) != 0)
  {
    goto LABEL_31;
  }

  v146 = v57 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__durationMilliseconds;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v147 = *v146;
  v148 = *(v146 + 8);
  v149 = v61 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__durationMilliseconds;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (v148)
  {
    if ((*(v149 + 8) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if ((*(v149 + 8) & 1) != 0 || v147 != *v149)
  {
    goto LABEL_31;
  }

  v150 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__showPopularityIndicator;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v151 = *(v57 + v150);
  v152 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__showPopularityIndicator;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v153 = *(v61 + v152);
  if (v151 == 2)
  {
    if (v153 != 2)
    {
      goto LABEL_31;
    }
  }

  else if (v153 == 2 || ((v151 ^ v153) & 1) != 0)
  {
    goto LABEL_31;
  }

  v154 = (v57 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__rankingText);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v155 = *v154;
  v156 = v154[1];
  v157 = (v61 + OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__rankingText);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v158 = v157[1];
  if (v156)
  {
    if (!v158)
    {
      goto LABEL_31;
    }

    if (v155 != *v157 || v156 != v158)
    {
      OUTLINED_FUNCTION_7_4();
      if ((sub_21700F7D4() & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v158)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  sub_21700DF14();
  v160 = OUTLINED_FUNCTION_7_4();
  sub_216F26500(v160, v161);
  v163 = v162;

  if ((v163 & 1) == 0)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  sub_21700DF14();
  v164 = OUTLINED_FUNCTION_7_4();
  sub_216F26500(v164, v165);
  v167 = v166;

  if ((v167 & 1) == 0)
  {
    goto LABEL_31;
  }

  v168 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isProminent;
  OUTLINED_FUNCTION_74_16();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v169 = *(v167 + v168);
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_71_4();
  if (v55)
  {
    if (v170 != 2)
    {
      goto LABEL_31;
    }
  }

  else if (v170 == 2 || ((v169 ^ v170) & 1) != 0)
  {
    goto LABEL_31;
  }

  v171 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isDisabled;
  OUTLINED_FUNCTION_74_16();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v172 = *(v167 + v171);
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_71_4();
  if (v55)
  {
    if (v173 != 2)
    {
      goto LABEL_31;
    }
  }

  else if (v173 == 2 || ((v172 ^ v173) & 1) != 0)
  {
    goto LABEL_31;
  }

  v174 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__hasVideo_p;
  OUTLINED_FUNCTION_74_16();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v175 = *(v167 + v174);
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_71_4();
  if (v55)
  {
    if (v176 != 2)
    {
      goto LABEL_31;
    }
  }

  else if (v176 == 2 || ((v175 ^ v176) & 1) != 0)
  {
    goto LABEL_31;
  }

  v177 = OBJC_IVAR____TtCV18SwiftMusicProtocol19PlaylistTrackLockupP33_72E81544EFE187424C0AE0B2774155DF13_StorageClass__isPreviewMode;
  OUTLINED_FUNCTION_74_16();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v178 = *(v167 + v177);
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_71_4();
  if (v55)
  {
    if (v179 == 2)
    {
      goto LABEL_114;
    }

LABEL_31:

    return 0;
  }

  if (v179 == 2 || ((v178 ^ v179) & 1) != 0)
  {
    goto LABEL_31;
  }

LABEL_114:
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_49_2();
  sub_216683A80(v180, v181, v182, v183);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_82_18();
  v184 = v204;
  OUTLINED_FUNCTION_49_2();
  sub_216683A80(v185, v186, v187, v188);
  OUTLINED_FUNCTION_49_2();
  sub_216683A80(v189, v190, v191, v192);
  OUTLINED_FUNCTION_31_2(v184, 1, v211);
  if (v55)
  {

    sub_216697664(v207, &qword_27CACE120, &unk_217074850);
    OUTLINED_FUNCTION_31_2(&unk_27CACE000 + v204, 1, v211);
    if (v55)
    {
      sub_216697664(v204, &qword_27CACE120, &unk_217074850);
      return 1;
    }

LABEL_122:
    sub_216697664(v204, &qword_27CACE3C0, &qword_217074170);
    return 0;
  }

  v193 = v204;
  sub_216683A80(v204, v206, &qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_31_2(&unk_27CACE000 + v193, 1, v211);
  if (v194)
  {

    sub_216697664(v207, &qword_27CACE120, &unk_217074850);
    OUTLINED_FUNCTION_8_122();
    sub_216F53680();
    goto LABEL_122;
  }

  OUTLINED_FUNCTION_33_3();
  sub_216F535D8();
  sub_216FE1ABC();
  v196 = v195;

  OUTLINED_FUNCTION_86_13();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v197, v198, v199);
  sub_216F53680();
  OUTLINED_FUNCTION_82_2();
  sub_216697664(v200, v201, v202);
  return (v196 & 1) != 0;
}

uint64_t sub_216F560AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F5622C(&qword_27CACE8C0, type metadata accessor for PlaylistTrackLockup, &unk_217074DA8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F56140(uint64_t a1)
{
  v2 = sub_216F5622C(&qword_27CAC38E0, type metadata accessor for PlaylistTrackLockup, &unk_217074D30);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F561B0(uint64_t a1, uint64_t a2)
{
  sub_216F5622C(&qword_27CAC38E0, type metadata accessor for PlaylistTrackLockup, &unk_217074D30);

  return sub_217007A34();
}

uint64_t sub_216F5622C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216F562A0()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22D90);
  __swift_project_value_buffer(v0, qword_27CB22D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217013D90;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tracks";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "container_content_descriptor";
  *(v10 + 1) = 28;
  v10[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F564C0()
{
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_615();
      sub_216F565D8(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_615();
      sub_216F56538(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_216F56538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlaylistTrackLockup(0);
  sub_216F5622C(&qword_27CAC38E0, type metadata accessor for PlaylistTrackLockup, &unk_217074D30);
  return sub_2170079C4();
}

uint64_t sub_216F565D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlaylistTrackLockupCollection(0);
  type metadata accessor for ContentDescriptor(0);
  sub_216F5622C(&qword_27CACE3E0, type metadata accessor for ContentDescriptor, &unk_21707D078);
  return sub_2170079D4();
}

uint64_t sub_216F5668C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PlaylistTrackLockup(0), sub_216F5622C(&qword_27CAC38E0, type metadata accessor for PlaylistTrackLockup, &unk_217074D30), result = sub_217007AF4(), !v4))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_615();
    result = sub_216F5678C(v6, v7, v8, v9);
    if (!v4)
    {
      type metadata accessor for PlaylistTrackLockupCollection(0);
      OUTLINED_FUNCTION_47_2();
      return sub_217007864();
    }
  }

  return result;
}

uint64_t sub_216F5678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for PlaylistTrackLockupCollection(0);
  sub_216683A80(a1 + *(v9 + 24), v7, &qword_27CACE120, &unk_217074850);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_216697664(v7, &qword_27CACE120, &unk_217074850);
  }

  sub_216F535D8();
  sub_216F5622C(&qword_27CACE3E0, type metadata accessor for ContentDescriptor, &unk_21707D078);
  sub_217007B04();
  return sub_216F53680();
}

void sub_216F56960()
{
  OUTLINED_FUNCTION_49();
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for ContentDescriptor(v3);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE3C0, &qword_217074170);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_2();
  sub_216F26090();
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  v21 = type metadata accessor for PlaylistTrackLockupCollection(0);
  v13 = *(v21 + 24);
  v14 = *(v10 + 48);
  sub_216683A80(v1 + v13, v2, &qword_27CACE120, &unk_217074850);
  sub_216683A80(v0 + v13, v2 + v14, &qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_31_2(v2, 1, v4);
  if (v15)
  {
    OUTLINED_FUNCTION_31_2(v2 + v14, 1, v4);
    if (v15)
    {
      sub_216697664(v2, &qword_27CACE120, &unk_217074850);
LABEL_13:
      sub_217007884();
      OUTLINED_FUNCTION_34_41();
      sub_216F5622C(v18, v19, MEMORY[0x277D216D0]);
      sub_21700E494();
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_216683A80(v2, v9, &qword_27CACE120, &unk_217074850);
  OUTLINED_FUNCTION_31_2(v2 + v14, 1, v4);
  if (v15)
  {
    OUTLINED_FUNCTION_8_122();
    sub_216F53680();
LABEL_10:
    sub_216697664(v2, &qword_27CACE3C0, &qword_217074170);
    goto LABEL_11;
  }

  sub_216F535D8();
  sub_216FE1ABC();
  v17 = v16;
  sub_216F53680();
  sub_216F53680();
  sub_216697664(v2, &qword_27CACE120, &unk_217074850);
  if (v17)
  {
    goto LABEL_13;
  }

LABEL_11:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F56C54(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_21700F8F4();
  a1(0);
  sub_216F5622C(a2, a3, a4);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F56D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F5622C(&qword_27CACE8B8, type metadata accessor for PlaylistTrackLockupCollection, &unk_217074F10);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F56DA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F56E0C(uint64_t a1)
{
  v2 = sub_216F5622C(&qword_27CACE870, type metadata accessor for PlaylistTrackLockupCollection, &unk_217074E98);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F56E7C(uint64_t a1, uint64_t a2)
{
  sub_216F5622C(&qword_27CACE870, type metadata accessor for PlaylistTrackLockupCollection, &unk_217074E98);

  return sub_217007A34();
}

uint64_t sub_216F57164(uint64_t a1)
{
  result = sub_217007884();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PlaylistTrackLockup._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_216F57210(uint64_t a1)
{
  sub_216F5730C(319, &qword_27CACE8A0, type metadata accessor for PlaylistTrackLockup, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_217007884();
    if (v2 <= 0x3F)
    {
      sub_216F5730C(319, qword_280E49D78, type metadata accessor for ContentDescriptor, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216F5730C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216F57378(uint64_t a1)
{
  sub_216F5730C(319, qword_280E48698, type metadata accessor for AnyAction, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_216F5730C(319, &qword_27CACE350, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_216F5730C(319, qword_280E49D78, type metadata accessor for ContentDescriptor, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_216F57548()
{
  OUTLINED_FUNCTION_8_123();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F575C8()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_36_49();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v7 = OUTLINED_FUNCTION_18();
    v8 = sub_216F5B3FC(v7);
    OUTLINED_FUNCTION_97_0(v8);
  }

  OUTLINED_FUNCTION_139(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
}

void (*sub_216F57654())(void **a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_136();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_54_0(v3) + 40) = v0;
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  sub_21700DF14();
  return sub_216F576E0;
}

BOOL sub_216F576F8()
{
  OUTLINED_FUNCTION_8_123();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return *(v2 + 24) != 0;
}

uint64_t sub_216F57740()
{
  v3 = OUTLINED_FUNCTION_68_19();
  v5 = *(v0 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v5 = sub_216F5B3FC(v5);
    *(v1 + v2) = v5;
  }

  OUTLINED_FUNCTION_139(v5 + 16, v4);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
}

void sub_216F577BC()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_46(v8);
  type metadata accessor for AnyAction(v9);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_120_1(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v13)
  {
    v14 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_30_58(v14);
    OUTLINED_FUNCTION_6_3();
    if (!v13)
    {
      sub_216697664(v0, &qword_27CABFF98, &unk_217049930);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F5BCEC();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F579AC()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_47_0(v3);
  v4 = OUTLINED_FUNCTION_119();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_36(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_46(v8);
  type metadata accessor for AnyAction(v9);
  OUTLINED_FUNCTION_34();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_120_1(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_7_127();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_6_3();
  if (v13)
  {
    v14 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
    OUTLINED_FUNCTION_30_58(v14);
    OUTLINED_FUNCTION_6_3();
    if (!v13)
    {
      sub_216697664(v0, &qword_27CABFF98, &unk_217049930);
    }
  }

  else
  {
    OUTLINED_FUNCTION_98();
    sub_216F5BCEC();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216F57B24(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_109();
    sub_216F5BD40();
    a3(v5);
    OUTLINED_FUNCTION_108();
    sub_216F5BD94();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v7);

  free(v4);
}

uint64_t sub_216F57BFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_76();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  OUTLINED_FUNCTION_7_127();
  v15 = *a3;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_216683A80(v5 + v15, v14, v6, v4);
  v16 = a4(0);
  OUTLINED_FUNCTION_31_2(v14, 1, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_216697664(v14, v6, v4);
  return v18;
}

uint64_t sub_216F57D00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_76();
  v9 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = *(type metadata accessor for SongTrackLockup(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v5 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v19 = OUTLINED_FUNCTION_18();
    v18 = sub_216F5B3FC(v19);
    *(v9 + v16) = v18;
  }

  v20 = a3(0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v20);
  v21 = *a4;
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_2166861C8(v15, v18 + v21, v6, v4);
  return swift_endAccess();
}

uint64_t sub_216F57E0C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE100, &qword_21707B640);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_3();
  v6 = OUTLINED_FUNCTION_36_49();
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_82();
    v8 = OUTLINED_FUNCTION_18();
    v9 = sub_216F5B3FC(v8);
    OUTLINED_FUNCTION_97_0(v9);
  }

  OUTLINED_FUNCTION_3_184();
  sub_216F5BCEC();
  type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OBJC_IVAR____TtCV18SwiftMusicProtocol15SongTrackLockupP33_389D0AA556024B814D5B75CF16C2884913_StorageClass__artwork;
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_2166861C8(v1, v7 + v14, &qword_27CACE100, &qword_21707B640);
  return swift_endAccess();
}