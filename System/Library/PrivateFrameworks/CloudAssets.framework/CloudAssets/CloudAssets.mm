void AssetExportSession.init(avAsset:presetName:delegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC11CloudAssets18AssetExportSession_delegate] = a4;
  swift_unknownObjectRetain();
  v6 = sub_2437ABA8C();
  v8.receiver = v4;
  v8.super_class = type metadata accessor for AssetExportSession();
  v7 = objc_msgSendSuper2(&v8, sel_initWithAsset_presetName_, a1, v6);

  if (v7)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id AssetExportSession.__allocating_init(asset:presetName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_2437ABA8C();

  v7 = [v5 initWithAsset:a1 presetName:v6];

  return v7;
}

id AssetExportSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetExportSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24378A8D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_47(0x7465737361, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
    if (v6 || (OUTLINED_FUNCTION_47(0x69746E6564657263, 0xEA00000000006C61) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
      if (v7 || (OUTLINED_FUNCTION_47(0x7079547465737361, 0xE900000000000065) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_58();
        if (a1 == v8 && a2 == v9)
        {

          return 3;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_47(v8, v9);

          if (v11)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }
}

uint64_t sub_24378AA30(unsigned __int8 a1)
{
  sub_2437ABEAC();
  MEMORY[0x245D3F230](a1);
  return sub_2437ABECC();
}

uint64_t sub_24378AA78(char a1)
{
  result = 0x7465737361;
  switch(a1)
  {
    case 1:
      result = 0x69746E6564657263;
      break;
    case 2:
      result = 0x7079547465737361;
      break;
    case 3:
      result = OUTLINED_FUNCTION_58();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24378AB2C(uint64_t a1)
{
  v2 = *v1;
  sub_2437ABEAC();
  MEMORY[0x245D3F230](v2);
  return sub_2437ABECC();
}

uint64_t sub_24378AB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24378A8D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24378ABB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2437929F8(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_55();

  return MEMORY[0x2821FE718](v3);
}

uint64_t sub_24378ABE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2437929F8(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_55();

  return MEMORY[0x2821FE720](v3);
}

uint64_t sub_24378AC20()
{
  v0 = sub_2437AB9DC();
  __swift_allocate_value_buffer(v0, qword_27ED85EE8);
  v1 = OUTLINED_FUNCTION_42();
  __swift_project_value_buffer(v1, v2);
  sub_2437AB73C();
  type metadata accessor for AssetStreamHandle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85570, &qword_2437ACC90);
  sub_2437ABABC();
  OUTLINED_FUNCTION_33();
  return sub_2437AB9CC();
}

uint64_t sub_24378ACC0()
{
  result = sub_24378ACE0();
  qword_27ED85EA8 = result;
  return result;
}

uint64_t sub_24378ACE0()
{
  sub_2437AB76C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_8();
  v3 = v1 - v2;
  MEMORY[0x28223BE20](v4);
  static TestConfigurations.testConfigurations()(&v12);
  v11 = 0;
  if (static TestConfigurations.== infix(_:_:)(&v12, &v11))
  {
    sub_2437AB6FC();
  }

  else if (static TestConfigurations.isSystemInstalledBinary()())
  {
    sub_2437AB6EC();
  }

  else
  {
    sub_2437AB70C();
  }

  type metadata accessor for AssetManager();
  v5 = OUTLINED_FUNCTION_33();
  v6(v5);
  v7 = AssetManager.__allocating_init(serviceIdentifier:)(v3);
  v8 = OUTLINED_FUNCTION_25();
  v9(v8);
  return v7;
}

void AssetStreamHandle.init(from:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_52();
  v34 = v4;
  v35 = v3;
  v6 = v5;
  v7 = sub_2437AB5CC();
  v8 = OUTLINED_FUNCTION_17(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13();
  v9 = sub_2437AB67C();
  v10 = OUTLINED_FUNCTION_17(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13();
  sub_2437AB91C();
  OUTLINED_FUNCTION_1();
  v31 = v12;
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v33 = v13;
  OUTLINED_FUNCTION_13();
  v14 = sub_2437AB94C();
  v15 = OUTLINED_FUNCTION_17(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63();
  sub_2437AB66C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v17 = type metadata accessor for AssetStreamHandle(0);
  v18 = v17[8];
  type metadata accessor for AssetStreamHandle.RangeReadersCache();
  OUTLINED_FUNCTION_66();
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85490, &unk_2437AC7F0);
  type metadata accessor for AssetStreamHandle.RangeReader(0);
  sub_243792644();
  *(v19 + 112) = sub_2437ABA4C();
  *(v34 + v18) = v19;
  sub_243792760(v6, v35);
  sub_2437AB93C();
  OUTLINED_FUNCTION_22();
  sub_243794674(v20, v21, MEMORY[0x277CFA7C8]);
  sub_2437AB96C();
  if (v2)
  {
    sub_2437927B8(v6, v35);
  }

  else
  {
    sub_2437AB63C();
    sub_2437AB87C();
    (*(v31 + 32))(v34, v33, v32);
    sub_2437AB5DC();
    sub_2437AB69C();
    v22 = sub_2437AB61C();
    v23 = (v34 + v17[6]);
    *v23 = v22;
    v23[1] = v24;
    v25 = sub_2437AB5FC();
    v27 = v26;
    sub_2437927B8(v6, v35);
    v28 = OUTLINED_FUNCTION_72();
    v29(v28);
    v30 = (v34 + v17[7]);
    *v30 = v25;
    v30[1] = v27;
  }

  OUTLINED_FUNCTION_56();
}

uint64_t AssetStreamHandle.serializedData()()
{
  v0 = sub_2437AB5CC();
  v1 = OUTLINED_FUNCTION_17(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_49();
  v2 = sub_2437AB67C();
  v3 = OUTLINED_FUNCTION_17(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v4 = sub_2437AB66C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  sub_2437AB65C();
  sub_2437AB86C();
  sub_2437AB64C();
  type metadata accessor for AssetStreamHandle(0);
  sub_2437AB68C();
  sub_2437AB5EC();

  sub_2437AB62C();

  sub_2437AB60C();
  OUTLINED_FUNCTION_22();
  sub_243794674(v11, v12, MEMORY[0x277CFA7C8]);
  sub_2437AB95C();
  (*(v6 + 8))(v10, v4);
  return OUTLINED_FUNCTION_42();
}

void static AssetStreamHandle.makeAssetStreamHandle(partition:owner:accessToken:requestorID:signature:referenceSignature:size:assetKey:filenameExtension:applicationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_52();
  v111 = v30;
  v112 = v32;
  v99 = v33;
  v100 = v34;
  v105 = v36;
  v106 = v35;
  v103 = v38;
  v104 = v37;
  v97 = v39;
  v98 = v40;
  v41 = sub_2437AB6DC();
  OUTLINED_FUNCTION_1();
  v110 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v108 = v44;
  OUTLINED_FUNCTION_13();
  v109 = sub_2437AB91C();
  OUTLINED_FUNCTION_1();
  v107 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3();
  v117 = v47;
  OUTLINED_FUNCTION_13();
  v118 = sub_2437AB90C();
  OUTLINED_FUNCTION_1();
  v116 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_8();
  v52 = v50 - v51;
  MEMORY[0x28223BE20](v53);
  v115 = v90 - v54;
  OUTLINED_FUNCTION_13();
  v55 = sub_2437AB52C();
  OUTLINED_FUNCTION_1();
  v57 = v56;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_49();
  sub_2437AB8BC();
  OUTLINED_FUNCTION_1();
  v113 = v60;
  v114 = v59;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v61);
  v63 = v90 - v62;
  v101 = a25;
  v102 = a26;
  v64 = sub_24378B980(a25, a26);
  if (v64)
  {
    sub_243792810(v64, v65, v66);
    OUTLINED_FUNCTION_69();
    swift_allocError();
    *v67 = xmmword_2437AC7D0;
    *(v67 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v96 = a30;
    v95 = a29;
    v94 = a28;
    v93 = a27;
    v90[1] = a24;
    v91 = v41;
    (*(v57 + 16))(v31, v97, v55);

    v68 = OUTLINED_FUNCTION_42();
    sub_243792760(v68, v69);
    sub_243792760(a22, a23);
    v92 = v63;
    sub_2437AB88C();
    v70 = OUTLINED_FUNCTION_28();
    sub_243792760(v70, v71);
    v72 = v115;
    OUTLINED_FUNCTION_28();
    sub_2437AB8FC();
    v73 = OUTLINED_FUNCTION_64();
    v74(v73);
    (*(v116 + 16))(v52, v72, v118);
    sub_2437AB8CC();
    sub_2437AB6CC();
    swift_allocObject();

    sub_2437AB6AC();
    v75 = v108;
    sub_2437AB6BC();

    v76 = v107;
    v77 = v112;
    v78 = OUTLINED_FUNCTION_40();
    v79 = v109;
    v80(v78);
    v81 = type metadata accessor for AssetStreamHandle(0);
    v82 = v110;
    v83 = v91;
    (*(v110 + 16))(v77 + v81[5], v75, v91);
    v106 = v81[8];
    type metadata accessor for AssetStreamHandle.RangeReadersCache();
    OUTLINED_FUNCTION_66();
    v84 = swift_allocObject();
    swift_defaultActor_initialize();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85490, &unk_2437AC7F0);
    type metadata accessor for AssetStreamHandle.RangeReader(0);
    sub_243792644();
    *(v84 + 112) = sub_2437ABA4C();
    (*(v82 + 8))(v75, v83);
    (*(v76 + 8))(v117, v79);
    (*(v116 + 8))(v115, v118);
    (*(v113 + 8))(v92, v114);
    v85 = v112;
    *(v112 + v106) = v84;
    v86 = (v85 + v81[6]);
    v87 = v94;
    *v86 = v93;
    v86[1] = v87;
    v88 = (v85 + v81[7]);
    v89 = v96;
    *v88 = v95;
    v88[1] = v89;
  }

  OUTLINED_FUNCTION_56();
}

BOOL sub_24378B980(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

id AssetStreamHandle.makeAVPlayerItem(with:options:)(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  OUTLINED_FUNCTION_37();
  sub_2437ABCCC();
  OUTLINED_FUNCTION_1();
  v63 = v3;
  v64 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v62 = v4;
  OUTLINED_FUNCTION_13();
  v60 = sub_2437ABCBC();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v61 = v6;
  OUTLINED_FUNCTION_13();
  v7 = sub_2437AB9FC();
  v8 = OUTLINED_FUNCTION_17(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v59 = v9;
  OUTLINED_FUNCTION_13();
  v10 = sub_2437AB5BC();
  OUTLINED_FUNCTION_1();
  v56 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = OUTLINED_FUNCTION_64();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  v19 = OUTLINED_FUNCTION_17(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - v24;
  v26 = sub_2437AB52C();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4();
  v32 = v31 - v30;
  v33 = OUTLINED_FUNCTION_32();
  sub_2437945D8(v33, v34, &unk_27ED85650, &qword_2437ACD80);
  OUTLINED_FUNCTION_84(v25);
  if (!v35)
  {
    (*(v28 + 32))(v32, v25, v26);
LABEL_6:
    v40 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v41 = v57;

    v42 = sub_2437924DC(v32, v41);
    type metadata accessor for LoadingRequestHandler(0);
    v43 = OUTLINED_FUNCTION_37();
    v44 = type metadata accessor for AssetStreamHandle(v43);
    v65[3] = v44;
    v65[4] = &protocol witness table for AssetStreamHandle;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
    v46 = v58;
    sub_2437928EC(v58, boxed_opaque_existential_1);
    OUTLINED_FUNCTION_81();
    v47 = sub_243794F7C(v65, v44, v46);
    v48 = [v42 resourceLoader];
    sub_243794634(0, &qword_27ED854B0, 0x277D85C78);
    v49 = v47;
    sub_2437AB9EC();
    v65[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21();
    sub_243794674(v50, v51, MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED854C0, &qword_2437AC800);
    sub_243792950();
    sub_2437ABD3C();
    (*(v63 + 104))(v62, *MEMORY[0x277D85260], v64);
    OUTLINED_FUNCTION_41();
    v52 = sub_2437ABCDC();
    OUTLINED_FUNCTION_68();
    [v53 v54];

    type metadata accessor for PlayerItem(0);
    v55 = OUTLINED_FUNCTION_57();
    return PlayerItem.__allocating_init(avAsset:delegate:)(v55, v49);
  }

  OUTLINED_FUNCTION_36();
  sub_2437AB5AC();
  OUTLINED_FUNCTION_0();
  sub_243794674(v36, v37, MEMORY[0x277CC9628]);
  v38 = sub_2437ABE1C();
  MEMORY[0x245D3EE60](v38);

  (*(v56 + 8))(v15, v10);
  sub_2437AB50C();

  result = OUTLINED_FUNCTION_84(v22);
  if (!v35)
  {
    (*(v28 + 32))(v32, v22, v26);
    OUTLINED_FUNCTION_84(v25);
    if (!v35)
    {
      sub_243794788(v25, &unk_27ED85650, &qword_2437ACD80);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void AssetStreamHandle.makeAVAssetExportSession(with:options:presetName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60[1] = a2;
  v68 = a3;
  v69 = a4;
  OUTLINED_FUNCTION_37();
  sub_2437ABCCC();
  OUTLINED_FUNCTION_1();
  v66 = v5;
  v67 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v65 = v6;
  OUTLINED_FUNCTION_13();
  v63 = sub_2437ABCBC();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v64 = v8;
  OUTLINED_FUNCTION_13();
  v9 = sub_2437AB9FC();
  v10 = OUTLINED_FUNCTION_17(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v62 = v11;
  OUTLINED_FUNCTION_13();
  v12 = sub_2437AB5BC();
  OUTLINED_FUNCTION_1();
  v60[0] = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v17 = v16 - v15;
  v18 = OUTLINED_FUNCTION_54();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  v21 = OUTLINED_FUNCTION_17(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v60 - v26;
  v28 = sub_2437AB52C();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  v34 = v33 - v32;
  v35 = OUTLINED_FUNCTION_28();
  sub_2437945D8(v35, v36, &unk_27ED85650, &qword_2437ACD80);
  OUTLINED_FUNCTION_83(v27);
  if (!v37)
  {
    v41 = OUTLINED_FUNCTION_25();
    v42(v41);
LABEL_6:
    v43 = objc_allocWithZone(MEMORY[0x277CE6650]);

    v44 = OUTLINED_FUNCTION_25();
    v46 = sub_2437924DC(v44, v45);
    type metadata accessor for LoadingRequestHandler(0);
    v47 = OUTLINED_FUNCTION_37();
    v48 = type metadata accessor for AssetStreamHandle(v47);
    v70[3] = v48;
    v70[4] = &protocol witness table for AssetStreamHandle;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
    v50 = v61;
    sub_2437928EC(v61, boxed_opaque_existential_1);
    OUTLINED_FUNCTION_81();
    v51 = sub_243794F7C(v70, v48, v50);
    v52 = [v46 resourceLoader];
    sub_243794634(0, &qword_27ED854B0, 0x277D85C78);
    v53 = v51;
    sub_2437AB9EC();
    v70[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21();
    sub_243794674(v54, v55, MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED854C0, &qword_2437AC800);
    sub_243792950();
    sub_2437ABD3C();
    (*(v66 + 104))(v65, *MEMORY[0x277D85260], v67);
    OUTLINED_FUNCTION_41();
    v56 = sub_2437ABCDC();
    OUTLINED_FUNCTION_68();
    [v57 v58];

    type metadata accessor for AssetExportSession();
    v59 = v69;

    AssetExportSession.__allocating_init(avAsset:presetName:delegate:)(v46, v68, v59, v53);
    return;
  }

  OUTLINED_FUNCTION_36();
  sub_2437AB5AC();
  OUTLINED_FUNCTION_0();
  sub_243794674(v38, v39, MEMORY[0x277CC9628]);
  v40 = sub_2437ABE1C();
  MEMORY[0x245D3EE60](v40);

  (*(v60[0] + 8))(v17, v12);
  sub_2437AB50C();

  OUTLINED_FUNCTION_83(v24);
  if (!v37)
  {
    (*(v30 + 32))(v34, v24, v28);
    OUTLINED_FUNCTION_83(v27);
    if (!v37)
    {
      sub_243794788(v27, &unk_27ED85650, &qword_2437ACD80);
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t AssetStreamHandle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED854D0, &qword_2437AC808);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v17[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2437929F8(v9, v10, v11);
  sub_2437ABEEC();
  v17[15] = 0;
  sub_2437AB91C();
  OUTLINED_FUNCTION_20();
  sub_243794674(v12, v13, MEMORY[0x277CFA940]);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_67();
  sub_2437ABE0C();
  if (!v1)
  {
    type metadata accessor for AssetStreamHandle(0);
    v17[14] = 1;
    sub_2437AB6DC();
    OUTLINED_FUNCTION_19();
    sub_243794674(v14, v15, MEMORY[0x277CFA7E0]);
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_67();
    sub_2437ABE0C();
    v17[13] = 2;
    OUTLINED_FUNCTION_67();
    sub_2437ABDFC();
    v17[12] = 3;
    OUTLINED_FUNCTION_67();
    sub_2437ABDFC();
  }

  return (*(v5 + 8))(v8, v3);
}

void AssetStreamHandle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52();
  v82 = v24;
  v26 = v25;
  v73 = v27;
  v77 = sub_2437AB6DC();
  OUTLINED_FUNCTION_1();
  v74 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v76 = v30;
  OUTLINED_FUNCTION_13();
  v31 = sub_2437AB91C();
  OUTLINED_FUNCTION_1();
  v75 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v78 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED854F0, &qword_2437AC810);
  OUTLINED_FUNCTION_1();
  v79 = v36;
  v80 = v35;
  MEMORY[0x28223BE20](v35);
  v38 = &v71 - v37;
  v39 = type metadata accessor for AssetStreamHandle(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_4();
  v43 = v42 - v41;
  v45 = *(v44 + 32);
  type metadata accessor for AssetStreamHandle.RangeReadersCache();
  OUTLINED_FUNCTION_66();
  v46 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85490, &unk_2437AC7F0);
  v47 = OUTLINED_FUNCTION_37();
  type metadata accessor for AssetStreamHandle.RangeReader(v47);
  sub_243792644();
  *(v46 + 112) = sub_2437ABA4C();
  *(v43 + v45) = v46;
  v48 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2437929F8(v48, v49, v50);
  v81 = v38;
  v51 = v82;
  sub_2437ABEDC();
  if (v51)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    v72 = v39;
    v82 = v43;
    v52 = v26;
    v54 = v76;
    v53 = v77;
    OUTLINED_FUNCTION_20();
    sub_243794674(v55, v56, MEMORY[0x277CFA948]);
    v57 = v78;
    sub_2437ABDEC();
    v58 = *(v75 + 32);
    v78 = v31;
    v58(v82, v57, v31);
    OUTLINED_FUNCTION_19();
    sub_243794674(v59, v60, MEMORY[0x277CFA7E8]);
    v61 = v54;
    sub_2437ABDEC();
    v62 = v72;
    v63 = v82;
    (*(v74 + 32))(v82 + *(v72 + 20), v61, v53);
    v64 = sub_2437ABDDC();
    v65 = (v63 + *(v62 + 24));
    *v65 = v64;
    v65[1] = v66;
    v67 = sub_2437ABDDC();
    v69 = v68;
    (*(v79 + 8))(v81, v80);
    v70 = (v63 + *(v62 + 28));
    *v70 = v67;
    v70[1] = v69;
    sub_2437928EC(v63, v73);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    sub_243792A4C(v63);
  }

  OUTLINED_FUNCTION_56();
}

uint64_t sub_24378CB68()
{
  v0 = sub_2437AB9DC();
  __swift_allocate_value_buffer(v0, qword_27ED85F00);
  v1 = OUTLINED_FUNCTION_42();
  __swift_project_value_buffer(v1, v2);
  sub_2437AB73C();
  type metadata accessor for AssetStreamHandle.RangeReader(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85540, &qword_2437ACC48);
  sub_2437ABABC();
  OUTLINED_FUNCTION_33();
  return sub_2437AB9CC();
}

void sub_24378CC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_52();
  v19[1] = *MEMORY[0x277D85DE8];
  sub_2437AB52C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63();
  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  v19[0] = 0;
  v7 = [v6 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v19];

  v8 = v19[0];
  if (v7)
  {
    sub_2437AB4EC();
    v9 = v8;

    v10 = [v5 defaultManager];
    v11 = sub_2437AB4DC();
    v19[0] = 0;
    v12 = [v10 URLForDirectory:99 inDomain:1 appropriateForURL:v11 create:1 error:v19];

    v13 = v19[0];
    if (v12)
    {
      sub_2437AB4EC();
      v14 = v13;
    }

    else
    {
      v16 = v19[0];
      sub_2437AB4BC();

      swift_willThrow();
    }

    v17 = OUTLINED_FUNCTION_34();
    v18(v17);
  }

  else
  {
    v15 = v19[0];
    OUTLINED_FUNCTION_57();
    sub_2437AB4BC();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_56();
}

void sub_24378CE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_52();
  v93 = v4;
  v6 = v3;
  v88 = v7;
  v89 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_2437AB4CC();
  OUTLINED_FUNCTION_1();
  v86 = v18;
  v87 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v85 = v19;
  OUTLINED_FUNCTION_13();
  sub_2437AB8BC();
  OUTLINED_FUNCTION_1();
  v78 = v21;
  v79 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_49();
  sub_2437AB52C();
  OUTLINED_FUNCTION_1();
  v83 = v23;
  v84 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  v26 = (v24 - v25);
  MEMORY[0x28223BE20](v27);
  v82 = &v77 - v28;
  swift_defaultActor_initialize();
  v29 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset;
  sub_2437AB91C();
  OUTLINED_FUNCTION_44();
  v90 = v30;
  v31 = *(v30 + 16);
  v95 = v16;
  v92 = v32;
  v31(v3 + v29, v16);
  v33 = (v3 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range);
  v80 = v14;
  v81 = v12;
  *v33 = v14;
  v33[1] = v12;
  v34 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_credential;
  sub_2437AB6DC();
  OUTLINED_FUNCTION_44();
  v36 = v35;
  v37 = *(v35 + 16);
  v94 = v10;
  v91 = v38;
  v39 = v37(v3 + v34, v10);
  v40 = (v3 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_applicationID);
  v41 = v89;
  *v40 = v88;
  v40[1] = v41;
  v89 = v26;
  v42 = v93;
  sub_24378CC08(v39, v43, v44);
  v93 = v42;
  if (v42)
  {
    v45 = *(v90 + 8);
    v46 = v92;
    v45(v6 + v29, v92);
    v47 = *(v36 + 8);
    v48 = v91;
    v47(v6 + v34, v91);

    type metadata accessor for AssetStreamHandle.RangeReader(0);
    swift_defaultActor_destroy();
    v47(v94, v48);
    v45(v95, v46);
    OUTLINED_FUNCTION_42();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2437AB8DC();
    sub_2437AB8AC();
    v49 = v79;
    v88 = *(v78 + 8);
    v88(v5, v79);
    v50 = OUTLINED_FUNCTION_34();
    v52 = sub_2437AA35C(v50, v51);
    v54 = v53;
    v55 = OUTLINED_FUNCTION_34();
    sub_2437927B8(v55, v56);
    v96 = v52;
    v97 = v54;
    MEMORY[0x245D3EE60](95, 0xE100000000000000);
    sub_2437AB8DC();
    sub_2437AB89C();
    v88(v5, v49);
    v57 = OUTLINED_FUNCTION_34();
    v59 = sub_2437AA35C(v57, v58);
    v61 = v60;
    v62 = OUTLINED_FUNCTION_34();
    sub_2437927B8(v62, v63);
    MEMORY[0x245D3EE60](v59, v61);

    MEMORY[0x245D3EE60](95, 0xE100000000000000);
    OUTLINED_FUNCTION_64();
    v64 = sub_2437ABE1C();
    MEMORY[0x245D3EE60](v64);

    MEMORY[0x245D3EE60](95, 0xE100000000000000);
    OUTLINED_FUNCTION_64();
    v65 = sub_2437ABE1C();
    MEMORY[0x245D3EE60](v65);

    v67 = v85;
    v66 = v86;
    v68 = v87;
    v69 = (*(v86 + 104))(v85, *MEMORY[0x277CC91D8], v87);
    sub_2437947E0(v69, v70, v71);
    v72 = v82;
    sub_2437AB51C();
    (*(v36 + 8))(v94, v91);
    (*(v90 + 8))(v95, v92);
    (*(v66 + 8))(v67, v68);

    v74 = v83;
    v73 = v84;
    v75 = OUTLINED_FUNCTION_34();
    v76(v75);
    (*(v74 + 32))(v6 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cachedDataURL, v72, v73);
    *(v6 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cacheState) = 0;
  }

  OUTLINED_FUNCTION_56();
}

void sub_24378D39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_52();
  v5 = v4;
  v44[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2437AB91C();
  OUTLINED_FUNCTION_1();
  v43 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = sub_2437AB52C();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63();
  sub_243794634(0, &qword_27ED85548, 0x277CCA9F8);
  (*(v14 + 16))(v3, v3 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cachedDataURL, v12);
  v16 = sub_24378D810(v3);
  if (!v4)
  {
    v42 = v6;
    v17 = v3 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range;
    v18 = *(v3 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range);
    if (v18 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = v16;
      v44[0] = 0;
      if (![v16 seekToOffset:v18 error:v44])
      {
        v36 = v44[0];
        sub_2437AB4BC();

LABEL_10:
        swift_willThrow();
LABEL_11:

        goto LABEL_12;
      }

      v41 = *(v17 + 8);
      if (!__OFSUB__(v41, v18))
      {
        v19 = v44[0];
        sub_2437ABC7C();
        if (v20 >> 60 != 15)
        {
          goto LABEL_11;
        }

        if (qword_27ED85EB0 == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    OUTLINED_FUNCTION_2();
    swift_once();
LABEL_7:
    v21 = sub_2437AB9DC();
    __swift_project_value_buffer(v21, qword_27ED85F00);
    v22 = v3;

    v23 = sub_2437AB9BC();
    v24 = sub_2437ABC9C();

    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_18();
      v25 = swift_slowAlloc();
      OUTLINED_FUNCTION_31();
      v44[0] = swift_slowAlloc();
      *v25 = 136315650;
      sub_243794674(&qword_27ED85550, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v26 = sub_2437ABE1C();
      v28 = sub_243793C54(v26, v27, v44);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = sub_243794304(v18, v41);
      v31 = sub_243793C54(v29, v30, v44);

      *(v25 + 14) = v31;
      *(v25 + 22) = 2080;
      (*(v43 + 16))(v11, v22 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset, v42);
      v32 = sub_2437ABABC();
      v34 = sub_243793C54(v32, v33, v44);

      *(v25 + 24) = v34;
      _os_log_impl(&dword_243789000, v23, v24, "read from %s for range %s of asset %s failed", v25, 0x20u);
      OUTLINED_FUNCTION_35();
      swift_arrayDestroy();
      v35 = OUTLINED_FUNCTION_6();
      MEMORY[0x245D3F7D0](v35);
      OUTLINED_FUNCTION_9();
      MEMORY[0x245D3F7D0]();
    }

    sub_243792810(v37, v38, v39);
    OUTLINED_FUNCTION_69();
    swift_allocError();
    *v40 = 0xD000000000000027;
    *(v40 + 8) = 0x80000002437AD700;
    *(v40 + 16) = 2;
    goto LABEL_10;
  }

LABEL_12:
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_56();
}

id sub_24378D810(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2437AB4DC();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_2437AB52C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_2437AB4BC();

    swift_willThrow();
    v9 = sub_2437AB52C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_24378D968()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  v3 = OUTLINED_FUNCTION_17(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  v6 = sub_2437ABBAC();
  OUTLINED_FUNCTION_78(v6);
  v7 = sub_2437944AC();
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = v7;
  v8[4] = v0;
  v8[5] = v1;
  swift_retain_n();
  return sub_24378EC54(0, 0, v5, &unk_2437ACC58, v8);
}

uint64_t sub_24378DA70()
{
  OUTLINED_FUNCTION_30();
  v2 = v1;
  v0[3] = v3;
  v0[4] = v1;
  v4 = sub_2437AB81C();
  v0[5] = v4;
  OUTLINED_FUNCTION_5(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_43();
  v6 = sub_2437AB5BC();
  v0[8] = v6;
  OUTLINED_FUNCTION_5(v6);
  v0[9] = v7;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v8 = sub_2437AB6DC();
  v0[15] = v8;
  OUTLINED_FUNCTION_5(v8);
  v0[16] = v9;
  v0[17] = OUTLINED_FUNCTION_43();
  v10 = sub_2437AB52C();
  v0[18] = v10;
  OUTLINED_FUNCTION_5(v10);
  v0[19] = v11;
  v0[20] = OUTLINED_FUNCTION_43();
  v12 = sub_2437AB91C();
  v0[21] = v12;
  OUTLINED_FUNCTION_5(v12);
  v0[22] = v13;
  v0[23] = OUTLINED_FUNCTION_43();
  v14 = sub_2437AB7BC();
  v0[24] = v14;
  OUTLINED_FUNCTION_5(v14);
  v0[25] = v15;
  v0[26] = OUTLINED_FUNCTION_43();

  return MEMORY[0x2822009F8](sub_24378DD08, v2, 0);
}

uint64_t sub_24378DD08()
{
  v47 = v0;
  v46[1] = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  v10 = v0[4];
  v11 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset;
  v0[27] = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset;
  v12 = *(v1 + 16);
  v0[28] = v12;
  v0[29] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44 = v12;
  (v12)(v2, v10 + v11, v3);
  v13 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cachedDataURL;
  v0[30] = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cachedDataURL;
  (*(v6 + 16))(v4, v10 + v13, v5);
  (*(v8 + 16))(v7, v10 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_credential, v9);
  v14 = v10 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range;
  v15 = *(v10 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range);
  v0[31] = v15;
  v16 = *(v14 + 8);
  v0[32] = v16;

  OUTLINED_FUNCTION_54();
  sub_2437AB79C();
  sub_2437AB78C();
  if (qword_27ED85EB0 != -1)
  {
    OUTLINED_FUNCTION_2();
    swift_once();
  }

  v17 = v0[9];
  v18 = sub_2437AB9DC();
  v0[33] = __swift_project_value_buffer(v18, qword_27ED85F00);
  v0[34] = *(v17 + 16);
  v0[35] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19 = OUTLINED_FUNCTION_42();
  v20(v19);

  v21 = sub_2437AB9BC();
  v22 = sub_2437ABC8C();

  if (os_log_type_enabled(v21, v22))
  {
    v45 = v22;
    v23 = v0[13];
    v25 = v0[8];
    v24 = v0[9];
    OUTLINED_FUNCTION_18();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_31();
    v46[0] = swift_slowAlloc();
    *v26 = 136315650;
    OUTLINED_FUNCTION_0();
    sub_243794674(v27, v28, MEMORY[0x277CC9628]);
    v29 = sub_2437ABE1C();
    v31 = v30;
    log = v21;
    v32 = *(v24 + 8);
    v32(v23, v25);
    sub_243793C54(v29, v31, v46);
    OUTLINED_FUNCTION_57();

    *(v26 + 4) = v23;
    *(v26 + 12) = 2080;
    v33 = sub_243794304(v15, v16);
    sub_243793C54(v33, v34, v46);
    OUTLINED_FUNCTION_65();

    *(v26 + 14) = v15;
    *(v26 + 22) = 2080;
    v35 = OUTLINED_FUNCTION_53();
    v44(v35);
    OUTLINED_FUNCTION_28();
    v36 = sub_2437ABABC();
    sub_243793C54(v36, v37, v46);
    OUTLINED_FUNCTION_65();

    *(v26 + 24) = v15;
    _os_log_impl(&dword_243789000, log, v45, "[requestID = %s] start downloading range %s of asset %s", v26, 0x20u);
    OUTLINED_FUNCTION_35();
    swift_arrayDestroy();
    v38 = OUTLINED_FUNCTION_6();
    MEMORY[0x245D3F7D0](v38);
    OUTLINED_FUNCTION_9();
    MEMORY[0x245D3F7D0]();
  }

  else
  {
    v39 = v0[9];

    v32 = *(v39 + 8);
    v40 = OUTLINED_FUNCTION_33();
    (v32)(v40);
  }

  v0[36] = v32;
  if (qword_27ED85EA0 != -1)
  {
    swift_once();
  }

  v41 = swift_task_alloc();
  v0[37] = v41;
  *v41 = v0;
  v41[1] = sub_24378E170;

  return AssetManager.process(request:)();
}

uint64_t sub_24378E170()
{
  OUTLINED_FUNCTION_30();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 304) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_24378EB14;
  }

  else
  {
    v6 = sub_24378E2BC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_24378E2BC()
{
  v162[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 304);
  v4 = *(v1 + 32) + *(v1 + 240);
  sub_2437AA6F4();
  if (v3)
  {
    (*(*(v1 + 48) + 8))(*(v1 + 56), *(v1 + 40));
  }

  else
  {
    v5 = sub_2437AB7FC();
    if (v7)
    {
      (*(v1 + 272))(*(v1 + 96), *(v1 + 112), *(v1 + 64));
      v8 = sub_2437AB9BC();
      v9 = sub_2437ABC9C();
      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v1 + 288);
      v12 = *(v1 + 96);
      if (v10)
      {
        v156 = *(v1 + 288);
        v13 = swift_slowAlloc();
        OUTLINED_FUNCTION_18();
        v14 = swift_slowAlloc();
        v162[0] = v14;
        *v13 = 136315138;
        OUTLINED_FUNCTION_0();
        sub_243794674(v15, v16, MEMORY[0x277CC9628]);
        sub_2437ABE1C();
        OUTLINED_FUNCTION_51();
        v17 = OUTLINED_FUNCTION_24();
        v18 = v156(v17);
        OUTLINED_FUNCTION_38(v18, v19, v20, v21, v22, v23, v24, v25, v128, v130, log, v138, v141, v144, v147, v150, v153, v156, v160);
        OUTLINED_FUNCTION_62();
        *(v13 + 4) = v12;
        OUTLINED_FUNCTION_77(&dword_243789000, v26, v27, "[requestID = %s] missing range information in download response");
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
      }

      else
      {

        v56 = OUTLINED_FUNCTION_24();
        v11(v56);
      }

      v57 = objc_opt_self();
      v58 = [v57 defaultManager];
      sub_2437AB4FC();
      v59 = sub_2437ABA8C();

      v60 = [v58 fileExistsAtPath_];

      if (v60)
      {
        v64 = [v57 defaultManager];
        v65 = sub_2437AB4DC();
        *(v1 + 16) = 0;
        v66 = [v64 removeItemAtURL:v65 error:v1 + 16];

        v67 = *(v1 + 16);
        if (v66)
        {
          v61 = v67;
        }

        else
        {
          v112 = v67;
          v113 = sub_2437AB4BC();

          swift_willThrow();
        }
      }

      v106 = *(v1 + 48);
      v0 = *(v1 + 56);
      v107 = *(v1 + 40);
      v108 = 0x80000002437AD6A0;
      sub_243792810(v61, v62, v63);
      OUTLINED_FUNCTION_69();
      v109 = swift_allocError();
      v111 = 0xD00000000000002ELL;
    }

    else
    {
      v28 = v6;
      v29 = *(v1 + 272);
      v30 = *(v1 + 112);
      v31 = *(v1 + 64);
      if (*(v1 + 248) >= v5 && v28 >= *(v1 + 256))
      {
        v29(*(v1 + 88), v30, v31);

        v68 = sub_2437AB9BC();
        v69 = sub_2437ABCAC();

        v70 = os_log_type_enabled(v68, v69);
        v71 = *(v1 + 288);
        if (v70)
        {
          v151 = *(v1 + 224);
          v154 = *(v1 + 232);
          v145 = *(v1 + 184);
          v148 = *(v1 + 216);
          v72 = *(v1 + 88);
          v73 = *(v1 + 64);
          v131 = *(v1 + 72);
          v139 = *(v1 + 32);
          v142 = *(v1 + 168);
          OUTLINED_FUNCTION_18();
          v74 = swift_slowAlloc();
          OUTLINED_FUNCTION_31();
          v158 = swift_slowAlloc();
          v162[0] = v158;
          *v74 = 136315650;
          OUTLINED_FUNCTION_0();
          sub_243794674(v75, v76, MEMORY[0x277CC9628]);
          v77 = sub_2437ABE1C();
          loga = v68;
          v79 = v78;
          v71(v72, v73);
          sub_243793C54(v77, v79, v162);
          OUTLINED_FUNCTION_57();

          *(v74 + 4) = v72;
          *(v74 + 12) = 2080;
          v80 = OUTLINED_FUNCTION_54();
          v82 = sub_243794304(v80, v81);
          v90 = OUTLINED_FUNCTION_48(v82, v83, v84, v85, v86, v87, v88, v89, v128, v131, loga, v139, v142, v145, v148, v151, v154, v158, v160);

          *(v74 + 14) = v90;
          *(v74 + 22) = 2080;
          v91 = OUTLINED_FUNCTION_53();
          v152(v91);
          OUTLINED_FUNCTION_28();
          v92 = sub_2437ABABC();
          v100 = OUTLINED_FUNCTION_48(v92, v93, v94, v95, v96, v97, v98, v99, v129, v132, logb, v140, v143, v146, v149, v152, v155, v159, v161);

          *(v74 + 24) = v100;
          _os_log_impl(&dword_243789000, logc, v69, "[requestID = %s] downloaded range %s of asset %s", v74, 0x20u);
          OUTLINED_FUNCTION_35();
          swift_arrayDestroy();
          v101 = OUTLINED_FUNCTION_6();
          MEMORY[0x245D3F7D0](v101);
          OUTLINED_FUNCTION_9();
          MEMORY[0x245D3F7D0]();
        }

        else
        {

          v118 = OUTLINED_FUNCTION_33();
          v102 = (v71)(v118);
        }

        sub_24378D39C(v102, v103, v104);
        v120 = v119;
        v122 = v121;
        v123 = *(v1 + 288);
        v125 = *(v1 + 200);
        v124 = *(v1 + 208);
        v133 = *(v1 + 192);
        v126 = *(v1 + 24);
        (*(*(v1 + 48) + 8))();
        v127 = OUTLINED_FUNCTION_25();
        v123(v127);
        (*(v125 + 8))(v124, v133);
        *v126 = v120;
        v126[1] = v122;

        OUTLINED_FUNCTION_14();
        goto LABEL_25;
      }

      v29(*(v1 + 80), v30, v31);
      v33 = sub_2437AB9BC();
      v34 = sub_2437ABC9C();
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v1 + 288);
      v37 = *(v1 + 80);
      if (v35)
      {
        v157 = *(v1 + 288);
        v38 = swift_slowAlloc();
        OUTLINED_FUNCTION_18();
        v39 = swift_slowAlloc();
        v162[0] = v39;
        *v38 = 136315138;
        OUTLINED_FUNCTION_0();
        sub_243794674(v40, v41, MEMORY[0x277CC9628]);
        sub_2437ABE1C();
        OUTLINED_FUNCTION_51();
        v42 = OUTLINED_FUNCTION_24();
        v43 = v157(v42);
        OUTLINED_FUNCTION_38(v43, v44, v45, v46, v47, v48, v49, v50, v128, v130, log, v138, v141, v144, v147, v150, v153, v157, v160);
        OUTLINED_FUNCTION_62();
        *(v38 + 4) = v37;
        OUTLINED_FUNCTION_77(&dword_243789000, v51, v52, "[requestID = %s] downloaded range is smaller than needed range");
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
      }

      else
      {

        v105 = OUTLINED_FUNCTION_24();
        v53 = v36(v105);
      }

      v106 = *(v1 + 48);
      v0 = *(v1 + 56);
      v107 = *(v1 + 40);
      v108 = 0x80000002437AD6D0;
      sub_243792810(v53, v54, v55);
      OUTLINED_FUNCTION_69();
      v109 = swift_allocError();
      v111 = 0xD00000000000002DLL;
    }

    *v110 = v111;
    *(v110 + 8) = v108;
    *(v110 + 16) = 2;
    v3 = v109;
    swift_willThrow();
    v114 = *(v106 + 8);
    v4 = v106 + 8;
    v114(v0, v107);
  }

  OUTLINED_FUNCTION_46();
  v115(v2, *(v1 + 64));
  (*(v4 + 8))(v0, v3);

  OUTLINED_FUNCTION_14();
LABEL_25:
  OUTLINED_FUNCTION_75();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_24378EB14(uint64_t a1)
{
  OUTLINED_FUNCTION_46();
  v6(v5, *(v4 + 64));
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_14();

  return v7();
}

uint64_t sub_24378EC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2437945D8(a3, v21 - v9, &qword_27ED85508, &qword_2437AC820);
  v11 = sub_2437ABBAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_243794788(v10, &qword_27ED85508, &qword_2437AC820);
  }

  else
  {
    sub_2437ABB9C();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_2437ABB3C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_2437ABACC() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_243794788(a3, &qword_27ED85508, &qword_2437AC820);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_243794788(a3, &qword_27ED85508, &qword_2437AC820);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_24378EEDC()
{
  OUTLINED_FUNCTION_15();
  v1[6] = v2;
  v1[7] = v0;
  v3 = sub_2437AB91C();
  v1[8] = v3;
  OUTLINED_FUNCTION_5(v3);
  v1[9] = v4;
  v1[10] = OUTLINED_FUNCTION_43();
  v5 = sub_2437AB5BC();
  v1[11] = v5;
  OUTLINED_FUNCTION_5(v5);
  v1[12] = v6;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24378F00C, v0, 0);
}

uint64_t sub_24378F00C()
{
  v250 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cacheState;
  v3 = *(v1 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cacheState);
  v0[18] = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v234 = v2;
      if (qword_27ED85EB0 != -1)
      {
        OUTLINED_FUNCTION_2();
        swift_once();
      }

      v4 = v0[12];
      v5 = sub_2437AB9DC();
      __swift_project_value_buffer(v5, qword_27ED85F00);
      v6 = *(v4 + 16);
      v7 = OUTLINED_FUNCTION_70();
      v6(v7);

      v8 = sub_2437AB9BC();
      v9 = sub_2437ABCAC();

      v242 = v1;
      v225 = v6;
      if (os_log_type_enabled(v8, v9))
      {
        v182 = v0[9];
        v191 = v0[8];
        v199 = v0[10];
        v164 = v0[7];
        OUTLINED_FUNCTION_18();
        v10 = swift_slowAlloc();
        OUTLINED_FUNCTION_31();
        v209 = swift_slowAlloc();
        v249 = v209;
        *v10 = 136315650;
        OUTLINED_FUNCTION_0();
        sub_243794674(v11, v12, MEMORY[0x277CC9628]);
        v13 = sub_2437ABE1C();
        HIDWORD(v172) = v9;
        v15 = v14;
        v16 = OUTLINED_FUNCTION_40();
        v217 = v17;
        v17(v16);
        v18 = sub_243793C54(v13, v15, &v249);

        *(v10 + 4) = v18;
        *(v10 + 12) = 2080;
        v19 = sub_243794304(*(v164 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range), *(v164 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range + 8));
        v27 = OUTLINED_FUNCTION_48(v19, v20, v21, v22, v23, v24, v25, v26, v155, v164, v172, v182, v191, v199, v209, v217, v225, v234, v242);

        *(v10 + 14) = v27;
        *(v10 + 22) = 2080;
        v28 = OUTLINED_FUNCTION_53();
        v29(v28);
        OUTLINED_FUNCTION_28();
        v30 = sub_2437ABABC();
        v38 = OUTLINED_FUNCTION_48(v30, v31, v32, v33, v34, v35, v36, v37, v156, v165, v173, v183, v192, v200, v210, v218, v226, v235, v243);

        *(v10 + 24) = v38;
        _os_log_impl(&dword_243789000, v8, v180, "[requestID = %s] range %s of asset %s available in cache", v10, 0x20u);
        OUTLINED_FUNCTION_35();
        swift_arrayDestroy();
        v39 = OUTLINED_FUNCTION_6();
        MEMORY[0x245D3F7D0](v39);
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
      }

      else
      {

        v141 = OUTLINED_FUNCTION_40();
        v40 = v142(v141);
      }

      sub_24378D39C(v40, v41, v42);

      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_75();

      __asm { BRAA            X3, X16 }
    }

    v92 = qword_27ED85EB0;

    if (v92 != -1)
    {
      OUTLINED_FUNCTION_2();
      swift_once();
    }

    v93 = v0[12];
    v94 = sub_2437AB9DC();
    v0[19] = __swift_project_value_buffer(v94, qword_27ED85F00);
    v0[20] = *(v93 + 16);
    v0[21] = (v93 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v95 = OUTLINED_FUNCTION_70();
    v96(v95);

    v97 = sub_2437AB9BC();
    v98 = sub_2437ABCAC();

    v99 = os_log_type_enabled(v97, v98);
    v100 = v0[16];
    v102 = v0[11];
    v101 = v0[12];
    if (v99)
    {
      v222 = v0[8];
      v230 = v0[10];
      v205 = v0[7];
      v214 = v0[9];
      OUTLINED_FUNCTION_18();
      LODWORD(v233) = v98;
      v103 = swift_slowAlloc();
      OUTLINED_FUNCTION_31();
      v246 = swift_slowAlloc();
      v249 = v246;
      *v103 = 136315650;
      OUTLINED_FUNCTION_0();
      sub_243794674(v104, v105, MEMORY[0x277CC9628]);
      sub_2437ABE1C();
      OUTLINED_FUNCTION_51();
      v106 = *(v101 + 8);
      v107 = OUTLINED_FUNCTION_32();
      v108 = v106(v107);
      OUTLINED_FUNCTION_38(v108, v109, v110, v111, v112, v113, v114, v115, v155, v163, v172, v181, v190, v205, v214, v222, v230, v233, v246);
      v116 = OUTLINED_FUNCTION_62();
      *(v103 + 4) = v100;
      *(v103 + 12) = 2080;
      v124 = OUTLINED_FUNCTION_80(v116, v117, v118, v119, v120, v121, v122, v123, v160, v169, v177, v187, v196, v206);
      OUTLINED_FUNCTION_48(v124, v125, v126, v127, v128, v129, v130, v131, v161, v170, v178, v188, v197, v207, v215, v223, v231, v239, v247);
      OUTLINED_FUNCTION_59();
      *(v103 + 14) = v2;
      *(v103 + 22) = 2080;
      (*(v216 + 16))(v232, v102 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset, v224);
      OUTLINED_FUNCTION_70();
      v132 = sub_2437ABABC();
      OUTLINED_FUNCTION_48(v132, v133, v134, v135, v136, v137, v138, v139, v162, v171, v179, v189, v198, v208, v216, v224, v232, v240, v248);
      OUTLINED_FUNCTION_59();
      *(v103 + 24) = v2;
      _os_log_impl(&dword_243789000, v97, v241, "[requestID = %s] downloading range %s of asset %s", v103, 0x20u);
      OUTLINED_FUNCTION_35();
      swift_arrayDestroy();
      v140 = OUTLINED_FUNCTION_6();
      MEMORY[0x245D3F7D0](v140);
      OUTLINED_FUNCTION_9();
      MEMORY[0x245D3F7D0]();
    }

    else
    {

      v106 = *(v101 + 8);
      v145 = OUTLINED_FUNCTION_32();
      v106(v145);
    }

    v0[22] = v106;
    v146 = swift_task_alloc();
    v0[23] = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85538, qword_2437AD390);
    *v146 = v0;
    v146[1] = sub_24378FA70;
  }

  else
  {
    if (qword_27ED85EB0 != -1)
    {
      OUTLINED_FUNCTION_2();
      swift_once();
    }

    v43 = sub_2437AB9DC();
    __swift_project_value_buffer(v43, qword_27ED85F00);
    v44 = OUTLINED_FUNCTION_40();
    v45(v44);

    v46 = sub_2437AB9BC();
    v47 = sub_2437ABCAC();

    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[17];
    if (v48)
    {
      v211 = v0[8];
      v219 = v0[10];
      v201 = v0[7];
      OUTLINED_FUNCTION_18();
      v50 = swift_slowAlloc();
      OUTLINED_FUNCTION_31();
      v227 = swift_slowAlloc();
      v249 = v227;
      *v50 = 136315650;
      OUTLINED_FUNCTION_0();
      sub_243794674(v51, v52, MEMORY[0x277CC9628]);
      sub_2437ABE1C();
      OUTLINED_FUNCTION_51();
      v53 = OUTLINED_FUNCTION_32();
      v55 = v54(v53);
      OUTLINED_FUNCTION_38(v55, v56, v57, v58, v59, v60, v61, v62, v155, v163, v172, v181, v190, v201, v211, v219, v227, v2, v1);
      v63 = OUTLINED_FUNCTION_62();
      *(v50 + 4) = v49;
      *(v50 + 12) = 2080;
      v71 = OUTLINED_FUNCTION_80(v63, v64, v65, v66, v67, v68, v69, v70, v157, v166, v174, v184, v193, v202);
      OUTLINED_FUNCTION_48(v71, v72, v73, v74, v75, v76, v77, v78, v158, v167, v175, v185, v194, v203, v212, v220, v228, v236, v244);
      OUTLINED_FUNCTION_59();
      *(v50 + 14) = v2;
      *(v50 + 22) = 2080;
      v1 = v245;
      v79 = OUTLINED_FUNCTION_53();
      v80(v79);
      OUTLINED_FUNCTION_28();
      v81 = sub_2437ABABC();
      OUTLINED_FUNCTION_48(v81, v82, v83, v84, v85, v86, v87, v88, v159, v168, v176, v186, v195, v204, v213, v221, v229, v237, v245);
      OUTLINED_FUNCTION_59();
      *(v50 + 24) = v2;
      v2 = v238;
      OUTLINED_FUNCTION_79(&dword_243789000, v89, v90, "[requestID = %s] ready to download range %s of asset (%s");
      OUTLINED_FUNCTION_35();
      swift_arrayDestroy();
      v91 = OUTLINED_FUNCTION_6();
      MEMORY[0x245D3F7D0](v91);
      OUTLINED_FUNCTION_9();
      MEMORY[0x245D3F7D0]();
    }

    else
    {

      v143 = OUTLINED_FUNCTION_32();
      v144(v143);
    }

    v149 = sub_24378D968();
    v0[25] = v149;
    v150 = *(v1 + v2);
    *(v1 + v2) = v149;

    sub_2437942F4(v150);
    v151 = swift_task_alloc();
    v0[26] = v151;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85538, qword_2437AD390);
    *v151 = v0;
    v151[1] = sub_24378FE78;
  }

  OUTLINED_FUNCTION_75();

  return MEMORY[0x282200430](v152);
}

uint64_t sub_24378FA70()
{
  OUTLINED_FUNCTION_30();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_24379004C;
  }

  else
  {
    v6 = sub_24378FB90;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24378FB90()
{
  v36 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 160))(*(v0 + 120), *(v0 + 48), *(v0 + 88));

  v3 = sub_2437AB9BC();
  v4 = sub_2437ABCAC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 176);
  v7 = *(v0 + 88);
  if (v5)
  {
    v8 = *(v0 + 72);
    v31 = *(v0 + 64);
    v32 = *(v0 + 80);
    v28 = *(v0 + 56);
    OUTLINED_FUNCTION_18();
    v33 = v9;
    v34 = v1;
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_31();
    v35 = swift_slowAlloc();
    *v10 = 136315650;
    OUTLINED_FUNCTION_0();
    sub_243794674(v11, v12, MEMORY[0x277CC9628]);
    v29 = v4;
    v13 = sub_2437ABE1C();
    log = v3;
    v14 = v2;
    v16 = v15;
    v17 = OUTLINED_FUNCTION_33();
    v6(v17);
    v18 = sub_243793C54(v13, v16, &v35);
    v2 = v14;

    *(v10 + 4) = v18;
    *(v10 + 12) = 2080;
    v19 = sub_243794304(*(v28 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range), *(v28 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_range + 8));
    sub_243793C54(v19, v20, &v35);
    OUTLINED_FUNCTION_65();

    *(v10 + 14) = v7;
    *(v10 + 22) = 2080;
    (*(v8 + 16))(v32, v28 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset, v31);
    OUTLINED_FUNCTION_33();
    v21 = sub_2437ABABC();
    v23 = sub_243793C54(v21, v22, &v35);

    *(v10 + 24) = v23;
    _os_log_impl(&dword_243789000, log, v29, "[requestID = %s] downloaded range %s of asset %s", v10, 0x20u);
    OUTLINED_FUNCTION_35();
    swift_arrayDestroy();
    v24 = OUTLINED_FUNCTION_6();
    MEMORY[0x245D3F7D0](v24);
    v1 = v34;
    OUTLINED_FUNCTION_9();
    MEMORY[0x245D3F7D0]();
    sub_2437942F4(v33);
  }

  else
  {
    sub_2437942F4(*(v0 + 144));

    v25 = OUTLINED_FUNCTION_33();
    v6(v25);
  }

  OUTLINED_FUNCTION_73();

  return v26(v1, v2);
}

uint64_t sub_24378FE78()
{
  OUTLINED_FUNCTION_30();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 216) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_2437900E4;
  }

  else
  {
    v6 = sub_24378FF98;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_24378FF98()
{

  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_61();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_24379004C()
{
  OUTLINED_FUNCTION_71();
  sub_2437942F4(*(v0 + 144));
  OUTLINED_FUNCTION_76();

  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2437900E4()
{
  OUTLINED_FUNCTION_71();

  OUTLINED_FUNCTION_76();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_24379017C()
{
  v1 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2437AB52C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_63();
  v25 = objc_opt_self();
  v6 = [v25 defaultManager];
  v7 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cachedDataURL;
  v24 = *(v4 + 16);
  v24(v0, v0 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cachedDataURL, v2);
  sub_2437AB4FC();
  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_34();
  v8(v9);
  OUTLINED_FUNCTION_54();
  v10 = sub_2437ABA8C();

  v11 = [v6 fileExistsAtPath_];

  if (v11)
  {
    v12 = [v25 defaultManager];
    v13 = v7;
    v24(v0, v0 + v7, v2);
    v14 = sub_2437AB4DC();
    v15 = OUTLINED_FUNCTION_34();
    v8(v15);
    v26[0] = 0;
    v16 = [v12 removeItemAtURL:v14 error:v26];

    v17 = v26[0];
    if (!v16)
    {
      OUTLINED_FUNCTION_65();
      v18 = sub_2437AB4BC();

      swift_willThrow();
    }

    v7 = v13;
  }

  v19 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_asset;
  sub_2437AB91C();
  OUTLINED_FUNCTION_7();
  (*(v20 + 8))(v1 + v19);
  v21 = OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_credential;
  sub_2437AB6DC();
  OUTLINED_FUNCTION_7();
  (*(v22 + 8))(v1 + v21);

  (v8)(v1 + v7, v2);
  sub_2437942F4(*(v1 + OBJC_IVAR____TtCV11CloudAssets17AssetStreamHandleP33_8A8CF1A1AB92A9609CD6E8B040939DD611RangeReader_cacheState));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_243790468()
{
  sub_24379017C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2437904B8()
{
  swift_beginAccess();
  if (*(*(v0 + 112) + 16) && (v1 = OUTLINED_FUNCTION_25(), sub_2437941C4(v1, v2), (v3 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24379052C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t AssetStreamHandle.range.getter()
{
  result = _s11CloudAssets17AssetStreamHandleV4sizeSivg_0();
  if ((result & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t AssetStreamHandle.inputStream(for:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2437AB6DC();
  v1[6] = v5;
  OUTLINED_FUNCTION_5(v5);
  v1[7] = v6;
  v1[8] = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_43();
  v8 = sub_2437AB91C();
  v1[10] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[11] = v9;
  v1[12] = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_43();
  v11 = type metadata accessor for AssetStreamHandle(0);
  v1[14] = v11;
  OUTLINED_FUNCTION_5(v11);
  v1[15] = v12;
  v1[16] = *(v13 + 64);
  v1[17] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  OUTLINED_FUNCTION_17(v14);
  v1[18] = OUTLINED_FUNCTION_43();
  v15 = sub_2437AB5BC();
  v1[19] = v15;
  OUTLINED_FUNCTION_5(v15);
  v1[20] = v16;
  v1[21] = *(v17 + 64);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85510, &qword_2437AC828);
  v1[24] = v18;
  OUTLINED_FUNCTION_5(v18);
  v1[25] = v19;
  v1[26] = OUTLINED_FUNCTION_43();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
  v1[27] = v20;
  OUTLINED_FUNCTION_5(v20);
  v1[28] = v21;
  v1[29] = *(v22 + 64);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_243790848()
{
  v38 = v0[31];
  v41 = v0[30];
  v34 = v0[28];
  v1 = v0[26];
  v40 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v35 = v0[23];
  v45 = v0[22];
  v29 = v0[21];
  v33 = v0[20];
  v39 = v0[19];
  v28 = v0[18];
  v44 = v0[17];
  v4 = v0[14];
  v22 = v0[15];
  v23 = v0[16];
  v43 = v0[13];
  v25 = v0[12];
  v5 = v0[11];
  v36 = v0[10];
  v42 = v0[9];
  v24 = v0[8];
  v32 = v0[7];
  v37 = v0[6];
  v6 = v0[5];
  v31 = v0[4];
  v30 = v0[3];
  (*(v2 + 104))(v1, *MEMORY[0x277D858A0], v3);
  sub_2437ABBFC();
  (*(v2 + 8))(v1, v3);
  v7 = *(v4 + 20);
  v8 = (v6 + *(v4 + 28));
  v26 = v8[1];
  v27 = *v8;

  sub_2437AB5AC();
  v9 = sub_2437ABBAC();
  OUTLINED_FUNCTION_78(v9);
  sub_2437928EC(v6, v44);
  (*(v5 + 16))(v43, v6, v36);
  (*(v32 + 16))(v42, v6 + v7, v37);
  (*(v33 + 16))(v45, v35, v39);
  (*(v34 + 16))(v41, v38, v40);
  v10 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v11 = (v23 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v5 + 80) + v11 + 16) & ~*(v5 + 80);
  v13 = (v25 + *(v32 + 80) + v12) & ~*(v32 + 80);
  v14 = (v24 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v33 + 80) + v14 + 16) & ~*(v33 + 80);
  v16 = (v29 + *(v34 + 80) + v15) & ~*(v34 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_243792E2C(v44, v17 + v10);
  v18 = (v17 + v11);
  *v18 = v30;
  v18[1] = v31;
  (*(v5 + 32))(v17 + v12, v43, v36);
  (*(v32 + 32))(v17 + v13, v42, v37);
  v19 = (v17 + v14);
  *v19 = v27;
  v19[1] = v26;
  (*(v33 + 32))(v17 + v15, v45, v39);
  (*(v34 + 32))(v17 + v16, v41, v40);
  sub_243791EA0(0, 0, v28, &unk_2437AC840, v17);
  sub_2437ABC0C();
  (*(v33 + 8))(v35, v39);
  (*(v34 + 8))(v38, v40);

  OUTLINED_FUNCTION_14();

  return v20();
}

uint64_t sub_243790CA0()
{
  OUTLINED_FUNCTION_15();
  *(v0 + 152) = v18;
  *(v0 + 160) = v19;
  *(v0 + 136) = v17;
  *(v0 + 120) = v1;
  *(v0 + 128) = v2;
  *(v0 + 104) = v3;
  *(v0 + 112) = v4;
  *(v0 + 96) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85558, &qword_2437ACC78);
  *(v0 + 168) = v6;
  OUTLINED_FUNCTION_5(v6);
  *(v0 + 176) = v7;
  *(v0 + 184) = OUTLINED_FUNCTION_43();
  v8 = sub_2437AB6DC();
  *(v0 + 192) = v8;
  OUTLINED_FUNCTION_5(v8);
  *(v0 + 200) = v9;
  *(v0 + 208) = OUTLINED_FUNCTION_43();
  v10 = sub_2437AB91C();
  *(v0 + 216) = v10;
  OUTLINED_FUNCTION_5(v10);
  *(v0 + 224) = v11;
  *(v0 + 232) = swift_task_alloc();
  *(v0 + 240) = swift_task_alloc();
  *(v0 + 248) = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_243790E24(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[13];
  v5 = v4 - v4 % 5242880;
  if (__OFSUB__(v4, v4 % 5242880))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = v3[14];
  v7 = v6 % 5242880;
  if (v6 % 5242880)
  {
    v8 = v6 + 5242880;
    if (__OFADD__(v6, 5242880))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v9 = v8 - v7;
    if (__OFSUB__(v8, v7))
    {
LABEL_34:
      __break(1u);
      return MEMORY[0x2822009F8](a1, a2, a3);
    }

    a1 = _s11CloudAssets17AssetStreamHandleV4sizeSivg_0();
    if (a1 >= v9)
    {
      v6 = v9;
    }

    else
    {
      v6 = a1;
    }
  }

  if (v6 < v5)
  {
    goto LABEL_31;
  }

  if (v5 < v6)
  {
    a1 = sub_243793B54(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = a1;
    while (1)
    {
      v11 = v5 + 5242880;
      if (__OFADD__(v5, 5242880))
      {
        break;
      }

      if (v11 >= v6)
      {
        v12 = v6;
      }

      else
      {
        v12 = v5 + 5242880;
      }

      if (v12 < v5)
      {
        goto LABEL_29;
      }

      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        a1 = sub_243793B54((v13 > 1), v14 + 1, 1, v10);
        v10 = a1;
      }

      *(v10 + 16) = v15;
      v16 = v10 + 16 * v14;
      *(v16 + 32) = v5;
      *(v16 + 40) = v12;
      v5 += 5242880;
      if (v11 >= v6)
      {
        v19 = v10 + 16;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90] + 16;
  v15 = *(MEMORY[0x277D84F90] + 16);
  if (!v15)
  {

    v3[11] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
    OUTLINED_FUNCTION_55();
    sub_2437ABC2C();
    OUTLINED_FUNCTION_23();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_61();

    __asm { BRAA            X1, X16 }
  }

LABEL_24:
  v3[33] = v10;
  v3[34] = v15;
  v3[32] = v19;
  v20 = v3[12];
  a1 = type metadata accessor for AssetStreamHandle(0);
  a2 = *(v20 + *(a1 + 8));
  v3[36] = 0;
  v3[37] = 0;
  v3[35] = a2;
  if (!*(v10 + 16))
  {
    goto LABEL_32;
  }

  v3[38] = *(v10 + 32);
  OUTLINED_FUNCTION_16(*(v10 + 40));
  OUTLINED_FUNCTION_61();

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_243791050()
{
  OUTLINED_FUNCTION_15();
  *(v0 + 320) = sub_2437904B8();
  v1 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2437910B4()
{
  v41 = v0;
  v1 = v0[40];
  if (!v1)
  {
    v7 = v0[38];
    v6 = v0[39];
    v39 = v0[36];
    v8 = v0[31];
    v9 = v0[25];
    v10 = v0[26];
    v1 = v0[24];
    v11 = v0[16];
    (*(v0[28] + 16))(v8, v0[15], v0[27]);
    (*(v9 + 16))(v10, v11, v1);
    type metadata accessor for AssetStreamHandle.RangeReader(0);
    swift_allocObject();
    OUTLINED_FUNCTION_57();

    sub_24378CE18(v8, v7, v6);
    if (v39)
    {

      if (_MergedGlobals != -1)
      {
        OUTLINED_FUNCTION_26(&_MergedGlobals);
      }

      v12 = v0[28];
      v13 = sub_2437AB9DC();
      __swift_project_value_buffer(v13, qword_27ED85EE8);
      v14 = *(v12 + 16);
      v15 = OUTLINED_FUNCTION_40();
      v14(v15);
      v16 = v39;
      v17 = sub_2437AB9BC();
      v18 = sub_2437ABC9C();

      v19 = os_log_type_enabled(v17, v18);
      v20 = v0[30];
      if (v19)
      {
        v21 = v0[29];
        v22 = v0[27];
        v35 = v0[13];
        v36 = v0[14];
        OUTLINED_FUNCTION_18();
        v38 = v18;
        v23 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v40[0] = swift_slowAlloc();
        *v23 = 136315650;
        (v14)(v21, v20, v22);
        sub_2437ABABC();
        v24 = OUTLINED_FUNCTION_50();
        v25(v24);
        sub_243793C54(v14, v21, v40);
        OUTLINED_FUNCTION_82();
        *(v23 + 4) = v14;
        *(v23 + 12) = 2080;
        v26 = sub_243794304(v35, v36);
        sub_243793C54(v26, v27, v40);
        OUTLINED_FUNCTION_82();
        *(v23 + 14) = v14;
        *(v23 + 22) = 2112;
        v28 = v39;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 24) = v29;
        *v37 = v29;
        _os_log_impl(&dword_243789000, v17, v38, "failed to stream data for %s in range %s due to error %@", v23, 0x20u);
        sub_243794788(v37, &qword_27ED85560, &qword_2437ACC80);
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
        OUTLINED_FUNCTION_9();
        MEMORY[0x245D3F7D0]();
      }

      else
      {
        v30 = v0[27];
        v31 = v0[28];

        (*(v31 + 8))(v20, v30);
      }

      v0[9] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
      OUTLINED_FUNCTION_55();
      sub_2437ABC2C();
      OUTLINED_FUNCTION_23();

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_74();

      __asm { BRAA            X1, X16 }
    }
  }

  v0[41] = v1;
  OUTLINED_FUNCTION_74();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_243791468()
{
  OUTLINED_FUNCTION_15();
  *(v0 + 336) = sub_2437904B8();
  v1 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2437914CC()
{
  OUTLINED_FUNCTION_15();
  if (!v0[42])
  {
    v2 = v0[35];
    v1 = sub_2437915C8;
    v3 = 0;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v4 = v0[38];
  v5 = v0[13];
  if (v4 > v5)
  {
    v5 = v0[38];
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  v0[43] = v7;
  if (v6)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v0[39];
  if (v8 >= v0[14])
  {
    v8 = v0[14];
  }

  v6 = __OFSUB__(v8, v4);
  v9 = v8 - v4;
  v0[44] = v9;
  if (v6)
  {
    goto LABEL_16;
  }

  if (v9 < v7)
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v10 = swift_task_alloc();
  v0[45] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_10(v10);

  return sub_24378EEDC();
}

uint64_t sub_2437915C8()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[35];
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v1 + 112);
  v0[10] = v2;
  *(v1 + 112) = 0x8000000000000000;
  v3 = OUTLINED_FUNCTION_25();
  v5 = sub_2437941C4(v3, v4);
  if (__OFADD__(*(v2 + 16), (v6 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85568, &qword_2437ACC88);
  v5 = sub_2437ABD8C();
  if ((v5 & 1) == 0)
  {
LABEL_8:
    v11 = v0[10];
    v12 = v0[41];
    if (v9)
    {
      *(v11[7] + 8 * v8) = v12;

      goto LABEL_12;
    }

    v13 = v11[6];
    v14 = *(v0 + 19);
    v11[(v8 >> 6) + 8] |= 1 << v8;
    *(v13 + 16 * v8) = v14;
    *(v11[7] + 8 * v8) = v12;
    v15 = v11[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
      v11[2] = v17;
LABEL_12:
      *(v0[35] + 112) = v11;
      swift_endAccess();
      v5 = OUTLINED_FUNCTION_11();

      return MEMORY[0x2822009F8](v5, v6, v7);
    }

LABEL_16:
    __break(1u);
    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  v5 = sub_2437941C4(v0[38], v0[39]);
  if ((v9 & 1) == (v6 & 1))
  {
    v8 = v5;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85490, &unk_2437AC7F0);

  return sub_2437ABE5C();
}

void sub_243791798()
{
  v2 = v0[38];
  v3 = v0[13];
  if (v2 > v3)
  {
    v3 = v0[38];
  }

  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  v0[43] = v5;
  if (v4)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v0[39];
  if (v6 >= v0[14])
  {
    v6 = v0[14];
  }

  v4 = __OFSUB__(v6, v2);
  v7 = v6 - v2;
  v0[44] = v7;
  if (v4)
  {
    goto LABEL_12;
  }

  if (v7 < v5)
  {
LABEL_13:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_15();
  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_10(v8);

  sub_24378EEDC();
}

uint64_t sub_243791850()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  *v4 = *v1;
  v3[46] = v5;
  v3[47] = v6;
  v3[48] = v0;

  if (v0)
  {

    v7 = sub_243791BB4;
  }

  else
  {
    v7 = sub_243791960;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_243791960(uint64_t a1)
{
  v2 = *(v1 + 376);
  switch(v2 >> 62)
  {
    case 1uLL:
      v9 = *(v1 + 368);
      v10 = *(v1 + 372);
      v6 = __OFSUB__(v10, v9);
      LODWORD(v3) = v10 - v9;
      if (v6)
      {
        goto LABEL_21;
      }

      v3 = v3;
LABEL_10:
      if (v3 >= *(v1 + 352))
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    case 2uLL:
      v4 = *(*(v1 + 368) + 16);
      v5 = *(*(v1 + 368) + 24);
      v6 = __OFSUB__(v5, v4);
      v3 = v5 - v4;
      if (!v6)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (*(v1 + 352) <= 0)
      {
LABEL_11:
        *(v1 + 40) = sub_2437AB59C();
        *(v1 + 48) = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
      }

      else
      {
LABEL_7:
        *(v1 + 56) = *(v1 + 368);
        *(v1 + 64) = v2;
        v7 = OUTLINED_FUNCTION_25();
        sub_243792760(v7, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
      }

      sub_2437ABC1C();

      v12 = OUTLINED_FUNCTION_25();
      sub_2437927B8(v12, v13);
      v14 = OUTLINED_FUNCTION_54();
      v15(v14);
      v16 = *(v1 + 296) + 1;
      if (v16 == *(v1 + 272))
      {

        *(v1 + 88) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
        OUTLINED_FUNCTION_55();
        sub_2437ABC2C();
        OUTLINED_FUNCTION_23();

        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_61();

        __asm { BRAA            X1, X16 }
      }

      *(v1 + 288) = *(v1 + 384);
      *(v1 + 296) = v16;
      if (v16 >= **(v1 + 256))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        JUMPOUT(0x243791BA4);
      }

      v19 = *(v1 + 264) + 16 * v16;
      *(v1 + 304) = *(v19 + 32);
      OUTLINED_FUNCTION_16(*(v19 + 40));
      OUTLINED_FUNCTION_61();

      return MEMORY[0x2822009F8](v20, v21, v22);
    case 3uLL:
      goto LABEL_6;
    default:
      v3 = BYTE6(v2);
      goto LABEL_10;
  }
}

void sub_243791BB4()
{

  v1 = v0[48];
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_26(&_MergedGlobals);
  }

  v2 = v0[28];
  v3 = sub_2437AB9DC();
  v4 = __swift_project_value_buffer(v3, qword_27ED85EE8);
  v5 = *(v2 + 16);
  v6 = OUTLINED_FUNCTION_40();
  v5(v6);
  v7 = v1;
  v8 = sub_2437AB9BC();
  v9 = sub_2437ABC9C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[30];
  if (v10)
  {
    v29 = v1;
    v12 = v0[29];
    v13 = v0[27];
    v25 = v0[13];
    v26 = v0[14];
    OUTLINED_FUNCTION_18();
    v28 = v9;
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136315650;
    (v5)(v12, v11, v13);
    sub_2437ABABC();
    v15 = OUTLINED_FUNCTION_50();
    v16(v15);
    sub_243793C54(v12, v4, &v30);
    OUTLINED_FUNCTION_82();
    *(v14 + 4) = v12;
    *(v14 + 12) = 2080;
    v17 = sub_243794304(v25, v26);
    sub_243793C54(v17, v18, &v30);
    OUTLINED_FUNCTION_82();
    *(v14 + 14) = v12;
    v1 = v29;
    *(v14 + 22) = 2112;
    v19 = v29;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v20;
    *v27 = v20;
    _os_log_impl(&dword_243789000, v8, v28, "failed to stream data for %s in range %s due to error %@", v14, 0x20u);
    sub_243794788(v27, &qword_27ED85560, &qword_2437ACC80);
    OUTLINED_FUNCTION_9();
    MEMORY[0x245D3F7D0]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    MEMORY[0x245D3F7D0]();
    OUTLINED_FUNCTION_9();
    MEMORY[0x245D3F7D0]();
  }

  else
  {
    v22 = v0[27];
    v21 = v0[28];

    (*(v21 + 8))(v11, v22);
  }

  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
  sub_2437ABC2C();
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_74();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_243791EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_2437945D8(a3, v24 - v10, &qword_27ED85508, &qword_2437AC820);
  v12 = sub_2437ABBAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_243794788(v11, &qword_27ED85508, &qword_2437AC820);
  }

  else
  {
    sub_2437ABB9C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2437ABB3C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2437ABACC() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_243794788(a3, &qword_27ED85508, &qword_2437AC820);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_243794788(a3, &qword_27ED85508, &qword_2437AC820);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2437921A4()
{
  OUTLINED_FUNCTION_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29(v0);
  *v1 = v2;
  v1[1] = sub_243792248;

  return AssetStreamHandle.inputStream(for:)();
}

uint64_t sub_243792248()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_243792328()
{
  OUTLINED_FUNCTION_71();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2437923E4;

  return StreamHandle.readAll(in:)();
}

uint64_t sub_2437923E4()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_45();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v3 = v2;

  OUTLINED_FUNCTION_73();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_25();
  }

  return v5(v4);
}

id sub_2437924DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2437AB4DC();
  if (a2)
  {
    v7 = sub_2437ABA2C();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 initWithURL:v6 options:v7];

  v9 = sub_2437AB52C();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
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

unint64_t sub_243792644()
{
  result = qword_27ED85498;
  if (!qword_27ED85498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED85490, &unk_2437AC7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85498);
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

uint64_t sub_243792728(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243792760(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2437927B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_243792810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ED854A8;
  if (!qword_27ED854A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED854A8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2437928EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetStreamHandle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_243792950()
{
  result = qword_27ED854C8;
  if (!qword_27ED854C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED854C0, &qword_2437AC800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED854C8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2437929F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ED854D8;
  if (!qword_27ED854D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED854D8);
  }

  return result;
}

uint64_t sub_243792A4C(uint64_t a1)
{
  v2 = type metadata accessor for AssetStreamHandle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243792AD0()
{
  v1 = (type metadata accessor for AssetStreamHandle(0) - 8);
  v32 = *(*v1 + 80);
  v34 = (v32 + 32) & ~v32;
  v2 = (*(*v1 + 64) + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2437AB91C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v2 + v5 + 16) & ~v5;
  v36 = v7;
  v37 = v6;
  v9 = *(v8 + 64);
  v30 = sub_2437AB6DC();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v12 = *(v10 + 80);
  v38 = (v6 + v9 + v12) & ~v12;
  v14 = (*(v13 + 64) + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = sub_2437AB5BC();
  OUTLINED_FUNCTION_1();
  v35 = v15;
  v16 = *(v15 + 80);
  v17 = (v14 + v16 + 16) & ~v16;
  v19 = *(v18 + 64);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  v23 = v22;
  v24 = *(v21 + 80);
  v28 = (v17 + v19 + v24) & ~v24;
  v29 = *(v23 + 64);
  v33 = v32 | v5 | v12 | v16 | v24;
  swift_unknownObjectRelease();
  v25 = *(v4 + 8);
  v25(v0 + v34, v36);
  v26 = *(v11 + 8);
  v26(v0 + v34 + v1[7], v30);

  v25(v0 + v37, v36);
  v26(v0 + v38, v30);

  (*(v35 + 8))(v0 + v17, v39);
  (*(v21 + 8))(v0 + v28, v31);

  return MEMORY[0x2821FE8E8](v0, v28 + v29, v33 | 7);
}

uint64_t sub_243792E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetStreamHandle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243792E90()
{
  v1 = type metadata accessor for AssetStreamHandle(0);
  OUTLINED_FUNCTION_5(v1);
  v2 = sub_2437AB91C();
  OUTLINED_FUNCTION_5(v2);
  v3 = sub_2437AB6DC();
  OUTLINED_FUNCTION_5(v3);
  v4 = sub_2437AB5BC();
  OUTLINED_FUNCTION_5(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85518, &qword_2437AC830);
  OUTLINED_FUNCTION_17(v5);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_243792248;

  return sub_243790CA0();
}

unint64_t sub_243793140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ED85520;
  if (!qword_27ED85520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85520);
  }

  return result;
}

unint64_t sub_243793198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ED85528;
  if (!qword_27ED85528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85528);
  }

  return result;
}

unint64_t sub_2437931F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ED85530;
  if (!qword_27ED85530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85530);
  }

  return result;
}

uint64_t sub_243793258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_37();
  sub_2437AB91C();
  OUTLINED_FUNCTION_44();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_2437AB6DC();
  OUTLINED_FUNCTION_44();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v3 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_243793358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_37();
  sub_2437AB91C();
  OUTLINED_FUNCTION_44();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_2437AB6DC();
    OUTLINED_FUNCTION_44();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_243793440(uint64_t a1)
{
  result = sub_2437AB91C();
  if (v2 <= 0x3F)
  {
    result = sub_2437AB6DC();
    if (v3 <= 0x3F)
    {
      type metadata accessor for AssetStreamHandle.RangeReadersCache();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2437934F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243793538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTagSinglePayload for AssetStreamHandle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetStreamHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437936FCLL);
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

uint64_t sub_24379374C(uint64_t a1)
{
  result = sub_2437AB91C();
  if (v2 <= 0x3F)
  {
    result = sub_2437AB6DC();
    if (v3 <= 0x3F)
    {
      result = sub_2437AB52C();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11CloudAssets17AssetStreamHandleV11RangeReader33_8A8CF1A1AB92A9609CD6E8B040939DD6LLC10CacheStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_243793898(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2437938EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_243793948(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_243793978(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_243793A70;

  return v6(a1);
}

uint64_t sub_243793A70()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

char *sub_243793B54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED85580, &qword_2437ACC98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_243793C54(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243793D18(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2437943E8(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_243793D18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_243793E18(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2437ABD6C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_243793E18(uint64_t a1, unint64_t a2)
{
  v3 = sub_243793E64(a1, a2);
  sub_243793F7C(&unk_28568A4A0);
  return v3;
}

uint64_t sub_243793E64(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2437ABAFC())
  {
    result = sub_243794060(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2437ABD4C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2437ABD6C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_243793F7C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2437940D0(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_243794060(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856A0, &qword_2437ACC40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2437940D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856A0, &qword_2437ACC40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2437941C4(uint64_t a1, uint64_t a2)
{
  sub_2437ABEAC();
  MEMORY[0x245D3F230](a1);
  MEMORY[0x245D3F230](a2);
  v4 = sub_2437ABECC();

  return sub_243794244(a1, a2, v4);
}

unint64_t sub_243794244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2437942F4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_243794304(uint64_t a1, uint64_t a2)
{
  sub_2437ABD7C();
  MEMORY[0x245D3EE60](3943982, 0xE300000000000000);
  sub_2437ABD7C();
  return 0;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_2437943E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_2437944AC()
{
  result = qword_27ED85E90;
  if (!qword_27ED85E90)
  {
    type metadata accessor for AssetStreamHandle.RangeReader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85E90);
  }

  return result;
}

uint64_t sub_243794504()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_243794544()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29(v0);
  *v1 = v2;
  v1[1] = sub_243792248;

  return sub_24378DA70();
}

uint64_t sub_2437945D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_42();
  v6(v5);
  return a2;
}

uint64_t sub_243794634(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_243794674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2437946BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2437946F4()
{
  OUTLINED_FUNCTION_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_39(v1);

  return v4(v3);
}

uint64_t sub_243794788(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2437947E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ED85578;
  if (!qword_27ED85578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85578);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23()
{
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return sub_243793C54(v19, v20, va);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1, uint64_t a2)
{

  return sub_2437ABE3C();
}

unint64_t OUTLINED_FUNCTION_48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return sub_243793C54(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_59()
{
}

uint64_t OUTLINED_FUNCTION_62()
{
}

uint64_t OUTLINED_FUNCTION_76()
{
}

void OUTLINED_FUNCTION_77(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_78(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_79(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = (a14 + *(v14 + 8));
  v17 = *v16;
  v18 = v16[1];

  return sub_243794304(v17, v18);
}

uint64_t OUTLINED_FUNCTION_81()
{
}

uint64_t OUTLINED_FUNCTION_82()
{
}

uint64_t sub_243794ED4()
{
  v0 = sub_2437AB9DC();
  __swift_allocate_value_buffer(v0, qword_27ED85F48);
  __swift_project_value_buffer(v0, qword_27ED85F48);
  sub_2437AB73C();
  type metadata accessor for LoadingRequestHandler(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85640, &qword_2437ACD60);
  sub_2437ABABC();
  return sub_2437AB9CC();
}

void *sub_243794FC8(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_2437AB9AC();
  v7 = OUTLINED_FUNCTION_17(v6);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85590, &qword_2437ACCB0);
  v9 = OUTLINED_FUNCTION_17(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  sub_243795204(a1, &v3[OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_assetStreamHandle]);
  sub_2437AB99C();
  sub_2437AB98C();
  sub_243795268(v11, &v3[OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_type]);
  sub_2437952D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED855A8, &qword_2437ACCB8);
  sub_243797E08(&qword_27ED855B0, sub_2437952D8, MEMORY[0x277D85378]);
  v12 = sub_2437ABA4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED855B8, &unk_2437ACCC0);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  *&v3[OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_protectedTaskMapping] = v13;
  v14 = sub_2437AAC18("asset-streaming/loading-request-handler", 39, 2, &dword_243789000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85620, &unk_2437ACCD0);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v14;
  *&v3[OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_protectedActivity] = v15;
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v16;
}

uint64_t sub_243795204(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243795268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85590, &qword_2437ACCB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2437952D8()
{
  result = qword_27ED855A0;
  if (!qword_27ED855A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED855A0);
  }

  return result;
}

id sub_24379531C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85590, &qword_2437ACCB0);
  v5 = OUTLINED_FUNCTION_17(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  sub_243797EB0(v2 + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_type, &v14 - v6, &qword_27ED85590, &qword_2437ACCB0);
  v8 = sub_2437AB9AC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_243797E50(v7, &qword_27ED85590, &qword_2437ACCB0);
    v9 = 0;
  }

  else
  {
    sub_2437AB97C();
    (*(*(v8 - 8) + 8))(v7, v8);
    v9 = sub_2437ABA8C();
  }

  [a1 setContentType_];

  v10 = (v2 + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_assetStreamHandle);
  v11 = *(v2 + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_assetStreamHandle + 24);
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  [a1 setContentLength_];
  return [a1 setByteRangeAccessSupported_];
}

uint64_t sub_2437954D0()
{
  OUTLINED_FUNCTION_15();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85678, &qword_2437ACDA0);
  v1[7] = v3;
  OUTLINED_FUNCTION_5(v3);
  v1[8] = v4;
  v1[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED85680, &unk_2437ACDA8);
  v1[10] = v5;
  OUTLINED_FUNCTION_5(v5);
  v1[11] = v6;
  v1[12] = swift_task_alloc();
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

char *sub_2437955EC()
{
  v26 = v0;
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&_MergedGlobals_0);
  }

  v1 = v0[5];
  v2 = sub_2437AB9DC();
  __swift_project_value_buffer(v2, qword_27ED85F48);
  v3 = v1;
  v4 = sub_2437AB9BC();
  v5 = sub_2437ABCAC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_13_0();
    v9 = OUTLINED_FUNCTION_13_0();
    v25 = v9;
    *v8 = 136315650;
    v10 = v7;
    v11 = [v10 description];
    v12 = sub_2437ABA9C();
    v14 = v13;

    v15 = sub_243793C54(v12, v14, &v25);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2048;
    v16 = [v10 requestedOffset];

    *(v8 + 14) = v16;
    *(v8 + 22) = 2048;
    v17 = [v10 requestedLength];

    *(v8 + 24) = v17;
    _os_log_impl(&dword_243789000, v4, v5, "LoadingRequestHandler.handleDataRequest:%s offset:%lld length:%ld", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {
  }

  v18 = v0[5];
  v19 = [v18 requestedOffset];
  result = [v18 requestedLength];
  if (__OFADD__(v19, result))
  {
    __break(1u);
  }

  else if (&result[v19] >= v19)
  {
    __swift_project_boxed_opaque_existential_1((v0[6] + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_assetStreamHandle), *(v0[6] + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_assetStreamHandle + 24));
    swift_task_alloc();
    OUTLINED_FUNCTION_16_0();
    v0[13] = v21;
    *v21 = v22;
    v21[1] = sub_2437958F4;
    OUTLINED_FUNCTION_19_0();

    __asm { BRAA            X5, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_2437958F4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  *(v4 + 112) = v0;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2437959F4()
{
  OUTLINED_FUNCTION_15();
  sub_2437ABC3C();
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 120) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822005A8](v3);
}

uint64_t sub_243795A80()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_243795B7C()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v2 >> 60 == 15)
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v4 + 8))(v3, v5);

    OUTLINED_FUNCTION_14();

    return v6();
  }

  else
  {
    v8 = v0[5];
    v9 = sub_2437AB57C();
    [v8 respondWithData_];

    sub_243797F7C(v1, v2);
    swift_task_alloc();
    OUTLINED_FUNCTION_16_0();
    v0[15] = v10;
    *v10 = v11;
    OUTLINED_FUNCTION_3_0(v10);
    OUTLINED_FUNCTION_5_0();

    return MEMORY[0x2822005A8](v12);
  }
}

uint64_t sub_243795CDC()
{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_243795D44()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_14();

  return v4();
}

uint64_t sub_243795DE8()
{
  OUTLINED_FUNCTION_15();
  v1[6] = v2;
  v1[7] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED85650, &qword_2437ACD80);
  OUTLINED_FUNCTION_17(v3);
  v1[8] = swift_task_alloc();
  v4 = sub_2437AB43C();
  v1[9] = v4;
  OUTLINED_FUNCTION_5(v4);
  v1[10] = v5;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = sub_2437AB52C();
  v1[13] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[14] = v7;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_243795F38()
{
  v86 = v0;
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&_MergedGlobals_0);
  }

  v1 = *(v0 + 48);
  v2 = sub_2437AB9DC();
  *(v0 + 136) = __swift_project_value_buffer(v2, qword_27ED85F48);
  v3 = v1;
  v4 = sub_2437AB9BC();
  v5 = sub_2437ABCAC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = OUTLINED_FUNCTION_14_0();
    v85 = OUTLINED_FUNCTION_13_0();
    *v7 = 136315138;
    *(v0 + 40) = v6;
    v8 = sub_2437ABEFC();
    v10 = sub_243793C54(v8, v9, &v85);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_243789000, v4, v5, "LoadingRequestHandler.handle, entering - loadingRequest:%s", v7, 0xCu);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_8_0();
  }

  v11 = [*(v0 + 48) contentInformationRequest];
  if (v11)
  {
    v12 = v11;
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v17 = *(v0 + 64);
    v18 = *(v0 + 48);
    sub_24379531C(v11);
    v19 = [v18 request];
    sub_2437AB41C();

    sub_2437AB42C();
    (*(v16 + 8))(v14, v15);
    if (__swift_getEnumTagSinglePayload(v17, 1, v13) == 1)
    {
      v20 = *(v0 + 64);

      sub_243797E50(v20, &unk_27ED85650, &qword_2437ACD80);
    }

    else
    {
      v22 = *(v0 + 120);
      v21 = *(v0 + 128);
      v23 = *(v0 + 104);
      v24 = *(v0 + 112);
      v25 = *(v0 + 48);
      (*(v24 + 32))(v21, *(v0 + 64), v23);
      (*(v24 + 16))(v22, v21, v23);
      v26 = sub_2437ABA4C();
      v27 = objc_allocWithZone(MEMORY[0x277CCAA40]);
      v28 = sub_243797808(v22, 206, 0, 0, v26);
      [v25 setResponse_];

      v29 = v25;
      v30 = sub_2437AB9BC();
      v31 = sub_2437ABC8C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 48);
        v33 = OUTLINED_FUNCTION_14_0();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        v35 = [v32 response];
        *(v33 + 4) = v35;
        *v34 = v35;
        _os_log_impl(&dword_243789000, v30, v31, "Returning Response w/ ETag for AVAssetCache %@", v33, 0xCu);
        sub_243797E50(v34, &qword_27ED85560, &qword_2437ACC80);
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_10_0();
      }

      v36 = *(v0 + 128);
      v37 = *(v0 + 104);
      v38 = *(v0 + 112);

      (*(v38 + 8))(v36, v37);
    }
  }

  v39 = [*(v0 + 48) dataRequest];
  *(v0 + 144) = v39;
  if (!v39)
  {
    v70 = *(v0 + 48);
    [v70 finishLoading];
    v71 = v70;
    v60 = sub_2437AB9BC();
    v72 = sub_2437ABCAC();

    if (os_log_type_enabled(v60, v72))
    {
      v73 = *(v0 + 48);
      v74 = OUTLINED_FUNCTION_14_0();
      v75 = OUTLINED_FUNCTION_13_0();
      v85 = v75;
      *v74 = 136315138;
      *(v0 + 16) = v73;
      v76 = sub_2437ABEFC();
      v78 = sub_243793C54(v76, v77, &v85);

      *(v74 + 4) = v78;
      OUTLINED_FUNCTION_77(&dword_243789000, v79, v80, "LoadingRequestHandler.handle, leaving - loadingRequest:%s");
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_9_0();
    }

LABEL_24:

    OUTLINED_FUNCTION_17_0();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_19_0();

    __asm { BRAA            X1, X16 }
  }

  v40 = v39;
  if (![v39 requestedOffset] && objc_msgSend(v40, sel_requestedLength) == 2)
  {
    v41 = *(v0 + 48);
    v42 = sub_2437AB9BC();
    v43 = sub_2437ABC8C();

    if (os_log_type_enabled(v42, v43))
    {
      v83 = v43;
      v45 = *(v0 + 80);
      v44 = *(v0 + 88);
      v46 = *(v0 + 72);
      v47 = *(v0 + 48);
      v48 = OUTLINED_FUNCTION_14_0();
      v84 = OUTLINED_FUNCTION_13_0();
      v85 = v84;
      *v48 = 136315138;
      v49 = [v47 request];
      sub_2437AB41C();

      sub_243797E08(&qword_27ED85660, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
      v50 = sub_2437ABE1C();
      v52 = v51;
      (*(v45 + 8))(v44, v46);
      v53 = sub_243793C54(v50, v52, &v85);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_243789000, v42, v83, "Returning zero-filled bytes for the first two bytes of a video request %s. These two-bytes are always requested even when the payload can be served from cache.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10_0();
    }

    v54 = *(v0 + 48);
    v55 = sub_243796B78(&unk_28568A780);
    v57 = v56;
    v58 = sub_2437AB57C();
    sub_2437927B8(v55, v57);
    [v40 respondWithData_];

    [v54 finishLoading];
    v59 = v54;
    v60 = sub_2437AB9BC();
    v61 = sub_2437ABCAC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = *(v0 + 48);
      v63 = OUTLINED_FUNCTION_14_0();
      v85 = OUTLINED_FUNCTION_13_0();
      *v63 = 136315138;
      *(v0 + 32) = v62;
      v64 = sub_2437ABEFC();
      v66 = sub_243793C54(v64, v65, &v85);

      *(v63 + 4) = v66;
      _os_log_impl(&dword_243789000, v60, v61, "LoadingRequestHandler.handle, leaving - loadingRequest:%s with synthetic response", v63, 0xCu);
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_8_0();
    }

    goto LABEL_24;
  }

  v67 = swift_task_alloc();
  *(v0 + 152) = v67;
  *v67 = v0;
  v67[1] = sub_243796700;
  OUTLINED_FUNCTION_19_0();

  return sub_2437954D0();
}

uint64_t sub_243796700()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  *(v4 + 160) = v0;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_243796800()
{
  v16 = v0;

  v1 = *(v0 + 48);
  [v1 finishLoading];
  v2 = v1;
  v3 = sub_2437AB9BC();
  v4 = sub_2437ABCAC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 48);
    v6 = OUTLINED_FUNCTION_14_0();
    v7 = OUTLINED_FUNCTION_13_0();
    v15 = v7;
    *v6 = 136315138;
    *(v0 + 16) = v5;
    v8 = sub_2437ABEFC();
    v10 = sub_243793C54(v8, v9, &v15);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_77(&dword_243789000, v11, v12, "LoadingRequestHandler.handle, leaving - loadingRequest:%s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_17_0();

  OUTLINED_FUNCTION_14();

  return v13();
}

uint64_t sub_243796960()
{
  v22 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 48);
  v3 = sub_2437AB4AC();
  [v2 finishLoadingWithError_];

  v4 = v2;
  v5 = v1;
  v6 = sub_2437AB9BC();
  v7 = sub_2437ABCAC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 160);
    v9 = *(v0 + 144);
    v10 = *(v0 + 48);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = OUTLINED_FUNCTION_13_0();
    *v11 = 136315394;
    *(v0 + 24) = v10;
    v13 = sub_2437ABEFC();
    v15 = sub_243793C54(v13, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&dword_243789000, v6, v7, "LoadingRequestHandler.handle, leaving - loadingRequest:%s with error %@", v11, 0x16u);
    sub_243797E50(v12, &qword_27ED85560, &qword_2437ACC80);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    v18 = *(v0 + 160);
  }

  OUTLINED_FUNCTION_17_0();

  OUTLINED_FUNCTION_14();

  return v19();
}

uint64_t sub_243796B78(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85668, &qword_2437ACD98);
  v8 = sub_243797F18();
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_243797C20(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v3;
}

uint64_t sub_243796C1C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  v5 = OUTLINED_FUNCTION_17(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v15[-v6];
  v8 = sub_2437ABBAC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a2;
  v10 = v2;
  v11 = a2;
  v12 = sub_243791EA0(0, 0, v7, &unk_2437ACCE8, v9);
  v13 = *&v10[OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_protectedTaskMapping];
  v16 = v11;
  v17 = v12;
  os_unfair_lock_lock((v13 + 24));
  sub_243797158((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));

  return 1;
}

uint64_t sub_243796D50()
{
  OUTLINED_FUNCTION_15();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_243796DD8()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0[3].opaque[0] + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_protectedActivity);
  os_unfair_lock_lock((v1 + 24));
  v0[2].opaque[1] = 0;
  v0[2].opaque[0] = 0;
  os_activity_scope_enter(*(v1 + 16), v0 + 2);
  v2 = v0[2].opaque[0];
  v3 = v0[2].opaque[1];
  os_unfair_lock_unlock((v1 + 24));
  v0[1].opaque[0] = v2;
  v0[1].opaque[1] = v3;
  v4 = swift_task_alloc();
  v0[4].opaque[0] = v4;
  *v4 = v0;
  v4[1] = sub_243796EE0;

  return sub_243795DE8();
}

uint64_t sub_243796EE0()
{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_243796FF8()
{
  OUTLINED_FUNCTION_15();
  os_activity_scope_leave(v0 + 1);
  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_24379707C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2437970C4()
{
  OUTLINED_FUNCTION_15();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243792248;

  return sub_243796D50();
}

id sub_243797158(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  result = sub_243797C98(v4, v3, isUniquelyReferenced_nonNull_native);
  *a1 = v7;
  return result;
}

void sub_24379721C(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = *(v2 + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_protectedTaskMapping);
  os_unfair_lock_lock((v4 + 24));
  sub_243797518((v4 + 16), &state);
  os_unfair_lock_unlock((v4 + 24));
  if (state.opaque[0])
  {
    v5 = *(v2 + OBJC_IVAR____TtC11CloudAssets21LoadingRequestHandler_protectedActivity);
    os_unfair_lock_lock((v5 + 24));
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(*(v5 + 16), &state);
    v6 = state.opaque[0];
    v7 = state.opaque[1];
    os_unfair_lock_unlock((v5 + 24));
    state.opaque[0] = v6;
    state.opaque[1] = v7;
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&_MergedGlobals_0);
    }

    v8 = sub_2437AB9DC();
    __swift_project_value_buffer(v8, qword_27ED85F48);
    v9 = a2;
    v10 = sub_2437AB9BC();
    v11 = sub_2437ABCAC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_14_0();
      v26[0] = OUTLINED_FUNCTION_13_0();
      *v12 = 136315138;
      v13 = sub_2437ABEFC();
      v15 = sub_243793C54(v13, v14, v26);

      *(v12 + 4) = v15;
      _os_log_impl(&dword_243789000, v10, v11, "LoadingRequestHandler.didCancel - loadingRequest:%s", v12, 0xCu);
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_9_0();
    }

    sub_2437ABBCC();
    os_activity_scope_leave(&state);
  }

  else
  {
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&_MergedGlobals_0);
    }

    v16 = sub_2437AB9DC();
    __swift_project_value_buffer(v16, qword_27ED85F48);
    v17 = a2;
    v18 = sub_2437AB9BC();
    v19 = sub_2437ABC9C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_14_0();
      v21 = OUTLINED_FUNCTION_13_0();
      state.opaque[0] = v21;
      *v20 = 136315138;
      v26[0] = v17;
      v22 = sub_2437ABEFC();
      v24 = sub_243793C54(v22, v23, &state);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_243789000, v18, v19, "LoadingRequestHandler.didCancel - loadingRequest:%s - missing task!", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_10_0();
    }
  }
}

uint64_t sub_243797518@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(*a1 + 16) && (sub_243797B1C(*(v2 + 16)), (v4 & 1) != 0))
  {
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_243797664(int a1, id a2)
{
  v3 = [a2 sender];
  if (v3)
  {
    [v3 continueWithoutCredentialForAuthenticationChallenge_];
    swift_unknownObjectRelease();
  }

  return 1;
}

id sub_243797758()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_243797808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_2437AB4DC();
  if (!a4)
  {
    v12 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_2437ABA8C();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_2437ABA2C();

LABEL_6:
  v14 = [v6 initWithURL:v11 statusCode:a2 HTTPVersion:v12 headerFields:v13];

  v15 = sub_2437AB52C();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

uint64_t type metadata accessor for LoadingRequestHandler(uint64_t a1)
{
  result = qword_27ED85F18;
  if (!qword_27ED85F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243797974(uint64_t a1)
{
  sub_243797A20(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_243797A20(uint64_t a1)
{
  if (!qword_27ED85628)
  {
    sub_2437AB9AC();
    v1 = sub_2437ABD2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED85628);
    }
  }
}

uint64_t sub_243797A84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243797AA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27ED85630)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27ED85630);
    }
  }
}

unint64_t sub_243797B1C(uint64_t a1)
{
  v2 = sub_2437ABD0C();

  return sub_243797B60(a1, v2);
}

unint64_t sub_243797B60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_2437952D8();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_2437ABD1C();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_243797C20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_2437AB53C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x245D3E8C0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x245D3E8D0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

id sub_243797C98(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_243797B1C(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85648, &unk_2437ACD68);
  if ((sub_2437ABD8C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_243797B1C(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_2437952D8();
    result = sub_2437ABE5C();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v4;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a1;
  }

  else
  {
    sub_243797DC4(v9, a2, a1, v13);

    return a2;
  }
}

unint64_t sub_243797DC4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_243797E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243797E50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_243797EB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_243797F18()
{
  result = qword_27ED85670;
  if (!qword_27ED85670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED85668, &qword_2437ACD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85670);
  }

  return result;
}

uint64_t sub_243797F7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2437927B8(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x245D3F7D0);
}

void OUTLINED_FUNCTION_8_0()
{

  JUMPOUT(0x245D3F7D0);
}

void OUTLINED_FUNCTION_9_0()
{

  JUMPOUT(0x245D3F7D0);
}

void OUTLINED_FUNCTION_10_0()
{

  JUMPOUT(0x245D3F7D0);
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_0()
{
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return MEMORY[0x2821F9888]();
}

uint64_t sub_2437980F4()
{
  v0 = sub_2437AB9DC();
  __swift_allocate_value_buffer(v0, qword_27ED85F88);
  __swift_project_value_buffer(v0, qword_27ED85F88);
  sub_2437AB73C();
  type metadata accessor for PlayerItem(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856A8, &qword_2437ACE40);
  sub_2437ABABC();
  return sub_2437AB9CC();
}

id PlayerItem.init(avAsset:delegate:)(void *a1, uint64_t a2)
{
  v5 = sub_2437AB5BC();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  sub_2437AB5AC();
  (*(v7 + 32))(&v2[OBJC_IVAR____TtC11CloudAssets10PlayerItem_id], v11, v5);
  *&v2[OBJC_IVAR____TtC11CloudAssets10PlayerItem_resourceLoaderDelegate] = a2;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for PlayerItem(0);
  swift_unknownObjectRetain();
  v12 = objc_msgSendSuper2(&v27, sel_initWithAsset_automaticallyLoadedAssetKeys_, a1, 0);
  v13 = _MergedGlobals_1;
  v14 = v12;
  if (v13 != -1)
  {
    OUTLINED_FUNCTION_0_1(&_MergedGlobals_1);
  }

  v15 = sub_2437AB9DC();
  __swift_project_value_buffer(v15, qword_27ED85F88);
  v16 = sub_2437AB9BC();
  v17 = sub_2437ABCAC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = a1;
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    (*(v7 + 16))(v11, v14 + OBJC_IVAR____TtC11CloudAssets10PlayerItem_id, v5);
    sub_243798F04();
    v20 = sub_2437ABE1C();
    v22 = v21;
    (*(v7 + 8))(v11, v5);
    v23 = sub_243793C54(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_243789000, v16, v17, "initialize PlayerItem with id %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return v14;
}

uint64_t type metadata accessor for PlayerItem(uint64_t a1)
{
  result = qword_27ED85F60;
  if (!qword_27ED85F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2437984C0(void *a1, uint64_t a2)
{
  v4 = sub_2437ABA1C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = dispatch_semaphore_create(0);
  type metadata accessor for PlayerItem.UnsafeSendablePlayerItemBox();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = sub_2437ABBAC();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v16);
  sub_2437ABB8C();
  v17 = v14;

  v18 = a1;
  swift_unknownObjectRetain();
  v19 = sub_2437ABB7C();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v17;
  v20[5] = v15;
  v20[6] = v18;
  v20[7] = a2;
  sub_243791EA0(0, 0, v13, &unk_2437ACDC8, v20);

  sub_2437ABA0C();
  sub_2437ABCEC();
  result = (*(v6 + 8))(v10, v4);
  v23 = *(v15 + 16);
  if (v23)
  {
    v24 = v23;

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2437986D4()
{
  OUTLINED_FUNCTION_15();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  sub_2437ABB8C();
  v0[6] = sub_2437ABB7C();
  v6 = sub_2437ABB3C();

  return MEMORY[0x2822009F8](sub_24379876C, v6, v5);
}

uint64_t sub_24379876C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  v4 = objc_allocWithZone(type metadata accessor for PlayerItem(0));
  v5 = v2;
  swift_unknownObjectRetain();
  v6 = PlayerItem.init(avAsset:delegate:)(v5, v1);
  v7 = *(v3 + 16);
  *(v3 + 16) = v6;

  sub_2437ABCFC();
  OUTLINED_FUNCTION_14();

  return v8();
}

id PlayerItem.__deallocating_deinit()
{
  v1 = sub_2437AB5BC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  if (_MergedGlobals_1 != -1)
  {
    OUTLINED_FUNCTION_0_1(&_MergedGlobals_1);
  }

  v8 = sub_2437AB9DC();
  __swift_project_value_buffer(v8, qword_27ED85F88);
  v9 = v0;
  v10 = sub_2437AB9BC();
  v11 = sub_2437ABCAC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    (*(v3 + 16))(v7, v9 + OBJC_IVAR____TtC11CloudAssets10PlayerItem_id, v1);
    sub_243798F04();
    v14 = sub_2437ABE1C();
    v16 = v15;
    (*(v3 + 8))(v7, v1);
    v17 = sub_243793C54(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_243789000, v10, v11, "deinit PlayerItem with id %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  v18 = type metadata accessor for PlayerItem(0);
  v21.receiver = v9;
  v21.super_class = v18;
  return objc_msgSendSuper2(&v21, sel_dealloc);
}

id sub_243798AE8@<X0>(void *a1@<X8>)
{
  if (_MergedGlobals_1 != -1)
  {
    OUTLINED_FUNCTION_0_1(&_MergedGlobals_1);
  }

  v3 = sub_2437AB9DC();
  __swift_project_value_buffer(v3, qword_27ED85F88);
  v4 = v1;
  v5 = sub_2437AB9BC();
  v6 = sub_2437ABCAC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_2437AB5BC();
    sub_243798F04();
    v9 = sub_2437ABE1C();
    v11 = sub_243793C54(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_243789000, v5, v6, "copy PlayerItem with id %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  v12 = [v4 asset];
  v13 = *&v4[OBJC_IVAR____TtC11CloudAssets10PlayerItem_resourceLoaderDelegate];
  v14 = type metadata accessor for PlayerItem(0);
  objc_allocWithZone(v14);
  swift_unknownObjectRetain();
  result = PlayerItem.init(avAsset:delegate:)(v12, v13);
  a1[3] = v14;
  *a1 = result;
  return result;
}

id PlayerItem.__allocating_init(asset:automaticallyLoadedAssetKeys:)(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = sub_2437ABB0C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v3) initWithAsset:a1 automaticallyLoadedAssetKeys:v5];

  return v6;
}

uint64_t sub_243798DE4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_243798E1C()
{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

unint64_t sub_243798F04()
{
  result = qword_27ED85690;
  if (!qword_27ED85690)
  {
    sub_2437AB5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85690);
  }

  return result;
}

uint64_t sub_243798F80()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_243798FD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243799084;

  return sub_2437986D4();
}

uint64_t sub_243799084()
{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_243799170(uint64_t a1)
{
  result = sub_2437AB5BC();
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

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_243799268()
{
  OUTLINED_FUNCTION_3_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_1(v1);

  return StreamHandle.readAll(in:)();
}

uint64_t sub_243799304()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_45();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_25();
  }

  return v5(v4);
}

uint64_t StreamHandle.readAll(in:)()
{
  OUTLINED_FUNCTION_3_1();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v1[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85678, &qword_2437ACDA0);
  OUTLINED_FUNCTION_6_0();
  v1[10] = v4;
  v1[11] = swift_task_alloc();
  v1[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED85680, &unk_2437ACDA8);
  OUTLINED_FUNCTION_6_0();
  v1[13] = v5;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  OUTLINED_FUNCTION_6_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v1[16] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_4_0(v6);

  return v9(v8);
}

uint64_t sub_2437995F0()
{
  OUTLINED_FUNCTION_45();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  *(v4 + 136) = v0;

  if (v0)
  {
    v5 = sub_243799B54;
  }

  else
  {
    v5 = sub_2437996F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2437996F8()
{
  (*(v0[7] + 8))(v0[6]);
  v0[2] = sub_2437AB56C();
  v0[3] = v1;
  v2 = OUTLINED_FUNCTION_25();
  v3(v2);
  sub_243799BD0(&qword_27ED856B0, &unk_27ED85680, &unk_2437ACDA8, MEMORY[0x277D858E0]);
  sub_2437ABBEC();
  OUTLINED_FUNCTION_2_0(&qword_27ED856B8, &qword_27ED85678, &qword_2437ACDA0);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v0[18] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_2(v4);

  return MEMORY[0x282200308](v6);
}

uint64_t sub_243799828()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[10] + 8))(v3[11], v3[9]);
    sub_2437927B8(v3[2], v3[3]);
    v6 = sub_243799AC0;
  }

  else
  {
    v6 = sub_243799950;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_243799950()
{
  if (v0[5] >> 60 == 15)
  {
    v1 = v0[15];
    v2 = v0[12];
    v3 = v0[13];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v3 + 8))(v1, v2);
    sub_243797F7C(v0[4], v0[5]);
    v4 = v0[2];
    v5 = v0[3];

    v6 = v0[1];

    return v6(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    sub_2437AB58C();
    v8 = OUTLINED_FUNCTION_25();
    sub_243797F7C(v8, v9);
    OUTLINED_FUNCTION_2_0(&qword_27ED856B8, &qword_27ED85678, &qword_2437ACDA0);
    swift_task_alloc();
    OUTLINED_FUNCTION_16_0();
    v0[18] = v10;
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_0_2(v10);

    return MEMORY[0x282200308](v12);
  }
}

uint64_t sub_243799AC0()
{
  OUTLINED_FUNCTION_30();
  (*(v0[13] + 8))(v0[15], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_243799B54()
{
  OUTLINED_FUNCTION_30();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243799BD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of StreamHandle.inputStream(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_6_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v5 + 16) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_4_0(v6);

  return v9(v8);
}

uint64_t sub_243799D60()
{
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t dispatch thunk of StreamHandle.readAll(in:)()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6_0();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_5_1(v2);

  return v5(v3);
}

uint64_t sub_243799F54()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_25();

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_2_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277D858D0];

  return sub_243799BD0(a1, a2, a3, v4);
}

uint64_t sub_24379A104(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_24379A144()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v1[7] = OUTLINED_FUNCTION_43();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C8, &unk_2437ACE90);
  v1[8] = OUTLINED_FUNCTION_43();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = OUTLINED_FUNCTION_43();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D8, qword_2437ACEA0);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = OUTLINED_FUNCTION_43();

  return MEMORY[0x2822009F8](sub_24379A2C8, v0, 0);
}

uint64_t sub_24379A2C8()
{
  v1 = *(v0[5] + 112);
  v0[15] = v1;
  v2 = (*v1 + 112) & 0xFFFFFFFFFFFFLL | 0x42F2000000000000;
  v0[16] = *(*v1 + 112);
  v0[17] = v2;
  return OUTLINED_FUNCTION_0_3(sub_24379A304, v1);
}

uint64_t sub_24379A304()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 40);
  (*(v0 + 128))();

  return MEMORY[0x2822009F8](sub_24379A374, v1, 0);
}

uint64_t sub_24379A374()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_2437ABC3C();
  v4 = (*(v2 + 8))(v1, v3);
  sub_24379A7FC(v4, v5);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_24379A45C;
  v7 = v0[8];

  return MEMORY[0x2822005A8](v7);
}

uint64_t sub_24379A45C()
{
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v3 = v2;

  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_24379A760;
  }

  else
  {
    v5 = sub_24379A564;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24379A564()
{
  v1 = v0[8];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[6]) == 1)
  {
    v2 = (*(v0[13] + 8))(v0[14], v0[12]);
    sub_24379A874(v2, v3, v4);
    swift_allocError();
    swift_willThrow();
LABEL_5:

    OUTLINED_FUNCTION_14();
    goto LABEL_7;
  }

  sub_24379A8C8(v1, v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    v0[3] = *v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85538, qword_2437AD390);
    swift_willThrowTypedImpl();
    (*(v7 + 8))(v6, v8);
    goto LABEL_5;
  }

  v10 = v0[7];
  v11 = v0[4];
  (*(v7 + 8))(v0[14], v0[12]);
  v12 = sub_2437AB91C();
  (*(*(v12 - 8) + 32))(v11, v10, v12);

  OUTLINED_FUNCTION_14();
LABEL_7:

  return v9();
}

uint64_t sub_24379A760()
{
  OUTLINED_FUNCTION_30();
  (*(v0[13] + 8))(v0[14], v0[12]);

  OUTLINED_FUNCTION_14();

  return v1();
}

unint64_t sub_24379A7FC(uint64_t a1, uint64_t a2)
{
  result = qword_27ED856E0;
  if (!qword_27ED856E0)
  {
    type metadata accessor for AssetDownloadCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED856E0);
  }

  return result;
}

unint64_t sub_24379A874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ED856E8;
  if (!qword_27ED856E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED856E8);
  }

  return result;
}

uint64_t sub_24379A8C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24379A938(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_3(sub_24379A954, v1);
}

uint64_t sub_24379A954()
{
  OUTLINED_FUNCTION_30();
  v4 = (*(**(v0[3] + 112) + 128) + **(**(v0[3] + 112) + 128));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24379AA70;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_24379AA70()
{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t AssetDownloadCoordinator.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetDownloadCoordinator.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of AssetDownloadCoordinator.result()()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  v6 = (*(*v0 + 104) + **(*v0 + 104));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243799084;

  return v6(v3);
}

uint64_t dispatch thunk of AssetDownloadCoordinator.receive(signal:)()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  v6 = (*(*v0 + 112) + **(*v0 + 112));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24379AE30;

  return v6(v3);
}

uint64_t sub_24379AE64()
{
  sub_2437ABEAC();
  MEMORY[0x245D3F230](0);
  return sub_2437ABECC();
}

uint64_t sub_24379AEB8(uint64_t a1)
{
  sub_2437ABEAC();
  MEMORY[0x245D3F230](0);
  return sub_2437ABECC();
}

uint64_t sub_24379AEF8()
{
  v0 = sub_2437AB9DC();
  __swift_allocate_value_buffer(v0, qword_27ED861C8);
  v1 = OUTLINED_FUNCTION_42();
  __swift_project_value_buffer(v1, v2);
  sub_2437AB73C();
  type metadata accessor for AssetManager();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85878, &qword_2437AD228);
  sub_2437ABABC();
  return sub_2437AB9CC();
}

uint64_t AssetManager.__allocating_init(serviceIdentifier:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AssetManager.init(serviceIdentifier:)(a1);
  return v2;
}

uint64_t sub_24379B030(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3)
{
  v5 = sub_2437AB76C();
  v6 = OUTLINED_FUNCTION_17(v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v7);
  type metadata accessor for AssetManager();
  v10 = swift_allocObject();
  result = AssetManager.init(serviceIdentifier:)(v9);
  *a3 = v10;
  return result;
}

uint64_t sub_24379B0E4(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t AssetManager.init(serviceIdentifier:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2437AB76C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2437AB75C();
  (*(v6 + 16))(v9, a1, v4);
  v11 = sub_2437AB74C();
  v15 = v10;
  v16 = MEMORY[0x277CFA810];
  *&v14 = v11;
  (*(v6 + 8))(a1, v4);
  sub_24379B248(&v14, v2 + 16);
  return v2;
}

uint64_t sub_24379B248(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24379B260()
{
  OUTLINED_FUNCTION_15();
  v0[5] = v1;
  v0[6] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v0[7] = v3;
  OUTLINED_FUNCTION_17(v3);
  v0[8] = OUTLINED_FUNCTION_43();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857D0, &qword_2437AD158);
  v0[9] = v4;
  OUTLINED_FUNCTION_5(v4);
  v0[10] = v5;
  v0[11] = OUTLINED_FUNCTION_43();
  v6 = sub_2437AB91C();
  v0[12] = v6;
  OUTLINED_FUNCTION_5(v6);
  v0[13] = v7;
  v0[14] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857A0, &qword_2437AD010);
  v0[15] = v8;
  OUTLINED_FUNCTION_5(v8);
  v0[16] = v9;
  v0[17] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857D8, &qword_2437AD160);
  OUTLINED_FUNCTION_17(v10);
  v0[18] = OUTLINED_FUNCTION_43();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857E0, &qword_2437AD168);
  v0[19] = v11;
  OUTLINED_FUNCTION_5(v11);
  v0[20] = v12;
  v0[21] = OUTLINED_FUNCTION_43();
  v13 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_24379B468()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85780, &qword_2437AD000);
  sub_2437ABC3C();
  v1 = *MEMORY[0x277CFA968];
  *(v0 + 184) = *MEMORY[0x277CFA970];
  *(v0 + 188) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 176) = v2;
  *v2 = v3;
  v2[1] = sub_24379B53C;
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v4);
}

uint64_t sub_24379B53C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24379B940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_43_0();
  (*(v12[20] + 8))(v12[21], v12[19]);
  v12[3] = v12[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  sub_2437ABC2C();
  v12[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_112();
  sub_2437ABC2C();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_33_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t AssetManager.process(request:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v1[6] = v4;
  OUTLINED_FUNCTION_17(v4);
  v1[7] = OUTLINED_FUNCTION_43();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C8, &unk_2437ACE90);
  OUTLINED_FUNCTION_17(v5);
  v1[8] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D8, qword_2437ACEA0);
  v1[9] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  v1[12] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_43();
  v10 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v1[6] = v4;
  OUTLINED_FUNCTION_17(v4);
  v1[7] = OUTLINED_FUNCTION_43();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C8, &unk_2437ACE90);
  OUTLINED_FUNCTION_17(v5);
  v1[8] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D8, qword_2437ACEA0);
  v1[9] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  v1[12] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_43();
  v10 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85730, &qword_2437ACFB0);
  v1[7] = v4;
  OUTLINED_FUNCTION_17(v4);
  v1[8] = OUTLINED_FUNCTION_43();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85738, &qword_2437ACFB8);
  OUTLINED_FUNCTION_17(v5);
  v1[9] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85740, &qword_2437ACFC0);
  v1[10] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85728, &qword_2437ACF98);
  v1[13] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_43();
  v10 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24379BBB4()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856F0, &qword_2437ACF60);
  OUTLINED_FUNCTION_97();
  sub_2437AB77C();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_13_1();
  *(v0 + 120) = v1;
  v2 = OUTLINED_FUNCTION_8_1(v1, xmmword_2437ACF30);
  v3(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 128) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_92(v4);
  OUTLINED_FUNCTION_111();

  return AssetManager.process(requests:)();
}

uint64_t sub_24379BCC0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  OUTLINED_FUNCTION_20_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_12();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24379BDC4()
{
  OUTLINED_FUNCTION_15();
  sub_2437ABC3C();
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 144) = v1;
  *v1 = v2;
  v1[1] = sub_24379BE64;
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v3);
}

uint64_t sub_24379BE64()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24379BF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_10_1();
  if (v30)
  {
    (*(v12[10] + 8))(v12[11], v12[9]);
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4(&_MergedGlobals_2);
    }

    v13 = sub_2437AB9DC();
    OUTLINED_FUNCTION_75_0(v13, qword_27ED861C8);
    v14 = sub_2437AB9BC();
    v15 = sub_2437ABC9C();
    if (OUTLINED_FUNCTION_51_0(v15))
    {
      *OUTLINED_FUNCTION_122() = 0;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_29_0();
    }

    sub_24379A874(v21, v22, v23);
    OUTLINED_FUNCTION_65_0(&type metadata for AssetManager.AssetError);
    swift_willThrow();
    v24 = OUTLINED_FUNCTION_64_0();
    v25(v24);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_26_0();
    sub_2437A65EC(v26, v27, v28, v29);
    OUTLINED_FUNCTION_58_0();
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_110();
    if (!v30)
    {
      v35 = OUTLINED_FUNCTION_55_0();
      v36(v35);
      v37 = OUTLINED_FUNCTION_50_0();
      v38(v37);
      sub_2437AB91C();
      OUTLINED_FUNCTION_16_1();
      v39 = OUTLINED_FUNCTION_88();
      v40(v39);

      OUTLINED_FUNCTION_11_0();
      goto LABEL_12;
    }

    swift_willThrow();
    v31 = OUTLINED_FUNCTION_55_0();
    v32(v31);
    v33 = OUTLINED_FUNCTION_50_0();
    v34(v33);
  }

  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_14();
LABEL_12:
  OUTLINED_FUNCTION_33_0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_24379C18C()
{
  OUTLINED_FUNCTION_30();

  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_24379C20C()
{
  OUTLINED_FUNCTION_30();
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = OUTLINED_FUNCTION_28();
  v2(v1);
  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t AssetManager.process(requests:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856F8, &qword_2437ACF70);
  v1[6] = v4;
  OUTLINED_FUNCTION_5(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_43();
  v6 = sub_2437AB7CC();
  v1[9] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  v1[12] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_43();
  v10 = sub_2437ABBAC();
  v1[15] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_43();
  v12 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_30();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856F8, &qword_2437ACF70);
  v0[3] = v2;
  OUTLINED_FUNCTION_5(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_43();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85728, &qword_2437ACF98);
  v0[6] = v4;
  OUTLINED_FUNCTION_5(v4);
  v0[7] = v5;
  v0[8] = OUTLINED_FUNCTION_43();
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v0[9] = v6;
  *v6 = v7;
  v6[1] = sub_24379D25C;

  return AssetManager.process(requests:)();
}

{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85748, &qword_2437ACFC8);
  v1[6] = v4;
  OUTLINED_FUNCTION_5(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85750, &qword_2437ACFD0);
  v1[9] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85758, &qword_2437ACFD8);
  v1[12] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_43();
  v10 = sub_2437AB83C();
  v1[15] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_43();
  v12 = sub_2437ABBAC();
  v1[18] = v12;
  OUTLINED_FUNCTION_5(v12);
  v1[19] = v13;
  v1[20] = OUTLINED_FUNCTION_43();
  v14 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[5] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856F8, &qword_2437ACF70);
  v1[6] = v3;
  OUTLINED_FUNCTION_5(v3);
  v1[7] = v4;
  v1[8] = OUTLINED_FUNCTION_43();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  OUTLINED_FUNCTION_17(v5);
  v1[9] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85770, &qword_2437ACFF0);
  v1[10] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85778, &qword_2437ACFF8);
  v1[13] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85780, &qword_2437AD000);
  v1[16] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_43();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85788, &qword_2437AD008);
  v1[19] = v12;
  OUTLINED_FUNCTION_5(v12);
  v1[20] = v13;
  v1[21] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  v1[22] = v14;
  OUTLINED_FUNCTION_5(v14);
  v1[23] = v15;
  v1[24] = OUTLINED_FUNCTION_43();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85798, &unk_2437AD300);
  v1[25] = v16;
  OUTLINED_FUNCTION_5(v16);
  v1[26] = v17;
  v1[27] = OUTLINED_FUNCTION_78_0();
  v1[28] = swift_task_alloc();
  v18 = sub_2437AB7CC();
  v1[29] = v18;
  OUTLINED_FUNCTION_5(v18);
  v1[30] = v19;
  v1[31] = OUTLINED_FUNCTION_43();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  v1[32] = v20;
  OUTLINED_FUNCTION_5(v20);
  v1[33] = v21;
  v1[34] = OUTLINED_FUNCTION_43();
  v22 = sub_2437ABBAC();
  v1[35] = v22;
  OUTLINED_FUNCTION_5(v22);
  v1[36] = v23;
  v1[37] = OUTLINED_FUNCTION_43();
  v24 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  OUTLINED_FUNCTION_17(v3);
  v1[5] = OUTLINED_FUNCTION_43();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  v1[6] = v4;
  OUTLINED_FUNCTION_5(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_78_0();
  v1[9] = swift_task_alloc();
  v6 = sub_2437ABBAC();
  v1[10] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_43();
  v8 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_24379C6BC()
{
  OUTLINED_FUNCTION_30();
  v2 = *v1;
  OUTLINED_FUNCTION_20_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24379C818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_69_0();
  v15 = v14[14];
  v32 = v14[17];
  v33 = v14[11];
  v17 = v14[7];
  v16 = v14[8];
  v19 = v14[5];
  v18 = v14[6];
  v20 = swift_task_alloc();
  *(v20 + 16) = v15;
  *(v20 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  (*(v17 + 104))(v16, *MEMORY[0x277D858A0], v18);
  sub_2437ABC6C();

  v21 = OUTLINED_FUNCTION_93();
  v22(v21);

  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_19_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_24379C940()
{
  OUTLINED_FUNCTION_30();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_24379CB30()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85720, &qword_2437ACF88);
  OUTLINED_FUNCTION_97();
  sub_2437AB7BC();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_13_1();
  *(v0 + 120) = v1;
  v2 = OUTLINED_FUNCTION_8_1(v1, xmmword_2437ACF30);
  v3(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 128) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_92(v4);
  OUTLINED_FUNCTION_111();

  return AssetManager.process(requests:)();
}

uint64_t sub_24379CC3C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  OUTLINED_FUNCTION_20_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_12();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24379CD40()
{
  OUTLINED_FUNCTION_15();
  sub_2437ABC3C();
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 144) = v1;
  *v1 = v2;
  v1[1] = sub_24379CDE0;
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v3);
}

uint64_t sub_24379CDE0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24379CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_10_1();
  if (v30)
  {
    (*(v12[10] + 8))(v12[11], v12[9]);
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4(&_MergedGlobals_2);
    }

    v13 = sub_2437AB9DC();
    OUTLINED_FUNCTION_75_0(v13, qword_27ED861C8);
    v14 = sub_2437AB9BC();
    v15 = sub_2437ABC9C();
    if (OUTLINED_FUNCTION_51_0(v15))
    {
      *OUTLINED_FUNCTION_122() = 0;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_29_0();
    }

    sub_24379A874(v21, v22, v23);
    OUTLINED_FUNCTION_65_0(&type metadata for AssetManager.AssetError);
    swift_willThrow();
    v24 = OUTLINED_FUNCTION_64_0();
    v25(v24);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_26_0();
    sub_2437A65EC(v26, v27, v28, v29);
    OUTLINED_FUNCTION_58_0();
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_110();
    if (!v30)
    {
      v35 = OUTLINED_FUNCTION_55_0();
      v36(v35);
      v37 = OUTLINED_FUNCTION_50_0();
      v38(v37);
      sub_2437AB91C();
      OUTLINED_FUNCTION_16_1();
      v39 = OUTLINED_FUNCTION_88();
      v40(v39);

      OUTLINED_FUNCTION_11_0();
      goto LABEL_12;
    }

    swift_willThrow();
    v31 = OUTLINED_FUNCTION_55_0();
    v32(v31);
    v33 = OUTLINED_FUNCTION_50_0();
    v34(v33);
  }

  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_14();
LABEL_12:
  OUTLINED_FUNCTION_33_0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_24379D25C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_20_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24379D358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_43_0();
  v13 = v12[8];
  v14 = v12[5];
  v15 = v12[3];
  v16 = v12[4];
  *(swift_task_alloc() + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  (*(v16 + 104))(v14, *MEMORY[0x277D858A0], v15);
  OUTLINED_FUNCTION_88();
  sub_2437ABC6C();

  v17 = OUTLINED_FUNCTION_28();
  v18(v17);

  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_33_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_24379D460()
{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_24379D630()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85720, &qword_2437ACF88);
  OUTLINED_FUNCTION_97();
  sub_2437AB7BC();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_13_1();
  *(v0 + 128) = v1;
  v2 = OUTLINED_FUNCTION_8_1(v1, xmmword_2437ACF30);
  v3(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 136) = v4;
  *v4 = v5;
  v4[1] = sub_24379D74C;
  OUTLINED_FUNCTION_111();

  return AssetManager.process(requests:)();
}

uint64_t sub_24379D74C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  OUTLINED_FUNCTION_20_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_12();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24379D850()
{
  OUTLINED_FUNCTION_15();
  sub_2437ABC3C();
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 152) = v1;
  *v1 = v2;
  v1[1] = sub_24379D8F0;
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v3);
}

uint64_t sub_24379D8F0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24379D9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_10_1();
  if (v13)
  {
    (*(*(v12 + 88) + 8))(*(v12 + 96), *(v12 + 80));
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4(&_MergedGlobals_2);
    }

    v14 = sub_2437AB9DC();
    OUTLINED_FUNCTION_75_0(v14, qword_27ED861C8);
    v15 = sub_2437AB9BC();
    v16 = sub_2437ABC9C();
    if (OUTLINED_FUNCTION_51_0(v16))
    {
      *OUTLINED_FUNCTION_122() = 0;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_29_0();
    }

    sub_24379A874(v22, v23, v24);
    OUTLINED_FUNCTION_65_0(&type metadata for AssetManager.AssetError);
    swift_willThrow();
    v25 = OUTLINED_FUNCTION_64_0();
    v26(v25);
    goto LABEL_10;
  }

  v27 = OUTLINED_FUNCTION_26_0();
  sub_2437A65EC(v27, v28, v29, v30);
  OUTLINED_FUNCTION_58_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *(v12 + 24) = **(v12 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85538, qword_2437AD390);
    swift_willThrowTypedImpl();
    v32 = OUTLINED_FUNCTION_93();
    v33(v32);
    v34 = OUTLINED_FUNCTION_64_0();
    v35(v34);
LABEL_10:
    OUTLINED_FUNCTION_99();

    OUTLINED_FUNCTION_14();
    goto LABEL_12;
  }

  v36 = OUTLINED_FUNCTION_93();
  v37(v36);
  v38 = OUTLINED_FUNCTION_64_0();
  v39(v38);
  sub_2437AB81C();
  OUTLINED_FUNCTION_16_1();
  v40 = OUTLINED_FUNCTION_87();
  v41(v40);

  OUTLINED_FUNCTION_11_0();
LABEL_12:
  OUTLINED_FUNCTION_33_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_24379DC58()
{
  OUTLINED_FUNCTION_30();

  OUTLINED_FUNCTION_99();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_24379DCD8()
{
  OUTLINED_FUNCTION_30();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = OUTLINED_FUNCTION_28();
  v2(v1);
  OUTLINED_FUNCTION_99();

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_24379E20C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_20_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24379E308()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[7];
    v27 = v0[6];
    v28 = MEMORY[0x277D84F90];
    sub_2437A65CC(0, v2, 0);
    v3 = v28;
    v26 = sub_2437AB7BC();
    v5 = *(v26 - 8);
    v24 = *(v5 + 16);
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v24(v0[8] + *(v27 + 48), v6, v26);
      sub_2437AB78C();
      v9 = *(v28 + 16);
      v8 = *(v28 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2437A65CC((v8 > 1), v9 + 1, 1);
      }

      v10 = v0[8];
      *(v28 + 16) = v9 + 1;
      sub_2437A65EC(v10, v28 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, &qword_27ED85748, &qword_2437ACFC8);
      v6 += v7;
      --v2;
    }

    while (v2);
    v1 = v0[3];
  }

  v11 = v0[16];
  v12 = v0[14];
  v22 = v0[15];
  v23 = v0[17];
  v13 = v0[13];
  v25 = v0[12];
  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[5];
  v21 = v0[9];
  v17 = sub_24379F598(v3);
  v18 = swift_task_alloc();
  v18[2] = v12;
  v18[3] = v17;
  v18[4] = v1;
  v18[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85730, &qword_2437ACFB0);
  (*(v15 + 104))(v14, *MEMORY[0x277D858A0], v21);
  OUTLINED_FUNCTION_88();
  sub_2437ABC6C();

  (*(v11 + 8))(v23, v22);

  (*(v13 + 8))(v12, v25);

  OUTLINED_FUNCTION_11_0();

  return v19();
}

uint64_t sub_24379E5B8()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_111();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_24379E664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_90();
  v39 = v4;
  v40 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v38 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  OUTLINED_FUNCTION_17(v23);
  OUTLINED_FUNCTION_66_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_82_0();
  sub_2437ABBAC();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  (*(v17 + 16))(v22, v7, v15);
  v29 = OUTLINED_FUNCTION_70_0();
  v30(v29, v39, v8);
  v31 = (v19 + *(v10 + 80) + ((*(v17 + 80) + 32) & ~*(v17 + 80))) & ~*(v10 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  OUTLINED_FUNCTION_114();
  v33();
  (*(v10 + 32))(v32 + v31, v38, v8);
  *(v32 + ((v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v40;
  v34 = OUTLINED_FUNCTION_46_0();
  sub_24379F308(v34, v35, v3, v36, v32);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_24379E8D0()
{
  OUTLINED_FUNCTION_15();
  v0[3] = v1;
  v0[4] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v0[5] = v3;
  OUTLINED_FUNCTION_17(v3);
  v0[6] = OUTLINED_FUNCTION_43();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857D0, &qword_2437AD158);
  v0[7] = v4;
  OUTLINED_FUNCTION_5(v4);
  v0[8] = v5;
  v0[9] = OUTLINED_FUNCTION_43();
  v6 = sub_2437AB91C();
  v0[10] = v6;
  OUTLINED_FUNCTION_5(v6);
  v0[11] = v7;
  v0[12] = OUTLINED_FUNCTION_78_0();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857A0, &qword_2437AD010);
  v0[15] = v8;
  OUTLINED_FUNCTION_5(v8);
  v0[16] = v9;
  v0[17] = OUTLINED_FUNCTION_78_0();
  v0[18] = swift_task_alloc();
  v10 = sub_2437AB82C();
  v0[19] = v10;
  OUTLINED_FUNCTION_5(v10);
  v0[20] = v11;
  v0[21] = OUTLINED_FUNCTION_43();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85800, &qword_2437AD198);
  OUTLINED_FUNCTION_17(v12);
  v0[22] = OUTLINED_FUNCTION_43();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85808, &qword_2437AD1A0);
  v0[23] = v13;
  OUTLINED_FUNCTION_5(v13);
  v0[24] = v14;
  v0[25] = OUTLINED_FUNCTION_43();
  v15 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_24379EB48()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  sub_2437ABC3C();
  v1 = *MEMORY[0x277CFA970];
  v2 = MEMORY[0x277CFA968];
  *(v0 + 216) = *MEMORY[0x277CFA868];
  *(v0 + 220) = v1;
  *(v0 + 224) = *v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 208) = v3;
  *v3 = v4;
  v3[1] = sub_24379EC2C;
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v5);
}

uint64_t sub_24379EC2C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24379F230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_69_0();
  v15 = *(v14 + 200);
  OUTLINED_FUNCTION_76_0();
  v28 = v16;
  (*(v17 + 8))(v15);
  v27 = *(v14 + 16);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_19_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t sub_24379F308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2437A724C(a3, v21 - v9, &qword_27ED85508, &qword_2437AC820);
  v11 = sub_2437ABBAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_243797E50(v10, &qword_27ED85508, &qword_2437AC820);
  }

  else
  {
    sub_2437ABB9C();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_2437ABB3C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_2437ABACC() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_243797E50(a3, &qword_27ED85508, &qword_2437AC820);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_243797E50(a3, &qword_27ED85508, &qword_2437AC820);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_24379F598(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85860, &qword_2437AD1F0);
    v1 = sub_2437ABDCC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_2437A5938(v2, 1, &v4);

  return v4;
}

void sub_24379F64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_90();
  v50 = v5;
  v51 = v6;
  v48 = v7;
  v49 = v8;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
  v46 = v11;
  OUTLINED_FUNCTION_5_2();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v47 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85758, &qword_2437ACFD8);
  v45 = v19;
  OUTLINED_FUNCTION_5_2();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v26 = &v44 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  OUTLINED_FUNCTION_17(v27);
  OUTLINED_FUNCTION_66_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_82_0();
  sub_2437ABBAC();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = OUTLINED_FUNCTION_70_0();
  v34(v33, v10, v19);
  (*(v13 + 16))(v18, v48, v11);
  v35 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v36 = (v23 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (*(v13 + 80) + v36 + 8) & ~*(v13 + 80);
  v38 = (v15 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  (*(v21 + 32))(v39 + v35, v26, v45);
  *(v39 + v36) = v49;
  (*(v13 + 32))(v39 + v37, v47, v46);
  v40 = v51;
  *(v39 + v38) = v50;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;

  v41 = OUTLINED_FUNCTION_46_0();
  sub_243791EA0(v41, v42, v4, v43, v39);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_24379F8F8()
{
  OUTLINED_FUNCTION_15();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v5 = sub_2437AB85C();
  v0[9] = v5;
  OUTLINED_FUNCTION_5(v5);
  v0[10] = v6;
  v0[11] = OUTLINED_FUNCTION_78_0();
  v0[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85730, &qword_2437ACFB0);
  v0[13] = v7;
  OUTLINED_FUNCTION_17(v7);
  v0[14] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85820, &qword_2437AD1C0);
  v0[15] = v8;
  OUTLINED_FUNCTION_5(v8);
  v0[16] = v9;
  v0[17] = OUTLINED_FUNCTION_43();
  v10 = sub_2437AB5BC();
  v0[18] = v10;
  OUTLINED_FUNCTION_5(v10);
  v0[19] = v11;
  v0[20] = OUTLINED_FUNCTION_43();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85828, &qword_2437AD1C8);
  OUTLINED_FUNCTION_17(v12);
  v0[21] = OUTLINED_FUNCTION_43();
  v13 = sub_2437ABBAC();
  v0[22] = v13;
  OUTLINED_FUNCTION_5(v13);
  v0[23] = v14;
  v0[24] = OUTLINED_FUNCTION_43();
  v15 = sub_2437AB52C();
  v0[25] = v15;
  OUTLINED_FUNCTION_5(v15);
  v0[26] = v16;
  v0[27] = OUTLINED_FUNCTION_78_0();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v17 = sub_2437AB81C();
  v0[31] = v17;
  OUTLINED_FUNCTION_5(v17);
  v0[32] = v18;
  v0[33] = OUTLINED_FUNCTION_78_0();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85830, &qword_2437AD1D0);
  v0[36] = v19;
  OUTLINED_FUNCTION_5(v19);
  v0[37] = v20;
  v0[38] = OUTLINED_FUNCTION_78_0();
  v0[39] = swift_task_alloc();
  v21 = sub_2437AB84C();
  v0[40] = v21;
  OUTLINED_FUNCTION_5(v21);
  v0[41] = v22;
  v0[42] = OUTLINED_FUNCTION_43();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85838, &qword_2437AD1D8);
  OUTLINED_FUNCTION_17(v23);
  v0[43] = OUTLINED_FUNCTION_43();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85840, &qword_2437AD1E0);
  v0[44] = v24;
  OUTLINED_FUNCTION_5(v24);
  v0[45] = v25;
  v0[46] = OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_24379FD30()
{
  OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85758, &qword_2437ACFD8);
  sub_2437ABC3C();
  *(v0 + 384) = *MEMORY[0x277CFA8C8];
  *(v0 + 388) = *MEMORY[0x277CFA8C0];
  v1 = MEMORY[0x277CFA968];
  *(v0 + 392) = *MEMORY[0x277CFA970];
  *(v0 + 396) = *v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 376) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_34_0(v2);
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v4);
}

uint64_t sub_24379FE44()
{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_24379FF70(uint64_t a1)
{
  v264 = v1;
  v2 = v1;
  v263[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_1();
  if (v3)
  {
    v4 = (*(v1 + 360) + 8);
    v5 = (v1 + 368);
    v6 = (v1 + 352);
    goto LABEL_4;
  }

  v9 = *(v1 + 384);
  v10 = OUTLINED_FUNCTION_47_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_58_0();
  v14 = v13(v12);
  if (v14 != v9)
  {
    if (v14 == *(v2 + 97))
    {
      v56 = OUTLINED_FUNCTION_85();
      v57(v56);
      v58 = OUTLINED_FUNCTION_12_0();
      v59(v58);
      if (_MergedGlobals_2 != -1)
      {
        OUTLINED_FUNCTION_0_4(&_MergedGlobals_2);
      }

      v60 = v2[10];
      v61 = sub_2437AB9DC();
      __swift_project_value_buffer(v61, qword_27ED861C8);
      v62 = *(v60 + 16);
      v63 = OUTLINED_FUNCTION_12_0();
      v62(v63);
      v64 = sub_2437AB9BC();
      v65 = sub_2437ABC9C();
      v66 = OUTLINED_FUNCTION_51_0(v65);
      v68 = v2[10];
      v67 = v2[11];
      v69 = v2[9];
      if (v66)
      {
        v70 = OUTLINED_FUNCTION_14_0();
        v259 = OUTLINED_FUNCTION_123();
        *v70 = 138412290;
        OUTLINED_FUNCTION_9_1();
        sub_2437A7208(v71, v72);
        OUTLINED_FUNCTION_65_0(v69);
        v261 = v2;
        (v62)(v73, v67, v69);
        v74 = _swift_stdlib_bridgeErrorToNSError();
        v75 = *(v68 + 8);
        v76 = OUTLINED_FUNCTION_36_0();
        v75(v76);
        *(v70 + 4) = v74;
        *v259 = v74;
        v2 = v261;
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
        sub_243797E50(v259, &qword_27ED85560, &qword_2437ACC80);
        OUTLINED_FUNCTION_9_0();
        OUTLINED_FUNCTION_29_0();
      }

      else
      {

        v75 = *(v68 + 8);
        v119 = OUTLINED_FUNCTION_36_0();
        v75(v119);
      }

      OUTLINED_FUNCTION_9_1();
      sub_2437A7208(v120, v121);
      v122 = OUTLINED_FUNCTION_112();
      v123 = OUTLINED_FUNCTION_65_0(v122);
      OUTLINED_FUNCTION_103();
      (v62)();
      v2[3] = v123;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
      sub_2437ABC2C();
      v124 = OUTLINED_FUNCTION_26_0();
      v75(v124);
      goto LABEL_47;
    }

    v107 = 191;
    goto LABEL_32;
  }

  v15 = *(v2 + 98);
  v16 = v2[42];
  v17 = OUTLINED_FUNCTION_85();
  v18(v17);
  v19 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85848, &qword_2437AD1E8) + 48));
  v21 = *v19;
  v20 = v19[1];
  OUTLINED_FUNCTION_71_0();
  v22 = OUTLINED_FUNCTION_42();
  v23(v22);
  v24 = OUTLINED_FUNCTION_25();
  v25(v24);
  v26 = OUTLINED_FUNCTION_94();
  v28 = v27(v26);
  if (v28 != v15)
  {
    if (v28 == *(v2 + 99))
    {

      if (_MergedGlobals_2 != -1)
      {
        OUTLINED_FUNCTION_0_4(&_MergedGlobals_2);
      }

      v82 = v2[8];
      v83 = sub_2437AB9DC();
      OUTLINED_FUNCTION_75_0(v83, qword_27ED861C8);

      v84 = sub_2437AB9BC();
      v85 = sub_2437ABC9C();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = v2[8];
        OUTLINED_FUNCTION_14_0();
        v87 = OUTLINED_FUNCTION_73_0();
        v263[0] = v87;
        *v82 = 136315138;
        v88 = sub_2437AB7BC();
        v89 = MEMORY[0x245D3EEA0](v86, v88);
        v91 = sub_243793C54(v89, v90, v263);

        *(v82 + 4) = v91;
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v92, v93, v94, v95, v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_29_0();
      }

      v97 = v2;
      v98 = v2[14];
      sub_24379A874(v99, v100, v101);
      *v98 = OUTLINED_FUNCTION_65_0(&type metadata for AssetManager.AssetError);
      OUTLINED_FUNCTION_87();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
      v2 = v97;
      sub_2437ABC1C();
      v102 = OUTLINED_FUNCTION_36_0();
      v103(v102);
      v104 = OUTLINED_FUNCTION_26_0();
      goto LABEL_46;
    }

    v107 = 185;
LABEL_32:
    v233 = v107;
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_44_0(v125, v126, v127, v128, v129, v130, v131, v132, v233, 0);
    OUTLINED_FUNCTION_115();
    return;
  }

  v29 = OUTLINED_FUNCTION_85();
  v30(v29);
  v31 = OUTLINED_FUNCTION_12_0();
  v32(v31);
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_0_4(&_MergedGlobals_2);
  }

  v243 = sub_2437AB9DC();
  __swift_project_value_buffer(v243, qword_27ED861C8);
  v33 = OUTLINED_FUNCTION_12_0();
  v248 = v34;
  (v34)(v33);
  v35 = sub_2437AB9BC();
  v36 = sub_2437ABCAC();
  v253 = v20;
  v245 = v21;
  if (os_log_type_enabled(v35, v36))
  {
    v241 = v36;
    v37 = v2[30];
    v260 = v35;
    v39 = v2[25];
    v38 = v2[26];
    v237 = v2[23];
    v234 = v2[24];
    log = v2[22];
    v40 = OUTLINED_FUNCTION_98();
    v263[0] = swift_slowAlloc();
    *v40 = 136315394;
    sub_2437AB80C();
    OUTLINED_FUNCTION_38_0();
    sub_2437A7208(v41, v42);
    v43 = sub_2437ABE1C();
    v44 = v2;
    v46 = v45;
    (*(v38 + 8))(v37, v39);
    v47 = OUTLINED_FUNCTION_93();
    v258 = v48;
    v48(v47);
    v49 = sub_243793C54(v43, v46, v263);
    v2 = v44;

    *(v40 + 4) = v49;
    *(v40 + 12) = 2080;
    sub_2437ABBDC();
    OUTLINED_FUNCTION_2_1();
    sub_2437A7208(v50, v51);
    v52 = sub_2437ABE1C();
    v54 = v53;
    (*(v237 + 8))(v234, log);
    v55 = sub_243793C54(v52, v54, v263);

    *(v40 + 14) = v55;
    _os_log_impl(&dword_243789000, v260, v241, "successfully downloaded asset at %s with priority %s", v40, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {

    v108 = OUTLINED_FUNCTION_93();
    v258 = v109;
    v109(v108);
  }

  v110 = v2[6];
  sub_2437AB7DC();
  if (*(v110 + 16))
  {
    v111 = sub_2437A5E74(v2[20]);
    v112 = v2[21];
    if (v113)
    {
      v114 = v111;
      v115 = *(v2[6] + 56);
      v116 = sub_2437AB7BC();
      (*(*(v116 - 8) + 16))(v112, v115 + *(*(v116 - 8) + 72) * v114, v116);
      v117 = v112;
      v118 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v112 = v2[21];
  }

  v116 = sub_2437AB7BC();
  v117 = v112;
  v118 = 1;
LABEL_35:
  __swift_storeEnumTagSinglePayload(v117, v118, 1, v116);
  (*(v2[19] + 8))(v2[20], v2[18]);
  sub_2437AB7BC();
  OUTLINED_FUNCTION_95();
  if (v3)
  {
    v133 = v2[21];
    v134 = v2[14];

    v135 = sub_243797E50(v133, &qword_27ED85828, &qword_2437AD1C8);
    sub_24379A874(v135, v136, v137);
    *v134 = OUTLINED_FUNCTION_65_0(&type metadata for AssetManager.AssetError);
    OUTLINED_FUNCTION_36_0();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
    OUTLINED_FUNCTION_113();
    sub_2437ABC1C();
    v138 = OUTLINED_FUNCTION_26_0();
    v139(v138);
    v140 = sub_2437AB9BC();
    v141 = sub_2437ABC9C();
    v142 = os_log_type_enabled(v140, v141);
    v143 = v2[45];
    if (v142)
    {
      v144 = OUTLINED_FUNCTION_122();
      *v144 = 0;
      _os_log_impl(&dword_243789000, v140, v141, "invalid request id", v144, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    v145 = OUTLINED_FUNCTION_36_0();
    v258(v145);
    v176 = OUTLINED_FUNCTION_28();
    v177(v176);
    v4 = (v143 + 8);
    v5 = v2 + 46;
    v6 = v2 + 44;
LABEL_4:
    (*v4)(*v5, *v6);

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_115();

    __asm { BRAA            X1, X16 }
  }

  v146 = v2[35];
  v147 = v2[33];
  v148 = v2[31];
  v149 = v2[29];
  v262 = v2;
  v150 = v2[27];
  v151 = v2[26];
  v152 = v2[25];
  sub_2437AB7AC();
  v153 = OUTLINED_FUNCTION_28();
  v154(v153);
  v155 = OUTLINED_FUNCTION_104();
  v156(v155);
  v248(v147, v146, v148);
  (*(v151 + 16))(v150, v149, v152);
  v157 = sub_2437AB9BC();
  v158 = sub_2437ABCAC();
  if (os_log_type_enabled(v157, v158))
  {
    v238 = v2[27];
    v160 = v2[25];
    v161 = v2[26];
    v162 = OUTLINED_FUNCTION_98();
    v263[0] = swift_slowAlloc();
    *v162 = 136315394;
    v239 = v158;
    sub_2437AB80C();
    OUTLINED_FUNCTION_38_0();
    sub_2437A7208(v163, v164);
    v165 = sub_2437ABE1C();
    v167 = v166;
    v168 = *(v161 + 8);
    v169 = OUTLINED_FUNCTION_26_0();
    v168(v169);
    v170 = OUTLINED_FUNCTION_36_0();
    v258(v170);
    v171 = sub_243793C54(v165, v167, v263);
    v2 = v262;

    *(v162 + 4) = v171;
    *(v162 + 12) = 2080;
    sub_2437ABE1C();
    (v168)(v238, v160);
    v172 = OUTLINED_FUNCTION_28();
    v175 = sub_243793C54(v172, v173, v174);

    *(v162 + 14) = v175;
    _os_log_impl(&dword_243789000, v157, v239, "moving file from %s to %s", v162, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {
    v178 = v2[26];

    v179 = *(v178 + 8);
    v160 = v178 + 8;
    v168 = v179;
    v180 = OUTLINED_FUNCTION_28();
    v179(v180);
    v181 = OUTLINED_FUNCTION_36_0();
    v258(v181);
  }

  sub_2437ABACC();
  v182 = sandbox_extension_consume();

  v242 = v168;
  if (v182 < 0)
  {

    v198 = sub_2437AB9BC();
    v199 = sub_2437ABC9C();

    if (os_log_type_enabled(v198, v199))
    {
      OUTLINED_FUNCTION_14_0();
      v200 = OUTLINED_FUNCTION_73_0();
      v263[0] = v200;
      *v160 = 136315138;
      v201 = sub_243793C54(v245, v253, v263);

      *(v160 + 4) = v201;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v202, v203, v204, v205, v206, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v200);
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_29_0();
    }

    else
    {
    }

    v217 = v2[45];
    v256 = v2[44];
    v257 = v2[46];
    v218 = v2[37];
    v250 = v2[36];
    v252 = v2[39];
    v219 = v2[25];
    v220 = v2[29];
    sub_24379A874(v207, v208, v209);
    v215 = OUTLINED_FUNCTION_65_0(&type metadata for AssetManager.AssetError);
    swift_willThrow();
    v242(v220, v219);
    v221 = OUTLINED_FUNCTION_62_0();
    v258(v221);
    (*(v218 + 8))(v252, v250);
    (*(v217 + 8))(v257, v256);
    goto LABEL_55;
  }

  v183 = [objc_opt_self() defaultManager];
  sub_2437AB80C();
  v184 = sub_2437AB4DC();
  v185 = OUTLINED_FUNCTION_64_0();
  v168(v185);
  v186 = sub_2437AB4DC();
  v262[4] = 0;
  v187 = [v183 moveItemAtURL:v184 toURL:v186 error:v262 + 4];

  v188 = v262[4];
  if (!v187)
  {
    v210 = v262[45];
    v251 = v262[44];
    v255 = v262[46];
    v211 = v262[37];
    v247 = v262[36];
    v249 = v262[39];
    v212 = v262[29];
    v213 = v262[25];
    v214 = v188;
    v215 = sub_2437AB4BC();

    swift_willThrow();
    v242(v212, v213);
    v216 = OUTLINED_FUNCTION_62_0();
    v258(v216);
    (*(v211 + 8))(v249, v247);
    (*(v210 + 8))(v255, v251);
LABEL_55:
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4(&_MergedGlobals_2);
    }

    OUTLINED_FUNCTION_75_0(v243, qword_27ED861C8);
    v222 = v215;
    v223 = sub_2437AB9BC();
    v224 = sub_2437ABC9C();

    if (os_log_type_enabled(v223, v224))
    {
      v225 = OUTLINED_FUNCTION_14_0();
      v226 = OUTLINED_FUNCTION_123();
      *v225 = 138412290;
      v227 = v215;
      v228 = _swift_stdlib_bridgeErrorToNSError();
      *(v225 + 4) = v228;
      *v226 = v228;
      _os_log_impl(&dword_243789000, v223, v224, "failed to process requests due to error %@", v225, 0xCu);
      sub_243797E50(v226, &qword_27ED85560, &qword_2437ACC80);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_10_0();
    }

    v5 = v262 + 17;
    v229 = v262[14];

    sub_24379A874(v230, v231, v232);
    *v229 = OUTLINED_FUNCTION_65_0(&type metadata for AssetManager.AssetError);
    OUTLINED_FUNCTION_26_0();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
    sub_2437ABC1C();

    v6 = v262 + 15;
    v4 = (v262[16] + 8);
    goto LABEL_4;
  }

  v254 = v262[39];
  v189 = v262[37];
  v244 = v262[29];
  v246 = v262[36];
  v240 = v262[25];
  v190 = v262[16];
  v191 = v262[17];
  loga = v262[15];
  v192 = OUTLINED_FUNCTION_94();
  (v248)(v192);
  v2 = v262;
  swift_storeEnumTagMultiPayload();
  v193 = v188;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
  sub_2437ABC1C();
  (*(v190 + 8))(v191, loga);
  sandbox_extension_release();
  v242(v244, v240);
  v194 = OUTLINED_FUNCTION_36_0();
  v258(v194);
  v106 = *(v189 + 8);
  v104 = v254;
  v105 = v246;
LABEL_46:
  v106(v104, v105);
LABEL_47:
  v195 = swift_task_alloc();
  v2[47] = v195;
  *v195 = v2;
  OUTLINED_FUNCTION_34_0(v195);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115();

  MEMORY[0x2822005A8](v196);
}

uint64_t sub_2437A1388()
{
  (*(v0[45] + 8))(v0[46], v0[44]);
  v1 = v0[2];
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_0_4(&_MergedGlobals_2);
  }

  v2 = sub_2437AB9DC();
  OUTLINED_FUNCTION_75_0(v2, qword_27ED861C8);
  v3 = v1;
  v4 = sub_2437AB9BC();
  v5 = sub_2437ABC9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_14_0();
    v7 = OUTLINED_FUNCTION_123();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_243789000, v4, v5, "failed to process requests due to error %@", v6, 0xCu);
    sub_243797E50(v7, &qword_27ED85560, &qword_2437ACC80);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_9_0();
  }

  v10 = v0[14];

  sub_24379A874(v11, v12, v13);
  *v10 = OUTLINED_FUNCTION_65_0(&type metadata for AssetManager.AssetError);
  OUTLINED_FUNCTION_36_0();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
  sub_2437ABC1C();

  (*(v0[16] + 8))();

  OUTLINED_FUNCTION_14();

  return v14();
}

void sub_2437A1670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_90();
  v41 = v5;
  v42 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v40 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v39 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v8);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_82_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  OUTLINED_FUNCTION_17(v26);
  OUTLINED_FUNCTION_66_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v39 - v28;
  sub_2437ABBAC();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  (*(v22 + 16))(v4, v12, v20);
  v34 = v19;
  v35 = v14;
  (*(v16 + 16))(v34, v40, v14);
  v36 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v37 = (v24 + *(v16 + 80) + v36) & ~*(v16 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  (*(v22 + 32))(v38 + v36, v4, v20);
  (*(v16 + 32))(v38 + v37, v39, v35);
  sub_243791EA0(0, 0, v29, v42, v38);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_2437A18C8()
{
  OUTLINED_FUNCTION_15();
  v0[4] = v1;
  v0[5] = v2;
  v3 = sub_2437AB81C();
  v0[6] = v3;
  OUTLINED_FUNCTION_5(v3);
  v0[7] = v4;
  v0[8] = OUTLINED_FUNCTION_43();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85730, &qword_2437ACFB0);
  v0[9] = v5;
  OUTLINED_FUNCTION_17(v5);
  v0[10] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v0[11] = v6;
  OUTLINED_FUNCTION_17(v6);
  v0[12] = OUTLINED_FUNCTION_43();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857D0, &qword_2437AD158);
  v0[13] = v7;
  OUTLINED_FUNCTION_5(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_43();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85738, &qword_2437ACFB8);
  OUTLINED_FUNCTION_17(v9);
  v0[16] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85740, &qword_2437ACFC0);
  v0[17] = v10;
  OUTLINED_FUNCTION_5(v10);
  v0[18] = v11;
  v0[19] = OUTLINED_FUNCTION_43();
  v12 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2437A1AA8()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85728, &qword_2437ACF98);
  sub_2437ABC3C();
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 160) = v1;
  *v1 = v2;
  v1[1] = sub_2437A1B60;
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v3);
}

uint64_t sub_2437A1B60()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2437A1C5C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_10_1();
  if (v1)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    OUTLINED_FUNCTION_100();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_111();

    return v3(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_26_0();
    sub_2437A65EC(v11, v12, v13, v14);
    OUTLINED_FUNCTION_58_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      **(v0 + 96) = **(v0 + 80);
    }

    else
    {
      v17 = *(v0 + 56);
      v16 = *(v0 + 64);
      v18 = *(v0 + 48);
      OUTLINED_FUNCTION_71_0();
      v19(v16);
      sub_2437AB7EC();
      (*(v17 + 8))(v16, v18);
    }

    OUTLINED_FUNCTION_26_0();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
    OUTLINED_FUNCTION_113();
    sub_2437ABC1C();
    v20 = OUTLINED_FUNCTION_26_0();
    v21(v20);
    swift_task_alloc();
    OUTLINED_FUNCTION_16_0();
    *(v0 + 160) = v22;
    *v22 = v23;
    v22[1] = sub_2437A1B60;
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_111();

    return MEMORY[0x2822005A8](v24);
  }
}

uint64_t sub_2437A1E50()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  (*(v0[18] + 8))(v0[19], v0[17]);
  v0[3] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  sub_2437ABC2C();
  OUTLINED_FUNCTION_100();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_111();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t AssetManager.process(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_11();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_11();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2437A1F44()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856F0, &qword_2437ACF60);
  OUTLINED_FUNCTION_97();
  sub_2437AB77C();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_13_1();
  *(v0 + 32) = v1;
  v2 = OUTLINED_FUNCTION_8_1(v1, xmmword_2437ACF30);
  v3(v2);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_106(v4);
  OUTLINED_FUNCTION_111();

  return AssetManager.process(requests:)();
}

uint64_t sub_2437A2050()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  OUTLINED_FUNCTION_45();
  v5 = v4;
  OUTLINED_FUNCTION_20_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_12();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {

    *(v5 + 56) = v3;
  }

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2437A2168()
{
  OUTLINED_FUNCTION_15();
  type metadata accessor for AssetUploadCoordinator();
  v0 = OUTLINED_FUNCTION_96();
  sub_24379A104(v0);
  OUTLINED_FUNCTION_109();

  return v1();
}

uint64_t sub_2437A21D4()
{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_2437A2880()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_20_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  *(v6 + 320) = v0;

  v7 = OUTLINED_FUNCTION_26_0();
  v8(v7);
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2437A29D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_116();
  v19 = *(v18 + 192);
  v20 = *(v18 + 160);
  v21 = *(v18 + 168);
  v22 = *(v18 + 152);
  v43 = *(v18 + 120);
  v44 = *(v18 + 144);
  v23 = *(v18 + 88);
  v24 = *(v18 + 96);
  v42 = *(v18 + 80);
  v46 = *(v18 + 40);
  v47 = *(v18 + 272);
  v45 = *(v18 + 24);
  sub_2437AB92C();
  v25 = *MEMORY[0x277D858A0];
  *(v18 + 352) = v25;
  (*(v20 + 104))(v21, v25, v22);
  OUTLINED_FUNCTION_105();
  sub_2437ABBFC();
  v26 = OUTLINED_FUNCTION_104();
  v27(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857A0, &qword_2437AD010);
  (*(v23 + 104))(v24, v25, v42);
  sub_2437ABBFC();
  v28 = OUTLINED_FUNCTION_25();
  v29(v28);
  v30 = swift_task_alloc();
  *(v18 + 328) = v30;
  v30[2] = v47;
  v30[3] = v43;
  v30[4] = v19;
  v30[5] = v45;
  v30[6] = v46;
  v31 = swift_task_alloc();
  *(v18 + 336) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857A8, &qword_2437AD018);
  *v31 = v18;
  v31[1] = sub_2437A2BE8;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_74();

  return MEMORY[0x2822008A0](v32, v33, v34, v35, v36, v37, v38, v39, a9, v42, v43, v44, v45, v46, v47, a16, a17, a18);
}

uint64_t sub_2437A2BE8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_20_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2437A2D00()
{
  v38 = v0;
  v1 = *(v0 + 16);

  v2 = sub_2437AB9BC();
  v3 = sub_2437ABCAC();

  v28 = v1;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_14_0();
    v5 = OUTLINED_FUNCTION_13_0();
    v37 = v5;
    OUTLINED_FUNCTION_91(4.8149e-34);
    v6 = sub_2437AB71C();
    v7 = MEMORY[0x245D3EEA0](v1, v6);
    v9 = sub_243793C54(v7, v8, &v37);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_243789000, v2, v3, "created ephemeral assets %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_9_0();
  }

  v26 = *(v0 + 352);
  v36 = *(v0 + 272);
  v34 = *(v0 + 264);
  v35 = *(v0 + 256);
  v10 = *(v0 + 224);
  v25 = *(v0 + 216);
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v29 = *(v0 + 184);
  v32 = *(v0 + 176);
  v33 = *(v0 + 192);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v27 = *(v0 + 128);
  v15 = *(v0 + 112);
  v30 = *(v0 + 104);
  v31 = *(v0 + 120);
  v16 = *(v0 + 64);
  v17 = *(v0 + 56);
  v23 = *(v0 + 48);
  v24 = *(v0 + 72);
  type metadata accessor for AssetsUploadCoordinator(0);
  v18 = OUTLINED_FUNCTION_70_0();
  v19(v18, v10, v12);
  *(swift_task_alloc() + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  (*(v17 + 104))(v16, v26, v23);
  sub_2437ABC6C();

  v20 = sub_2437A9028(v28, v25, v24);
  (*(v11 + 8))(v10, v12);
  (*(v14 + 8))(v13, v27);
  (*(v15 + 8))(v31, v30);
  (*(v29 + 8))(v33, v32);
  (*(v34 + 8))(v36, v35);

  OUTLINED_FUNCTION_109();

  return v21(v20);
}

uint64_t sub_2437A3058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_45_0();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_19_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2437A3114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_69_0();
  v15 = v14[33];
  v33 = v14[32];
  v34 = v14[34];
  v16 = v14[23];
  v32 = v14[24];
  v17 = v14[22];
  v18 = v14[17];
  v19 = v14[18];
  v20 = v14[16];
  (*(v14[26] + 8))(v14[28], v14[25]);
  (*(v18 + 8))(v19, v20);
  v21 = OUTLINED_FUNCTION_62_0();
  v22(v21);
  (*(v16 + 8))(v32, v17);
  (*(v15 + 8))(v34, v33);
  OUTLINED_FUNCTION_45_0();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_19_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, a12, a13, a14);
}

uint64_t sub_2437A328C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85720, &qword_2437ACF88);
  OUTLINED_FUNCTION_97();
  sub_2437AB7BC();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_13_1();
  *(v0 + 32) = v1;
  v2 = OUTLINED_FUNCTION_8_1(v1, xmmword_2437ACF30);
  v3(v2);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_106(v4);
  OUTLINED_FUNCTION_111();

  return AssetManager.process(requests:)();
}

uint64_t sub_2437A3398()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  OUTLINED_FUNCTION_45();
  v5 = v4;
  OUTLINED_FUNCTION_20_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_12();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {

    *(v5 + 56) = v3;
  }

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2437A34B0()
{
  OUTLINED_FUNCTION_15();
  type metadata accessor for AssetDownloadCoordinator();
  v0 = OUTLINED_FUNCTION_96();
  sub_24379A104(v0);
  OUTLINED_FUNCTION_109();

  return v1();
}

uint64_t sub_2437A3818()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_20_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2437A3914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_43_0();
  v13 = v12[9];
  v14 = v12[10];
  v16 = v12[7];
  v15 = v12[8];
  v17 = v12[5];
  v18 = v12[6];
  v19 = v12[4];
  type metadata accessor for AssetsDownloadCoordinator(0);
  v20 = OUTLINED_FUNCTION_70_0();
  v21(v20, v13, v18);
  v22 = sub_2437A8470(v15);
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v14);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v22;
  v26[5] = v19;

  v27 = OUTLINED_FUNCTION_46_0();
  sub_24379F308(v27, v28, v17, v29, v26);

  (*(v16 + 8))(v13, v18);

  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_33_0();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_2437A3A50()
{
  OUTLINED_FUNCTION_30();

  OUTLINED_FUNCTION_14();

  return v0();
}

void sub_2437A3AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_90();
  v64 = v4;
  v65 = v5;
  v60 = v6;
  v61 = v7;
  v59 = v8;
  v62 = v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857E8, &qword_2437AD170);
  OUTLINED_FUNCTION_1();
  v68 = v10;
  v63 = *(v11 + 64);
  OUTLINED_FUNCTION_66_0();
  MEMORY[0x28223BE20](v12);
  v69 = &v53 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v58 = *(v16 + 64);
  OUTLINED_FUNCTION_66_0();
  MEMORY[0x28223BE20](v17);
  v66 = &v53 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85778, &qword_2437ACFF8);
  v55 = v19;
  OUTLINED_FUNCTION_5_2();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v26 = &v53 - v25;
  v56 = &v53 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  v54 = v27;
  OUTLINED_FUNCTION_5_2();
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v34 = &v53 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  OUTLINED_FUNCTION_17(v35);
  OUTLINED_FUNCTION_66_0();
  MEMORY[0x28223BE20](v36);
  v57 = &v53 - v37;
  sub_2437ABBAC();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  (*(v29 + 16))(v34, v59, v27);
  (*(v21 + 16))(v26, v60, v19);
  v53 = v15;
  (*(v15 + 16))(v66, v61, v67);
  v42 = v68;
  (*(v68 + 16))(v69, v62, v70);
  v43 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v44 = (v31 + *(v21 + 80) + v43) & ~*(v21 + 80);
  v45 = (v23 + *(v15 + 80) + v44) & ~*(v15 + 80);
  v46 = (v58 + *(v42 + 80) + v45) & ~*(v42 + 80);
  v47 = (v63 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  (*(v29 + 32))(v48 + v43, v34, v54);
  (*(v21 + 32))(v48 + v44, v56, v55);
  (*(v53 + 32))(v48 + v45, v66, v67);
  (*(v68 + 32))(v48 + v46, v69, v70);
  v49 = v65;
  *(v48 + v47) = v64;
  *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;

  v50 = OUTLINED_FUNCTION_46_0();
  sub_243791EA0(v50, v51, v57, v52, v48);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_2437A3F0C()
{
  OUTLINED_FUNCTION_15();
  v0[14] = v1;
  v0[15] = v2;
  v0[12] = v3;
  v0[13] = v4;
  v0[11] = v5;
  v6 = sub_2437AB85C();
  v0[16] = v6;
  OUTLINED_FUNCTION_5(v6);
  v0[17] = v7;
  v0[18] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857F0, &qword_2437AD188);
  v0[19] = v8;
  OUTLINED_FUNCTION_5(v8);
  v0[20] = v9;
  v0[21] = OUTLINED_FUNCTION_43();
  v10 = sub_2437AB92C();
  v0[22] = v10;
  OUTLINED_FUNCTION_5(v10);
  v0[23] = v11;
  v0[24] = OUTLINED_FUNCTION_78_0();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857F8, &qword_2437AD190);
  v0[27] = v12;
  OUTLINED_FUNCTION_5(v12);
  v0[28] = v13;
  v0[29] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857A0, &qword_2437AD010);
  v0[30] = v14;
  OUTLINED_FUNCTION_5(v14);
  v0[31] = v15;
  v0[32] = OUTLINED_FUNCTION_78_0();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v16 = sub_2437AB82C();
  v0[35] = v16;
  OUTLINED_FUNCTION_5(v16);
  v0[36] = v17;
  v0[37] = OUTLINED_FUNCTION_43();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85800, &qword_2437AD198);
  OUTLINED_FUNCTION_17(v18);
  v0[38] = OUTLINED_FUNCTION_43();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85808, &qword_2437AD1A0);
  v0[39] = v19;
  OUTLINED_FUNCTION_5(v19);
  v0[40] = v20;
  v0[41] = OUTLINED_FUNCTION_43();
  v21 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_2437A4210()
{
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  sub_2437ABC3C();
  *(v0 + 344) = *MEMORY[0x277CFA860];
  *(v0 + 348) = *MEMORY[0x277CFA868];
  *(v0 + 352) = *MEMORY[0x277CFA878];
  *(v0 + 356) = *MEMORY[0x277CFA870];
  *(v0 + 360) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 336) = v1;
  *v1 = v2;
  v1[1] = sub_2437A430C;
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v3);
}

uint64_t sub_2437A430C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2437A4C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_61_0();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_69_0();
  a20 = v23;
  v27 = OUTLINED_FUNCTION_108();
  v28(v27);
  v29 = v23[2];
  if ((v22 & 1) == 0)
  {
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4(&_MergedGlobals_2);
    }

    v30 = sub_2437AB9DC();
    OUTLINED_FUNCTION_75_0(v30, qword_27ED861C8);

    v31 = v29;
    v32 = sub_2437AB9BC();
    v33 = sub_2437ABC9C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_98();
      v35 = OUTLINED_FUNCTION_123();
      v36 = OUTLINED_FUNCTION_13_0();
      a11 = v36;
      *v34 = 138412546;
      v37 = v29;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v38;
      *v35 = v38;
      *(v34 + 12) = 2080;
      sub_2437AB77C();
      OUTLINED_FUNCTION_102();
      sub_243793C54(v39, v40, &a11);
      OUTLINED_FUNCTION_101();
      *(v34 + 14) = v24;
      _os_log_impl(&dword_243789000, v32, v33, "ephemeral asset not received due to error %@ for request %s", v34, 0x16u);
      sub_243797E50(v35, &qword_27ED85560, &qword_2437ACC80);
      OUTLINED_FUNCTION_10_0();
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_29_0();
    }

    v23[3] = v29;
    v41 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857E8, &qword_2437AD170);
    sub_2437ABB4C();
  }

  v23[4] = v29;
  v42 = v29;
  v43 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  sub_2437ABC2C();
  v23[5] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85778, &qword_2437ACFF8);
  OUTLINED_FUNCTION_96();
  sub_2437ABC2C();

  OUTLINED_FUNCTION_48_0();
  v55 = v45;
  v56 = v44;

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_19_0();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, v55, v56, a11, a12, a13, a14);
}

uint64_t sub_2437A4F04()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v0[3] = v1;
  v3 = sub_2437AB92C();
  v0[4] = v3;
  OUTLINED_FUNCTION_5(v3);
  v0[5] = v4;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857B8, &qword_2437AD130);
  OUTLINED_FUNCTION_17(v5);
  v0[9] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85798, &unk_2437AD300);
  v0[10] = v6;
  OUTLINED_FUNCTION_5(v6);
  v0[11] = v7;
  v0[12] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C0, &qword_2437AD138);
  v0[13] = v8;
  OUTLINED_FUNCTION_5(v8);
  v0[14] = v9;
  v0[15] = OUTLINED_FUNCTION_43();
  v10 = (*v2 + 120) & 0xFFFFFFFFFFFFLL | 0x8674000000000000;
  v0[16] = *(*v2 + 120);
  v0[17] = v10;

  return MEMORY[0x2822009F8](sub_2437A50CC, v2, 0);
}

uint64_t sub_2437A50CC()
{
  OUTLINED_FUNCTION_15();
  (*(v0 + 128))();
  v1 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2437A5130()
{
  OUTLINED_FUNCTION_30();
  sub_2437ABC3C();
  v1 = OUTLINED_FUNCTION_28();
  v2(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 144) = v3;
  *v3 = v4;
  v3[1] = sub_2437A51F8;
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v5);
}

uint64_t sub_2437A51F8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2437A52F4(uint64_t a1)
{
  v36 = v1;
  v2 = v1[9];
  v3 = v1[4];
  OUTLINED_FUNCTION_95();
  if (v4)
  {
    (*(v1[14] + 8))(v1[15], v1[13]);

    OUTLINED_FUNCTION_11_0();

    return v5();
  }

  else
  {
    (*(v1[5] + 32))(v1[8], v2, v3);
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4(&_MergedGlobals_2);
    }

    v7 = v1[7];
    v8 = v1[5];
    v9 = sub_2437AB9DC();
    __swift_project_value_buffer(v9, qword_27ED861C8);
    v10 = *(v8 + 16);
    v11 = OUTLINED_FUNCTION_12_0();
    (v10)(v11);
    v12 = sub_2437AB9BC();
    v13 = sub_2437ABCAC();
    v14 = OUTLINED_FUNCTION_51_0(v13);
    v16 = v1[7];
    v15 = v1[8];
    if (v14)
    {
      v32 = v1[5];
      v17 = v1[4];
      v34 = v1[8];
      v18 = OUTLINED_FUNCTION_14_0();
      v33 = v7;
      v19 = OUTLINED_FUNCTION_13_0();
      v35 = v19;
      *v18 = 136315138;
      OUTLINED_FUNCTION_114();
      v10();
      v20 = sub_2437ABABC();
      v22 = v21;
      v23 = *(v32 + 8);
      v23(v16, v17);
      v24 = sub_243793C54(v20, v22, &v35);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_243789000, v12, v33, "received signal %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_8_0();

      v23(v34, v17);
    }

    else
    {
      v26 = v1[4];
      v25 = v1[5];

      v27 = *(v25 + 8);
      v28 = OUTLINED_FUNCTION_88();
      v27(v28);
      (v27)(v15, v26);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_16_0();
    v1[18] = v29;
    *v29 = v30;
    v29[1] = sub_2437A51F8;
    OUTLINED_FUNCTION_3_2();

    return MEMORY[0x2822005A8](v31);
  }
}

uint64_t sub_2437A5600()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t AssetManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2437A571C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_12();
  *v2 = v1;

  OUTLINED_FUNCTION_11_0();

  return v3();
}

uint64_t sub_2437A57FC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85748, &qword_2437ACFC8), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85748, &qword_2437ACFC8);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

void sub_2437A5938(uint64_t a1, char a2, void *a3)
{
  v52 = a3;
  v6 = sub_2437AB7BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2437AB5BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v53 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85748, &qword_2437ACFC8);
  v13 = MEMORY[0x28223BE20](v12);
  v48 = v39 - v15;
  v47 = *(a1 + 16);
  if (!v47)
  {
LABEL_13:

    return;
  }

  v39[1] = v3;
  v40 = v14;
  v16 = 0;
  v46 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v44 = v9;
  v45 = v17;
  v42 = v6;
  v43 = v10;
  v49 = (v7 + 32);
  v50 = (v10 + 32);
  v41 = a1;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2437ABE5C();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v48;
    sub_2437A724C(v46 + *(v14 + 72) * v16, v48, &qword_27ED85748, &qword_2437ACFC8);
    v19 = *v50;
    v20 = v53;
    (*v50)(v53, v18, v9);
    v21 = *v49;
    (*v49)(v51, v18 + v45, v6);
    v22 = *v52;
    v24 = sub_2437A5E74(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85868, &qword_2437AD1F8);
      sub_2437ABD9C();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v31 = v53;
    v32 = *v52;
    *(*v52 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v9 = v44;
    v19(v32[6] + *(v43 + 72) * v24, v31, v44);
    v33 = v32[7] + *(v7 + 72) * v24;
    v6 = v42;
    v21(v33, v51, v42);
    v34 = v32[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_20;
    }

    ++v16;
    v32[2] = v36;
    a2 = 1;
    v14 = v40;
    a1 = v41;
    if (v47 == v16)
    {
      goto LABEL_13;
    }
  }

  sub_2437A5F0C(v27, a2 & 1);
  v29 = sub_2437A5E74(v53);
  if ((v28 & 1) != (v30 & 1))
  {
    goto LABEL_21;
  }

  v24 = v29;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v37 = swift_allocError();
  swift_willThrow();
  v56 = v37;
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85538, qword_2437AD390);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v7 + 8))(v51, v42);
    (*(v43 + 8))(v53, v44);

    return;
  }

LABEL_22:
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_2437ABD5C();
  MEMORY[0x245D3EE60](0xD00000000000001BLL, 0x80000002437ADAD0);
  sub_2437ABD7C();
  MEMORY[0x245D3EE60](39, 0xE100000000000000);
  sub_2437ABDAC();
  __break(1u);
}