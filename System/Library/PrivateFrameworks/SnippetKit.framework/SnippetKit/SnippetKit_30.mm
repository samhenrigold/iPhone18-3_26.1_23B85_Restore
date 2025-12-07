uint64_t sub_26A3E5310()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3E5364()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3E53B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

void static ImageElement.SourceType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v120 = v1;
  v121 = v2;
  v3 = type metadata accessor for ImageElement.BadgedImage(0);
  v4 = OUTLINED_FUNCTION_41(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v116 = v5;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48();
  v117 = v7;
  v8 = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for ImageElement.Contact(v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v113 = v11;
  v12 = OUTLINED_FUNCTION_45();
  v109 = type metadata accessor for ImageElement.Url(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v115 = v14;
  v15 = OUTLINED_FUNCTION_45();
  v16 = type metadata accessor for ImageElement.AppIcon(v15);
  v17 = OUTLINED_FUNCTION_41(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  v114 = v18;
  v19 = OUTLINED_FUNCTION_45();
  v20 = type metadata accessor for ImageElement.Bundle(v19);
  v21 = OUTLINED_FUNCTION_41(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11();
  v112 = v22;
  v23 = OUTLINED_FUNCTION_45();
  v24 = type metadata accessor for ImageElement.AssetData(v23);
  v25 = OUTLINED_FUNCTION_41(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_11();
  v111 = v26;
  v27 = OUTLINED_FUNCTION_45();
  v28 = type metadata accessor for ImageElement.PNGData(v27);
  v29 = OUTLINED_FUNCTION_41(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_11();
  v110 = v30;
  v31 = OUTLINED_FUNCTION_45();
  v32 = type metadata accessor for ImageElement.Symbol(v31);
  v33 = OUTLINED_FUNCTION_41(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11();
  v108 = v34;
  v35 = OUTLINED_FUNCTION_45();
  type metadata accessor for ImageElement.SourceType(v35);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_204_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47();
  v119 = v39;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47();
  v118 = v41;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v42);
  v44 = &v108 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v108 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v108 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = (&v108 - v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373A10, &qword_26A443F30);
  OUTLINED_FUNCTION_41(v54);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v55);
  v57 = &v108 - v56;
  sub_26A3E5310();
  sub_26A3E5310();
  OUTLINED_FUNCTION_12_2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12() == 1)
      {
        v91 = v110;
        sub_26A3E5364();
        static _ProtoImageElement.DataMessage.== infix(_:_:)();
        v74 = v57;
        OUTLINED_FUNCTION_40_21();
        sub_26A3E53B8(v91, v92);
        v76 = v50;
        goto LABEL_33;
      }

      v58 = type metadata accessor for ImageElement.PNGData;
      v59 = v50;
      goto LABEL_42;
    case 2u:
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12() == 2)
      {
        v73 = v111;
        sub_26A3E5364();
        static _ProtoImageElement.DataMessage.== infix(_:_:)();
        v74 = v57;
        OUTLINED_FUNCTION_44_17();
        sub_26A3E53B8(v73, v75);
        v76 = v47;
        goto LABEL_33;
      }

      v58 = type metadata accessor for ImageElement.AssetData;
      v59 = v47;
      goto LABEL_42;
    case 3u:
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12() == 3)
      {
        v77 = v112;
        sub_26A3E5364();
        static _ProtoImageElement.Bundle.== infix(_:_:)();
        v78 = v57;
        OUTLINED_FUNCTION_41_19();
        sub_26A3E53B8(v77, v79);
        v80 = v44;
        v81 = v53;
        goto LABEL_47;
      }

      v58 = type metadata accessor for ImageElement.Bundle;
      v59 = v44;
      goto LABEL_42;
    case 4u:
      v60 = v118;
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12() != 4)
      {
        v58 = type metadata accessor for ImageElement.AppIcon;
        v59 = v60;
        goto LABEL_42;
      }

      v61 = v114;
      sub_26A3E5364();
      v62 = *v60 == *v61 && *(v60 + 8) == *(v61 + 8);
      if (v62 || (sub_26A425354() & 1) != 0)
      {
        v63 = *(v60 + 24);
        v64 = *(v61 + 16);
        v65 = *(v61 + 24);
        v124 = *(v60 + 16);
        v125 = v63;
        v122 = v64;
        v123 = v65;
        v66 = _ProtoImageElement.ImageStyle.rawValue.getter();
        if (v66 == _ProtoImageElement.ImageStyle.rawValue.getter())
        {
          type metadata accessor for _ProtoImageElement.AppIcon(0);
          sub_26A424794();
          OUTLINED_FUNCTION_19_31();
          sub_26A3E7CE8(v67, v68, MEMORY[0x277D216D0]);
          sub_26A424B64();
        }
      }

      sub_26A3E53B8(v61, type metadata accessor for ImageElement.AppIcon);
      v69 = OUTLINED_FUNCTION_37_0();
      sub_26A3E53B8(v69, v70);
      OUTLINED_FUNCTION_8_42();
      v72 = v57;
      goto LABEL_50;
    case 5u:
      v0 = v119;
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12() != 5)
      {
        v105 = type metadata accessor for ImageElement.Url;
        goto LABEL_41;
      }

      v82 = v57;
      v93 = v115;
      sub_26A3E5364();
      if ((sub_26A4245F4() & 1) != 0 && static RFImage.Url.== infix(_:_:)(v0 + *(v109 + 20), v93 + *(v109 + 20)))
      {
        v94 = *(v109 + 24);
        v95 = v0 + v94;
        v96 = v93 + v94;
        v97 = type metadata accessor for _ProtoImageElement.Url(0);
        if (*(v95 + *(v97 + 20)) == *(v96 + *(v97 + 20)) || (, , v98 = OUTLINED_FUNCTION_78_1(), v100 = sub_26A251BDC(v98, v99), , , v100))
        {
          sub_26A424794();
          OUTLINED_FUNCTION_19_31();
          sub_26A3E7CE8(v101, v102, MEMORY[0x277D216D0]);
          OUTLINED_FUNCTION_175();
          if (sub_26A424B64())
          {
            sub_26A3E53B8(v93, type metadata accessor for ImageElement.Url);
            sub_26A3E53B8(v0, type metadata accessor for ImageElement.Url);
            goto LABEL_21;
          }
        }
      }

      sub_26A3E53B8(v93, type metadata accessor for ImageElement.Url);
      sub_26A3E53B8(v0, type metadata accessor for ImageElement.Url);
      goto LABEL_49;
    case 6u:
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12() == 6)
      {
        v103 = v113;
        sub_26A3E5364();
        static _ProtoImageElement.Contact.== infix(_:_:)();
        v74 = v57;
        OUTLINED_FUNCTION_37_16();
        sub_26A3E53B8(v103, v104);
        v76 = v0;
LABEL_33:
        sub_26A3E53B8(v76, v53);
        OUTLINED_FUNCTION_8_42();
        v72 = v74;
        goto LABEL_50;
      }

      v105 = type metadata accessor for ImageElement.Contact;
LABEL_41:
      v58 = v105;
      v59 = v0;
      goto LABEL_42;
    case 7u:
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12() != 7)
      {

        goto LABEL_43;
      }

      swift_projectBox();
      v82 = v57;
      swift_projectBox();
      v83 = v117;
      sub_26A3E5310();
      v84 = v116;
      sub_26A3E5310();
      v85 = type metadata accessor for _ProtoImageElement.BadgedImage(0);
      if (*(v83 + *(v85 + 20)) == *(v84 + *(v85 + 20)) || (, , OUTLINED_FUNCTION_175(), sub_26A2498D0(), v87 = v86, , , (v87 & 1) != 0))
      {
        sub_26A424794();
        OUTLINED_FUNCTION_19_31();
        sub_26A3E7CE8(v88, v89, MEMORY[0x277D216D0]);
        v90 = sub_26A424B64();
        sub_26A3E53B8(v84, type metadata accessor for ImageElement.BadgedImage);
        sub_26A3E53B8(v83, type metadata accessor for ImageElement.BadgedImage);

        if (v90)
        {
LABEL_21:
          v71 = type metadata accessor for ImageElement.SourceType;
          v72 = v82;
          goto LABEL_50;
        }
      }

      else
      {
        sub_26A3E53B8(v84, type metadata accessor for ImageElement.BadgedImage);
        sub_26A3E53B8(v83, type metadata accessor for ImageElement.BadgedImage);
      }

LABEL_49:
      v71 = type metadata accessor for ImageElement.SourceType;
      v72 = v82;
      goto LABEL_50;
    default:
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12())
      {
        v58 = type metadata accessor for ImageElement.Symbol;
        v59 = v53;
LABEL_42:
        sub_26A3E53B8(v59, v58);
LABEL_43:
        sub_26A0E48F0(v57, &qword_280373A10, &qword_26A443F30);
      }

      else
      {
        v106 = v108;
        sub_26A3E5364();
        static _ProtoImageElement.Symbol.== infix(_:_:)();
        v78 = v57;
        OUTLINED_FUNCTION_34_16();
        sub_26A3E53B8(v106, v107);
        v80 = OUTLINED_FUNCTION_175();
LABEL_47:
        sub_26A3E53B8(v80, v81);
        OUTLINED_FUNCTION_8_42();
        v72 = v78;
LABEL_50:
        sub_26A3E53B8(v72, v71);
      }

      OUTLINED_FUNCTION_75();
      return;
  }
}

void ImageElement.SourceType.hash(into:)()
{
  OUTLINED_FUNCTION_76();
  v46 = v4;
  v5 = type metadata accessor for ImageElement.BadgedImage(0);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v45 = v7;
  v8 = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for ImageElement.Contact(v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v11 = OUTLINED_FUNCTION_14_29();
  type metadata accessor for ImageElement.Url(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v13 = OUTLINED_FUNCTION_54_16();
  v14 = type metadata accessor for ImageElement.AppIcon(v13);
  v15 = OUTLINED_FUNCTION_41(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v16 = OUTLINED_FUNCTION_55_8();
  v17 = type metadata accessor for ImageElement.Bundle(v16);
  v18 = OUTLINED_FUNCTION_41(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v21 = v20 - v19;
  v22 = type metadata accessor for ImageElement.AssetData(0);
  v23 = OUTLINED_FUNCTION_41(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v24 = OUTLINED_FUNCTION_70_11();
  v25 = type metadata accessor for ImageElement.PNGData(v24);
  v26 = OUTLINED_FUNCTION_41(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18();
  v29 = v28 - v27;
  v30 = type metadata accessor for ImageElement.Symbol(0);
  v31 = OUTLINED_FUNCTION_41(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18();
  v32 = OUTLINED_FUNCTION_29_21();
  type metadata accessor for ImageElement.SourceType(v32);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  OUTLINED_FUNCTION_20_33();
  sub_26A3E5310();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A3E5364();
      MEMORY[0x26D65C340](1);
      type metadata accessor for _ProtoImageElement.DataMessage(0);
      OUTLINED_FUNCTION_9_46();
      sub_26A3E7CE8(v43, v44, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_5_55();
      v37 = v29;
      goto LABEL_10;
    case 2u:
      sub_26A3E5364();
      MEMORY[0x26D65C340](2);
      type metadata accessor for _ProtoImageElement.DataMessage(0);
      OUTLINED_FUNCTION_9_46();
      sub_26A3E7CE8(v38, v39, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_45_13();
      v37 = v3;
      goto LABEL_10;
    case 3u:
      sub_26A3E5364();
      MEMORY[0x26D65C340](3);
      type metadata accessor for _ProtoImageElement.Bundle(0);
      OUTLINED_FUNCTION_14_33();
      sub_26A3E7CE8(v40, v41, &protocol conformance descriptor for _ProtoImageElement.Bundle);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_7_32();
      v37 = v21;
      goto LABEL_10;
    case 4u:
      sub_26A3E5364();
      MEMORY[0x26D65C340](4);
      type metadata accessor for _ProtoImageElement.AppIcon(0);
      sub_26A3E7CE8(&qword_280370970, type metadata accessor for _ProtoImageElement.AppIcon, &protocol conformance descriptor for _ProtoImageElement.AppIcon);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      v37 = OUTLINED_FUNCTION_35_26();
      goto LABEL_10;
    case 5u:
      OUTLINED_FUNCTION_78_1();
      sub_26A3E5364();
      MEMORY[0x26D65C340](5);
      sub_26A424614();
      sub_26A3E7CE8(&unk_28157B740, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_26A424B44();
      RFImage.Url.hash(into:)(v46);
      type metadata accessor for _ProtoImageElement.Url(0);
      sub_26A3E7CE8(&qword_28157A2A8, type metadata accessor for _ProtoImageElement.Url, &protocol conformance descriptor for _ProtoImageElement.Url);
      sub_26A424B44();
      OUTLINED_FUNCTION_39_24();
      v37 = v1;
      goto LABEL_10;
    case 6u:
      sub_26A3E5364();
      MEMORY[0x26D65C340](6);
      type metadata accessor for _ProtoImageElement.Contact(0);
      sub_26A3E7CE8(&qword_28036D9C0, type metadata accessor for _ProtoImageElement.Contact, &protocol conformance descriptor for _ProtoImageElement.Contact);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_38_19();
      v37 = v2;
      goto LABEL_10;
    case 7u:
      swift_projectBox();
      OUTLINED_FUNCTION_46_13();
      sub_26A3E5310();
      MEMORY[0x26D65C340](7);
      type metadata accessor for _ProtoImageElement.BadgedImage(0);
      sub_26A3E7CE8(&qword_28036FD70, type metadata accessor for _ProtoImageElement.BadgedImage, &protocol conformance descriptor for _ProtoImageElement.BadgedImage);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_6_39();
      sub_26A3E53B8(v45, v42);

      goto LABEL_11;
    default:
      sub_26A3E5364();
      MEMORY[0x26D65C340](0);
      type metadata accessor for _ProtoImageElement.Symbol(0);
      OUTLINED_FUNCTION_21_29();
      sub_26A3E7CE8(v34, v35, &protocol conformance descriptor for _ProtoImageElement.Symbol);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_0_86();
      v37 = v0;
LABEL_10:
      sub_26A3E53B8(v37, v36);
LABEL_11:
      OUTLINED_FUNCTION_75();
      return;
  }
}

uint64_t sub_26A3E66F4(uint64_t a1, uint64_t a2)
{
  v18 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  MEMORY[0x28223BE20](v18);
  v17[1] = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for ImageElement.AspectRatio(0);
  MEMORY[0x28223BE20](v8);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *a1;
  v12 = *(a1 + 8);
  sub_26A0E45C0(*a2, v9);
  sub_26A0E4784(v11, v12);
  *a1 = v10;
  *(a1 + 8) = v9;
  v13 = *(a2 + 24);
  v19 = *(a2 + 16);
  v20 = v13;
  sub_26A217A84(&v19, &v21);
  sub_26A217AB0(&v19);
  v14 = v20;
  *(a1 + 16) = v19;
  *(a1 + 24) = v14;
  ImageElement.PNGData.aspectRatio.getter();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CBB8, &qword_26A4265C8);
  }

  sub_26A3E5364();
  sub_26A3E5364();
  v16 = *(type metadata accessor for _ProtoImageElement.DataMessage(0) + 36);
  sub_26A0E48F0(a1 + v16, &qword_28036D1A0, &qword_26A427150);
  sub_26A3E5364();
  return __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v18);
}

uint64_t sub_26A3E695C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ImageElement.AspectRatio(0);
  MEMORY[0x28223BE20](v8);
  v9 = *a2;
  v10 = a2[1];

  *a1 = v9;
  *(a1 + 8) = v10;
  v11 = a2[2];
  v12 = a2[3];

  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  v13 = *(a2 + 40);
  v18 = a2[4];
  v19 = v13;
  sub_26A217A84(&v18, &v20);
  sub_26A217AB0(&v18);
  v14 = v19;
  *(a1 + 32) = v18;
  *(a1 + 40) = v14;
  ImageElement.Bundle.aspectRatio.getter();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CBB8, &qword_26A4265C8);
  }

  sub_26A3E5364();
  sub_26A3E5364();
  v16 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 40);
  sub_26A0E48F0(a1 + v16, &qword_28036D1A0, &qword_26A427150);
  sub_26A3E5364();
  return __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v4);
}

uint64_t sub_26A3E6BD0(uint64_t a1, uint64_t *a2)
{
  v23 = type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  MEMORY[0x28223BE20](v23);
  v22[2] = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v22 - v6;
  v24 = type metadata accessor for ImageElement.Background(0);
  MEMORY[0x28223BE20](v24);
  v22[1] = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = type metadata accessor for _ProtoColor(0);
  MEMORY[0x28223BE20](v22[0]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v12 = type metadata accessor for Color(0);
  MEMORY[0x28223BE20](v12);
  v13 = *a2;
  v14 = a2[1];

  *a1 = v13;
  *(a1 + 8) = v14;
  ImageElement.Symbol.tintColor.getter();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_26A0E48F0(v11, &qword_28036CBA0, &qword_26A4265B0);
  }

  else
  {
    sub_26A3E5364();
    sub_26A3E5364();
    v15 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 48);
    sub_26A0E48F0(a1 + v15, &qword_28036CCD8, &unk_26A432950);
    sub_26A3E5364();
    __swift_storeEnumTagSinglePayload(a1 + v15, 0, 1, v22[0]);
  }

  v16 = *(a2 + 24);
  v25 = a2[2];
  v26 = v16;
  sub_26A217A84(&v25, &v27);
  sub_26A217AB0(&v25);
  v17 = v26;
  *(a1 + 16) = v25;
  *(a1 + 24) = v17;
  v18 = *(a2 + 40) == 1 && a2[4] != 0;
  *(a1 + 32) = v18;
  *(a1 + 40) = 1;
  ImageElement.Symbol.background.getter();
  if (__swift_getEnumTagSinglePayload(v7, 1, v24) == 1)
  {
    result = sub_26A0E48F0(v7, &qword_28036D4D0, &qword_26A428230);
  }

  else
  {
    sub_26A3E5364();
    sub_26A3E5364();
    v20 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 52);
    sub_26A0E48F0(a1 + v20, &qword_28036D4C8, &qword_26A428228);
    sub_26A3E5364();
    result = __swift_storeEnumTagSinglePayload(a1 + v20, 0, 1, v23);
  }

  if (*(a2 + 80) != 1 || (v21 = a2[9]) == 0)
  {
    v21 = 0;
  }

  *(a1 + 72) = v21;
  *(a1 + 80) = 1;
  return result;
}

void static ImageElement.SourceType.LoadingImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v32[1] = v3;
  v4 = type metadata accessor for ImageElement.Symbol(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v32[0] = v6;
  v7 = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for ImageElement.Bundle(v7);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  v10 = type metadata accessor for ImageElement.PNGData(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v12 = OUTLINED_FUNCTION_14_29();
  type metadata accessor for ImageElement.SourceType.LoadingImage(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_204_0();
  MEMORY[0x28223BE20](v18);
  v20 = v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373A18, &qword_26A443F38);
  OUTLINED_FUNCTION_41(v21);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v22);
  v24 = v32 - v23;
  v25 = type metadata accessor for ImageElement.SourceType.LoadingImage;
  sub_26A3E5310();
  sub_26A3E5310();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26A3E5310();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26A3E5364();
        static _ProtoImageElement.Bundle.== infix(_:_:)();
        v25 = type metadata accessor for ImageElement.Bundle;
        sub_26A3E53B8(v0, type metadata accessor for ImageElement.Bundle);
        v27 = v2;
LABEL_13:
        sub_26A3E53B8(v27, v25);
        sub_26A3E53B8(v24, type metadata accessor for ImageElement.SourceType.LoadingImage);
        goto LABEL_14;
      }

      v28 = type metadata accessor for ImageElement.Bundle;
      v29 = v2;
    }

    else
    {
      sub_26A3E5310();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v30 = v32[0];
        sub_26A3E5364();
        OUTLINED_FUNCTION_217_0();
        static _ProtoImageElement.Symbol.== infix(_:_:)();
        OUTLINED_FUNCTION_34_16();
        sub_26A3E53B8(v30, v31);
        v27 = v16;
        goto LABEL_13;
      }

      v28 = type metadata accessor for ImageElement.Symbol;
      v29 = v16;
    }
  }

  else
  {
    sub_26A3E5310();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A3E5364();
      static _ProtoImageElement.DataMessage.== infix(_:_:)();
      v25 = type metadata accessor for ImageElement.PNGData;
      sub_26A3E53B8(v1, type metadata accessor for ImageElement.PNGData);
      v27 = v20;
      goto LABEL_13;
    }

    v28 = type metadata accessor for ImageElement.PNGData;
    v29 = v20;
  }

  sub_26A3E53B8(v29, v28);
  sub_26A0E48F0(v24, &qword_280373A18, &qword_26A443F38);
LABEL_14:
  OUTLINED_FUNCTION_75();
}

uint64_t ImageElement.SourceType.LoadingImage.hash(into:)()
{
  v3 = type metadata accessor for ImageElement.Symbol(0);
  v4 = OUTLINED_FUNCTION_41(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v5 = OUTLINED_FUNCTION_29_21();
  v6 = type metadata accessor for ImageElement.Bundle(v5);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  v8 = type metadata accessor for ImageElement.PNGData(0);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v10 = OUTLINED_FUNCTION_54_16();
  type metadata accessor for ImageElement.SourceType.LoadingImage(v10);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_29();
  sub_26A3E5310();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_217_0();
      sub_26A3E5364();
      MEMORY[0x26D65C340](1);
      type metadata accessor for _ProtoImageElement.Bundle(0);
      OUTLINED_FUNCTION_14_33();
      sub_26A3E7CE8(v13, v14, &protocol conformance descriptor for _ProtoImageElement.Bundle);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_7_32();
      v16 = v1;
    }

    else
    {
      OUTLINED_FUNCTION_37_0();
      sub_26A3E5364();
      MEMORY[0x26D65C340](2);
      type metadata accessor for _ProtoImageElement.Symbol(0);
      OUTLINED_FUNCTION_21_29();
      sub_26A3E7CE8(v19, v20, &protocol conformance descriptor for _ProtoImageElement.Symbol);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_0_86();
      v16 = v0;
    }
  }

  else
  {
    sub_26A3E5364();
    MEMORY[0x26D65C340](0);
    type metadata accessor for _ProtoImageElement.DataMessage(0);
    OUTLINED_FUNCTION_9_46();
    sub_26A3E7CE8(v17, v18, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
    OUTLINED_FUNCTION_84_5();
    sub_26A424B44();
    OUTLINED_FUNCTION_5_55();
    v16 = v2;
  }

  return sub_26A3E53B8(v16, v15);
}

uint64_t sub_26A3E7C34(uint64_t (*a1)(void *))
{
  sub_26A425504();
  a1(v3);
  return sub_26A425554();
}

uint64_t sub_26A3E7C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_26A425504();
  a4(v6);
  return sub_26A425554();
}

uint64_t sub_26A3E7CE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A3E7DE0(uint64_t a1)
{
  result = type metadata accessor for ImageElement.Symbol(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ImageElement.PNGData(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ImageElement.AssetData(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ImageElement.Bundle(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ImageElement.AppIcon(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ImageElement.Url(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for ImageElement.Contact(319);
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A3E7EC4(uint64_t a1)
{
  result = type metadata accessor for ImageElement.PNGData(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ImageElement.Bundle(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ImageElement.Symbol(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26A3E7F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_51_19@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = v1;

  return sub_26A217A84(v2 - 112, (v2 - 136));
}

uint64_t OUTLINED_FUNCTION_61_16(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_64_14()
{

  return type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
}

uint64_t OUTLINED_FUNCTION_74_12()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_82_12@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = v1;

  return sub_26A217A84(v2 - 96, (v2 - 81));
}

uint64_t OUTLINED_FUNCTION_83_11(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_84_9()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

Swift::String __swiftcall FactItemShortNumber.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v97 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v103 = &v96 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v102 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v98 = &v96 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v101 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v96 - v17;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v100 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v96 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v25 = OUTLINED_FUNCTION_41(v24);
  MEMORY[0x28223BE20](v25);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
  v99 = v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v96 - v31;
  v33 = type metadata accessor for FactItemShortNumber(0);
  v34 = OUTLINED_FUNCTION_41(v33);
  MEMORY[0x28223BE20](v34);
  MEMORY[0x28223BE20](v35);
  v37 = &v96 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD50, &unk_26A426830);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v39);
  v41 = &v96 - v40;
  OUTLINED_FUNCTION_22_32();
  sub_26A3EC980();
  if (v3)
  {
    _ProtoFactItem_ShortNumber.redactedProto.getter();
  }

  else
  {
    sub_26A3EC980();
  }

  OUTLINED_FUNCTION_58_19();
  v41[*(v38 + 32)] = v3 & 1;
  sub_26A3EC52C(v37, type metadata accessor for FactItemShortNumber);
  v42 = MEMORY[0x277D84F90];
  *&v41[*(v38 + 28)] = MEMORY[0x277D84F90];
  v43 = *&v41[*(type metadata accessor for _ProtoFactItem_ShortNumber(0) + 20)];
  OUTLINED_FUNCTION_142(v43 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number, &v105);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_0(v18);
  if (v44)
  {
    *v23 = v42;
    *(v23 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v45 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v45);
    OUTLINED_FUNCTION_48_0(v18);
    v52 = v100;
    if (!v44)
    {
      sub_26A0E48F0(v18, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3EC4D8();
    v52 = v100;
  }

  sub_26A3EC4D8();
  v53 = type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);
  sub_26A107BE8(v32, 0x7265626D756ELL, 0xE600000000000000);
  sub_26A0E48F0(v32, &qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_142(v43 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, &v104);
  v57 = v101;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_0(v57);
  if (v44)
  {
    *v52 = v42;
    *(v52 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v58 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v58);
    OUTLINED_FUNCTION_48_0(v57);
    if (!v44)
    {
      sub_26A0E48F0(v57, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3EC4D8();
  }

  v65 = v99;
  sub_26A3EC4D8();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v53);
  OUTLINED_FUNCTION_222();
  sub_26A107BE8(v65, v69 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v65);
  v70 = v98;
  FactItemShortNumber.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A107C10(v70, v71 & 0xFFFF0000FFFFFFFFLL | 0x3200000000, 0xE500000000000000);
  sub_26A0E48F0(v70, &qword_28036CB28, &qword_26A427980);
  FactItemShortNumber.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A107C10(v70, v72 & 0xFFFF0000FFFFFFFFLL | 0x3300000000, 0xE500000000000000);
  sub_26A0E48F0(v70, &qword_28036CB28, &qword_26A427980);
  FactItemShortNumber.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A107BE8(v27, v73 & 0xFFFF0000FFFFFFFFLL | 0x3400000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v27);
  FactItemShortNumber.unit.getter();
  sub_26A107BE8(v27, 1953066613, 0xE400000000000000);
  OUTLINED_FUNCTION_162_0(v27);
  v74 = v102;
  FactItemShortNumber.thumbnail.getter();
  sub_26A107BC0(v74, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v74, &qword_28036CB20, &unk_26A426470);
  v75 = v103;
  FactItemShortNumber.action.getter();
  sub_26A107ABC();
  sub_26A0E48F0(v75, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7CF0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v77, v78, v79, v80, v96, v97);

  v81 = swift_getKeyPath();
  sub_26A0F8684(v81, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v82, v83, v84, v85, v96, v97);

  sub_26A0FEB80(v86, v87, v88, v89, v90, v91, v92);
  sub_26A0E48F0(v41, &qword_28036CD50, &unk_26A426830);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v94;
  result._countAndFlagsBits = v93;
  return result;
}

uint64_t type metadata accessor for FactItemShortNumber(uint64_t a1)
{
  result = qword_280373A38;
  if (!qword_280373A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A3E8D68(void *a1)
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v21[-v5 - 8];
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v11 + 20)) + *a1, v21);
  OUTLINED_FUNCTION_32_2();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    *v10 = MEMORY[0x277D84F90];
    *(v10 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v12 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3EC4D8();
  }

  return sub_26A3EC4D8();
}

void sub_26A3E8F54()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoMultilineTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v10, v11);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v13 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v13);
      if (!v12)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_18();
    }

    OUTLINED_FUNCTION_58_19();
    v3 = 0;
  }

  v14 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v3, 1, v14);
  OUTLINED_FUNCTION_75();
}

void FactItemShortNumber.text4.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v9, v10);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v12);
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_18();
    }

    OUTLINED_FUNCTION_58_19();
    v2 = 0;
  }

  v13 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void FactItemShortNumber.unit.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v9, v10);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v12);
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_18();
    }

    OUTLINED_FUNCTION_58_19();
    v2 = 0;
  }

  v13 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void FactItemShortNumber.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoVisualProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v9, v10);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v12);
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_18();
    }

    OUTLINED_FUNCTION_58_19();
    v2 = 0;
  }

  v13 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE8, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void FactItemShortNumber.action.getter()
{
  OUTLINED_FUNCTION_76();
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoActionProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_18();
    }

    sub_26A3EC4D8();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t FactItemShortNumber.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoFactItem_ShortNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t FactItemShortNumber.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoFactItem_ShortNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoFactItem_ShortNumber.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v211 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v10);
  v208 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v15 = OUTLINED_FUNCTION_41(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v18);
  v207 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v25 = OUTLINED_FUNCTION_41(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v30);
  v31 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  v41 = &v192[-v40];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v43 = OUTLINED_FUNCTION_41(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v48);
  v50 = &v192[-v49];
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  v54 = &v192[-v53];
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_11_40();
  sub_26A3EC980();
  v56 = *(type metadata accessor for _ProtoFactItem_ShortNumber(0) + 20);
  v210 = v2;
  v212 = v56;
  v57 = *(v2 + v56);
  OUTLINED_FUNCTION_142(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number, &v221);
  sub_26A10FD9C();
  LODWORD(v2) = OUTLINED_FUNCTION_63_0(v0);
  sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  if (v2 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_14_9(v54);
    if (v58)
    {
      OUTLINED_FUNCTION_35_27(MEMORY[0x277D84F90]);
      v59 = OUTLINED_FUNCTION_12_4(*(v31 + 32));
      v60 = v211;
      __swift_storeEnumTagSinglePayload(v59, v61, v62, v211);
      v63 = OUTLINED_FUNCTION_12_4(*(v31 + 36));
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v60);
      OUTLINED_FUNCTION_14_9(v54);
      v66 = v210;
      if (!v58)
      {
        sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A3EC4D8();
      v66 = v210;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_67();
    sub_26A3EC52C(v41, v67);
    v68 = v212;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v66 + v68);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v70 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v70);
      OUTLINED_FUNCTION_25_33();
      v57 = v71;
      *(v66 + v68) = v71;
    }

    OUTLINED_FUNCTION_129();
    sub_26A3EC4D8();
    v72 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v31);
    OUTLINED_FUNCTION_211(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number, v220);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, v220);
  OUTLINED_FUNCTION_209();
  v75 = OUTLINED_FUNCTION_63_0(v50);
  OUTLINED_FUNCTION_162_0(v50);
  v76 = v31;
  if (v75 == 1)
  {
    v77 = v210;
    v78 = v207;
  }

  else
  {
    OUTLINED_FUNCTION_128();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v75);
    v77 = v210;
    if (v58)
    {
      v57 = v193;
      *v193 = MEMORY[0x277D84F90];
      *(v57 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_13_38();
      v80 = *(v79 - 256);
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v80);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v80);
      OUTLINED_FUNCTION_48_0(v75);
      v87 = v212;
      if (!v58)
      {
        sub_26A0E48F0(v75, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_66_13();
      v87 = v212;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_67();
    sub_26A3EC52C(v57, v88);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v77 + v87);
    v78 = v207;
    if ((v89 & 1) == 0)
    {
      v90 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v90);
      OUTLINED_FUNCTION_25_33();
      OUTLINED_FUNCTION_244(v91);
    }

    OUTLINED_FUNCTION_129();
    sub_26A3EC4D8();
    v92 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v76);
    OUTLINED_FUNCTION_211(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, v219);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, v219);
  v95 = v205;
  OUTLINED_FUNCTION_209();
  v96 = OUTLINED_FUNCTION_63_0(v95);
  OUTLINED_FUNCTION_162_0(v95);
  if (v96 != 1)
  {
    v97 = v194;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_14_9(v97);
    v98 = v212;
    if (v58)
    {
      OUTLINED_FUNCTION_35_27(MEMORY[0x277D84F90]);
      v99 = OUTLINED_FUNCTION_12_4(*(v78 + 32));
      OUTLINED_FUNCTION_56_18(v99, v100, v101);
      v102 = OUTLINED_FUNCTION_12_4(*(v78 + 36));
      __swift_storeEnumTagSinglePayload(v102, v103, v104, v57);
      OUTLINED_FUNCTION_14_9(v97);
      if (!v58)
      {
        sub_26A0E48F0(v97, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128();
      sub_26A3EC4D8();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_27_30();
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v77 + v98);
    if ((v105 & 1) == 0)
    {
      v106 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v106);
      OUTLINED_FUNCTION_25_33();
      OUTLINED_FUNCTION_244(v107);
    }

    OUTLINED_FUNCTION_129();
    sub_26A3EC4D8();
    v108 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v78);
    OUTLINED_FUNCTION_211(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, v218);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, v218);
  v111 = v206;
  OUTLINED_FUNCTION_209();
  v112 = OUTLINED_FUNCTION_63_0(v111);
  OUTLINED_FUNCTION_162_0(v111);
  if (v112 != 1)
  {
    v113 = v195;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_14_9(v113);
    v114 = v212;
    if (v58)
    {
      v112 = v196;
      OUTLINED_FUNCTION_35_27(MEMORY[0x277D84F90]);
      v115 = OUTLINED_FUNCTION_12_4(*(v78 + 32));
      OUTLINED_FUNCTION_56_18(v115, v116, v117);
      v118 = OUTLINED_FUNCTION_12_4(*(v78 + 36));
      __swift_storeEnumTagSinglePayload(v118, v119, v120, v57);
      OUTLINED_FUNCTION_14_9(v113);
      if (!v58)
      {
        sub_26A0E48F0(v113, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128();
      sub_26A3EC4D8();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_27_30();
    v121 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v77 + v114);
    if ((v121 & 1) == 0)
    {
      v122 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v122);
      OUTLINED_FUNCTION_25_33();
      OUTLINED_FUNCTION_244(v123);
    }

    OUTLINED_FUNCTION_129();
    sub_26A3EC4D8();
    v124 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v124, v125, v126, v78);
    OUTLINED_FUNCTION_211(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, v217);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, v217);
  OUTLINED_FUNCTION_26_4();
  __swift_getEnumTagSinglePayload(v78, 1, v76);
  OUTLINED_FUNCTION_39_4();
  if (v112 != 1)
  {
    v78 = v197;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v78);
    v127 = v212;
    if (v58)
    {
      v112 = v198;
      *v198 = MEMORY[0x277D84F90];
      *(v112 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v128 = OUTLINED_FUNCTION_12_4(*(v76 + 32));
      OUTLINED_FUNCTION_56_18(v128, v129, v130);
      v131 = OUTLINED_FUNCTION_12_4(*(v76 + 36));
      __swift_storeEnumTagSinglePayload(v131, v132, v133, v57);
      OUTLINED_FUNCTION_48_0(v78);
      if (!v58)
      {
        sub_26A0E48F0(v78, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128();
      sub_26A3EC4D8();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_67();
    sub_26A3EC52C(v112, v134);
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v77 + v127);
    if ((v135 & 1) == 0)
    {
      v136 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v136);
      OUTLINED_FUNCTION_25_33();
      OUTLINED_FUNCTION_244(v137);
    }

    OUTLINED_FUNCTION_129();
    sub_26A3EC4D8();
    v138 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v138, v139, v140, v76);
    OUTLINED_FUNCTION_211(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, v216);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__unit, v216);
  OUTLINED_FUNCTION_26_4();
  __swift_getEnumTagSinglePayload(v78, 1, v76);
  OUTLINED_FUNCTION_39_4();
  if (v112 == 1)
  {
    v141 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_129();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(&unk_26A425BF0);
    v142 = v212;
    if (v58)
    {
      v57 = v199;
      *v199 = MEMORY[0x277D84F90];
      *(v57 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_13_38();
      v144 = *(v143 - 256);
      __swift_storeEnumTagSinglePayload(v145, v146, v147, v144);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v148, v149, v150, v144);
      OUTLINED_FUNCTION_48_0(&unk_26A425BF0);
      v112 = v200;
      if (!v58)
      {
        sub_26A0E48F0(&unk_26A425BF0, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_66_13();
      v112 = v200;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_67();
    sub_26A3EC52C(v57, v151);
    v152 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v77 + v142);
    v153 = v76;
    if ((v152 & 1) == 0)
    {
      v154 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v154);
      OUTLINED_FUNCTION_25_33();
      OUTLINED_FUNCTION_244(v155);
    }

    v141 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_128();
    sub_26A3EC4D8();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v156, v157, v158, v153);
    OUTLINED_FUNCTION_211(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__unit, v215);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, v215);
  OUTLINED_FUNCTION_26_4();
  v159 = v208;
  __swift_getEnumTagSinglePayload(v78, 1, v208);
  OUTLINED_FUNCTION_39_4();
  if (v112 == 1)
  {
    v160 = v141;
    v161 = v211;
  }

  else
  {
    OUTLINED_FUNCTION_128();
    sub_26A10FD9C();
    v162 = OUTLINED_FUNCTION_63_14(v112);
    v163 = v212;
    v164 = v159;
    if (v162 == 1)
    {
      v57 = v201;
      v160 = v141;
      *v201 = v141;
      *(v57 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_13_38();
      v161 = *(v165 - 256);
      __swift_storeEnumTagSinglePayload(v166, v167, v168, v161);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v169, v170, v171, v161);
      if (__swift_getEnumTagSinglePayload(v112, 1, v164) != 1)
      {
        sub_26A0E48F0(v112, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_66_13();
      v160 = v141;
      v161 = v211;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A3EC52C(v57, type metadata accessor for _ProtoVisualProperty);
    v172 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v77 + v163);
    if ((v172 & 1) == 0)
    {
      v173 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v173);
      OUTLINED_FUNCTION_25_33();
      v57 = v174;
      *(v77 + v163) = v174;
    }

    OUTLINED_FUNCTION_129();
    sub_26A3EC4D8();
    v175 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v175, v176, v177, v164);
    OUTLINED_FUNCTION_211(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, v214);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v57 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, v214);
  v178 = v209;
  OUTLINED_FUNCTION_209();
  v179 = OUTLINED_FUNCTION_63_14(v178);
  OUTLINED_FUNCTION_162_0(v178);
  if (v179 != 1)
  {
    v180 = v202;
    sub_26A10FD9C();
    v181 = OUTLINED_FUNCTION_63_14(v180);
    v182 = v212;
    if (v181 == 1)
    {
      v57 = v203;
      *v203 = v160;
      *(v57 + 8) = 0;
      *(v57 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v183 = OUTLINED_FUNCTION_63_14(v180);
      v184 = v204;
      if (v183 != 1)
      {
        sub_26A0E48F0(v180, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_66_13();
      v184 = v204;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v184);
    sub_26A3EC52C(v57, type metadata accessor for _ProtoActionProperty);
    v185 = swift_isUniquelyReferenced_nonNull_native();
    v186 = *(v77 + v182);
    if ((v185 & 1) == 0)
    {
      v187 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v187);
      sub_26A2C994C();
      v186 = v188;
      *(v77 + v182) = v188;
    }

    OUTLINED_FUNCTION_129();
    sub_26A3EC4D8();
    v189 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v189, v190, v191, v161);
    OUTLINED_FUNCTION_211(v186 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &v213);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t FactItemShortNumber.init(number:text1:text2:text3:text4:unit:thumbnail:action:componentName:linkIdentifier:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for _ProtoFactItem_ShortNumber(0);
  v10 = a4;
  v12 = a5;
  v11 = a7;
  v13 = a8;
  OUTLINED_FUNCTION_0_87();
  v16 = sub_26A3EC858(v14, v15, &protocol conformance descriptor for _ProtoFactItem_ShortNumber);
  OUTLINED_FUNCTION_41_18(v16, v17, v18, v16, v19, v20, v21, v22, v24, a5, a7, a8);

  sub_26A0E48F0(v13, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v11, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_187_0(a6);
  OUTLINED_FUNCTION_187_0(v12);
  OUTLINED_FUNCTION_187_0(v10);
  OUTLINED_FUNCTION_187_0(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A3EAD1C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v111 = a8;
  v108 = a7;
  v105 = a4;
  v106 = a6;
  v103 = a3;
  v104 = a5;
  v14 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v14 - 8);
  v101 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v16 - 8);
  v116 = &v91 - v17;
  v115 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v115);
  v97 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v98 = &v91 - v20;
  v21 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v21 - 8);
  v100 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v23 - 8);
  v114 = &v91 - v24;
  v113 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v113);
  v95 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v96 = &v91 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v28 - 8);
  v112 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v109 = &v91 - v31;
  v32 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v32 - 8);
  v102 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v34 - 8);
  v107 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v91 - v37;
  v39 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v39);
  v92 = &v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v99 = &v91 - v42;
  MEMORY[0x28223BE20](v43);
  v91 = &v91 - v44;
  v110 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v110);
  v94 = &v91 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v93 = &v91 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = (&v91 - v49);
  v51 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v51 - 8);
  v52 = a2[3];
  v53 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v52);
  (*(v53 + 8))(v52, v53);
  sub_26A3EC4D8();
  _ProtoFactItem_ShortNumber.number.setter();
  v55 = v103[3];
  v54 = v103[4];
  __swift_project_boxed_opaque_existential_1(v103, v55);
  (*(v54 + 8))(v55, v54);
  sub_26A3EC4D8();
  v103 = v50;
  _ProtoFactItem_ShortNumber.text1.setter();
  v56 = v104;

  _ProtoFactItem_ShortNumber.componentName.setter(v105, v56, v57, v58, v59);
  sub_26A10FD9C();
  v60 = v118;
  if (v118)
  {
    v61 = v119;
    __swift_project_boxed_opaque_existential_1(v117, v118);
    (*(v61 + 8))(v60, v61);
    sub_26A3EC4D8();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
    __swift_destroy_boxed_opaque_existential_1(v117);
    v62 = v39;
    if (__swift_getEnumTagSinglePayload(v38, 1, v39) != 1)
    {
      v63 = v91;
      sub_26A3EC4D8();
      sub_26A3EC980();
      _ProtoFactItem_ShortNumber.text2.setter();
      sub_26A3EC52C(v63, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v117, &qword_28036CB10, &unk_26A426460);
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
    v62 = v39;
  }

  sub_26A0E48F0(v38, &qword_28036CAE0, &unk_26A4273F0);
LABEL_6:
  v64 = v110;
  sub_26A10FD9C();
  v65 = v118;
  if (v118)
  {
    v66 = v119;
    __swift_project_boxed_opaque_existential_1(v117, v118);
    (*(v66 + 8))(v65, v66);
    v67 = v107;
    sub_26A3EC4D8();
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v62);
    __swift_destroy_boxed_opaque_existential_1(v117);
    if (__swift_getEnumTagSinglePayload(v67, 1, v62) != 1)
    {
      v68 = v92;
      sub_26A3EC4D8();
      sub_26A3EC980();
      _ProtoFactItem_ShortNumber.text3.setter();
      sub_26A3EC52C(v68, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v117, &qword_28036CB10, &unk_26A426460);
    v67 = v107;
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v62);
  }

  sub_26A0E48F0(v67, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v69 = v118;
  if (v118)
  {
    v70 = v119;
    __swift_project_boxed_opaque_existential_1(v117, v118);
    (*(v70 + 8))(v69, v70);
    v71 = v109;
    sub_26A3EC4D8();
    __swift_storeEnumTagSinglePayload(v71, 0, 1, v64);
    __swift_destroy_boxed_opaque_existential_1(v117);
    if (__swift_getEnumTagSinglePayload(v71, 1, v64) != 1)
    {
      v72 = v93;
      sub_26A3EC4D8();
      sub_26A3EC980();
      _ProtoFactItem_ShortNumber.text4.setter();
      sub_26A3EC52C(v72, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v117, &qword_28036CB08, &unk_26A428720);
    v71 = v109;
    __swift_storeEnumTagSinglePayload(v109, 1, 1, v64);
  }

  sub_26A0E48F0(v71, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v73 = v118;
  if (v118)
  {
    v74 = v119;
    __swift_project_boxed_opaque_existential_1(v117, v118);
    (*(v74 + 8))(v73, v74);
    v75 = v112;
    sub_26A3EC4D8();
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v64);
    __swift_destroy_boxed_opaque_existential_1(v117);
    if (__swift_getEnumTagSinglePayload(v75, 1, v64) != 1)
    {
      v76 = v94;
      sub_26A3EC4D8();
      sub_26A3EC980();
      _ProtoFactItem_ShortNumber.unit.setter();
      sub_26A3EC52C(v76, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v117, &qword_28036CB08, &unk_26A428720);
    v75 = v112;
    __swift_storeEnumTagSinglePayload(v112, 1, 1, v64);
  }

  sub_26A0E48F0(v75, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v77 = v118;
  if (v118)
  {
    v78 = v119;
    __swift_project_boxed_opaque_existential_1(v117, v118);
    (*(v78 + 8))(v77, v78);
    v79 = v114;
    sub_26A3EC4D8();
    v80 = v113;
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v113);
    __swift_destroy_boxed_opaque_existential_1(v117);
    if (__swift_getEnumTagSinglePayload(v79, 1, v80) != 1)
    {
      v81 = v96;
      sub_26A3EC4D8();
      sub_26A3EC980();
      _ProtoFactItem_ShortNumber.thumbnail.setter();
      sub_26A3EC52C(v81, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v117, &qword_28036CB00, &unk_26A426450);
    v79 = v114;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v113);
  }

  sub_26A0E48F0(v79, &qword_28036CAE8, &unk_26A426430);
LABEL_26:
  sub_26A10FD9C();
  v82 = v118;
  if (!v118)
  {
    sub_26A0E48F0(v117, &qword_28036CAF8, &unk_26A426D30);
    v84 = v116;
    __swift_storeEnumTagSinglePayload(v116, 1, 1, v115);
LABEL_31:
    result = sub_26A0E48F0(v84, &off_28036C7C0, &off_26A427400);
    if (!a13)
    {
      return result;
    }

    goto LABEL_32;
  }

  v83 = v119;
  __swift_project_boxed_opaque_existential_1(v117, v118);
  (*(v83 + 8))(v82, v83);
  v84 = v116;
  sub_26A3EC4D8();
  v85 = v115;
  __swift_storeEnumTagSinglePayload(v84, 0, 1, v115);
  __swift_destroy_boxed_opaque_existential_1(v117);
  if (__swift_getEnumTagSinglePayload(v84, 1, v85) == 1)
  {
    goto LABEL_31;
  }

  v86 = v98;
  sub_26A3EC4D8();
  sub_26A3EC980();
  _ProtoFactItem_ShortNumber.action.setter();
  result = sub_26A3EC52C(v86, type metadata accessor for _ProtoActionProperty);
  if (a13)
  {
LABEL_32:

    return _ProtoFactItem_ShortNumber.linkIdentifier.setter(a12, a13, v88, v89, v90);
  }

  return result;
}

void FactItemShortNumber.init(number:text1:text2:text3:text4:unit:thumbnail:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_76();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v36 = v28;
  v37 = v30;
  v38 = v29;
  v32 = v31;
  v39 = v31;
  v40 = v33;
  sub_26A0E5D68(v33, v48);
  sub_26A0E5D68(v32, v47);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_0_87();
  sub_26A3EC858(v34, v35, &protocol conformance descriptor for _ProtoFactItem_ShortNumber);
  sub_26A4249C4();

  sub_26A0E48F0(v23, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v25, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_69_9(v27);
  OUTLINED_FUNCTION_69_9(v36);
  sub_26A0E48F0(v37, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_187_0(v38);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v40);
  OUTLINED_FUNCTION_64_15(v41);
  sub_26A0E48F0(v42, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_69_9(v43);
  OUTLINED_FUNCTION_69_9(v44);
  OUTLINED_FUNCTION_187_0(&v45);
  OUTLINED_FUNCTION_187_0(&v46);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  OUTLINED_FUNCTION_75();
}

void FactItemShortNumber.init(number:text1:text2:text3:unit:thumbnail:action:)()
{
  OUTLINED_FUNCTION_76();
  v17 = v1;
  v19 = v0;
  v21 = v3;
  v23 = v2;
  v25 = v5;
  v26 = v4;
  v6 = v4;
  v27 = v7;
  sub_26A0E5D68(v7, v44);
  sub_26A0E5D68(v6, v43);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A0E5D68(v44, v35);
  sub_26A0E5D68(v43, v34);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_0_87();
  v10 = sub_26A3EC858(v8, v9, &protocol conformance descriptor for _ProtoFactItem_ShortNumber);
  OUTLINED_FUNCTION_41_18(v10, v11, v12, v10, v13, v14, v15, v16, v17, v19, v21, v23);
  OUTLINED_FUNCTION_64_15(v18);
  sub_26A0E48F0(v20, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_31_2(v22);
  OUTLINED_FUNCTION_164_0(v24);
  OUTLINED_FUNCTION_164_0(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_64_15(v36);
  OUTLINED_FUNCTION_40_1(v37);
  OUTLINED_FUNCTION_31_2(v38);
  OUTLINED_FUNCTION_31_2(v39);
  OUTLINED_FUNCTION_164_0(&v41);
  OUTLINED_FUNCTION_164_0(&v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  OUTLINED_FUNCTION_64_15(v28);
  OUTLINED_FUNCTION_40_1(v29);
  OUTLINED_FUNCTION_31_2(v30);
  OUTLINED_FUNCTION_31_2(v31);
  OUTLINED_FUNCTION_164_0(v32);
  OUTLINED_FUNCTION_164_0(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v35);
  OUTLINED_FUNCTION_75();
}

void FactItemShortNumber.init(number:text1:text2:text3:unit:thumbnail:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_76();
  v32 = v21;
  v31 = v22;
  v33 = v24;
  v34 = v23;
  v35 = v26;
  v36 = v25;
  v27 = v25;
  v37 = v28;
  sub_26A0E5D68(v28, v54);
  sub_26A0E5D68(v27, v53);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A0E5D68(v54, v45);
  sub_26A0E5D68(v53, v44);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_0_87();
  sub_26A3EC858(v29, v30, &protocol conformance descriptor for _ProtoFactItem_ShortNumber);
  sub_26A4249C4();

  sub_26A0E48F0(v31, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v32, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_31_2(v33);
  OUTLINED_FUNCTION_164_0(v34);
  OUTLINED_FUNCTION_164_0(v35);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_26A0E48F0(v46, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_40_1(v47);
  OUTLINED_FUNCTION_31_2(v48);
  OUTLINED_FUNCTION_31_2(v49);
  OUTLINED_FUNCTION_164_0(&v51);
  OUTLINED_FUNCTION_164_0(&v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_26A0E48F0(v38, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_40_1(v39);
  OUTLINED_FUNCTION_31_2(v40);
  OUTLINED_FUNCTION_31_2(v41);
  OUTLINED_FUNCTION_164_0(v42);
  OUTLINED_FUNCTION_164_0(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3EC4D8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3EC52C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t FactItemShortNumber.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoFactItem_ShortNumber(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_11_40();
  sub_26A3EC980();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_24_42();
  sub_26A3EC4D8();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t FactItemShortNumber.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for FactItemShortNumber(0);
  *(inited + 64) = &protocol witness table for FactItemShortNumber;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_22_32();
  sub_26A3EC980();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A3EC858(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A3EC858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A3EC914(uint64_t a1)
{
  result = type metadata accessor for _ProtoFactItem_ShortNumber(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3EC980()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_25_33()
{

  sub_26A2C994C();
}

uint64_t OUTLINED_FUNCTION_27_30()
{

  return sub_26A3EC52C(v0, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t OUTLINED_FUNCTION_35_27@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_56_18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 320);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_58_19()
{

  return sub_26A3EC4D8();
}

uint64_t OUTLINED_FUNCTION_59_18()
{

  return sub_26A3EC4D8();
}

uint64_t OUTLINED_FUNCTION_62_15()
{

  return type metadata accessor for _ProtoFactItem_ShortNumber(0);
}

uint64_t OUTLINED_FUNCTION_63_14(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_64_15(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_66_13()
{

  return sub_26A3EC4D8();
}

uint64_t OUTLINED_FUNCTION_69_9(uint64_t a1)
{

  return sub_26A0E48F0(a1, v2, v1);
}

Swift::String __swiftcall Table.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF98, &unk_26A42DA10);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  v5 = v35 - v4;
  v6 = type metadata accessor for Table(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF90, &qword_26A426B40);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  OUTLINED_FUNCTION_4_55();
  sub_26A3EF77C();
  if (redacted)
  {
    _ProtoTable.redactedProto.getter();
  }

  else
  {
    sub_26A3EF77C();
  }

  sub_26A3EF984();
  v14[*(v11 + 32)] = redacted;
  sub_26A3EF7D0(v10, type metadata accessor for Table);
  *&v14[*(v11 + 28)] = MEMORY[0x277D84F90];
  sub_26A145ED0(*v14, 0x6F74617261706573, 0xEE0073656E694C72, 0);
  Table.columns.getter();
  sub_26A3A2878(v15, 0x736E6D756C6F63, 0xE700000000000000, 0, v16, v17, v18);

  Table.header.getter();
  sub_26A104CFC();
  sub_26A0E48F0(v5, &qword_28036CF98, &unk_26A42DA10);
  KeyPath = swift_getKeyPath();
  sub_26A0F710C(KeyPath, 1937207154, 0xE400000000000000, v20, v21, v22, v23, v24, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5]);

  sub_26A0FB144(v25, v26, v27, v28, v29, v30, v31);
  sub_26A0E48F0(v14, &qword_28036CF90, &qword_26A426B40);
  v32 = OUTLINED_FUNCTION_175();
  result._object = v33;
  result._countAndFlagsBits = v32;
  return result;
}

uint64_t type metadata accessor for Table(uint64_t a1)
{
  result = qword_280373A50;
  if (!qword_280373A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Table.columns.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for _ProtoTable.FixedColumnSize(0);
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v65 = (v4 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v69 = &v64 - v11;
  v68 = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v71 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D8, &qword_26A425E88);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - v21;
  v23 = type metadata accessor for _ProtoTable.Column(0);
  v24 = OUTLINED_FUNCTION_79_0(v23);
  v26 = v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16_30();
  MEMORY[0x28223BE20](v27);
  v29 = &v64 - v28;
  v30 = *(v0 + 8);
  v31 = *(v30 + 16);
  if (!v31)
  {
LABEL_21:
    OUTLINED_FUNCTION_75();
    return;
  }

  v72 = v22;
  v75 = MEMORY[0x277D84F90];
  sub_26A10DC4C(0, v31, 0);
  v32 = v75;
  v33 = v30 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  v34 = *(v26 + 72);
  *&v35 = 134217984;
  v64 = v35;
  v66 = v29;
  v67 = v9;
  v70 = v19;
  while (1)
  {
    sub_26A3EF77C();
    sub_26A3EF77C();
    v36 = v72;
    sub_26A10FD9C();
    v37 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
    if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
    {
      if (qword_28036C5A0 != -1)
      {
        OUTLINED_FUNCTION_0_34();
        swift_once();
      }

      v56 = sub_26A424AE4();
      v57 = __swift_project_value_buffer(v56, qword_2803A8950);
      MEMORY[0x28223BE20](v57);
      v63 = v73;
      sub_26A31B964(sub_26A3EF3AC, (&v64 - 2), "SnippetKit/Table.swift", 22, 2, 159);
    }

    sub_26A10FD9C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_26A3EF7D0(v19, type metadata accessor for _ProtoTable.Column.OneOf_Cell);
    v38 = 0x40000000000;
LABEL_18:
    sub_26A0E48F0(v72, &qword_28036C8D8, &qword_26A425E88);
    sub_26A3EF7D0(v73, type metadata accessor for _ProtoTable.Column);
    sub_26A3EF7D0(v29, type metadata accessor for _ProtoTable.Column);
    v75 = v32;
    v54 = *(v32 + 16);
    v53 = *(v32 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_26A10DC4C((v53 > 1), v54 + 1, 1);
      v32 = v75;
    }

    *(v32 + 16) = v54 + 1;
    v55 = v32 + 8 * v54;
    *(v55 + 32) = v38;
    *(v55 + 36) = WORD2(v38);
    v33 += v34;
    --v31;
    v19 = v70;
    if (!v31)
    {
      goto LABEL_21;
    }
  }

  v39 = v34;
  sub_26A3EF984();
  v40 = v69;
  sub_26A10FD9C();
  v41 = v67;
  sub_26A10FD9C();
  v42 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  if (__swift_getEnumTagSinglePayload(v41, 1, v42) != 1)
  {
    sub_26A0E48F0(v40, &qword_28036C8C0, &qword_26A425E70);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v44 = v65;
      sub_26A3EF984();
      v45 = *v44;
      sub_26A3EF7D0(v44, type metadata accessor for _ProtoTable.FixedColumnSize);
    }

    else
    {
      sub_26A3EF7D0(v41, type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size);
      v45 = 0;
    }

    v46 = (v71 + *(v68 + 20));
    v47 = *v46;
    if (v46[1])
    {
      v48 = *v46;
    }

    else
    {
      if (qword_28036C5A0 != -1)
      {
        swift_once();
      }

      v49 = sub_26A424AE4();
      __swift_project_value_buffer(v49, qword_2803A8950);
      v50 = sub_26A424AD4();
      v51 = sub_26A424E04();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = v64;
        *(v52 + 4) = v47;
        _os_log_impl(&dword_26A0B8000, v50, v51, "Unhandled column alignment value: %ld", v52, 0xCu);
        MEMORY[0x26D65C950](v52, -1, -1);
      }

      v48 = 0;
    }

    sub_26A3EF7D0(v71, type metadata accessor for _ProtoTable.ContentColumnCell);
    v38 = v45 | ((EnumCaseMultiPayload != 1) << 32) | (v48 << 40);
    v34 = v39;
    v29 = v66;
    goto LABEL_18;
  }

  if (qword_28036C5A0 != -1)
  {
    OUTLINED_FUNCTION_0_34();
    swift_once();
  }

  v58 = sub_26A424AE4();
  __swift_project_value_buffer(v58, qword_2803A8950);
  v59 = sub_26A424AD4();
  v60 = sub_26A424E14();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v74 = v62;
    *v61 = 136446210;
    *(v61 + 4) = sub_26A0E8788(0xD000000000000018, 0x800000026A44B2A0, &v74);
    _os_log_impl(&dword_26A0B8000, v59, v60, "%{public}s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x26D65C950](v62, -1, -1);
    MEMORY[0x26D65C950](v61, -1, -1);
  }

  sub_26A424FC4();
  __break(1u);
}

void Table.header.getter()
{
  OUTLINED_FUNCTION_76();
  v19 = v0;
  v1 = type metadata accessor for _ProtoTable.Header(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373400, &qword_26A440D98);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  type metadata accessor for _ProtoTable(0);
  sub_26A10FD9C();
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v1);
  v16 = v19;
  sub_26A0E48F0(v13, &qword_280373400, &qword_26A440D98);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v10, 1, v1) == 1)
    {
      *v5 = MEMORY[0x277D84F90];
      v5[1] = 0;
      v5[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v10, 1, v1) != 1)
      {
        sub_26A0E48F0(v10, &qword_280373400, &qword_26A440D98);
      }
    }

    else
    {
      sub_26A3EF984();
    }

    sub_26A3EF984();
    v14 = 0;
  }

  v17 = type metadata accessor for TableHeader(0);
  __swift_storeEnumTagSinglePayload(v16, v14, 1, v17);
  OUTLINED_FUNCTION_75();
}

void Table.rows.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for _ProtoTable.Row(0);
  v2 = OUTLINED_FUNCTION_79_0(v1);
  v4 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v7 = v6 - v5;
  v8 = type metadata accessor for TableRow(0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v9 = *(v0 + 16);
  v10 = *(v9 + 16);
  if (v10)
  {
    v16 = MEMORY[0x277D84F90];
    sub_26A10DC6C(0, v10, 0);
    v11 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_26A3EF77C();
      sub_26A3EF77C();
      sub_26A424724();
      OUTLINED_FUNCTION_7_33();
      sub_26A3EF7D0(v7, v13);
      v15 = *(v16 + 16);
      v14 = *(v16 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26A10DC6C(v14 > 1, v15 + 1, 1);
      }

      *(v16 + 16) = v15 + 1;
      sub_26A3EF984();
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  OUTLINED_FUNCTION_75();
}

void _ProtoTable.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v2 = type metadata accessor for _ProtoTable.Row(0);
  v3 = OUTLINED_FUNCTION_79_0(v2);
  v36 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for _ProtoTable.Header(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16_30();
  MEMORY[0x28223BE20](v11);
  v34 = (&v34 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373400, &qword_26A440D98);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  OUTLINED_FUNCTION_0_88();
  sub_26A3EF77C();
  v21 = *(type metadata accessor for _ProtoTable(0) + 32);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v9);
  sub_26A0E48F0(v20, &qword_280373400, &qword_26A440D98);
  v23 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v17, 1, v9) == 1)
    {
      v24 = v34;
      *v34 = v23;
      *(v24 + 8) = 0;
      *(v24 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v17, 1, v9) != 1)
      {
        sub_26A0E48F0(v17, &qword_280373400, &qword_26A440D98);
      }
    }

    else
    {
      v24 = v34;
      sub_26A3EF984();
    }

    _ProtoTable.Header.redactedProto.getter();
    sub_26A3EF7D0(v24, type metadata accessor for _ProtoTable.Header);
    sub_26A0E48F0(v1 + v21, &qword_280373400, &qword_26A440D98);
    sub_26A3EF984();
    __swift_storeEnumTagSinglePayload(v1 + v21, 0, 1, v9);
  }

  v25 = *(v1 + 16);
  v26 = v25[2];
  if (v26)
  {
    v35 = v1;
    v37 = v23;
    sub_26A10D308(0, v26, 0);
    v27 = v37;
    v28 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v34 = v25;
    v29 = v25 + v28;
    v30 = *(v36 + 72);
    do
    {
      sub_26A3EF77C();
      _ProtoTable.Row.redactedProto.getter();
      OUTLINED_FUNCTION_7_33();
      sub_26A3EF7D0(v7, v31);
      v37 = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_26A10D308(v32 > 1, v33 + 1, 1);
        v27 = v37;
      }

      *(v27 + 16) = v33 + 1;
      sub_26A3EF984();
      v29 += v30;
      --v26;
    }

    while (v26);

    v1 = v35;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  *(v1 + 16) = v27;
  OUTLINED_FUNCTION_75();
}

uint64_t Table.init(separatorLines:columns:header:rows:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoTable(0);
  OUTLINED_FUNCTION_6_40();
  sub_26A3EF8CC(v5, v6, &protocol conformance descriptor for _ProtoTable);
  sub_26A4249C4();

  return sub_26A0E48F0(a3, &qword_28036CF98, &unk_26A42DA10);
}

uint64_t sub_26A3EDFE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v54 = a4;
  v11 = type metadata accessor for TableRow(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v55 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _ProtoTable.Row(0);
  v57 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v51 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for _ProtoTable.Header(0);
  MEMORY[0x28223BE20](v50);
  v49 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _ProtoTable.Column(0);
  v56 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF98, &unk_26A42DA10);
  MEMORY[0x28223BE20](v18 - 8);
  v53 = &v44 - v19;
  v52 = type metadata accessor for TableHeader(0);
  MEMORY[0x28223BE20](v52);
  v48 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = a2;
  v21 = a3;
  v22 = *(a3 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v45 = v12;
    v46 = a5;
    v47 = a1;
    v58 = MEMORY[0x277D84F90];
    sub_26A10DCC4(0, v22, 0);
    v23 = v58;
    v25 = (v21 + 32);
    do
    {
      if (((*v25 | (*(v25 + 2) << 32)) & 0xFF0000000000) != 0x40000000000)
      {
        MEMORY[0x28223BE20](v24);
        *(&v44 - 4) = v27;
        *(&v44 - 12) = v28 & 1;
        *(&v44 - 11) = v29;
      }

      sub_26A3EF8CC(&qword_280373418, type metadata accessor for _ProtoTable.Column, &protocol conformance descriptor for _ProtoTable.Column);
      sub_26A4249C4();
      v26 = v6;
      v58 = v23;
      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_26A10DCC4(v30 > 1, v31 + 1, 1);
        v23 = v58;
      }

      *(v23 + 16) = v31 + 1;
      v24 = sub_26A3EF984();
      v25 += 2;
      --v22;
      v6 = v26;
    }

    while (v22);
    a5 = v46;
    a1 = v47;
    v32 = v45;
  }

  else
  {
    v32 = v12;
  }

  *(a1 + 8) = v23;
  v33 = v53;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v52);
  v35 = v55;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A0E48F0(v33, &qword_28036CF98, &unk_26A42DA10);
  }

  else
  {
    sub_26A3EF984();
    sub_26A3EF984();
    v36 = *(type metadata accessor for _ProtoTable(0) + 32);
    sub_26A0E48F0(a1 + v36, &qword_280373400, &qword_26A440D98);
    sub_26A3EF984();
    __swift_storeEnumTagSinglePayload(a1 + v36, 0, 1, v50);
  }

  v37 = *(a5 + 16);
  v38 = MEMORY[0x277D84F90];
  if (v37)
  {
    v56 = v6;
    v58 = MEMORY[0x277D84F90];
    sub_26A10D308(0, v37, 0);
    v38 = v58;
    v39 = a5 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v40 = *(v32 + 72);
    do
    {
      sub_26A3EF77C();
      sub_26A3EF77C();
      sub_26A3EF7D0(v35, type metadata accessor for TableRow);
      v58 = v38;
      v42 = *(v38 + 16);
      v41 = *(v38 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_26A10D308(v41 > 1, v42 + 1, 1);
        v38 = v58;
      }

      *(v38 + 16) = v42 + 1;
      sub_26A3EF984();
      v39 += v40;
      --v37;
    }

    while (v37);
  }

  *(a1 + 16) = v38;
  return result;
}

void Table.init(separatorLines:columns:header:rows:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF98, &unk_26A42DA10);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v14[-v10];
  sub_26A10FD9C();
  type metadata accessor for _ProtoTable(0);
  v14[16] = v7;
  v15 = v5;
  v16 = v11;
  v17 = v1;
  OUTLINED_FUNCTION_6_40();
  sub_26A3EF8CC(v12, v13, &protocol conformance descriptor for _ProtoTable);
  sub_26A4249C4();

  sub_26A0E48F0(v3, &qword_28036CF98, &unk_26A42DA10);
  sub_26A0E48F0(v11, &qword_28036CF98, &unk_26A42DA10);
  OUTLINED_FUNCTION_75();
}

float Table.Column.percentage.getter()
{
  result = *v0;
  if (((*(v0 + 4) << 32) & 0x100000000) != 0 || HIBYTE(*(v0 + 4)) == 4)
  {
    return 0.0;
  }

  return result;
}

uint64_t Table.Column.description.getter()
{
  if (HIBYTE(*(v0 + 2)) == 4)
  {
    return 0x726563617073;
  }

  v2 = (*v0 | (*(v0 + 2) << 32)) >> 40;
  if (((*(v0 + 2) << 32) & 0x100000000) != 0)
  {
    v4 = 0xE400000000000000;
    v3 = 1869903201;
  }

  else
  {
    OUTLINED_FUNCTION_10_55();
    sub_26A424DC4();
    MEMORY[0x26D65BA70](41, 0xE100000000000000);
    v3 = v7;
    v4 = v8;
  }

  MEMORY[0x26D65BA70](v3, v4);

  MEMORY[0x26D65BA70](8236, 0xE200000000000000);
  v5 = 0xE700000000000000;
  v6 = 0x746C7561666564;
  switch(v2)
  {
    case 1:
      v6 = 0x676E696461656CLL;
      break;
    case 2:
      v5 = 0xE600000000000000;
      v6 = 0x7265746E6563;
      break;
    case 3:
      v5 = 0xE800000000000000;
      v6 = 0x676E696C69617274;
      break;
    default:
      break;
  }

  MEMORY[0x26D65BA70](v6, v5);

  MEMORY[0x26D65BA70](41, 0xE100000000000000);
  return 0x286C6C6563;
}

uint64_t Table.ColumnSize.description.getter()
{
  if (*(v0 + 4))
  {
    return 1869903201;
  }

  OUTLINED_FUNCTION_10_55();
  sub_26A424DC4();
  MEMORY[0x26D65BA70](41, 0xE100000000000000);
  return v2;
}

uint64_t Table.ColumnAlignment.description.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 0x676E696461656CLL;
      break;
    case 2:
      result = 0x7265746E6563;
      break;
    case 3:
      result = 0x676E696C69617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26A3EEB0C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  MEMORY[0x28223BE20](v4);
  sub_26A3EF8CC(&qword_280373540, type metadata accessor for _ProtoTable.ContentColumnCell, &protocol conformance descriptor for _ProtoTable.ContentColumnCell);
  sub_26A4249C4();
  sub_26A0E48F0(a1, &qword_28036C8D8, &qword_26A425E88);
  sub_26A3EF984();
  v5 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
}

uint64_t sub_26A3EEC80(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  if ((a2 & 0x100000000) != 0)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  }

  else
  {
    v9 = type metadata accessor for _ProtoTable.FixedColumnSize(0);
    MEMORY[0x28223BE20](v9);
    *(&v13 - 4) = a2;
    sub_26A3EF8CC(&qword_280373570, type metadata accessor for _ProtoTable.FixedColumnSize, &protocol conformance descriptor for _ProtoTable.FixedColumnSize);
    sub_26A4249C4();
  }

  v10 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  sub_26A3EF914(v8, a1);
  result = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  v12 = a1 + *(result + 20);
  *v12 = a3;
  *(v12 + 8) = 1;
  return result;
}

uint64_t sub_26A3EEE2C(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoTable.SpacerColumnCell(0);
  MEMORY[0x28223BE20](v2 - 8);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  sub_26A0E48F0(a1, &qword_28036C8D8, &qword_26A425E88);
  sub_26A3EF984();
  v3 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t sub_26A3EEF14(uint64_t a1)
{
  sub_26A424EF4();
  MEMORY[0x26D65BA70](0xD00000000000001FLL, 0x800000026A44B2C0);
  type metadata accessor for _ProtoTable.Column(0);
  sub_26A424FA4();
  return 0;
}

uint64_t Table.Column.init(size:alignment:)@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0x100000000;
  if (!*(result + 4))
  {
    v3 = 0;
  }

  v4 = v3 | (*a2 << 40);
  *a3 = *result;
  *(a3 + 4) = WORD2(v4);
  return result;
}

BOOL static Table.Column.== infix(_:_:)(unsigned int *a1, float *a2)
{
  v2 = *a2 | (*(a2 + 2) << 32);
  if (HIBYTE(*(a1 + 2)) == 4)
  {
    return BYTE5(v2) == 4;
  }

  if (BYTE5(v2) == 4)
  {
    return 0;
  }

  v4 = *a1 | (*(a1 + 2) << 32);
  if (((*(a1 + 2) << 32) & 0x100000000) != 0)
  {
    if ((v2 & 0x100000000) == 0)
    {
      return 0;
    }

    return (((v2 ^ v4) >> 32) >> 8) == 0;
  }

  result = 0;
  if ((v2 & 0x100000000) == 0 && *&v4 == *a2)
  {
    return (((v2 ^ v4) >> 32) >> 8) == 0;
  }

  return result;
}

BOOL static Table.ColumnSize.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4))
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t Table.ColumnAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

uint64_t Table.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoTable(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  v5 = type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v6 = *(v5 + 24);
  v7 = type metadata accessor for _ProtoSeparators(0);
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v7);
  OUTLINED_FUNCTION_0_88();
  sub_26A3EF77C();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_8_43();
  sub_26A3EF984();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t Table.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for Table(0);
  *(inited + 64) = &protocol witness table for Table;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_4_55();
  sub_26A3EF77C();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A3EF8CC(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

unint64_t sub_26A3EF424()
{
  result = qword_280373A48;
  if (!qword_280373A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373A48);
  }

  return result;
}

uint64_t sub_26A3EF4A0(uint64_t a1)
{
  result = type metadata accessor for _ProtoTable(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Table.Column(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 6))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 5);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Table.Column(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 4) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 5) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_26A3EF5A8(uint64_t a1)
{
  v1 = *(a1 + 5);
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A3EF5BC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
  }

  else if (a2)
  {
    *(result + 5) = a2 + 3;
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Table.ColumnSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Table.ColumnSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_26A3EF654(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A3EF670(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Table.ColumnAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26A3EF77C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3EF7D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

float sub_26A3EF8C0(float *a1)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

uint64_t sub_26A3EF8CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A3EF914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A3EF984()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_10_55()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t OUTLINED_FUNCTION_17_34()
{

  return type metadata accessor for _ProtoTable(0);
}

Swift::String __swiftcall ReferenceLogo.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = v41 - v8;
  v10 = type metadata accessor for ReferenceLogo(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD18, &qword_26A4267F8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = v41 - v20;
  OUTLINED_FUNCTION_3_64();
  sub_26A3F0D50();
  if (redacted)
  {
    _ProtoReference_Logo.redactedProto.getter(v14);
  }

  else
  {
    sub_26A3F0D50();
  }

  sub_26A3F0DA4();
  v21[*(v18 + 32)] = redacted;
  sub_26A3F0DF8(v17, type metadata accessor for ReferenceLogo);
  *&v21[*(v18 + 28)] = MEMORY[0x277D84F90];
  ReferenceLogo.thumbnail.getter();
  type metadata accessor for VisualProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_26A108B10(v9, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v9, &qword_28036CB20, &unk_26A426470);
  ReferenceLogo.action.getter(v5);
  sub_26A108A0C();
  sub_26A0E48F0(v5, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7E80(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v27, v28, v29, v30, v41[0], v41[1]);

  sub_26A10030C(v31, v32, v33, v34, v35, v36, v37);
  sub_26A0E48F0(v21, &qword_28036CD18, &qword_26A4267F8);
  v38 = OUTLINED_FUNCTION_175();
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t type metadata accessor for ReferenceLogo(uint64_t a1)
{
  result = qword_280373A60;
  if (!qword_280373A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReferenceLogo.thumbnail.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - v2;
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  type metadata accessor for _ProtoReference_Logo(0);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v3, 1, v4);
  if (v9)
  {
    *v8 = MEMORY[0x277D84F90];
    *(v8 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v10 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
    OUTLINED_FUNCTION_37(v3, 1, v4);
    if (!v9)
    {
      sub_26A0E48F0(v3, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A3F0DA4();
  }

  return sub_26A3F0DA4();
}

uint64_t ReferenceLogo.action.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  type metadata accessor for _ProtoReference_Logo(0);
  sub_26A10FD9C();
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v1);
  v16 = v25;
  sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v17 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v17, v18, v1);
    if (v19)
    {
      *v5 = MEMORY[0x277D84F90];
      v5[1] = 0;
      v5[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v20 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v20, v21, v1);
      if (!v19)
      {
        sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A3F0DA4();
    }

    sub_26A3F0DA4();
    v14 = 0;
  }

  v22 = type metadata accessor for ActionProperty(0);
  return __swift_storeEnumTagSinglePayload(v16, v14, 1, v22);
}

uint64_t _ProtoReference_Logo.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v59 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v58 = (v3 - v4);
  MEMORY[0x28223BE20](v5);
  v57 = (&v55 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v56 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v55 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  OUTLINED_FUNCTION_0_89();
  sub_26A3F0D50();
  v60 = type metadata accessor for _ProtoReference_Logo(0);
  v29 = *(v60 + 24);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v14);
  sub_26A0E48F0(v28, &qword_28036CAE8, &unk_26A426430);
  v31 = MEMORY[0x277D84F90];
  v32 = EnumTagSinglePayload == 1;
  v33 = v59;
  if (!v32)
  {
    sub_26A10FD9C();
    v34 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v34, v35, v14);
    if (v32)
    {
      *v20 = v31;
      *(v20 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v33);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v33);
      v42 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v42, v43, v14);
      if (!v32)
      {
        sub_26A0E48F0(v25, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A3F0DA4();
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A3F0DF8(v20, type metadata accessor for _ProtoVisualProperty);
    sub_26A0E48F0(a1 + v29, &qword_28036CAE8, &unk_26A426430);
    sub_26A3F0DA4();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v14);
  }

  v47 = *(v60 + 28);
  sub_26A10FD9C();
  v48 = __swift_getEnumTagSinglePayload(v13, 1, v33);
  result = sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (v48 != 1)
  {
    v50 = v56;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v50, 1, v33);
    if (v32)
    {
      v51 = v57;
      *v57 = v31;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v50, 1, v33);
      if (!v32)
      {
        sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v51 = v57;
      sub_26A3F0DA4();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v58);
    sub_26A3F0DF8(v51, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v47, &off_28036C7C0, &off_26A427400);
    sub_26A3F0DA4();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v52, v53, v54, v33);
  }

  return result;
}

uint64_t ReferenceLogo.init(thumbnail:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoReference_Logo(0);
  OUTLINED_FUNCTION_4_56();
  sub_26A3F10E4(v6, v7, &protocol conformance descriptor for _ProtoReference_Logo);
  sub_26A4249C4();

  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A3F0810(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v26[3] = a3;
  v7 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v27 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v27);
  v26[2] = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v26[1] = v26 - v13;
  v14 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v15 - 8);
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  (*(v17 + 8))(v16, v17);
  sub_26A3F0DA4();
  v18 = type metadata accessor for _ProtoReference_Logo(0);
  v19 = *(v18 + 24);
  sub_26A0E48F0(a1 + v19, &qword_28036CAE8, &unk_26A426430);
  sub_26A3F0DA4();
  __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v14);
  sub_26A10FD9C();
  v20 = v31;
  if (!v31)
  {
    sub_26A0E48F0(v30, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v27);
    goto LABEL_5;
  }

  v21 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v21 + 8))(v20, v21);
  sub_26A3F0DA4();
  v22 = v27;
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (__swift_getEnumTagSinglePayload(v10, 1, v22) == 1)
  {
LABEL_5:
    sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
    goto LABEL_6;
  }

  sub_26A3F0DA4();
  sub_26A3F0DA4();
  v23 = *(v18 + 28);
  sub_26A0E48F0(a1 + v23, &off_28036C7C0, &off_26A427400);
  sub_26A3F0DA4();
  __swift_storeEnumTagSinglePayload(a1 + v23, 0, 1, v22);
LABEL_6:
  v24 = v29;

  *a1 = v28;
  a1[1] = v24;
  return result;
}

uint64_t ReferenceLogo.init(thumbnail:action:)(void *a1, uint64_t a2)
{
  sub_26A0E5D68(a1, v8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoReference_Logo(0);
  OUTLINED_FUNCTION_4_56();
  sub_26A3F10E4(v4, v5, &protocol conformance descriptor for _ProtoReference_Logo);
  sub_26A4249C4();
  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_26A3F0D50()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3F0DA4()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3F0DF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t ReferenceLogo.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoReference_Logo(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_0_89();
  sub_26A3F0D50();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_56();
  sub_26A3F0DA4();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t ReferenceLogo.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for ReferenceLogo(0);
  *(inited + 64) = &protocol witness table for ReferenceLogo;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_3_64();
  sub_26A3F0D50();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A3F10E4(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A3F10E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A3F11A0(uint64_t a1)
{
  result = type metadata accessor for _ProtoReference_Logo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_43()
{

  return type metadata accessor for _ProtoReference_Logo(0);
}

Swift::String __swiftcall SectionHeaderStandard.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = v41 - v8;
  v10 = type metadata accessor for SectionHeaderStandard(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD20, &qword_26A426800);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = v41 - v20;
  OUTLINED_FUNCTION_3_65();
  sub_26A3F2524();
  if (redacted)
  {
    _ProtoSectionHeader_Standard.redactedProto.getter(v14);
  }

  else
  {
    sub_26A3F2524();
  }

  sub_26A3F2578();
  v21[*(v18 + 32)] = redacted;
  sub_26A3F25CC(v17, type metadata accessor for SectionHeaderStandard);
  *&v21[*(v18 + 28)] = MEMORY[0x277D84F90];
  SectionHeaderStandard.text1.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_26A105C80(v9);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  SectionHeaderStandard.action.getter(v5);
  sub_26A105B7C();
  sub_26A0E48F0(v5, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F79D0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v27, v28, v29, v30, v41[0], v41[1]);

  sub_26A0FC72C(v31, v32, v33, v34, v35, v36, v37);
  sub_26A0E48F0(v21, &qword_28036CD20, &qword_26A426800);
  v38 = OUTLINED_FUNCTION_175();
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t type metadata accessor for SectionHeaderStandard(uint64_t a1)
{
  result = qword_280373A70;
  if (!qword_280373A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SectionHeaderStandard.text1.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - v2;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  type metadata accessor for _ProtoSectionHeader_Standard(0);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v3, 1, v4);
  if (v9)
  {
    *v8 = MEMORY[0x277D84F90];
    *(v8 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v10 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
    OUTLINED_FUNCTION_37(v3, 1, v4);
    if (!v9)
    {
      sub_26A0E48F0(v3, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3F2578();
  }

  return sub_26A3F2578();
}

uint64_t SectionHeaderStandard.action.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  type metadata accessor for _ProtoSectionHeader_Standard(0);
  sub_26A10FD9C();
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v1);
  v16 = v25;
  sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v17 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v17, v18, v1);
    if (v19)
    {
      *v5 = MEMORY[0x277D84F90];
      v5[1] = 0;
      v5[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v20 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v20, v21, v1);
      if (!v19)
      {
        sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A3F2578();
    }

    sub_26A3F2578();
    v14 = 0;
  }

  v22 = type metadata accessor for ActionProperty(0);
  return __swift_storeEnumTagSinglePayload(v16, v14, 1, v22);
}

uint64_t _ProtoSectionHeader_Standard.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v59 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v58 = (v3 - v4);
  MEMORY[0x28223BE20](v5);
  v57 = (&v55 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v56 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v55 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  OUTLINED_FUNCTION_0_90();
  sub_26A3F2524();
  v60 = type metadata accessor for _ProtoSectionHeader_Standard(0);
  v29 = *(v60 + 24);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v14);
  sub_26A0E48F0(v28, &qword_28036C7B8, &unk_26A425BF0);
  v31 = MEMORY[0x277D84F90];
  v32 = EnumTagSinglePayload == 1;
  v33 = v59;
  if (!v32)
  {
    sub_26A10FD9C();
    v34 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v34, v35, v14);
    if (v32)
    {
      *v20 = v31;
      *(v20 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v33);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v33);
      v42 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v42, v43, v14);
      if (!v32)
      {
        sub_26A0E48F0(v25, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A3F2578();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A3F25CC(v20, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v29, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A3F2578();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v14);
  }

  v47 = *(v60 + 28);
  sub_26A10FD9C();
  v48 = __swift_getEnumTagSinglePayload(v13, 1, v33);
  result = sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (v48 != 1)
  {
    v50 = v56;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v50, 1, v33);
    if (v32)
    {
      v51 = v57;
      *v57 = v31;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v50, 1, v33);
      if (!v32)
      {
        sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v51 = v57;
      sub_26A3F2578();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v58);
    sub_26A3F25CC(v51, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v47, &off_28036C7C0, &off_26A427400);
    sub_26A3F2578();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v52, v53, v54, v33);
  }

  return result;
}

uint64_t SectionHeaderStandard.init(text1:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoSectionHeader_Standard(0);
  OUTLINED_FUNCTION_4_57();
  sub_26A3F28B8(v6, v7, &protocol conformance descriptor for _ProtoSectionHeader_Standard);
  sub_26A4249C4();

  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A3F1FE4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v26[3] = a3;
  v7 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v27 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v27);
  v26[2] = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v26[1] = v26 - v13;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v15 - 8);
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  (*(v17 + 8))(v16, v17);
  sub_26A3F2578();
  v18 = type metadata accessor for _ProtoSectionHeader_Standard(0);
  v19 = *(v18 + 24);
  sub_26A0E48F0(a1 + v19, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A3F2578();
  __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v14);
  sub_26A10FD9C();
  v20 = v31;
  if (!v31)
  {
    sub_26A0E48F0(v30, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v27);
    goto LABEL_5;
  }

  v21 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v21 + 8))(v20, v21);
  sub_26A3F2578();
  v22 = v27;
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (__swift_getEnumTagSinglePayload(v10, 1, v22) == 1)
  {
LABEL_5:
    sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
    goto LABEL_6;
  }

  sub_26A3F2578();
  sub_26A3F2578();
  v23 = *(v18 + 28);
  sub_26A0E48F0(a1 + v23, &off_28036C7C0, &off_26A427400);
  sub_26A3F2578();
  __swift_storeEnumTagSinglePayload(a1 + v23, 0, 1, v22);
LABEL_6:
  v24 = v29;

  *a1 = v28;
  a1[1] = v24;
  return result;
}

uint64_t SectionHeaderStandard.init(text1:action:)(void *a1, uint64_t a2)
{
  sub_26A0E5D68(a1, v8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoSectionHeader_Standard(0);
  OUTLINED_FUNCTION_4_57();
  sub_26A3F28B8(v4, v5, &protocol conformance descriptor for _ProtoSectionHeader_Standard);
  sub_26A4249C4();
  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_26A3F2524()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3F2578()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3F25CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SectionHeaderStandard.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSectionHeader_Standard(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_0_90();
  sub_26A3F2524();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_57();
  sub_26A3F2578();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t SectionHeaderStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SectionHeaderStandard(0);
  *(inited + 64) = &protocol witness table for SectionHeaderStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_3_65();
  sub_26A3F2524();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A3F28B8(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A3F28B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A3F2974(uint64_t a1)
{
  result = type metadata accessor for _ProtoSectionHeader_Standard(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_44()
{

  return type metadata accessor for _ProtoSectionHeader_Standard(0);
}

void _ProtoVisualProperty.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v115 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v115 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_41(v15);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v135 = &v115 - v17;
  v18 = OUTLINED_FUNCTION_45();
  v141 = type metadata accessor for _ProtoCoreChart(v18);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v134 = (v21 - v20);
  v22 = OUTLINED_FUNCTION_45();
  v133 = type metadata accessor for _ProtoCoreChartElement(v22);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17();
  v137 = v24 - v25;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_48();
  v136 = v27;
  v28 = OUTLINED_FUNCTION_45();
  v29 = type metadata accessor for _ProtoCustomElement(v28);
  v30 = OUTLINED_FUNCTION_41(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17();
  v132 = v31 - v32;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_48();
  v131 = v34;
  v35 = OUTLINED_FUNCTION_45();
  v130 = type metadata accessor for ImageElement(v35);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18();
  v129 = (v38 - v37);
  v39 = OUTLINED_FUNCTION_45();
  v40 = type metadata accessor for _ProtoImageElement(v39);
  v41 = OUTLINED_FUNCTION_41(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_17();
  v140 = (v42 - v43);
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_48();
  v128 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  OUTLINED_FUNCTION_41(v46);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v47);
  v142 = &v115 - v48;
  v49 = OUTLINED_FUNCTION_45();
  v50 = type metadata accessor for _ProtoVisualElement(v49);
  v51 = OUTLINED_FUNCTION_79_0(v50);
  v53 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_17();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v115 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v61 = OUTLINED_FUNCTION_41(v60);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_17();
  v123 = v62 - v63;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v64);
  v125 = &v115 - v65;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v66);
  v68 = &v115 - v67;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_48();
  v124 = v70;
  v71 = OUTLINED_FUNCTION_45();
  v126 = type metadata accessor for _ProtoVisualProperty(v71);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_18();
  if (v1[9])
  {
    sub_26A3F612C();
  }

  else
  {
    v117 = v14;
    v118 = v8;
    v121 = v11;
    OUTLINED_FUNCTION_5_58();
    v119 = v73;
    sub_26A3F612C();
    v120 = v1;
    v74 = *v1;
    v75 = *(*v1 + 16);
    v76 = MEMORY[0x277D84F90];
    v122 = v3;
    if (v75)
    {
      v115 = v68;
      v116 = v4;
      v143 = MEMORY[0x277D84F90];
      sub_26A10CE90(0, v75, 0);
      v76 = v143;
      v139 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v77 = v74 + v139;
      v138 = *(v53 + 72);
      v127 = xmmword_26A426400;
      do
      {
        sub_26A3F612C();
        sub_26A3F612C();
        v78 = v142;
        sub_26A10FD9C();
        v79 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v79);
        v81 = v140;
        v82 = v141;
        if (EnumTagSinglePayload != 1)
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_26A3F621C(v142, type metadata accessor for _ProtoVisualElement.OneOf_Element);
              break;
            case 2u:
              v86 = v131;
              sub_26A3F61C8();
              _s10SnippetKit13CustomElementV13redactedProtoAA01_fcD0Vvg_0(v132);
              sub_26A3F621C(v86, type metadata accessor for _ProtoCustomElement);
              sub_26A0E48F0(v59, &qword_28036C838, &qword_26A439300);
              sub_26A3F61C8();
              goto LABEL_17;
            case 3u:
              sub_26A3F61C8();
              sub_26A3F612C();
              v87 = v82;
              v88 = *(v133 + 24);
              v89 = v135;
              sub_26A10FD9C();
              OUTLINED_FUNCTION_3_6(v89);
              if (v90)
              {
                v91 = v134;
                *v134 = v127;
                _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
                if (__swift_getEnumTagSinglePayload(v89, 1, v87) != 1)
                {
                  sub_26A0E48F0(v89, &qword_28036CCB0, &qword_26A426740);
                }
              }

              else
              {
                v91 = v134;
                sub_26A3F61C8();
              }

              sub_26A0E4784(*v91, *(v91 + 1));
              *v91 = v127;
              sub_26A0E48F0(v137 + v88, &qword_28036CCB0, &qword_26A426740);
              sub_26A3F61C8();
              OUTLINED_FUNCTION_126_0();
              __swift_storeEnumTagSinglePayload(v92, v93, v94, v141);
              sub_26A3F621C(v136, type metadata accessor for _ProtoCoreChartElement);
              sub_26A0E48F0(v59, &qword_28036C838, &qword_26A439300);
              sub_26A3F61C8();
              goto LABEL_17;
            default:
              v83 = v128;
              sub_26A3F61C8();
              sub_26A3F612C();
              if (qword_28036C790 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v130, qword_2803A8980);
              v84 = v129;
              sub_26A3F612C();
              sub_26A3F621C(v83, type metadata accessor for _ProtoImageElement);
              v85 = *v84;

              sub_26A3F621C(v84, type metadata accessor for _ProtoImageElement);

              *v81 = v85;
              sub_26A0E48F0(v59, &qword_28036C838, &qword_26A439300);
              sub_26A3F61C8();
LABEL_17:
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_126_0();
              __swift_storeEnumTagSinglePayload(v95, v96, v97, v79);
              break;
          }
        }

        sub_26A3F621C(v56, type metadata accessor for _ProtoVisualElement);
        v143 = v76;
        v99 = *(v76 + 16);
        v98 = *(v76 + 24);
        if (v99 >= v98 >> 1)
        {
          sub_26A10CE90(v98 > 1, v99 + 1, 1);
          v76 = v143;
        }

        *(v76 + 16) = v99 + 1;
        v100 = v138;
        sub_26A3F61C8();
        v77 += v100;
        --v75;
      }

      while (v75);
      v4 = v116;
      v68 = v115;
    }

    v101 = v119;

    *v101 = v76;
    v102 = v126;
    v103 = v124;
    sub_26A10FD9C();
    v104 = __swift_getEnumTagSinglePayload(v103, 1, v4);
    sub_26A0E48F0(v103, &off_28036C7C0, &off_26A427400);
    v105 = v121;
    if (v104 != 1)
    {
      sub_26A10FD9C();
      OUTLINED_FUNCTION_3_6(v68);
      if (v90)
      {
        OUTLINED_FUNCTION_63_13(MEMORY[0x277D84F90]);
        OUTLINED_FUNCTION_3_6(v68);
        if (!v90)
        {
          sub_26A0E48F0(v68, &off_28036C7C0, &off_26A427400);
        }
      }

      else
      {
        sub_26A3F61C8();
      }

      _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v105);
      OUTLINED_FUNCTION_10_56();
      sub_26A0E48F0(v101 + *(v102 + 32), &off_28036C7C0, &off_26A427400);
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v106, v107, v108, v4);
    }

    v109 = v125;
    sub_26A10FD9C();
    v110 = __swift_getEnumTagSinglePayload(v109, 1, v4);
    sub_26A0E48F0(v109, &off_28036C7C0, &off_26A427400);
    if (v110 != 1)
    {
      v111 = v123;
      sub_26A10FD9C();
      OUTLINED_FUNCTION_3_6(v111);
      if (v90)
      {
        OUTLINED_FUNCTION_63_13(MEMORY[0x277D84F90]);
        OUTLINED_FUNCTION_3_6(v111);
        if (!v90)
        {
          sub_26A0E48F0(v111, &off_28036C7C0, &off_26A427400);
        }
      }

      else
      {
        sub_26A3F61C8();
      }

      _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v105);
      OUTLINED_FUNCTION_10_56();
      sub_26A0E48F0(v101 + *(v102 + 36), &off_28036C7C0, &off_26A427400);
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v112, v113, v114, v4);
    }

    sub_26A3F61C8();
  }

  OUTLINED_FUNCTION_75();
}

void VisualProperty.allVisualElements.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for _ProtoVisualElement(0);
  v2 = OUTLINED_FUNCTION_79_0(v1);
  v4 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for VisualElement(0);
  v9 = OUTLINED_FUNCTION_79_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v10 = *v0;
  v11 = *(*v0 + 16);
  if (v11)
  {
    v18 = MEMORY[0x277D84F90];
    sub_26A10D6B4(0, v11, 0);
    v12 = v18;
    v13 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_26A3F612C();
      sub_26A3F612C();
      VisualElement.init(proto:)();
      sub_26A3F621C(v7, type metadata accessor for _ProtoVisualElement);
      v18 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_26A10D6B4(v15 > 1, v16 + 1, 1);
        v12 = v18;
      }

      *(v12 + 16) = v16 + 1;
      sub_26A3F61C8();
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3F3944(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373A80, &unk_26A444488);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = a1(0);
  *(inited + 64) = a2;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_26A3F612C();
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_33_19();
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_0_91();
  sub_26A3F6180(v7, v8, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A4249C4();
  OUTLINED_FUNCTION_27_2(v12);
  OUTLINED_FUNCTION_27_2(v14);
  OUTLINED_FUNCTION_27_2(v10);
  OUTLINED_FUNCTION_27_2(v11);
  swift_setDeallocating();
  return sub_26A10C344();
}

uint64_t VisualPropertyConvertible<>.asVisualProperty()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373A80, &unk_26A444488);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = a1;
  *(inited + 64) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_33_19();
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_0_91();
  v9 = sub_26A3F6180(v7, v8, &protocol conformance descriptor for _ProtoVisualProperty);
  OUTLINED_FUNCTION_65_2(v9, v10, v11, v9, v12, v13, v14, v15, v17);
  OUTLINED_FUNCTION_27_2(v20);
  OUTLINED_FUNCTION_27_2(v22);
  OUTLINED_FUNCTION_27_2(v18);
  OUTLINED_FUNCTION_27_2(v19);
  swift_setDeallocating();
  return sub_26A10C344();
}

Swift::String __swiftcall VisualProperty.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = v32 - v4;
  v6 = type metadata accessor for VisualProperty(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v8);
  v10 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCA0, &unk_26A426730);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = v32 - v13;
  OUTLINED_FUNCTION_4_58();
  sub_26A3F612C();
  v15 = *(v1 + 9);
  if (v15)
  {
    sub_26A3F612C();
  }

  else
  {
    _ProtoVisualProperty.redactedProto.getter();
  }

  sub_26A3F61C8();
  v14[*(v11 + 32)] = v15 ^ 1;
  sub_26A3F621C(v10, type metadata accessor for VisualProperty);
  *&v14[*(v11 + 28)] = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  sub_26A0F739C(KeyPath, 0, 0, v17, v18, v19, v20, v21, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5]);

  sub_26A1467C0(v14[9], 0x4C726F4665666173, 0xEE00676E6967676FLL, 0);
  VisualProperty.focusAction.getter();
  sub_26A109770();
  OUTLINED_FUNCTION_27_2(v5);
  VisualProperty.selectedAction.getter();
  sub_26A109770();
  v22 = OUTLINED_FUNCTION_27_2(v5);
  sub_26A100DE8(v22, v23, v24, v25, v26, v27, v28);
  sub_26A0E48F0(v14, &qword_28036CCA0, &unk_26A426730);
  v29 = OUTLINED_FUNCTION_175();
  result._object = v30;
  result._countAndFlagsBits = v29;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VisualProperty.jsonString(redacted:)(Swift::Bool redacted)
{
  v3 = v2;
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v6 = sub_26A4247D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  if (*(v1 + 9) == 1)
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_91();
    sub_26A3F6180(v14, v15, &protocol conformance descriptor for _ProtoVisualProperty);
    v16 = sub_26A424954();
    if (!v2)
    {
      v3 = v16;
      v4 = v17;
    }

    (*(v7 + 8))(v13, v6);
  }

  else
  {
    _ProtoVisualProperty.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_91();
    sub_26A3F6180(v18, v19, &protocol conformance descriptor for _ProtoVisualProperty);
    v20 = sub_26A424954();
    if (!v2)
    {
      v3 = v20;
      v4 = v21;
    }

    (*(v7 + 8))(v10, v6);
    OUTLINED_FUNCTION_11_41();
  }

  v22 = v3;
  v23 = v4;
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

void VisualProperty.focusAction.getter()
{
  OUTLINED_FUNCTION_76();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v4 = OUTLINED_FUNCTION_41(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31_23();
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_13_1();
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v9)
    {
      OUTLINED_FUNCTION_15_29(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_38_0();
      if (!v9)
      {
        sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A3F61C8();
    }

    sub_26A3F61C8();
    v0 = 0;
  }

  v10 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(&off_28036C7C0, v0, 1, v10);
  OUTLINED_FUNCTION_75();
}

void VisualProperty.selectedAction.getter()
{
  OUTLINED_FUNCTION_76();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v4 = OUTLINED_FUNCTION_41(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31_23();
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_13_1();
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v9)
    {
      OUTLINED_FUNCTION_15_29(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_38_0();
      if (!v9)
      {
        sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A3F61C8();
    }

    sub_26A3F61C8();
    v0 = 0;
  }

  v10 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(&off_28036C7C0, v0, 1, v10);
  OUTLINED_FUNCTION_75();
}

uint64_t VisualProperty.visualElement(for:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC28, &qword_26A43A760);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_163_1();
  VisualProperty.allVisualElements.getter();
  sub_26A1D65A0();

  v4 = type metadata accessor for VisualElement(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) != 1)
  {
    return sub_26A3F61C8();
  }

  sub_26A0E48F0(v1, &qword_28036CC28, &qword_26A43A760);
  if (qword_28036C5A0 != -1)
  {
    swift_once();
  }

  v6 = sub_26A424AE4();
  __swift_project_value_buffer(v6, qword_2803A8950);
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_26A424EF4();
  MEMORY[0x26D65BA70](0xD000000000000053, 0x800000026A44B300);
  v7 = _ProtoIdiom.description.getter();
  MEMORY[0x26D65BA70](v7);

  v8 = sub_26A424AD4();
  v9 = sub_26A424E14();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_26A0E8788(0, 0xE000000000000000, v12);
    _os_log_impl(&dword_26A0B8000, v8, v9, "%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x26D65C950](v11, -1, -1);
    MEMORY[0x26D65C950](v10, -1, -1);
  }

  result = sub_26A424FC4();
  __break(1u);
  return result;
}

{
  VisualProperty.allVisualElements.getter();
  sub_26A1D65A0();
}

uint64_t VisualProperty.init<A>(_:safeForLogging:focusAction:selectedAction:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_0_91();
  sub_26A3F6180(v10, v11, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A4249C4();
  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t sub_26A3F4980(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v52 = a4;
  v51 = a3;
  v57 = a1;
  v56 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v56);
  v55 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for CoreChartElement(0);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for CustomElement(0);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for ColorElement(0);
  MEMORY[0x28223BE20](v13 - 8);
  v59 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for ImageElement(0);
  MEMORY[0x28223BE20](v15 - 8);
  v58 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = type metadata accessor for VisualElement(0);
  MEMORY[0x28223BE20](v64);
  MEMORY[0x28223BE20](v17);
  v19 = &v50[-v18];
  v20 = type metadata accessor for _ProtoVisualElement(0);
  v62 = *(v20 - 8);
  v63 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v50[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *(a2 + 16);
  *&v65 = MEMORY[0x277D84F90];
  sub_26A10CE90(0, v23, 0);
  v24 = v65;
  if (v23)
  {
    v25 = a2 + 32;
    while (2)
    {
      sub_26A0E5D68(v25, v67);
      v26 = v68;
      v27 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      (*(v27 + 8))(v26, v27);
      sub_26A3F612C();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v28 = v59;
          v37 = sub_26A3F61C8();
          MEMORY[0x28223BE20](v37);
          *&v50[-16] = v28;
          sub_26A3F6180(qword_281579800, type metadata accessor for _ProtoVisualElement, &protocol conformance descriptor for _ProtoVisualElement);
          v38 = v70;
          sub_26A4249C4();
          v70 = v38;
          v31 = type metadata accessor for ColorElement;
          goto LABEL_9;
        case 2u:
          v28 = v60;
          v33 = sub_26A3F61C8();
          MEMORY[0x28223BE20](v33);
          *&v50[-16] = v28;
          sub_26A3F6180(qword_281579800, type metadata accessor for _ProtoVisualElement, &protocol conformance descriptor for _ProtoVisualElement);
          v34 = v70;
          sub_26A4249C4();
          v70 = v34;
          v31 = type metadata accessor for CustomElement;
          goto LABEL_9;
        case 3u:
          v28 = v61;
          v35 = sub_26A3F61C8();
          MEMORY[0x28223BE20](v35);
          *&v50[-16] = v28;
          sub_26A3F6180(qword_281579800, type metadata accessor for _ProtoVisualElement, &protocol conformance descriptor for _ProtoVisualElement);
          v36 = v70;
          sub_26A4249C4();
          v70 = v36;
          v31 = type metadata accessor for CoreChartElement;
          goto LABEL_9;
        case 4u:
          v32 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
          __swift_storeEnumTagSinglePayload(v22, 1, 1, v32);
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          goto LABEL_10;
        default:
          v28 = v58;
          v29 = sub_26A3F61C8();
          MEMORY[0x28223BE20](v29);
          *&v50[-16] = v28;
          sub_26A3F6180(qword_281579800, type metadata accessor for _ProtoVisualElement, &protocol conformance descriptor for _ProtoVisualElement);
          v30 = v70;
          sub_26A4249C4();
          v70 = v30;
          v31 = type metadata accessor for ImageElement;
LABEL_9:
          sub_26A3F621C(v28, v31);
LABEL_10:
          sub_26A3F621C(v19, type metadata accessor for VisualElement);
          __swift_destroy_boxed_opaque_existential_1(v67);
          *&v65 = v24;
          v40 = *(v24 + 16);
          v39 = *(v24 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_26A10CE90(v39 > 1, v40 + 1, 1);
            v24 = v65;
          }

          *(v24 + 16) = v40 + 1;
          sub_26A3F61C8();
          v25 += 40;
          if (!--v23)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  v41 = v57;

  *v41 = v24;
  *(v41 + 9) = v51 & 1;
  sub_26A10FD9C();
  if (v66)
  {
    sub_26A0D671C(&v65, v67);
    v42 = v68;
    v43 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    (*(v43 + 8))(v42, v43);
    sub_26A3F61C8();
    v44 = *(type metadata accessor for _ProtoVisualProperty(0) + 32);
    sub_26A0E48F0(v41 + v44, &off_28036C7C0, &off_26A427400);
    sub_26A3F61C8();
    v45 = v56;
    __swift_storeEnumTagSinglePayload(v41 + v44, 0, 1, v56);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_26A0E48F0(&v65, &qword_28036CAF8, &unk_26A426D30);
    v45 = v56;
  }

  sub_26A10FD9C();
  if (!v66)
  {
    return sub_26A0E48F0(&v65, &qword_28036CAF8, &unk_26A426D30);
  }

  sub_26A0D671C(&v65, v67);
  v46 = v68;
  v47 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  (*(v47 + 8))(v46, v47);
  sub_26A3F61C8();
  v48 = *(type metadata accessor for _ProtoVisualProperty(0) + 36);
  sub_26A0E48F0(v41 + v48, &off_28036C7C0, &off_26A427400);
  sub_26A3F61C8();
  __swift_storeEnumTagSinglePayload(v41 + v48, 0, 1, v45);
  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_26A3F5378(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a5;
  v11 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v11);
  v12 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v12 - 8);
  v13 = type metadata accessor for _ProtoVisualElement(0);
  v15 = sub_26A409784(sub_26A3F56B4, 0, a6, v13, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v14);

  *a1 = v15;
  *(a1 + 9) = a3;
  sub_26A10FD9C();
  if (v24)
  {
    sub_26A0D671C(&v23, v25);
    v16 = v26;
    v17 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v17 + 8))(v16, v17);
    sub_26A3F61C8();
    v18 = *(type metadata accessor for _ProtoVisualProperty(0) + 32);
    sub_26A0E48F0(a1 + v18, &off_28036C7C0, &off_26A427400);
    sub_26A3F61C8();
    __swift_storeEnumTagSinglePayload(a1 + v18, 0, 1, v11);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_26A0E48F0(&v23, &qword_28036CAF8, &unk_26A426D30);
  }

  sub_26A10FD9C();
  if (!v24)
  {
    return sub_26A0E48F0(&v23, &qword_28036CAF8, &unk_26A426D30);
  }

  sub_26A0D671C(&v23, v25);
  v19 = v26;
  v20 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v20 + 8))(v19, v20);
  sub_26A3F61C8();
  v21 = *(type metadata accessor for _ProtoVisualProperty(0) + 36);
  sub_26A0E48F0(a1 + v21, &off_28036C7C0, &off_26A427400);
  sub_26A3F61C8();
  __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v11);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_26A3F56B4(void *a1)
{
  v2 = type metadata accessor for VisualElement(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 8))(v5, v6);
  VisualElement.proto.getter();
  return sub_26A3F621C(v4, type metadata accessor for VisualElement);
}

void VisualProperty.init<A>(_:redacted:focusAction:selectedAction:)()
{
  OUTLINED_FUNCTION_76();
  v16 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(v1 - 8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  (*(v11 + 16))(v13 - v12, v10, v15);
  sub_26A10FD9C();
  sub_26A10FD9C();
  VisualProperty.init<A>(_:safeForLogging:focusAction:selectedAction:)(v14, (v8 & 1) == 0, &v18, &v17, v2, v16);
  sub_26A0E48F0(v4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v6, &qword_28036CAF8, &unk_26A426D30);
  (*(v11 + 8))(v10, v2);
  OUTLINED_FUNCTION_75();
}

uint64_t VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_33_19();
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_0_91();
  sub_26A3F6180(v6, v7, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A4249C4();
  OUTLINED_FUNCTION_27_2(a4);
  OUTLINED_FUNCTION_27_2(a3);
  OUTLINED_FUNCTION_27_2(v9);
  OUTLINED_FUNCTION_27_2(v10);
}

uint64_t VisualProperty.init(_:redacted:focusAction:selectedAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_33_19();
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_0_91();
  v8 = sub_26A3F6180(v6, v7, &protocol conformance descriptor for _ProtoVisualProperty);
  OUTLINED_FUNCTION_65_2(v8, v9, v10, v8, v11, v12, v13, v14, v16);
  OUTLINED_FUNCTION_27_2(a4);
  OUTLINED_FUNCTION_27_2(a3);
  OUTLINED_FUNCTION_27_2(v17);
  OUTLINED_FUNCTION_27_2(v18);
}

uint64_t VisualProperty.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_0_91();
  sub_26A3F6180(v1, v2, &protocol conformance descriptor for _ProtoVisualProperty);

  return sub_26A424B44();
}

uint64_t VisualProperty.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_0_91();
  sub_26A3F6180(v0, v1, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3F5EB8(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A3F6180(&qword_28036D300, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t type metadata accessor for VisualProperty(uint64_t a1)
{
  result = qword_28157ACA8;
  if (!qword_28157ACA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A3F60AC(uint64_t a1)
{
  result = type metadata accessor for _ProtoVisualProperty(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3F612C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3F6180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A3F61C8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A3F621C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6_41()
{

  return sub_26A3F61C8();
}

uint64_t OUTLINED_FUNCTION_10_56()
{

  return sub_26A3F621C(v0, type metadata accessor for _ProtoActionProperty);
}

uint64_t OUTLINED_FUNCTION_11_41()
{

  return sub_26A3F621C(v0, type metadata accessor for _ProtoVisualProperty);
}

uint64_t OUTLINED_FUNCTION_18_35()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_30_19()
{

  return type metadata accessor for _ProtoVisualProperty(0);
}

uint64_t OUTLINED_FUNCTION_31_23()
{

  return type metadata accessor for _ProtoVisualProperty(0);
}

uint64_t OUTLINED_FUNCTION_33_19()
{

  return type metadata accessor for _ProtoVisualProperty(0);
}

Swift::String __swiftcall PlayerButton.description(redacted:)(Swift::Bool redacted)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for PlayerButton(0);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF20, &qword_26A426AA8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  sub_26A3F74A4(v1, v14);
  if (redacted)
  {
    _ProtoPlayerButton.redactedProto.getter(v11);
  }

  else
  {
    sub_26A3F74A4(v14, v11);
  }

  sub_26A3F6E6C(v11, v18);
  v18[*(v15 + 32)] = redacted;
  sub_26A3F7124(v14, type metadata accessor for PlayerButton);
  *&v18[*(v15 + 28)] = MEMORY[0x277D84F90];
  PlayerButton.playButton.getter(v6);
  v19 = type metadata accessor for Button(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  sub_26A103E0C();
  sub_26A0E48F0(v6, &qword_28036CD38, &qword_26A437B70);
  PlayerButton.pauseButton.getter(v6);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  sub_26A103E0C();
  v26 = sub_26A0E48F0(v6, &qword_28036CD38, &qword_26A437B70);
  sub_26A0F8ED8(v26, v27, v28, v29, v30, v31, v32);
  v34 = v33;
  v36 = v35;
  sub_26A0E48F0(v18, &qword_28036CF20, &qword_26A426AA8);
  v37 = v34;
  v38 = v36;
  result._object = v38;
  result._countAndFlagsBits = v37;
  return result;
}

uint64_t type metadata accessor for PlayerButton(uint64_t a1)
{
  result = qword_280373A98;
  if (!qword_280373A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _ProtoPlayerButton.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v50 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v51 = &v48 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  v49 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  OUTLINED_FUNCTION_5_59();
  sub_26A3F74A4(v2, a1);
  v26 = type metadata accessor for _ProtoPlayerButton(0);
  v27 = *(v26 + 20);
  sub_26A2928A4(a1 + v27, v25);
  v28 = OUTLINED_FUNCTION_83_11(v25);
  sub_26A0E48F0(v25, &qword_28036EC48, &unk_26A4385C0);
  if (v28 != 1)
  {
    sub_26A2928A4(a1 + v27, v22);
    if (OUTLINED_FUNCTION_83_11(v22) == 1)
    {
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v29 = *(v4 + 20);
      if (qword_28036C428 != -1)
      {
        OUTLINED_FUNCTION_60_4(&qword_28036C428);
      }

      *&v12[v29] = qword_280371710;
      v30 = OUTLINED_FUNCTION_83_11(v22);

      if (v30 != 1)
      {
        sub_26A0E48F0(v22, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      sub_26A3F6E6C(v22, v12);
    }

    v31 = v51;
    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_4_59();
    sub_26A3F7124(v12, v32);
    sub_26A0E48F0(a1 + v27, &qword_28036EC48, &unk_26A4385C0);
    OUTLINED_FUNCTION_3_66();
    sub_26A3F6E6C(v31, a1 + v27);
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v4);
  }

  v36 = *(v26 + 24);
  sub_26A2928A4(a1 + v36, v19);
  v37 = OUTLINED_FUNCTION_83_11(v19);
  result = sub_26A0E48F0(v19, &qword_28036EC48, &unk_26A4385C0);
  if (v37 != 1)
  {
    v39 = v49;
    sub_26A2928A4(a1 + v36, v49);
    if (OUTLINED_FUNCTION_83_11(v39) == 1)
    {
      v40 = v50;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v41 = *(v4 + 20);
      if (qword_28036C428 != -1)
      {
        OUTLINED_FUNCTION_60_4(&qword_28036C428);
      }

      *(v40 + v41) = qword_280371710;
      v42 = OUTLINED_FUNCTION_83_11(v39);

      if (v42 != 1)
      {
        sub_26A0E48F0(v39, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      v40 = v50;
      sub_26A3F6E6C(v39, v50);
    }

    v43 = v51;
    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_4_59();
    sub_26A3F7124(v40, v44);
    sub_26A0E48F0(a1 + v36, &qword_28036EC48, &unk_26A4385C0);
    OUTLINED_FUNCTION_3_66();
    sub_26A3F6E6C(v43, a1 + v36);
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v45, v46, v47, v4);
  }

  return result;
}

uint64_t PlayerButton.playButton.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_8_44();
  sub_26A2928A4(v1 + *(v9 + 20), v3);
  if (OUTLINED_FUNCTION_95_1() == 1)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v10 = *(v7 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    *(v2 + v10) = qword_280371710;
    v11 = OUTLINED_FUNCTION_95_1();

    if (v11 != 1)
    {
      sub_26A0E48F0(v3, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    sub_26A3F6E6C(v3, v2);
  }

  return sub_26A3F6E6C(v2, a1);
}

uint64_t PlayerButton.pauseButton.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_8_44();
  sub_26A2928A4(v1 + *(v9 + 24), v3);
  if (OUTLINED_FUNCTION_95_1() == 1)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v10 = *(v7 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    *(v2 + v10) = qword_280371710;
    v11 = OUTLINED_FUNCTION_95_1();

    if (v11 != 1)
    {
      sub_26A0E48F0(v3, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    sub_26A3F6E6C(v3, v2);
  }

  return sub_26A3F6E6C(v2, a1);
}

uint64_t sub_26A3F6E6C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t PlayerButton.init(playButton:pauseButton:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoPlayerButton(0);
  OUTLINED_FUNCTION_1_68();
  sub_26A3F7338(v4, v5, &protocol conformance descriptor for _ProtoPlayerButton);
  sub_26A4249C4();
  sub_26A3F7124(a2, type metadata accessor for Button);
  return sub_26A3F7124(a1, type metadata accessor for Button);
}

uint64_t sub_26A3F6F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v5 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A3F74A4(a2, v7);
  v8 = type metadata accessor for _ProtoPlayerButton(0);
  v9 = *(v8 + 20);
  sub_26A0E48F0(a1 + v9, &qword_28036EC48, &unk_26A4385C0);
  sub_26A3F6E6C(v7, a1 + v9);
  __swift_storeEnumTagSinglePayload(a1 + v9, 0, 1, v5);
  sub_26A3F74A4(v13, v7);
  v10 = *(v8 + 24);
  sub_26A0E48F0(a1 + v10, &qword_28036EC48, &unk_26A4385C0);
  sub_26A3F6E6C(v7, a1 + v10);
  return __swift_storeEnumTagSinglePayload(a1 + v10, 0, 1, v5);
}

uint64_t sub_26A3F7124(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t PlayerButton.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoPlayerButton(0);
  OUTLINED_FUNCTION_1_68();
  sub_26A3F7338(v1, v2, &protocol conformance descriptor for _ProtoPlayerButton);

  return sub_26A424B44();
}

uint64_t PlayerButton.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoPlayerButton(0);
  OUTLINED_FUNCTION_1_68();
  sub_26A3F7338(v0, v1, &protocol conformance descriptor for _ProtoPlayerButton);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3F7338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A3F7388(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoPlayerButton(0);
  sub_26A3F7338(&qword_2803715F0, type metadata accessor for _ProtoPlayerButton, &protocol conformance descriptor for _ProtoPlayerButton);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3F7438(uint64_t a1)
{
  result = type metadata accessor for _ProtoPlayerButton(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3F74A4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_44()
{

  return type metadata accessor for _ProtoPlayerButton(0);
}

uint64_t SeparatorStyle.hashValue.getter()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

unint64_t sub_26A3F7620()
{
  result = qword_280373AA8;
  if (!qword_280373AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373AA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SeparatorStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SeparatorStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Standard.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoPrimaryHeader_Standard(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Standard.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoPrimaryHeader_Standard(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Standard.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoPrimaryHeader_Standard(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Standard.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoPrimaryHeader_Standard(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Standard.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoPrimaryHeader_Standard(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Standard.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoPrimaryHeader_Standard(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Standard.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Standard.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Standard.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Standard.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Standard.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoPrimaryHeader_Standard(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Marquee.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoPrimaryHeader_Marquee(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Marquee.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoPrimaryHeader_Marquee(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Marquee.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoPrimaryHeader_Marquee(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Marquee.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoPrimaryHeader_Marquee(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Marquee.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoPrimaryHeader_Marquee(v3);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Marquee.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoPrimaryHeader_Marquee(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A3F85F4@<X0>(void (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v8 = OUTLINED_FUNCTION_124();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_141_0();
  a1(0);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_142(v3 + *a2, v19);
  sub_26A10FD9C();
  v12 = type metadata accessor for _ProtoActionProperty(0);
  v13 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v13, v14, v12);
  if (!v15)
  {
    return sub_26A403720();
  }

  *a3 = MEMORY[0x277D84F90];
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v16 = OUTLINED_FUNCTION_72();
  result = OUTLINED_FUNCTION_37(v16, v17, v12);
  if (!v15)
  {
    return sub_26A0E48F0(v4, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t sub_26A3F8758(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  OUTLINED_FUNCTION_142(v3, v6);
  v4 = *v3;

  return v4;
}

uint64_t _ProtoPrimaryHeader_Marquee.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t sub_26A3F88F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v10 = v6;
  v13 = *(a3(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_5_3();
    v15 = a5(v16);
    *(v10 + v13) = v15;
  }

  v17 = (v15 + *a6);
  OUTLINED_FUNCTION_26_10(v17, v19);
  *v17 = a1;
  v17[1] = a2;
}

uint64_t _ProtoPrimaryHeader_Marquee.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Marquee.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Marquee.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Marquee.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoPrimaryHeader_Marquee(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A3F8D78@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_125();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_26A3F8EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_11_42();
  sub_26A403820(v11, v12, MEMORY[0x277D216D0]);
  return sub_26A424B64() & 1;
}

void _ProtoPrimaryHeader_Standard.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoPrimaryHeader_Standard(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Standard.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A3F91C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  sub_26A403774();
  return a7(v7);
}

void _ProtoPrimaryHeader_Standard.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoPrimaryHeader_Standard(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Standard.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoPrimaryHeader_Standard.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoPrimaryHeader_Standard(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Standard.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoPrimaryHeader_Standard.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoActionProperty(v8);
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoPrimaryHeader_Standard(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v14)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Standard.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A3F98BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoPrimaryHeader_Standard.componentName.setter(v1, v2);
}

uint64_t _ProtoPrimaryHeader_Standard.componentName.modify()
{
  v2 = OUTLINED_FUNCTION_41_7();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_20_11(v3);
  v5 = type metadata accessor for _ProtoPrimaryHeader_Standard(v4);
  OUTLINED_FUNCTION_42_6(v5);
  OUTLINED_FUNCTION_38_6();
  v6 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_133();
}

void _ProtoPrimaryHeader_Marquee.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoPrimaryHeader_Marquee(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Marquee.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoPrimaryHeader_Marquee.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoPrimaryHeader_Marquee(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Marquee.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoPrimaryHeader_Marquee.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoActionProperty(v8);
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoPrimaryHeader_Marquee(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v14)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Marquee.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoPrimaryHeader_Marquee.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  type metadata accessor for _ProtoVisualProperty(v8);
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  type metadata accessor for _ProtoPrimaryHeader_Marquee(v13);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Marquee.clearThumbnail()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A3FA25C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoPrimaryHeader_Marquee.componentName.setter(v1, v2);
}

uint64_t _ProtoPrimaryHeader_Marquee.componentName.modify()
{
  v2 = OUTLINED_FUNCTION_41_7();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_20_11(v3);
  v5 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v4);
  OUTLINED_FUNCTION_42_6(v5);
  OUTLINED_FUNCTION_38_6();
  v6 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoPrimaryHeader_Rich.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_23_41(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Rich.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Rich(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_5_3();
    sub_26A400CEC();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoPrimaryHeader_Rich.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoPrimaryHeader_Rich.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_23_41(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Rich.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Rich(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_5_3();
    sub_26A400CEC();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Rich.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_23_41(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Rich.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Rich(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_5_3();
    sub_26A400CEC();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoPrimaryHeader_Rich.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoPrimaryHeader_Rich.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_23_41(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Rich.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Rich(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_5_3();
    sub_26A400CEC();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Rich.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_23_41(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Rich.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Rich(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_5_3();
    sub_26A400CEC();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoPrimaryHeader_Rich.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoPrimaryHeader_Rich.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_23_41(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Rich.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Rich(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_5_3();
    sub_26A400CEC();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Rich.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_23_41(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Rich.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Rich(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_5_3();
    sub_26A400CEC();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoPrimaryHeader_Rich.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoPrimaryHeader_Rich.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_23_41(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Rich.clearText4()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Rich(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_5_3();
    sub_26A400CEC();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Rich.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_23_41(v3);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v4)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v5 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v5);
  if (!v4)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Rich.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Rich(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_5_3();
    sub_26A400CEC();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoPrimaryHeader_Rich.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoVisualProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoPrimaryHeader_Rich.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_23_41(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Rich.clearThumbnail()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Rich(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_5_3();
    sub_26A400CEC();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Rich.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Rich(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_5_3();
    sub_26A400CEC();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoPrimaryHeader_Rich.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoActionProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A3FBBE0(uint64_t a1, char a2, void (*a3)(void *), void (*a4)(void))
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_103();
    sub_26A403774();
    a3(v6);
    sub_26A4037C8(v7, a4);
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

uint64_t _ProtoPrimaryHeader_Rich.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_23_41(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Rich.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoPrimaryHeader_Rich(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_37_17();
    OUTLINED_FUNCTION_5_3();
    sub_26A400CEC();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A3FBDFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoPrimaryHeader_Rich.componentName.setter(v1, v2);
}

uint64_t _ProtoPrimaryHeader_Rich.componentName.modify()
{
  v2 = OUTLINED_FUNCTION_41_7();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_20_11(v3);
  v5 = type metadata accessor for _ProtoPrimaryHeader_Rich(v4);
  OUTLINED_FUNCTION_42_6(v5);
  OUTLINED_FUNCTION_38_6();
  v6 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_133();
}

void sub_26A3FBF38()
{
  OUTLINED_FUNCTION_76();
  v5 = *v4;
  v6 = *(*v4 + 48);
  v7 = *(*v4 + 56);
  if (v8)
  {
    v9 = v3;

    v10 = OUTLINED_FUNCTION_125();
    v9(v10);
  }

  else
  {
    v11 = v2;
    v12 = v1;
    v13 = v0;
    v14 = *(v5 + 72);
    v15 = *(v5 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v15 + v14);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = *(v5 + 72);
      v19 = *(v5 + 64);
      v13(0);
      OUTLINED_FUNCTION_100_0();
      swift_allocObject();
      v20 = OUTLINED_FUNCTION_5_3();
      v17 = v12(v20);
      *(v19 + v18) = v17;
    }

    v21 = (v17 + *v11);
    OUTLINED_FUNCTION_26_10(v21, v5 + 24);
    *v21 = v6;
    v21[1] = v7;
  }

  OUTLINED_FUNCTION_75();

  free(v22);
}

uint64_t sub_26A3FC064()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373AB0);
  __swift_project_value_buffer(v0, qword_280373AB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_2";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_3";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "action";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "component_name";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A3FC344()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action;
  v4 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  return v0;
}

void sub_26A3FC404()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v7);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = (v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1);
  OUTLINED_FUNCTION_97_8();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_97_8();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2);
  OUTLINED_FUNCTION_97_8();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_97_8();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3);
  OUTLINED_FUNCTION_97_8();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_97_8();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_104_3();
  v22 = swift_endAccess();
  v23 = (v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1(v22, &v27);
  v25 = *v23;
  v24 = v23[1];

  OUTLINED_FUNCTION_26_10(v21, &v26);
  *v21 = v25;
  v21[1] = v24;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3FC708()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A3FC82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A3FC93C(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A3FCA18(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A3FCAF4(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A3FCBD0(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A1BF82C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A3FC93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FCA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FCAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FCBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A403820(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FCCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A3FCDF8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A3FCFE0(a1, a2, a3, a4);
    sub_26A3FD1C8(a1, a2, a3, a4);
    sub_26A3FD3B0(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
    result = swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A3FCDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A3FCFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A3FD1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A3FD3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoActionProperty);
}

void sub_26A3FD598()
{
  OUTLINED_FUNCTION_76();
  v117 = v0;
  v2 = v1;
  v108 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v4);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v10);
  v116 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  v18 = v106 - v17;
  v19 = &unk_26A425BF0;
  v20 = OUTLINED_FUNCTION_41_1();
  v21 = OUTLINED_FUNCTION_41(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  v27 = v106 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v106 - v29;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1);
  v31 = v2;
  sub_26A10FD9C();
  v32 = v117;
  OUTLINED_FUNCTION_128_1(v117 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1);
  v112 = v13;
  v33 = *(v13 + 48);
  sub_26A10FD9C();
  v34 = v32;
  v35 = v116;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v18, 1, v35);
  if (v36)
  {

    sub_26A0E48F0(v30, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(&v18[v33], 1, v35);
    if (v36)
    {
      sub_26A0E48F0(v18, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v38 = &qword_28036C7D0;
    v39 = &qword_26A426DE0;
    v40 = v18;
    goto LABEL_54;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&v18[v33], 1, v35);
  if (v36)
  {

    sub_26A0E48F0(v30, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v27, v37);
    goto LABEL_9;
  }

  sub_26A403720();

  v41 = OUTLINED_FUNCTION_157();
  v19 = static _ProtoTextProperty.== infix(_:_:)(v41, v42);
  v43 = OUTLINED_FUNCTION_21_3();
  sub_26A4037C8(v43, v44);
  sub_26A0E48F0(v30, &qword_28036C7B8, &unk_26A425BF0);
  v45 = OUTLINED_FUNCTION_125();
  sub_26A4037C8(v45, v46);
  sub_26A0E48F0(v18, &qword_28036C7B8, &unk_26A425BF0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_11:
  OUTLINED_FUNCTION_124_1(v31 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2);
  v47 = v115;
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_123_1(v34 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2);
  v48 = v112;
  v49 = *(v112 + 48);
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_59_5();
  v50 = v19;
  sub_26A10FD9C();
  v51 = OUTLINED_FUNCTION_72();
  v52 = v35;
  OUTLINED_FUNCTION_37(v51, v53, v35);
  if (v36)
  {
    sub_26A0E48F0(v47, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(v50 + v49, 1, v35);
    v54 = v113;
    if (v36)
    {
      sub_26A0E48F0(v50, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_21;
    }

LABEL_19:
    v38 = &qword_28036C7D0;
    v39 = &qword_26A426DE0;
    v40 = v50;
    goto LABEL_54;
  }

  v55 = v111;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v50 + v49, 1, v35);
  v54 = v113;
  if (v56)
  {
    sub_26A0E48F0(v115, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v55, v57);
    goto LABEL_19;
  }

  sub_26A403720();
  v58 = OUTLINED_FUNCTION_125();
  v60 = v50;
  v61 = static _ProtoTextProperty.== infix(_:_:)(v58, v59);
  v62 = OUTLINED_FUNCTION_48_1();
  sub_26A4037C8(v62, v63);
  sub_26A0E48F0(v115, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A4037C8(v55, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_21:
  OUTLINED_FUNCTION_142(v31 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, &v123);
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v34 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, &v122);
  v64 = *(v48 + 48);
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  v65 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v65, v66, v52);
  if (v36)
  {
    sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_12_1(v52 + v64);
    v67 = v110;
    if (v36)
    {
      sub_26A0E48F0(v52, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_31;
    }

LABEL_29:
    v38 = &qword_28036C7D0;
    v39 = &qword_26A426DE0;
    v40 = v52;
    goto LABEL_54;
  }

  v68 = v109;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_12_1(v52 + v64);
  v67 = v110;
  if (v69)
  {
    sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v68, v70);
    goto LABEL_29;
  }

  v71 = v114;
  sub_26A403720();
  v72 = static _ProtoTextProperty.== infix(_:_:)(v68, v71);
  v73 = OUTLINED_FUNCTION_48_1();
  sub_26A4037C8(v73, v74);
  OUTLINED_FUNCTION_40_7();
  sub_26A0E48F0(v75, v76, v77);
  sub_26A4037C8(v68, type metadata accessor for _ProtoTextProperty);
  v78 = OUTLINED_FUNCTION_88();
  sub_26A0E48F0(v78, v79, &unk_26A425BF0);
  if ((v72 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_31:
  OUTLINED_FUNCTION_142(v31 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &v121);
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v34 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &v120);
  v80 = *(v107 + 48);
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  v81 = OUTLINED_FUNCTION_72();
  v82 = v108;
  OUTLINED_FUNCTION_37(v81, v83, v108);
  if (!v36)
  {
    v90 = v106[2];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_12_1(v52 + v80);
    if (!v91)
    {
      v93 = v106[1];
      sub_26A403720();
      sub_26A0E36D8(*v90, *v93);
      if (v94)
      {
        v95 = v90[1] == v93[1] && v90[2] == v93[2];
        if (v95 || (sub_26A425354() & 1) != 0)
        {
          v96 = *(v82 + 24);
          v97 = sub_26A424794();
          OUTLINED_FUNCTION_11_42();
          sub_26A403820(v98, v99, MEMORY[0x277D216D0]);
          sub_26A424B64();
          OUTLINED_FUNCTION_61_17();
          sub_26A4037C8(v93, v100);
          OUTLINED_FUNCTION_40_7();
          sub_26A0E48F0(v101, v102, v103);
          sub_26A4037C8(v90, v97);
          v104 = OUTLINED_FUNCTION_88();
          sub_26A0E48F0(v104, v105, &off_26A427400);
          if ((v96 & 1) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_36;
        }
      }

      sub_26A4037C8(v93, type metadata accessor for _ProtoActionProperty);
      sub_26A0E48F0(v67, &off_28036C7C0, &off_26A427400);
      sub_26A4037C8(v90, type metadata accessor for _ProtoActionProperty);
      v40 = OUTLINED_FUNCTION_157();
      v39 = &off_26A427400;
LABEL_54:
      sub_26A0E48F0(v40, v38, v39);
      goto LABEL_55;
    }

    sub_26A0E48F0(v67, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_22_33();
    sub_26A4037C8(v90, v92);
LABEL_44:
    v38 = &qword_28036C7C8;
    v39 = &qword_26A425C00;
    v40 = v52;
    goto LABEL_54;
  }

  sub_26A0E48F0(v67, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_12_1(v52 + v80);
  if (!v36)
  {
    goto LABEL_44;
  }

  sub_26A0E48F0(v52, &off_28036C7C0, &off_26A427400);
LABEL_36:
  v84 = (v31 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  v85 = OUTLINED_FUNCTION_142(v31 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName, &v119);
  v86 = *v84;
  v87 = v84[1];
  v88 = (v34 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1(v85, &v118);
  if (v86 != *v88 || v87 != v88[1])
  {
    OUTLINED_FUNCTION_175();
    sub_26A425354();
  }

LABEL_55:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3FE1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A403820(&qword_280373C50, type metadata accessor for _ProtoPrimaryHeader_Standard, &protocol conformance descriptor for _ProtoPrimaryHeader_Standard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A3FE228(uint64_t a1)
{
  v2 = sub_26A403820(&qword_28036D338, type metadata accessor for _ProtoPrimaryHeader_Standard, &protocol conformance descriptor for _ProtoPrimaryHeader_Standard);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3FE298(uint64_t a1, uint64_t a2)
{
  sub_26A403820(&qword_28036D338, type metadata accessor for _ProtoPrimaryHeader_Standard, &protocol conformance descriptor for _ProtoPrimaryHeader_Standard);

  return sub_26A4249B4();
}

uint64_t sub_26A3FE330()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373AD0);
  __swift_project_value_buffer(v0, qword_280373AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_2";
  *(v10 + 8) = 6;
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
  *v13 = 5;
  *v14 = "thumbnail";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "component_name";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A3FE614(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_100_0();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26A3FE664()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action;
  v4 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  return v0;
}

void sub_26A3FE72C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = (v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_104_3();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_104_3();
  v25 = swift_endAccess();
  v26 = (v2 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1(v25, &v30);
  v28 = *v26;
  v27 = v26[1];

  OUTLINED_FUNCTION_26_10(v24, &v29);
  *v24 = v28;
  v24[1] = v27;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3FEA80()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &off_28036C7C0, &off_26A427400);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);

  return v0;
}

uint64_t sub_26A3FEBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_5_3();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_26A3FEC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A3FED80(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A3FEE5C(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A3FEF38(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A1BF82C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
        break;
      case 5:
        sub_26A3FF014(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A3FED80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FEE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FEF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A403820(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FF014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A403820(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FF120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A3FF19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A3FF2B8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A3FF4A0(a1, a2, a3, a4);
    sub_26A3FF688(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    return sub_26A3FF870(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_26A3FF2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A3FF4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A3FF688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoActionProperty);
}

uint64_t sub_26A3FF870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A403720();
  sub_26A403820(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoVisualProperty);
}

void sub_26A3FFA58()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v95 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v5);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v11);
  v97 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v13);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v17 = OUTLINED_FUNCTION_41(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v19);
  v20 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  v27 = v93 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v29 = OUTLINED_FUNCTION_41(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  v34 = v93 - v33;
  OUTLINED_FUNCTION_125_1(v3 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_128_1(v1 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1);
  v102 = v23;
  v35 = *(v23 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v27, 1, v20);
  if (v38)
  {

    sub_26A0E48F0(v34, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_6(&v27[v35]);
    v36 = v3;
    if (v38)
    {
      sub_26A0E48F0(v27, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_12;
    }

LABEL_9:
    sub_26A0E48F0(v27, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_51;
  }

  v36 = v3;
  v37 = v103;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(&v27[v35]);
  if (v38)
  {

    sub_26A0E48F0(v34, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v37, v39);
    goto LABEL_9;
  }

  v40 = v101;
  sub_26A403720();

  v41 = static _ProtoTextProperty.== infix(_:_:)(v37, v40);
  v42 = OUTLINED_FUNCTION_21_3();
  sub_26A4037C8(v42, v43);
  v35 = &qword_28036C7B8;
  sub_26A0E48F0(v34, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A4037C8(v37, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v27, &qword_28036C7B8, &unk_26A425BF0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_12:
  v44 = v1;
  OUTLINED_FUNCTION_124_1(v36 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2);
  OUTLINED_FUNCTION_148();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_123_1(v1 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2);
  v45 = *(v102 + 48);
  OUTLINED_FUNCTION_188_2();
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v36);
  if (v38)
  {
    sub_26A0E48F0(v35, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_6(v36 + v45);
    if (v38)
    {
      sub_26A0E48F0(v36, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_23;
    }

LABEL_20:
    sub_26A0E48F0(v36, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_51;
  }

  v46 = v99;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v36 + v45);
  if (v47)
  {
    sub_26A0E48F0(v35, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v46, v48);
    goto LABEL_20;
  }

  v49 = v101;
  sub_26A403720();
  v50 = static _ProtoTextProperty.== infix(_:_:)(v46, v49);
  sub_26A4037C8(v49, type metadata accessor for _ProtoTextProperty);
  OUTLINED_FUNCTION_27_2(v35);
  sub_26A4037C8(v46, type metadata accessor for _ProtoTextProperty);
  OUTLINED_FUNCTION_27_2(v36);
  if ((v50 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_23:
  OUTLINED_FUNCTION_142(v36 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &v109);
  v51 = v100;
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v44 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &v108);
  v52 = *(v96 + 48);
  OUTLINED_FUNCTION_188_2();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  v53 = v97;
  OUTLINED_FUNCTION_37(v36, 1, v97);
  if (v38)
  {
    sub_26A0E48F0(v51, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_12_1(v36 + v52);
    v54 = v98;
    if (v38)
    {
      sub_26A0E48F0(v36, &off_28036C7C0, &off_26A427400);
      v55 = v36;
      goto LABEL_28;
    }

LABEL_36:
    v59 = &qword_28036C7C8;
    v60 = &qword_26A425C00;
    v61 = v36;
LABEL_50:
    sub_26A0E48F0(v61, v59, v60);
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_148();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_12_1(v36 + v52);
  v54 = v98;
  if (v57)
  {
    sub_26A0E48F0(v100, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_22_33();
    sub_26A4037C8(v44, v58);
    goto LABEL_36;
  }

  v62 = v93[3];
  sub_26A403720();
  sub_26A0E36D8(*v44, *v62);
  if ((v63 & 1) == 0 || (v44[1] == v62[1] ? (v64 = v44[2] == v62[2]) : (v64 = 0), !v64 && (sub_26A425354() & 1) == 0))
  {
    sub_26A4037C8(v62, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(v100, &off_28036C7C0, &off_26A427400);
    sub_26A4037C8(v44, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(v36, &off_28036C7C0, &off_26A427400);
    goto LABEL_51;
  }

  v65 = *(v53 + 24);
  v66 = sub_26A424794();
  OUTLINED_FUNCTION_11_42();
  sub_26A403820(v67, v68, MEMORY[0x277D216D0]);
  sub_26A424B64();
  OUTLINED_FUNCTION_61_17();
  sub_26A4037C8(v62, v69);
  OUTLINED_FUNCTION_40_7();
  sub_26A0E48F0(v70, v71, v72);
  sub_26A4037C8(v44, v66);
  OUTLINED_FUNCTION_40_7();
  sub_26A0E48F0(v73, v74, v75);
  v55 = v36;
  if ((v65 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_28:
  OUTLINED_FUNCTION_142(v55 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail, &v107);
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v44 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail, &v106);
  v56 = *(v94 + 48);
  OUTLINED_FUNCTION_188_2();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v36, 1, v95);
  if (!v38)
  {
    OUTLINED_FUNCTION_188_2();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_12_1(v36 + v56);
    if (!v76)
    {
      v78 = v93[1];
      sub_26A403720();
      v79 = static _ProtoVisualProperty.== infix(_:_:)(v36, v78);
      v80 = OUTLINED_FUNCTION_48_1();
      sub_26A4037C8(v80, v81);
      OUTLINED_FUNCTION_40_7();
      sub_26A0E48F0(v82, v83, v84);
      sub_26A4037C8(v36, type metadata accessor for _ProtoVisualProperty);
      v85 = OUTLINED_FUNCTION_88();
      sub_26A0E48F0(v85, v86, &unk_26A426430);
      if ((v79 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_53;
    }

    sub_26A0E48F0(v54, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_68_14();
    sub_26A4037C8(v36, v77);
    goto LABEL_49;
  }

  sub_26A0E48F0(v54, &qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_12_1(v36 + v56);
  if (!v38)
  {
LABEL_49:
    v59 = &qword_28036D190;
    v60 = &unk_26A427130;
    v61 = v36;
    goto LABEL_50;
  }

  sub_26A0E48F0(v36, &qword_28036CAE8, &unk_26A426430);
LABEL_53:
  v87 = (v36 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  v88 = OUTLINED_FUNCTION_142(v36 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName, &v105);
  v89 = *v87;
  v90 = v87[1];
  v91 = (v44 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1(v88, &v104);
  if (v89 != *v91 || v90 != v91[1])
  {
    OUTLINED_FUNCTION_175();
    sub_26A425354();
  }

LABEL_51:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A40070C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A403820(&qword_280373C48, type metadata accessor for _ProtoPrimaryHeader_Marquee, &protocol conformance descriptor for _ProtoPrimaryHeader_Marquee);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A40078C(uint64_t a1)
{
  v2 = sub_26A403820(&qword_28036F800, type metadata accessor for _ProtoPrimaryHeader_Marquee, &protocol conformance descriptor for _ProtoPrimaryHeader_Marquee);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A4007FC(uint64_t a1, uint64_t a2)
{
  sub_26A403820(&qword_28036F800, type metadata accessor for _ProtoPrimaryHeader_Marquee, &protocol conformance descriptor for _ProtoPrimaryHeader_Marquee);

  return sub_26A4249B4();
}

uint64_t sub_26A400894()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373AF0);
  __swift_project_value_buffer(v0, qword_280373AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26A42DE50;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "text_2";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "text_3";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "text_4";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "thumbnail";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "action";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "component_name";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A400BE0()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text4, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  return v0;
}

void sub_26A400CEC()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v13);
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v35 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text4);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail, &v43);
  OUTLINED_FUNCTION_148();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_104_3();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &v42);
  OUTLINED_FUNCTION_148();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_104_3();
  v36 = swift_endAccess();
  v37 = (v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1(v36, &v41);
  v39 = *v37;
  v38 = v37[1];

  OUTLINED_FUNCTION_26_10(v35, &v40);
  *v35 = v39;
  v35[1] = v38;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A401190()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &off_28036C7C0, &off_26A427400);

  return v0;
}

uint64_t sub_26A4012AC(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_26A40135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A4014A4(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A401580(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A40165C(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A401738(a2, a1, a3, a4);
        break;
      case 5:
        sub_26A401814(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A4018F0(a2, a1, a3, a4);
        break;
      case 7:
        sub_26A1BF82C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A4014A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A401580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A403820(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A40165C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A403820(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A401738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A401814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A403820(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A4018F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A403820(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A4019FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A401B58(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A401D40(a1, a2, a3, a4);
    sub_26A401F28(a1, a2, a3, a4);
    sub_26A402110(a1, a2, a3, a4);
    sub_26A4022F8(a1, a2, a3, a4);
    sub_26A4024E0(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
    result = swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A401B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A401D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t sub_26A401F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty, &protocol conformance descriptor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t sub_26A402110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A4022F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A403720();
  sub_26A403820(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A4024E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C928, type metadata accessor for _ProtoActionProperty, &protocol conformance descriptor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A4037C8(v9, type metadata accessor for _ProtoActionProperty);
}

void sub_26A4026C8()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v137 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v133 = v6;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42();
  v138 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v134 = v11;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  v140 = v13;
  v143 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v135 = v15;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42();
  v144 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v19 = OUTLINED_FUNCTION_41(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v139 = v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_48();
  v142 = v22;
  v156 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11();
  v149 = v24;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  v151 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_48();
  v157 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v30 = OUTLINED_FUNCTION_41(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8();
  v148 = v31;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  v155 = v33;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  v152 = v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_48();
  v154 = v37;
  v160 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_11();
  v153 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_14_8();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8();
  v147 = v41;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v42);
  v44 = &v133 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v46 = OUTLINED_FUNCTION_41(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8();
  v145 = v47;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_47();
  v150 = v49;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47();
  v158 = v51;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v52);
  v54 = &v133 - v53;
  OUTLINED_FUNCTION_125_1(v4 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_128_1(v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1);
  v146 = v0;
  v55 = *(v0 + 48);
  OUTLINED_FUNCTION_21_3();
  sub_26A10FD9C();
  v56 = v2;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v44);
  v161 = v4;
  if (v58)
  {

    sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_6(&v44[v55]);
    if (v58)
    {
      sub_26A0E48F0(v44, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_12;
    }

LABEL_9:
    v60 = &qword_28036C7D0;
    v61 = &qword_26A426DE0;
LABEL_10:
    v62 = v44;
    goto LABEL_21;
  }

  v57 = v158;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(&v44[v55]);
  if (v58)
  {

    sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v57, v59);
    goto LABEL_9;
  }

  v63 = v153;
  sub_26A403720();

  v64 = static _ProtoTextProperty.== infix(_:_:)(v57, v63);
  sub_26A4037C8(v63, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
  v65 = OUTLINED_FUNCTION_124();
  sub_26A4037C8(v65, v66);
  v56 = v2;
  sub_26A0E48F0(v44, &qword_28036C7B8, &unk_26A425BF0);
  if ((v64 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  OUTLINED_FUNCTION_124_1(v161 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2);
  v67 = v154;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_123_1(v56 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2);
  v68 = *(v159 + 48);
  v69 = v157;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v69, 1, v156);
  if (v58)
  {
    sub_26A0E48F0(v67, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_3_6(v69 + v68);
    v70 = v155;
    if (v58)
    {
      sub_26A0E48F0(v69, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_24;
    }

LABEL_20:
    v60 = &qword_28036F088;
    v61 = &unk_26A42C570;
    v62 = v69;
    goto LABEL_21;
  }

  v71 = v152;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v69 + v68);
  v70 = v155;
  if (v72)
  {
    sub_26A0E48F0(v67, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_71_9();
    sub_26A4037C8(v71, v73);
    goto LABEL_20;
  }

  v74 = v149;
  sub_26A403720();
  v75 = static _ProtoMultilineTextProperty.== infix(_:_:)(v71, v74);
  v76 = OUTLINED_FUNCTION_157();
  sub_26A4037C8(v76, v77);
  OUTLINED_FUNCTION_111_6(v67);
  sub_26A4037C8(v71, type metadata accessor for _ProtoMultilineTextProperty);
  OUTLINED_FUNCTION_111_6(v157);
  if ((v75 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  OUTLINED_FUNCTION_142(v161 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, &v171);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v56 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, &v170);
  v78 = *(v159 + 48);
  v79 = v151;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  v44 = v79;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v79);
  if (v58)
  {
    sub_26A0E48F0(v70, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_3_6(v79 + v78);
    v80 = v150;
    if (v58)
    {
      sub_26A0E48F0(v44, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v81 = v148;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v79 + v78);
  v80 = v150;
  if (v82)
  {
    sub_26A0E48F0(v70, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_71_9();
    sub_26A4037C8(v81, v83);
LABEL_32:
    v60 = &qword_28036F088;
    v61 = &unk_26A42C570;
    goto LABEL_10;
  }

  sub_26A403720();
  v84 = OUTLINED_FUNCTION_103();
  v86 = v44;
  v87 = static _ProtoMultilineTextProperty.== infix(_:_:)(v84, v85);
  v88 = OUTLINED_FUNCTION_157();
  sub_26A4037C8(v88, v89);
  sub_26A0E48F0(v70, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A4037C8(v81, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A0E48F0(v86, &qword_28036CAE0, &unk_26A4273F0);
  if ((v87 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_34:
  OUTLINED_FUNCTION_142(v161 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text4, &v169);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v56 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text4, &v168);
  v90 = v147;
  v91 = *(v146 + 48);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v92 = v160;
  OUTLINED_FUNCTION_37(v90, 1, v160);
  if (v58)
  {
    sub_26A0E48F0(v80, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(v90 + v91, 1, v92);
    if (v58)
    {
      sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_44;
    }

LABEL_42:
    v60 = &qword_28036C7D0;
    v61 = &qword_26A426DE0;
LABEL_53:
    v62 = v90;
    goto LABEL_21;
  }

  v93 = v145;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v90 + v91, 1, v92);
  if (v94)
  {
    sub_26A0E48F0(v80, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v93, v95);
    goto LABEL_42;
  }

  sub_26A403720();
  v96 = OUTLINED_FUNCTION_103();
  v98 = static _ProtoTextProperty.== infix(_:_:)(v96, v97);
  v99 = OUTLINED_FUNCTION_157();
  sub_26A4037C8(v99, v100);
  OUTLINED_FUNCTION_111_6(v80);
  sub_26A4037C8(v93, type metadata accessor for _ProtoTextProperty);
  OUTLINED_FUNCTION_111_6(v90);
  if ((v98 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_44:
  OUTLINED_FUNCTION_142(v161 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail, &v167);
  v101 = v142;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v56 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail, &v166);
  v102 = *(v141 + 48);
  v90 = v144;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v103 = v143;
  OUTLINED_FUNCTION_37(v90, 1, v143);
  if (v58)
  {
    sub_26A0E48F0(v101, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_37(v90 + v102, 1, v103);
    if (v58)
    {
      sub_26A0E48F0(v90, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_55;
    }

    goto LABEL_52;
  }

  v104 = v139;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v90 + v102, 1, v103);
  if (v105)
  {
    sub_26A0E48F0(v101, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_68_14();
    sub_26A4037C8(v104, v106);
LABEL_52:
    v60 = &qword_28036D190;
    v61 = &unk_26A427130;
    goto LABEL_53;
  }

  v107 = v135;
  sub_26A403720();
  v108 = static _ProtoVisualProperty.== infix(_:_:)(v104, v107);
  v109 = OUTLINED_FUNCTION_157();
  sub_26A4037C8(v109, v110);
  OUTLINED_FUNCTION_27_2(v101);
  sub_26A4037C8(v104, type metadata accessor for _ProtoVisualProperty);
  OUTLINED_FUNCTION_27_2(v90);
  if ((v108 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_55:
  OUTLINED_FUNCTION_142(v161 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &v165);
  v111 = v140;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142(v56 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &v164);
  v112 = *(v136 + 48);
  v113 = v138;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v114 = v137;
  OUTLINED_FUNCTION_37(v113, 1, v137);
  if (!v58)
  {
    v121 = v134;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v113 + v112, 1, v114);
    if (!v122)
    {
      v124 = v133;
      sub_26A403720();
      sub_26A0E36D8(*v121, *v124);
      if (v125)
      {
        v126 = v121[1] == v124[1] && v121[2] == v124[2];
        if (v126 || (sub_26A425354() & 1) != 0)
        {
          sub_26A424794();
          OUTLINED_FUNCTION_11_42();
          sub_26A403820(v127, v128, MEMORY[0x277D216D0]);
          v129 = sub_26A424B64();
          sub_26A4037C8(v124, type metadata accessor for _ProtoActionProperty);
          OUTLINED_FUNCTION_27_2(v140);
          sub_26A4037C8(v121, type metadata accessor for _ProtoActionProperty);
          v115 = OUTLINED_FUNCTION_27_2(v113);
          if ((v129 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_60;
        }
      }

      sub_26A4037C8(v124, type metadata accessor for _ProtoActionProperty);
      OUTLINED_FUNCTION_40_7();
      sub_26A0E48F0(v130, v131, v132);
      sub_26A4037C8(v121, type metadata accessor for _ProtoActionProperty);
      v62 = OUTLINED_FUNCTION_88();
      v61 = &off_26A427400;
LABEL_21:
      sub_26A0E48F0(v62, v60, v61);
      goto LABEL_22;
    }

    sub_26A0E48F0(v140, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_22_33();
    sub_26A4037C8(v121, v123);
LABEL_68:
    v60 = &qword_28036C7C8;
    v61 = &qword_26A425C00;
    v62 = v113;
    goto LABEL_21;
  }

  sub_26A0E48F0(v111, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_37(v113 + v112, 1, v114);
  if (!v58)
  {
    goto LABEL_68;
  }

  v115 = sub_26A0E48F0(v113, &off_28036C7C0, &off_26A427400);
LABEL_60:
  v116 = (v161 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1(v115, &v163);
  v117 = *v116;
  v118 = v116[1];
  v119 = (v56 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v56 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName, &v162);
  if (v117 != *v119 || v118 != v119[1])
  {
    OUTLINED_FUNCTION_21_3();
    sub_26A425354();
  }

LABEL_22:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A403720()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A403774()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A4037C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A403820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A4038B0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A425504();
  a1(0);
  v6 = OUTLINED_FUNCTION_125();
  sub_26A403820(v6, v7, a4);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A403C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A403820(&qword_280373C40, type metadata accessor for _ProtoPrimaryHeader_Rich, &protocol conformance descriptor for _ProtoPrimaryHeader_Rich);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A403D20(uint64_t a1)
{
  v2 = sub_26A403820(&qword_28036F768, type metadata accessor for _ProtoPrimaryHeader_Rich, &protocol conformance descriptor for _ProtoPrimaryHeader_Rich);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A403DD8(uint64_t a1, uint64_t a2)
{
  sub_26A403820(&qword_28036F768, type metadata accessor for _ProtoPrimaryHeader_Rich, &protocol conformance descriptor for _ProtoPrimaryHeader_Rich);

  return sub_26A4249B4();
}

uint64_t sub_26A403ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_26A424794();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A403FAC(uint64_t a1)
{
  sub_26A4043E4(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A4043E4(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26A4040C0(uint64_t a1)
{
  sub_26A4043E4(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A4043E4(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
    if (v2 <= 0x3F)
    {
      sub_26A4043E4(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A404228(uint64_t a1)
{
  sub_26A4043E4(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    sub_26A4043E4(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A4043E4(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v3 <= 0x3F)
      {
        sub_26A4043E4(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26A4043E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A424E44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_37_17()
{
  type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_99_8()
{

  return sub_26A403720();
}

uint64_t OUTLINED_FUNCTION_111_6(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

Swift::String __swiftcall SummaryItemShortNumber.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v79 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v82 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v81 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v14);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  v80 = &v78 - v16;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v78 - v26;
  v28 = type metadata accessor for SummaryItemShortNumber(0);
  v29 = OUTLINED_FUNCTION_41(v28);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v78 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD48, &qword_26A426828);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  v36 = &v78 - v35;
  OUTLINED_FUNCTION_25_34();
  sub_26A408EDC();
  if (v3)
  {
    _ProtoSummaryItem_ShortNumber.redactedProto.getter();
  }

  else
  {
    sub_26A408EDC();
  }

  sub_26A408A38();
  v36[*(v33 + 32)] = v3 & 1;
  sub_26A408A8C(v32, type metadata accessor for SummaryItemShortNumber);
  v37 = *(v33 + 28);
  v38 = MEMORY[0x277D84F90];
  *&v36[v37] = MEMORY[0x277D84F90];
  SummaryItemShortNumber.text1.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1077C4(v27, v39 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  sub_26A0E48F0(v27, &qword_28036CB30, &qword_26A426480);
  v40 = type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  OUTLINED_FUNCTION_142(*&v36[*(v40 + 20)] + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, &v83);
  v41 = v80;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_0(v41);
  if (v42)
  {
    *v20 = v38;
    *(v20 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v43 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v43);
    OUTLINED_FUNCTION_48_0(v41);
    if (!v42)
    {
      sub_26A0E48F0(v41, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A408A38();
  }

  sub_26A408A38();
  v50 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v50);
  OUTLINED_FUNCTION_222();
  sub_26A1077C4(v24, v51 & 0xFFFF0000FFFFFFFFLL | 0x3200000000, 0xE500000000000000);
  sub_26A0E48F0(v24, &qword_28036CB30, &qword_26A426480);
  SummaryItemShortNumber.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10779C(v13, v52 & 0xFFFF0000FFFFFFFFLL | 0x3300000000, 0xE500000000000000);
  sub_26A0E48F0(v13, &qword_28036CB28, &qword_26A427980);
  SummaryItemShortNumber.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10779C(v13, v53 & 0xFFFF0000FFFFFFFFLL | 0x3400000000, 0xE500000000000000);
  sub_26A0E48F0(v13, &qword_28036CB28, &qword_26A427980);
  SummaryItemShortNumber.text5.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1077C4(v27, v54 & 0xFFFF0000FFFFFFFFLL | 0x3500000000, 0xE500000000000000);
  sub_26A0E48F0(v27, &qword_28036CB30, &qword_26A426480);
  SummaryItemShortNumber.text6.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1077C4(v27, v55 & 0xFFFF0000FFFFFFFFLL | 0x3600000000, 0xE500000000000000);
  sub_26A0E48F0(v27, &qword_28036CB30, &qword_26A426480);
  v56 = v81;
  SummaryItemShortNumber.thumbnail.getter();
  sub_26A107774(v56, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v56, &qword_28036CB20, &unk_26A426470);
  v57 = v82;
  SummaryItemShortNumber.action.getter();
  sub_26A107670();
  sub_26A0E48F0(v57, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7C78(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v59, v60, v61, v62, v78, v79);

  v63 = swift_getKeyPath();
  sub_26A0F860C(v63, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v64, v65, v66, v67, v78, v79);

  sub_26A0FE610(v68, v69, v70, v71, v72, v73, v74);
  sub_26A0E48F0(v36, &qword_28036CD48, &qword_26A426828);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v76;
  result._countAndFlagsBits = v75;
  return result;
}

uint64_t type metadata accessor for SummaryItemShortNumber(uint64_t a1)
{
  result = qword_280373C58;
  if (!qword_280373C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A404DD8(void *a1)
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v23[-v5 - 8];
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v12 + 20)) + *a1, v23);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_37(v6, 1, v7);
  if (v13)
  {
    *v11 = MEMORY[0x277D84F90];
    *(v11 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    OUTLINED_FUNCTION_37(v6, 1, v7);
    if (!v13)
    {
      sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A408A38();
  }

  return sub_26A408A38();
}

void SummaryItemShortNumber.text3.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoMultilineTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_34();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v9, v10);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v12);
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_18();
    }

    OUTLINED_FUNCTION_66_15();
    v2 = 0;
  }

  v13 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void SummaryItemShortNumber.text4.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoMultilineTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_34();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v9, v10);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v12);
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_18();
    }

    OUTLINED_FUNCTION_66_15();
    v2 = 0;
  }

  v13 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void sub_26A4052AC()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_34();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v10, v11);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v13 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v13);
      if (!v12)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_18();
    }

    OUTLINED_FUNCTION_66_15();
    v3 = 0;
  }

  v14 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v3, 1, v14);
  OUTLINED_FUNCTION_75();
}

void SummaryItemShortNumber.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoVisualProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_34();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v9, v10);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v12);
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_18();
    }

    OUTLINED_FUNCTION_66_15();
    v2 = 0;
  }

  v13 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE8, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void SummaryItemShortNumber.action.getter()
{
  OUTLINED_FUNCTION_76();
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoActionProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_34();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_18();
    }

    sub_26A408A38();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemShortNumber.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_ShortNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t SummaryItemShortNumber.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_ShortNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoSummaryItem_ShortNumber.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v230 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v9);
  v227 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v17);
  v225 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v24 = OUTLINED_FUNCTION_41(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v29);
  v30 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  v42 = v213 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v44 = OUTLINED_FUNCTION_41(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v51);
  v53 = v213 - v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v55);
  v57 = v213 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = v213 - v59;
  OUTLINED_FUNCTION_11_43();
  sub_26A408EDC();
  v61 = *(type metadata accessor for _ProtoSummaryItem_ShortNumber(0) + 20);
  v229 = v1;
  v231 = v61;
  v62 = *(v1 + v61);
  OUTLINED_FUNCTION_142(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number, &v241);
  sub_26A10FD9C();
  LODWORD(v1) = OUTLINED_FUNCTION_32_5(v60);
  sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
  v63 = MEMORY[0x277D84F90];
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v57);
    if (v64)
    {
      *v42 = v63;
      *(v42 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_15_45();
      v66 = *(v65 - 256);
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v66);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v66);
      OUTLINED_FUNCTION_48_0(v57);
      if (!v64)
      {
        sub_26A0E48F0(v57, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A408A38();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_69();
    sub_26A408A8C(v42, v73);
    v74 = v229;
    v75 = v231;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v74 + v75);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v77 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v77);
      OUTLINED_FUNCTION_23_42();
      v62 = v78;
      *(v74 + v75) = v78;
    }

    OUTLINED_FUNCTION_129();
    sub_26A408A38();
    v79 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v30);
    OUTLINED_FUNCTION_211(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__number, v240);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v240);
  OUTLINED_FUNCTION_209();
  v82 = OUTLINED_FUNCTION_32_5(v53);
  OUTLINED_FUNCTION_162_0(v53);
  if (v82 == 1)
  {
    v83 = v229;
    v84 = v225;
  }

  else
  {
    OUTLINED_FUNCTION_128();
    sub_26A10FD9C();
    v85 = OUTLINED_FUNCTION_48_0(v82);
    v83 = v229;
    v84 = v225;
    if (v64)
    {
      v62 = v213[2];
      OUTLINED_FUNCTION_29_25(v85);
      v86 = OUTLINED_FUNCTION_44_0(*(v30 + 32));
      v87 = v230;
      __swift_storeEnumTagSinglePayload(v86, v88, v89, v230);
      v90 = OUTLINED_FUNCTION_44_0(*(v30 + 36));
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v87);
      OUTLINED_FUNCTION_48_0(v82);
      v93 = v231;
      if (!v64)
      {
        sub_26A0E48F0(v82, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_19();
      v93 = v231;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_69();
    sub_26A408A8C(v62, v94);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v83 + v93);
    if ((v95 & 1) == 0)
    {
      v96 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v96);
      OUTLINED_FUNCTION_23_42();
      OUTLINED_FUNCTION_244(v97);
    }

    OUTLINED_FUNCTION_27_31();
    v98 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v30);
    OUTLINED_FUNCTION_211(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v239);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v239);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_32_5(&unk_28036E000);
  OUTLINED_FUNCTION_39_4();
  if (v82 != 1)
  {
    v101 = v213[4];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v101);
    v102 = v231;
    if (v64)
    {
      v82 = v214;
      *v214 = v63;
      *(v82 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_15_45();
      v104 = *(v103 - 256);
      __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v108, v109, v110, v104);
      OUTLINED_FUNCTION_48_0(v101);
      if (!v64)
      {
        sub_26A0E48F0(v101, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128();
      sub_26A408A38();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_69();
    sub_26A408A8C(v82, v111);
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v83 + v102);
    if ((v112 & 1) == 0)
    {
      v113 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v113);
      OUTLINED_FUNCTION_23_42();
      OUTLINED_FUNCTION_244(v114);
    }

    OUTLINED_FUNCTION_27_31();
    v115 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v30);
    OUTLINED_FUNCTION_211(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v238);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3 + v62, v238);
  OUTLINED_FUNCTION_26_4();
  __swift_getEnumTagSinglePayload(&unk_28036E000, 1, v84);
  OUTLINED_FUNCTION_39_4();
  if (v82 != 1)
  {
    v118 = v215;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v118, 1, v84);
    v119 = v231;
    if (v64)
    {
      v82 = v216;
      *v216 = v63;
      *(v82 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_15_45();
      v121 = *(v120 - 256);
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v121);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v125, v126, v127, v121);
      OUTLINED_FUNCTION_37(v118, 1, v84);
      if (!v64)
      {
        sub_26A0E48F0(v118, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128();
      sub_26A408A38();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_24_43();
    sub_26A408A8C(v82, v128);
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v83 + v119);
    if ((v129 & 1) == 0)
    {
      v130 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v130);
      OUTLINED_FUNCTION_23_42();
      OUTLINED_FUNCTION_244(v131);
    }

    OUTLINED_FUNCTION_129();
    sub_26A408A38();
    v132 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, v84);
    OUTLINED_FUNCTION_211(OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3 + v62, v237);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v237);
  OUTLINED_FUNCTION_26_4();
  __swift_getEnumTagSinglePayload(&unk_28036E000, 1, v84);
  OUTLINED_FUNCTION_39_4();
  if (v82 != 1)
  {
    OUTLINED_FUNCTION_128();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v82, 1, v84);
    v135 = v231;
    if (v64)
    {
      v62 = v217;
      *v217 = v63;
      *(v62 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v136 = OUTLINED_FUNCTION_44_0(*(v84 + 32));
      OUTLINED_FUNCTION_58_20(v136, v137, v138);
      v139 = OUTLINED_FUNCTION_44_0(*(v84 + 36));
      __swift_storeEnumTagSinglePayload(v139, v140, v141, &unk_26A4273F0);
      OUTLINED_FUNCTION_37(v82, 1, v84);
      if (!v64)
      {
        sub_26A0E48F0(v82, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_19();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_24_43();
    sub_26A408A8C(v62, v142);
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v83 + v135);
    if ((v143 & 1) == 0)
    {
      v144 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v144);
      OUTLINED_FUNCTION_23_42();
      OUTLINED_FUNCTION_244(v145);
    }

    OUTLINED_FUNCTION_129();
    sub_26A408A38();
    v146 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v146, v147, v148, v84);
    OUTLINED_FUNCTION_211(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v236);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, v236);
  v149 = v224;
  OUTLINED_FUNCTION_209();
  v150 = OUTLINED_FUNCTION_32_5(v149);
  OUTLINED_FUNCTION_162_0(v149);
  if (v150 != 1)
  {
    OUTLINED_FUNCTION_128();
    sub_26A10FD9C();
    v151 = OUTLINED_FUNCTION_48_0(v150);
    v152 = v231;
    if (v64)
    {
      v62 = v218;
      OUTLINED_FUNCTION_29_25(v151);
      v153 = OUTLINED_FUNCTION_44_0(*(v30 + 32));
      OUTLINED_FUNCTION_58_20(v153, v154, v155);
      v156 = OUTLINED_FUNCTION_44_0(*(v30 + 36));
      __swift_storeEnumTagSinglePayload(v156, v157, v158, &unk_26A425BF0);
      OUTLINED_FUNCTION_48_0(v150);
      if (!v64)
      {
        sub_26A0E48F0(v150, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_19();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_69();
    sub_26A408A8C(v62, v159);
    v160 = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v83 + v152);
    if ((v160 & 1) == 0)
    {
      v161 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v161);
      OUTLINED_FUNCTION_23_42();
      OUTLINED_FUNCTION_244(v162);
    }

    OUTLINED_FUNCTION_27_31();
    v163 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v163, v164, v165, v30);
    OUTLINED_FUNCTION_211(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, v235);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, v235);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_32_5(&unk_28036E000);
  OUTLINED_FUNCTION_39_4();
  if (v150 == 1)
  {
    v166 = v230;
  }

  else
  {
    OUTLINED_FUNCTION_128();
    sub_26A10FD9C();
    v167 = OUTLINED_FUNCTION_48_0(v150);
    v168 = v231;
    if (v64)
    {
      v62 = v219;
      OUTLINED_FUNCTION_29_25(v167);
      v169 = OUTLINED_FUNCTION_44_0(*(v30 + 32));
      OUTLINED_FUNCTION_58_20(v169, v170, v171);
      v172 = OUTLINED_FUNCTION_44_0(*(v30 + 36));
      __swift_storeEnumTagSinglePayload(v172, v173, v174, &unk_26A425BF0);
      OUTLINED_FUNCTION_48_0(v150);
      if (!v64)
      {
        sub_26A0E48F0(v150, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_19();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_69();
    sub_26A408A8C(v62, v175);
    v176 = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v83 + v168);
    v166 = v230;
    if ((v176 & 1) == 0)
    {
      v177 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v177);
      OUTLINED_FUNCTION_23_42();
      OUTLINED_FUNCTION_244(v178);
    }

    OUTLINED_FUNCTION_27_31();
    v179 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v179, v180, v181, v30);
    OUTLINED_FUNCTION_211(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, v234);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, v234);
  v182 = v226;
  OUTLINED_FUNCTION_209();
  v183 = v227;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v182, 1, v227);
  OUTLINED_FUNCTION_162_0(v182);
  if (EnumTagSinglePayload == 1)
  {
    v185 = v63;
    v186 = v166;
  }

  else
  {
    OUTLINED_FUNCTION_129();
    sub_26A10FD9C();
    v187 = OUTLINED_FUNCTION_48_0(&unk_26A426430);
    v188 = v231;
    if (v64)
    {
      v62 = v220;
      v185 = v63;
      OUTLINED_FUNCTION_29_25(v187);
      v189 = OUTLINED_FUNCTION_44_0(*(v183 + 32));
      v186 = v166;
      __swift_storeEnumTagSinglePayload(v189, v190, v191, v166);
      v192 = OUTLINED_FUNCTION_44_0(*(v183 + 36));
      __swift_storeEnumTagSinglePayload(v192, v193, v194, v166);
      OUTLINED_FUNCTION_48_0(&unk_26A426430);
      if (!v64)
      {
        sub_26A0E48F0(&unk_26A426430, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_19();
      v185 = v63;
      v186 = v166;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A408A8C(v62, type metadata accessor for _ProtoVisualProperty);
    v195 = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v83 + v188);
    if ((v195 & 1) == 0)
    {
      v196 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v196);
      OUTLINED_FUNCTION_23_42();
      v62 = v197;
      *(v83 + v188) = v197;
    }

    OUTLINED_FUNCTION_129();
    sub_26A408A38();
    v198 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v198, v199, v200, v183);
    OUTLINED_FUNCTION_211(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, v233);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v62 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, v233);
  v201 = v228;
  OUTLINED_FUNCTION_209();
  v202 = __swift_getEnumTagSinglePayload(v201, 1, v186);
  OUTLINED_FUNCTION_162_0(v201);
  if (v202 != 1)
  {
    v203 = v221;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v203, 1, v186);
    v204 = v231;
    if (v64)
    {
      v62 = v222;
      *v222 = v185;
      *(v62 + 8) = 0;
      *(v62 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v203, 1, v186);
      v205 = v223;
      if (!v64)
      {
        sub_26A0E48F0(v203, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_19();
      v205 = v223;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v205);
    sub_26A408A8C(v62, type metadata accessor for _ProtoActionProperty);
    v206 = swift_isUniquelyReferenced_nonNull_native();
    v207 = *(v83 + v204);
    if ((v206 & 1) == 0)
    {
      v208 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v208);
      sub_26A190CC8();
      v207 = v209;
      *(v83 + v204) = v209;
    }

    OUTLINED_FUNCTION_129();
    sub_26A408A38();
    v210 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v210, v211, v212, v186);
    OUTLINED_FUNCTION_211(v207 + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v232);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemShortNumber.init(number:text2:text1:text3:text4:text5:text6:thumbnail:action:componentName:linkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_48_23();
  v17 = v16;
  v29 = v16;
  v30 = v18;
  v19 = v18;
  v21 = v20;
  v31 = v20;
  type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  v33 = v21;
  v34 = v19;
  v35 = v17;
  v36 = v15;
  v37 = v13;
  v38 = v14;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v42 = a10;
  v43 = a11;
  v44 = a12;
  v45 = a13;
  OUTLINED_FUNCTION_0_92();
  v24 = sub_26A408DB4(v22, v23, &protocol conformance descriptor for _ProtoSummaryItem_ShortNumber);
  OUTLINED_FUNCTION_59_9(sub_26A408AE4, v32, v25, v24);

  sub_26A0E48F0(a9, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a8, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_187_0(a7);
  OUTLINED_FUNCTION_187_0(v14);
  OUTLINED_FUNCTION_38_2(v13);
  OUTLINED_FUNCTION_38_2(v15);
  OUTLINED_FUNCTION_187_0(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_26A406F50(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v121 = a7;
  v122 = a8;
  v119 = a6;
  v114 = a5;
  v111 = a3;
  v112 = a4;
  v15 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v15 - 8);
  v110 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v17 - 8);
  v126 = &v99 - v18;
  v125 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v125);
  v106 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v107 = &v99 - v21;
  v22 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v22 - 8);
  v109 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v24 - 8);
  v124 = &v99 - v25;
  v123 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v123);
  v104 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v105 = &v99 - v28;
  v29 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v29 - 8);
  v116 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v31 - 8);
  v117 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v113 = &v99 - v34;
  v115 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v115);
  v101 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v108 = &v99 - v37;
  MEMORY[0x28223BE20](v38);
  v100 = &v99 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v40 - 8);
  v120 = &v99 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v118 = &v99 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v99 - v45;
  v47 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v47);
  v103 = &v99 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v102 = &v99 - v50;
  MEMORY[0x28223BE20](v51);
  v99 = &v99 - v52;
  MEMORY[0x28223BE20](v53);
  v55 = (&v99 - v54);
  v56 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v56 - 8);
  v57 = a2[3];
  v58 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v57);
  (*(v58 + 8))(v57, v58);
  sub_26A408A38();
  _ProtoSummaryItem_ShortNumber.number.setter();
  v60 = v111[3];
  v59 = v111[4];
  __swift_project_boxed_opaque_existential_1(v111, v60);
  (*(v59 + 8))(v60, v59);
  sub_26A408A38();
  v111 = v55;
  _ProtoSummaryItem_ShortNumber.text2.setter();
  sub_26A10FD9C();
  v61 = v128;
  if (v128)
  {
    v62 = v129;
    __swift_project_boxed_opaque_existential_1(v127, v128);
    (*(v62 + 8))(v61, v62);
    sub_26A408A38();
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);
    __swift_destroy_boxed_opaque_existential_1(v127);
    v63 = v47;
    if (__swift_getEnumTagSinglePayload(v46, 1, v47) != 1)
    {
      v64 = v99;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.text1.setter();
      sub_26A408A8C(v64, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v127, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v47);
    v63 = v47;
  }

  sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  v65 = v115;
  sub_26A10FD9C();
  v66 = v128;
  if (v128)
  {
    v67 = v129;
    __swift_project_boxed_opaque_existential_1(v127, v128);
    (*(v67 + 8))(v66, v67);
    v68 = v113;
    sub_26A408A38();
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v65);
    __swift_destroy_boxed_opaque_existential_1(v127);
    if (__swift_getEnumTagSinglePayload(v68, 1, v65) != 1)
    {
      v69 = v100;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.text3.setter();
      sub_26A408A8C(v69, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v127, &qword_28036CB10, &unk_26A426460);
    v68 = v113;
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v65);
  }

  sub_26A0E48F0(v68, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v70 = v128;
  if (v128)
  {
    v71 = v129;
    __swift_project_boxed_opaque_existential_1(v127, v128);
    (*(v71 + 8))(v70, v71);
    v72 = v117;
    sub_26A408A38();
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v65);
    __swift_destroy_boxed_opaque_existential_1(v127);
    if (__swift_getEnumTagSinglePayload(v72, 1, v65) != 1)
    {
      v73 = v101;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.text4.setter();
      sub_26A408A8C(v73, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v127, &qword_28036CB10, &unk_26A426460);
    v72 = v117;
    __swift_storeEnumTagSinglePayload(v117, 1, 1, v65);
  }

  sub_26A0E48F0(v72, &qword_28036CAE0, &unk_26A4273F0);
LABEL_16:
  sub_26A10FD9C();
  v74 = v128;
  if (v128)
  {
    v75 = v129;
    __swift_project_boxed_opaque_existential_1(v127, v128);
    (*(v75 + 8))(v74, v75);
    v76 = v118;
    sub_26A408A38();
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v63);
    __swift_destroy_boxed_opaque_existential_1(v127);
    if (__swift_getEnumTagSinglePayload(v76, 1, v63) != 1)
    {
      v77 = v102;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.text5.setter();
      sub_26A408A8C(v77, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v127, &qword_28036CB08, &unk_26A428720);
    v76 = v118;
    __swift_storeEnumTagSinglePayload(v118, 1, 1, v63);
  }

  sub_26A0E48F0(v76, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v78 = v128;
  if (v128)
  {
    v79 = v129;
    __swift_project_boxed_opaque_existential_1(v127, v128);
    (*(v79 + 8))(v78, v79);
    v80 = v120;
    sub_26A408A38();
    __swift_storeEnumTagSinglePayload(v80, 0, 1, v63);
    __swift_destroy_boxed_opaque_existential_1(v127);
    if (__swift_getEnumTagSinglePayload(v80, 1, v63) != 1)
    {
      v81 = v103;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.text6.setter();
      sub_26A408A8C(v81, type metadata accessor for _ProtoTextProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v127, &qword_28036CB08, &unk_26A428720);
    v80 = v120;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v63);
  }

  sub_26A0E48F0(v80, &qword_28036C7B8, &unk_26A425BF0);
LABEL_26:
  sub_26A10FD9C();
  v82 = v128;
  if (v128)
  {
    v83 = v129;
    __swift_project_boxed_opaque_existential_1(v127, v128);
    (*(v83 + 8))(v82, v83);
    v84 = v124;
    sub_26A408A38();
    v85 = v123;
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v123);
    __swift_destroy_boxed_opaque_existential_1(v127);
    if (__swift_getEnumTagSinglePayload(v84, 1, v85) != 1)
    {
      v86 = v105;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.thumbnail.setter();
      sub_26A408A8C(v86, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_31;
    }
  }

  else
  {
    sub_26A0E48F0(v127, &qword_28036CB00, &unk_26A426450);
    v84 = v124;
    __swift_storeEnumTagSinglePayload(v124, 1, 1, v123);
  }

  sub_26A0E48F0(v84, &qword_28036CAE8, &unk_26A426430);
LABEL_31:
  sub_26A10FD9C();
  v87 = v128;
  if (v128)
  {
    v88 = v129;
    __swift_project_boxed_opaque_existential_1(v127, v128);
    (*(v88 + 8))(v87, v88);
    v89 = v126;
    sub_26A408A38();
    v90 = v125;
    __swift_storeEnumTagSinglePayload(v89, 0, 1, v125);
    __swift_destroy_boxed_opaque_existential_1(v127);
    if (__swift_getEnumTagSinglePayload(v89, 1, v90) != 1)
    {
      v91 = v107;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.action.setter();
      sub_26A408A8C(v91, type metadata accessor for _ProtoActionProperty);
      goto LABEL_36;
    }
  }

  else
  {
    sub_26A0E48F0(v127, &qword_28036CAF8, &unk_26A426D30);
    v89 = v126;
    __swift_storeEnumTagSinglePayload(v126, 1, 1, v125);
  }

  sub_26A0E48F0(v89, &off_28036C7C0, &off_26A427400);
LABEL_36:

  result = _ProtoSummaryItem_ShortNumber.componentName.setter(a11, a12, v92, v93, v94);
  if (a14)
  {

    return _ProtoSummaryItem_ShortNumber.linkIdentifier.setter(a13, a14, v96, v97, v98);
  }

  return result;
}

void SummaryItemShortNumber.init(number:text2:text1:text3:text4:text5:thumbnail:action:componentName:linkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_76();
  v25 = v24;
  v27 = v26;
  v39 = v28;
  v40 = v29;
  v41 = v31;
  v42 = v30;
  v33 = v32;
  v43 = v32;
  v44 = v34;
  sub_26A0E5D68(v34, v68);
  sub_26A0E5D68(v33, v67);
  OUTLINED_FUNCTION_64_17();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  v46 = v68;
  v47 = v67;
  v48 = v66;
  v49 = v65;
  v50 = v64;
  v51 = v63;
  v52 = v61;
  v53 = v60;
  v54 = v59;
  v55 = a21;
  v56 = a22;
  v57 = a23;
  v58 = a24;
  OUTLINED_FUNCTION_0_92();
  v37 = sub_26A408DB4(v35, v36, &protocol conformance descriptor for _ProtoSummaryItem_ShortNumber);
  OUTLINED_FUNCTION_59_9(sub_26A408F30, v45, v38, v37);

  sub_26A0E48F0(v25, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v27, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v39);
  sub_26A0E48F0(v40, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v41, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_26A0E48F0(v59, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v60, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v61);
  OUTLINED_FUNCTION_164_0(v63);
  sub_26A0E48F0(v64, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v65, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v66);
  OUTLINED_FUNCTION_63_16();
  OUTLINED_FUNCTION_75();
}

void SummaryItemShortNumber.init(number:text2:text1:text3:text4:text5:thumbnail:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_76();
  v23 = v22;
  v25 = v24;
  v37 = v26;
  v38 = v27;
  v39 = v29;
  v40 = v28;
  v31 = v30;
  v41 = v30;
  v42 = v32;
  sub_26A0E5D68(v32, v66);
  sub_26A0E5D68(v31, v65);
  OUTLINED_FUNCTION_64_17();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  v44 = v66;
  v45 = v65;
  v46 = v64;
  v47 = v63;
  v48 = v62;
  v49 = v61;
  v50 = v59;
  v51 = v58;
  v52 = v57;
  v53 = a21;
  v54 = a22;
  OUTLINED_FUNCTION_0_92();
  v35 = sub_26A408DB4(v33, v34, &protocol conformance descriptor for _ProtoSummaryItem_ShortNumber);
  v55 = 0;
  v56 = 0;
  OUTLINED_FUNCTION_59_9(sub_26A408F30, v43, v36, v35);

  sub_26A0E48F0(v23, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v25, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v37);
  OUTLINED_FUNCTION_52_18(v38);
  OUTLINED_FUNCTION_52_18(v39);
  OUTLINED_FUNCTION_164_0(v40);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_26A0E48F0(v57, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v58, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v59);
  OUTLINED_FUNCTION_164_0(v61);
  OUTLINED_FUNCTION_52_18(v62);
  OUTLINED_FUNCTION_52_18(v63);
  OUTLINED_FUNCTION_164_0(v64);
  OUTLINED_FUNCTION_63_16();
  OUTLINED_FUNCTION_75();
}

void SummaryItemShortNumber.init(number:text2:text1:text3:text4:thumbnail:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_76();
  v25 = v24;
  OUTLINED_FUNCTION_48_23();
  v32 = v27;
  v33 = v26;
  v28 = v26;
  v34 = v29;
  sub_26A0E5D68(v29, &v45);
  sub_26A0E5D68(v28, &v44);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  OUTLINED_FUNCTION_0_92();
  sub_26A408DB4(v30, v31, &protocol conformance descriptor for _ProtoSummaryItem_ShortNumber);
  sub_26A4249C4();

  sub_26A0E48F0(v25, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v22, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_31_2(v21);
  OUTLINED_FUNCTION_31_2(v23);
  sub_26A0E48F0(v32, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_26A0E48F0(v35, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_38_2(v36);
  OUTLINED_FUNCTION_187_0(v37);
  OUTLINED_FUNCTION_187_0(v39);
  OUTLINED_FUNCTION_31_2(v41);
  OUTLINED_FUNCTION_31_2(&v42);
  OUTLINED_FUNCTION_187_0(&v43);
  OUTLINED_FUNCTION_63_16();
  OUTLINED_FUNCTION_75();
}

void SummaryItemShortNumber.init(number:text2:text1:text3:text4:thumbnail:action:)()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  OUTLINED_FUNCTION_48_23();
  v6 = v5;
  v8 = v7;
  v14 = v7;
  v15 = v9;
  sub_26A0E5D68(v9, v40);
  sub_26A0E5D68(v8, v39);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  v17 = v40;
  v18 = v39;
  v19 = v38;
  v20 = v37;
  v21 = v36;
  v22 = v34;
  v23 = v32;
  v24 = v31;
  v25 = v30;
  v26 = 0;
  v27 = 0xE000000000000000;
  OUTLINED_FUNCTION_0_92();
  v12 = sub_26A408DB4(v10, v11, &protocol conformance descriptor for _ProtoSummaryItem_ShortNumber);
  v28 = 0;
  v29 = 0;
  OUTLINED_FUNCTION_59_9(sub_26A408F30, v16, v13, v12);
  sub_26A0E48F0(v4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v1, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_31_2(v0);
  OUTLINED_FUNCTION_31_2(v2);
  sub_26A0E48F0(v6, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  sub_26A0E48F0(v30, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_38_2(v31);
  OUTLINED_FUNCTION_187_0(v32);
  OUTLINED_FUNCTION_187_0(v34);
  OUTLINED_FUNCTION_31_2(v36);
  OUTLINED_FUNCTION_31_2(v37);
  OUTLINED_FUNCTION_187_0(v38);
  OUTLINED_FUNCTION_63_16();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A408A38()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A408A8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SummaryItemShortNumber.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_11_43();
  sub_26A408EDC();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_26_36();
  sub_26A408A38();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t SummaryItemShortNumber.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemShortNumber(0);
  *(inited + 64) = &protocol witness table for SummaryItemShortNumber;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_25_34();
  sub_26A408EDC();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A408DB4(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A408DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A408E70(uint64_t a1)
{
  result = type metadata accessor for _ProtoSummaryItem_ShortNumber(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A408EDC()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_20_34()
{

  return type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
}

void OUTLINED_FUNCTION_23_42()
{

  sub_26A190CC8();
}

uint64_t OUTLINED_FUNCTION_27_31()
{

  return sub_26A408A38();
}

uint64_t OUTLINED_FUNCTION_29_25(uint64_t a1)
{
  *v1 = v2;
  *(v1 + 8) = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_58_20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 344);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_59_19()
{

  return sub_26A408A38();
}

uint64_t OUTLINED_FUNCTION_61_18()
{

  return sub_26A408A38();
}

uint64_t OUTLINED_FUNCTION_63_16()
{
  __swift_destroy_boxed_opaque_existential_1((v0 - 168));

  return __swift_destroy_boxed_opaque_existential_1((v0 - 128));
}

uint64_t OUTLINED_FUNCTION_64_17()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_65_17()
{

  return type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
}

uint64_t OUTLINED_FUNCTION_66_15()
{

  return sub_26A408A38();
}

void static Response.update(_:viewId:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A424734();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D47B48]) init];
  sub_26A424724();
  v11 = sub_26A424714();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  sub_26A409538(v11, v13, v10);

  sub_26A40959C(a2, a3, v10);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 16))(v14, v15);
  sub_26A4095F4(v16, v17, v10);
  if (qword_28036C5A0 != -1)
  {
    OUTLINED_FUNCTION_0_31(&qword_28036C5A0);
  }

  v18 = sub_26A424AE4();
  __swift_project_value_buffer(v18, qword_2803A8950);
  v19 = v10;
  v20 = sub_26A424AD4();
  v21 = sub_26A424DE4();
  if (!os_log_type_enabled(v20, v21))
  {

    goto LABEL_7;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v32 = v23;
  *v22 = 136315138;
  v24 = sub_26A409668(v19);
  v26 = v25;

  if (v26 >> 60 != 15)
  {
    v27 = sub_26A424664();
    v29 = v28;
    sub_26A10E794(v24, v26);
    v30 = sub_26A0E8788(v27, v29, &v32);

    *(v22 + 4) = v30;
    _os_log_impl(&dword_26A0B8000, v20, v21, "Response+UpdateResponseCommand updateSnippet.stateData: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_1_21();
LABEL_7:

    return;
  }

  __break(1u);
}

void sub_26A409538(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26A424B74();

  [a3 setAceId_];
}

void sub_26A40959C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26A424B74();
  [a3 setViewId_];
}

void sub_26A4095F4(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_26A4246B4();
  sub_26A0E4784(a1, a2);
  [a3 setStateData_];
}

uint64_t sub_26A409668(void *a1)
{
  v1 = [a1 stateData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A4246D4();

  return v3;
}

uint64_t static ImageElement.sources(_:idioms:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_0_93();
  sub_26A40B3F0(v2, v3, &protocol conformance descriptor for _ProtoImageElement);

  sub_26A4249C4();
}

uint64_t sub_26A409784(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a8;
  v9 = v8;
  v72 = a2;
  v73 = a4;
  v71 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_46();
  v66 = v14;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  v59 = a5;
  v60 = &v54 - v16;
  v57 = *(a5 - 8);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17();
  v69 = (v18 - v19);
  MEMORY[0x28223BE20](v20);
  v67 = &v54 - v21;
  sub_26A424E44();
  OUTLINED_FUNCTION_3_46();
  v55 = v23;
  v56 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v54 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17();
  v68 = v31 - v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_46();
  v65 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18();
  v64 = v37 - v36;
  v63 = a6;
  v74 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_46();
  v61 = v38;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v39);
  v41 = &v54 - v40;
  v42 = sub_26A424CF4();
  v75 = sub_26A424F74();
  v70 = sub_26A424F84();
  sub_26A424F54();
  (*(v65 + 16))(v64, v62, a3);
  v73 = v41;
  v65 = a3;
  result = sub_26A424CE4();
  if (v42 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v42)
  {
    v44 = (v66 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_26A424E54();
      result = __swift_getEnumTagSinglePayload(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v71(v29, v67);
      if (v9)
      {
        v52 = OUTLINED_FUNCTION_10_57();
        v53(v52);

        (*(v57 + 32))(v58, v67, v59);
        return (*v44)(v29, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v44)(v29, AssociatedTypeWitness);
      sub_26A424F64();
      if (!--v42)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v45 = (v66 + 32);
  v46 = (v66 + 8);
  v47 = v60;
  while (1)
  {
    sub_26A424E54();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      v48 = OUTLINED_FUNCTION_10_57();
      v49(v48);
      (*(v55 + 8))(v26, v56);
      return v75;
    }

    (*v45)(v47, v26, AssociatedTypeWitness);
    v71(v47, v69);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v46)(v47, AssociatedTypeWitness);
    sub_26A424F64();
  }

  (*v46)(v47, AssociatedTypeWitness);
  v50 = OUTLINED_FUNCTION_10_57();
  v51(v50);

  return (*(v57 + 32))(v58, v69, v59);
}

void *ImageElement.idioms.getter()
{
  if (*(*(v0 + 8) + 16))
  {
  }

  else
  {
    return &unk_287B013E0;
  }
}

uint64_t static ImageElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  ImageElement.sourceTypes.getter();
  v5 = v4;
  ImageElement.sourceTypes.getter();
  sub_26A0DF644(v5, v6);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (*(*(a1 + 8) + 16))
  {
  }

  else
  {
    v9 = &unk_287B013E0;
  }

  v11 = sub_26A10BE7C(v9);
  if (*(*(a2 + 8) + 16))
  {
  }

  else
  {
    v12 = &unk_287B013E0;
  }

  v13 = sub_26A10BE7C(v12);
  v14 = sub_26A290AE0(v11, v13);

  return v14 & 1;
}

Swift::String __swiftcall ImageElement.description(redacted:)(Swift::Bool redacted)
{
  v2 = type metadata accessor for ImageElement(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v6 = (v4 - v5);
  MEMORY[0x28223BE20](v7);
  v9 = (&v36 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC20, &unk_26A426680);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  OUTLINED_FUNCTION_1_70();
  sub_26A40B438();
  if (redacted)
  {
    sub_26A40B438();
    if (qword_28036C790 != -1)
    {
      OUTLINED_FUNCTION_24_36(&qword_28036C790);
    }

    __swift_project_value_buffer(v2, qword_2803A8980);
    OUTLINED_FUNCTION_1_70();
    sub_26A40B438();
    v17 = *v6;

    OUTLINED_FUNCTION_7_34();
    sub_26A40B48C(v6, v18);

    *v9 = v17;
  }

  else
  {
    sub_26A40B438();
  }

  sub_26A40B21C();
  v16[*(v13 + 32)] = redacted;
  OUTLINED_FUNCTION_2_59();
  sub_26A40B48C(v12, v19);
  *&v16[*(v13 + 28)] = MEMORY[0x277D84F90];
  ImageElement.sourceTypes.getter();
  sub_26A3A1D60(v20, 0, 0, 0);

  KeyPath = swift_getKeyPath();
  sub_26A28FC84(KeyPath, 0x736D6F696469, 0xE600000000000000);

  sub_26A0F8D00(v22, v23, v24, v25, v26, v27, v28);
  v30 = v29;
  v32 = v31;
  sub_26A0E48F0(v16, &qword_28036CC20, &unk_26A426680);
  v33 = v30;
  v34 = v32;
  result._object = v34;
  result._countAndFlagsBits = v33;
  return result;
}

uint64_t sub_26A40A188@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ImageElement(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = (v5 - v4);
  OUTLINED_FUNCTION_6_42();
  sub_26A40B438();
  if (qword_28036C790 != -1)
  {
    OUTLINED_FUNCTION_24_36(&qword_28036C790);
  }

  __swift_project_value_buffer(v2, qword_2803A8980);
  OUTLINED_FUNCTION_1_70();
  sub_26A40B438();
  v7 = *v6;

  OUTLINED_FUNCTION_7_34();
  sub_26A40B48C(v6, v8);

  *a1 = v7;
  return result;
}

void ImageElement.sourceTypes.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D510, &qword_26A4283C8);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for ImageElement.SourceType(0);
  OUTLINED_FUNCTION_3_46();
  v29 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v30 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v28 = &v26 - v16;
  v17 = 0;
  v18 = *v0;
  v19 = *(*v0 + 16);
  v31 = MEMORY[0x277D84F90];
  while (v19 != v17)
  {
    if (v17 >= *(v18 + 16))
    {
      __break(1u);
      return;
    }

    v20 = type metadata accessor for _ProtoImageElement.Source(0);
    OUTLINED_FUNCTION_21_2();
    sub_26A40B438();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v20);
    sub_26A10FD9C();
    sub_26A3E29E8();
    sub_26A0E48F0(v5, &qword_28036D980, &qword_26A432970);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_26A0E48F0(v9, &qword_28036D510, &qword_26A4283C8);
      ++v17;
    }

    else
    {
      v27 = type metadata accessor for ImageElement.SourceType;
      sub_26A40B21C();
      sub_26A40B21C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A166A28(0, *(v31 + 16) + 1, 1, v31);
        v31 = v24;
      }

      v22 = *(v31 + 16);
      v21 = *(v31 + 24);
      v23 = (v22 + 1);
      if (v22 >= v21 >> 1)
      {
        v27 = (v22 + 1);
        sub_26A166A28(v21 > 1, v22 + 1, 1, v31);
        v23 = v27;
        v31 = v25;
      }

      ++v17;
      *(v31 + 16) = v23;
      sub_26A40B21C();
    }
  }
}

uint64_t sub_26A40A620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoImageElement(0);
  sub_26A40B3F0(qword_281579A98, type metadata accessor for _ProtoImageElement, &protocol conformance descriptor for _ProtoImageElement);
  sub_26A4249C4();

  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t sub_26A40A718(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for _ProtoImageElement.Source(0);
  v10 = sub_26A409784(sub_26A40A7D8, 0, a4, v8, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], v9);

  *a1 = v10;

  v12 = sub_26A419264(v11);

  a1[1] = v12;
  return result;
}

uint64_t static ImageElement.sources<A>(_:idioms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);

  return sub_26A40A620(v10, a2, a3, a4);
}

uint64_t ImageElement.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_0_93();
  sub_26A40B3F0(v1, v2, &protocol conformance descriptor for _ProtoImageElement);

  return sub_26A424B44();
}

uint64_t ImageElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_0_93();
  sub_26A40B3F0(v0, v1, &protocol conformance descriptor for _ProtoImageElement);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A40A9CC(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement(0);
  sub_26A40B3F0(&qword_280370948, type metadata accessor for _ProtoImageElement, &protocol conformance descriptor for _ProtoImageElement);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t Array<A>.sourceTypes(for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElement(0) - 8;
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v38 - v7);
  v9 = v38 - v8;
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v18 = v38 - v17;
  v19 = *(a2 + 16);
  if (!v19)
  {
    return MEMORY[0x277D84F90];
  }

  v40 = v15;
  v41 = v13;
  v38[0] = v12;
  v38[1] = v16;
  v20 = *a1;
  v21 = *(a1 + 8);
  v22 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v23 = *(v14 + 72);
  v38[2] = v22;
  v39 = v19;
  do
  {
    sub_26A40B438();
    v24 = *(v9 + 1);
    if (v24[2])
    {
    }

    else
    {
      v24 = &unk_287B02710;
    }

    v25 = sub_26A165034(v20, v21, v24);

    if (v25)
    {
      sub_26A40B21C();
LABEL_20:
      sub_26A40B21C();
      ImageElement.sourceTypes.getter();
      v27 = v35;
      OUTLINED_FUNCTION_2_59();
      sub_26A40B48C(v18, v36);
      return v27;
    }

    sub_26A40B48C(v9, type metadata accessor for ImageElement);
    v22 += v23;
    --v19;
  }

  while (v19);
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v29 = v39;
  v28 = v40;
  do
  {
    OUTLINED_FUNCTION_1_70();
    sub_26A40B438();
    if (*(*(v28 + 8) + 16))
    {
    }

    else
    {
      v30 = &unk_287B02740;
    }

    ++v26;
    v31 = v30[2] + 1;
    v32 = 4;
    while (--v31)
    {
      v33 = v30[v32];
      v32 += 2;
      if (!v33)
      {

        sub_26A40B21C();
        v18 = v38[0];
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_2_59();
    sub_26A40B48C(v28, v34);
  }

  while (v26 != v29);
  return v27;
}

uint64_t sub_26A40AD94()
{
  v0 = type metadata accessor for ImageElement.Symbol(0);
  v1 = OUTLINED_FUNCTION_41(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v4 = v3 - v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v30 - v19;
  v21 = type metadata accessor for ImageElement(0);
  __swift_allocate_value_buffer(v21, qword_2803A8980);
  v22 = OUTLINED_FUNCTION_175();
  v30[1] = __swift_project_value_buffer(v22, v23);
  v24 = type metadata accessor for Color(0);
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v24);
  v25 = type metadata accessor for ImageElement.Background(0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v25);
  v30[0] = sub_26A217578(&unk_287B01508);
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoImageElement.Symbol(0);
  strcpy(v33, "slash.circle");
  HIBYTE(v33[6]) = 0;
  v33[7] = -5120;
  v34 = 0;
  v35 = 0;
  v36 = v17;
  v37 = 0;
  v38 = v9;
  sub_26A40B3F0(qword_281579E68, type metadata accessor for _ProtoImageElement.Symbol, &protocol conformance descriptor for _ProtoImageElement.Symbol);
  sub_26A4249C4();
  sub_26A0E48F0(v9, &qword_28036D4D0, &qword_26A428230);
  sub_26A0E48F0(v17, &qword_28036CBA0, &qword_26A4265B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  type metadata accessor for ImageElement.SourceType(0);
  OUTLINED_FUNCTION_21_2();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26A426410;
  sub_26A40B438();
  swift_storeEnumTagMultiPayload();
  v39 = v26;
  type metadata accessor for _ProtoImageElement(0);
  v31 = &v39;
  v32 = v30[0];
  OUTLINED_FUNCTION_0_93();
  sub_26A40B3F0(v27, v28, &protocol conformance descriptor for _ProtoImageElement);
  sub_26A4249C4();

  sub_26A40B48C(v4, type metadata accessor for ImageElement.Symbol);
  sub_26A0E48F0(v12, &qword_28036D4D0, &qword_26A428230);
  sub_26A0E48F0(v20, &qword_28036CBA0, &qword_26A4265B0);
  swift_setDeallocating();
  return sub_26A10C318();
}

uint64_t type metadata accessor for ImageElement(uint64_t a1)
{
  result = qword_28157AF38;
  if (!qword_28157AF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A40B21C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A40B328(uint64_t a1)
{
  result = type metadata accessor for _ProtoImageElement(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A40B3F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A40B438()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A40B48C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_16_31()
{

  return type metadata accessor for _ProtoImageElement(0);
}

uint64_t CodableIntentResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = v5;
  type metadata accessor for CodableIntentResponse.CodingKeys(255, a2, a4, a5);
  OUTLINED_FUNCTION_0_94();
  swift_getWitnessTable();
  sub_26A425084();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A425574();
  if (!v5)
  {
    sub_26A0E718C();
    sub_26A425054();
    sub_26A40BFD0();
    v11 = sub_26A424E24();
    v23 = v11;
    if (v11)
    {
      v25 = OUTLINED_FUNCTION_6_0();
      v26(v25);
      sub_26A0E4784(v29, v30);
      goto LABEL_8;
    }

    type metadata accessor for CodableIntentResponse.Error(0, a2, v12, v13);
    swift_getWitnessTable();
    v6 = swift_allocError();
    swift_willThrow();
    sub_26A0E4784(v29, v30);
    v9 = OUTLINED_FUNCTION_6_0();
    v10(v9);
  }

  if (qword_28036C5A0 != -1)
  {
    swift_once();
  }

  v14 = sub_26A424AE4();
  __swift_project_value_buffer(v14, qword_2803A8950);
  v15 = v6;
  v16 = sub_26A424AD4();
  v17 = sub_26A424E04();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315138;
    swift_getErrorValue();
    v20 = sub_26A4254B4();
    v22 = sub_26A0E8788(v20, v21, &v29);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_26A0B8000, v16, v17, "Failed to decode Intent; creating an empty Intent instead. Error: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x26D65C950](v19, -1, -1);
    MEMORY[0x26D65C950](v18, -1, -1);
  }

  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_8:
  *a3 = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodableIntentResponse.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[2] = *MEMORY[0x277D85DE8];
  type metadata accessor for CodableIntentResponse.CodingKeys(255, *(a2 + 16), a3, a4);
  OUTLINED_FUNCTION_0_94();
  swift_getWitnessTable();
  sub_26A425184();
  OUTLINED_FUNCTION_24();
  v23 = v7;
  v24 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = *v4;
  v12 = objc_opt_self();
  v25[0] = 0;
  v13 = [v12 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v25];
  v14 = v25[0];
  if (v13)
  {
    v15 = sub_26A4246D4();
    v22 = v5;
    v16 = v15;
    v18 = v17;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26A425594();
    v25[0] = v16;
    v25[1] = v18;
    sub_26A0E70D4();
    v19 = v23;
    sub_26A425154();
    (*(v24 + 8))(v10, v19);
    return sub_26A0E4784(v16, v18);
  }

  else
  {
    v21 = v14;
    sub_26A4245B4();

    return swift_willThrow();
  }
}

BOOL sub_26A40BBA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_26A424FE4();

  return v2 != 0;
}

uint64_t sub_26A40BBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26A40BC68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26A40BCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26A40BD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_26A40BDB4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26A40BBA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_26A40BDE8@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A40BBF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A40BE14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26A40BE68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CodableIntentResponse.Error.hashValue.getter()
{
  sub_26A425504();
  MEMORY[0x26D65C340](0);
  return sub_26A425554();
}

uint64_t sub_26A40BF60(uint64_t a1)
{
  sub_26A425504();
  CodableIntentResponse.Error.hash(into:)();
  return sub_26A425554();
}

unint64_t sub_26A40BFD0()
{
  result = qword_28036CA00;
  if (!qword_28036CA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28036CA00);
  }

  return result;
}

uint64_t sub_26A40C048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_26A40C09C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_26A40C1A8(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1 != 0;
  }

  else
  {
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v4 = sub_26A424AE4();
    __swift_project_value_buffer(v4, qword_2803A8950);
    v5 = sub_26A424AD4();
    v6 = sub_26A424E04();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26A0B8000, v5, v6, "Unrecognized ContentMode, defaulting to fit", v7, 2u);
      MEMORY[0x26D65C950](v7, -1, -1);
    }

    v3 = 0;
  }

  *a2 = v3;
}

uint64_t ImageElement.ContentMode.description.getter()
{
  if (*v0)
  {
    return 1819044198;
  }

  else
  {
    return 7629158;
  }
}

uint64_t ImageElement.ContentMode.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_26A40C2FC()
{
  result = qword_280373DF0;
  if (!qword_280373DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373DF0);
  }

  return result;
}

uint64_t sub_26A40C368@<X0>(uint64_t *a1@<X8>)
{
  result = ImageElement.ContentMode.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s11ContentModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

Swift::String __swiftcall ReferenceRich.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v62 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v64 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v63 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_7();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v18 = OUTLINED_FUNCTION_41(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - v23;
  v25 = type metadata accessor for ReferenceRich(0);
  v26 = OUTLINED_FUNCTION_41(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v27);
  v29 = &v62 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD08, &qword_26A426798);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v31);
  v33 = &v62 - v32;
  OUTLINED_FUNCTION_11_44();
  sub_26A40ECC4();
  if (v4)
  {
    _ProtoReference_Rich.redactedProto.getter();
  }

  else
  {
    sub_26A40ECC4();
  }

  sub_26A40E838();
  v33[*(v30 + 32)] = v4 & 1;
  sub_26A40E88C(v29, type metadata accessor for ReferenceRich);
  v34 = MEMORY[0x277D84F90];
  *&v33[*(v30 + 28)] = MEMORY[0x277D84F90];
  v35 = type metadata accessor for _ProtoReference_Rich(0);
  OUTLINED_FUNCTION_142(*&v33[*(v35 + 20)] + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text1, &v65);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v14, 1, v15);
  if (v36)
  {
    *v2 = v34;
    *(v2 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v37 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v37);
    OUTLINED_FUNCTION_37(v14, 1, v15);
    if (!v36)
    {
      sub_26A0E48F0(v14, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A40E838();
  }

  sub_26A40E838();
  v44 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v44);
  sub_26A1089E4(v24, 0x3174786574, 0xE500000000000000);
  sub_26A0E48F0(v24, &qword_28036CB30, &qword_26A426480);
  ReferenceRich.text2.getter();
  sub_26A1089E4(v21, 0x3274786574, 0xE500000000000000);
  sub_26A0E48F0(v21, &qword_28036CB30, &qword_26A426480);
  v45 = v63;
  ReferenceRich.thumbnail.getter();
  sub_26A1089BC(v45, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v45, &qword_28036CB20, &unk_26A426470);
  v46 = v64;
  ReferenceRich.action.getter();
  sub_26A1088B8();
  sub_26A0E48F0(v46, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7E58(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v48, v49, v50, v51, v62, v63);

  sub_26A100140(v52, v53, v54, v55, v56, v57, v58);
  sub_26A0E48F0(v33, &qword_28036CD08, &qword_26A426798);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v60;
  result._countAndFlagsBits = v59;
  return result;
}

uint64_t type metadata accessor for ReferenceRich(uint64_t a1)
{
  result = qword_280373DF8;
  if (!qword_280373DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReferenceRich.text1.getter()
{
  v1 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v20[-v3 - 8];
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = type metadata accessor for _ProtoReference_Rich(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v9 + 20)) + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text1, v20);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v4, 1, v5);
  if (v10)
  {
    *v8 = MEMORY[0x277D84F90];
    *(v8 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v11 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    OUTLINED_FUNCTION_37(v4, 1, v5);
    if (!v10)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A40E838();
  }

  return sub_26A40E838();
}

void ReferenceRich.text2.getter()
{
  OUTLINED_FUNCTION_76();
  v19 = v3;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_7();
  v5 = OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoReference_Rich(0);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v8 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v8, v9, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v10)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v11 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
      OUTLINED_FUNCTION_38_0();
      if (!v10)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A40E838();
    }

    sub_26A40E838();
    v2 = 0;
  }

  v18 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v19, v2, 1, v18);
  OUTLINED_FUNCTION_75();
}

void ReferenceRich.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v19 = v3;
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_7();
  v5 = OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoReference_Rich(0);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v8 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v8, v9, &unk_26A426430);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v10)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v11 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
      OUTLINED_FUNCTION_38_0();
      if (!v10)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A40E838();
    }

    sub_26A40E838();
    v2 = 0;
  }

  v18 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v19, v2, 1, v18);
  OUTLINED_FUNCTION_75();
}

void ReferenceRich.action.getter()
{
  OUTLINED_FUNCTION_76();
  v13 = v4;
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoReference_Rich(0);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v9, v10, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v11)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A40E838();
    }

    sub_26A40E838();
    v2 = 0;
  }

  v12 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v13, v2, 1, v12);
  OUTLINED_FUNCTION_75();
}

uint64_t ReferenceRich.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoReference_Rich(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoReference_Rich.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v37 = v1;
  v120 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_48();
  v115 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  v119 = v9;
  v118 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  v113 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  v117 = v17;
  v18 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_93_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v24 = OUTLINED_FUNCTION_41(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  v27 = v110 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  v31 = v110 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v110 - v33;
  OUTLINED_FUNCTION_3_68();
  sub_26A40ECC4();
  v35 = *(type metadata accessor for _ProtoReference_Rich(0) + 20);
  v121 = v37;
  v122 = v35;
  v36 = *(v37 + v35);
  LODWORD(v37) = OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text1;
  OUTLINED_FUNCTION_142(v36 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text1, &v127);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v18);
  sub_26A0E48F0(v34, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v31, 1, v18);
    if (v39)
    {
      *v0 = MEMORY[0x277D84F90];
      *(v0 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v40 = v120;
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v120);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
      OUTLINED_FUNCTION_37(v31, 1, v18);
      v37 = v122;
      if (!v39)
      {
        sub_26A0E48F0(v31, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A40E838();
      v37 = v122;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_47();
    sub_26A40E88C(v0, v47);
    v48 = v121;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v48 + v37);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = type metadata accessor for _ProtoReference_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v50);
      OUTLINED_FUNCTION_25_35();
      v36 = v51;
      *(v48 + v37) = v51;
    }

    OUTLINED_FUNCTION_31_24();
    v52 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v18);
    OUTLINED_FUNCTION_211(v36 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text1, v126);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v36 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text2, v126);
  sub_26A10FD9C();
  __swift_getEnumTagSinglePayload(v27, 1, v18);
  OUTLINED_FUNCTION_59_1();
  if (v37 == 1)
  {
    v55 = v120;
    v56 = v121;
    v57 = v118;
  }

  else
  {
    v58 = v110[2];
    sub_26A10FD9C();
    v59 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v59, v60, v18);
    v56 = v121;
    v57 = v118;
    if (v39)
    {
      v69 = v111;
      *v111 = MEMORY[0x277D84F90];
      *(v69 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v55 = v120;
      __swift_storeEnumTagSinglePayload(v61, v62, v63, v120);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v55);
      v67 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v67, v68, v18);
      v70 = v122;
      if (!v39)
      {
        sub_26A0E48F0(v58, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v69 = v111;
      sub_26A40E838();
      v55 = v120;
      v70 = v122;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_47();
    sub_26A40E88C(v69, v71);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v56 + v70);
    if ((v72 & 1) == 0)
    {
      v73 = type metadata accessor for _ProtoReference_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v73);
      OUTLINED_FUNCTION_25_35();
      v36 = v74;
      *(v56 + v70) = v74;
    }

    OUTLINED_FUNCTION_31_24();
    v75 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v18);
    OUTLINED_FUNCTION_211(v36 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text2, v125);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v36 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__thumbnail, v125);
  v78 = v117;
  sub_26A10FD9C();
  LODWORD(v79) = __swift_getEnumTagSinglePayload(v78, 1, v57);
  sub_26A0E48F0(v78, &qword_28036CAE8, &unk_26A426430);
  if (v79 != 1)
  {
    v79 = v112;
    sub_26A10FD9C();
    v80 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v80, v81, v57);
    v82 = v122;
    if (v39)
    {
      v91 = v113;
      *v113 = MEMORY[0x277D84F90];
      *(v91 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v55);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v55);
      v89 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v89, v90, v57);
      if (!v39)
      {
        sub_26A0E48F0(v79, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v91 = v113;
      sub_26A40E838();
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A40E88C(v91, type metadata accessor for _ProtoVisualProperty);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v56 + v82);
    if ((v92 & 1) == 0)
    {
      v93 = type metadata accessor for _ProtoReference_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v93);
      OUTLINED_FUNCTION_25_35();
      v36 = v94;
      *(v56 + v82) = v94;
    }

    sub_26A40E838();
    v95 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v57);
    OUTLINED_FUNCTION_211(v36 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__thumbnail, v124);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v36 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__action, v124);
  v98 = v119;
  sub_26A10FD9C();
  __swift_getEnumTagSinglePayload(v98, 1, v55);
  OUTLINED_FUNCTION_59_1();
  if (v79 != 1)
  {
    v99 = v114;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v99, 1, v55);
    v100 = v122;
    if (v39)
    {
      v101 = v115;
      *v115 = MEMORY[0x277D84F90];
      *(v101 + 8) = 0;
      *(v101 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v99, 1, v55);
      v102 = v116;
      if (!v39)
      {
        sub_26A0E48F0(v99, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v101 = v115;
      sub_26A40E838();
      v102 = v116;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v102);
    sub_26A40E88C(v101, type metadata accessor for _ProtoActionProperty);
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v104 = *(v56 + v100);
    if ((v103 & 1) == 0)
    {
      v105 = type metadata accessor for _ProtoReference_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v105);
      sub_26A2FD080();
      v104 = v106;
      *(v56 + v100) = v106;
    }

    sub_26A40E838();
    v107 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v55);
    OUTLINED_FUNCTION_211(v104 + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__action, &v123);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t ReferenceRich.init(text1:text2:thumbnail:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _ProtoReference_Rich(0);
  OUTLINED_FUNCTION_10_58();
  sub_26A40EB9C(v10, v11, &protocol conformance descriptor for _ProtoReference_Rich);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a3, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A40DE40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v67 = a6;
  v68 = a7;
  v63 = a3;
  v64 = a5;
  v62 = a4;
  v9 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v11 - 8);
  v70 = v56 - v12;
  v69 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v69);
  v58 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = v56 - v15;
  v16 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v16 - 8);
  v60 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v18 - 8);
  v66 = v56 - v19;
  v65 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v65);
  v56[1] = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v57 = v56 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v56 - v24;
  v26 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v26);
  v28 = v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v56 - v30;
  v32 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v32 - 8);
  v33 = a2[3];
  v34 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v33);
  (*(v34 + 8))(v33, v34);
  sub_26A40E838();
  _ProtoReference_Rich.text1.setter(v31, v35, v36, v37);
  v38 = v62;

  v39 = v63;
  v63 = a1;
  _ProtoReference_Rich.componentName.setter(v39, v38);
  sub_26A10FD9C();
  v40 = v72;
  if (v72)
  {
    v41 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(v41 + 8))(v40, v41);
    sub_26A40E838();
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
    __swift_destroy_boxed_opaque_existential_1(v71);
    if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
    {
      sub_26A40E838();
      sub_26A40ECC4();
      _ProtoReference_Rich.text2.setter(v31, v42, v43, v44);
      sub_26A40E88C(v28, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v71, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
  }

  sub_26A0E48F0(v25, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v45 = v72;
  if (v72)
  {
    v46 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(v46 + 8))(v45, v46);
    v47 = v66;
    sub_26A40E838();
    v48 = v65;
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v65);
    __swift_destroy_boxed_opaque_existential_1(v71);
    if (__swift_getEnumTagSinglePayload(v47, 1, v48) != 1)
    {
      v49 = v57;
      sub_26A40E838();
      sub_26A40ECC4();
      _ProtoReference_Rich.thumbnail.setter();
      sub_26A40E88C(v49, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v71, &qword_28036CB00, &unk_26A426450);
    v47 = v66;
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v65);
  }

  sub_26A0E48F0(v47, &qword_28036CAE8, &unk_26A426430);
LABEL_11:
  sub_26A10FD9C();
  v50 = v72;
  if (v72)
  {
    v51 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(v51 + 8))(v50, v51);
    v52 = v70;
    sub_26A40E838();
    v53 = v69;
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v69);
    __swift_destroy_boxed_opaque_existential_1(v71);
    if (__swift_getEnumTagSinglePayload(v52, 1, v53) != 1)
    {
      v54 = v59;
      sub_26A40E838();
      sub_26A40ECC4();
      _ProtoReference_Rich.action.setter();
      return sub_26A40E88C(v54, type metadata accessor for _ProtoActionProperty);
    }
  }

  else
  {
    sub_26A0E48F0(v71, &qword_28036CAF8, &unk_26A426D30);
    v52 = v70;
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v69);
  }

  return sub_26A0E48F0(v52, &off_28036C7C0, &off_26A427400);
}

uint64_t ReferenceRich.init(text1:text2:thumbnail:action:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A0E5D68(a1, v14);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoReference_Rich(0);
  OUTLINED_FUNCTION_10_58();
  sub_26A40EB9C(v8, v9, &protocol conformance descriptor for _ProtoReference_Rich);
  sub_26A4249C4();
  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a3, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v11, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v12, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v13, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_26A40E838()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A40E88C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t ReferenceRich.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoReference_Rich(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_3_68();
  sub_26A40ECC4();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_12_36();
  sub_26A40E838();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t ReferenceRich.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for ReferenceRich(0);
  *(inited + 64) = &protocol witness table for ReferenceRich;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_11_44();
  sub_26A40ECC4();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A40EB9C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A40EB9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A40EC58(uint64_t a1)
{
  result = type metadata accessor for _ProtoReference_Rich(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A40ECC4()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_25_35()
{

  sub_26A2FD080();
}

uint64_t OUTLINED_FUNCTION_31_24()
{

  return sub_26A40E838();
}

uint64_t OUTLINED_FUNCTION_32_22()
{

  return type metadata accessor for _ProtoReference_Rich(0);
}

uint64_t CodableIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = v5;
  type metadata accessor for CodableIntent.CodingKeys(255, a2, a4, a5);
  OUTLINED_FUNCTION_0_95();
  swift_getWitnessTable();
  sub_26A425084();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A425574();
  if (!v5)
  {
    sub_26A0E718C();
    sub_26A425054();
    sub_26A40BFD0();
    v11 = sub_26A424E24();
    v23 = v11;
    if (v11)
    {
      v25 = OUTLINED_FUNCTION_6_0();
      v26(v25);
      sub_26A0E4784(v29, v30);
      goto LABEL_8;
    }

    type metadata accessor for CodableIntent.Error(0, a2, v12, v13);
    swift_getWitnessTable();
    v6 = swift_allocError();
    swift_willThrow();
    sub_26A0E4784(v29, v30);
    v9 = OUTLINED_FUNCTION_6_0();
    v10(v9);
  }

  if (qword_28036C5A0 != -1)
  {
    swift_once();
  }

  v14 = sub_26A424AE4();
  __swift_project_value_buffer(v14, qword_2803A8950);
  v15 = v6;
  v16 = sub_26A424AD4();
  v17 = sub_26A424E04();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315138;
    swift_getErrorValue();
    v20 = sub_26A4254B4();
    v22 = sub_26A0E8788(v20, v21, &v29);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_26A0B8000, v16, v17, "Failed to decode Intent; creating an empty Intent instead. Error: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x26D65C950](v19, -1, -1);
    MEMORY[0x26D65C950](v18, -1, -1);
  }

  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_8:
  *a3 = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodableIntent.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[2] = *MEMORY[0x277D85DE8];
  type metadata accessor for CodableIntent.CodingKeys(255, *(a2 + 16), a3, a4);
  OUTLINED_FUNCTION_0_95();
  swift_getWitnessTable();
  sub_26A425184();
  OUTLINED_FUNCTION_24();
  v23 = v7;
  v24 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = *v4;
  v12 = objc_opt_self();
  v25[0] = 0;
  v13 = [v12 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v25];
  v14 = v25[0];
  if (v13)
  {
    v15 = sub_26A4246D4();
    v22 = v5;
    v16 = v15;
    v18 = v17;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26A425594();
    v25[0] = v16;
    v25[1] = v18;
    sub_26A0E70D4();
    v19 = v23;
    sub_26A425154();
    (*(v24 + 8))(v10, v19);
    return sub_26A0E4784(v16, v18);
  }

  else
  {
    v21 = v14;
    sub_26A4245B4();

    return swift_willThrow();
  }
}

BOOL sub_26A40F41C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26A424FE4();

  return v2 != 0;
}

uint64_t sub_26A40F468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26A40F4DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26A40F548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26A40F5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_26A40F628@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26A40F41C(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_26A40F65C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A40F464(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A40F688(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26A40F6DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CodableIntent.Error.hashValue.getter()
{
  sub_26A425504();
  MEMORY[0x26D65C340](0);
  return sub_26A425554();
}

uint64_t sub_26A40F7D4(uint64_t a1)
{
  sub_26A425504();
  CodableIntent.Error.hash(into:)();
  return sub_26A425554();
}

uint64_t sub_26A40F878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_26A40F8CC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t RFImage.Source.asSourceType()@<X0>(uint64_t *a1@<X8>)
{
  v254 = a1;
  v255 = type metadata accessor for ImageElement.SourceType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v241 = v3;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_48();
  v240 = v5;
  v6 = OUTLINED_FUNCTION_45();
  type metadata accessor for RFImage.BadgedImage(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v239 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4F8, &qword_26A4283C0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v251 = v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_48();
  v246 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v242 = v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  v250 = &v238 - v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_48();
  v245 = v21;
  OUTLINED_FUNCTION_45();
  sub_26A424614();
  OUTLINED_FUNCTION_24();
  v248 = v23;
  v249 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  v247 = v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_48();
  v243 = v26;
  v27 = OUTLINED_FUNCTION_45();
  v244 = type metadata accessor for RFImage.Url(v27);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  v33 = OUTLINED_FUNCTION_41(v32);
  MEMORY[0x28223BE20](v33);
  v35 = &v238 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v37 = OUTLINED_FUNCTION_41(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8();
  v252 = v38;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v39);
  v41 = &v238 - v40;
  type metadata accessor for ImageElement.Contact.Content(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  v45 = v44 - v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  v47 = OUTLINED_FUNCTION_41(v46);
  MEMORY[0x28223BE20](v47);
  v49 = &v238 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_48();
  v52 = v51;
  v53 = OUTLINED_FUNCTION_45();
  type metadata accessor for RFImage.Source(v53);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_32();
  sub_26A41271C(v253, v1, v55);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v134 = *v1;
      v133 = *(v1 + 8);
      v136 = *(v1 + 16);
      v135 = *(v1 + 24);
      v138 = *(v1 + 32);
      v137 = *(v1 + 40);
      if (*(v1 + 48))
      {
        v139 = OUTLINED_FUNCTION_35_28();
        sub_26A28A784(v139, v140);
        v141 = OUTLINED_FUNCTION_35_28();
        sub_26A0D6740(v141, v142);
        v143 = type metadata accessor for ImageElement.AspectRatio(0);
        v144 = v52;
        v147 = OUTLINED_FUNCTION_9_48(v52, v145, v146, v143);
        v148 = type metadata accessor for _ProtoImageElement.Bundle(v147);
        MEMORY[0x28223BE20](v148);
        OUTLINED_FUNCTION_11_45();
        *(v149 - 64) = v134;
        *(v149 - 56) = v133;
        *(v149 - 48) = v136;
        *(v149 - 40) = v135;
        *(v149 - 32) = v138;
        *(v149 - 24) = v137;
        OUTLINED_FUNCTION_6_43(v149);
        *(v150 - 8) = v52;
        OUTLINED_FUNCTION_2_60();
        v153 = sub_26A41262C(v151, v152, &protocol conformance descriptor for _ProtoImageElement.Bundle);
        OUTLINED_FUNCTION_12_37(sub_26A4125D4, v154, v155, v153);

        v156 = OUTLINED_FUNCTION_35_28();
      }

      else
      {
        v222 = OUTLINED_FUNCTION_44();
        sub_26A28A784(v222, v223);
        v224 = OUTLINED_FUNCTION_44();
        sub_26A0D6740(v224, v225);
        v226 = type metadata accessor for ImageElement.AspectRatio(0);
        v144 = v52;
        v229 = OUTLINED_FUNCTION_9_48(v52, v227, v228, v226);
        v230 = type metadata accessor for _ProtoImageElement.Bundle(v229);
        MEMORY[0x28223BE20](v230);
        OUTLINED_FUNCTION_11_45();
        *(v231 - 64) = v134;
        *(v231 - 56) = v133;
        *(v231 - 48) = v136;
        *(v231 - 40) = v135;
        *(v231 - 32) = v138;
        *(v231 - 24) = v137;
        OUTLINED_FUNCTION_6_43(v231);
        *(v232 - 8) = v52;
        OUTLINED_FUNCTION_2_60();
        v235 = sub_26A41262C(v233, v234, &protocol conformance descriptor for _ProtoImageElement.Bundle);
        OUTLINED_FUNCTION_12_37(sub_26A412600, v236, v237, v235);

        v156 = OUTLINED_FUNCTION_44();
      }

      sub_26A0D6740(v156, v157);
      sub_26A0E48F0(v144, &qword_28036CBB8, &qword_26A4265C8);
      return swift_storeEnumTagMultiPayload();
    case 2u:
      v82 = *v1;
      v81 = *(v1 + 8);
      if (*(v1 + 16))
      {
        type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
        OUTLINED_FUNCTION_31_25();
        MEMORY[0x28223BE20](v83);
        OUTLINED_FUNCTION_1_17();
        *(v84 - 16) = v82;
        *(v84 - 8) = v81;
        OUTLINED_FUNCTION_25_36();
        sub_26A41262C(v85, v86, &protocol conformance descriptor for _ProtoImageElement.Contact.Monogram);
        v87 = OUTLINED_FUNCTION_48_24();
        OUTLINED_FUNCTION_12_37(v87, v88, v89, v90);
        v91 = OUTLINED_FUNCTION_35_28();
        sub_26A0D6740(v91, v92);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC18, &qword_26A426678);
        v216 = swift_allocObject();
        *(v216 + 16) = xmmword_26A426410;
        *(v216 + 32) = v82;
        *(v216 + 40) = v81;
        type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
        OUTLINED_FUNCTION_44_18();
        MEMORY[0x28223BE20](v217);
        OUTLINED_FUNCTION_40_22();
        *(v218 - 16) = v216;
        OUTLINED_FUNCTION_22_34();
        sub_26A41262C(v219, v220, &protocol conformance descriptor for _ProtoImageElement.Contact.Avatar);
        OUTLINED_FUNCTION_48_24();
        sub_26A4249C4();
      }

      swift_storeEnumTagMultiPayload();
      type metadata accessor for _ProtoImageElement.Contact(0);
      OUTLINED_FUNCTION_44_18();
      MEMORY[0x28223BE20](v93);
      OUTLINED_FUNCTION_40_22();
      *(v94 - 16) = v45;
      *(v94 - 8) = 0;
      OUTLINED_FUNCTION_3_69();
      sub_26A41262C(v95, v96, &protocol conformance descriptor for _ProtoImageElement.Contact);
      sub_26A4249C4();
      OUTLINED_FUNCTION_10_59();
      sub_26A41277C(v45, v221);
      return swift_storeEnumTagMultiPayload();
    case 3u:
      v97 = *v1;
      v98 = *(v1 + 8);
      v99 = *(v1 + 16);
      v100 = *(v1 + 24);
      v101 = type metadata accessor for ImageElement.AspectRatio(0);
      v104 = OUTLINED_FUNCTION_9_48(v52, v102, v103, v101);
      v105 = type metadata accessor for _ProtoImageElement.DataMessage(v104);
      MEMORY[0x28223BE20](v105);
      *(&v238 - 6) = v97;
      *(&v238 - 5) = v98;
      *(&v238 - 4) = v99;
      *(&v238 - 3) = v100;
      OUTLINED_FUNCTION_6_43(&v238);
      *(v106 - 8) = v52;
      sub_26A0E45C0(v97, v98);
      v107 = OUTLINED_FUNCTION_97();
      sub_26A280558(v107, v108);
      OUTLINED_FUNCTION_4_60();
      v111 = sub_26A41262C(v109, v110, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
      OUTLINED_FUNCTION_12_37(sub_26A11B3D4, v112, v113, v111);
      sub_26A0E4784(v97, v98);
      v114 = OUTLINED_FUNCTION_97();
      sub_26A10E794(v114, v115);
      sub_26A0E4784(v97, v98);
      v116 = OUTLINED_FUNCTION_97();
      sub_26A10E794(v116, v117);
      sub_26A0E48F0(v52, &qword_28036CBB8, &qword_26A4265C8);
      return swift_storeEnumTagMultiPayload();
    case 4u:
      v65 = *v1;
      v66 = *(v1 + 8);
      v67 = type metadata accessor for ImageElement.AspectRatio(0);
      v70 = OUTLINED_FUNCTION_9_48(v52, v68, v69, v67);
      v71 = type metadata accessor for _ProtoImageElement.DataMessage(v70);
      MEMORY[0x28223BE20](v71);
      OUTLINED_FUNCTION_13_27();
      *(v72 - 32) = v65;
      *(v72 - 24) = v66;
      OUTLINED_FUNCTION_6_43(v72);
      *(v73 - 8) = v52;
      OUTLINED_FUNCTION_4_60();
      v76 = sub_26A41262C(v74, v75, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
      OUTLINED_FUNCTION_12_37(sub_26A3D0D44, v77, v78, v76);
      v79 = OUTLINED_FUNCTION_97();
      sub_26A0E4784(v79, v80);
      sub_26A0E48F0(v52, &qword_28036CBB8, &qword_26A4265C8);
      return swift_storeEnumTagMultiPayload();
    case 5u:
      v159 = *v1;
      v158 = *(v1 + 8);
      v161 = *(v1 + 16);
      v160 = *(v1 + 24);
      type metadata accessor for Color(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v162, v163, v164, v165);
      v166 = v252;
      sub_26A412674(v41, v252, &qword_28036CBA0, &qword_26A4265B0);
      v167 = type metadata accessor for ImageElement.Background(0);
      v170 = OUTLINED_FUNCTION_9_48(v35, v168, v169, v167);
      v171 = type metadata accessor for _ProtoImageElement.Symbol(v170);
      MEMORY[0x28223BE20](v171);
      OUTLINED_FUNCTION_11_45();
      *(v172 - 64) = v159;
      *(v172 - 56) = v158;
      *(v172 - 48) = v161;
      *(v172 - 40) = v160;
      *(v172 - 32) = v166;
      *(v172 - 24) = 0;
      *(v172 - 16) = v35;
      OUTLINED_FUNCTION_28_25();
      v175 = sub_26A41262C(v173, v174, &protocol conformance descriptor for _ProtoImageElement.Symbol);
      OUTLINED_FUNCTION_12_37(sub_26A410AE0, v176, v177, v175);

      sub_26A0E48F0(v41, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v35, &qword_28036D4D0, &qword_26A428230);
      v178 = OUTLINED_FUNCTION_44();
      sub_26A0E48F0(v178, v179, &qword_26A4265B0);
      return swift_storeEnumTagMultiPayload();
    case 6u:
      sub_26A410A7C(v1, v31);
      v180 = v249;
      v181 = *(v248 + 16);
      v182 = v243;
      v181(v243, v31, v249);
      v183 = v181;
      v253 = v181;
      v184 = v245;
      sub_26A412674(v31 + *(v244 + 20), v245, &qword_28036D500, &qword_26A435570);
      v185 = type metadata accessor for ImageElement.SourceType.LoadingImage(0);
      v186 = v246;
      v189 = OUTLINED_FUNCTION_9_48(v246, v187, v188, v185);
      v190 = type metadata accessor for ImageElement.AspectRatio(v189);
      v238 = v52;
      v193 = OUTLINED_FUNCTION_9_48(v52, v191, v192, v190);
      type metadata accessor for Color(v193);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v194, v195, v196, v197);
      v183(v247, v182, v180);
      v198 = v250;
      sub_26A412674(v184, v250, &qword_28036D500, &qword_26A435570);
      v199 = v251;
      sub_26A412674(v186, v251, &qword_28036D4F8, &qword_26A4283C0);
      sub_26A412674(v52, v49, &qword_28036CBB8, &qword_26A4265C8);
      v200 = v252;
      sub_26A412674(v41, v252, &qword_28036CBA0, &qword_26A4265B0);
      v201 = type metadata accessor for _ProtoImageElement.Url(0);
      v240 = &v238;
      MEMORY[0x28223BE20](v201);
      v202 = v247;
      *(&v238 - 8) = v247;
      *(&v238 - 7) = v198;
      *(&v238 - 6) = v199;
      *(&v238 - 20) = 0;
      *(&v238 - 4) = v49;
      *(&v238 - 12) = 514;
      *(&v238 - 22) = 0;
      *(&v238 - 2) = v200;
      *(&v238 - 8) = 0;
      *(&v238 - 1) = 0;
      v241 = type metadata accessor for ImageElement.Url(0);
      OUTLINED_FUNCTION_20_35();
      sub_26A41262C(v203, v204, &protocol conformance descriptor for _ProtoImageElement.Url);
      v205 = v254;
      sub_26A4249C4();
      sub_26A0E48F0(v41, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v238, &qword_28036CBB8, &qword_26A4265C8);
      sub_26A0E48F0(v246, &qword_28036D4F8, &qword_26A4283C0);
      sub_26A0E48F0(v245, &qword_28036D500, &qword_26A435570);
      v206 = v249;
      v248 = *(v248 + 8);
      (v248)(v243, v249);
      OUTLINED_FUNCTION_30_20();
      sub_26A41277C(v31, v207);
      v208 = v253;
      v253(v205, v202, v206);
      v209 = v205 + *(v241 + 5);
      v208(v209, v202, v206);
      v210 = v250;
      v211 = v242;
      sub_26A412674(v250, v242, &qword_28036D500, &qword_26A435570);
      v212 = *(v244 + 20);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v213, v214, v215, v206);
      sub_26A2807A4(v211, &v209[v212]);
      sub_26A0E48F0(v252, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v49, &qword_28036CBB8, &qword_26A4265C8);
      sub_26A0E48F0(v251, &qword_28036D4F8, &qword_26A4283C0);
      sub_26A0E48F0(v210, &qword_28036D500, &qword_26A435570);
      (v248)(v202, v206);
      return swift_storeEnumTagMultiPayload();
    case 7u:
      swift_projectBox();
      OUTLINED_FUNCTION_29_26();
      v118 = v239;
      sub_26A41271C(v119, v239, v120);
      type metadata accessor for ImageElement.BadgedImage(0);
      v121 = swift_allocBox();
      v122 = v240;
      RFImage.Source.asSourceType()(v240);
      v123 = v241;
      RFImage.Source.asSourceType()(v241);
      v124 = type metadata accessor for _ProtoImageElement.BadgedImage(0);
      MEMORY[0x28223BE20](v124);
      OUTLINED_FUNCTION_1_17();
      *(v125 - 16) = v122;
      *(v125 - 8) = v123;
      sub_26A41262C(qword_28157A7E0, type metadata accessor for _ProtoImageElement.BadgedImage, &protocol conformance descriptor for _ProtoImageElement.BadgedImage);
      v126 = OUTLINED_FUNCTION_48_24();
      OUTLINED_FUNCTION_12_37(v126, v127, v128, v129);
      OUTLINED_FUNCTION_27_32();
      sub_26A41277C(v123, v130);
      sub_26A41277C(v122, v124);
      OUTLINED_FUNCTION_26_37();
      sub_26A41277C(v118, v131);
      *v254 = v121;
      swift_storeEnumTagMultiPayload();

    default:
      v57 = *v1;
      v56 = *(v1 + 8);
      v58 = type metadata accessor for _ProtoImageElement.AppIcon(0);
      MEMORY[0x28223BE20](v58);
      OUTLINED_FUNCTION_13_27();
      *(v59 - 32) = v57;
      *(v59 - 24) = v56;
      *(v59 - 16) = 0;
      OUTLINED_FUNCTION_21_31();
      v62 = sub_26A41262C(v60, v61, &protocol conformance descriptor for _ProtoImageElement.AppIcon);
      OUTLINED_FUNCTION_12_37(sub_26A1694DC, v63, v64, v62);

      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_26A410A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RFImage.Url(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RFImage.asImageElement()@<X0>(uint64_t a1@<X8>)
{
  v369 = a1;
  type metadata accessor for ImageElement.SourceType(0);
  OUTLINED_FUNCTION_24();
  v366 = v3;
  v367 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v348 = v4;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_48();
  v347 = v6;
  v7 = OUTLINED_FUNCTION_45();
  v345 = type metadata accessor for RFImage.BadgedImage(v7);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  v13 = OUTLINED_FUNCTION_41(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v353 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_48();
  v355 = v16;
  OUTLINED_FUNCTION_45();
  v356 = sub_26A424614();
  OUTLINED_FUNCTION_24();
  v361 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v352 = v20 - v19;
  v21 = OUTLINED_FUNCTION_45();
  v350 = type metadata accessor for ImageElement.Url(v21);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v357 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4F8, &qword_26A4283C0);
  v26 = OUTLINED_FUNCTION_41(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  v359 = v27;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_48();
  v363 = v29;
  v30 = OUTLINED_FUNCTION_45();
  v358 = type metadata accessor for RFImage.Url(v30);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18();
  v362 = v33 - v32;
  v34 = OUTLINED_FUNCTION_45();
  v35 = type metadata accessor for ImageElement.Symbol(v34);
  v36 = OUTLINED_FUNCTION_41(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18();
  v349 = (v38 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  v40 = OUTLINED_FUNCTION_41(v39);
  MEMORY[0x28223BE20](v40);
  v42 = &v344 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_48();
  v346 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v46 = OUTLINED_FUNCTION_41(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8();
  v360 = v47;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_48();
  v364 = v49;
  v50 = OUTLINED_FUNCTION_45();
  v51 = type metadata accessor for ImageElement.AssetData(v50);
  v52 = OUTLINED_FUNCTION_41(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_18();
  v55 = v54 - v53;
  v56 = type metadata accessor for ImageElement.PNGData(0);
  v57 = OUTLINED_FUNCTION_41(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18();
  v60 = v59 - v58;
  type metadata accessor for ImageElement.Contact.Content(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18();
  v64 = v63 - v62;
  v65 = type metadata accessor for ImageElement.Contact(0);
  v66 = OUTLINED_FUNCTION_41(v65);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_18();
  v354 = v68 - v67;
  v69 = OUTLINED_FUNCTION_45();
  v70 = type metadata accessor for ImageElement.Bundle(v69);
  v71 = OUTLINED_FUNCTION_41(v70);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_18();
  v351 = (v73 - v72);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  v75 = OUTLINED_FUNCTION_41(v74);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_8();
  v365 = v76;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_48();
  v79 = v78;
  v80 = OUTLINED_FUNCTION_45();
  v81 = type metadata accessor for ImageElement.AppIcon(v80);
  v82 = OUTLINED_FUNCTION_41(v81);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_18();
  v85 = v84 - v83;
  type metadata accessor for RFImage.Source(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_32();
  sub_26A41271C(v368.n128_i64[0], v1, v87);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v189 = *v1;
      v188 = v1[1];
      v191 = v1[2];
      v190 = v1[3];
      v193 = v1[4];
      v192 = v1[5];
      v344 = v79;
      v194 = OUTLINED_FUNCTION_102();
      if (v196)
      {
        sub_26A28A784(v194, v195);
        v197 = OUTLINED_FUNCTION_102();
        sub_26A0D6740(v197, v198);
        type metadata accessor for ImageElement.AspectRatio(0);
        OUTLINED_FUNCTION_49_21();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v199, v200, v201, v202);
        v368.n128_u64[0] = sub_26A217578(&unk_287B02840);
        v203 = OUTLINED_FUNCTION_41_20();
        sub_26A412674(v203, v204, v205, v206);
        v207 = type metadata accessor for _ProtoImageElement.Bundle(0);
        MEMORY[0x28223BE20](v207);
        OUTLINED_FUNCTION_11_45();
        *(v208 - 64) = v189;
        *(v208 - 56) = v188;
        *(v208 - 48) = v191;
        *(v208 - 40) = v190;
        *(v208 - 32) = v193;
        *(v208 - 24) = v192;
        OUTLINED_FUNCTION_6_43(v208);
        *(v209 - 8) = v79;
        OUTLINED_FUNCTION_2_60();
        v212 = sub_26A41262C(v210, v211, &protocol conformance descriptor for _ProtoImageElement.Bundle);
        v213 = v351;
        OUTLINED_FUNCTION_12_37(sub_26A412850, v214, v215, v212);
      }

      else
      {
        sub_26A28A784(v194, v195);
        v326 = OUTLINED_FUNCTION_102();
        sub_26A0D6740(v326, v327);
        type metadata accessor for ImageElement.AspectRatio(0);
        OUTLINED_FUNCTION_49_21();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v328, v329, v330, v331);
        v368.n128_u64[0] = sub_26A217578(&unk_287B02810);
        v332 = OUTLINED_FUNCTION_41_20();
        sub_26A412674(v332, v333, v334, v335);
        v336 = type metadata accessor for _ProtoImageElement.Bundle(0);
        MEMORY[0x28223BE20](v336);
        OUTLINED_FUNCTION_11_45();
        *(v337 - 64) = v189;
        *(v337 - 56) = v188;
        *(v337 - 48) = v191;
        *(v337 - 40) = v190;
        *(v337 - 32) = v193;
        *(v337 - 24) = v192;
        OUTLINED_FUNCTION_6_43(v337);
        *(v338 - 8) = v79;
        OUTLINED_FUNCTION_2_60();
        v341 = sub_26A41262C(v339, v340, &protocol conformance descriptor for _ProtoImageElement.Bundle);
        v213 = v351;
        OUTLINED_FUNCTION_12_37(sub_26A412868, v342, v343, v341);
      }

      v216 = OUTLINED_FUNCTION_102();
      sub_26A0D6740(v216, v217);
      sub_26A0E48F0(v79, &qword_28036CBB8, &qword_26A4265C8);
      v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
      v219 = OUTLINED_FUNCTION_1_71(v218);
      OUTLINED_FUNCTION_19_32(v219, xmmword_26A426410);
      OUTLINED_FUNCTION_43_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_31_25();
      MEMORY[0x28223BE20](v220);
      OUTLINED_FUNCTION_39_25();
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v221, v222, &protocol conformance descriptor for _ProtoImageElement);
      sub_26A4249C4();

      sub_26A41277C(v213, type metadata accessor for ImageElement.Bundle);
      v255 = v344;
      v256 = &qword_28036CBB8;
      v257 = &qword_26A4265C8;
      goto LABEL_16;
    case 2u:
      v132 = *v1;
      v131 = v1[1];
      if (v1[2])
      {
        v133 = sub_26A217578(&unk_287B028A0);
        v134 = type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
        v135 = &v344;
        MEMORY[0x28223BE20](v134);
        OUTLINED_FUNCTION_1_17();
        *(v136 - 16) = v132;
        *(v136 - 8) = v131;
        OUTLINED_FUNCTION_25_36();
        v139 = sub_26A41262C(v137, v138, &protocol conformance descriptor for _ProtoImageElement.Contact.Monogram);
        OUTLINED_FUNCTION_12_37(sub_26A4127EC, v140, v141, v139);
        sub_26A0D6740(v132, v131);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _ProtoImageElement.Contact(0);
        OUTLINED_FUNCTION_38_20();
        MEMORY[0x28223BE20](v142);
        OUTLINED_FUNCTION_15_46();
        *(v143 - 16) = v64;
        *(v143 - 8) = 0;
        OUTLINED_FUNCTION_3_69();
        v146 = sub_26A41262C(v144, v145, &protocol conformance descriptor for _ProtoImageElement.Contact);
        OUTLINED_FUNCTION_46_14(v146, v147, v148, v146);
        OUTLINED_FUNCTION_10_59();
        sub_26A41277C(v64, v149);
        v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
        v151 = OUTLINED_FUNCTION_1_71(v150);
        OUTLINED_FUNCTION_18_36(v151, xmmword_26A426410);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC18, &qword_26A426678);
        v135 = swift_allocObject();
        v368 = xmmword_26A426410;
        *(v135 + 1) = xmmword_26A426410;
        v135[4] = v132;
        v135[5] = v131;
        v133 = sub_26A217578(&unk_287B02870);
        v309 = type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
        MEMORY[0x28223BE20](v309);
        OUTLINED_FUNCTION_1_17();
        *(v310 - 16) = v135;
        OUTLINED_FUNCTION_22_34();
        v313 = sub_26A41262C(v311, v312, &protocol conformance descriptor for _ProtoImageElement.Contact.Avatar);
        OUTLINED_FUNCTION_12_37(sub_26A412804, v314, v315, v313);

        swift_storeEnumTagMultiPayload();
        type metadata accessor for _ProtoImageElement.Contact(0);
        OUTLINED_FUNCTION_38_20();
        MEMORY[0x28223BE20](v316);
        OUTLINED_FUNCTION_15_46();
        *(v317 - 16) = v64;
        *(v317 - 8) = 0;
        OUTLINED_FUNCTION_3_69();
        v320 = sub_26A41262C(v318, v319, &protocol conformance descriptor for _ProtoImageElement.Contact);
        OUTLINED_FUNCTION_46_14(v320, v321, v322, v320);
        OUTLINED_FUNCTION_10_59();
        sub_26A41277C(v64, v323);
        v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
        v325 = OUTLINED_FUNCTION_1_71(v324);
        OUTLINED_FUNCTION_18_36(v325, v368);
      }

      OUTLINED_FUNCTION_43_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_38_20();
      MEMORY[0x28223BE20](v152);
      OUTLINED_FUNCTION_15_46();
      *(v153 - 16) = v370;
      *(v153 - 8) = v133;
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v154, v155, &protocol conformance descriptor for _ProtoImageElement);
      sub_26A4249C4();

      sub_26A41277C(v135, type metadata accessor for ImageElement.Contact);
      goto LABEL_17;
    case 3u:
      v156 = *v1;
      v157 = v1[1];
      v158 = v1[3];
      v368.n128_u64[0] = v1[2];
      v159 = v368.n128_u64[0];
      v363 = v156;
      v364 = v158;
      type metadata accessor for ImageElement.AspectRatio(0);
      OUTLINED_FUNCTION_49_21();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
      v362 = sub_26A217578(&unk_287B028D0);
      v164 = v365;
      sub_26A412674(v79, v365, &qword_28036CBB8, &qword_26A4265C8);
      v165 = type metadata accessor for _ProtoImageElement.DataMessage(0);
      MEMORY[0x28223BE20](v165);
      *(&v344 - 6) = v156;
      *(&v344 - 5) = v157;
      *(&v344 - 4) = v159;
      *(&v344 - 3) = v158;
      OUTLINED_FUNCTION_6_43(&v344);
      *(v166 - 8) = v164;
      OUTLINED_FUNCTION_4_60();
      v169 = sub_26A41262C(v167, v168, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
      OUTLINED_FUNCTION_12_37(sub_26A412838, v170, v171, v169);
      sub_26A0E48F0(v164, &qword_28036CBB8, &qword_26A4265C8);
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
      v173 = OUTLINED_FUNCTION_1_71(v172);
      *(v173 + 16) = xmmword_26A426410;
      OUTLINED_FUNCTION_34_17();
      sub_26A41271C(v60, v174, v175);
      swift_storeEnumTagMultiPayload();
      v370[0] = v173;
      v176 = type metadata accessor for _ProtoImageElement(0);
      MEMORY[0x28223BE20](v176);
      v177 = v362;
      *(&v344 - 2) = v370;
      *(&v344 - 1) = v177;
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v178, v179, &protocol conformance descriptor for _ProtoImageElement);
      OUTLINED_FUNCTION_42_15();
      sub_26A4249C4();

      sub_26A0E4784(v363, v157);
      sub_26A10E794(v368.n128_i64[0], v364);
      sub_26A41277C(v60, type metadata accessor for ImageElement.PNGData);
      sub_26A0E48F0(v79, &qword_28036CBB8, &qword_26A4265C8);
      swift_setDeallocating();
      return sub_26A10C318();
    case 4u:
      v106 = v1[1];
      v368.n128_u64[0] = *v1;
      v107 = v368.n128_u64[0];
      type metadata accessor for ImageElement.AspectRatio(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
      v364 = sub_26A217578(&unk_287B02900);
      v112 = OUTLINED_FUNCTION_41_20();
      sub_26A412674(v112, v113, &qword_28036CBB8, &qword_26A4265C8);
      v114 = type metadata accessor for _ProtoImageElement.DataMessage(0);
      MEMORY[0x28223BE20](v114);
      OUTLINED_FUNCTION_13_27();
      *(v115 - 32) = v107;
      *(v115 - 24) = v106;
      OUTLINED_FUNCTION_6_43(v115);
      *(v116 - 8) = v79;
      OUTLINED_FUNCTION_4_60();
      sub_26A41262C(v117, v118, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
      v119 = OUTLINED_FUNCTION_48_24();
      OUTLINED_FUNCTION_12_37(v119, v120, v121, v122);
      sub_26A0E48F0(v79, &qword_28036CBB8, &qword_26A4265C8);
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
      v124 = OUTLINED_FUNCTION_1_71(v123);
      *(v124 + 16) = xmmword_26A426410;
      OUTLINED_FUNCTION_34_17();
      sub_26A41271C(v55, v125, v126);
      swift_storeEnumTagMultiPayload();
      v370[0] = v124;
      type metadata accessor for _ProtoImageElement(0);
      OUTLINED_FUNCTION_31_25();
      MEMORY[0x28223BE20](v127);
      v128 = v364;
      *(&v344 - 2) = v370;
      *(&v344 - 1) = v128;
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v129, v130, &protocol conformance descriptor for _ProtoImageElement);
      OUTLINED_FUNCTION_42_15();
      sub_26A4249C4();

      sub_26A0E4784(v368.n128_i64[0], v106);
      sub_26A41277C(v55, type metadata accessor for ImageElement.AssetData);
      sub_26A0E48F0(v79, &qword_28036CBB8, &qword_26A4265C8);
      swift_setDeallocating();
      return sub_26A10C318();
    case 5u:
      v224 = *v1;
      v223 = v1[1];
      v225 = v1[2];
      v226 = v1[3];
      v227 = type metadata accessor for Color(0);
      v228 = v364;
      v231 = OUTLINED_FUNCTION_9_48(v364, v229, v230, v227);
      type metadata accessor for ImageElement.Background(v231);
      v232 = v346;
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v233, v234, v235, v236);
      v368.n128_u64[0] = sub_26A217578(&unk_287B02930);
      v237 = v360;
      sub_26A412674(v228, v360, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A412674(v232, v42, &qword_28036D4D0, &qword_26A428230);
      type metadata accessor for _ProtoImageElement.Symbol(0);
      OUTLINED_FUNCTION_38_20();
      MEMORY[0x28223BE20](v238);
      OUTLINED_FUNCTION_11_45();
      *(v239 - 64) = v224;
      *(v239 - 56) = v223;
      *(v239 - 48) = v225;
      *(v239 - 40) = v226;
      *(v239 - 32) = v237;
      *(v239 - 24) = 0;
      *(v239 - 16) = v42;
      OUTLINED_FUNCTION_28_25();
      v242 = sub_26A41262C(v240, v241, &protocol conformance descriptor for _ProtoImageElement.Symbol);
      v243 = v349;
      OUTLINED_FUNCTION_12_37(sub_26A412820, v244, v245, v242);

      sub_26A0E48F0(v42, &qword_28036D4D0, &qword_26A428230);
      sub_26A0E48F0(v237, &qword_28036CBA0, &qword_26A4265B0);
      v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
      *(OUTLINED_FUNCTION_1_71(v246) + 16) = xmmword_26A426410;
      OUTLINED_FUNCTION_34_17();
      sub_26A41271C(v243, v247, v248);
      OUTLINED_FUNCTION_43_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_44_18();
      MEMORY[0x28223BE20](v249);
      OUTLINED_FUNCTION_50_17();
      v250 = v368.n128_u64[0];
      *(v251 - 16) = v252;
      *(v251 - 8) = v250;
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v253, v254, &protocol conformance descriptor for _ProtoImageElement);
      OUTLINED_FUNCTION_42_15();
      sub_26A4249C4();

      sub_26A41277C(v243, type metadata accessor for ImageElement.Symbol);
      sub_26A0E48F0(v232, &qword_28036D4D0, &qword_26A428230);
      v255 = v364;
      v256 = &qword_28036CBA0;
      v257 = &qword_26A4265B0;
LABEL_16:
      sub_26A0E48F0(v255, v256, v257);
LABEL_17:
      swift_setDeallocating();
      return sub_26A10C318();
    case 6u:
      v258 = v362;
      sub_26A410A7C(v1, v362);
      v259 = *(v358 + 20);
      v260 = type metadata accessor for ImageElement.SourceType.LoadingImage(0);
      v261 = v363;
      v264 = OUTLINED_FUNCTION_9_48(v363, v262, v263, v260);
      type metadata accessor for ImageElement.AspectRatio(v264);
      v265 = OUTLINED_FUNCTION_49_21();
      v344 = v79;
      v269 = OUTLINED_FUNCTION_9_48(v265, v266, v267, v268);
      type metadata accessor for Color(v269);
      v270 = v364;
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v271, v272, v273, v274);
      v368.n128_u64[0] = sub_26A217578(&unk_287B02960);
      v351 = *(v361 + 16);
      v275 = v352;
      v276 = v356;
      v351(v352, v258, v356);
      v277 = v355;
      sub_26A412674(v258 + v259, v355, &qword_28036D500, &qword_26A435570);
      v278 = v359;
      sub_26A412674(v261, v359, &qword_28036D4F8, &qword_26A4283C0);
      v279 = v79;
      v280 = v365;
      sub_26A412674(v279, v365, &qword_28036CBB8, &qword_26A4265C8);
      v281 = v360;
      sub_26A412674(v270, v360, &qword_28036CBA0, &qword_26A4265B0);
      v282 = type metadata accessor for _ProtoImageElement.Url(0);
      v349 = &v344;
      MEMORY[0x28223BE20](v282);
      OUTLINED_FUNCTION_11_45();
      *(v283 - 64) = v275;
      *(v283 - 56) = v277;
      *(v283 - 48) = v278;
      *(v283 - 40) = 0;
      *(v283 - 32) = v280;
      *(v283 - 24) = 514;
      *(v283 - 22) = 0;
      *(v283 - 16) = v281;
      *(v283 - 8) = 0;
      *(v283 - 4) = 0;
      v284 = v350;
      OUTLINED_FUNCTION_20_35();
      v287 = sub_26A41262C(v285, v286, &protocol conformance descriptor for _ProtoImageElement.Url);
      v288 = v357;
      OUTLINED_FUNCTION_12_37(sub_26A38883C, v289, v290, v287);
      v354 = v258;
      v291 = v351;
      v351(v288, v275, v276);
      v292 = v288 + *(v284 + 20);
      v291(v292, v275, v276);
      v293 = v353;
      sub_26A412674(v277, v353, &qword_28036D500, &qword_26A435570);
      v294 = *(v358 + 20);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v295, v296, v297, v276);
      sub_26A2807A4(v293, v292 + v294);
      sub_26A0E48F0(v281, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v365, &qword_28036CBB8, &qword_26A4265C8);
      sub_26A0E48F0(v359, &qword_28036D4F8, &qword_26A4283C0);
      sub_26A0E48F0(v277, &qword_28036D500, &qword_26A435570);
      (*(v361 + 8))(v275, v276);
      v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
      v299 = OUTLINED_FUNCTION_1_71(v298);
      *(v299 + 16) = xmmword_26A426410;
      OUTLINED_FUNCTION_34_17();
      sub_26A41271C(v288, v300, v301);
      swift_storeEnumTagMultiPayload();
      v370[0] = v299;
      type metadata accessor for _ProtoImageElement(0);
      OUTLINED_FUNCTION_44_18();
      MEMORY[0x28223BE20](v302);
      OUTLINED_FUNCTION_50_17();
      v303 = v368.n128_u64[0];
      *(v304 - 16) = v305;
      *(v304 - 8) = v303;
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v306, v307, &protocol conformance descriptor for _ProtoImageElement);
      OUTLINED_FUNCTION_42_15();
      sub_26A4249C4();

      sub_26A0E48F0(v364, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v344, &qword_28036CBB8, &qword_26A4265C8);
      sub_26A0E48F0(v363, &qword_28036D4F8, &qword_26A4283C0);
      OUTLINED_FUNCTION_30_20();
      sub_26A41277C(v362, v308);
      swift_setDeallocating();
      sub_26A10C318();
      return sub_26A41277C(v288, type metadata accessor for ImageElement.Url);
    case 7u:
      swift_projectBox();
      OUTLINED_FUNCTION_29_26();
      sub_26A41271C(v180, v11, v181);
      v182 = v347;
      RFImage.Source.asSourceType()(v347);
      v183 = (v11 + *(v345 + 20));
      v184 = v348;
      RFImage.Source.asSourceType()(v348);
      static ImageElement.badgedImage(image:badge:)(v182, v184);
      OUTLINED_FUNCTION_27_32();
      sub_26A41277C(v184, v185);
      sub_26A41277C(v182, v183);
      OUTLINED_FUNCTION_26_37();
      sub_26A41277C(v11, v186);

    default:
      v89 = *v1;
      v88 = v1[1];
      v90 = sub_26A217578(&unk_287B027E0);
      type metadata accessor for _ProtoImageElement.AppIcon(0);
      OUTLINED_FUNCTION_38_20();
      MEMORY[0x28223BE20](v91);
      OUTLINED_FUNCTION_13_27();
      *(v92 - 32) = v89;
      *(v92 - 24) = v88;
      *(v92 - 16) = 0;
      OUTLINED_FUNCTION_21_31();
      v95 = sub_26A41262C(v93, v94, &protocol conformance descriptor for _ProtoImageElement.AppIcon);
      OUTLINED_FUNCTION_12_37(sub_26A3D9E5C, v96, v97, v95);

      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
      v99 = OUTLINED_FUNCTION_1_71(v98);
      *(v99 + 16) = xmmword_26A426410;
      OUTLINED_FUNCTION_34_17();
      sub_26A41271C(v85, v100, v101);
      swift_storeEnumTagMultiPayload();
      v370[0] = v99;
      type metadata accessor for _ProtoImageElement(0);
      OUTLINED_FUNCTION_38_20();
      MEMORY[0x28223BE20](v102);
      OUTLINED_FUNCTION_15_46();
      *(v103 - 16) = v370;
      *(v103 - 8) = v90;
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v104, v105, &protocol conformance descriptor for _ProtoImageElement);
      OUTLINED_FUNCTION_42_15();
      sub_26A4249C4();

      sub_26A41277C(v85, type metadata accessor for ImageElement.AppIcon);
      swift_setDeallocating();
      return sub_26A10C318();
  }
}

uint64_t sub_26A41262C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A412674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A41271C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A41277C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_71(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_18_36(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_26A41271C(v3, a1 + v2, type metadata accessor for ImageElement.Contact);
}

uint64_t OUTLINED_FUNCTION_19_32(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_26A41271C(v3, a1 + v2, type metadata accessor for ImageElement.Bundle);
}

uint64_t OUTLINED_FUNCTION_46_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A4249C4();
}

uint64_t ImageElement.Bundle.imageStyle.getter@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 40);
  v4 = *(v1 + 32);
  v5 = v2;
  return sub_26A217A84(&v4, a1);
}

void ImageElement.Bundle.aspectRatio.getter()
{
  OUTLINED_FUNCTION_76();
  v21 = v1;
  v2 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  v15 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 40);
  sub_26A0E4894(v0 + v15, v14, &qword_28036D1A0, &qword_26A427150);
  v16 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v2);
  v18 = v21;
  sub_26A0E48F0(v14, &qword_28036D1A0, &qword_26A427150);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A0E4894(v0 + v15, v11, &qword_28036D1A0, &qword_26A427150);
    if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
    {
      *v6 = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v11, 1, v2) != 1)
      {
        sub_26A0E48F0(v11, &qword_28036D1A0, &qword_26A427150);
      }
    }

    else
    {
      sub_26A41494C(v11, v6, type metadata accessor for _ProtoImageElement.AspectRatio);
    }

    sub_26A41494C(v6, v18, type metadata accessor for _ProtoImageElement.AspectRatio);
    v16 = 0;
  }

  v19 = type metadata accessor for ImageElement.AspectRatio(0);
  __swift_storeEnumTagSinglePayload(v18, v16, 1, v19);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A412F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, __int16 a9, uint64_t a10)
{
  type metadata accessor for _ProtoImageElement.Bundle(0);
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v11, v12, &protocol conformance descriptor for _ProtoImageElement.Bundle);
  sub_26A4249C4();

  return sub_26A0E48F0(a8, &qword_28036CBB8, &qword_26A4265C8);
}

void sub_26A4130B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_76();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v28);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_15_2();
  v30 = type metadata accessor for ImageElement.Bundle(0);
  v31 = OUTLINED_FUNCTION_41(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18();
  v34 = v33 - v32;
  sub_26A0E4894(v25, v23, &qword_28036CBB8, &qword_26A4265C8);
  type metadata accessor for _ProtoImageElement.Bundle(0);
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v35, v36, &protocol conformance descriptor for _ProtoImageElement.Bundle);
  sub_26A4249C4();
  sub_26A0E48F0(v23, &qword_28036CBB8, &qword_26A4265C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v37 = OUTLINED_FUNCTION_110();
  type metadata accessor for ImageElement.SourceType(v37);
  OUTLINED_FUNCTION_25_7();
  v38 = OUTLINED_FUNCTION_14_28();
  *(v38 + 16) = xmmword_26A426410;
  sub_26A413FC8(v34, v38 + v27);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_22_35();
  OUTLINED_FUNCTION_9_49();
  v41 = sub_26A414870(v39, v40, &protocol conformance descriptor for _ProtoImageElement);
  OUTLINED_FUNCTION_29_27(v41);
  OUTLINED_FUNCTION_8_45();
  sub_26A41478C();
  swift_setDeallocating();
  sub_26A10C318();
  OUTLINED_FUNCTION_75();
}

uint64_t ImageElement.Bundle.darkModeName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
  }

  return OUTLINED_FUNCTION_175();
}

void ImageElement.Bundle.fixedWidth.getter()
{
  OUTLINED_FUNCTION_76();
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v12 = *(OUTLINED_FUNCTION_33_20() + 48);
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_20_2();
  if (v1 != 1)
  {
    sub_26A0E4894(v0 + v12, v10, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_10_2();
    if (v13)
    {
      *v5 = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_10_2();
      if (!v13)
      {
        sub_26A0E48F0(v10, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A41494C(v10, v5, type metadata accessor for _ProtoOptionalBool);
    }

    OUTLINED_FUNCTION_10_60();
  }

  OUTLINED_FUNCTION_75();
}

void ImageElement.Bundle.fixedHeight.getter()
{
  OUTLINED_FUNCTION_76();
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v12 = *(OUTLINED_FUNCTION_33_20() + 44);
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_20_2();
  if (v1 != 1)
  {
    sub_26A0E4894(v0 + v12, v10, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_10_2();
    if (v13)
    {
      *v5 = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_10_2();
      if (!v13)
      {
        sub_26A0E48F0(v10, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A41494C(v10, v5, type metadata accessor for _ProtoOptionalBool);
    }

    OUTLINED_FUNCTION_10_60();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A41367C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, uint64_t a11)
{
  v58 = OUTLINED_FUNCTION_12_38(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v57 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v21);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v22);
  v61 = OUTLINED_FUNCTION_24_44(v23, v54);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v56 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v28 = OUTLINED_FUNCTION_41(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v33 = OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_33();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_37();

  *v13 = v15;
  v13[1] = v12;
  if (v17)
  {

    v13[8] = v59;
    v13[9] = v17;
  }

  v13[2] = v60;
  v13[3] = v14;
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_14_34();
  if (!v36)
  {
    v37 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 48);
    sub_26A0E4894(v13 + v37, v11, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_48_0(v11);
    if (v36)
    {
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_48_0(v11);
      if (!v36)
      {
        sub_26A0E48F0(v11, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      v38 = OUTLINED_FUNCTION_28_26();
      sub_26A41494C(v38, v39, v40);
    }

    *v16 = v14 & 1;
    sub_26A0E48F0(v13 + v37, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_1_72();
    sub_26A41494C(v16, v13 + v37, v41);
    v42 = OUTLINED_FUNCTION_16_1();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v33);
  }

  if (a10 != 2)
  {
    v45 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 44);
    sub_26A0E4894(v13 + v45, v31, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_48_0(v31);
    if (v36)
    {
      v46 = v55;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_48_0(v31);
      if (!v36)
      {
        sub_26A0E48F0(v31, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      v46 = v55;
      sub_26A41494C(v31, v55, type metadata accessor for _ProtoOptionalBool);
    }

    *v46 = a10 & 1;
    sub_26A0E48F0(v13 + v45, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_1_72();
    sub_26A41494C(v46, v13 + v45, v47);
    OUTLINED_FUNCTION_32_23();
  }

  sub_26A0E4894(a11, v62, &qword_28036CBB8, &qword_26A4265C8);
  if (__swift_getEnumTagSinglePayload(v62, 1, v61) == 1)
  {
    return sub_26A0E48F0(v62, &qword_28036CBB8, &qword_26A4265C8);
  }

  sub_26A41494C(v62, v56, type metadata accessor for ImageElement.AspectRatio);
  OUTLINED_FUNCTION_7_35();
  sub_26A41494C(v56, v57, v49);
  v50 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 40);
  sub_26A0E48F0(v13 + v50, &qword_28036D1A0, &qword_26A427150);
  sub_26A41494C(v57, v13 + v50, v62);
  v51 = OUTLINED_FUNCTION_16_1();
  return __swift_storeEnumTagSinglePayload(v51, v52, v53, v58);
}

uint64_t sub_26A413AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, uint64_t a11)
{
  v58 = OUTLINED_FUNCTION_12_38(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v57 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v21);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v22);
  v61 = OUTLINED_FUNCTION_24_44(v23, v54);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v56 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v28 = OUTLINED_FUNCTION_41(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v33 = OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_33();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_37();

  *v13 = v15;
  v13[1] = v12;
  if (v17)
  {

    v13[8] = v59;
    v13[9] = v17;
  }

  v13[6] = v60;
  v13[7] = v14;
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_14_34();
  if (!v36)
  {
    v37 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 48);
    sub_26A0E4894(v13 + v37, v11, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_48_0(v11);
    if (v36)
    {
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_48_0(v11);
      if (!v36)
      {
        sub_26A0E48F0(v11, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      v38 = OUTLINED_FUNCTION_28_26();
      sub_26A41494C(v38, v39, v40);
    }

    *v16 = v14 & 1;
    sub_26A0E48F0(v13 + v37, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_1_72();
    sub_26A41494C(v16, v13 + v37, v41);
    v42 = OUTLINED_FUNCTION_16_1();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v33);
  }

  if (a10 != 2)
  {
    v45 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 44);
    sub_26A0E4894(v13 + v45, v31, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_48_0(v31);
    if (v36)
    {
      v46 = v55;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_48_0(v31);
      if (!v36)
      {
        sub_26A0E48F0(v31, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      v46 = v55;
      sub_26A41494C(v31, v55, type metadata accessor for _ProtoOptionalBool);
    }

    *v46 = a10 & 1;
    sub_26A0E48F0(v13 + v45, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_1_72();
    sub_26A41494C(v46, v13 + v45, v47);
    OUTLINED_FUNCTION_32_23();
  }

  sub_26A0E4894(a11, v62, &qword_28036CBB8, &qword_26A4265C8);
  if (__swift_getEnumTagSinglePayload(v62, 1, v61) == 1)
  {
    return sub_26A0E48F0(v62, &qword_28036CBB8, &qword_26A4265C8);
  }

  sub_26A41494C(v62, v56, type metadata accessor for ImageElement.AspectRatio);
  OUTLINED_FUNCTION_7_35();
  sub_26A41494C(v56, v57, v49);
  v50 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 40);
  sub_26A0E48F0(v13 + v50, &qword_28036D1A0, &qword_26A427150);
  sub_26A41494C(v57, v13 + v50, v62);
  v51 = OUTLINED_FUNCTION_16_1();
  return __swift_storeEnumTagSinglePayload(v51, v52, v53, v58);
}

uint64_t type metadata accessor for ImageElement.Bundle(uint64_t a1)
{
  result = qword_28157B140;
  if (!qword_28157B140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A413FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElement.Bundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26A414094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_76();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v24);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15_2();
  v26 = OUTLINED_FUNCTION_28_26();
  sub_26A0E4894(v26, v27, &qword_28036CBB8, &qword_26A4265C8);
  type metadata accessor for _ProtoImageElement.Bundle(0);
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v28, v29, &protocol conformance descriptor for _ProtoImageElement.Bundle);
  sub_26A4249C4();

  sub_26A0E48F0(v23, &qword_28036CBB8, &qword_26A4265C8);
  sub_26A0E48F0(v21, &qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_75();
}

void sub_26A4141F8()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_2();
  v5 = OUTLINED_FUNCTION_28_26();
  sub_26A0E4894(v5, v6, &qword_28036CBB8, &qword_26A4265C8);
  type metadata accessor for _ProtoImageElement.Bundle(0);
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v7, v8, &protocol conformance descriptor for _ProtoImageElement.Bundle);
  sub_26A4249C4();

  sub_26A0E48F0(v2, &qword_28036CBB8, &qword_26A4265C8);
  sub_26A0E48F0(v0, &qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_75();
}

uint64_t ImageElement.Bundle.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoImageElement.Bundle(v0);
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v1, v2, &protocol conformance descriptor for _ProtoImageElement.Bundle);

  return sub_26A424B44();
}

uint64_t ImageElement.Bundle.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.Bundle(0);
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v0, v1, &protocol conformance descriptor for _ProtoImageElement.Bundle);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A414428(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.Bundle(0);
  sub_26A414870(&qword_280370978, type metadata accessor for _ProtoImageElement.Bundle, &protocol conformance descriptor for _ProtoImageElement.Bundle);
  sub_26A424B44();
  return sub_26A425554();
}

void sub_26A414540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_76();
  v53[0] = v22;
  v53[1] = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v53[3] = v35;
  v53[2] = a21;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v36);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v37);
  v39 = v53 - v38;
  v40 = type metadata accessor for ImageElement.Bundle(0);
  v41 = OUTLINED_FUNCTION_41(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  v44 = v43 - v42;
  LOBYTE(v26) = *v26;
  sub_26A0E4894(v24, v39, &qword_28036CBB8, &qword_26A4265C8);
  v45 = type metadata accessor for _ProtoImageElement.Bundle(0);
  v53[10] = v34;
  v53[11] = v32;
  v53[12] = 0;
  v53[13] = 0;
  v53[14] = v30;
  v53[15] = v28;
  v54 = v26;
  v55 = 514;
  v56 = v39;
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v46, v47, &protocol conformance descriptor for _ProtoImageElement.Bundle);
  sub_26A4249C4();
  sub_26A0E48F0(v39, &qword_28036CBB8, &qword_26A4265C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v48 = OUTLINED_FUNCTION_110();
  type metadata accessor for ImageElement.SourceType(v48);
  OUTLINED_FUNCTION_25_7();
  v49 = OUTLINED_FUNCTION_14_28();
  *(v49 + 16) = xmmword_26A426410;
  sub_26A413FC8(v44, v49 + v45);
  swift_storeEnumTagMultiPayload();
  v57 = v49;
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_22_35();
  OUTLINED_FUNCTION_9_49();
  v52 = sub_26A414870(v50, v51, &protocol conformance descriptor for _ProtoImageElement);
  OUTLINED_FUNCTION_29_27(v52);
  OUTLINED_FUNCTION_8_45();
  sub_26A41478C();
  swift_setDeallocating();
  sub_26A10C318();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A41478C()
{
  v1 = OUTLINED_FUNCTION_110();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26A414870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A4148E0(uint64_t a1)
{
  result = type metadata accessor for _ProtoImageElement.Bundle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A41494C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_175();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_60()
{

  return sub_26A41478C();
}

uint64_t OUTLINED_FUNCTION_12_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v9 - 104) = v8;
  *(v9 - 124) = a8;
  *(v9 - 144) = a4;
  *(v9 - 136) = a6;
  *(v9 - 72) = *(v9 + 16);

  return type metadata accessor for _ProtoImageElement.AspectRatio(0);
}

void OUTLINED_FUNCTION_14_34()
{
  v2 = *(v1 - 88);
  *(v0 + 32) = *(v1 - 96);
  *(v0 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_24_44@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 112) = &a2 - a1;

  return type metadata accessor for ImageElement.AspectRatio(0);
}

uint64_t OUTLINED_FUNCTION_25_37()
{
}

uint64_t OUTLINED_FUNCTION_29_27(uint64_t a1)
{

  return sub_26A4249C4();
}

void OUTLINED_FUNCTION_30_21()
{
  *(v0 - 65) = *(v0 - 124);

  sub_26A217AB0(v0 - 96);
}

uint64_t OUTLINED_FUNCTION_32_23()
{

  return __swift_storeEnumTagSinglePayload(v1 + v0, 0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_33_20()
{

  return type metadata accessor for _ProtoImageElement.Bundle(0);
}

uint64_t OUTLINED_FUNCTION_34_18()
{

  return type metadata accessor for _ProtoOptionalBool(0);
}

uint64_t OUTLINED_FUNCTION_35_29()
{

  return type metadata accessor for _ProtoImageElement.Bundle(0);
}

uint64_t Vibrancy.description.getter()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 28271;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t Vibrancy.hashValue.getter()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

unint64_t sub_26A414CF0()
{
  result = qword_280373F90;
  if (!qword_280373F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373F90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Vibrancy(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26A414E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoWatchListButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A414EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoWatchListButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WatchListButton.canonicalId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WatchListButton.init(canonicalId:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoWatchListButton(0);
  sub_26A415170(&qword_28036F778, type metadata accessor for _ProtoWatchListButton, &protocol conformance descriptor for _ProtoWatchListButton);
  sub_26A4249C4();
}

Swift::String __swiftcall WatchListButton.description(redacted:)(Swift::Bool redacted)
{
  sub_26A424EF4();

  MEMORY[0x26D65BA70](*v1, v1[1]);
  MEMORY[0x26D65BA70](41, 0xE100000000000000);
  v2 = 0xD000000000000025;
  v3 = 0x800000026A446A00;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

BOOL static WatchListButton.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v2 || (sub_26A425354() & 1) != 0)
  {
    type metadata accessor for _ProtoWatchListButton(0);
    sub_26A424794();
    sub_26A415170(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_26A424B64())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_26A415170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for WatchListButton(uint64_t a1)
{
  result = qword_280373F98;
  if (!qword_280373F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A415278(uint64_t a1)
{
  result = type metadata accessor for _ProtoWatchListButton(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_98()
{

  return type metadata accessor for _ProtoWatchListButton(0);
}

Swift::String __swiftcall ReferenceButton.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = v46 - v8;
  v10 = type metadata accessor for ReferenceButton(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF70, &unk_26A426B20);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = v46 - v20;
  OUTLINED_FUNCTION_4_61();
  sub_26A416544();
  if (redacted)
  {
    _ProtoReference_Button.redactedProto.getter(v14);
  }

  else
  {
    sub_26A416544();
  }

  sub_26A416598();
  v21[*(v18 + 32)] = redacted;
  sub_26A4165EC(v17, type metadata accessor for ReferenceButton);
  *&v21[*(v18 + 28)] = MEMORY[0x277D84F90];
  ReferenceButton.action.getter();
  type metadata accessor for ActionProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_26A1081A0();
  sub_26A0E48F0(v9, &qword_28036CB18, &unk_26A427670);
  ReferenceButton.label.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  sub_26A108178(v5);
  sub_26A0E48F0(v5, &qword_28036CB30, &qword_26A426480);
  v30 = 0;
  if (v21[24] == 1)
  {
    v30 = v21[16];
  }

  sub_26A146454(v30, 0x6F526E6F74747562, 0xEA0000000000656CLL, 0);
  KeyPath = swift_getKeyPath();
  sub_26A0F7D90(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v32, v33, v34, v35, v46[0], v46[1]);

  sub_26A0FF490(v36, v37, v38, v39, v40, v41, v42);
  sub_26A0E48F0(v21, &qword_28036CF70, &unk_26A426B20);
  v43 = OUTLINED_FUNCTION_175();
  result._object = v44;
  result._countAndFlagsBits = v43;
  return result;
}

uint64_t type metadata accessor for ReferenceButton(uint64_t a1)
{
  result = qword_280373FA8;
  if (!qword_280373FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReferenceButton.action.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_36();
  type metadata accessor for _ProtoActionProperty(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  type metadata accessor for _ProtoReference_Button(0);
  OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_1_4();
  if (v8)
  {
    *v7 = MEMORY[0x277D84F90];
    v7[1] = 0;
    v7[2] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_1_4();
    if (!v8)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A416598();
  }

  return sub_26A416598();
}

uint64_t ReferenceButton.label.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_36();
  type metadata accessor for _ProtoTextProperty(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = v6 - v5;
  type metadata accessor for _ProtoReference_Button(0);
  OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_1_4();
  if (v8)
  {
    *v7 = MEMORY[0x277D84F90];
    *(v7 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v9 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    OUTLINED_FUNCTION_1_4();
    if (!v8)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A416598();
  }

  return sub_26A416598();
}

void ReferenceButton.buttonRole.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t _ProtoReference_Button.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v54 = (v3 - v4);
  MEMORY[0x28223BE20](v5);
  v53 = (&v51 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v52 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v51 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v51 - v27;
  OUTLINED_FUNCTION_1_73();
  sub_26A416544();
  v56 = type metadata accessor for _ProtoReference_Button(0);
  v29 = *(v56 + 28);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v14);
  sub_26A0E48F0(v28, &qword_28036C7B8, &unk_26A425BF0);
  v31 = MEMORY[0x277D84F90];
  v32 = EnumTagSinglePayload == 1;
  v33 = v55;
  if (!v32)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v25, 1, v14) == 1)
    {
      *v20 = v31;
      *(v20 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
      if (__swift_getEnumTagSinglePayload(v25, 1, v14) != 1)
      {
        sub_26A0E48F0(v25, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A416598();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A4165EC(v20, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v29, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A416598();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v14);
  }

  v43 = *(v56 + 32);
  sub_26A10FD9C();
  v44 = __swift_getEnumTagSinglePayload(v13, 1, v33);
  result = sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (v44 != 1)
  {
    v46 = v52;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v46, 1, v33) == 1)
    {
      v47 = v53;
      *v53 = v31;
      *(v47 + 8) = 0;
      *(v47 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v46, 1, v33) != 1)
      {
        sub_26A0E48F0(v46, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v47 = v53;
      sub_26A416598();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v54);
    sub_26A4165EC(v47, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v43, &off_28036C7C0, &off_26A427400);
    sub_26A416598();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v48, v49, v50, v33);
  }

  return result;
}

uint64_t ReferenceButton.init(action:label:buttonRole:componentName:)(void *a1, void *a2)
{
  type metadata accessor for _ProtoReference_Button(0);
  OUTLINED_FUNCTION_0_99();
  v6 = sub_26A416924(v4, v5, &protocol conformance descriptor for _ProtoReference_Button);
  OUTLINED_FUNCTION_12_39(v6, v7, v8, v6, v9, v10, v11, v12, v14);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A415FB4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v26 = a5;
  v24 = a4;
  v23 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v23);
  v22[1] = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v11);
  v12 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v12 - 8);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 8))(v13, v14);
  sub_26A416598();
  v15 = type metadata accessor for _ProtoReference_Button(0);
  v16 = *(v15 + 32);
  sub_26A0E48F0(a1 + v16, &off_28036C7C0, &off_26A427400);
  sub_26A416598();
  __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v11);
  v17 = a3[3];
  v18 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v17);
  (*(v18 + 8))(v17, v18);
  sub_26A416598();
  v19 = *(v15 + 28);
  sub_26A0E48F0(a1 + v19, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A416598();
  __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v23);
  v20 = v25;
  *(a1 + 16) = v24;
  *(a1 + 24) = 1;

  *a1 = v26;
  *(a1 + 8) = v20;
  return result;
}

uint64_t ReferenceButton.init(action:label:buttonRole:)(void *a1, void *a2)
{
  sub_26A0E5D68(a1, v16);
  sub_26A0E5D68(a2, v15);
  type metadata accessor for _ProtoReference_Button(0);
  OUTLINED_FUNCTION_0_99();
  v6 = sub_26A416924(v4, v5, &protocol conformance descriptor for _ProtoReference_Button);
  OUTLINED_FUNCTION_65_2(v6, v7, v8, v6, v9, v10, v11, v12, v14);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t ReferenceButton.init(action:label:componentName:)(void *a1, void *a2)
{
  sub_26A0E5D68(a1, v16);
  sub_26A0E5D68(a2, v15);
  type metadata accessor for _ProtoReference_Button(0);
  OUTLINED_FUNCTION_0_99();
  v6 = sub_26A416924(v4, v5, &protocol conformance descriptor for _ProtoReference_Button);
  OUTLINED_FUNCTION_12_39(v6, v7, v8, v6, v9, v10, v11, v12, v14);

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t ReferenceButton.init(action:label:)(void *a1, void *a2)
{
  sub_26A0E5D68(a1, v16);
  sub_26A0E5D68(a2, v15);
  type metadata accessor for _ProtoReference_Button(0);
  OUTLINED_FUNCTION_0_99();
  v6 = sub_26A416924(v4, v5, &protocol conformance descriptor for _ProtoReference_Button);
  OUTLINED_FUNCTION_65_2(v6, v7, v8, v6, v9, v10, v11, v12, v14);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_26A416544()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A416598()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A4165EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t ReferenceButton.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoReference_Button(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_1_73();
  sub_26A416544();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_60();
  sub_26A416598();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t ReferenceButton.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for ReferenceButton(0);
  *(inited + 64) = &protocol witness table for ReferenceButton;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_4_61();
  sub_26A416544();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A416924(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A416924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A4169E0(uint64_t a1)
{
  result = type metadata accessor for _ProtoReference_Button(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_17_35()
{

  return type metadata accessor for _ProtoReference_Button(0);
}

uint64_t OUTLINED_FUNCTION_18_37()
{

  return sub_26A10FD9C();
}

uint64_t Loggable<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A425584();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_26A425394();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t Loggable<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[6] = a3;
  v20 = a4;
  v19 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Loggable(0, v9, v10, v11);
  v18 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A425564();
  if (!v4)
  {
    v17 = v12;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_26A425374();
    (*(v19 + 32))(v14, v8, a2);
    __swift_destroy_boxed_opaque_existential_1(v21);
    (*(v18 + 32))(v20, v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Loggable<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_26A425504();
  Loggable<A>.hash(into:)(v5, a1, a2);
  return sub_26A425554();
}

uint64_t sub_26A416FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_26A425504();
  Loggable<A>.hash(into:)(v6, a2, v4);
  return sub_26A425554();
}

uint64_t sub_26A417040(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A4170B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_26A4171EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26A417424(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return a2;
}

uint64_t sub_26A41804C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a4;
  v23 = a3;
  v19 = a5;
  v8 = a2(0);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803705E0, &qword_26A432700);
  OUTLINED_FUNCTION_24();
  v14 = v13;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_59_7();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A22CB30();
  sub_26A425574();
  if (!v5)
  {
    v16 = v23;
    sub_26A0E718C();
    sub_26A425054();
    v16(v21, v22);
    (*(v14 + 8))(v6, v12);
    sub_26A41C158(v11, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A418A18()
{
  v1 = OUTLINED_FUNCTION_16_11();
  type metadata accessor for _ProtoVisualElement(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803705F0, &qword_26A432708);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59_7();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_26A22CB30();
  sub_26A425594();
  VisualElement.proto.getter();
  sub_26A41C49C(qword_281579800, type metadata accessor for _ProtoVisualElement, &protocol conformance descriptor for _ProtoVisualElement);
  v7 = sub_26A424994();
  if (v14)
  {
    sub_26A41C1B0(v5, type metadata accessor for _ProtoVisualElement);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    sub_26A41C1B0(v5, type metadata accessor for _ProtoVisualElement);
    sub_26A0E70D4();
    sub_26A425154();
    sub_26A0E4784(v9, v10);
  }

  v11 = OUTLINED_FUNCTION_44();
  return v12(v11);
}

uint64_t sub_26A4190DC(void *a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803705F0, &qword_26A432708);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_59_7();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A22CB30();
  sub_26A425594();
  a2(0);
  sub_26A41C49C(a3, a4, a5);
  v10 = sub_26A424994();
  if (!v18)
  {
    v16 = v10;
    v17 = v11;
    sub_26A0E70D4();
    sub_26A425154();
    sub_26A0E4784(v16, v17);
  }

  v12 = OUTLINED_FUNCTION_44();
  return v13(v12);
}

uint64_t sub_26A419278(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_26A41C408(*(a1 + 16), 0, &qword_28036CC18, &qword_26A426678);
  OUTLINED_FUNCTION_33_21();
  v7 = sub_26A41C990(v3, v4, v5, v6);
  sub_26A3CDE80(v9);
  if (v7 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_26A41931C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  sub_26A41C408(*(a1 + 16), 0, a2, a3);
  OUTLINED_FUNCTION_33_21();
  v9 = sub_26A41CAEC(v5, v6, v7, v8);
  sub_26A3CDE80(v11);
  if (v9 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t Player.proto.getter()
{
  OUTLINED_FUNCTION_97_6();
  OUTLINED_FUNCTION_17_36();
  return sub_26A417424(v0, v1);
}

Swift::String __swiftcall Player.description(redacted:)(Swift::Bool redacted)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_36_2();
  v9 = type metadata accessor for Player.Control(v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v11 = OUTLINED_FUNCTION_14_29();
  v12 = type metadata accessor for Player(v11);
  v13 = OUTLINED_FUNCTION_41(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v14);
  v16 = v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB60, &qword_26A426578);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_15_47();
  sub_26A417424(v2, v16);
  if (redacted)
  {
    sub_26A2DD0AC();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_124();
    sub_26A417424(v19, v20);
  }

  sub_26A41C158(v4, v1);
  *(v1 + *(v17 + 32)) = redacted;
  sub_26A41C1B0(v16, type metadata accessor for Player);
  v21 = *(v17 + 28);
  *(v1 + v21) = MEMORY[0x277D84F90];
  v22 = OUTLINED_FUNCTION_133();
  sub_26A0E4894(v22, v23, v24, v25);
  Player.Control.init(proto:)();
  v26 = sub_26A41A9B0(redacted);
  v28 = v27;
  OUTLINED_FUNCTION_14_35();
  sub_26A41C1B0(v3, v29);
  v30 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v30 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {

    sub_26A166E7C(0, 1, 1, MEMORY[0x277D84F90]);
    v32 = v31;
    v34 = *(v31 + 16);
    v33 = *(v31 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_26A166E7C(v33 > 1, v34 + 1, 1, v31);
      v32 = v55;
    }

    *(v32 + 16) = v34 + 1;
    v35 = (v32 + 32 * v34);
    v35[4] = 0;
    v35[5] = 0;
    v35[6] = v26;
    v35[7] = v28;
    *(v1 + v21) = v32;
  }

  else
  {
  }

  KeyPath = swift_getKeyPath();
  sub_26A28FCC0(KeyPath, 0x736D6F696469, 0xE600000000000000);

  v37 = swift_getKeyPath();
  sub_26A0F8270(v37, 0x696669746E656469, 0xEA00000000007265, 1, v38, v39, v40, v41, v57[0], v57[1]);

  sub_26A0F99B8(v42, v43, v44, v45, v46, v47, v48);
  v50 = v49;
  v52 = v51;
  sub_26A0E48F0(v1, &qword_28036CB60, &qword_26A426578);
  v53 = v50;
  v54 = v52;
  result._object = v54;
  result._countAndFlagsBits = v53;
  return result;
}

uint64_t _s10SnippetKit12_ProtoPlayerV08redactedC0ACvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_59_7();
  OUTLINED_FUNCTION_17_36();
  sub_26A417424(v3, a1);
  v12 = 1;
  if (!__swift_getEnumTagSinglePayload(a1, 1, v5))
  {
    v13 = OUTLINED_FUNCTION_175();
    sub_26A417424(v13, v14);
    _ProtoPlayer.OneOf_Control.redactedProto.getter(v2);
    OUTLINED_FUNCTION_18_38();
    sub_26A41C1B0(v9, v15);
    v12 = 0;
  }

  __swift_storeEnumTagSinglePayload(v2, v12, 1, v5);
  v16 = OUTLINED_FUNCTION_44();
  return sub_26A11C4D8(v16, v17);
}

void Player.control.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  sub_26A0E4894(v0, &v6 - v5, &qword_28036C8F8, &unk_26A426440);
  Player.Control.init(proto:)();
}

void Player.Control.init(proto:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v88 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48();
  v80 = v7;
  v83 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_48();
  v81 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v85 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v77 - v16;
  v86 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_48();
  v79 = v20;
  v21 = type metadata accessor for _ProtoPlayerButton(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v87 = v24 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v26);
  v28 = &v77 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  v32 = v2;
  sub_26A0E4894(v2, &v77 - v30, &qword_28036C8F8, &unk_26A426440);
  v33 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  if (__swift_getEnumTagSinglePayload(v31, 1, v33) == 1)
  {
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v34 = sub_26A424AE4();
    __swift_project_value_buffer(v34, qword_2803A8950);
    v35 = v2;
    sub_26A0E4894(v2, v28, &qword_28036C8F8, &unk_26A426440);
    v36 = sub_26A424AD4();
    v37 = sub_26A424E04();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v90[0] = v39;
      *v38 = 136315138;
      sub_26A0E4894(v28, v0, &qword_28036C8F8, &unk_26A426440);
      sub_26A424BC4();
      sub_26A0E48F0(v28, &qword_28036C8F8, &unk_26A426440);
      v40 = OUTLINED_FUNCTION_124();
      v43 = sub_26A0E8788(v40, v41, v42);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_26A0B8000, v36, v37, "Malformed protobuf message: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x26D65C950](v39, -1, -1);
      MEMORY[0x26D65C950](v38, -1, -1);

      v44 = v35;
    }

    else
    {

      sub_26A0E48F0(v32, &qword_28036C8F8, &unk_26A426440);
      v44 = v28;
    }

    sub_26A0E48F0(v44, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26A0E48F0(v2, &qword_28036C8F8, &unk_26A426440);
        OUTLINED_FUNCTION_9_50();
      }

      else
      {
        sub_26A0E48F0(v2, &qword_28036C8F8, &unk_26A426440);
        OUTLINED_FUNCTION_8_46();
      }

      sub_26A41C158(v31, v88);
    }

    else
    {
      v46 = v87;
      sub_26A41C158(v31, v87);
      v47 = v21;
      sub_26A0E4894(v46 + *(v21 + 20), v17, &qword_28036EC48, &unk_26A4385C0);
      v48 = v86;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v86);
      v77 = v32;
      if (EnumTagSinglePayload == 1)
      {
        v50 = v79;
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        v51 = *(v48 + 20);
        v52 = v83;
        v53 = v80;
        if (qword_28036C428 != -1)
        {
          OUTLINED_FUNCTION_60_4(&qword_28036C428);
        }

        *(v50 + v51) = qword_280371710;
        v54 = __swift_getEnumTagSinglePayload(v17, 1, v48);

        if (v54 != 1)
        {
          sub_26A0E48F0(v17, &qword_28036EC48, &unk_26A4385C0);
        }
      }

      else
      {
        v50 = v79;
        sub_26A41C158(v17, v79);
        v52 = v83;
        v53 = v80;
      }

      v55 = *(v50 + *(v48 + 20));
      v56 = OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__action;
      swift_beginAccess();
      sub_26A0E4894(v55 + v56, v53, &off_28036C7C0, &off_26A427400);
      if (__swift_getEnumTagSinglePayload(v53, 1, v52) == 1)
      {
        v57 = v81;
        v58 = MEMORY[0x277D84F90];
        *v81 = MEMORY[0x277D84F90];
        v57[1] = 0;
        v57[2] = 0xE000000000000000;
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        OUTLINED_FUNCTION_15(v53);
        v59 = v85;
        if (!v60)
        {
          sub_26A0E48F0(v53, &off_28036C7C0, &off_26A427400);
        }
      }

      else
      {
        v58 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_4_62();
        v57 = v81;
        sub_26A41C158(v53, v81);
        v59 = v85;
      }

      sub_26A41C1B0(v50, type metadata accessor for _ProtoButton);
      v61 = type metadata accessor for ActionProperty(0);
      v90[3] = v61;
      v90[4] = &protocol witness table for ActionProperty;
      __swift_allocate_boxed_opaque_existential_1(v90);
      OUTLINED_FUNCTION_4_62();
      sub_26A41C158(v57, v62);
      sub_26A0E4894(v87 + *(v47 + 24), v59, &qword_28036EC48, &unk_26A4385C0);
      if (__swift_getEnumTagSinglePayload(v59, 1, v48) == 1)
      {
        v63 = v82;
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        v64 = *(v48 + 20);
        if (qword_28036C428 != -1)
        {
          OUTLINED_FUNCTION_60_4(&qword_28036C428);
        }

        *(v63 + v64) = qword_280371710;
        v65 = v85;
        v66 = __swift_getEnumTagSinglePayload(v85, 1, v48);

        if (v66 != 1)
        {
          sub_26A0E48F0(v65, &qword_28036EC48, &unk_26A4385C0);
        }
      }

      else
      {
        v63 = v82;
        sub_26A41C158(v59, v82);
      }

      v67 = *(v63 + *(v86 + 20));
      v68 = OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__action;
      swift_beginAccess();
      v69 = v67 + v68;
      v70 = v78;
      sub_26A0E4894(v69, v78, &off_28036C7C0, &off_26A427400);
      OUTLINED_FUNCTION_15(v70);
      if (v60)
      {
        v71 = v84;
        *v84 = v58;
        v71[1] = 0;
        v71[2] = 0xE000000000000000;
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        OUTLINED_FUNCTION_15(v70);
        if (!v60)
        {
          sub_26A0E48F0(v70, &off_28036C7C0, &off_26A427400);
        }
      }

      else
      {
        v71 = v84;
        sub_26A41C158(v70, v84);
      }

      sub_26A41C1B0(v63, type metadata accessor for _ProtoButton);
      v89[3] = v61;
      v89[4] = &protocol witness table for ActionProperty;
      __swift_allocate_boxed_opaque_existential_1(v89);
      OUTLINED_FUNCTION_4_62();
      sub_26A41C158(v71, v72);
      v73 = type metadata accessor for _ProtoStandardPlayerButton(0);
      MEMORY[0x28223BE20](v73);
      *(&v77 - 6) = v90;
      *(&v77 - 5) = v89;
      *(&v77 - 4) = 0;
      *(&v77 - 3) = 0xE000000000000000;
      OUTLINED_FUNCTION_13_40();
      sub_26A41C49C(v74, v75, &protocol conformance descriptor for _ProtoStandardPlayerButton);
      *(&v77 - 2) = 0;
      *(&v77 - 1) = 0;
      sub_26A4249C4();
      sub_26A0E48F0(v77, &qword_28036C8F8, &unk_26A426440);
      OUTLINED_FUNCTION_12_40();
      sub_26A41C1B0(v87, v76);
      __swift_destroy_boxed_opaque_existential_1(v89);
      __swift_destroy_boxed_opaque_existential_1(v90);
    }
  }

  type metadata accessor for Player.Control(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_75();
}

void *Player.idioms.getter()
{
  if (*(*(v0 + *(type metadata accessor for _ProtoPlayer(0) + 20)) + 16))
  {
  }

  else
  {
    return &unk_287B02990;
  }
}

uint64_t Player.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for _ProtoPlayer(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t Player.init(_:idioms:identifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoPlayer(0);
  OUTLINED_FUNCTION_0_100();
  sub_26A41C49C(v5, v6, &protocol conformance descriptor for _ProtoPlayer);
  sub_26A4249C4();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A41A4FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = type metadata accessor for Player.Control(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v13 + 8))(v12, v13);
  sub_26A0E48F0(a1, &qword_28036C8F8, &unk_26A426440);
  Player.Control.proto.getter(a1);
  sub_26A41C1B0(v11, type metadata accessor for Player.Control);

  v15 = sub_26A41931C(v14, &qword_280374070, &unk_26A445C68);
  v16 = type metadata accessor for _ProtoPlayer(0);
  v17 = *(v16 + 20);

  *(a1 + v17) = v15;
  if (a5)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  if (a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20 = (a1 + *(v16 + 24));

  *v20 = v18;
  v20[1] = v19;
  return result;
}

uint64_t Player.Control.proto.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1;
  v6 = type metadata accessor for StandardPlayerButton(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = type metadata accessor for CustomCanvas(0);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  v13 = type metadata accessor for PlayerButton(0);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v15 = OUTLINED_FUNCTION_14_29();
  type metadata accessor for Player.Control(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_1_74();
  sub_26A417424(v4, v19);
  OUTLINED_FUNCTION_124();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A41C158(v19, v2);
      OUTLINED_FUNCTION_9_50();
      v24 = OUTLINED_FUNCTION_44();
      sub_26A41C158(v24, v25);
      v20 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
      OUTLINED_FUNCTION_175();
      goto LABEL_6;
    case 2u:
      sub_26A41C158(v19, v10);
      OUTLINED_FUNCTION_8_46();
      sub_26A41C158(v10, a1);
      v20 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
      OUTLINED_FUNCTION_175();
      goto LABEL_6;
    case 3u:
      v21 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
      v22 = a1;
      v23 = 1;
      return __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
    default:
      sub_26A41C158(v19, v3);
      sub_26A41C158(v3, a1);
      v20 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
      OUTLINED_FUNCTION_175();
LABEL_6:
      swift_storeEnumTagMultiPayload();
      v22 = a1;
      v23 = 0;
      v21 = v20;
      return __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
  }
}

uint64_t Player.init(_:idioms:)(void *a1, uint64_t a2)
{
  sub_26A0E5D68(a1, v6);
  type metadata accessor for _ProtoPlayer(0);
  OUTLINED_FUNCTION_0_100();
  sub_26A41C49C(v3, v4, &protocol conformance descriptor for _ProtoPlayer);
  sub_26A4249C4();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t Player.hash(into:)()
{
  type metadata accessor for _ProtoPlayer(0);
  OUTLINED_FUNCTION_0_100();
  sub_26A41C49C(v0, v1, &protocol conformance descriptor for _ProtoPlayer);
  OUTLINED_FUNCTION_133();

  return sub_26A424B44();
}

uint64_t Player.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoPlayer(0);
  OUTLINED_FUNCTION_0_100();
  sub_26A41C49C(v0, v1, &protocol conformance descriptor for _ProtoPlayer);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A41AEA0(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoPlayer(0);
  sub_26A41C49C(&qword_28036D1E0, type metadata accessor for _ProtoPlayer, &protocol conformance descriptor for _ProtoPlayer);
  sub_26A424B44();
  return sub_26A425554();
}

void static Player.Control.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v37 = v3;
  v5 = v4;
  v6 = type metadata accessor for StandardPlayerButton(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v36 = v9 - v8;
  v10 = type metadata accessor for CustomCanvas(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v12 = OUTLINED_FUNCTION_36_2();
  v13 = type metadata accessor for PlayerButton(v12);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v15 = OUTLINED_FUNCTION_14_29();
  type metadata accessor for Player.Control(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v36 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v36 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280374038, &qword_26A445A10);
  OUTLINED_FUNCTION_41(v26);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_113();
  v29 = *(v28 + 56);
  sub_26A417424(v5, v0);
  sub_26A417424(v37, v0 + v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A417424(v0, v22);
      if (OUTLINED_FUNCTION_42_16() == 1)
      {
        sub_26A41C158(v0 + v29, v1);
        static _ProtoCustomCanvas.== infix(_:_:)(v22, v1);
        v33 = type metadata accessor for CustomCanvas;
        sub_26A41C1B0(v1, type metadata accessor for CustomCanvas);
        v34 = v22;
        goto LABEL_15;
      }

      v30 = type metadata accessor for CustomCanvas;
      v31 = v22;
      goto LABEL_12;
    case 2u:
      sub_26A417424(v0, v19);
      if (OUTLINED_FUNCTION_42_16() == 2)
      {
        v32 = v36;
        sub_26A41C158(v0 + v29, v36);
        static _ProtoStandardPlayerButton.== infix(_:_:)();
        v33 = type metadata accessor for StandardPlayerButton;
        sub_26A41C1B0(v32, type metadata accessor for StandardPlayerButton);
        v34 = v19;
        goto LABEL_15;
      }

      v30 = type metadata accessor for StandardPlayerButton;
      v31 = v19;
      goto LABEL_12;
    case 3u:
      if (OUTLINED_FUNCTION_42_16() != 3)
      {
        goto LABEL_13;
      }

      sub_26A41C1B0(v0, type metadata accessor for Player.Control);
      goto LABEL_16;
    default:
      sub_26A417424(v0, v25);
      if (OUTLINED_FUNCTION_42_16())
      {
        v30 = type metadata accessor for PlayerButton;
        v31 = v25;
LABEL_12:
        sub_26A41C1B0(v31, v30);
LABEL_13:
        sub_26A0E48F0(v0, &qword_280374038, &qword_26A445A10);
      }

      else
      {
        sub_26A41C158(v0 + v29, v2);
        static _ProtoPlayerButton.== infix(_:_:)();
        v33 = type metadata accessor for PlayerButton;
        sub_26A41C1B0(v2, type metadata accessor for PlayerButton);
        v34 = v25;
LABEL_15:
        sub_26A41C1B0(v34, v33);
        OUTLINED_FUNCTION_14_35();
        sub_26A41C1B0(v0, v35);
      }

LABEL_16:
      OUTLINED_FUNCTION_75();
      return;
  }
}

uint64_t Player.Control.hash(into:)()
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5 = type metadata accessor for StandardPlayerButton(v4);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v7 = type metadata accessor for CustomCanvas(0);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_36_2();
  v10 = type metadata accessor for PlayerButton(v9);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  type metadata accessor for Player.Control(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_1_74();
  sub_26A417424(v1, v15);
  OUTLINED_FUNCTION_124();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A41C158(v15, v2);
      MEMORY[0x26D65C340](1);
      type metadata accessor for _ProtoCustomCanvas(0);
      sub_26A41C49C(&qword_28036D5D0, type metadata accessor for _ProtoCustomCanvas, &protocol conformance descriptor for _ProtoCustomCanvas);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_11_46();
      v17 = v2;
      return sub_26A41C1B0(v17, v16);
    case 2u:
      sub_26A41C158(v15, v0);
      MEMORY[0x26D65C340](2);
      type metadata accessor for _ProtoStandardPlayerButton(0);
      OUTLINED_FUNCTION_13_40();
      sub_26A41C49C(v18, v19, &protocol conformance descriptor for _ProtoStandardPlayerButton);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_10_61();
      v17 = v0;
      return sub_26A41C1B0(v17, v16);
    case 3u:
      return MEMORY[0x26D65C340](3);
    default:
      sub_26A41C158(v15, v3);
      MEMORY[0x26D65C340](0);
      type metadata accessor for _ProtoPlayerButton(0);
      sub_26A41C49C(&qword_2803715F0, type metadata accessor for _ProtoPlayerButton, &protocol conformance descriptor for _ProtoPlayerButton);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_16_33();
      v17 = v3;
      return sub_26A41C1B0(v17, v16);
  }
}

uint64_t Player.Control.hashValue.getter()
{
  sub_26A425504();
  Player.Control.hash(into:)();
  return sub_26A425554();
}

uint64_t sub_26A41B684(uint64_t a1)
{
  sub_26A425504();
  Player.Control.hash(into:)();
  return sub_26A425554();
}

uint64_t Player.Control.asPlayerControl()()
{
  OUTLINED_FUNCTION_97_6();
  OUTLINED_FUNCTION_1_74();
  return sub_26A417424(v0, v1);
}

uint64_t sub_26A41B740(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_84_5();
  sub_26A417424(v2, v3);
  type metadata accessor for Player.Control(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26A41B798(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a1(0);
  v10[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  sub_26A417424(v4, boxed_opaque_existential_1);
  v8 = sub_26A217578(a4);
  return Player.init(_:idioms:)(v10, v8);
}

uint64_t PlayerConvertible<>.asPlayer()(uint64_t a1, uint64_t a2)
{
  v7[3] = a1;
  v7[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  v5 = sub_26A217578(&unk_287B029C0);
  return Player.init(_:idioms:)(v7, v5);
}

uint64_t Player.asPlayer()()
{
  OUTLINED_FUNCTION_97_6();
  OUTLINED_FUNCTION_15_47();
  return sub_26A417424(v0, v1);
}

BOOL sub_26A41BD00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Player(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 8))(a4, a5, v10);
  v13 = *&v12[*(type metadata accessor for _ProtoPlayer(0) + 20)];
  if (v13[2])
  {
  }

  else
  {
    v13 = &unk_287B029F0;
  }

  sub_26A41C1B0(v12, type metadata accessor for Player);
  v14 = sub_26A165034(a2, a3 & 1, v13);

  return v14;
}

BOOL sub_26A41BE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Player(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3, v6);
  v9 = *&v8[*(type metadata accessor for _ProtoPlayer(0) + 20)];
  if (v9[2])
  {
  }

  else
  {
    v9 = &unk_287B02A20;
  }

  sub_26A41C1B0(v8, type metadata accessor for Player);
  v10 = v9[2] + 1;
  v11 = 4;
  do
  {
    if (!--v10)
    {
      break;
    }

    v12 = v9[v11];
    v11 += 2;
  }

  while (v12);
  v13 = v10 != 0;

  return v13;
}

uint64_t _ProtoPlayer.OneOf_Control.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  v7 = type metadata accessor for _ProtoPlayerButton(0);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_14_29();
  type metadata accessor for _ProtoPlayer.OneOf_Control(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  sub_26A417424(v1, v12 - v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26A417424(v1, a1);
      OUTLINED_FUNCTION_18_38();
      return sub_26A41C1B0(v13, v15);
    }

    sub_26A41C158(v13, v2);
    sub_26A2917A8(a1);
    sub_26A41C1B0(v2, type metadata accessor for _ProtoStandardPlayerButton);
    OUTLINED_FUNCTION_133();
  }

  else
  {
    sub_26A41C158(v13, v3);
    _ProtoPlayerButton.redactedProto.getter(a1);
    OUTLINED_FUNCTION_12_40();
    sub_26A41C1B0(v3, v17);
    OUTLINED_FUNCTION_133();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26A41C158(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return a2;
}

uint64_t sub_26A41C1B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_26A41C30C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26A41C408(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  v6[2] = a1;
  v6[3] = 2 * ((v7 - 32) / 16);
  return v6;
}

uint64_t sub_26A41C49C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A41C62C(uint64_t a1)
{
  result = type metadata accessor for _ProtoPlayer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A41C698(uint64_t a1)
{
  result = type metadata accessor for PlayerButton(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CustomCanvas(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for StandardPlayerButton(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_26A41C74C()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for ComponentGroup(0);
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_17();
  v32 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  v31 = v12;
  v13 = v1 + 64;
  v14 = -1 << *(v1 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v1 + 64);
  if (!v5)
  {
    v18 = 0;
LABEL_20:
    *v7 = v1;
    v7[1] = v13;
    v7[2] = ~v14;
    v7[3] = v18;
    v7[4] = v16;
    OUTLINED_FUNCTION_75();
    return;
  }

  if (!v3)
  {
    v18 = 0;
    goto LABEL_20;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v28 = -1 << *(v1 + 32);
    v29 = v7;
    v17 = 0;
    v18 = 0;
    v19 = (63 - v14) >> 6;
    v30 = v3;
    while (v17 < v3)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_24;
      }

      if (!v16)
      {
        while (1)
        {
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v21 >= v19)
          {
            v16 = 0;
            v14 = v28;
            v7 = v29;
            goto LABEL_20;
          }

          v16 = *(v13 + 8 * v21);
          ++v18;
          if (v16)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v21 = v18;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v1;
      v24 = *(v1 + 56);
      v25 = *(v33 + 72);
      sub_26A417424(v24 + v25 * (v22 | (v21 << 6)), v32);
      sub_26A41C158(v32, v31);
      v26 = OUTLINED_FUNCTION_78_1();
      sub_26A41C158(v26, v27);
      v3 = v30;
      if (v20 == v30)
      {
        v18 = v21;
        v14 = v28;
        v7 = v29;
        v1 = v23;
        goto LABEL_20;
      }

      v5 += v25;
      v17 = v20;
      v18 = v21;
      v1 = v23;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void *sub_26A41C990(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26A41CAEC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v13 = *v12;
      LOBYTE(v12) = *(v12 + 8);
      v7 &= v7 - 1;
      *a2 = v13;
      *(a2 + 8) = v12;
      a2 += 16;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_42_16()
{

  return swift_getEnumCaseMultiPayload();
}

unint64_t _ProtoIdiom.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 9;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26A41CDC4@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoIdiom.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A41CDF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A11EF50();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t static _ProtoIdiom.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_280374090 = a1;
}

uint64_t sub_26A41CF40@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoIdiom.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A41CF68()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280374098);
  __swift_project_value_buffer(v0, qword_280374098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26A42B0D0;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v4 = "DEFAULT";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 1;
  *v8 = "PHONE";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PAD";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "POD";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CAR";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "TV";
  *(v16 + 1) = 2;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "WATCH";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "MAC";
  *(v20 + 1) = 3;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "RESERVED_DEVICE";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t static _ProtoIdiom._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C798 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_280374098);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_26A41D378()
{
  result = qword_28157B540;
  if (!qword_28157B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157B540);
  }

  return result;
}

unint64_t sub_26A41D3D0()
{
  result = qword_28157B548;
  if (!qword_28157B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157B548);
  }

  return result;
}

unint64_t sub_26A41D428()
{
  result = qword_2803740B0;
  if (!qword_2803740B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803740B8, &qword_26A445DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803740B0);
  }

  return result;
}

uint64_t ImageElement.Contact.Avatar.init(contactIds:)()
{
  type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
  OUTLINED_FUNCTION_7_36();
  v2 = sub_26A41E618(v0, v1, &protocol conformance descriptor for _ProtoImageElement.Contact.Avatar);
  OUTLINED_FUNCTION_65_2(v2, v3, v4, v2, v5, v6, v7, v8, v10);
}

uint64_t ImageElement.Contact.init(_:imageStyle:)(uint64_t a1)
{
  type metadata accessor for _ProtoImageElement.Contact(0);
  OUTLINED_FUNCTION_0_101();
  v4 = sub_26A41E618(v2, v3, &protocol conformance descriptor for _ProtoImageElement.Contact);
  OUTLINED_FUNCTION_65_2(v4, v5, v6, v4, v7, v8, v9, v10, v13);
  OUTLINED_FUNCTION_1_75();
  return sub_26A41E6A0(a1, v11);
}

uint64_t ImageElement.Contact.Monogram.init(letters:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
  OUTLINED_FUNCTION_9_51();
  sub_26A41E618(v2, v3, &protocol conformance descriptor for _ProtoImageElement.Contact.Monogram);
  sub_26A4249C4();
}

uint64_t static ImageElement.contactImageAvatar(contactIds:imageStyle:idioms:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for ImageElement.Contact.Content(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = v4 - v3;
  v6 = type metadata accessor for ImageElement.Contact(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
  OUTLINED_FUNCTION_7_36();
  sub_26A41E618(v8, v9, &protocol conformance descriptor for _ProtoImageElement.Contact.Avatar);

  OUTLINED_FUNCTION_15_48();

  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ProtoImageElement.Contact(0);
  OUTLINED_FUNCTION_0_101();
  v12 = sub_26A41E618(v10, v11, &protocol conformance descriptor for _ProtoImageElement.Contact);
  OUTLINED_FUNCTION_22_36(v12, v13, v14, v12);
  OUTLINED_FUNCTION_1_75();
  sub_26A41E6A0(v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v16 = OUTLINED_FUNCTION_16_11();
  type metadata accessor for ImageElement.SourceType(v16);
  OUTLINED_FUNCTION_18_39();
  v17 = OUTLINED_FUNCTION_17_37();
  OUTLINED_FUNCTION_5_61(v17, xmmword_26A426410);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_6_44();
  v20 = sub_26A41E618(v18, v19, &protocol conformance descriptor for _ProtoImageElement);
  OUTLINED_FUNCTION_21_32(v20, v21, v22, v20);
  OUTLINED_FUNCTION_11_47();
  swift_setDeallocating();
  return sub_26A10C318();
}

uint64_t static ImageElement.contactImageMonogram(letters:imageStyle:idioms:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for ImageElement.Contact.Content(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  v7 = type metadata accessor for ImageElement.Contact(0);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
  OUTLINED_FUNCTION_9_51();
  sub_26A41E618(v9, v10, &protocol conformance descriptor for _ProtoImageElement.Contact.Monogram);

  OUTLINED_FUNCTION_15_48();

  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ProtoImageElement.Contact(0);
  OUTLINED_FUNCTION_0_101();
  v13 = sub_26A41E618(v11, v12, &protocol conformance descriptor for _ProtoImageElement.Contact);
  OUTLINED_FUNCTION_22_36(v13, v14, v15, v13);
  OUTLINED_FUNCTION_1_75();
  sub_26A41E6A0(v6, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v17 = OUTLINED_FUNCTION_16_11();
  type metadata accessor for ImageElement.SourceType(v17);
  OUTLINED_FUNCTION_18_39();
  v18 = OUTLINED_FUNCTION_17_37();
  OUTLINED_FUNCTION_5_61(v18, xmmword_26A426410);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_6_44();
  v21 = sub_26A41E618(v19, v20, &protocol conformance descriptor for _ProtoImageElement);
  OUTLINED_FUNCTION_21_32(v21, v22, v23, v21);
  OUTLINED_FUNCTION_11_47();
  swift_setDeallocating();
  return sub_26A10C318();
}

uint64_t ImageElement.Contact.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  v4 = OUTLINED_FUNCTION_41(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  sub_26A41E6F8(v1, &v8 - v5);
  return sub_26A41DBFC(v6, a1);
}

uint64_t sub_26A41DBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_163_1();
  v7 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_26A41E6F8(a1, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_26A41EA4C(v2);
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v15 = sub_26A424AE4();
    __swift_project_value_buffer(v15, qword_2803A8950);
    v16 = sub_26A424AD4();
    v17 = sub_26A424E14();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_26A0E8788(0xD000000000000032, 0x800000026A44B570, &v21);
      _os_log_impl(&dword_26A0B8000, v16, v17, "%{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x26D65C950](v19, -1, -1);
      MEMORY[0x26D65C950](v18, -1, -1);
    }

    result = sub_26A424FC4();
    __break(1u);
  }

  else
  {
    sub_26A41EA4C(a1);
    sub_26A41E804(v2, v13);
    sub_26A41E804(v13, v10);
    swift_getEnumCaseMultiPayload();
    sub_26A41E804(v10, a2);
    type metadata accessor for ImageElement.Contact.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t ImageElement.Contact.imageStyle.getter()
{
  v2 = OUTLINED_FUNCTION_26_13();
  v3 = (v1 + *(type metadata accessor for _ProtoImageElement.Contact(v2) + 20));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  v6 = v4;
  v7 = v3;
  return sub_26A217A84(&v6, v0);
}

uint64_t sub_26A41DF88(uint64_t a1, uint64_t a2, char a3)
{
  sub_26A41EA4C(a1);
  sub_26A41E020();
  v5 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
  v12 = a3;
  sub_26A217AB0(&v10);
  v6 = v10;
  v7 = v11;
  result = type metadata accessor for _ProtoImageElement.Contact(0);
  v9 = a1 + *(result + 20);
  *v9 = v6;
  *(v9 + 8) = v7;
  return result;
}

uint64_t sub_26A41E020()
{
  v3 = v1;
  v4 = OUTLINED_FUNCTION_26_13();
  v5 = type metadata accessor for ImageElement.Contact.Avatar(v4);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = type metadata accessor for ImageElement.Contact.Monogram(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  type metadata accessor for ImageElement.Contact.Content(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_8_47();
  sub_26A41E768(v3, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A41E804(v2, v9);
    sub_26A41E804(v9, v0);
  }

  else
  {
    sub_26A41E804(v2, v14);
    sub_26A41E804(v14, v0);
  }

  type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ImageElement.Contact.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoImageElement.Contact(0);
  OUTLINED_FUNCTION_0_101();
  sub_26A41E618(v1, v2, &protocol conformance descriptor for _ProtoImageElement.Contact);

  return sub_26A424B44();
}

uint64_t ImageElement.Contact.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.Contact(0);
  OUTLINED_FUNCTION_0_101();
  sub_26A41E618(v0, v1, &protocol conformance descriptor for _ProtoImageElement.Contact);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A41E2B8(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.Contact(0);
  sub_26A41E618(&qword_28036D9C0, type metadata accessor for _ProtoImageElement.Contact, &protocol conformance descriptor for _ProtoImageElement.Contact);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t ImageElement.Contact.Content.description.getter()
{
  v1 = type metadata accessor for ImageElement.Contact.Monogram(0);
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = type metadata accessor for ImageElement.Contact.Avatar(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  type metadata accessor for ImageElement.Contact.Content(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_8_47();
  sub_26A41E768(v0, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A41E804(v14, v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
    sub_26A10D548();
    v15 = sub_26A424B54();
    v17 = v16;

    MEMORY[0x26D65BA70](v15, v17);

    MEMORY[0x26D65BA70](41, 0xE100000000000000);
    v18 = 0x287261746176612ELL;
    v19 = type metadata accessor for ImageElement.Contact.Avatar;
    v20 = v10;
  }

  else
  {
    sub_26A41E804(v14, v5);
    MEMORY[0x26D65BA70](*v5, v5[1]);
    MEMORY[0x26D65BA70](41, 0xE100000000000000);
    v18 = 0x6172676F6E6F6D2ELL;
    v19 = type metadata accessor for ImageElement.Contact.Monogram;
    v20 = v5;
  }

  sub_26A41E6A0(v20, v19);
  return v18;
}

uint64_t ImageElement.Contact.Monogram.letters.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_26A41E5CC(void *a1, uint64_t a2)
{

  *a1 = a2;
  return result;
}

uint64_t sub_26A41E618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A41E6A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A41E6F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A41E768(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_26A41E804(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_26A41E8E8(uint64_t a1)
{
  result = type metadata accessor for ImageElement.Contact.Monogram(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ImageElement.Contact.Avatar(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26A41E9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A41EA4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_61(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_26A41E768(v2, a1 + v3);
}

uint64_t OUTLINED_FUNCTION_11_47()
{

  return sub_26A41E6A0(v0, type metadata accessor for ImageElement.Contact);
}

uint64_t OUTLINED_FUNCTION_15_48()
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_17_37()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_22_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A4249C4();
}

Swift::String __swiftcall PrimaryHeaderRich.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v78 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v81 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v80 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = &v77 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v15);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v23 = OUTLINED_FUNCTION_41(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v79 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v77 - v26;
  v28 = type metadata accessor for PrimaryHeaderRich(0);
  v29 = OUTLINED_FUNCTION_41(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v30);
  v32 = &v77 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD28, &qword_26A426808);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  v36 = &v77 - v35;
  OUTLINED_FUNCTION_16_34();
  sub_26A42210C();
  if (v4)
  {
    _ProtoPrimaryHeader_Rich.redactedProto.getter();
  }

  else
  {
    sub_26A42210C();
  }

  sub_26A421C7C();
  v36[*(v33 + 32)] = v4 & 1;
  sub_26A421CD0(v32, type metadata accessor for PrimaryHeaderRich);
  v37 = MEMORY[0x277D84F90];
  *&v36[*(v33 + 28)] = MEMORY[0x277D84F90];
  v38 = type metadata accessor for _ProtoPrimaryHeader_Rich(0);
  OUTLINED_FUNCTION_142(*&v36[*(v38 + 20)] + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, &v82);
  sub_26A10FD9C();
  v39 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v39, v40, v17);
  if (v41)
  {
    *v21 = v37;
    *(v21 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v42 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v42);
    v49 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v49, v50, v17);
    if (!v41)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A421C7C();
  }

  sub_26A421C7C();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  OUTLINED_FUNCTION_222();
  sub_26A10602C(v27, v55 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v27);
  PrimaryHeaderRich.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106054(v14, v56 & 0xFFFF0000FFFFFFFFLL | 0x3200000000, 0xE500000000000000);
  sub_26A0E48F0(v14, &qword_28036CB28, &qword_26A427980);
  PrimaryHeaderRich.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106054(v14, v57 & 0xFFFF0000FFFFFFFFLL | 0x3300000000, 0xE500000000000000);
  sub_26A0E48F0(v14, &qword_28036CB28, &qword_26A427980);
  v58 = v79;
  PrimaryHeaderRich.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10602C(v58, v59 & 0xFFFF0000FFFFFFFFLL | 0x3400000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v58);
  v60 = v80;
  PrimaryHeaderRich.thumbnail.getter();
  sub_26A106004(v60, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v60, &qword_28036CB20, &unk_26A426470);
  v61 = v81;
  PrimaryHeaderRich.action.getter();
  sub_26A105F00();
  sub_26A0E48F0(v61, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7A48(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v63, v64, v65, v66, v77, v78);

  sub_26A0FCCA4(v67, v68, v69, v70, v71, v72, v73);
  sub_26A0E48F0(v36, &qword_28036CD28, &qword_26A426808);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v75;
  result._countAndFlagsBits = v74;
  return result;
}

uint64_t type metadata accessor for PrimaryHeaderRich(uint64_t a1)
{
  result = qword_2803740F8;
  if (!qword_2803740F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrimaryHeaderRich.text1.getter()
{
  v2 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = type metadata accessor for _ProtoPrimaryHeader_Rich(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v9 + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, v23);
  sub_26A10FD9C();
  v10 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v10, v11, v4);
  if (v12)
  {
    *v8 = MEMORY[0x277D84F90];
    *(v8 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v13 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
    v20 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v20, v21, v4);
    if (!v12)
    {
      sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A421C7C();
  }

  return sub_26A421C7C();
}

void sub_26A41F490()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoMultilineTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_36();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &unk_26A4273F0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v13 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_18();
    }

    sub_26A421C7C();
    v3 = 0;
  }

  v20 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v21, v3, 1, v20);
  OUTLINED_FUNCTION_75();
}

void PrimaryHeaderRich.text4.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_36();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v9, v10, &unk_26A425BF0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
      OUTLINED_FUNCTION_38_0();
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_18();
    }

    sub_26A421C7C();
    v2 = 0;
  }

  v19 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void PrimaryHeaderRich.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoVisualProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_36();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v9, v10, &unk_26A426430);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
      OUTLINED_FUNCTION_38_0();
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_18();
    }

    sub_26A421C7C();
    v2 = 0;
  }

  v19 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void PrimaryHeaderRich.action.getter()
{
  OUTLINED_FUNCTION_76();
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoActionProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_36();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_18();
    }

    sub_26A421C7C();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t PrimaryHeaderRich.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoPrimaryHeader_Rich(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoPrimaryHeader_Rich.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v182 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v9);
  v180 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v17);
  v175 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v24 = OUTLINED_FUNCTION_41(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v29);
  v30 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v34);
  v36 = v169 - v35;
  v37 = OUTLINED_FUNCTION_41_2();
  v38 = OUTLINED_FUNCTION_41(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  v43 = v169 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = v169 - v45;
  OUTLINED_FUNCTION_5_62();
  sub_26A42210C();
  v47 = *(type metadata accessor for _ProtoPrimaryHeader_Rich(0) + 20);
  v183 = v1;
  v184 = v47;
  v48 = *(v1 + v47);
  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, &v191);
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v46, 1, v30);
  sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
  v49 = MEMORY[0x277D84F90];
  if (v1 != 1)
  {
    sub_26A10FD9C();
    v50 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v50, v51, v30);
    if (v52)
    {
      *v36 = v49;
      *(v36 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v53 = v182;
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v182);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v53);
      v60 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_37(v60, v61, v30);
      v62 = v183;
      if (!v52)
      {
        sub_26A0E48F0(v43, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A421C7C();
      v62 = v183;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_41();
    sub_26A421CD0(v36, v63);
    v64 = v184;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v62 + v64);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v66 = type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v66);
      OUTLINED_FUNCTION_26_38();
      v48 = v67;
      *(v62 + v64) = v67;
    }

    OUTLINED_FUNCTION_129();
    sub_26A421C7C();
    v68 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v30);
    OUTLINED_FUNCTION_211(v48 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, v190);
    sub_26A10CF40();
    swift_endAccess();
  }

  v176 = v30;
  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, v190);
  v71 = v174;
  OUTLINED_FUNCTION_209();
  v72 = v175;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v175);
  OUTLINED_FUNCTION_162_0(v71);
  if (EnumTagSinglePayload == 1)
  {
    v74 = v49;
    v75 = v182;
    v76 = v183;
  }

  else
  {
    v77 = v169[0];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v77, 1, v72);
    v76 = v183;
    v78 = v184;
    if (v52)
    {
      OUTLINED_FUNCTION_35_17(v186);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v79 = OUTLINED_FUNCTION_44_0(*(v72 + 32));
      v85 = v182;
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v182);
      v82 = OUTLINED_FUNCTION_44_0(*(v72 + 36));
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
      OUTLINED_FUNCTION_37(v77, 1, v72);
      if (!v52)
      {
        sub_26A0E48F0(v77, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_17();
      v85 = v182;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_21_33();
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v76 + v78);
    v75 = v85;
    if ((v86 & 1) == 0)
    {
      v87 = type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v87);
      OUTLINED_FUNCTION_26_38();
      v48 = v88;
      *(v76 + v78) = v88;
    }

    v74 = v49;
    OUTLINED_FUNCTION_129();
    sub_26A421C7C();
    v89 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v72);
    OUTLINED_FUNCTION_211(v48 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, v189);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, v189);
  v92 = v177;
  sub_26A10FD9C();
  v93 = v72;
  v94 = __swift_getEnumTagSinglePayload(v92, 1, v72);
  sub_26A0E48F0(v92, &qword_28036CAE0, &unk_26A4273F0);
  if (v94 == 1)
  {
    v95 = v74;
    v96 = v75;
    v97 = v76;
    v98 = v176;
  }

  else
  {
    v99 = v169[3];
    sub_26A10FD9C();
    v100 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v100, v101, v93);
    v102 = v184;
    v95 = v74;
    if (v52)
    {
      OUTLINED_FUNCTION_35_17(v187);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v103 = OUTLINED_FUNCTION_44_0(*(v93 + 32));
      v96 = v75;
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v75);
      v106 = OUTLINED_FUNCTION_44_0(*(v93 + 36));
      __swift_storeEnumTagSinglePayload(v106, v107, v108, v75);
      v109 = OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_37(v109, v110, v93);
      v97 = v76;
      if (!v52)
      {
        sub_26A0E48F0(v99, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_17();
      v96 = v75;
      v97 = v76;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_21_33();
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v97 + v102);
    v98 = v176;
    if ((v111 & 1) == 0)
    {
      v112 = type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v112);
      OUTLINED_FUNCTION_26_38();
      v48 = v113;
      *(v97 + v102) = v113;
    }

    sub_26A421C7C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v93);
    OUTLINED_FUNCTION_211(v48 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, v188);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text4, v188);
  v117 = v178;
  OUTLINED_FUNCTION_209();
  v118 = __swift_getEnumTagSinglePayload(v117, 1, v98);
  OUTLINED_FUNCTION_162_0(v117);
  if (v118 == 1)
  {
    v119 = v95;
  }

  else
  {
    OUTLINED_FUNCTION_129();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(&unk_26A425BF0, 1, v98);
    v120 = v184;
    if (v52)
    {
      OUTLINED_FUNCTION_35_17(v188);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v121 = OUTLINED_FUNCTION_44_0(*(v98 + 32));
      __swift_storeEnumTagSinglePayload(v121, v122, v123, v96);
      v124 = OUTLINED_FUNCTION_44_0(*(v98 + 36));
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v96);
      OUTLINED_FUNCTION_37(&unk_26A425BF0, 1, v98);
      if (!v52)
      {
        sub_26A0E48F0(&unk_26A425BF0, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_17();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_41();
    sub_26A421CD0(v48, v127);
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v97 + v120);
    v129 = v98;
    if ((v128 & 1) == 0)
    {
      v130 = type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v130);
      OUTLINED_FUNCTION_26_38();
      v48 = v131;
      *(v97 + v120) = v131;
    }

    v119 = v95;
    sub_26A421C7C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, v129);
    OUTLINED_FUNCTION_211(v48 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text4, v187);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail, v187);
  v135 = v179;
  OUTLINED_FUNCTION_209();
  v136 = v180;
  v137 = __swift_getEnumTagSinglePayload(v135, 1, v180);
  OUTLINED_FUNCTION_162_0(v135);
  if (v137 == 1)
  {
    v138 = v119;
  }

  else
  {
    v139 = v169[9];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v139, 1, v136);
    v140 = v184;
    if (v52)
    {
      v48 = v170;
      v138 = v119;
      *v170 = v119;
      *(v48 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v141 = OUTLINED_FUNCTION_44_0(*(v136 + 32));
      __swift_storeEnumTagSinglePayload(v141, v142, v143, v96);
      v144 = OUTLINED_FUNCTION_44_0(*(v136 + 36));
      __swift_storeEnumTagSinglePayload(v144, v145, v146, v96);
      OUTLINED_FUNCTION_37(v139, 1, v136);
      if (!v52)
      {
        sub_26A0E48F0(v139, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_17();
      v138 = v119;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A421CD0(v48, type metadata accessor for _ProtoVisualProperty);
    v147 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v97 + v140);
    if ((v147 & 1) == 0)
    {
      v148 = type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v148);
      OUTLINED_FUNCTION_26_38();
      v48 = v149;
      *(v97 + v140) = v149;
    }

    OUTLINED_FUNCTION_129();
    sub_26A421C7C();
    v150 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v150, v151, v152, v136);
    OUTLINED_FUNCTION_211(v48 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail, v186);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v48 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, v186);
  v153 = v181;
  OUTLINED_FUNCTION_209();
  v154 = __swift_getEnumTagSinglePayload(v153, 1, v96);
  OUTLINED_FUNCTION_162_0(v153);
  if (v154 != 1)
  {
    v155 = v171;
    sub_26A10FD9C();
    v156 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v156, v157, v96);
    v158 = v184;
    if (v52)
    {
      v48 = v172;
      *v172 = v138;
      *(v48 + 8) = 0;
      *(v48 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v159 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_37(v159, v160, v96);
      v161 = v173;
      if (!v52)
      {
        sub_26A0E48F0(v155, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_17();
      v161 = v173;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v161);
    sub_26A421CD0(v48, type metadata accessor for _ProtoActionProperty);
    v162 = swift_isUniquelyReferenced_nonNull_native();
    v163 = *(v97 + v158);
    if ((v162 & 1) == 0)
    {
      v164 = type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v164);
      sub_26A400CEC();
      v163 = v165;
      *(v97 + v158) = v165;
    }

    OUTLINED_FUNCTION_129();
    sub_26A421C7C();
    v166 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v166, v167, v168, v96);
    OUTLINED_FUNCTION_211(v163 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &v185);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t PrimaryHeaderRich.init(text1:text2:text3:text4:thumbnail:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for _ProtoPrimaryHeader_Rich(0);
  OUTLINED_FUNCTION_15_49();
  sub_26A421FE4(v14, v15, &protocol conformance descriptor for _ProtoPrimaryHeader_Rich);
  sub_26A4249C4();

  sub_26A0E48F0(a6, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a5, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a4, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a3, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(a2, &qword_28036CB10, &unk_26A426460);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A420D94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v89 = a8;
  v86 = a7;
  v81 = a6;
  v82 = a5;
  v11 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = &v70 - v14;
  v90 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v90);
  v76 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v70 - v17;
  v18 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v18 - 8);
  v79 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v20 - 8);
  v88 = &v70 - v21;
  v87 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v87);
  v74 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v75 = &v70 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v25 - 8);
  v85 = &v70 - v26;
  v27 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v27 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v28 - 8);
  v83 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v70 - v31;
  v33 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v33);
  v71 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v78 = &v70 - v36;
  MEMORY[0x28223BE20](v37);
  v70 = &v70 - v38;
  v84 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v84);
  v73 = &v70 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v70 - v41;
  v43 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v43 - 8);

  _ProtoPrimaryHeader_Rich.componentName.setter(a2, a3);
  v44 = a4;
  v45 = a4[3];
  v46 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v45);
  (*(v46 + 8))(v45, v46);
  sub_26A421C7C();
  v72 = v42;
  _ProtoPrimaryHeader_Rich.text1.setter();
  sub_26A10FD9C();
  v47 = v93;
  if (v93)
  {
    v48 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    (*(v48 + 8))(v47, v48);
    sub_26A421C7C();
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
    __swift_destroy_boxed_opaque_existential_1(v92);
    if (__swift_getEnumTagSinglePayload(v32, 1, v33) != 1)
    {
      v49 = v70;
      sub_26A421C7C();
      sub_26A42210C();
      _ProtoPrimaryHeader_Rich.text2.setter();
      sub_26A421CD0(v49, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v92, &qword_28036CB10, &unk_26A426460);
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
  }

  sub_26A0E48F0(v32, &qword_28036CAE0, &unk_26A4273F0);
LABEL_6:
  sub_26A10FD9C();
  v50 = v93;
  if (v93)
  {
    v51 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    (*(v51 + 8))(v50, v51);
    v52 = v83;
    sub_26A421C7C();
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v33);
    __swift_destroy_boxed_opaque_existential_1(v92);
    if (__swift_getEnumTagSinglePayload(v52, 1, v33) != 1)
    {
      v53 = v71;
      sub_26A421C7C();
      sub_26A42210C();
      _ProtoPrimaryHeader_Rich.text3.setter();
      sub_26A421CD0(v53, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v92, &qword_28036CB10, &unk_26A426460);
    v52 = v83;
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v33);
  }

  sub_26A0E48F0(v52, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v54 = v93;
  if (v93)
  {
    v55 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    (*(v55 + 8))(v54, v55);
    v56 = v85;
    sub_26A421C7C();
    v57 = v84;
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v84);
    __swift_destroy_boxed_opaque_existential_1(v92);
    if (__swift_getEnumTagSinglePayload(v56, 1, v57) != 1)
    {
      v58 = v73;
      sub_26A421C7C();
      sub_26A42210C();
      _ProtoPrimaryHeader_Rich.text4.setter();
      sub_26A421CD0(v58, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v92, &qword_28036CB08, &unk_26A428720);
    v56 = v85;
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v84);
  }

  sub_26A0E48F0(v56, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v59 = v93;
  if (v93)
  {
    v60 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    (*(v60 + 8))(v59, v60);
    v61 = v88;
    sub_26A421C7C();
    v62 = v87;
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v87);
    __swift_destroy_boxed_opaque_existential_1(v92);
    if (__swift_getEnumTagSinglePayload(v61, 1, v62) != 1)
    {
      v63 = v75;
      sub_26A421C7C();
      sub_26A42210C();
      _ProtoPrimaryHeader_Rich.thumbnail.setter();
      sub_26A421CD0(v63, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v92, &qword_28036CB00, &unk_26A426450);
    v61 = v88;
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v87);
  }

  sub_26A0E48F0(v61, &qword_28036CAE8, &unk_26A426430);
LABEL_21:
  sub_26A10FD9C();
  v64 = v93;
  if (v93)
  {
    v65 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    (*(v65 + 8))(v64, v65);
    v66 = v91;
    sub_26A421C7C();
    v67 = v90;
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v90);
    __swift_destroy_boxed_opaque_existential_1(v92);
    if (__swift_getEnumTagSinglePayload(v66, 1, v67) != 1)
    {
      v68 = v77;
      sub_26A421C7C();
      sub_26A42210C();
      _ProtoPrimaryHeader_Rich.action.setter();
      return sub_26A421CD0(v68, type metadata accessor for _ProtoActionProperty);
    }
  }

  else
  {
    sub_26A0E48F0(v92, &qword_28036CAF8, &unk_26A426D30);
    v66 = v91;
    __swift_storeEnumTagSinglePayload(v91, 1, 1, v90);
  }

  return sub_26A0E48F0(v66, &off_28036C7C0, &off_26A427400);
}

uint64_t PrimaryHeaderRich.init(text1:text2:text3:text4:thumbnail:action:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_26A0E5D68(a1, v20);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoPrimaryHeader_Rich(0);
  OUTLINED_FUNCTION_15_49();
  sub_26A421FE4(v10, v11, &protocol conformance descriptor for _ProtoPrimaryHeader_Rich);
  sub_26A4249C4();
  sub_26A0E48F0(a6, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a5, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a4, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_164_0(a3);
  OUTLINED_FUNCTION_164_0(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v15, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v16, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v17, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_164_0(v18);
  OUTLINED_FUNCTION_164_0(v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_26A421C7C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A421CD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t PrimaryHeaderRich.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoPrimaryHeader_Rich(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_5_62();
  sub_26A42210C();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_17_38();
  sub_26A421C7C();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t PrimaryHeaderRich.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for PrimaryHeaderRich(0);
  *(inited + 64) = &protocol witness table for PrimaryHeaderRich;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_16_34();
  sub_26A42210C();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A421FE4(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A421FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A4220A0(uint64_t a1)
{
  result = type metadata accessor for _ProtoPrimaryHeader_Rich(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A42210C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_20_36()
{

  return type metadata accessor for _ProtoPrimaryHeader_Rich(0);
}

uint64_t OUTLINED_FUNCTION_21_33()
{

  return sub_26A421CD0(v0, type metadata accessor for _ProtoMultilineTextProperty);
}

void OUTLINED_FUNCTION_26_38()
{

  sub_26A400CEC();
}

uint64_t OUTLINED_FUNCTION_43_17()
{

  return sub_26A421C7C();
}

uint64_t OUTLINED_FUNCTION_48_25()
{

  return type metadata accessor for _ProtoPrimaryHeader_Rich(0);
}

uint64_t OUTLINED_FUNCTION_50_18()
{

  return sub_26A421C7C();
}

uint64_t _ProtoKeyValue_Standard.Pair.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  sub_26A3CE064(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_37(v6, 1, v8);
  if (!v9)
  {
    return sub_26A3CE218(v6, a1);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  result = OUTLINED_FUNCTION_37(v6, 1, v8);
  if (!v9)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoKeyValue_Standard.Pair.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 24);
  sub_26A13440C();
  sub_26A3CE218(a1, v1 + v3);
  v4 = type metadata accessor for _ProtoTextProperty(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t _ProtoKeyValue_Standard.Pair.hasKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  sub_26A3CE064(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_37(v4, 1, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_26A13440C();
  return v8;
}

uint64_t _ProtoKeyValue_Standard.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for _ProtoKeyValue_Standard(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoKeyValue_Standard.componentName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t _ProtoKeyValue_Standard.componentName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t _ProtoKeyValue_Standard.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoKeyValue_Standard(0) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoKeyValue_Standard.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoKeyValue_Standard(0) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

void (*_ProtoKeyValue_Standard.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  type metadata accessor for _ProtoKeyValue_Standard(0);
  return nullsub_1;
}

uint64_t sub_26A422820(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A3CEC5C(a1, v4);
  return _ProtoKeyValue_Standard.Pair.key.setter(v4);
}

void (*_ProtoKeyValue_Standard.Pair.key.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 24);
  *(v3 + 10) = v11;
  sub_26A3CE064(v1 + v11, v6);
  OUTLINED_FUNCTION_37(v6, 1, v7);
  if (v12)
  {
    *v10 = MEMORY[0x277D84F90];
    v10[4] = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v13 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
    OUTLINED_FUNCTION_37(v6, 1, v7);
    if (!v12)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A3CE218(v6, v10);
  }

  return sub_26A3CEB7C;
}

Swift::Void __swiftcall _ProtoKeyValue_Standard.Pair.clearKey()()
{
  type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  sub_26A13440C();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoKeyValue_Standard.Pair.value.setter()
{
  OUTLINED_FUNCTION_14_4();

  *v1 = v0;
  return result;
}

uint64_t _ProtoKeyValue_Standard.Pair.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoKeyValue_Standard.Pair.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

void (*_ProtoKeyValue_Standard.Pair.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  return nullsub_1;
}

uint64_t _ProtoKeyValue_Standard.Pair.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A422CA8()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280374108);
  __swift_project_value_buffer(v0, qword_280374108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pairs";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "component_name";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoKeyValue_Standard.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_26A424924();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_6();
      sub_26A4236CC(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t _ProtoKeyValue_Standard.traverse<A>(visitor:)()
{
  v3 = v1;
  OUTLINED_FUNCTION_18_11();
  v4 = *v0;
  if (!*(v4 + 16) || (type metadata accessor for _ProtoKeyValue_Standard.Pair(0), v5 = sub_26A42304C(), result = OUTLINED_FUNCTION_9_52(v4, 1, v6, v5), (v3 = v1) == 0))
  {
    v8 = *(v2 + 16);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v2 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_26A424A64(), !v3))
    {
      type metadata accessor for _ProtoKeyValue_Standard(0);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

unint64_t sub_26A42304C()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A423134(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A42304C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A4231B4(uint64_t a1)
{
  v2 = sub_26A42304C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A423224(uint64_t a1, uint64_t a2)
{
  sub_26A42304C();

  return sub_26A4249B4();
}

uint64_t sub_26A4232A4()
{
  result = MEMORY[0x26D65BA70](0x726961502ELL, 0xE500000000000000);
  qword_280374120 = 0xD00000000000001BLL;
  *algn_280374128 = 0x800000026A44B5B0;
  return result;
}

uint64_t static _ProtoKeyValue_Standard.Pair.protoMessageName.getter()
{
  if (qword_28036C7A8 != -1)
  {
    swift_once();
  }

  v0 = qword_280374120;

  return v0;
}

uint64_t sub_26A423374()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280374130);
  __swift_project_value_buffer(v0, qword_280374130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoKeyValue_Standard.Pair.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_5_6();
      sub_26A4236CC(v7, v8, v9, v10, v11);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_6();
      sub_26A423618(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_26A423618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A42304C();
  return sub_26A424944();
}

uint64_t sub_26A4236CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  sub_26A42304C();
  return sub_26A424934();
}

uint64_t _ProtoKeyValue_Standard.Pair.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_18_11();
  result = sub_26A423838(v0, v5, v3, v2);
  if (!v1)
  {
    v7 = *v4;
    if (*(*v4 + 16))
    {
      type metadata accessor for _ProtoTextProperty(0);
      v8 = sub_26A42304C();
      OUTLINED_FUNCTION_9_52(v7, 2, v9, v8);
    }

    type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A423838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  sub_26A3CE064(a1 + *(v11 + 24), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A3CE218(v7, v10);
  sub_26A42304C();
  sub_26A424A84();
  return sub_26A3CE6D8(v10);
}

uint64_t static _ProtoKeyValue_Standard.Pair.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 24);
  v17 = *(v12 + 56);
  sub_26A3CE064(a1 + v16, v15);
  sub_26A3CE064(a2 + v16, &v15[v17]);
  OUTLINED_FUNCTION_37(v15, 1, v4);
  if (v18)
  {
    OUTLINED_FUNCTION_37(&v15[v17], 1, v4);
    if (v18)
    {
      sub_26A13440C();
      goto LABEL_11;
    }

LABEL_9:
    sub_26A13440C();
LABEL_13:
    v21 = 0;
    return v21 & 1;
  }

  sub_26A3CE064(v15, v11);
  OUTLINED_FUNCTION_37(&v15[v17], 1, v4);
  if (v18)
  {
    sub_26A3CE6D8(v11);
    goto LABEL_9;
  }

  sub_26A3CE218(&v15[v17], v7);
  v19 = static _ProtoTextProperty.== infix(_:_:)(v11, v7);
  sub_26A3CE6D8(v7);
  sub_26A3CE6D8(v11);
  sub_26A13440C();
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_26A0DB64C(*a1, *a2);
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_1_76();
  sub_26A42304C();
  v21 = OUTLINED_FUNCTION_14_7();
  return v21 & 1;
}

uint64_t sub_26A423C8C(uint64_t (*a1)(void))
{
  sub_26A425504();
  a1(0);
  sub_26A42304C();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A423EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A42304C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A423FCC(uint64_t a1)
{
  v2 = sub_26A42304C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A424084(uint64_t a1, uint64_t a2)
{
  sub_26A42304C();

  return sub_26A4249B4();
}

void sub_26A42412C(uint64_t a1)
{
  sub_26A42430C(319, &qword_280374188, type metadata accessor for _ProtoKeyValue_Standard.Pair, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A424210(uint64_t a1)
{
  sub_26A42430C(319, &qword_2803741A0, type metadata accessor for _ProtoTextProperty, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      sub_26A42430C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A42430C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_9_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A424A74();
}