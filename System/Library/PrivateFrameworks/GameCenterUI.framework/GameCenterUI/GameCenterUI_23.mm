double sub_24E1A8970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_24E120A58(a2, &v10 - v7);
  sub_24E120A58(a3, &v8[*(v5 + 56)]);
  sub_24E120AC8(v8);
  return 30.0;
}

void sub_24E1A8A24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  sub_24E120A58(a2, &v12 - v9);
  v11 = sub_24E120A58(a3, &v10[*(v7 + 56)]);
  sub_24E1A8AF0(v11, a4);
  OUTLINED_FUNCTION_8_2();
  sub_24E120AC8(v10);
  OUTLINED_FUNCTION_7_2();
}

void sub_24E1A8AF0(uint64_t a1, void *a2)
{
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
  }

  v3 = type metadata accessor for PlayerCardTheme(0);
  __swift_project_value_buffer(v3, qword_27F20BF00);
  v4 = [a2 traitCollection];
  sub_24E336638(v4, v5);
  OUTLINED_FUNCTION_8_2();

  OUTLINED_FUNCTION_7_2();
}

id sub_24E1A8B8C(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for NoFriendsCollectionViewCell(0);
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_24E1A8C18(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NoFriendsCollectionViewCell(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24E1A8CAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoFriendsCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NoFriendsCollectionViewCell(uint64_t a1)
{
  result = qword_27F1E6A00;
  if (!qword_27F1E6A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E1A8DB0(uint64_t a1)
{
  result = sub_24E1A8EF0(&qword_27F1E6A10, type metadata accessor for NoFriendsCollectionViewCell, &unk_24E38129C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E1A8E98(uint64_t a1)
{
  result = sub_24E1A8EF0(&qword_27F1E6458, type metadata accessor for NoFriendsCollectionViewCell, &unk_24E3812CC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E1A8EF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E1A8F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyStateData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1A8FE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6A18, &qword_24E381420);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = sub_24E345B68();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_24E348268();
    v15 = sub_24E346198();
    v23 = a1;
    v16 = v15;
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();
    sub_24DE73F34(a2, 0);
    (*(v12 + 8))(v14, v11);
    if (v24 != 1)
    {
      goto LABEL_6;
    }
  }

  if ((sub_24E345F98() & 1) == 0)
  {

    goto LABEL_8;
  }

LABEL_6:
  a4 = sub_24E3469C8();
LABEL_8:
  sub_24E345F88();
  KeyPath = swift_getKeyPath();
  v18 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6A20, &qword_24E381458) + 36)];
  *v18 = KeyPath;
  v18[1] = a4;
  v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6A28, &qword_24E381460) + 36)] = 0;

  v19 = sub_24E346288();
  v20 = swift_getKeyPath();
  v21 = &v10[*(v8 + 36)];
  *v21 = v20;
  v21[1] = v19;
  sub_24E3462E8();
  sub_24E1A92B4();
  sub_24E346558();

  return sub_24E1A9534(v10);
}

unint64_t sub_24E1A92B4()
{
  result = qword_27F1E6A30;
  if (!qword_27F1E6A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6A18, &qword_24E381420);
    sub_24E1A936C();
    sub_24DFB4C28(&qword_27F1DF648, &qword_27F1DF650, &qword_24E379BD0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6A30);
  }

  return result;
}

unint64_t sub_24E1A936C()
{
  result = qword_27F1E6A38;
  if (!qword_27F1E6A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6A28, &qword_24E381460);
    sub_24E1A9424();
    sub_24DFB4C28(&qword_27F1E4140, &qword_27F1E4148, &qword_24E379670, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6A38);
  }

  return result;
}

unint64_t sub_24E1A9424()
{
  result = qword_27F1E6A40;
  if (!qword_27F1E6A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6A20, &qword_24E381458);
    sub_24E1A94DC();
    sub_24DFB4C28(&qword_27F1E2040, &qword_27F1E2048, &unk_24E37DE20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6A40);
  }

  return result;
}

unint64_t sub_24E1A94DC()
{
  result = qword_27F1E5ED8;
  if (!qword_27F1E5ED8)
  {
    sub_24E345F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5ED8);
  }

  return result;
}

uint64_t sub_24E1A9534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6A18, &qword_24E381420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E1A959C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int a6, uint64_t a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  MEMORY[0x28223BE20](v15 - 8);
  v114 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v109 - v18;
  v20 = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkData_mainArtworks) = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkData_mainArtworkLinks) = v20;
  sub_24DF8BD34(a1, __dst);
  sub_24E1AA0F0(a7, __src);
  v21 = a2;
  sub_24E0E32D0(__dst, v21, a3, a4, a5, a6, __src);
  v23 = v22;
  if (v22)
  {
    v113 = a7;
    v24 = [v21 activityType];
    if ((v24 - 1) >= 2)
    {
      if (v24 == 3)
      {
        v112 = v21;
        v111 = a1;
        v109 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships;
        v52 = *(v23 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
        v121 = v20;
        v117 = type metadata accessor for ActivityFeedSharedView();
        v110 = v23;
        v119 = (v23 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_mainActionLink);
        v116 = v52 + 32;
        v118 = v52;

        v54 = 0;
        v55 = 0;
        do
        {
          v56 = v54;
          if (v55 >= *(v118 + 16))
          {
            __break(1u);
            return result;
          }

          v57 = *(v116 + 56 * v55 + 48);
          __src[0] = 2;

          v58 = v57;
          sub_24E253E8C(__src, 256.0, 256.0);
          MEMORY[0x25303EA30]();
          if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24E347F48();
          }

          sub_24E347F88();
          v115 = v121;
          v59 = [v58 playerID];
          v60 = sub_24E347CF8();
          v62 = v61;

          v63 = sub_24E00DE84(v60, v62, v55);
          v65 = v64;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_24E076A08(0, *(v20 + 16) + 1, 1, v20);
            v20 = v80;
          }

          v67 = *(v20 + 16);
          v66 = *(v20 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_24E076A08(v66 > 1, v67 + 1, 1, v20);
            v20 = v81;
          }

          *(v20 + 16) = v67 + 1;
          v68 = v20 + 16 * v67;
          *(v68 + 32) = v63;
          *(v68 + 40) = v65;
          if (v119[1])
          {
          }

          else
          {
            v69 = [v58 playerID];
            v70 = sub_24E347CF8();
            v72 = v71;

            __dst[0] = v70;
            __dst[1] = v72;
            LOBYTE(__dst[2]) = 0;
            v123 = 0;
            v73 = v114;
            sub_24E18F520(__dst, v114);

            v74 = sub_24E343288();
            if (__swift_getEnumTagSinglePayload(v73, 1, v74) == 1)
            {

              sub_24DF8C95C(v73, &qword_27F1DEFB8, &unk_24E36FFA0);
              v75 = 0;
              v76 = 0;
            }

            else
            {
              v77 = v73;
              v75 = sub_24E343218();
              v76 = v78;

              (*(*(v74 - 8) + 8))(v77, v74);
            }

            v79 = v119;
            *v119 = v75;
            v79[1] = v76;
          }

          v54 = 1;
          v55 = 1;
        }

        while ((v56 & 1) == 0);

        v83 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkData_mainArtworks;
        v23 = v110;
        swift_beginAccess();
        *(v23 + v83) = v115;

        v84 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkData_mainArtworkLinks;
        swift_beginAccess();
        *(v23 + v84) = v20;

        v85 = *(v23 + v109);
        if (v85[2])
        {
          v87 = v85[4];
          v86 = v85[5];
          v89 = v85[6];
          v88 = v85[7];
          v91 = v85[8];
          v90 = v85[9];
          v92 = v85[10];
          v93 = v109;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2588, &unk_24E372C30);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_24E367D20;
          *(v94 + 32) = v87;
          *(v94 + 40) = v86;
          *(v94 + 48) = v89;
          *(v94 + 56) = v88;
          *(v94 + 64) = v91;
          *(v94 + 72) = v90;
          v23 = v110;
          *(v94 + 80) = v92;

          v95 = v92;
          OUTLINED_FUNCTION_1_107();
          v96 = OUTLINED_FUNCTION_0_136();
          sub_24DF8C95C(v96, v97, v98);
          v99 = OUTLINED_FUNCTION_2_87();
          sub_24DF8BE60(v99);
          *(v23 + v93) = v94;
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_1_107();
        v106 = OUTLINED_FUNCTION_0_136();
        sub_24DF8C95C(v106, v107, v108);
        v82 = OUTLINED_FUNCTION_2_87();
        goto LABEL_28;
      }

      v51 = OUTLINED_FUNCTION_0_136();
    }

    else
    {
      v112 = v21;
      v25 = *(v23 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships + 8);
      v26 = v113;
      if (v25[2] && v25[12])
      {
        v111 = a1;
        v27 = v25[7];
        v28 = v23;
        v116 = v25[11];
        v29 = v25[9];
        v117 = v25[10];
        v31 = v25[4];
        v30 = v25[5];
        swift_beginAccess();
        swift_retain_n();

        v119 = v27;

        v118 = v29;

        MEMORY[0x25303EA30](v32);
        sub_24E12448C();
        sub_24E347F88();
        swift_endAccess();
        type metadata accessor for ActivityFeedSharedView();
        v33 = v31;
        v34 = sub_24E00DE70(v31, v30, 0);
        v36 = v35;
        v37 = OBJC_IVAR____TtC12GameCenterUI23ActivityFeedArtworkData_mainArtworkLinks;
        swift_beginAccess();
        sub_24E0111D0();
        v38 = *(*(v28 + v37) + 16);
        sub_24E1242A0(v38);
        v39 = *(v28 + v37);
        *(v39 + 16) = v38 + 1;
        v40 = v39 + 16 * v38;
        *(v40 + 32) = v34;
        *(v40 + 40) = v36;
        *(v28 + v37) = v39;
        v41 = v116;
        swift_endAccess();
        *__src = v117;
        *&__src[8] = v41;
        *&__src[16] = v33;
        *&__src[24] = v30;
        memset(&__src[32], 0, 33);
        memcpy(__dst, __src, 0x41uLL);
        v123 = 3;

        sub_24E18F520(__dst, v19);
        sub_24DF8C95C(__src, &qword_27F1E6A58, &qword_24E3814D0);
        v42 = sub_24E343288();
        if (__swift_getEnumTagSinglePayload(v19, 1, v42) == 1)
        {
          OUTLINED_FUNCTION_1_107();

          v43 = OUTLINED_FUNCTION_0_136();
          sub_24DF8C95C(v43, v44, v45);
          v46 = OUTLINED_FUNCTION_2_87();
          sub_24DF8BE60(v46);
          sub_24DF8C95C(v19, &qword_27F1DEFB8, &unk_24E36FFA0);
          v47 = 0;
          v48 = 0;
        }

        else
        {
          v47 = sub_24E343218();
          v48 = v100;
          OUTLINED_FUNCTION_1_107();

          v101 = OUTLINED_FUNCTION_0_136();
          sub_24DF8C95C(v101, v102, v103);
          v104 = OUTLINED_FUNCTION_2_87();
          sub_24DF8BE60(v104);
          (*(*(v42 - 8) + 8))(v19, v42);
        }

        v23 = v28;
        v105 = (v28 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_mainActionLink);
        *v105 = v47;
        v105[1] = v48;
LABEL_33:

        return v23;
      }

      OUTLINED_FUNCTION_1_107();
      v49 = &qword_27F1DEE90;
      v50 = &unk_24E369E90;
      v51 = v26;
    }
  }

  else
  {

    v49 = &qword_27F1DEE90;
    v50 = &unk_24E369E90;
    v51 = a7;
  }

  sub_24DF8C95C(v51, v49, v50);
  v82 = a1;
LABEL_28:
  sub_24DF8BE60(v82);
  return v23;
}

uint64_t sub_24E1A9F78()
{
}

uint64_t sub_24E1A9FB8()
{
  v0 = sub_24E0E7144();

  return v0;
}

uint64_t sub_24E1AA000()
{
  v0 = sub_24E1A9FB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ActivityFeedArtworkData(uint64_t a1)
{
  result = qword_27F1E6A48;
  if (!qword_27F1E6A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E1AA0F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE90, &unk_24E369E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_1_107()
{
  v2 = *(v0 - 344);
}

uint64_t type metadata accessor for ArtworkImageView(uint64_t a1)
{
  result = qword_27F1E6A78;
  if (!qword_27F1E6A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E1AA204(uint64_t a1)
{
  sub_24E1AA3B0(319, &qword_27F1DF478, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24E1AA3B0(319, &qword_27F1E6A88, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24E1AA3B0(319, &qword_27F1E6A90, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24DFC2C38();
        if (v4 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v5 <= 0x3F)
          {
            sub_24E1AA3B0(319, &qword_27F1E6A98, MEMORY[0x277CE3B50], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24E1AA3B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL sub_24E1AA430(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xEB00000000646569;
    v8 = 0x6669636570736E75;
    switch(*v4)
    {
      case 1:
        v8 = 0x526465646E756F72;
        v7 = 0xEB00000000746365;
        break;
      case 2:
        v7 = 0xE500000000000000;
        v8 = 0x646E756F72;
        break;
      case 3:
        v7 = 0xE600000000000000;
        v8 = 0x746365527674;
        break;
      case 4:
        v8 = 0x656E726F64616E75;
        v7 = 0xE900000000000064;
        break;
      default:
        break;
    }

    v9 = 0x6669636570736E75;
    v10 = 0xEB00000000646569;
    switch(a1)
    {
      case 1:
        v9 = 0x526465646E756F72;
        v10 = 0xEB00000000746365;
        break;
      case 2:
        v10 = 0xE500000000000000;
        v9 = 0x646E756F72;
        break;
      case 3:
        v10 = 0xE600000000000000;
        v9 = 0x746365527674;
        break;
      case 4:
        v9 = 0x656E726F64616E75;
        v10 = 0xE900000000000064;
        break;
      default:
        break;
    }

    if (v8 == v9 && v7 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_24E348C08();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_24E1AA608@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v114 = a1;
  v110 = sub_24E347B98();
  OUTLINED_FUNCTION_0_14();
  v109 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23(&v96 - v6);
  sub_24E345238();
  OUTLINED_FUNCTION_0_14();
  v112 = v8;
  v113 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23(&v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6AA0, &qword_24E381568);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6AA8, &qword_24E381570);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v13);
  v116 = sub_24E345C68();
  OUTLINED_FUNCTION_0_14();
  v100 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v16);
  v18 = &v96 - v17;
  v19 = sub_24E3457C8();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v21);
  v23 = (&v96 - v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6AB0, &qword_24E381578);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v24);
  v26 = (&v96 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6AB8, &qword_24E381580);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6AC0, &qword_24E381588);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15_3();
  v117 = v32;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6AC8, &qword_24E381590);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v34);
  *v26 = sub_24E346E28();
  v26[1] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6AD0, &unk_24E381598);
  sub_24E1AB028(v1, v26 + *(v36 + 44));
  v37 = type metadata accessor for ArtworkImageView(0);
  v39 = *(v37 + 32);
  v38 = *(v37 + 36);
  v101 = v37;
  v40 = (v1 + v38);
  v41 = *v40;
  v115 = v2;
  sub_24E346E28();
  sub_24E3453D8();
  v42 = sub_24DFB4B20(v26, v30, &qword_27F1E6AB0, &qword_24E381578);
  v43 = &v30[*(v27 + 36)];
  v44 = v119;
  *v43 = v118;
  *(v43 + 1) = v44;
  *(v43 + 2) = v120;
  v45 = v40[1];
  ScaledCornerRadiusForSize = 6.0;
  v47 = MEMORY[0x277CE0118];
  switch(*(v115 + v39))
  {
    case 1:
      ScaledCornerRadiusForSize = GKHomeScreenIconsGetScaledCornerRadiusForSize(v42, v41, v40[1]);
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_7_46();
      goto LABEL_6;
    case 3:
      goto LABEL_9;
    default:
      OUTLINED_FUNCTION_8_55();
      if (v48)
      {
LABEL_8:
        v47 = MEMORY[0x277CE0118];
      }

      else
      {
LABEL_6:
        v47 = MEMORY[0x277CE0128];
      }

LABEL_9:
      v49 = v100;
      v50 = *(v100 + 104);
      v51 = v116;
      v50(v18, *v47, v116);
      *v23 = ScaledCornerRadiusForSize;
      v23[1] = ScaledCornerRadiusForSize;
      v52 = *(v49 + 32);
      v52(v23 + *(v19 + 20), v18, v51);
      v53 = v117;
      v54 = v117 + *(v97 + 36);
      sub_24E1ABA3C(v23, v54);
      *(v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF7E0, &qword_24E36BC00) + 36)) = 256;
      v55 = sub_24DFB4B20(v30, v53, &qword_27F1E6AB8, &qword_24E381580);
      v56 = v115;
      v57 = 6.0;
      v58 = MEMORY[0x277CE0118];
      v59 = v98;
      switch(*(v115 + v39))
      {
        case 1:
          v57 = GKHomeScreenIconsGetScaledCornerRadiusForSize(v55, v41, v45);
          goto LABEL_16;
        case 2:
          OUTLINED_FUNCTION_7_46();
          goto LABEL_14;
        case 3:
          goto LABEL_17;
        default:
          OUTLINED_FUNCTION_8_55();
          if (v48)
          {
LABEL_16:
            v58 = MEMORY[0x277CE0118];
          }

          else
          {
LABEL_14:
            v58 = MEMORY[0x277CE0128];
          }

LABEL_17:
          v60 = v99;
          v61 = v116;
          v50(v99, *v58, v116);
          *v59 = v57;
          v59[1] = v57;
          v52(v59 + *(v19 + 20), v60, v61);
          if (qword_27F1DDDE0 != -1)
          {
            swift_once();
          }

          v62 = qword_27F20B808;
          v63 = sub_24E346948();
          sub_24E1AA430(*(v56 + v39), &unk_286111758);
          sub_24E3452D8();
          v64 = v105;
          sub_24E1ABAA0(v59, v105);
          v65 = *&v121 * 0.5;
          v66 = v64 + *(v106 + 68);
          sub_24E1ABAA0(v59, v66);
          *(v66 + *(sub_24E3457B8() + 20)) = v65;
          v67 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6AD8, &qword_24E3815A8) + 36);
          v68 = v122;
          *v67 = v121;
          *(v67 + 16) = v68;
          *(v67 + 32) = v123;
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6AE0, &qword_24E3815B0);
          *(v66 + *(v69 + 52)) = v63;
          *(v66 + *(v69 + 56)) = 256;
          v70 = sub_24E346E28();
          v71 = v59;
          v73 = v72;
          sub_24E11762C(v71);
          v74 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6AE8, &qword_24E3815B8) + 36));
          *v74 = v70;
          v74[1] = v73;
          sub_24DFB4C28(&qword_27F1E6AF0, &qword_27F1E6AA0, &qword_24E381568, MEMORY[0x277CE0458]);
          v75 = v104;
          sub_24E346758();
          sub_24DF8BFF4(v64, &qword_27F1E6AA0, &qword_24E381568);
          v76 = sub_24E346E28();
          v78 = v77;
          v79 = v103;
          v80 = v103 + *(v102 + 36);
          sub_24DFB4B20(v75, v80, &qword_27F1E6AA8, &qword_24E381570);
          v81 = (v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6AF8, &qword_24E3815C0) + 36));
          *v81 = v76;
          v81[1] = v78;
          sub_24DFB4B20(v117, v79, &qword_27F1E6AC0, &qword_24E381588);
          v82 = v107;
          sub_24E028EEC(v107);
          v83 = v108;
          sub_24E347B88();
          LOBYTE(v76) = sub_24E347B78();
          v84 = *(v109 + 8);
          v85 = v83;
          v86 = v110;
          v84(v85, v110);
          v84(v82, v86);
          v87 = v113;
          v88 = v111;
          if (v76)
          {
            v89 = v112;
            (*(v112 + 104))(v111, *MEMORY[0x277CDF3C0], v113);
          }

          else
          {
            sub_24E028BEC(v111);
            v89 = v112;
          }

          KeyPath = swift_getKeyPath();
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6B00, &qword_24E3815F8);
          v92 = v114;
          v93 = (v114 + *(v91 + 36));
          v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6B08, &qword_24E381600);
          (*(v89 + 32))(v93 + *(v94 + 28), v88, v87);
          *v93 = KeyPath;
          return sub_24DFB4B20(v79, v92, &qword_27F1E6AC8, &qword_24E381590);
      }
  }
}

uint64_t sub_24E1AB028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6B10, &qword_24E381608);
  MEMORY[0x28223BE20](v83);
  v82 = (&v68 - v3);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6B18, &qword_24E381610);
  MEMORY[0x28223BE20](v84);
  v77 = &v68 - v4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6B20, &qword_24E381618);
  MEMORY[0x28223BE20](v74);
  v75 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v68 - v7;
  v8 = sub_24E346A68();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v78 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6B28, &qword_24E381620);
  MEMORY[0x28223BE20](v71);
  v69 = &v68 - v10;
  v11 = sub_24E3457A8();
  v70 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6B30, &qword_24E381628);
  MEMORY[0x28223BE20](v17 - 8);
  v72 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v73 = &v68 - v20;
  v21 = sub_24E347B98();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v68 - v26;
  v85 = type metadata accessor for ArtworkImageView(0);
  v28 = a1;
  sub_24E028EEC(v27);
  sub_24E347B88();
  LOBYTE(a1) = sub_24E347B78();
  v29 = *(v22 + 8);
  v29(v24, v21);
  v29(v27, v21);
  if (a1)
  {
    v30 = v78;
    v31 = v79;
    v32 = v80;
    v33 = v28;
    sub_24E028F14(v16);
    sub_24E1ABC50(&qword_27F1E6B50, MEMORY[0x277CDFBA8], v34);
    sub_24E3487D8();
    sub_24E1ABC50(&qword_27F1E6B58, MEMORY[0x277CDFBA0], v35);
    v36 = sub_24E347CA8();
    v37 = *(v70 + 8);
    v37(v13, v11);
    v37(v16, v11);
    if (v36)
    {
      v38 = *(v28 + *(v85 + 28));
      sub_24E346A38();
      v39 = *MEMORY[0x277CE0FE0];
      v40 = v31;
      v41 = *(v31 + 104);
      v42 = v30;
      v43 = v32;
      v41(v30, v39, v32);
      v44 = sub_24E346AE8();

      (*(v40 + 8))(v30, v43);
      v86 = v44;
      v87 = 0;
      v88 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6B38, &qword_24E381630);
      sub_24E1ABBCC();
      v45 = v69;
      sub_24E346508();

      v46 = v71;
      v47 = *(v71 + 36);
      v48 = *MEMORY[0x277CE13C0];
      v49 = sub_24E346E88();
      v50 = v45 + v47;
      v51 = v40;
      (*(*(v49 - 8) + 104))(v50, v48, v49);
      v52 = v73;
      sub_24DFB4B20(v45, v73, &qword_27F1E6B28, &qword_24E381620);
      __swift_storeEnumTagSinglePayload(v52, 0, 1, v46);
      v53 = v82;
    }

    else
    {
      v52 = v73;
      __swift_storeEnumTagSinglePayload(v73, 1, 1, v71);
      v39 = *MEMORY[0x277CE0FE0];
      v53 = v82;
      v43 = v32;
      v51 = v31;
      v42 = v30;
    }

    v61 = *(v33 + *(v85 + 28));
    sub_24E346A38();
    (*(v51 + 104))(v42, v39, v43);
    sub_24E346AE8();

    (*(v51 + 8))(v42, v43);
    v62 = v76;
    sub_24E346AD8();

    v63 = v62 + *(v74 + 36);
    *v63 = 0;
    *(v63 + 8) = 1;
    v64 = v72;
    sub_24DFAE87C(v52, v72, &qword_27F1E6B30, &qword_24E381628);
    v65 = v75;
    sub_24DFAE87C(v62, v75, &qword_27F1E6B20, &qword_24E381618);
    v66 = v77;
    sub_24DFAE87C(v64, v77, &qword_27F1E6B30, &qword_24E381628);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6B60, &qword_24E381638);
    sub_24DFAE87C(v65, v66 + *(v67 + 48), &qword_27F1E6B20, &qword_24E381618);
    sub_24DF8BFF4(v65, &qword_27F1E6B20, &qword_24E381618);
    sub_24DF8BFF4(v64, &qword_27F1E6B30, &qword_24E381628);
    sub_24DFAE87C(v66, v53, &qword_27F1E6B18, &qword_24E381610);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6B38, &qword_24E381630);
    sub_24DFB4C28(&qword_27F1E6B40, &qword_27F1E6B18, &qword_24E381610, MEMORY[0x277CE14C0]);
    sub_24E1ABBCC();
    sub_24E345E38();
    sub_24DF8BFF4(v66, &qword_27F1E6B18, &qword_24E381610);
    sub_24DF8BFF4(v62, &qword_27F1E6B20, &qword_24E381618);
    return sub_24DF8BFF4(v52, &qword_27F1E6B30, &qword_24E381628);
  }

  else
  {
    v54 = *(v28 + *(v85 + 28));
    sub_24E346A38();
    v56 = v78;
    v55 = v79;
    v57 = v80;
    (*(v79 + 104))(v78, *MEMORY[0x277CE0FE0], v80);
    v58 = sub_24E346AE8();

    (*(v55 + 8))(v56, v57);
    v59 = v82;
    *v82 = v58;
    v59[1] = 0;
    *(v59 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6B38, &qword_24E381630);
    sub_24DFB4C28(&qword_27F1E6B40, &qword_27F1E6B18, &qword_24E381610, MEMORY[0x277CE14C0]);
    sub_24E1ABBCC();
    return sub_24E345E38();
  }
}

uint64_t sub_24E1ABA3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E3457C8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1ABAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E3457C8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1ABB04(uint64_t a1)
{
  v2 = sub_24E345238();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24E345898();
}

unint64_t sub_24E1ABBCC()
{
  result = qword_27F1E6B48;
  if (!qword_27F1E6B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6B38, &qword_24E381630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6B48);
  }

  return result;
}

uint64_t sub_24E1ABC50(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_24E3457A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E1ABC94()
{
  result = qword_27F1E6B68;
  if (!qword_27F1E6B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6B00, &qword_24E3815F8);
    sub_24E1ABD4C();
    sub_24DFB4C28(&qword_27F1E6B98, &qword_27F1E6B08, &qword_24E381600, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6B68);
  }

  return result;
}

unint64_t sub_24E1ABD4C()
{
  result = qword_27F1E6B70;
  if (!qword_27F1E6B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6AC8, &qword_24E381590);
    sub_24E1ABE04();
    sub_24DFB4C28(&qword_27F1E6B90, &qword_27F1E6AF8, &qword_24E3815C0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6B70);
  }

  return result;
}

unint64_t sub_24E1ABE04()
{
  result = qword_27F1E6B78;
  if (!qword_27F1E6B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6AC0, &qword_24E381588);
    sub_24E1ABEBC();
    sub_24DFB4C28(&qword_27F1DF820, &qword_27F1DF7E0, &qword_24E36BC00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6B78);
  }

  return result;
}

unint64_t sub_24E1ABEBC()
{
  result = qword_27F1E6B80;
  if (!qword_27F1E6B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6AB8, &qword_24E381580);
    sub_24DFB4C28(&qword_27F1E6B88, &qword_27F1E6AB0, &qword_24E381578, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6B80);
  }

  return result;
}

double OUTLINED_FUNCTION_7_46()
{
  if (v0 >= v1)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24E1ABF9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v74 = sub_24E344908();
  OUTLINED_FUNCTION_0_14();
  v73 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v5);
  v78 = sub_24E344918();
  OUTLINED_FUNCTION_0_14();
  v77 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v8);
  v66 = sub_24E344988();
  OUTLINED_FUNCTION_0_14();
  v65 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v13);
  v15 = (&v60 - v14);
  v72 = sub_24E344998();
  OUTLINED_FUNCTION_0_14();
  v71 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v18);
  v19 = sub_24E344428();
  OUTLINED_FUNCTION_0_14();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  sub_24E344408();
  sub_24E344418();
  v28 = *(v21 + 8);
  v28(v27, v19);
  v67 = v21;
  v29 = *(v21 + 32);
  v29(v27, v24, v19);
  v82 = sub_24E3442D8();
  v83 = MEMORY[0x277D226E0];
  __swift_allocate_boxed_opaque_existential_1(&v81);
  sub_24E3442B8();
  sub_24E1AC74C(v2, __src);
  v30 = swift_allocObject();
  memcpy((v30 + 16), __src, 0xC0uLL);
  sub_24E344418();

  v69 = v21 + 8;
  v68 = v28;
  v28(v27, v19);
  v31 = v2;
  __swift_destroy_boxed_opaque_existential_1(&v81);
  v64 = v19;
  result = (v29)(v27, v24, v19);
  v33 = *(v2 + 136);
  v34 = *(v33 + 16);
  if (*(v2 + 80) <= 1)
  {
    if (v34)
    {
      v35 = 40;
      v36 = 32;
      goto LABEL_6;
    }
  }

  else
  {
    if (v34 >= 2)
    {
      v35 = 56;
      v36 = 48;
LABEL_6:
      v37 = *(v33 + v36);
      v38 = *(v33 + v35);
      sub_24DF89628(v2 + 40, __src);
      v39 = MEMORY[0x277D85048];
      v40 = MEMORY[0x277D225F8];
      v15[3] = MEMORY[0x277D85048];
      v15[4] = v40;
      *v15 = v37;
      v41 = *MEMORY[0x277D22980];
      v42 = *(v65 + 104);
      v43 = v66;
      v42(v15, v41, v66);
      v44 = v61;
      v61[3] = v39;
      v44[4] = v40;
      *v44 = v38;
      v42(v44, v41, v43);
      v45 = *MEMORY[0x277D22988];
      v42(v62, v45, v43);
      v42(v63, v45, v43);
      v46 = v70;
      sub_24E3449A8();
      v47 = v72;
      v82 = v72;
      v83 = MEMORY[0x277D22998];
      v48 = __swift_allocate_boxed_opaque_existential_1(&v81);
      v49 = v71;
      (*(v71 + 16))(v48, v46, v47);
      sub_24E344938();
      __src[3] = sub_24E344958();
      __src[4] = MEMORY[0x277D22970];
      __swift_allocate_boxed_opaque_existential_1(__src);
      sub_24E344968();
      (*(v73 + 104))(v75, *MEMORY[0x277D22950], v74);
      v50 = v64;
      v82 = v64;
      v83 = MEMORY[0x277D22778];
      v51 = __swift_allocate_boxed_opaque_existential_1(&v81);
      (*(v67 + 16))(v51, v27, v50);
      v52 = v76;
      sub_24E344928();
      v53 = v31[11];
      v54 = v31[12];
      v55 = v31[14];
      v56 = v31[13] + v31[16];
      v57 = v78;
      __src[3] = v78;
      __src[4] = MEMORY[0x277D22960];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__src);
      v59 = v77;
      (*(v77 + 16))(boxed_opaque_existential_1, v52, v57);
      MEMORY[0x25303B510](__src, v53, v54, v56, v55);
      (*(v59 + 8))(v52, v57);
      (*(v49 + 8))(v46, v47);
      return v68(v27, v50);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24E1AC7A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E1AC8C8();

  return MEMORY[0x282180C48](a1, a2, v4);
}

unint64_t sub_24E1AC800()
{
  result = qword_27F1E6BA0;
  if (!qword_27F1E6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6BA0);
  }

  return result;
}

unint64_t sub_24E1AC858()
{
  result = qword_27F1E6BA8;
  if (!qword_27F1E6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6BA8);
  }

  return result;
}

unint64_t sub_24E1AC8C8()
{
  result = qword_27F1E6BB0;
  if (!qword_27F1E6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6BB0);
  }

  return result;
}

void sub_24E1AC91C()
{
  OUTLINED_FUNCTION_32();
  v46 = v0;
  sub_24E343048();
  OUTLINED_FUNCTION_0_14();
  v43 = v2;
  v44 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_1();
  v42 = v4 - v3;
  v5 = sub_24E343468();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890, qword_24E377010);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_24E343368();
  OUTLINED_FUNCTION_0_14();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  sub_24E343478();
  OUTLINED_FUNCTION_0_14();
  v48 = v25;
  v49 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_1();
  v28 = v27 - v26;
  sub_24E343458();
  v29 = *MEMORY[0x277CC9988];
  v40 = *(v7 + 104);
  v40(v11, v29, v5);
  sub_24E343358();
  v47 = v28;
  sub_24E343448();
  v45 = *(v17 + 8);
  v45(v20, v15);
  v30 = *(v7 + 8);
  v41 = v5;
  v30(v11, v5);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_24E1ACE18(v14);
    v31 = v47;
    v32 = v45;
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6BB8, &qword_24E381750);
    v33 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_24E367D20;
    v40(v34 + v33, *MEMORY[0x277CC9960], v41);
    sub_24E1ADC74(v34);
    sub_24E343358();
    v35 = v42;
    sub_24E343438();

    v32(v20, v15);
    sub_24E343038();
    (*(v43 + 8))(v35, v44);
    v36 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v37 = sub_24E347CB8();
    [v36 setLocalizedDateFormatFromTemplate_];

    v38 = sub_24E3432E8();
    v39 = [v36 stringFromDate_];

    sub_24E347CF8();
    goto LABEL_7;
  }

  (*(v17 + 32))(v23, v14, v15);
  if ((sub_24E343308() & 1) == 0)
  {
    v32 = v45;
    v45(v23, v15);
    v31 = v47;
    goto LABEL_6;
  }

  Date._gkRelativeTimeAgoString()();
  v45(v23, v15);
  v31 = v47;
LABEL_7:
  (*(v48 + 8))(v31, v49);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E1ACE18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890, qword_24E377010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24E1ACE80()
{
  OUTLINED_FUNCTION_32();
  v4 = v3;
  v5 = sub_24E3479D8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_65();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_47(v8, v9, v10, v11, v12, v13, v14, v15, v33);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E7080, &unk_24E3821E0), OUTLINED_FUNCTION_11_35(), OUTLINED_FUNCTION_19_25(), v16))
  {
    OUTLINED_FUNCTION_0_137();
    while (v17 < *(v4 + 16))
    {
      v18 = OUTLINED_FUNCTION_2_88(v17);
      (v4)(v18);
      v19 = *(v1 + 40);
      OUTLINED_FUNCTION_9_45();
      v21 = sub_24E1AE1A8(&unk_27F1E7070, v20, MEMORY[0x277D22328]);
      OUTLINED_FUNCTION_17_30(v21);
      OUTLINED_FUNCTION_15_26();
      while (1)
      {
        OUTLINED_FUNCTION_4_74();
        if (v23)
        {
          break;
        }

        v24 = OUTLINED_FUNCTION_5_80();
        (v4)(v24);
        OUTLINED_FUNCTION_9_45();
        v26 = sub_24E1AE1A8(&qword_27F1E6C00, v25, MEMORY[0x277D22330]);
        OUTLINED_FUNCTION_14_29(v26);
        v27 = OUTLINED_FUNCTION_13_37();
        (v1)(v27);
        if (v19)
        {
          (v1)(v34, v5);
          v1 = v2;
          goto LABEL_12;
        }

        v1 = v2;
      }

      v28 = OUTLINED_FUNCTION_3_90(v22);
      v29(v28);
      v30 = *(v1 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_16;
      }

      *(v1 + 16) = v32;
LABEL_12:
      OUTLINED_FUNCTION_8_56();
      if (v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_18();
  }
}

void sub_24E1AD060()
{
  OUTLINED_FUNCTION_32();
  v4 = v3;
  v5 = sub_24E347108();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_65();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_47(v8, v9, v10, v11, v12, v13, v14, v15, v33);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6BE8, &qword_24E381770), OUTLINED_FUNCTION_11_35(), OUTLINED_FUNCTION_19_25(), v16))
  {
    OUTLINED_FUNCTION_0_137();
    while (v17 < *(v4 + 16))
    {
      v18 = OUTLINED_FUNCTION_2_88(v17);
      (v4)(v18);
      v19 = *(v1 + 40);
      OUTLINED_FUNCTION_10_44();
      v21 = sub_24E1AE1A8(&qword_27F1E6BF0, v20, MEMORY[0x277D21BE8]);
      OUTLINED_FUNCTION_17_30(v21);
      OUTLINED_FUNCTION_15_26();
      while (1)
      {
        OUTLINED_FUNCTION_4_74();
        if (v23)
        {
          break;
        }

        v24 = OUTLINED_FUNCTION_5_80();
        (v4)(v24);
        OUTLINED_FUNCTION_10_44();
        v26 = sub_24E1AE1A8(&qword_27F1E6BF8, v25, MEMORY[0x277D21BF0]);
        OUTLINED_FUNCTION_14_29(v26);
        v27 = OUTLINED_FUNCTION_13_37();
        (v1)(v27);
        if (v19)
        {
          (v1)(v34, v5);
          v1 = v2;
          goto LABEL_12;
        }

        v1 = v2;
      }

      v28 = OUTLINED_FUNCTION_3_90(v22);
      v29(v28);
      v30 = *(v1 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_16;
      }

      *(v1 + 16) = v32;
LABEL_12:
      OUTLINED_FUNCTION_8_56();
      if (v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_18();
  }
}

void sub_24E1AD240(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6BD8, &qword_24E381760), v2 = OUTLINED_FUNCTION_11_35(), (v36 = *(v1 + 16)) != 0))
  {
    v3 = 0;
    v4 = 0xED00007265646165;
    v5 = 0x48656C69666F7270;
    v34 = v1;
    v35 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v37 = v3;
      v6 = *(v35 + v3);
      sub_24E348D18();
      sub_24E17A62C(v6);
      sub_24E347DC8();

      sub_24E348D68();
      OUTLINED_FUNCTION_12_30();
      v8 = ~v7;
      v10 = v9 & ~v7;
      OUTLINED_FUNCTION_23_25();
      if ((v13 & v12) != 0)
      {
        while (1)
        {
          v14 = v4;
          v15 = v5;
          switch(*(*(v2 + 48) + v10))
          {
            case 1:
              v14 = 0xE600000000000000;
              v15 = 0x6C6961746564;
              break;
            case 2:
              v14 = 0xE800000000000000;
              v15 = 0x656D616E6B63696ELL;
              break;
            case 3:
              v15 = 0x616C506C6C616D73;
              v14 = 0xEF64726143726579;
              break;
            case 4:
              OUTLINED_FUNCTION_21_6();
              v15 = v17 + 1;
              v14 = 0x800000024E39CA00;
              break;
            case 5:
              v15 = 0x636F4C6C6C616D73;
              v20 = 7370091;
              goto LABEL_21;
            case 6:
              v15 = 0x65726F7453707061;
              v14 = 0xEE0070756B636F4CLL;
              break;
            case 7:
              OUTLINED_FUNCTION_21_6();
              v15 = v19 + 1;
              v14 = 0x800000024E39CA30;
              break;
            case 8:
              v15 = 0x6E49726579616C70;
              v14 = 0xED00007261426F66;
              break;
            case 9:
              OUTLINED_FUNCTION_24_6();
              v14 = v18 + 1275;
              v15 = 0x6174654474786574;
              break;
            case 0xA:
              v15 = 0x615064656C746974;
              v14 = 0xEF68706172676172;
              break;
            case 0xB:
              v15 = 0xD000000000000010;
              v14 = 0x800000024E39CA70;
              break;
            case 0xC:
              v15 = 0xD000000000000010;
              v14 = 0x800000024E39CA90;
              break;
            case 0xD:
              v15 = 0x666F725074696465;
              v14 = 0xEF6B6E694C656C69;
              break;
            case 0xE:
              OUTLINED_FUNCTION_24_6();
              v14 = v16 + 2807;
              v15 = 0x6461654865676170;
              break;
            case 0xF:
              v15 = 0x646E656972466F6ELL;
              v14 = 0xE900000000000073;
              break;
            case 0x10:
              v15 = 0x6979616C50776F6ELL;
              v14 = 0xEA0000000000676ELL;
              break;
            case 0x11:
              v15 = 0x65756E69746E6F63;
              v14 = 0xEF676E6979616C50;
              break;
            case 0x12:
              v15 = 0x7974697669746361;
              v14 = 0xEC00000064656546;
              break;
            case 0x13:
              v14 = 0xE700000000000000;
              v15 = 0x72616265646973;
              break;
            case 0x14:
              v15 = 0x6C6F686563616C70;
              v20 = 7497060;
LABEL_21:
              v14 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 0x15:
              v14 = 0xE600000000000000;
              v15 = 0x656E696C6E69;
              break;
            default:
              break;
          }

          v21 = v5;
          v22 = v5;
          v23 = v4;
          switch(v6)
          {
            case 1:
              v4 = 0xE600000000000000;
              v22 = 0x6C6961746564;
              break;
            case 2:
              v4 = 0xE800000000000000;
              v22 = 0x656D616E6B63696ELL;
              break;
            case 3:
              v22 = 0x616C506C6C616D73;
              v4 = 0xEF64726143726579;
              break;
            case 4:
              OUTLINED_FUNCTION_21_6();
              v22 = v25 + 1;
              v4 = 0x800000024E39CA00;
              break;
            case 5:
              v22 = 0x636F4C6C6C616D73;
              v28 = 7370091;
              goto LABEL_44;
            case 6:
              v22 = 0x65726F7453707061;
              v4 = 0xEE0070756B636F4CLL;
              break;
            case 7:
              OUTLINED_FUNCTION_21_6();
              v22 = v27 + 1;
              v4 = 0x800000024E39CA30;
              break;
            case 8:
              v22 = 0x6E49726579616C70;
              v4 = 0xED00007261426F66;
              break;
            case 9:
              OUTLINED_FUNCTION_24_6();
              v4 = v26 + 1275;
              v22 = 0x6174654474786574;
              break;
            case 10:
              v22 = 0x615064656C746974;
              v4 = 0xEF68706172676172;
              break;
            case 11:
              v22 = 0xD000000000000010;
              v4 = 0x800000024E39CA70;
              break;
            case 12:
              v22 = 0xD000000000000010;
              v4 = 0x800000024E39CA90;
              break;
            case 13:
              v22 = 0x666F725074696465;
              v4 = 0xEF6B6E694C656C69;
              break;
            case 14:
              OUTLINED_FUNCTION_24_6();
              v4 = v24 + 2807;
              v22 = 0x6461654865676170;
              break;
            case 15:
              v22 = 0x646E656972466F6ELL;
              v4 = 0xE900000000000073;
              break;
            case 16:
              v22 = 0x6979616C50776F6ELL;
              v4 = 0xEA0000000000676ELL;
              break;
            case 17:
              v22 = 0x65756E69746E6F63;
              v4 = 0xEF676E6979616C50;
              break;
            case 18:
              v22 = 0x7974697669746361;
              v4 = 0xEC00000064656546;
              break;
            case 19:
              v4 = 0xE700000000000000;
              v22 = 0x72616265646973;
              break;
            case 20:
              v22 = 0x6C6F686563616C70;
              v28 = 7497060;
LABEL_44:
              v4 = v28 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 21:
              v4 = 0xE600000000000000;
              v22 = 0x656E696C6E69;
              break;
            default:
              break;
          }

          if (v15 == v22 && v14 == v4)
          {
            break;
          }

          v30 = sub_24E348C08();

          v4 = v23;
          v5 = v21;
          if (v30)
          {
            goto LABEL_61;
          }

          v10 = (v10 + 1) & v8;
          OUTLINED_FUNCTION_23_25();
          if ((v12 & v13) == 0)
          {
            goto LABEL_58;
          }
        }

        v4 = v23;
        v5 = v21;
      }

      else
      {
LABEL_58:
        *(v2 + 56 + 8 * v11) = v12 | v13;
        *(*(v2 + 48) + v10) = v6;
        v31 = *(v2 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_64;
        }

        *(v2 + 16) = v33;
      }

LABEL_61:
      v3 = v37 + 1;
      v1 = v34;
      if (v37 + 1 == v36)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
  }

  else
  {
LABEL_62:
  }
}

void sub_24E1AD92C(uint64_t a1)
{
  v5 = sub_24DFD8654();
  if (v5)
  {
    v1 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2708, &qword_24E372F70);
    v6 = OUTLINED_FUNCTION_11_35();
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  v16 = sub_24DFD8654();
  if (v16)
  {
    OUTLINED_FUNCTION_16_28();
    while (1)
    {
      OUTLINED_FUNCTION_21_24();
      sub_24DFFA844();
      v7 = v1 ? MEMORY[0x25303F560](v2, a1) : *(v14 + 8 * v2);
      v8 = v7;
      v9 = __OFADD__(v2++, 1);
      if (v9)
      {
        break;
      }

      v1 = v7;
      sub_24E348618();
      OUTLINED_FUNCTION_12_30();
      while (1)
      {
        OUTLINED_FUNCTION_22_21();
        if (v11)
        {
          break;
        }

        sub_24DF88A8C(0, &qword_27F1E3560, 0x277CEC258);
        v12 = *(*(v6 + 48) + 8 * v3);
        v1 = sub_24E348628();

        if (v1)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_18_30(v10);
      if (v9)
      {
        goto LABEL_20;
      }

      *(v6 + 16) = v13;
LABEL_17:
      a1 = v15;
      if (v2 == v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_24E1ADA90()
{
  OUTLINED_FUNCTION_32();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0320, &qword_24E36DB68);
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_65();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_47(v8, v9, v10, v11, v12, v13, v14, v15, v31);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C08, &qword_24E381778), OUTLINED_FUNCTION_11_35(), OUTLINED_FUNCTION_19_25(), v16))
  {
    OUTLINED_FUNCTION_0_137();
    while (v17 < *(v4 + 16))
    {
      v18 = OUTLINED_FUNCTION_2_88(v17);
      (v4)(v18);
      v19 = *(v1 + 40);
      v20 = sub_24E1AE354(&qword_27F1E6C10, MEMORY[0x277CEE0F0]);
      OUTLINED_FUNCTION_17_30(v20);
      OUTLINED_FUNCTION_15_26();
      while (1)
      {
        OUTLINED_FUNCTION_4_74();
        if (v22)
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_5_80();
        (v4)(v23);
        v24 = sub_24E1AE354(&qword_27F1E6C18, MEMORY[0x277CEE0F8]);
        OUTLINED_FUNCTION_14_29(v24);
        v25 = OUTLINED_FUNCTION_13_37();
        (v1)(v25);
        if (v19)
        {
          (v1)(v32, v5);
          v1 = v2;
          goto LABEL_12;
        }

        v1 = v2;
      }

      v26 = OUTLINED_FUNCTION_3_90(v21);
      v27(v26);
      v28 = *(v1 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_16;
      }

      *(v1 + 16) = v30;
LABEL_12:
      OUTLINED_FUNCTION_8_56();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_18();
  }
}

uint64_t sub_24E1ADC74(uint64_t a1)
{
  v2 = sub_24E343468();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6BC0, &qword_24E381758);
  result = sub_24E348958();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_24E1AE1A8(&qword_27F1E6BC8, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
    v14 = sub_24E347C48();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v4, *(v8 + 48) + v16 * v12, v2);
      sub_24E1AE1A8(&qword_27F1E6BD0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
      v21 = sub_24E347CA8();
      v22 = *v11;
      (*v11)(v4, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_24E1ADFB8(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6BE0, &qword_24E381768), v2 = OUTLINED_FUNCTION_11_35(), v3 = v2, (v25 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v23 = v1;
    v24 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v24 + 8 * v4++);
      sub_24E347CF8();
      sub_24E348D18();
      v26 = v6;
      sub_24E347DC8();
      v7 = sub_24E348D68();

      OUTLINED_FUNCTION_12_30();
      v9 = ~v8;
      while (1)
      {
        v10 = v7 & v9;
        v11 = (v7 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v7 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = sub_24E347CF8();
        v16 = v15;
        if (v14 == sub_24E347CF8() && v16 == v17)
        {

          goto LABEL_17;
        }

        v19 = sub_24E348C08();

        if (v19)
        {

          goto LABEL_17;
        }

        v7 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v22;
LABEL_17:
      v1 = v23;
      if (v4 == v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_24E1AE1A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24E1AE1F0(uint64_t a1)
{
  v5 = sub_24DFD8654();
  if (v5)
  {
    v1 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E70A0, &qword_24E372F78);
    v6 = OUTLINED_FUNCTION_11_35();
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  v16 = sub_24DFD8654();
  if (v16)
  {
    OUTLINED_FUNCTION_16_28();
    while (1)
    {
      OUTLINED_FUNCTION_21_24();
      sub_24DFFA844();
      v7 = v1 ? MEMORY[0x25303F560](v2, a1) : *(v14 + 8 * v2);
      v8 = v7;
      v9 = __OFADD__(v2++, 1);
      if (v9)
      {
        break;
      }

      v1 = v7;
      sub_24E348618();
      OUTLINED_FUNCTION_12_30();
      while (1)
      {
        OUTLINED_FUNCTION_22_21();
        if (v11)
        {
          break;
        }

        sub_24DF88A8C(0, &qword_27F1E50D0, 0x277CCABB0);
        v12 = *(*(v6 + 48) + 8 * v3);
        v1 = sub_24E348628();

        if (v1)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_18_30(v10);
      if (v9)
      {
        goto LABEL_20;
      }

      *(v6 + 16) = v13;
LABEL_17:
      a1 = v15;
      if (v2 == v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_24E1AE354(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0320, &qword_24E36DB68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_0_137()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t OUTLINED_FUNCTION_11_35()
{

  return sub_24E348958();
}

uint64_t OUTLINED_FUNCTION_14_29(uint64_t a1)
{

  return sub_24E347CA8();
}

uint64_t OUTLINED_FUNCTION_17_30(uint64_t a1)
{

  return sub_24E347C48();
}

id sub_24E1AE614(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = v2;
  v4 = qword_27F1DD640;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_24E342EE8();
  __swift_project_value_buffer(v5, qword_27F20A9B0);
  sub_24DF90C4C();
  sub_24E3486E8();
  v7 = v6;

  if (v7)
  {
    return 0;
  }

  result = [v3 lineHeight];
  v10 = ceil(v9 * 1.3);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < 9.22337204e18)
  {
    return v10;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FriendListAccessAction(uint64_t a1)
{
  result = qword_27F1E6C20;
  if (!qword_27F1E6C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24E1AE7CC()
{
  swift_getKeyPath();
  sub_24E144134();
  sub_24E343538();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24E1AE874(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24E144134();
  sub_24E343538();

  return *(v2 + *a2);
}

void sub_24E1AE8E4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_24DFEA130();
  v5 = v4;
  v6 = sub_24E348628();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[2] = v2;
    v10[3] = a1;
    sub_24E1AEA44(v9, sub_24E1AF21C, v10);
  }
}

void sub_24E1AEA10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  v3 = a2;
}

BOOL sub_24E1AEB08(unsigned __int8 a1, char a2)
{
  v2 = a2 == 12 && a1 == 12;
  v3 = 0xE900000000000064;
  v4 = 0x72616F6268736164;
  v5 = 0xE900000000000064;
  v6 = a1;
  v7 = 0x72616F6268736164;
  switch(v6)
  {
    case 1:
      v5 = 0xE700000000000000;
      v7 = 0x656C69666F7270;
      break;
    case 2:
      v7 = 0x6F50737365636361;
      v5 = 0xEB00000000746E69;
      break;
    case 3:
      v7 = 0x7974697669746361;
      v5 = 0xEC00000064656546;
      break;
    case 4:
      v7 = 0x6D65766569686361;
      v8 = 7630437;
      goto LABEL_16;
    case 5:
      v7 = 0xD000000000000016;
      v5 = 0x800000024E39C840;
      break;
    case 6:
      v7 = 0x696472616F626E6FLL;
      v5 = 0xEA0000000000676ELL;
      break;
    case 7:
      v5 = 0xE600000000000000;
      v7 = 0x656461637261;
      break;
    case 8:
      v7 = 0x616C7069746C756DLL;
      v8 = 7497081;
      goto LABEL_16;
    case 9:
      v7 = 0x42656D6F636C6577;
      v5 = 0xED000072656E6E61;
      break;
    case 10:
      v7 = 0x6F6272656461656CLL;
      v8 = 6582881;
LABEL_16:
      v5 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 11:
      v7 = 0x676E656C6C616863;
      v5 = 0xE900000000000065;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 0:
      goto LABEL_30;
    case 1:
      v3 = 0xE700000000000000;
      v4 = 0x656C69666F7270;
      goto LABEL_30;
    case 2:
      v4 = 0x6F50737365636361;
      v3 = 0xEB00000000746E69;
      goto LABEL_30;
    case 3:
      v4 = 0x7974697669746361;
      v3 = 0xEC00000064656546;
      goto LABEL_30;
    case 4:
      v4 = 0x6D65766569686361;
      v9 = 7630437;
      goto LABEL_29;
    case 5:
      v4 = 0xD000000000000016;
      v3 = 0x800000024E39C840;
      goto LABEL_30;
    case 6:
      v4 = 0x696472616F626E6FLL;
      v3 = 0xEA0000000000676ELL;
      goto LABEL_30;
    case 7:
      v3 = 0xE600000000000000;
      v4 = 0x656461637261;
      goto LABEL_30;
    case 8:
      v4 = 0x616C7069746C756DLL;
      v9 = 7497081;
      goto LABEL_29;
    case 9:
      v4 = 0x42656D6F636C6577;
      v3 = 0xED000072656E6E61;
      goto LABEL_30;
    case 10:
      v4 = 0x6F6272656461656CLL;
      v9 = 6582881;
LABEL_29:
      v3 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      goto LABEL_30;
    case 11:
      v4 = 0x676E656C6C616863;
      v3 = 0xE900000000000065;
LABEL_30:
      if (v7 == v4 && v5 == v3)
      {
        v2 = 1;
      }

      else
      {
        v2 = sub_24E348C08();
      }

      break;
    default:
      return (v2 & 1) == 0;
  }

  return (v2 & 1) == 0;
}

BOOL sub_24E1AEE58(char a1, char a2)
{
  v2 = a2 == 20 && a1 == 20;
  if (a1 != 20 && a2 != 20)
  {
    sub_24E071740(a1);
    v6 = v5;
    v8 = v7;
    sub_24E071740(a2);
    if (v6 == v10 && v8 == v9)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_24E348C08();
    }
  }

  return (v2 & 1) == 0;
}

uint64_t sub_24E1AEF40(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = *a2;
  result = a3(*(v5 + *a2), a1);
  if (result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12[2] = v5;
    v13 = v7;
    sub_24E1AEA44(v11, a5, v12);
  }

  else
  {
    *(v5 + v8) = v7;
  }

  return result;
}

uint64_t sub_24E1AEFF0()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI17ProfileEditorData_metricsContext;
  sub_24E347638();
  OUTLINED_FUNCTION_0_26();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC12GameCenterUI17ProfileEditorData___observationRegistrar;
  sub_24E343578();
  OUTLINED_FUNCTION_0_26();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_24E1AF080()
{
  sub_24E1AEFF0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ProfileEditorData(uint64_t a1)
{
  result = qword_27F1E6C48;
  if (!qword_27F1E6C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E1AF12C(uint64_t a1)
{
  result = sub_24E347638();
  if (v2 <= 0x3F)
  {
    result = sub_24E343578();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24E1AF268()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0, &unk_24E36C770);
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v14 - v5;
  v7 = sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = [objc_opt_self() local];
  sub_24E347628();
  sub_24E3477D8();
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24E32EA08();
  v14[0] = sub_24E3477C8();
  v14[1] = MEMORY[0x277D221C0];
  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0, &unk_24E36C100);
  sub_24E3475B8();
  (*(v3 + 8))(v6, v1);

  (*(v9 + 8))(v12, v7);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17ProfileEditorData__pageType) = 12;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17ProfileEditorData__pageId) = 20;
  sub_24E343568();
  return v0;
}

void *sub_24E1AF4F4(void *a1)
{
  if (sub_24E1AFAAC(a1))
  {
  }

  return a1;
}

id sub_24E1AF560(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = [objc_allocWithZone(GKDashboardPlayerPhotoView) init];
  v8 = v7;
  if ((a4 & 1) == 0)
  {
    [v7 setAvatarSize_];
  }

  v9 = v8;
  LODWORD(v10) = 1132068864;
  [v9 setContentCompressionResistancePriority:1 forAxis:v10];
  LODWORD(v11) = 1132068864;
  [v9 setContentCompressionResistancePriority:0 forAxis:v11];
  v12 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
  v21 = CGSizeMake;
  v22 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  OUTLINED_FUNCTION_0_139();
  v19 = v13;
  v20 = &block_descriptor_3_1;
  v14 = _Block_copy(&v17);
  v15 = v12;
  [v9 setPlayer:v15 completionHandler:{v14, v17, v18}];
  _Block_release(v14);

  sub_24DFD8050(0x7641726579616C50, 0xEC00000072617461, v9);
  [v9 setUserInteractionEnabled_];

  return v9;
}

void sub_24E1AF6FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
  v5 = [a1 player];
  if (!v5)
  {
    v15 = v4;
    goto LABEL_10;
  }

  v6 = v5;
  sub_24DF95978();
  v18 = v4;
  v7 = sub_24E348628();

  if ((v7 & 1) == 0)
  {
LABEL_10:
    aBlock[4] = CGSizeMake;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_0_139();
    aBlock[2] = v16;
    aBlock[3] = &block_descriptor_64;
    v17 = _Block_copy(aBlock);
    [a1 setPlayer:v4 completionHandler:v17];

    _Block_release(v17);
    return;
  }

  v8 = [a1 player];
  if (!v8)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v18 alias];
  if (!v10)
  {
    sub_24E347CF8();
    v10 = sub_24E347CB8();
  }

  [v9 setAlias_];

  v11 = [a1 player];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11;
  v13 = [v11 internal];

  if (sub_24E1AFB44([v18 internal]))
  {
    v14 = sub_24E347BE8();
  }

  else
  {
    v14 = 0;
  }

  [v13 setPhotos_];

  [a1 invalidatePhoto];
}

uint64_t sub_24E1AF9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E1AFBBC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E1AFA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E1AFBBC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E1AFA84(uint64_t a1)
{
  sub_24E1AFBBC();
  sub_24E345E08();
  __break(1u);
}

uint64_t sub_24E1AFAAC(void *a1)
{
  v1 = [a1 photos];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347C08();

  return v3;
}

double block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24E1AFB44(void *a1)
{
  v2 = [a1 photos];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347C08();

  return v3;
}

unint64_t sub_24E1AFBBC()
{
  result = qword_27F1E6C58;
  if (!qword_27F1E6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6C58);
  }

  return result;
}

void DashboardActivityFeedViewController.init(dashboardDisplayMode:navigationProxy:activityIdentifier:objectGraph:)()
{
  OUTLINED_FUNCTION_32();
  v55 = v0;
  v56 = v1;
  v57 = v2;
  v58 = v3;
  v46 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60, &unk_24E36C0F0);
  OUTLINED_FUNCTION_4_5(v7);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_3();
  v54 = v9;
  sub_24E347388();
  OUTLINED_FUNCTION_0_14();
  v49 = v11;
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v51 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0, &unk_24E36C770);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_74();
  v15 = sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_1();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v47 = *v6;
  sub_24E3477D8();
  v25 = sub_24E3477C8();
  sub_24E347628();
  v59[0] = v25;
  v59[1] = MEMORY[0x277D221C0];

  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0, &unk_24E36C100);
  sub_24E3475B8();
  v26 = OUTLINED_FUNCTION_5_81();
  v27(v26);

  v52 = *(v17 + 8);
  v53 = v17 + 8;
  v52(v21, v15);
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  (*(v49 + 16))(v51, qword_27F20B960 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline, v50);
  v28 = *(v17 + 16);
  v48 = v24;
  v28(v21, v24, v15);
  v29 = sub_24E347118();
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v29);
  sub_24E3476A8();
  swift_allocObject();
  v50 = v15;
  v30 = sub_24E347658();
  v59[0] = v47;
  v31 = objc_allocWithZone(type metadata accessor for DashboardActivityFeedPresenter(0));

  v32 = sub_24E2B5324(v59, v30);
  *(v55 + OBJC_IVAR____TtC12GameCenterUI35DashboardActivityFeedViewController_activityFeedPresenter) = v32;
  v33 = v57;
  sub_24DF8BD90(v57, v59, &qword_27F1E1B70, qword_24E3756A0);

  v34 = v32;
  sub_24E137668();
  v36 = v35;
  v37 = OBJC_IVAR____TtC12GameCenterUI35DashboardActivityFeedViewController_activityFeedPresenter;
  v38 = *&v35[OBJC_IVAR____TtC12GameCenterUI35DashboardActivityFeedViewController_activityFeedPresenter];
  v39 = v35;
  v40 = v38;
  v41 = sub_24E2B5160();
  v43 = v42;

  sub_24DFF79C8(v41, v43, v39);

  sub_24DF8BFF4(v33, &qword_27F1E1B70, qword_24E3756A0);
  v52(v48, v50);
  v44 = v58;
  if (v58)
  {
    v45 = *&v36[v37] + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_scrollToActivityInfo;
    *v45 = v46;
    *(v45 + 8) = v44;
    *(v45 + 16) = 0;
    *(v45 + 24) = 1;
  }

  else
  {
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E1B01C4(uint64_t a1)
{
  v2 = v1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for DashboardActivityFeedViewController();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v3 = *&v1[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  sub_24E19116C(v4, v5, v6, v7, v8, v9, v10, v11);

  v12 = [v2 view];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 setLayoutMarginsFollowReadableWidth_];

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v14 = [v2 navigationItem];
    [v14 setStyle_];
  }
}

void sub_24E1B02E4(uint64_t a1)
{
  v2.receiver = v1;
  v2.super_class = type metadata accessor for DashboardActivityFeedViewController();
  objc_msgSendSuper2(&v2, sel_viewWillLayoutSubviews);
  sub_24E1B16E0();
}

void sub_24E1B0364()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 safeAreaLayoutGuide];

  [v3 layoutFrame];
  LODWORD(v3) = GKIsXRUIIdiomShouldUsePadUI();
  v4 = [v0 collectionView];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = [v4 safeAreaLayoutGuide];

      [v6 layoutFrame];
      v7 = [v0 traitCollection];
      v8 = objc_allocWithZone(type metadata accessor for PageGrid());
      v9 = PageGrid.init(size:traitCollection:idealColumnSizeCategory:)(v7);
LABEL_7:

      return;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    type metadata accessor for PageGrid();
    [v5 frame];

    v10 = [v0 traitCollection];
    v9 = PageGrid.__allocating_init(size:traitCollection:)();
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void sub_24E1B0588()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C40, &unk_24E375E80);
  OUTLINED_FUNCTION_0_14();
  v39 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_3();
  v38 = v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CA0, &unk_24E36BFD0);
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C30, &unk_24E36C0A0);
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v40 = v3;
  sub_24E137F30();

  v19 = OUTLINED_FUNCTION_16_29();
  if (!v19)
  {
    __break(1u);
    goto LABEL_8;
  }

  v20 = v19;
  v36 = v4;
  sub_24E1E086C();

  v21 = OUTLINED_FUNCTION_16_29();
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v22 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource;
  v23 = *(v1 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = v21;
  v25 = v23;
  sub_24E0B0548(v24, v25, v40);

  v26 = OUTLINED_FUNCTION_16_29();
  if (!v26)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v27 = v26;
  [v26 setDataSource_];

  v28 = OUTLINED_FUNCTION_16_29();
  if (v28)
  {
    v29 = v28;
    sub_24E1B0C5C();
    v31 = v30;
    [v29 setCollectionViewLayout_];

    v32 = sub_24E137E60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C70, &unk_24E36C0B0);
    sub_24E041D60(&unk_27F1E97F0, &unk_27F1E1C70, &unk_24E36C0B0);
    sub_24E347198();
    type metadata accessor for DashboardActivityFeedViewController();
    OUTLINED_FUNCTION_13_38(v41, v1);

    __swift_destroy_boxed_opaque_existential_1(v41);
    (*(v15 + 8))(v18, v13);
    v33 = sub_24E137E60();
    sub_24E287BB0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CB0, qword_24E381AB0);
    sub_24E041D60(&unk_27F1E1C60, &unk_27F1E6CB0, qword_24E381AB0);
    sub_24E347198();
    OUTLINED_FUNCTION_13_38(v41, v1);

    __swift_destroy_boxed_opaque_existential_1(v41);
    (*(v9 + 8))(v12, v37);
    v34 = sub_24E137E60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0, &unk_24E36FA60);
    sub_24E041D60(&unk_27F1E1C50, &unk_27F1E6CC0, &unk_24E36FA60);
    sub_24E347198();
    v35 = v38;
    OUTLINED_FUNCTION_13_38(v41, v1);

    __swift_destroy_boxed_opaque_existential_1(v41);
    (*(v39 + 8))(v35, v36);
    sub_24E2B51F4(v40);
    OUTLINED_FUNCTION_18();
    return;
  }

LABEL_11:
  __break(1u);
}

void (*sub_24E1B0A90(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E1B3658;
}

void (*sub_24E1B0AF8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E052A04;
}

uint64_t (*sub_24E1B0B5C(void *a1))(void *a1)
{
  v1 = sub_24E1B0AF8(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24DFC147C;
}

void (*sub_24E1B0BB4(void *a1))(__int128 *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E1B3650;
}

void sub_24E1B0C5C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(MEMORY[0x277D752B8]);
  v4 = v2;
  v5 = sub_24E237540(sub_24E1B3560, v3, v4);
  v6 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout;
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout) = v5;
  v8 = v5;

  if (v8)
  {
    type metadata accessor for SectionBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_24DFEA80C();
    v10 = sub_24E347CB8();

    [v8 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v10];

    v11 = *(v1 + v6);
    if (v11)
    {
      v11;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_24E1B0DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  MEMORY[0x28223BE20](v11);
  i = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v49 = &v43 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v46 = a2;
  v47 = v16;
  v21 = *&Strong[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource];
  if (!v21)
  {
    goto LABEL_15;
  }

  a2 = Strong;
  v22 = v21;
  sub_24DFB8854(a1, i);

  if (__swift_getEnumTagSinglePayload(i, 1, v14) != 1)
  {
    v23 = v14;
    v45 = *(v15 + 32);
    v24 = v49;
    v48 = v23;
    v45(v49, i, v23);
    sub_24E1B0364();
    v26 = v25;
    v28 = v27;

    v29 = sub_24E137E60();

    sub_24DFC15B4(v10, v7, a1);
    v30 = sub_24DFC15B8();
    v31 = sub_24E1E108C(v24, v10, v7, v30, v46, 0.0, v26, 0.0, v28);

    sub_24DF8BFF4(v7, &unk_27F1E1CB0, &unk_24E36D160);
    sub_24DF8BFF4(v10, &unk_27F1E1CB0, &unk_24E36D160);
    [v31 contentInsets];
    [v31 setContentInsets_];
    [v31 contentInsets];
    [v31 setContentInsets_];
    v32 = swift_allocObject();
    v44 = a2;
    swift_unknownObjectWeakInit();
    v46 = v15;
    v33 = v48;
    (*(v15 + 16))(v17, v24, v48);
    v34 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v35 = (v47 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v45((v36 + v34), v17, v33);
    *(v36 + v35) = v32;
    aBlock[4] = sub_24E1B3568;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E288CBC;
    aBlock[3] = &block_descriptor_65;
    v37 = _Block_copy(aBlock);

    [v31 setVisibleItemsInvalidationHandler_];
    _Block_release(v37);
    v38 = [v31 decorationItems];
    sub_24DF88A8C(0, &qword_27F1E7690, 0x277CFB838);
    a2 = sub_24E347F08();

    v39 = sub_24DFD8654();
    for (i = 0; ; ++i)
    {
      if (v39 == i)
      {

        (*(v46 + 8))(v49, v48);
        return v31;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x25303F560](i, a2);
      }

      else
      {
        if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v40 = *(a2 + 8 * i + 32);
      }

      v41 = v40;
      if (__OFADD__(i, 1))
      {
        break;
      }

      [v40 contentInsets];
      [v41 setContentInsets_];
      [v41 contentInsets];
      [v41 setContentInsets_];
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  sub_24DF8BFF4(i, &unk_27F1E1CB0, &unk_24E36D160);
LABEL_17:
  result = sub_24E348AE8();
  __break(1u);
  return result;
}

uint64_t sub_24E1B138C(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_24E347478();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_24E3474B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_24DF8BFF4(v11, &qword_27F1E58A0, &unk_24E36BF80);
  }

  (*(v13 + 32))(v15, v11, v12);
  [objc_msgSend(a3 container)];
  swift_unknownObjectRelease();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_primaryImpressionsCalculator);

    if (v19)
    {
      sub_24E347498();
      sub_24E347728();

      (*(v20 + 8))(v8, v6);
    }
  }

  return (*(v13 + 8))(v15, v12);
}

void sub_24E1B16E0()
{
  v1 = [v0 navigationItem];
  if (qword_27F1DDC28 != -1)
  {
    swift_once();
  }

  v2 = sub_24E3444F8();
  __swift_project_value_buffer(v2, qword_27F20B488);
  sub_24E3444E8();
  v4 = v3;
  sub_24E1B0364();
  v6 = v5;
  sub_24E3444E8();
  v8 = v7;
  sub_24E1B0364();
  [v1 setLargeTitleInsets_];

  v9 = [v0 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 navigationBar];

    [v11 setNeedsLayout];
  }
}

void sub_24E1B184C()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80, qword_24E3715F0);
  OUTLINED_FUNCTION_4_5(v3);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_74();
  v5 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v12 = *&v0[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource];
  if (!v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = v12;
  OUTLINED_FUNCTION_8_11();
  sub_24E344CE8();

  v14 = *&v0[OBJC_IVAR____TtC12GameCenterUI35DashboardActivityFeedViewController_activityFeedPresenter];
  v15 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_didScrollToIndexPath;
  if (*(v14 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_didScrollToIndexPath))
  {
    return;
  }

  v16 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_scrollToIndexPath;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  sub_24DF8BD90(v14 + v16, v1, &unk_27F1E6C80, qword_24E3715F0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_24DF8BFF4(v1, &unk_27F1E6C80, qword_24E3715F0);
    return;
  }

  (*(v7 + 32))(v11, v1, v5);
  v17 = [v2 collectionView];
  if (!v17)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = sub_24E343488();
  [v18 scrollToItemAtIndexPath:v19 atScrollPosition:2 animated:0];

  v20 = OUTLINED_FUNCTION_2_34();
  v21(v20);
  *(v14 + v15) = 1;
}

void sub_24E1B1A84()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0, &unk_24E36C060);
  OUTLINED_FUNCTION_0_14();
  v57 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_3();
  v58 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  OUTLINED_FUNCTION_0_14();
  v59 = v13;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80, qword_24E3715F0);
  OUTLINED_FUNCTION_4_5(v17);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_1();
  v27 = v26 - v25;
  v28 = type metadata accessor for DashboardActivityFeedViewController();
  v60.receiver = v1;
  v60.super_class = v28;
  objc_msgSendSuper2(&v60, sel_viewDidDisappear_, v3 & 1);
  v29 = *&v1[OBJC_IVAR____TtC12GameCenterUI35DashboardActivityFeedViewController_activityFeedPresenter];
  if (*(v29 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_didScrollToIndexPath) != 1)
  {
    goto LABEL_15;
  }

  v56 = v4;
  v30 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_scrollToIndexPath;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  sub_24DF8BD90(v29 + v30, v20, &unk_27F1E6C80, qword_24E3715F0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    v31 = &unk_27F1E6C80;
    v32 = qword_24E3715F0;
    v33 = v20;
LABEL_4:
    sub_24DF8BFF4(v33, v31, v32);
LABEL_15:
    OUTLINED_FUNCTION_18();
    return;
  }

  (*(v23 + 32))(v27, v20, v21);
  v34 = [v1 navigationController];
  if (!v34)
  {
LABEL_14:
    v51 = OUTLINED_FUNCTION_9_46();
    v52(v51);
    goto LABEL_15;
  }

  v35 = v34;
  v36 = [v34 topViewController];
  if (v36)
  {
    v37 = v36;

    if (v37 == v1)
    {
      v53 = OUTLINED_FUNCTION_9_46();
      v54(v53);

      goto LABEL_15;
    }
  }

  v55 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource;
  v38 = *&v1[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource];
  if (!v38)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = v38;
  sub_24E344CD8();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  v41 = v59;
  if (EnumTagSinglePayload == 1)
  {
    v42 = OUTLINED_FUNCTION_9_46();
    v43(v42);

    v31 = &unk_27F1E6C70;
    v32 = &unk_24E3715E0;
    v33 = v11;
    goto LABEL_4;
  }

  (*(v59 + 32))(v16, v11, v12);
  v44 = *&v1[v55];
  if (!v44)
  {
    goto LABEL_18;
  }

  v45 = v44;
  sub_24E344CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1C10, qword_24E381A20);
  v46 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_24E367D20;
  (*(v41 + 16))(v47 + v46, v16, v12);
  sub_24E344B08();

  v48 = *&v1[v55];
  if (v48)
  {
    v49 = v48;
    v50 = v58;
    OUTLINED_FUNCTION_8_11();
    sub_24E344CE8();

    (*(v57 + 8))(v50, v56);
    (*(v59 + 8))(v16, v12);
    goto LABEL_14;
  }

LABEL_19:
  __break(1u);
}

void sub_24E1B1FCC()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  sub_24E344C28();
  OUTLINED_FUNCTION_0_14();
  v73 = v5;
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v72 = v7 - v6;
  v8 = sub_24E344CA8();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - v19;
  v21 = *v3;
  v22 = *(v3 + 8);
  v23 = *(v3 + 16);
  v24 = v1;
  sub_24DFFE6D0(0);
  if (v21 == 2)
  {
    v31 = [v1 navigationController];
    if (!v31)
    {
      goto LABEL_13;
    }

    v74 = v31;
    [v31 setNeedsFocusUpdate];
    OUTLINED_FUNCTION_18();
  }

  else
  {
    if (v21 == 1)
    {
      sub_24E344C98();
      v25 = sub_24E344C08();
      (*(v10 + 8))(v20, v8);
      v26 = v25;
      v27 = [v1 view];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 backgroundColor];

        [v26 setBackgroundColor_];
        v30 = v26;
        sub_24DFFE6D0(v26);

LABEL_13:
        OUTLINED_FUNCTION_18();
        return;
      }

      __break(1u);
    }

    else
    {
      v68 = v17;
      v69 = v10;
      v70 = v8;
      v71 = v1;
      v67 = 0x800000024E39EA90;
      v34 = v21;
      sub_24DF88BEC(v22, v23);
      v35 = sub_24E347CB8();
      v36 = GKGameCenterUIFrameworkBundle();
      v37 = OUTLINED_FUNCTION_23_7(v36);

      v66 = sub_24E347CF8();
      v65 = v38;

      v39 = sub_24E347CB8();
      v40 = GKGameCenterUIFrameworkBundle();
      v41 = OUTLINED_FUNCTION_23_7(v40);

      v42 = sub_24E347CF8();
      v44 = v43;

      v45 = sub_24E347CB8();
      v46 = GKGameCenterUIFrameworkBundle();
      v47 = GKGetLocalizedStringFromTableInBundle();

      v48 = sub_24E347CF8();
      v50 = v49;

      v76[0] = 0xD000000000000016;
      v51 = v67;
      v76[1] = v67;
      v76[2] = v21;
      v76[3] = v66;
      v76[4] = v65;
      v76[5] = v42;
      v76[6] = v44;
      v77 = v48;
      v78 = v50;
      v79 = v22;
      v80 = v23;
      sub_24E344C58();
      sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
      sub_24E1A5748(0xD000000000000016, v51, 0);
      sub_24E344C68();
      v52 = v79;
      v53 = v80;

      sub_24E344C48();

      sub_24E344BF8();
      if (v52)
      {
        v67 = v77;

        v54 = v72;
        sub_24E344C38();
        sub_24DF88A8C(0, &qword_27F1DFB08, 0x277D750C8);
        v55 = swift_allocObject();
        *(v55 + 16) = v52;
        *(v55 + 24) = v53;

        OUTLINED_FUNCTION_8_11();
        v56 = sub_24E348658();
        sub_24E344C18();

        v57 = sub_24E344C78();
        sub_24E348668();
        v57(&v75, 0);

        sub_24DE73FA0(v52, v53);
        (*(v73 + 8))(v54, v74);
      }

      v59 = v69;
      v58 = v70;
      v60 = v68;
      (*(v69 + 32))(v68, v14, v70);
      sub_24DF88A8C(0, &unk_27F1E6CD0, 0x277D753A8);
      (*(v59 + 16))(v20, v60, v58);
      v61 = sub_24E348498();
      v62 = [v71 view];
      if (v62)
      {
        v63 = v62;
        v64 = [v62 backgroundColor];

        [v61 setBackgroundColor_];
        sub_24DFFE6D0(v61);
        sub_24DFC13E4(v76);

        (*(v59 + 8))(v60, v58);
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_24E1B2684()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v77 = v4;
  v72 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  OUTLINED_FUNCTION_0_14();
  v75 = v7;
  v76 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_3();
  v73 = v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  v74 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v78 = &v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  OUTLINED_FUNCTION_4_5(v15);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  OUTLINED_FUNCTION_0_14();
  v80 = v20;
  v81 = v19;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_3();
  v79 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v23);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v68 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  OUTLINED_FUNCTION_0_14();
  v29 = v28;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_74();
  v31 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource;
  v32 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  if (v32)
  {
    v33 = v0;
    v34 = v32;
    sub_24E344CD8();

    if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
    {
      v35 = &unk_27F1E6C70;
      v36 = &unk_24E3715E0;
      v37 = v26;
      goto LABEL_9;
    }

    (*(v29 + 32))(v1, v26, v27);
    v38 = *(v33 + v31);
    if (v38)
    {
      v39 = v38;
      v40 = sub_24E3434D8();
      sub_24DFB8854(v40, v18);

      v41 = v81;
      if (__swift_getEnumTagSinglePayload(v18, 1, v81) == 1)
      {
        v42 = OUTLINED_FUNCTION_5_81();
        v43(v42);
        v35 = &unk_27F1E1CB0;
        v36 = &unk_24E36D160;
        v37 = v18;
      }

      else
      {
        v45 = v79;
        v44 = v80;
        (*(v80 + 32))(v79, v18, v41);
        v46 = v77;
        ObjectType = swift_getObjectType();
        v48 = dynamic_cast_existential_1_conditional(v46, ObjectType, &protocol descriptor for AnyComponentCell);
        if (!v48)
        {
          (*(v44 + 8))(v45, v41);
          v66 = OUTLINED_FUNCTION_5_81();
          v67(v66);
          goto LABEL_10;
        }

        v68 = v3;
        v69 = v48;
        v50 = v71;
        v51 = *(v71 + 48);
        v70 = v49;
        v77 = v46;
        v52 = sub_24E137E60();
        v53 = sub_24E3434D8();
        v54 = v78 + v51;
        v55 = v78;
        sub_24DFC15B4(v78, v54, v53);

        v56 = *(v33 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_components);
        v57 = v74;
        sub_24DF8BD90(v55, v74, &unk_27F1E1CA0, &unk_24E36C0D0);
        v58 = *(v50 + 48);

        v59 = v73;
        sub_24E3448C8();

        v60 = sub_24DFC15B8();
        v61 = v57 + v58;
        v62 = v58;
        v63 = v79;
        (*(*v56 + 152))(v69, v70, v68, v1, v79, v57, v61, v59, v72, v60);

        (*(v75 + 8))(v59, v76);
        sub_24DF8BFF4(v78, &unk_27F1E1CA0, &unk_24E36C0D0);
        (*(v80 + 8))(v63, v81);
        v64 = OUTLINED_FUNCTION_5_81();
        v65(v64);
        sub_24DF8BFF4(v57 + v62, &unk_27F1E1CB0, &unk_24E36D160);
        v37 = OUTLINED_FUNCTION_2_34();
        v36 = &unk_24E36D160;
      }

LABEL_9:
      sub_24DF8BFF4(v37, v35, v36);
LABEL_10:
      OUTLINED_FUNCTION_18();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24E1B2D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v27);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  OUTLINED_FUNCTION_0_14();
  v33 = v32;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_74();
  v35 = sub_24E343488();
  v36 = [v26 cellForItemAtIndexPath_];

  if (!v36)
  {
    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v36, ObjectType, &protocol descriptor for ComponentCell))
  {

LABEL_7:
    OUTLINED_FUNCTION_18();
    return;
  }

  v38 = *(v24 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  if (v38)
  {
    v39 = v38;
    sub_24E344CD8();

    if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
    {

      sub_24DF8BFF4(v30, &unk_27F1E6C70, &unk_24E3715E0);
    }

    else
    {
      (*(v33 + 32))(v21, v30, v31);
      swift_getObjectType();
      sub_24DFC15B8();
      sub_24E29753C();

      (*(v33 + 8))(v21, v31);
    }

    goto LABEL_7;
  }

  __break(1u);
}

id sub_24E1B30A0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80, qword_24E3715F0);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = v33 - v6;
  v8 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v14 = v13 - v12;
  v33[1] = [a2 identifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA8D0, &qword_24E37E2B0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    (*(v10 + 32))(v14, v7, v8);
    v15 = sub_24E343488();
    v16 = [a1 cellForItemAtIndexPath_];

    if (v16)
    {
      v17 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
      v18 = v16;
      [v18 frame];
      Width = CGRectGetWidth(v34);
      [v18 frame];
      Height = CGRectGetHeight(v35);
      ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
      v22 = 16.0;
      if (ShouldUsePadUI)
      {
        v22 = 0.0;
      }

      v23 = Height - v22;
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for PlayerCardTheme(0);
      __swift_project_value_buffer(v24, qword_27F20BF00);
      v25 = [objc_allocWithZone(MEMORY[0x277D75C80]) init];
      v27 = sub_24E336558(v25, v26);

      v28 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, Width, v23, v27}];
      [v17 setVisiblePath_];

      v29 = [objc_opt_self() clearColor];
      [v17 setBackgroundColor_];

      sub_24DF88A8C(0, &qword_27F1E6CE0, 0x277D75B90);
      v16 = sub_24E2E1614(v18, v17);
    }

    v30 = OUTLINED_FUNCTION_2_34();
    v31(v30);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_24DF8BFF4(v7, &unk_27F1E6C80, qword_24E3715F0);
    return 0;
  }

  return v16;
}

id DashboardActivityFeedViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DashboardActivityFeedViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24E1B3568(uint64_t a1, void *a2, double a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E1B138C(a3, a1, a2, v3 + v8, v9);
}

double block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t OUTLINED_FUNCTION_13_38(uint64_t a1, uint64_t a2)
{

  return sub_24E3471A8();
}

id OUTLINED_FUNCTION_16_29()
{

  return [v0 (v1 + 2424)];
}

uint64_t sub_24E1B36DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E1B371C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_24E1B37A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v10 = a3;
  v4 = a3;
  v5 = swift_readAtKeyPath();
  v7 = *v6;
  v5(v9, 0);

  return v7;
}

void sub_24E1B3814(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a1 & 1;
  v12 = a4;
  v6 = a4;
  v7 = swift_readAtKeyPath();
  v9 = *v8;
  v7(&v11, 0);

  if (v9 != v5)
  {
    v11 = v6;
    LOBYTE(v12) = v5;
    v10 = v6;
    swift_setAtReferenceWritableKeyPath();
  }
}

BOOL sub_24E1B38BC(uint64_t *a1, uint64_t a2)
{
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return CGRectEqualToRect(*(a1 + 2), *(a2 + 16));
  }

  v5 = sub_24E348C08();
  result = 0;
  if (v5)
  {
    return CGRectEqualToRect(*(a1 + 2), *(a2 + 16));
  }

  return result;
}

uint64_t sub_24E1B397C@<X0>(void *a1@<X8>)
{
  if (qword_27F1DD980 != -1)
  {
    swift_once();
  }

  *a1 = qword_27F20B108;
}

void sub_24E1B39F4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v1 = sub_24E347CF8();
  v3 = v2;
  v4 = sub_24E347CF8();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D08, &qword_24E381C08);
  sub_24E346B88();
  v7 = sub_24DFD8654();

  sub_24E1B98D4(v1, v3, v4, v6, v7, v0);
}

void sub_24E1B3ADC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D08, &qword_24E381C08);
  sub_24E346B88();
  sub_24DFD8654();
  OUTLINED_FUNCTION_8_57();
  while (1)
  {
    if (v0 == v1)
    {

      return;
    }

    if (v2)
    {
      v5 = MEMORY[0x25303F560](v1);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_14;
      }

      v5 = *(v7 + 8 * v1 + 32);
    }

    v6 = v5;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if ([v5 (v4 + 2915)])
    {
      sub_24E348A48();
      OUTLINED_FUNCTION_10_45();
      sub_24E348A78();
      OUTLINED_FUNCTION_10_45();
      sub_24E348A88();
      sub_24E348A58();
    }

    else
    {
    }

    ++v1;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_24E1B3C04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D08, &qword_24E381C08);
  sub_24E346B88();
  sub_24DFD8654();
  OUTLINED_FUNCTION_8_57();
  while (1)
  {
    if (v0 == v1)
    {

      return;
    }

    if (v2)
    {
      v5 = MEMORY[0x25303F560](v1);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_14;
      }

      v5 = *(v7 + 8 * v1 + 32);
    }

    v6 = v5;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if ([v5 (v4 + 2915)])
    {
    }

    else
    {
      sub_24E348A48();
      OUTLINED_FUNCTION_10_45();
      sub_24E348A78();
      OUTLINED_FUNCTION_10_45();
      sub_24E348A88();
      sub_24E348A58();
    }

    ++v1;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_24E1B3D2C(char a1, void *a2)
{
  sub_24DF88A8C(0, &qword_280BDFA90, 0x277D0C138);
  static GKLocalPlayer.didAcceptFriendRequest(_:player:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D08, &qword_24E381C08);
  sub_24E346B88();
  v4 = sub_24DFD8654();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      sub_24E346B98();
      sub_24E1B39F4();
      return;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25303F560](i);
    }

    else
    {
      if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v6 = *(v15 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = sub_24E0C5B1C(v6);
    v10 = v9;
    v11 = sub_24E0C5B1C(a2);
    if (!v10)
    {
      if (v12)
      {
LABEL_16:

LABEL_17:
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
        continue;
      }

      goto LABEL_18;
    }

    if (!v12)
    {
      goto LABEL_16;
    }

    if (v8 != v11 || v10 != v12)
    {
      v14 = sub_24E348C08();

      if ((v14 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_18:

      continue;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

int *sub_24E1B3F48@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6EC0, &qword_24E381E38);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v1);
  v3 = v63 - v2;
  v68 = sub_24E345BD8();
  OUTLINED_FUNCTION_0_14();
  v65 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6EC8, &qword_24E381E40);
  OUTLINED_FUNCTION_0_14();
  v66 = v9;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v64 = v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6ED0, &qword_24E381E48);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v63 - v15;
  v16 = sub_24E347CB8();
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();

  v19 = sub_24E347CF8();
  v21 = v20;

  result = [objc_opt_self() shared];
  if (result)
  {
    v23 = result;
    KeyPath = swift_getKeyPath();
    sub_24E348068();
    v25 = v23;
    swift_retain_n();
    v26 = v25;
    v27 = sub_24E348058();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v26;
    v28[5] = KeyPath;
    v30 = v26;

    v31 = sub_24E348058();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = v29;
    v32[4] = v30;
    v32[5] = KeyPath;
    sub_24E346C98();

    v33 = v74;
    v34 = v75;
    v74 = *v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
    sub_24E346B88();
    if (v80 == 1)
    {
      v74 = v33;
      LOBYTE(v75) = v34;
      v76 = v19;
      v77 = v21;
      v63[0] = *(&v33 + 1);
      v63[1] = v21;
      v78 = v30;
      v79 = KeyPath;
      v67 = v33;
      if (qword_27F1DE118 != -1)
      {
        OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
      }

      v35 = type metadata accessor for PlayerCardTheme(0);
      v36 = __swift_project_value_buffer(v35, qword_27F20BF00);
      sub_24E337EF0(v36, v37);
      v38 = v8;
      sub_24E345BC8();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6ED8, &qword_24E381E50);
      OUTLINED_FUNCTION_3_91();
      v42 = sub_24DFB4C28(v40, &qword_27F1E6ED8, &qword_24E381E50, v41);
      OUTLINED_FUNCTION_2_89();
      v45 = sub_24E1BA174(v43, v44, MEMORY[0x277CDDDE8]);
      v46 = v64;
      v47 = v68;
      sub_24E346608();
      (*(v65 + 8))(v38, v47);
      v48 = v66;
      v49 = v72;
      (*(v66 + 16))(v3, v46, v72);
      swift_storeEnumTagMultiPayload();
      *&v74 = v39;
      *(&v74 + 1) = v47;
      v75 = v42;
      v76 = v45;
      OUTLINED_FUNCTION_4_75();
      v50 = v71;
      sub_24E345E38();

      (*(v48 + 8))(v46, v49);
    }

    else
    {
      *v3 = v33;
      v3[16] = v34;
      *(v3 + 3) = v19;
      *(v3 + 4) = v21;
      *(v3 + 5) = v30;
      *(v3 + 6) = KeyPath;
      swift_storeEnumTagMultiPayload();
      v51 = OUTLINED_FUNCTION_19_1();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
      OUTLINED_FUNCTION_3_91();
      v56 = sub_24DFB4C28(v54, &qword_27F1E6ED8, &qword_24E381E50, v55);
      OUTLINED_FUNCTION_2_89();
      v59 = sub_24E1BA174(v57, v58, MEMORY[0x277CDDDE8]);
      *&v74 = v53;
      *(&v74 + 1) = v68;
      v75 = v56;
      v76 = v59;
      OUTLINED_FUNCTION_4_75();
      v50 = v71;
      sub_24E345E38();
    }

    v60 = v70;
    sub_24E04B898(v50, v70, &qword_27F1E6ED0, &qword_24E381E48);
    v61 = v60;
    v62 = v73;
    sub_24E04B898(v61, v73, &qword_27F1E6ED0, &qword_24E381E48);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6EF0, &qword_24E381E58);
    *(v62 + result[9]) = 0x3FF0000000000000;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E1B45A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  v5 = sub_24E3464E8();
  v7 = v6;
  v9 = v8;
  sub_24E346298();
  v10 = sub_24E3464B8();
  v29 = v11;
  v30 = v10;
  v28 = v12;
  v31 = v13;

  sub_24DFA92EC(v5, v7, v9 & 1);

  v14 = sub_24E347CB8();
  v15 = GKGameCenterUIFrameworkBundle();
  v16 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  v17 = sub_24E3464E8();
  v19 = v18;
  LOBYTE(v15) = v20;
  sub_24E346278();
  v21 = sub_24E3464B8();
  v23 = v22;
  LOBYTE(v3) = v24;
  v26 = v25;

  sub_24DFA92EC(v17, v19, v15 & 1);

  *a1 = v30;
  *(a1 + 8) = v29;
  *(a1 + 16) = v28 & 1;
  *(a1 + 24) = v31;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  *(a1 + 48) = v3 & 1;
  *(a1 + 56) = v26;
  sub_24DF82DD4(v30, v29, v28 & 1);

  sub_24DF82DD4(v21, v23, v3 & 1);

  sub_24DFA92EC(v21, v23, v3 & 1);

  sub_24DFA92EC(v30, v29, v28 & 1);
}

void sub_24E1B483C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 24);
    v27 = *(v1 + 80);
    v28 = *(v1 + 96);
    v29 = v28;
    v24 = *(v1 + 80);
    v25 = *(v1 + 96);
    sub_24DF95B98(&v29, &v22, &qword_27F1E6EB0, &qword_24E381E28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6EB8, &qword_24E381E30);
    v3 = sub_24E346B88();
    if (v23)
    {
      OUTLINED_FUNCTION_13_39(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23, v24, *(&v24 + 1), v25, v26, v27);
      *&v22 = v2;
      LOBYTE(v23) = 0;
      sub_24E346B98();
    }

    v11 = sub_24DF8BFF4(&v27, &qword_27F1E6EB8, &qword_24E381E30);
    OUTLINED_FUNCTION_13_39(v11, v12, v13, v14, v15, v16, v17, v18, v22, v23, v24, *(&v24 + 1), v25, v26, v27);
    sub_24E346B88();
    if ((v23 & 1) == 0 && qword_27F20AED0)
    {
      v19 = *&v22 - v2;
      if (*&v22 - v2 > 16.0)
      {
        v19 = 16.0;
      }

      v20 = v19 * 0.0625;
      v21 = qword_27F20AED0;
      [v21 _setManualScrollEdgeAppearanceProgress_];
      [v21 _setManualScrollEdgeAppearanceEnabled_];
    }
  }
}

uint64_t sub_24E1B498C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6EF8, &qword_24E381E60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6F00, &qword_24E381E68);
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v26 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v28 = a1;
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6F08, &qword_24E381E70);
  sub_24DFB4C28(&qword_27F1E6F10, &qword_27F1E6F08, &qword_24E381E70, MEMORY[0x277CE14C0]);
  sub_24E3463B8();
  sub_24DFB4C28(&qword_27F1E6F18, &qword_27F1E6EF8, &qword_24E381E60, MEMORY[0x277CDE5A0]);
  sub_24E3465C8();
  (*(v6 + 8))(v8, v5);
  v34[0] = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D08, &qword_24E381C08);
  sub_24E346B88();
  v14 = sub_24DFD8654();

  if (v14)
  {
    sub_24E1B9F0C(v34);
  }

  else
  {
    v15 = sub_24E345CF8();
    v31[0] = 1;
    sub_24E1B45A0(v32);
    *&v30[7] = *v32;
    *&v30[23] = *&v32[16];
    *&v30[39] = *&v32[32];
    *&v30[55] = *&v32[48];
    v16 = v31[0];
    sub_24E346E28();
    sub_24E3457F8();
    v33[0] = v15;
    v33[1] = 0;
    LOBYTE(v33[2]) = v16;
    memcpy(&v33[2] + 1, v30, 0x47uLL);
    CGSizeMake();
    memcpy(v34, v33, 0xC8uLL);
  }

  v17 = *(v9 + 16);
  v18 = v25;
  v19 = v26;
  v17(v26, v13, v25);
  memcpy(v31, v34, sizeof(v31));
  v20 = v27;
  v17(v27, v19, v18);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6F20, &qword_24E381E78) + 48);
  memcpy(v32, v31, sizeof(v32));
  memcpy(&v20[v21], v31, 0xC8uLL);
  sub_24DF95B98(v32, v33, &qword_27F1E6F28, &qword_24E381E80);
  v22 = *(v9 + 8);
  v22(v13, v18);
  memcpy(v33, v31, sizeof(v33));
  sub_24DF8BFF4(v33, &qword_27F1E6F28, &qword_24E381E80);
  return (v22)(v19, v18);
}

uint64_t sub_24E1B4DE4@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v94 = a1;
  v92 = a3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6F30, &qword_24E381E88);
  v83 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v82 = &v79 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6F38, &qword_24E381E90);
  MEMORY[0x28223BE20](v5 - 8);
  v91 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v79 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6F40, &qword_24E381E98);
  v80 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v79 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6F48, &unk_24E381EA0);
  MEMORY[0x28223BE20](v10 - 8);
  v88 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v93 = &v79 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4878, &qword_24E379468);
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6F50, &qword_24E381EB0);
  v86 = *(v15 - 8);
  v87 = v15;
  MEMORY[0x28223BE20](v15);
  v85 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v79 - v18;
  v20 = sub_24E347CB8();
  v21 = GKGameCenterUIFrameworkBundle();
  v22 = GKGetLocalizedStringFromTableInBundle();

  v23 = sub_24E347CF8();
  v25 = v24;

  v97 = v23;
  v98 = v25;
  sub_24DF90C4C();
  v26 = sub_24E3464E8();
  v28 = v27;
  v97 = v26;
  v98 = v27;
  v30 = v29 & 1;
  v99 = v29 & 1;
  v100 = v31;
  sub_24E346648();
  sub_24DFA92EC(v26, v28, v30);

  v95 = v94;
  v96 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6F58, &qword_24E381EB8);
  sub_24E1B9F1C();
  sub_24E1BA0B8();
  v94 = v19;
  sub_24E346D38();
  sub_24E1B3ADC();
  v32 = sub_24DFD8654();

  v81 = v14;
  if (v32)
  {
    v33 = sub_24E347CB8();
    v34 = GKGameCenterUIFrameworkBundle();
    v35 = GKGetLocalizedStringFromTableInBundle();

    v36 = sub_24E347CF8();
    v38 = v37;

    v97 = v36;
    v98 = v38;
    v39 = sub_24E3464E8();
    v41 = v40;
    v97 = v39;
    v98 = v40;
    v43 = v42 & 1;
    v99 = v42 & 1;
    v100 = v44;
    sub_24E346648();
    sub_24DFA92EC(v39, v41, v43);

    MEMORY[0x28223BE20](v45);
    *(&v79 - 2) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6FA0, &qword_24E381ED8);
    sub_24E1BA1C4();
    v46 = v79;
    sub_24E346D08();
    v47 = v93;
    v48 = v84;
    (*(v80 + 32))(v93, v46, v84);
    v49 = 0;
    v50 = v48;
  }

  else
  {
    v49 = 1;
    v47 = v93;
    v50 = v84;
  }

  v51 = 1;
  __swift_storeEnumTagSinglePayload(v47, v49, 1, v50);
  sub_24E1B3C04();
  v52 = sub_24DFD8654();

  if (v52)
  {
    v53 = sub_24E347CB8();
    v54 = GKGameCenterUIFrameworkBundle();
    v55 = GKGetLocalizedStringFromTableInBundle();

    v56 = sub_24E347CF8();
    v58 = v57;

    v97 = v56;
    v98 = v58;
    v59 = sub_24E3464E8();
    v61 = v60;
    v97 = v59;
    v98 = v60;
    v63 = v62 & 1;
    v99 = v62 & 1;
    v100 = v64;
    sub_24E346648();
    sub_24DFA92EC(v59, v61, v63);

    MEMORY[0x28223BE20](v65);
    *(&v79 - 2) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6FB0, &qword_24E381EE0);
    sub_24E1BA300();
    v66 = v82;
    sub_24E346D08();
    v67 = v89;
    v68 = v90;
    (*(v83 + 32))(v89, v66, v90);
    v51 = 0;
  }

  else
  {
    v67 = v89;
    v68 = v90;
  }

  __swift_storeEnumTagSinglePayload(v67, v51, 1, v68);
  v70 = v85;
  v69 = v86;
  v71 = *(v86 + 16);
  v72 = v87;
  v71(v85, v94, v87);
  v73 = v88;
  sub_24DF95B98(v47, v88, &qword_27F1E6F48, &unk_24E381EA0);
  v74 = v91;
  sub_24DF95B98(v67, v91, &qword_27F1E6F38, &qword_24E381E90);
  v75 = v92;
  v71(v92, v70, v72);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6FC0, &qword_24E381EE8);
  sub_24DF95B98(v73, &v75[*(v76 + 48)], &qword_27F1E6F48, &unk_24E381EA0);
  sub_24DF95B98(v74, &v75[*(v76 + 64)], &qword_27F1E6F38, &qword_24E381E90);
  sub_24DF8BFF4(v67, &qword_27F1E6F38, &qword_24E381E90);
  sub_24DF8BFF4(v93, &qword_27F1E6F48, &unk_24E381EA0);
  v77 = *(v69 + 8);
  v77(v94, v72);
  sub_24DF8BFF4(v74, &qword_27F1E6F38, &qword_24E381E90);
  sub_24DF8BFF4(v73, &qword_27F1E6F48, &unk_24E381EA0);
  return (v77)(v70, v72);
}

id sub_24E1B57A8@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v38 = a1;
  v39 = sub_24E3454A8();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v39);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24E347CB8();
  v8 = GKGameCenterUIFrameworkBundle();
  v9 = GKGetLocalizedStringFromTableInBundle();

  v10 = sub_24E347CF8();
  v36 = v11;
  v37 = v10;

  result = [objc_opt_self() shared];
  if (result)
  {
    v13 = result;
    KeyPath = swift_getKeyPath();
    sub_24E348068();
    v15 = v13;
    swift_retain_n();
    v16 = v15;
    v17 = sub_24E348058();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v16;
    v18[5] = KeyPath;
    v20 = v16;

    v21 = sub_24E348058();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = v19;
    v22[4] = v20;
    v22[5] = KeyPath;
    sub_24E346C98();

    v23 = v41[0];
    v24 = v41[1];
    v34 = v42;
    v35 = sub_24E346BC8();
    v25 = v4;
    v26 = *(v4 + 16);
    v27 = v39;
    v26(&v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v38, v39);
    v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v29 = swift_allocObject();
    (*(v25 + 32))(v29 + v28, v6, v27);
    v30 = swift_allocObject();
    v31 = v40;
    memcpy((v30 + 16), v40, 0x68uLL);
    *a3 = v23;
    *(a3 + 8) = v24;
    *(a3 + 16) = v34;
    v32 = v36;
    *(a3 + 24) = v37;
    *(a3 + 32) = v32;
    *(a3 + 40) = v20;
    *(a3 + 48) = KeyPath;
    *(a3 + 56) = v35;
    *(a3 + 64) = sub_24E1BA674;
    *(a3 + 72) = v29;
    *(a3 + 80) = sub_24E1BA668;
    *(a3 + 88) = v30;
    return sub_24E1B9868(v31, v41);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E1B5AEC(const void *a1)
{
  sub_24E1B3ADC();
  v9[13] = v2;
  swift_getKeyPath();
  v3 = swift_allocObject();
  memcpy((v3 + 16), a1, 0x68uLL);
  sub_24E1B9868(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E26F0, &unk_24E372F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E48, &qword_24E381D58);
  sub_24DFB4C28(&qword_27F1E4040, &qword_27F1E26F0, &unk_24E372F50, MEMORY[0x277D83980]);
  sub_24E15535C();
  v4 = type metadata accessor for FriendRequestCellView(255);
  v5 = sub_24E345778();
  v6 = sub_24E1BA174(&qword_27F1E6E50, type metadata accessor for FriendRequestCellView, &unk_24E386C18);
  v7 = sub_24E1BA174(&qword_27F1DF5F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  swift_getOpaqueTypeConformance2();
  return sub_24E346CC8();
}

void sub_24E1B5CDC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 alias];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24E347CF8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_24E1B5D44(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_24E347CB8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAlias_];
}

uint64_t sub_24E1B5DB4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6FA0, &qword_24E381ED8);
  v45 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = &v43 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6FC8, &unk_24E381EF0);
  MEMORY[0x28223BE20](v46);
  v47 = (&v43 - v4);
  v50 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D08, &qword_24E381C08);
  sub_24E346B88();
  v5 = v53;
  *&v50 = MEMORY[0x277D84F90];
  v6 = sub_24DFD8654();
  v7 = 0;
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x25303F560](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      swift_once();
LABEL_14:
      v23 = type metadata accessor for PlayerCardTheme(0);
      v24 = __swift_project_value_buffer(v23, qword_27F20BF00);
      sub_24E3367D8(v24, v25);
      v26 = sub_24E346468();
      v28 = v27;
      v30 = v29;
      v32 = v31;

      sub_24DFA92EC(v8, a1, v5 & 1);

      v33 = v47;
      *v47 = v26;
      v33[1] = v28;
      *(v33 + 16) = v30 & 1;
      v33[3] = v32;
      swift_storeEnumTagMultiPayload();
      sub_24E1BA1C4();
      return sub_24E345E38();
    }

    if ([v9 isFriendInvitationInContacts])
    {
    }

    else
    {
      sub_24E348A48();
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
    }

    ++v7;
  }

  v11 = v50;
  v50 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  if (v53)
  {
    v12 = sub_24E347CB8();
    v13 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_24E367D20;
    v16 = sub_24DFD8654();

    v17 = MEMORY[0x277D83C10];
    *(v15 + 56) = MEMORY[0x277D83B88];
    *(v15 + 64) = v17;
    *(v15 + 32) = v16;
    v18 = sub_24E347D18();
    v20 = v19;

    *&v50 = v18;
    *(&v50 + 1) = v20;
    sub_24DF90C4C();
    v8 = sub_24E3464E8();
    a1 = v21;
    LOBYTE(v5) = v22;
    if (qword_27F1DE118 != -1)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v53 = v11;
  swift_getKeyPath();
  v35 = swift_allocObject();
  memcpy((v35 + 16), a1, 0x68uLL);
  sub_24E1B9868(a1, &v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E26F0, &unk_24E372F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E48, &qword_24E381D58);
  sub_24DFB4C28(&qword_27F1E4040, &qword_27F1E26F0, &unk_24E372F50, MEMORY[0x277D83980]);
  sub_24E15535C();
  v36 = type metadata accessor for FriendRequestCellView(255);
  v37 = sub_24E345778();
  v38 = sub_24E1BA174(&qword_27F1E6E50, type metadata accessor for FriendRequestCellView, &unk_24E386C18);
  v39 = sub_24E1BA174(&qword_27F1DF5F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  *&v50 = v36;
  *(&v50 + 1) = v37;
  v51 = v38;
  v52 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v44;
  sub_24E346CC8();
  v41 = v45;
  v42 = v49;
  (*(v45 + 16))(v47, v40, v49);
  swift_storeEnumTagMultiPayload();
  sub_24E1BA1C4();
  sub_24E345E38();
  return (*(v41 + 8))(v40, v42);
}

uint64_t sub_24E1B6410(void **a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = sub_24E345778();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v13 = v12 - v11;
  v14 = type metadata accessor for FriendRequestCellView(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v18 = (v17 - v16);
  v19 = *a1;
  OUTLINED_FUNCTION_11_36();
  v20 = swift_allocObject();
  memcpy((v20 + 16), a2, 0x68uLL);
  v21 = swift_allocObject();
  memcpy((v21 + 16), a2, 0x68uLL);
  *(v21 + 120) = v19;
  *v18 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  swift_storeEnumTagMultiPayload();
  v22 = v19;
  sub_24E1B9868(a2, v36);
  sub_24E1B9868(a2, v36);
  v23 = qword_27F1DE118;
  v24 = v22;
  if (v23 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
  }

  v25 = type metadata accessor for PlayerCardTheme(0);
  __swift_project_value_buffer(v25, qword_27F20BF00);
  v26 = sub_24E346288();
  v27 = sub_24E346378();
  *(v18 + v14[5]) = v24;
  v28 = (v18 + v14[6]);
  *v28 = a5;
  v28[1] = v20;
  v29 = v18 + v14[7];
  sub_24E346B78();
  v30 = v37;
  *v29 = v36[0];
  *(v29 + 1) = v30;
  *(v18 + v14[8]) = v26;
  *(v18 + v14[9]) = v27;
  v31 = (v18 + v14[10]);
  *v31 = a6;
  v31[1] = v21;
  sub_24E345768();
  sub_24E1BA174(&qword_27F1E6E50, type metadata accessor for FriendRequestCellView, &unk_24E386C18);
  sub_24E1BA174(&qword_27F1DF5F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_24E346588();
  (*(v9 + 8))(v13, v35);
  return sub_24E1B9E3C(v18);
}

uint64_t sub_24E1B6718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v60 = a5;
  v59 = a4;
  v64 = a3;
  v67 = a6;
  v61 = sub_24E345EC8();
  MEMORY[0x28223BE20](v61);
  v62 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6DE8, &qword_24E381CE8);
  MEMORY[0x28223BE20](v63);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v54 - v12;
  v71 = a1;
  v72 = a2;
  sub_24DF90C4C();

  v13 = sub_24E3464E8();
  v15 = v14;
  v17 = v16;
  sub_24E346378();
  v18 = sub_24E3464B8();
  v20 = v19;
  v22 = v21;

  sub_24DFA92EC(v13, v15, v17 & 1);

  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for PlayerCardTheme(0);
  v24 = __swift_project_value_buffer(v23, qword_27F20BF00);
  sub_24E3367D8(v24, v25);
  v26 = sub_24E346468();
  v54 = v26;
  v57 = v27;
  v58 = v28;
  v30 = v29;

  sub_24DFA92EC(v18, v20, v22 & 1);

  v68 = sub_24E3461E8();
  sub_24E3451B8();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v69 = v30 & 1;
  v89 = v30 & 1;
  v86 = 0;
  sub_24E346E38();
  sub_24E3457F8();
  v39 = memcpy(&v90[7], __src, 0x70uLL);
  sub_24E337EF0(v39, v40);
  v56 = sub_24E3469C8();

  v55 = sub_24E3461E8();
  v41 = sub_24E345D08();
  MEMORY[0x28223BE20](v41);
  v42 = v64;
  LODWORD(v71) = 0;
  sub_24E1BA174(&qword_27F1E68E8, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_24E348DC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6DF0, &qword_24E381CF0);
  sub_24E1B9C24();
  v43 = v65;
  sub_24E345208();
  v44 = *(v42 + 48);
  v45 = sub_24E3461E8();
  v46 = v43 + *(v63 + 36);
  *v46 = v45;
  *(v46 + 8) = 0x4024000000000000;
  *(v46 + 16) = v44;
  *(v46 + 24) = 0x4024000000000000;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  v47 = v66;
  sub_24DF95B98(v43, v66, &qword_27F1E6DE8, &qword_24E381CE8);
  v48 = v57;
  v70[0] = v26;
  v70[1] = v57;
  LOBYTE(v70[2]) = v69;
  *(&v70[2] + 1) = *v88;
  HIDWORD(v70[2]) = *&v88[3];
  v49 = v58;
  v70[3] = v58;
  LOBYTE(v70[4]) = v68;
  *(&v70[4] + 1) = *v87;
  HIDWORD(v70[4]) = *&v87[3];
  v70[5] = v32;
  v70[6] = v34;
  v70[7] = v36;
  v70[8] = v38;
  LOBYTE(v70[9]) = 0;
  memcpy(&v70[9] + 1, v90, 0x77uLL);
  v50 = v56;
  v70[24] = v56;
  LOBYTE(v44) = v55;
  LOBYTE(v70[25]) = v55;
  v51 = v67;
  memcpy(v67, v70, 0xC9uLL);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E30, &qword_24E381D10);
  sub_24DF95B98(v47, v51 + *(v52 + 48), &qword_27F1E6DE8, &qword_24E381CE8);
  sub_24DF95B98(v70, &v71, &qword_27F1E6E38, &qword_24E381D18);
  sub_24DF8BFF4(v43, &qword_27F1E6DE8, &qword_24E381CE8);
  sub_24DF8BFF4(v47, &qword_27F1E6DE8, &qword_24E381CE8);
  v71 = v54;
  v72 = v48;
  v73 = v69;
  *v74 = *v88;
  *&v74[3] = *&v88[3];
  v75 = v49;
  v76 = v68;
  *v77 = *v87;
  *&v77[3] = *&v87[3];
  v78 = v32;
  v79 = v34;
  v80 = v36;
  v81 = v38;
  v82 = 0;
  memcpy(v83, v90, sizeof(v83));
  v84 = v50;
  v85 = v44;
  return sub_24DF8BFF4(&v71, &qword_27F1E6E38, &qword_24E381D18);
}

uint64_t sub_24E1B6CDC@<X0>(char a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  LOBYTE(v7) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E18, &qword_24E381D00);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E40, &qword_24E381D20);
  MEMORY[0x28223BE20](v13);
  v53 = (&v48 - v14);
  v54 = a4;
  v52 = v15;
  if ((v7 & 1) == 0)
  {
    v49 = v12;
    v50 = v10;
    v51 = v9;
    v57 = MEMORY[0x277D84F90];
    v39 = sub_24DFD8654();
    v40 = 0;
    v24 = &qword_24E371440;
    while (1)
    {
      if (v39 == v40)
      {
        v42 = sub_24E116E7C(v57);

        v57 = v42;
        swift_getKeyPath();
        v43 = swift_allocObject();
        memcpy((v43 + 16), a3, 0x68uLL);
        v44 = swift_allocObject();
        *(v44 + 16) = sub_24E1B9DE4;
        *(v44 + 24) = v43;
        sub_24E1B9868(a3, &v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4570, &qword_24E378F88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E28, &qword_24E381D08);
        sub_24DFB4C28(&qword_27F1E4578, &qword_27F1E4570, &qword_24E378F88, MEMORY[0x277D83980]);
        sub_24DFB4C28(&qword_27F1E6E20, &qword_27F1E6E28, &qword_24E381D08, MEMORY[0x277CE14C0]);
        v45 = v49;
        sub_24E346CC8();
        v47 = v50;
        v46 = v51;
        (*(v50 + 16))(v53, v45, v51);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E08, &qword_24E381CF8);
        sub_24E1B9CB0();
        sub_24E1B9D34();
        sub_24E345E38();
        return (*(v47 + 8))(v45, v46);
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x25303F560](v40, a2);
      }

      else
      {
        if (v40 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v41 = *(a2 + 8 * v40 + 32);
      }

      v7 = v41;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v55 = a3[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
      sub_24E346B88();
      if (v56 == 1 && ([v7 isFriendInvitationInContacts] & 1) == 0)
      {
      }

      else
      {
        sub_24E348A48();
        v4 = v57[2];
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
      }

      ++v40;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = sub_24E347CB8();
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24E367D20;
  v20 = sub_24DFD8654();
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = MEMORY[0x277D83B88];
  *(v19 + 64) = v21;
  *(v19 + 32) = v20;
  v7 = sub_24E347D18();
  v23 = v22;

  *&v55 = v7;
  *(&v55 + 1) = v23;
  sub_24DF90C4C();
  v24 = sub_24E3464E8();
  v4 = v25;
  LOBYTE(v7) = v26;
  if (qword_27F1DE118 != -1)
  {
LABEL_19:
    swift_once();
  }

  v27 = type metadata accessor for PlayerCardTheme(0);
  v28 = __swift_project_value_buffer(v27, qword_27F20BF00);
  sub_24E3367D8(v28, v29);
  v30 = sub_24E346468();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_24DFA92EC(v24, v4, v7 & 1);

  v37 = v53;
  *v53 = v30;
  v37[1] = v32;
  *(v37 + 16) = v34 & 1;
  v37[3] = v36;
  *(v37 + 2) = xmmword_24E381AD0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E08, &qword_24E381CF8);
  sub_24E1B9CB0();
  sub_24E1B9D34();
  return sub_24E345E38();
}

uint64_t sub_24E1B730C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, const void *a3@<X2>, char *a4@<X8>)
{
  v54 = a4;
  v52 = sub_24E345778();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FriendRequestCellView(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E48, &qword_24E381D58);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v46 - v15;
  if (a1 < 1)
  {
    v59 = 0;
    v58 = 0;
    v57 = 0;
    v56 = 0;
    v48 = 0;
    v47 = 0;
    v46 = 0;
    v55 = 0;
  }

  else
  {
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for PlayerCardTheme(0);
    v17 = __swift_project_value_buffer(v16, qword_27F20BF00);
    sub_24E337EF0(v17, v18);
    v59 = sub_24E3469C8();

    sub_24E346E38();
    sub_24E3453D8();
    v58 = v72;
    v57 = v73;
    v56 = v74;
    v48 = v75;
    v55 = 256;
    v47 = v76;
    v46 = v77;
  }

  v19 = swift_allocObject();
  memcpy((v19 + 16), a3, 0x68uLL);
  v20 = swift_allocObject();
  memcpy((v20 + 16), a3, 0x68uLL);
  *(v20 + 120) = a2;
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  swift_storeEnumTagMultiPayload();
  sub_24E1B9868(a3, &v60);
  sub_24E1B9868(a3, &v60);
  v21 = qword_27F1DE118;
  v22 = a2;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for PlayerCardTheme(0);
  v24 = *__swift_project_value_buffer(v23, qword_27F20BF00);
  v25 = sub_24E346288();
  v26 = sub_24E346378();
  *(v10 + v8[5]) = v22;
  v27 = (v10 + v8[6]);
  *v27 = sub_24E1B9DEC;
  v27[1] = v19;
  v28 = v10 + v8[7];
  LOBYTE(v68) = v24;
  v29 = v22;
  sub_24E346B78();
  v30 = v61;
  *v28 = v60;
  *(v28 + 1) = v30;
  *(v10 + v8[8]) = v25;
  *(v10 + v8[9]) = v26;
  v31 = (v10 + v8[10]);
  *v31 = sub_24E1B9E10;
  v31[1] = v20;
  v32 = v49;
  sub_24E345768();
  sub_24E1BA174(&qword_27F1E6E50, type metadata accessor for FriendRequestCellView, &unk_24E386C18);
  sub_24E1BA174(&qword_27F1DF5F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v33 = v50;
  v34 = v52;
  sub_24E346588();
  (*(v51 + 8))(v32, v34);
  sub_24E1B9E3C(v10);
  v35 = *(v12 + 16);
  v36 = v53;
  v35(v53, v33, v11);
  *&v68 = v59;
  *(&v68 + 1) = v55;
  *&v69 = v58;
  *(&v69 + 1) = v57;
  v37 = v48;
  *&v70 = v56;
  *(&v70 + 1) = v48;
  v38 = v47;
  v39 = v46;
  *&v71 = v47;
  *(&v71 + 1) = v46;
  v40 = v69;
  v41 = v54;
  *v54 = v68;
  *(v41 + 1) = v40;
  v42 = v71;
  *(v41 + 2) = v70;
  *(v41 + 3) = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E58, &qword_24E381D98);
  v35(&v41[*(v43 + 48)], v36, v11);
  sub_24DF95B98(&v68, &v60, &qword_27F1E6E60, &qword_24E381DA0);
  v44 = *(v12 + 8);
  v44(v33, v11);
  v44(v36, v11);
  v60 = v59;
  v61 = v55;
  v62 = v58;
  v63 = v57;
  v64 = v56;
  v65 = v37;
  v66 = v38;
  v67 = v39;
  return sub_24DF8BFF4(&v60, &qword_27F1E6E60, &qword_24E381DA0);
}

uint64_t sub_24E1B79F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D70, &qword_24E381C48);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v26 = a2;
  v27 = a1;
  sub_24E3461C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D78, &qword_24E381C50);
  sub_24E1B9B58();
  sub_24E345218();
  v33[0] = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D08, &qword_24E381C08);
  sub_24E346B88();
  v13 = sub_24DFD8654();

  if (v13)
  {
    sub_24E1B9C10(v33);
  }

  else
  {
    v25 = sub_24E345CF8();
    v30[0] = 1;
    sub_24E1B45A0(v31);
    *&v29[7] = *v31;
    *&v29[23] = *&v31[16];
    *&v29[39] = *&v31[32];
    *&v29[55] = *&v31[48];
    v14 = v30[0];
    sub_24E346E28();
    sub_24E3457F8();
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for PlayerCardTheme(0);
    v16 = __swift_project_value_buffer(v15, qword_27F20BF00);
    v18 = sub_24E3367D8(v16, v17);
    KeyPath = swift_getKeyPath();
    v32[0] = v25;
    v32[1] = 0;
    LOBYTE(v32[2]) = v14;
    memcpy(&v32[2] + 1, v29, 0x47uLL);
    memcpy(&v32[11], v28, 0x70uLL);
    v32[25] = KeyPath;
    v32[26] = v18;
    CGSizeMake();
    memcpy(v33, v32, 0xD8uLL);
  }

  v20 = *(v7 + 16);
  v20(v9, v12, v6);
  memcpy(v30, v33, sizeof(v30));
  v20(a3, v9, v6);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D98, &qword_24E381C60) + 48);
  memcpy(v31, v30, sizeof(v31));
  memcpy(&a3[v21], v30, 0xD8uLL);
  sub_24DF95B98(v31, v32, &qword_27F1E6DA0, &qword_24E381C68);
  v22 = *(v7 + 8);
  v22(v12, v6);
  memcpy(v32, v30, sizeof(v32));
  sub_24DF8BFF4(v32, &qword_27F1E6DA0, &qword_24E381C68);
  return (v22)(v9, v6);
}

uint64_t sub_24E1B7DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24E345D08();
  *(a3 + 8) = 0x4034000000000000;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6DA8, &qword_24E381CA0);
  sub_24E1B7E7C(a1, a2, a3 + *(v7 + 44));
  LOBYTE(a2) = sub_24E3461E8();
  sub_24E3451B8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D78, &qword_24E381C50);
  v17 = a3 + *(result + 36);
  *v17 = a2;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_24E1B7E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6DB0, &qword_24E381CA8);
  MEMORY[0x28223BE20](v5);
  v7 = &v81 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6DB8, &qword_24E381CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v85 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v84 = &v81 - v11;
  MEMORY[0x28223BE20](v12);
  v83 = &v81 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v81 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6DC0, &qword_24E381CB8);
  MEMORY[0x28223BE20](v17 - 8);
  v82 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v81 - v20;
  *v21 = sub_24E345D08();
  *(v21 + 1) = 0;
  v22 = 1;
  v21[16] = 1;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6DC8, &qword_24E381CC0) + 44);
  v81 = v21;
  sub_24E1B867C(a1, a2, &v21[v23]);
  sub_24E1B3ADC();
  v24 = sub_24DFD8654();

  __asm { FMOV            V0.2D, #15.0 }

  v87 = _Q0;
  if (v24)
  {
    v30 = v16;
    v31 = sub_24E347CB8();
    v32 = GKGameCenterUIFrameworkBundle();
    v33 = GKGetLocalizedStringFromTableInBundle();

    v34 = sub_24E347CF8();
    v36 = v35;

    sub_24E1B3ADC();
    v38 = v37;
    *v7 = sub_24E345D08();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6DD0, &qword_24E381CC8);
    sub_24E1B6718(v34, v36, a1, 0, v38, &v7[*(v39 + 44)]);

    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for PlayerCardTheme(0);
    v41 = __swift_project_value_buffer(v40, qword_27F20BF00);
    sub_24E337EF0(v41, v42);
    v43 = sub_24E3469C8();

    v44 = sub_24E3461E8();
    v45 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6DD8, &unk_24E381CD0) + 36)];
    *v45 = v43;
    v45[8] = v44;
    v46 = &v7[*(v5 + 36)];
    v47 = *(sub_24E3457C8() + 20);
    v48 = *MEMORY[0x277CE0118];
    v49 = sub_24E345C68();
    (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
    *v46 = v87;
    *&v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF7E0, &qword_24E36BC00) + 36)] = 256;
    v16 = v30;
    sub_24E04B898(v7, v30, &qword_27F1E6DB0, &qword_24E381CA8);
    v22 = 0;
  }

  v50 = 1;
  __swift_storeEnumTagSinglePayload(v16, v22, 1, v5);
  sub_24E1B3C04();
  v51 = sub_24DFD8654();

  if (v51)
  {
    v52 = v16;
    v53 = sub_24E347CB8();
    v54 = GKGameCenterUIFrameworkBundle();
    v55 = GKGetLocalizedStringFromTableInBundle();

    v56 = sub_24E347CF8();
    v58 = v57;

    sub_24E1B3C04();
    v60 = v59;
    v89 = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
    sub_24E346B88();
    LODWORD(v53) = v88;
    *v7 = sub_24E345D08();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6DD0, &qword_24E381CC8);
    sub_24E1B6718(v56, v58, a1, v53, v60, &v7[*(v61 + 44)]);

    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for PlayerCardTheme(0);
    v63 = __swift_project_value_buffer(v62, qword_27F20BF00);
    sub_24E337EF0(v63, v64);
    v65 = sub_24E3469C8();

    v66 = sub_24E3461E8();
    v67 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6DD8, &unk_24E381CD0) + 36)];
    *v67 = v65;
    v67[8] = v66;
    v68 = &v7[*(v5 + 36)];
    v69 = *(sub_24E3457C8() + 20);
    v70 = *MEMORY[0x277CE0118];
    v71 = sub_24E345C68();
    (*(*(v71 - 8) + 104))(&v68[v69], v70, v71);
    *v68 = v87;
    *&v68[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF7E0, &qword_24E36BC00) + 36)] = 256;
    v72 = v83;
    sub_24E04B898(v7, v83, &qword_27F1E6DB0, &qword_24E381CA8);
    v50 = 0;
    v16 = v52;
  }

  else
  {
    v72 = v83;
  }

  __swift_storeEnumTagSinglePayload(v72, v50, 1, v5);
  v74 = v81;
  v73 = v82;
  sub_24DF95B98(v81, v82, &qword_27F1E6DC0, &qword_24E381CB8);
  v75 = v84;
  sub_24DF95B98(v16, v84, &qword_27F1E6DB8, &qword_24E381CB0);
  v76 = v85;
  sub_24DF95B98(v72, v85, &qword_27F1E6DB8, &qword_24E381CB0);
  v77 = v86;
  sub_24DF95B98(v73, v86, &qword_27F1E6DC0, &qword_24E381CB8);
  v78 = v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6DE0, &qword_24E381CE0);
  sub_24DF95B98(v75, v77 + *(v79 + 48), &qword_27F1E6DB8, &qword_24E381CB0);
  sub_24DF95B98(v76, v77 + *(v79 + 64), &qword_27F1E6DB8, &qword_24E381CB0);
  sub_24DF8BFF4(v72, &qword_27F1E6DB8, &qword_24E381CB0);
  sub_24DF8BFF4(v78, &qword_27F1E6DB8, &qword_24E381CB0);
  sub_24DF8BFF4(v74, &qword_27F1E6DC0, &qword_24E381CB8);
  sub_24DF8BFF4(v76, &qword_27F1E6DB8, &qword_24E381CB0);
  sub_24DF8BFF4(v75, &qword_27F1E6DB8, &qword_24E381CB0);
  return sub_24DF8BFF4(v73, &qword_27F1E6DC0, &qword_24E381CB8);
}

uint64_t sub_24E1B867C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = sub_24E3454A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E68, &qword_24E381DA8);
  MEMORY[0x28223BE20](v8);
  v72 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - v11;
  sub_24E1B3F48(&v70 - v11);
  v13 = sub_24E346BC8();
  (*(v6 + 16))(&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v6 + 32))(v15 + v14, &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v16 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E70, &qword_24E381DB0) + 36)];
  *v16 = v13;
  v16[1] = sub_24E1B9E98;
  v16[2] = v15;
  v17 = swift_allocObject();
  memcpy((v17 + 16), a1, 0x68uLL);
  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E78, &qword_24E381DB8) + 36)];
  *v18 = sub_24E1B9E9C;
  v18[1] = v17;
  sub_24E1B9868(a1, &v76);
  v19 = sub_24E346388();
  KeyPath = swift_getKeyPath();
  v21 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E80, &qword_24E381DF0) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for PlayerCardTheme(0);
  __swift_project_value_buffer(v22, qword_27F20BF00);
  v23 = sub_24E33684C();
  v24 = swift_getKeyPath();
  v25 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E88, &qword_24E381DF8) + 36)];
  *v25 = v24;
  v25[1] = v23;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E90, &qword_24E381E00) + 36)] = 256;
  v27 = a1[6];
  v26 = a1[7];
  v28 = sub_24E3461E8();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6E98, &qword_24E381E08);
  v30 = &v12[*(v29 + 36)];
  *v30 = v28;
  v71 = v26;
  *(v30 + 1) = v26;
  *(v30 + 2) = v27;
  v70 = v27;
  *(v30 + 3) = v26;
  *(v30 + 4) = v27;
  v30[40] = 0;
  sub_24E337EF0(v29, v31);
  v32 = sub_24E3469C8();

  v33 = sub_24E3461E8();
  v34 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6EA0, &qword_24E381E10) + 36)];
  *v34 = v32;
  v34[8] = v33;
  v35 = &v12[*(v8 + 36)];
  v36 = *(sub_24E3457C8() + 20);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_24E345C68();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  __asm { FMOV            V0.2D, #15.0 }

  *v35 = _Q0;
  *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF7E0, &qword_24E36BC00) + 36)] = 256;
  v44 = sub_24E347CB8();
  v45 = GKGameCenterUIFrameworkBundle();
  v46 = GKGetLocalizedStringFromTableInBundle();

  v47 = sub_24E347CF8();
  v49 = v48;

  v76 = v47;
  v77 = v49;
  sub_24DF90C4C();
  v50 = sub_24E3464E8();
  v52 = v51;
  v54 = v53;
  sub_24E3367D8(v50, v51);
  v55 = sub_24E346468();
  v57 = v56;
  LOBYTE(v35) = v58;
  v60 = v59;

  sub_24DFA92EC(v50, v52, v54 & 1);

  v61 = sub_24E3461E8();
  v62 = v35 & 1;
  LOBYTE(v76) = v35 & 1;
  LOBYTE(__src[0]) = 0;
  v63 = v72;
  sub_24DF95B98(v12, v72, &qword_27F1E6E68, &qword_24E381DA8);
  v64 = v73;
  sub_24DF95B98(v63, v73, &qword_27F1E6E68, &qword_24E381DA8);
  v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6EA8, &unk_24E381E18) + 48);
  __src[0] = v55;
  __src[1] = v57;
  LOBYTE(__src[2]) = v35 & 1;
  *(&__src[2] + 1) = *v75;
  HIDWORD(__src[2]) = *&v75[3];
  __src[3] = v60;
  v66 = v60;
  LOBYTE(__src[4]) = v61;
  *(&__src[4] + 1) = *v74;
  HIDWORD(__src[4]) = *&v74[3];
  v67 = v70;
  __src[5] = 0;
  __src[6] = v70;
  v68 = v71;
  __src[7] = v71;
  __src[8] = v70;
  LOBYTE(__src[9]) = 0;
  memcpy((v64 + v65), __src, 0x49uLL);
  sub_24DF95B98(__src, &v76, &qword_27F1DF880, &unk_24E36BC30);
  sub_24DF8BFF4(v12, &qword_27F1E6E68, &qword_24E381DA8);
  v76 = v55;
  v77 = v57;
  v78 = v62;
  *v79 = *v75;
  *&v79[3] = *&v75[3];
  v80 = v66;
  v81 = v61;
  *v82 = *v74;
  *&v82[3] = *&v74[3];
  v83 = 0;
  v84 = v67;
  v85 = v68;
  v86 = v67;
  v87 = 0;
  sub_24DF8BFF4(&v76, &qword_27F1DF880, &unk_24E36BC30);
  return sub_24DF8BFF4(v63, &qword_27F1E6E68, &qword_24E381DA8);
}

__n128 sub_24E1B8D54(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for CGRect(0);
  sub_24E3454B8();
  sub_24E011248();
  v3 = *(*a1 + 16);
  sub_24E12435C(v3);
  v4 = *a1;
  *(v4 + 16) = v3 + 1;
  v5 = v4 + 48 * v3;
  strcpy((v5 + 32), "firstSection");
  *(v5 + 45) = 0;
  *(v5 + 46) = -5120;
  result = v7;
  *(v5 + 48) = v7;
  *(v5 + 64) = v8;
  *a1 = v4;
  return result;
}

uint64_t sub_24E1B8E04(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16))
  {
    v3 = *(v1 + 32);
    v2 = *(v1 + 40);
    v7 = *(v1 + 64);
    v8 = *(v1 + 48);

    v5 = v7;
    v4 = v8;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  v9[0] = v3;
  v9[1] = v2;
  v10 = v4;
  v11 = v5;
  sub_24E1B483C(v9);
}

id sub_24E1B8E90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6CF0, &qword_24E381BA8);
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-v7 - 8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6CF8, qword_24E381BB0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v21[-v11 - 8];
  sub_24E1B910C(v1, __src);
  sub_24DF88A8C(0, &qword_27F1E6D00, 0x277D0C010);
  v13 = static GKDaemonProxy.refreshContentsPublisher(type:)(3);
  OUTLINED_FUNCTION_11_36();
  v14 = swift_allocObject();
  memcpy((v14 + 16), v1, 0x68uLL);
  v15 = objc_opt_self();
  sub_24E1B9868(v2, v21);
  result = [v15 shared];
  if (result)
  {
    v17 = result;
    swift_getKeyPath();
    sub_24E3431F8();

    OUTLINED_FUNCTION_11_36();
    v18 = swift_allocObject();
    memcpy((v18 + 16), v2, 0x68uLL);
    (*(v5 + 32))(&v12[*(v9 + 52)], v8, v3);
    memcpy(v12, __src, 0x78uLL);
    *(v12 + 15) = v13;
    *(v12 + 16) = sub_24E1B9860;
    *(v12 + 17) = v14;
    v19 = &v12[*(v9 + 56)];
    *v19 = sub_24E1B98AC;
    v19[1] = v18;
    sub_24E04B898(v12, v20, &qword_27F1E6CF8, qword_24E381BB0);
    return sub_24E1B9868(v2, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_24E1B910C@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  __src[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  if (v15 == 1)
  {
    v4 = sub_24E346E28();
    v6 = v5;
    sub_24E1B9358(a1, __src);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v13, __src, 0x58uLL);
    sub_24DF95B98(__dst, &v15, &qword_27F1E6D60, &qword_24E381C38);
    sub_24DF8BFF4(v13, &qword_27F1E6D60, &qword_24E381C38);
    memcpy(v14, __dst, sizeof(v14));
    sub_24E345418();
    MEMORY[0x25303D9B0](0.5, 1.0, 0.0);
    v7 = sub_24E345458();

    v13[88] = 0;
    v15 = v4;
    v16 = v6;
    memcpy(v17, v14, 0x58uLL);
    v17[11] = v7;
    v8 = 0;
  }

  else
  {
    v9 = swift_allocObject();
    memcpy((v9 + 16), a1, 0x68uLL);
    sub_24E1B9868(a1, __src);
    sub_24E345418();
    MEMORY[0x25303D9B0](0.5, 1.0, 0.0);
    v10 = sub_24E345458();

    v8 = 1;
    v14[0] = 1;
    v15 = sub_24E1B9978;
    v16 = v9;
    v17[0] = v10;
  }

  v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D10, &qword_24E381C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D18, &qword_24E381C18);
  sub_24E1B9980();
  sub_24E1B9A64();
  sub_24E345E38();
  return memcpy(a2, __src, 0x71uLL);
}

uint64_t sub_24E1B9358@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for PlayerCardTheme(0);
  v4 = __swift_project_value_buffer(v3, qword_27F20BF00);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  v9 = *(v4 + 40);
  v10 = *(v4 + 48);
  v11 = *(v4 + 56);
  v19 = v11;
  v12 = sub_24E3461E8();
  sub_24DFD7E3C(v5, v6, v7, v8, v9, v10, v11);
  v13 = sub_24E346E28();
  v20 = v14;
  v21 = v13;
  v15 = swift_allocObject();
  memcpy((v15 + 16), a1, 0x68uLL);
  *&v26 = v5;
  *(&v26 + 1) = v6;
  *&v27 = v7;
  *(&v27 + 1) = v8;
  *&v28 = v9;
  *(&v28 + 1) = v10;
  LOBYTE(v29) = v19;
  HIBYTE(v29) = v12;
  LOWORD(v33) = v29;
  v16 = v26;
  v30 = v26;
  v31 = v27;
  v17 = v28;
  v32 = v28;
  *(a2 + 16) = v27;
  *(a2 + 32) = v17;
  *a2 = v16;
  *(a2 + 48) = v33;
  *(a2 + 56) = v21;
  *(a2 + 64) = v20;
  *(a2 + 72) = sub_24E1B9B48;
  *(a2 + 80) = v15;
  sub_24E1B9868(a1, v23);
  sub_24DF95B98(&v26, v23, &qword_27F1E6D68, &qword_24E381C40);
  v23[0] = v5;
  v23[1] = v6;
  v23[2] = v7;
  v23[3] = v8;
  v23[4] = v9;
  v23[5] = v10;
  v24 = v19;
  v25 = v12;
  return sub_24DF8BFF4(v23, &qword_27F1E6D68, &qword_24E381C40);
}

double sub_24E1B9514(uint64_t a1, const void *a2)
{
  v3 = [objc_opt_self() daemonProxy];
  v4 = [v3 friendServicePrivate];

  v5 = swift_allocObject();
  memcpy((v5 + 16), a2, 0x68uLL);
  aBlock[4] = sub_24E1B98B4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E1C6B90;
  aBlock[3] = &block_descriptor_66;
  v6 = _Block_copy(aBlock);
  sub_24E1B9868(a2, v8);

  [v4 getCombinedFriendInvitationListWithCompletion_];
  _Block_release(v6);
  swift_unknownObjectRelease();
  return result;
}

void sub_24E1B964C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5[0] = sub_24E0833B4(v4);
  sub_24E1D4198(v5);
  *v5 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6D08, &qword_24E381C08);
  sub_24E346B98();
  sub_24E1B39F4();
}

void sub_24E1B96E8(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() shared];
  if (v2)
  {
    v3 = v2;
    [v2 inboxContactsOnly];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
    sub_24E346B98();
    v4 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
    v5 = *MEMORY[0x277D0BE38];
    sub_24E346B88();
    v6 = sub_24E347CF8();
    sub_24E0C5A88(v5, v6, v7, v4);
  }

  else
  {
    __break(1u);
  }
}

double block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_24E1B98D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_24E347CB8();

  v9 = sub_24E347CB8();

  [a6 reportEvent:v8 type:v9 inboxFriendRequestCount:a5];
}

unint64_t sub_24E1B9980()
{
  result = qword_27F1E6D20;
  if (!qword_27F1E6D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6D10, &qword_24E381C10);
    sub_24DFB4C28(&qword_27F1E6D28, &qword_27F1E6D30, &qword_24E381C20, MEMORY[0x277CE11A8]);
    sub_24DFB4C28(&qword_27F1E6D38, &qword_27F1E6D40, &qword_24E381C28, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6D20);
  }

  return result;
}

unint64_t sub_24E1B9A64()
{
  result = qword_27F1E6D48;
  if (!qword_27F1E6D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6D18, &qword_24E381C18);
    sub_24DFB4C28(&qword_27F1E6D50, &qword_27F1E6D58, &qword_24E381C30, MEMORY[0x277CDF7D8]);
    sub_24DFB4C28(&qword_27F1E6D38, &qword_27F1E6D40, &qword_24E381C28, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6D48);
  }

  return result;
}

unint64_t sub_24E1B9B58()
{
  result = qword_27F1E6D80;
  if (!qword_27F1E6D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6D78, &qword_24E381C50);
    sub_24DFB4C28(&qword_27F1E6D88, &qword_27F1E6D90, &qword_24E381C58, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6D80);
  }

  return result;
}

unint64_t sub_24E1B9C24()
{
  result = qword_27F1E6DF8;
  if (!qword_27F1E6DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6DF0, &qword_24E381CF0);
    sub_24E1B9CB0();
    sub_24E1B9D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6DF8);
  }

  return result;
}

unint64_t sub_24E1B9CB0()
{
  result = qword_27F1E6E00;
  if (!qword_27F1E6E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6E08, &qword_24E381CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6E00);
  }

  return result;
}

unint64_t sub_24E1B9D34()
{
  result = qword_27F1E6E10;
  if (!qword_27F1E6E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6E18, &qword_24E381D00);
    sub_24DFB4C28(&qword_27F1E6E20, &qword_27F1E6E28, &qword_24E381D08, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6E10);
  }

  return result;
}

uint64_t sub_24E1B9E3C(uint64_t a1)
{
  v2 = type metadata accessor for FriendRequestCellView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E1B9EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_24E1B37A0(a1, a2, a3, a4);
  *a5 = result & 1;
  return result;
}

unint64_t sub_24E1B9F1C()
{
  result = qword_27F1E6F60;
  if (!qword_27F1E6F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6F58, &qword_24E381EB8);
    sub_24E1B9FD4();
    sub_24DFB4C28(&qword_27F1E6F88, &qword_27F1E6F90, &qword_24E381ED0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6F60);
  }

  return result;
}

unint64_t sub_24E1B9FD4()
{
  result = qword_27F1E6F68;
  if (!qword_27F1E6F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6F70, &qword_24E381EC0);
    sub_24DFB4C28(&qword_27F1E6EE0, &qword_27F1E6ED8, &qword_24E381E50, &protocol conformance descriptor for KeyPathToggle<A>);
    sub_24DFB4C28(&qword_27F1E6F78, &qword_27F1E6F80, &qword_24E381EC8, MEMORY[0x277CE0700]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6F68);
  }

  return result;
}

unint64_t sub_24E1BA0B8()
{
  result = qword_27F1E6F98;
  if (!qword_27F1E6F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E4878, &qword_24E379468);
    sub_24E1BA174(&qword_27F1DF850, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6F98);
  }

  return result;
}

uint64_t sub_24E1BA174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E1BA1C4()
{
  result = qword_27F1E6FA8;
  if (!qword_27F1E6FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6FA0, &qword_24E381ED8);
    type metadata accessor for FriendRequestCellView(255);
    sub_24E345778();
    sub_24E1BA174(&qword_27F1E6E50, type metadata accessor for FriendRequestCellView, &unk_24E386C18);
    sub_24E1BA174(&qword_27F1DF5F0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6FA8);
  }

  return result;
}

unint64_t sub_24E1BA300()
{
  result = qword_27F1E6FB8;
  if (!qword_27F1E6FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E6FB0, &qword_24E381EE0);
    sub_24E1BA1C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6FB8);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t objectdestroy_48Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_38Tm()
{
  sub_24E3454A8();
  OUTLINED_FUNCTION_5_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_24E1BA570(uint64_t *a1, uint64_t a2)
{
  sub_24E3454A8();
  *&result = sub_24E1B8D54(a1, a2).n128_u64[0];
  return result;
}

uint64_t objectdestroyTm_18()
{

  OUTLINED_FUNCTION_11_36();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_4_75()
{

  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E1BA72C()
{
  result = qword_27F1E3240;
  if (!qword_27F1E3240)
  {
    type metadata accessor for AllFriendsListFlowAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3240);
  }

  return result;
}

uint64_t sub_24E1BA784(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_24E347218();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  type metadata accessor for AllFriendsListFlowAction(0);
  sub_24DFD8A60();

  type metadata accessor for FriendingViewControllers();
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = sub_24DFF6DF4(a3, *(a1 + 16), v10, v11, v12);
  v14 = sub_24DFF7224(a3, v10, v11, v12);
  v15 = &selRef_local;
  v16 = [a3 navigationController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 navigationBar];

    [v18 setPrefersLargeTitles_];
  }

  v19 = [a3 navigationController];
  if (v19)
  {
    v20 = v19;
    v30 = v8;
    v21 = [v19 viewControllers];

    sub_24E18D984();
    v22 = sub_24E347F08();

    v31 = v22;
    v23 = v13;
    MEMORY[0x25303EA30]();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24E347F48();
    }

    sub_24E347F88();
    v8 = v30;
    v15 = &selRef_local;
  }

  else
  {
    v31 = 0;
  }

  if ((*(a1 + 8) & 1) == 0 && *a1 == 1 && v31)
  {
    v24 = v14;
    MEMORY[0x25303EA30]();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24E347F48();
    }

    sub_24E347F88();
  }

  v25 = [a3 v15[181]];
  if (v25)
  {
    v26 = v25;
    sub_24E18D984();

    v27 = sub_24E347EE8();

    [v26 setViewControllers:v27 animated:1];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
  (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v5);
  v28 = sub_24E347AA8();

  return v28;
}

uint64_t type metadata accessor for FriendWhoEarnedThisWrapperView(uint64_t a1)
{
  result = qword_27F1E6FD8;
  if (!qword_27F1E6FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E1BABBC()
{
  v1 = type metadata accessor for FriendWhoEarnedThisWrapperView(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  HasEarnedThisAchievementView = type metadata accessor for FriendWhoHasEarnedThisAchievementView(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E1BADEC(v0, v8, type metadata accessor for FriendWhoHasEarnedThisAchievementViewModel);
  v9 = *(v2 + 28);
  memcpy(v14, (v0 + v9), sizeof(v14));
  memcpy(&v8[*(HasEarnedThisAchievementView + 20)], (v0 + v9), 0x180uLL);
  sub_24E1BADEC(v0, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FriendWhoEarnedThisWrapperView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_24E1BAE4C(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  sub_24E002778(v14, v13);
  sub_24E1BAF10();
  sub_24E346628();

  return sub_24E1BAF68(v8);
}

uint64_t sub_24E1BADEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E1BAE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendWhoEarnedThisWrapperView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1BAEB0()
{
  v1 = *(type metadata accessor for FriendWhoEarnedThisWrapperView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24E1BADAC(v2);
}

unint64_t sub_24E1BAF10()
{
  result = qword_27F1E6FE8;
  if (!qword_27F1E6FE8)
  {
    type metadata accessor for FriendWhoHasEarnedThisAchievementView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E6FE8);
  }

  return result;
}

uint64_t sub_24E1BAF68(uint64_t a1)
{
  HasEarnedThisAchievementView = type metadata accessor for FriendWhoHasEarnedThisAchievementView(0);
  (*(*(HasEarnedThisAchievementView - 8) + 8))(a1, HasEarnedThisAchievementView);
  return a1;
}

id GKSuggestionsContainerBaseCell.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for GKSuggestionsContainerBaseCell();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id GKSuggestionsContainerBaseCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GKSuggestionsContainerBaseCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id GKSuggestionsContainerBaseCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKSuggestionsContainerBaseCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double static GKSuggestionsContainerCell.defaultCellHeight.getter()
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 preferredContentSizeCategory];

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  v6 = v6 && v0 == v5;
  if (v6)
  {

    return 224.0;
  }

  OUTLINED_FUNCTION_3_92(v4);
  OUTLINED_FUNCTION_27_14();

  if (v1)
  {

    return 224.0;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  if (v6 && v0 == v9)
  {

    return 204.0;
  }

  OUTLINED_FUNCTION_3_92(v8);
  OUTLINED_FUNCTION_27_14();

  if (v1)
  {

    return 204.0;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  if (v6 && v0 == v12)
  {

    return 190.0;
  }

  OUTLINED_FUNCTION_3_92(v11);
  OUTLINED_FUNCTION_27_14();

  if (v1)
  {

    return 190.0;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  if (v6 && v0 == v15)
  {

    return 178.0;
  }

  OUTLINED_FUNCTION_3_92(v14);
  OUTLINED_FUNCTION_27_14();

  if (v1)
  {

    return 178.0;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  if (v6 && v0 == v18)
  {

    return 164.0;
  }

  OUTLINED_FUNCTION_3_92(v17);
  OUTLINED_FUNCTION_27_14();

  if (v1)
  {

    return 164.0;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  if (v6 && v0 == v21)
  {

    return 130.0;
  }

  OUTLINED_FUNCTION_3_92(v20);
  OUTLINED_FUNCTION_27_14();

  if (v1)
  {

    return 130.0;
  }

  sub_24E347CF8();
  OUTLINED_FUNCTION_5_82();
  OUTLINED_FUNCTION_9_47();
  if (v6 && v0 == v24)
  {

    return 125.0;
  }

  else
  {
    v26 = OUTLINED_FUNCTION_3_92(v23);

    result = 120.0;
    if (v26)
    {
      return 125.0;
    }
  }

  return result;
}

void sub_24E1BB53C()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E1BB61C()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

uint64_t (*GKSuggestionsContainerCell.presentationViewController.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_26_19(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_24E1BB778;
}

void sub_24E1BB860(void *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_5_68(v2 + *a2, a2);
  swift_unknownObjectWeakAssign();
}

uint64_t sub_24E1BB8AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_5_16(*a1 + *a2, v5);
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t (*GKSuggestionsContainerCell.multiplayerPickerDataSource.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_26_19(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_24E1C6794;
}

void sub_24E1BB9B8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void sub_24E1BBAD0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E1BBBB0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall GKSuggestionsContainerCell.awakeFromNib()()
{
  OUTLINED_FUNCTION_16_30();
  v43 = v1;
  v44 = v2;
  v3 = v0;
  ObjectType = swift_getObjectType();
  v42.receiver = v0;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, sel_awakeFromNib);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = Strong;
  [Strong setDataSource_];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  [v7 setDelegate_];

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  [v9 setAllowsMultipleSelection_];

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor_];

  v14 = [v3 contentView];
  v15 = [v14 layer];

  [v15 setMasksToBounds_];
  v16 = [v3 layer];
  [v16 setMasksToBounds_];

  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v17 layer];

  [v19 setMasksToBounds_];
  sub_24DF88A8C(0, &qword_27F1E9F40, 0x277D757B0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = sub_24E1BC06C(0xD000000000000015, 0x800000024E3ABA10, [v21 bundleForClass_]);
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v23;
  v25 = v22;
  v26 = sub_24E347CB8();
  OUTLINED_FUNCTION_42_7();

  v27 = sub_24E1BC06C(0xD00000000000001BLL, 0x800000024E3ABA30, [v21 bundleForClass_]);
  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = v28;
  v30 = v27;
  v31 = sub_24E347CB8();
  OUTLINED_FUNCTION_42_7();

  v32 = sub_24E1BC06C(0xD000000000000017, 0x800000024E3ABA50, [v21 bundleForClass_]);
  v33 = swift_unknownObjectWeakLoadStrong();
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v34 = v33;
  v35 = v32;
  v36 = sub_24E347CB8();
  [v34 registerNib:v35 forCellWithReuseIdentifier:v36];

  v37 = sub_24E1BC06C(0xD00000000000001DLL, 0x800000024E3ABA70, [v21 bundleForClass_]);
  v38 = swift_unknownObjectWeakLoadStrong();
  if (v38)
  {
    v39 = v38;
    v40 = v37;
    v41 = sub_24E347CB8();
    [v39 registerNib:v40 forCellWithReuseIdentifier:v41];

    sub_24E1BC0DC();
    OUTLINED_FUNCTION_39_2();
    return;
  }

LABEL_19:
  __break(1u);
}

id sub_24E1BC06C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E347CB8();

  v5 = [swift_getObjCClassFromMetadata() nibWithNibName:v4 bundle:a3];

  return v5;
}

void sub_24E1BC0DC()
{
  [v0 frame];
  v1 = CGRectGetMinX(v14) + -1.0;
  if (v1 < 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v1;
  }

  if (v2 == *&v0[OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_horizontalInset])
  {
    return;
  }

  *&v0[OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_horizontalInset] = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = Strong;
  [Strong setConstant_];

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 setConstant_];

  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = sub_24E348458();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (v9)
  {
    v11 = 10.0;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = v10;
  [v10 setContentInset_];
}

void GKSuggestionsContainerCell.configure(delegate:nearbyPlayers:)(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsDataSource;
  OUTLINED_FUNCTION_5_68(v2 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsDataSource, a2);
  v6 = sub_24DFD8654();
  swift_unknownObjectWeakAssign();
  v7 = [a1 getSuggestedPlayerGroups];
  type metadata accessor for GKSuggestedPlayerGroup();
  v8 = sub_24E347F08();

  *(v2 + v5) = v8;

  v9 = sub_24DFD8654();
  *(v2 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyPlayers) = MEMORY[0x277D84F90];

  if (sub_24DFD8654() >= 1)
  {
    if (*(v2 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_dataLoaded) != 1 || v6 != v9)
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_24E1BC410(a2, 0);
    return;
  }

  if (v6 == v9)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_24E1BC410(a2, 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong reloadData];

    *(v2 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_dataLoaded) = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_24E1BC410(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyPlayers;
  v7 = sub_24DFD8654();
  v8 = sub_24DFD8654();
  *&v3[v6] = a1;

  if (v7 == v8)
  {
    return;
  }

  if (v8 == 1)
  {
    v9 = [objc_allocWithZone(type metadata accessor for GKSuggestedPlayerGroup()) init];
    v10 = OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_players;
    swift_beginAccess();
    *&v9[v10] = a1;

    v11 = OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_source;
    swift_beginAccess();
    *&v9[v11] = 2;
    v12 = OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsDataSource;
    swift_beginAccess();
    if (sub_24DFD8654() < 1 || ((swift_beginAccess(), v13 = *&v3[v12], sub_24DFFA844(), (v13 & 0xC000000000000001) != 0) ? (v14 = MEMORY[0x25303F560](0, v13)) : (v14 = *(v13 + 32)), v15 = v14, v16 = swift_endAccess(), v17 = sub_24E3320AC(v16), v15, !v17))
    {
      swift_beginAccess();
      sub_24E05F66C();
      v21 = v9;
      sub_24E25DE64(0, 0, v21);
LABEL_20:
      swift_endAccess();
      goto LABEL_21;
    }

    swift_beginAccess();
    v18 = *&v3[v12];
    v19 = v9;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v3[v12] = v18;
    if (!isUniquelyReferenced_nonNull_bridgeObject || v18 < 0 || (v18 & 0x4000000000000000) != 0)
    {
      v18 = sub_24E25ACD8();
      *&v3[v12] = v18;
    }

    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x20);
      *((v18 & 0xFFFFFFFFFFFFFF8) + 0x20) = v19;
      *&v3[v12] = v18;
      swift_endAccess();

LABEL_21:
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (v7 == 1)
  {
    v22 = OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsDataSource;
    swift_beginAccess();
    if (sub_24DFD8654() >= 1)
    {
      swift_beginAccess();
      v19 = *&v3[v22];
      sub_24DFFA844();
      if ((v19 & 0xC000000000000001) == 0)
      {
        v23 = *(v19 + 32);
LABEL_17:
        v24 = v23;
        v25 = swift_endAccess();
        v26 = sub_24E3320AC(v25);

        if (!v26)
        {
          goto LABEL_22;
        }

        swift_beginAccess();
        v21 = sub_24E1FB918(0);
        goto LABEL_20;
      }

LABEL_28:
      v23 = MEMORY[0x25303F560](0, v19);
      goto LABEL_17;
    }
  }

LABEL_22:
  if ((a2 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v29 = swift_allocObject();
      v29[2] = v3;
      v29[3] = v7;
      v29[4] = v8;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_24E1C6718;
      *(v30 + 24) = v29;
      v40 = sub_24DFA0D30;
      v41 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_24E2C314C;
      v39 = &block_descriptor_75;
      v31 = _Block_copy(&aBlock);
      v32 = v3;

      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      v40 = sub_24E1C6724;
      v41 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_24DFD47C8;
      v39 = &block_descriptor_81;
      v34 = _Block_copy(&aBlock);
      v35 = v32;

      [v28 performBatchUpdates:v31 completion:v34];
      _Block_release(v34);
      _Block_release(v31);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall GKSuggestionsContainerCell.updateNearbyPlayers(_:)(Swift::OpaquePointer a1)
{
  sub_24E1BC410(a1._rawValue, 0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_24E2BC8F0(a1._rawValue);
  }
}

uint64_t GKSuggestionsContainerCell.nearbyIconTapHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyIconTapHandler);
  OUTLINED_FUNCTION_5_16(v0 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyIconTapHandler, v4);
  v2 = *v1;
  sub_24DE56C38(*v1, v1[1]);
  return v2;
}

uint64_t GKSuggestionsContainerCell.nearbyIconTapHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyIconTapHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24DE73FA0(v6, v7);
}

uint64_t sub_24E1BCC48@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyIconTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24DFA0D30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24DE56C38(v4, v5);
}

uint64_t sub_24E1BCCE8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24DFA0D28;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyIconTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24DE56C38(v3, v4);
  return sub_24DE73FA0(v8, v9);
}

void sub_24E1BCE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = Strong;
  v7 = [Strong numberOfItemsInSection_];

  if (!a2)
  {
    swift_beginAccess();
    if (v7 < sub_24DFD8654())
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        v10 = &selRef_insertItemsAtIndexPaths_;
LABEL_12:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E70D0, &unk_24E382200);
        sub_24E343518();
        *(swift_allocObject() + 16) = xmmword_24E367D20;
        MEMORY[0x25303A010](0, 0);
        v13 = sub_24E347EE8();

        [v9 *v10];

        return;
      }

      goto LABEL_15;
    }
  }

  if (a3 || (swift_beginAccess(), sub_24DFD8654() >= v7))
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v9 = v12;
      v10 = &selRef_reloadItemsAtIndexPaths_;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v9 = v11;
    v10 = &selRef_deleteItemsAtIndexPaths_;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
}

void sub_24E1BD010()
{
  v1 = v0;
  v42 = sub_24E343518();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - v5;
  v41 = OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsCollectionView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v8 = Strong;
  v9 = [Strong visibleCells];

  sub_24DF88A8C(0, &qword_27F1E0080, 0x277D752A8);
  v10 = sub_24E347F08();

  v11 = sub_24DFD8654();
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v43 = v10 & 0xC000000000000001;
    v35 = v10 & 0xFFFFFFFFFFFFFF8;
    v38 = (v2 + 32);
    v39 = OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyPlayers;
    v36 = (v2 + 8);
    v37 = OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsDataSource;
    while (1)
    {
      if (v43)
      {
        v14 = MEMORY[0x25303F560](v13, v10);
      }

      else
      {
        if (v13 >= *(v35 + 16))
        {
          goto LABEL_32;
        }

        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      type metadata accessor for GKPickerGroupCell();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = v17;
      v19 = swift_unknownObjectWeakLoadStrong();
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = v19;
      v21 = [v19 indexPathForCell_];

      if (v21)
      {
        v22 = v40;
        sub_24E343498();

        (*v38)(v6, v22, v42);
        v23 = sub_24E3434C8();
        v24 = *(v1 + v39);
        if (v24 >> 62)
        {
          v25 = sub_24E348878();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v26 = v25 > 1;
        v27 = __OFSUB__(v23, v26);
        v28 = v23 - v26;
        if (v27)
        {
          goto LABEL_29;
        }

        v29 = v37;
        swift_beginAccess();
        v30 = *(v1 + v29);
        if ((v30 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x25303F560](v28);
        }

        else
        {
          if ((v28 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }

          if (v28 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v31 = *(v30 + 8 * v28 + 32);
        }

        v32 = v31;
        swift_endAccess();
        sub_24E1BD3D0(v6);
        v34 = v33;
        [v18 setSelected_];
        sub_24E1BD538(v6, v34 & 1);

        (*v36)(v6, v42);
      }

      else
      {
LABEL_20:
      }

      ++v13;
      if (v16 == v12)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_22:
}

void sub_24E1BD3D0(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_24E1BFA08(a1);
    v5 = sub_24DFD8654();
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x25303F560](v7, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v3 playerIsSelectable_])
        {
          v11 = [v3 playerIsSelected_];

          if (!v11 || (++v7, v10 == v6))
          {
LABEL_11:
            swift_unknownObjectRelease();

            return;
          }
        }

        else
        {

          ++v7;
          if (v10 == v6)
          {
            goto LABEL_11;
          }
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_24E1BD538(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if ((a2 & 1) == 0)
  {
    if (Strong)
    {
      v5 = sub_24E343488();
      [v4 deselectItemAtIndexPath_animated_];
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (!Strong)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = sub_24E343488();
  [v4 selectItemAtIndexPath_animated_scrollPosition_];
LABEL_6:
}

Swift::Void __swiftcall GKSuggestionsContainerCell.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  sub_24E1BC0DC();
}

uint64_t sub_24E1BD688()
{
  swift_beginAccess();
  v0 = sub_24DFD8654();
  v1 = sub_24DFD8654() > 1;
  result = v0 + v1;
  if (__OFADD__(v0, v1))
  {
    __break(1u);
  }

  return result;
}

id GKSuggestionsContainerCell.collectionView(_:cellForItemAt:)(void *a1, uint64_t a2)
{
  if (sub_24E3434C8() || sub_24DFD8654() < 2)
  {
    v9 = [objc_opt_self() currentTraitCollection];
    v10 = [v9 preferredContentSizeCategory];

    sub_24E348458();
    v11 = sub_24E347CB8();

    v12 = sub_24E343488();
    v8 = [a1 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v12];

    type metadata accessor for GKPickerGroupCell();
    OUTLINED_FUNCTION_7_26();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_7_26();
      OUTLINED_FUNCTION_13_40();
      v13 = swift_dynamicCastClassUnconditional();
      sub_24E1BD9A4(v13, a2);
    }
  }

  else
  {
    v4 = [objc_opt_self() currentTraitCollection];
    v5 = [v4 preferredContentSizeCategory];

    sub_24E348458();
    v6 = sub_24E347CB8();

    v7 = sub_24E343488();
    v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v7];

    type metadata accessor for GKPickerGroupNearbyCell();
    OUTLINED_FUNCTION_7_26();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_7_26();
      OUTLINED_FUNCTION_13_40();
      swift_dynamicCastClassUnconditional();
      sub_24E1BD96C();
    }
  }

  return v8;
}

double sub_24E1BD9A4(char *a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_24E343518();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v216 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24E343F88();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v216 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = a2;
  v15 = sub_24E3434C8();
  v16 = sub_24DFD8654() > 1;
  v17 = __OFSUB__(v15, v16);
  v18 = v15 - v16;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v219 = v10;
    v19 = OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsDataSource;
    swift_beginAccess();
    v3 = *&v4[v19];
    sub_24DFFA844();
    v224 = v4;
    v222 = v11;
    v221 = v12;
    v220 = v8;
    if ((v3 & 0xC000000000000001) == 0)
    {
      v20 = *(v3 + 8 * v18 + 32);
      goto LABEL_4;
    }
  }

  v20 = MEMORY[0x25303F560](v18, v3);
LABEL_4:
  v227 = v20;
  swift_endAccess();
  v21 = OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_players;
  v22 = v227;
  swift_beginAccess();
  v23 = *&v22[v21];
  v24 = &v22[OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_groupName];
  swift_beginAccess();
  v25 = v24[1];
  v26 = &selRef_setAutoScrollToPlayerId_;
  v225 = a1;
  if (v25)
  {
    v27 = *v24;

    v28 = sub_24E347DD8();
    if (v28 > 0)
    {
      goto LABEL_105;
    }
  }

  else
  {
  }

  v28 = sub_24DFD8654();
  if (v28 >= 4)
  {
    v223 = v14;
    v29 = sub_24E347CB8();
    v30 = GKGameCenterUIFrameworkBundle();
    v31 = GKGetLocalizedStringFromTableInBundle();

    v32 = sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_24E369E30;
    v34 = v23 & 0xC000000000000001;
    sub_24DFFA844();
    v218 = v32;
    if ((v23 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x25303F560](0, v23);
    }

    else
    {
      v35 = *(v23 + 32);
    }

    v36 = v35;
    v37 = v7;
    v38 = [v35 displayNameWithOptions_];

    if (v38)
    {
      v39 = sub_24E347CF8();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    *(v33 + 56) = MEMORY[0x277D837D0];
    v72 = sub_24DF95A7C();
    *(v33 + 64) = v72;
    if (!v41)
    {
      if (v34)
      {
        v73 = MEMORY[0x25303F560](0, v23);
      }

      else
      {
        v73 = *(v23 + 32);
      }

      v81 = v73;
      v82 = [v73 alias];

      v39 = sub_24E347CF8();
      v41 = v83;
    }

    *(v33 + 32) = v39;
    *(v33 + 40) = v41;
    sub_24DFFA844();
    if (v34)
    {
      v84 = MEMORY[0x25303F560](1, v23);
    }

    else
    {
      v84 = *(v23 + 40);
    }

    v85 = v84;
    v86 = [v84 displayNameWithOptions_];

    if (v86)
    {
      v87 = sub_24E347CF8();
      v89 = v88;

      v90 = (v33 + 72);
      *(v33 + 96) = MEMORY[0x277D837D0];
      *(v33 + 104) = v72;
      if (v89)
      {
        *v90 = v87;
        goto LABEL_50;
      }
    }

    else
    {
      v90 = (v33 + 72);
      *(v33 + 96) = MEMORY[0x277D837D0];
      *(v33 + 104) = v72;
    }

    if (v34)
    {
      v91 = MEMORY[0x25303F560](1, v23);
    }

    else
    {
      v91 = *(v23 + 40);
    }

    v92 = v91;
    v93 = [v91 alias];

    v94 = sub_24E347CF8();
    v89 = v95;

    *v90 = v94;
LABEL_50:
    *(v33 + 80) = v89;
    sub_24DFFA844();
    if (v34)
    {
      v96 = MEMORY[0x25303F560](2, v23);
    }

    else
    {
      v96 = *(v23 + 48);
    }

    v97 = v96;
    v98 = [v96 displayNameWithOptions_];

    if (v98)
    {
      v99 = sub_24E347CF8();
      v101 = v100;

      v102 = (v33 + 112);
      *(v33 + 136) = MEMORY[0x277D837D0];
      *(v33 + 144) = v72;
      if (v101)
      {
        *v102 = v99;
        goto LABEL_61;
      }
    }

    else
    {
      v102 = (v33 + 112);
      *(v33 + 136) = MEMORY[0x277D837D0];
      *(v33 + 144) = v72;
    }

    if (v34)
    {
      v103 = MEMORY[0x25303F560](2, v23);
    }

    else
    {
      v103 = *(v23 + 48);
    }

    v104 = v103;
    v105 = [v103 alias];

    v106 = sub_24E347CF8();
    v101 = v107;

    *v102 = v106;
LABEL_61:
    *(v33 + 120) = v101;
    sub_24DFFA844();
    if (v34)
    {
      v108 = MEMORY[0x25303F560](3, v23);
    }

    else
    {
      v108 = *(v23 + 56);
    }

    v109 = v108;
    v110 = [v108 displayNameWithOptions_];

    if (v110)
    {
      v111 = sub_24E347CF8();
      v113 = v112;

      v114 = (v33 + 152);
      *(v33 + 176) = MEMORY[0x277D837D0];
      *(v33 + 184) = v72;
      if (v113)
      {
        *v114 = v111;
        v7 = v37;
        v26 = &selRef_setAutoScrollToPlayerId_;
LABEL_72:
        *(v33 + 160) = v113;
LABEL_103:
        v27 = sub_24E347D18();
        v25 = v149;
LABEL_104:

        v14 = v223;
        goto LABEL_105;
      }
    }

    else
    {
      v114 = (v33 + 152);
      *(v33 + 176) = MEMORY[0x277D837D0];
      *(v33 + 184) = v72;
    }

    v7 = v37;
    if (v34)
    {
      v115 = MEMORY[0x25303F560](3, v23);
    }

    else
    {
      v115 = *(v23 + 56);
    }

    v116 = v115;
    v26 = &selRef_setAutoScrollToPlayerId_;
    v117 = [v115 alias];

    v118 = sub_24E347CF8();
    v113 = v119;

    *v114 = v118;
    goto LABEL_72;
  }

  if (v28 == 3)
  {
    v223 = v14;
    v42 = sub_24E347CB8();
    v43 = GKGameCenterUIFrameworkBundle();
    v44 = GKGetLocalizedStringFromTableInBundle();

    v45 = sub_24E347CF8();
    v47 = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_24E369B70;
    v49 = v23 & 0xC000000000000001;
    sub_24DFFA844();
    v218 = v47;
    v217 = v45;
    if ((v23 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x25303F560](0, v23);
    }

    else
    {
      v50 = *(v23 + 32);
    }

    v51 = v50;
    v52 = v7;
    v53 = [v50 displayNameWithOptions_];

    if (v53)
    {
      v54 = sub_24E347CF8();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    *(v48 + 56) = MEMORY[0x277D837D0];
    v79 = sub_24DF95A7C();
    *(v48 + 64) = v79;
    if (!v56)
    {
      if (v49)
      {
        v80 = MEMORY[0x25303F560](0, v23);
      }

      else
      {
        v80 = *(v23 + 32);
      }

      v122 = v80;
      v123 = [v80 alias];

      v54 = sub_24E347CF8();
      v56 = v124;
    }

    *(v48 + 32) = v54;
    *(v48 + 40) = v56;
    sub_24DFFA844();
    if (v49)
    {
      v125 = MEMORY[0x25303F560](1, v23);
    }

    else
    {
      v125 = *(v23 + 40);
    }

    v126 = v125;
    v127 = [v125 displayNameWithOptions_];

    if (v127)
    {
      v128 = sub_24E347CF8();
      v130 = v129;

      v131 = (v48 + 72);
      *(v48 + 96) = MEMORY[0x277D837D0];
      *(v48 + 104) = v79;
      if (v130)
      {
        *v131 = v128;
        goto LABEL_91;
      }
    }

    else
    {
      v131 = (v48 + 72);
      *(v48 + 96) = MEMORY[0x277D837D0];
      *(v48 + 104) = v79;
    }

    if (v49)
    {
      v132 = MEMORY[0x25303F560](1, v23);
    }

    else
    {
      v132 = *(v23 + 40);
    }

    v133 = v132;
    v134 = [v132 alias];

    v135 = sub_24E347CF8();
    v130 = v136;

    *v131 = v135;
LABEL_91:
    *(v48 + 80) = v130;
    sub_24DFFA844();
    if (v49)
    {
      v137 = MEMORY[0x25303F560](2, v23);
    }

    else
    {
      v137 = *(v23 + 48);
    }

    v138 = v137;
    v139 = [v137 displayNameWithOptions_];

    if (v139)
    {
      v140 = sub_24E347CF8();
      v142 = v141;

      v143 = (v48 + 112);
      *(v48 + 136) = MEMORY[0x277D837D0];
      *(v48 + 144) = v79;
      if (v142)
      {
        *v143 = v140;
        v7 = v52;
LABEL_102:
        *(v48 + 120) = v142;
        goto LABEL_103;
      }
    }

    else
    {
      v143 = (v48 + 112);
      *(v48 + 136) = MEMORY[0x277D837D0];
      *(v48 + 144) = v79;
    }

    v7 = v52;
    if (v49)
    {
      v144 = MEMORY[0x25303F560](2, v23);
    }

    else
    {
      v144 = *(v23 + 48);
    }

    v145 = v144;
    v146 = [v144 alias];

    v147 = sub_24E347CF8();
    v142 = v148;

    *v143 = v147;
    goto LABEL_102;
  }

  if (v28 >= 2)
  {
    v223 = v14;
    v57 = sub_24E347CB8();
    v58 = GKGameCenterUIFrameworkBundle();
    v59 = GKGetLocalizedStringFromTableInBundle();

    v60 = sub_24E347CF8();
    v62 = v61;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_24E36A270;
    v64 = v23 & 0xC000000000000001;
    sub_24DFFA844();
    v218 = v62;
    v217 = v60;
    if ((v23 & 0xC000000000000001) != 0)
    {
      v65 = MEMORY[0x25303F560](0, v23);
    }

    else
    {
      v65 = *(v23 + 32);
    }

    v66 = v65;
    v67 = v7;
    v68 = [v65 displayNameWithOptions_];

    if (v68)
    {
      v69 = sub_24E347CF8();
      v71 = v70;
    }

    else
    {
      v69 = 0;
      v71 = 0;
    }

    *(v63 + 56) = MEMORY[0x277D837D0];
    v120 = sub_24DF95A7C();
    *(v63 + 64) = v120;
    if (!v71)
    {
      if (v64)
      {
        v121 = MEMORY[0x25303F560](0, v23);
      }

      else
      {
        v121 = *(v23 + 32);
      }

      v198 = v121;
      v199 = [v121 alias];

      v69 = sub_24E347CF8();
      v71 = v200;
    }

    *(v63 + 32) = v69;
    *(v63 + 40) = v71;
    sub_24DFFA844();
    if (v64)
    {
      v201 = MEMORY[0x25303F560](1, v23);
    }

    else
    {
      v201 = *(v23 + 40);
    }

    v202 = v201;
    v203 = [v201 displayNameWithOptions_];

    if (v203)
    {
      v204 = sub_24E347CF8();
      v206 = v205;

      v207 = (v63 + 72);
      *(v63 + 96) = MEMORY[0x277D837D0];
      *(v63 + 104) = v120;
      if (v206)
      {
        *v207 = v204;
        v7 = v67;
LABEL_140:
        *(v63 + 80) = v206;
        v27 = sub_24E347D18();
        v25 = v213;
        goto LABEL_104;
      }
    }

    else
    {
      v207 = (v63 + 72);
      *(v63 + 96) = MEMORY[0x277D837D0];
      *(v63 + 104) = v120;
    }

    v7 = v67;
    if (v64)
    {
      v208 = MEMORY[0x25303F560](1, v23);
    }

    else
    {
      v208 = *(v23 + 40);
    }

    v209 = v208;
    v210 = [v208 alias];

    v211 = sub_24E347CF8();
    v206 = v212;

    *v207 = v211;
    goto LABEL_140;
  }

  if (v28 == 1)
  {
    sub_24DFFA844();
    v74 = v14;
    if ((v23 & 0xC000000000000001) != 0)
    {
      v75 = MEMORY[0x25303F560](0, v23);
    }

    else
    {
      v75 = *(v23 + 32);
    }

    v76 = v75;
    v77 = [v75 displayNameWithOptions_];

    if (!v77)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v78 = MEMORY[0x25303F560](0, v23);
      }

      else
      {
        v78 = *(v23 + 32);
      }

      v214 = v78;
      v77 = [v78 alias];
    }

    v27 = sub_24E347CF8();
    v25 = v215;

    v14 = v74;
  }

  else
  {
    v27 = 0;
    v25 = 0xE000000000000000;
  }

LABEL_105:
  if (sub_24E3320AC(v28))
  {

    if (sub_24DFD8654() < 1)
    {
      sub_24E343C98();
      v165 = v220;
      v166 = v219;
      (*(v220 + 16))(v219, v226, v7);
      v167 = sub_24E343F78();
      v168 = sub_24E348258();
      v153 = v23;
      if (os_log_type_enabled(v167, v168))
      {
        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        v223 = v14;
        v171 = v170;
        v228[0] = v170;
        *v169 = 136315138;
        sub_24E1C642C(&unk_27F1EA1A0, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
        v172 = sub_24E348BA8();
        v174 = v173;
        (*(v165 + 8))(v166, v7);
        v175 = sub_24E1C2BE0(v172, v174, v228);

        *(v169 + 4) = v175;
        _os_log_impl(&dword_24DE53000, v167, v168, "playerGroupCellForItemAtIndexPath - Unexpected empty playerGroup at indexPath: %s", v169, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v171);
        MEMORY[0x253040EE0](v171, -1, -1);
        MEMORY[0x253040EE0](v169, -1, -1);

        (*(v221 + 8))(v223, v222);
      }

      else
      {

        (*(v165 + 8))(v166, v7);
        (*(v221 + 8))(v14, v222);
      }

      v223 = 0;
      v25 = 0xE000000000000000;
    }

    else
    {
      sub_24DFFA844();
      if ((v23 & 0xC000000000000001) != 0)
      {
        v150 = MEMORY[0x25303F560](0, v23);
      }

      else
      {
        v150 = *(v23 + 32);
      }

      v151 = v150;
      v152 = [v150 displayNameWithOptions_];

      if (v152)
      {
        v153 = v23;
      }

      else
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v176 = MEMORY[0x25303F560](0, v23);
        }

        else
        {
          v176 = *(v23 + 32);
        }

        v177 = v176;
        v153 = v23;
        v152 = [v176 v26[452]];
      }

      v223 = sub_24E347CF8();
      v25 = v178;
    }

    v179 = sub_24E347CB8();
    v180 = GKGameCenterUIFrameworkBundle();
    v181 = GKGetLocalizedStringFromTableInBundle();

    v162 = sub_24E347CF8();
    v164 = v182;
  }

  else
  {
    v223 = v27;
    v153 = v23;
    v154 = sub_24DFD8654();
    if (v154 < 2)
    {
      v162 = 0;
      v164 = 0;
    }

    else
    {
      v155 = v154;
      v156 = sub_24E347CB8();
      v157 = GKGameCenterUIFrameworkBundle();
      v158 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
      v159 = swift_allocObject();
      v160 = MEMORY[0x277D83B88];
      *(v159 + 16) = xmmword_24E367D20;
      v161 = MEMORY[0x277D83C10];
      *(v159 + 56) = v160;
      *(v159 + 64) = v161;
      *(v159 + 32) = v155;
      v162 = sub_24E347CC8();
      v164 = v163;
    }
  }

  v183 = v227;
  v184 = &v227[OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_messagesGroupIdentifier];
  swift_beginAccess();
  v186 = *v184;
  v185 = v184[1];
  v187 = OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_source;
  swift_beginAccess();
  v188 = *&v183[v187];
  v189 = v224;
  Strong = swift_unknownObjectWeakLoadStrong();

  v191 = v186;
  v192 = v225;
  sub_24DFF8FD8(v153, v223, v25, v162, v164, v191, v185, v188, Strong);

  swift_unknownObjectRelease();

  v193 = v226;
  sub_24E1BD3D0(v226);
  LOBYTE(v185) = v194;
  [v192 setSelected_];
  sub_24E1BD538(v193, v185 & 1);
  v195 = sub_24DFD8654();

  if (v195 >= 2)
  {
    v196 = v189;
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_24E1BEEA4(uint64_t a1)
{
  v3 = v1;
  if (!sub_24E3434C8() && sub_24DFD8654() >= 2)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = result;
      v7 = sub_24E343488();
      v8 = [v6 cellForItemAtIndexPath_];

      if (v8)
      {
        type metadata accessor for GKPickerGroupNearbyCell();
        if (swift_dynamicCastClass())
        {
          v9 = swift_dynamicCastClassUnconditional();
          sub_24E1C0758(v9);
        }
      }

      return 0;
    }

    __break(1u);
    goto LABEL_57;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = sub_24E1BFA08(a1);
  v12 = sub_24E3434C8();
  v13 = sub_24DFD8654() > 0;
  v14 = __OFSUB__(v12, v13);
  v15 = v12 - v13;
  if (v14)
  {
    goto LABEL_52;
  }

  if (v15 < 0)
  {
    goto LABEL_17;
  }

  v16 = OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsDataSource;
  swift_beginAccess();
  if (v15 >= sub_24DFD8654())
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v2 = *(v3 + v16);
  sub_24DFFA844();
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_55;
  }

  for (i = *(v2 + 8 * v15 + 32); ; i = MEMORY[0x25303F560](v15, v2))
  {
    v2 = i;
    v18 = swift_endAccess();
    if (sub_24E332048(v18))
    {
      GKSuggestionsContainerCell.donateGroupToPeopleSuggester(_:)(v2);
    }

LABEL_17:
    v19 = sub_24DFD8654();
    if (!v19)
    {
      break;
    }

    v15 = v19;
    if (v19 >= 1)
    {
      v20 = 0;
      v2 = 0;
      while (1)
      {
        v21 = (v11 & 0xC000000000000001) != 0 ? MEMORY[0x25303F560](v2, v11) : *(v11 + 8 * v2 + 32);
        v22 = v21;
        v23 = [v10 playerIsSelectable_];

        if (v23)
        {
          v14 = __OFADD__(v20++, 1);
          if (v14)
          {
            break;
          }
        }

        if (v15 == ++v2)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  v20 = 0;
LABEL_28:
  v15 = [v10 getMaxPlayerCount];
  v24 = [v10 getSelectedPlayerCount];
  v25 = v15 - v24;
  if (__OFSUB__(v15, v24))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    if (v20 != 1)
    {
      if (v20)
      {
        if (v20 <= 1)
        {
          goto LABEL_46;
        }

        goto LABEL_41;
      }

      goto LABEL_37;
    }

LABEL_39:

    [v10 didExceedAvailablePlayers];
    goto LABEL_48;
  }

  if (v20 == 1)
  {
    if (v25)
    {
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  if (!v20)
  {
LABEL_37:
    swift_unknownObjectRelease();

    return 0;
  }

  if (v20 <= 1 || v25 >= v20)
  {
LABEL_46:
    swift_unknownObjectRelease();

    return 1;
  }

LABEL_41:
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = sub_24E343488();
  v28 = [v26 cellForItemAtIndexPath_];

  if (v28)
  {
    type metadata accessor for GKPickerGroupCell();
    v29 = swift_dynamicCastClass();

    if (v29)
    {
      v30 = swift_dynamicCastClassUnconditional();
      sub_24E1C0B28(v30);
    }
  }

  else
  {
  }

LABEL_48:
  swift_unknownObjectRelease();
  return 0;
}

double sub_24E1BF444()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v33 = v3;
  v34 = v4;
  v5 = v0;
  v7 = v6;
  v8 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v14 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v0[OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyPlayers];
  if (v15 >> 62)
  {
    v16 = sub_24E348878();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 >= 2 && sub_24E3434C8() < 1)
  {
    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v18 = Strong;
  v32 = v2;
  v19 = sub_24E1C0C6C(v7);
  if (v19)
  {
    v20 = v19;
    v31 = sub_24E343488();
    v21 = sub_24E347CB8();
    (*(v10 + 16))(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v8);
    v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v5;
    *(v23 + 24) = v20;
    (*(v10 + 32))(v23 + v22, v14, v8);
    v35[4] = v33;
    v35[5] = v23;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 1107296256;
    OUTLINED_FUNCTION_0_139();
    v35[2] = v24;
    v35[3] = v34;
    v25 = _Block_copy(v35);
    v26 = v5;
    v27 = v20;

    v28 = v31;
    [v18 *v32];
    _Block_release(v25);
    swift_unknownObjectRelease();

LABEL_8:
    OUTLINED_FUNCTION_18();
    return result;
  }

  OUTLINED_FUNCTION_18();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_24E1BF6D4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v14 = v13 - v12;
  sub_24E343498();
  v15 = a3;
  v16 = a1;
  a5();

  return (*(v10 + 8))(v14, v8);
}

void GKSuggestionsContainerCell.collectionView(_:layout:sizeForItemAt:)(void *a1)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_24E348458();
  if (v2)
  {
    v4 = [a1 collectionViewLayout];
    objc_opt_self();
    OUTLINED_FUNCTION_13_40();
    v5 = swift_dynamicCastObjCClassUnconditional();
    static GKSuggestionsContainerCell.defaultCellHeight.getter();
    [v5 minimumInteritemSpacing];
  }

  else
  {
    static GKSuggestionsContainerCell.defaultCellHeight.getter();
  }
}

uint64_t sub_24E1BFA08(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24E3434C8();
  v4 = sub_24DFD8654() > 1;
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v5)
  {
    __break(1u);
LABEL_9:
    v8 = MEMORY[0x25303F560](v6, v2);
    goto LABEL_5;
  }

  if (v6 < 0)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_suggestionsDataSource;
  swift_beginAccess();
  v2 = *(v2 + v7);
  sub_24DFFA844();
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  v8 = *(v2 + 8 * v6 + 32);
LABEL_5:
  v9 = v8;
  swift_endAccess();
  v10 = OBJC_IVAR____TtC12GameCenterUI22GKSuggestedPlayerGroup_players;
  swift_beginAccess();
  v11 = *&v9[v10];

  return v11;
}

uint64_t sub_24E1BFB0C()
{
  v0 = sub_24E343518();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24DFD8654() > 1;
  swift_beginAccess();
  result = sub_24DFD8654();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (!result)
    {
      return MEMORY[0x277D84F90];
    }

    v7 = MEMORY[0x277D84F90];
    do
    {
      MEMORY[0x25303A010](v4, 0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E07820C();
        v7 = v9;
      }

      v8 = *(v7 + 16);
      if (v8 >= *(v7 + 24) >> 1)
      {
        sub_24E07820C();
        v7 = v10;
      }

      *(v7 + 16) = v8 + 1;
      (*(v1 + 32))(v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v8, v3, v0);
      ++v4;
      --v6;
    }

    while (v6);
    return v7;
  }

  return result;
}

void GKSuggestionsContainerCell.updateVisibleItems(players:excludedIndexPath:)()
{
  OUTLINED_FUNCTION_32();
  v65 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80, qword_24E3715F0);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = v52 - v6;
  v8 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_38();
  v53 = v12;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v13);
  v59 = v52 - v14;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v15);
  v55 = v52 - v16;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v17);
  v19 = v52 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_39:
    OUTLINED_FUNCTION_18();
    return;
  }

  v21 = Strong;
  v60 = v0;
  v22 = sub_24E1BFB0C();
  v62 = *(v22 + 16);
  v52[1] = v21;
  if (!v62)
  {

    v24 = MEMORY[0x277D84F90];
LABEL_35:
    v43 = *(v24 + 16);
    v44 = v53;
    if (v43)
    {
      v47 = *(v10 + 16);
      v46 = v10 + 16;
      v45 = v47;
      v48 = (*(v46 + 64) + 32) & ~*(v46 + 64);
      v70 = v24;
      v49 = v24 + v48;
      v50 = *(v46 + 56);
      do
      {
        v45(v44, v49, v8);
        sub_24E1BD3D0(v44);
        sub_24E1BD538(v44, v51 & 1);
        (*(v46 - 8))(v44, v8);
        v49 += v50;
        --v43;
      }

      while (v43);
    }

    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v23 = 0;
  v54 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v63 = v22 + v54;
  v64 = v10;
  v58 = (v10 + 32);
  v68 = v10 + 16;
  v69 = (v10 + 8);
  v24 = MEMORY[0x277D84F90];
  v71 = v19;
  v56 = v7;
  v57 = v8;
  v61 = v22;
  while (v23 < *(v22 + 16))
  {
    v25 = *(v64 + 72);
    v66 = *(v64 + 16);
    v67 = v25;
    v66(v19, v63 + v25 * v23, v8);
    sub_24E1C62A8(v65, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_24DF8C95C(v7, &unk_27F1E6C80, qword_24E3715F0);
LABEL_8:
      v70 = v24;
      v30 = sub_24E1BFA08(v19);
      v73 = MEMORY[0x277D84FA0];
      v31 = sub_24DFD8654();
      for (i = 0; v31 != i; ++i)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x25303F560](i, v30);
        }

        else
        {
          if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v33 = *(v30 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        sub_24E1C39BC(&v72, v33);
      }

      v34 = v73;
      v73 = MEMORY[0x277D84FA0];
      v35 = sub_24DFD8654();
      for (j = 0; v35 != j; ++j)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x25303F560](j, v3);
        }

        else
        {
          if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v37 = *(v3 + 8 * j + 32);
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_42;
        }

        sub_24E1C39BC(&v72, v37);
      }

      sub_24E1C02A4(v73, v34);
      v39 = v38;

      if (v39)
      {
        v19 = v71;
        v8 = v57;
        (*v69)(v71, v57);
        v7 = v56;
        v24 = v70;
      }

      else
      {
        v19 = v71;
        v8 = v57;
        v66(v59, v71, v57);
        v24 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24E07820C();
          v24 = v41;
        }

        v40 = *(v24 + 16);
        v7 = v56;
        if (v40 >= *(v24 + 24) >> 1)
        {
          sub_24E07820C();
          v24 = v42;
        }

        (*v69)(v19, v8);
        *(v24 + 16) = v40 + 1;
        (*v58)(v24 + v54 + v40 * v67, v59, v8);
      }

      goto LABEL_32;
    }

    v26 = v55;
    (*v58)(v55, v7, v8);
    v27 = sub_24E3434F8();
    v28 = *v69;
    v29 = v26;
    v19 = v71;
    (*v69)(v29, v8);
    if (v27)
    {
      goto LABEL_8;
    }

    v28(v19, v8);
LABEL_32:
    v22 = v61;
    if (++v23 == v62)
    {

      v10 = v64;
      goto LABEL_35;
    }
  }

LABEL_44:
  __break(1u);
}

void sub_24E1C02A4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!sub_24E348878())
    {
      return;
    }
  }

  else if (!*(a2 + 16))
  {
    return;
  }

  v5 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (!sub_24E348878())
    {
      return;
    }
  }

  else if (!*(a1 + 16))
  {
    return;
  }

  if (!v4)
  {
    v6 = *(v2 + 16);
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_13:
    v7 = *(a1 + 16);
    goto LABEL_14;
  }

  v6 = sub_24E348878();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_11:
  v7 = sub_24E348878();
LABEL_14:
  if (v6 >= v7)
  {
    v8 = a1;
  }

  else
  {
    v8 = v2;
  }

  if (v6 < v7)
  {
    v2 = a1;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    sub_24E348838();
    sub_24DF88A8C(0, &qword_27F1DF028, 0x277D0C170);
    sub_24E1C6598();
    sub_24E348168();
    v8 = v32;
    v9 = v33;
    v10 = v34;
    v11 = v35;
    v12 = v36;
  }

  else
  {
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
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

    v12 = v15 & *(v8 + 56);

    v11 = 0;
  }

  sub_24DF88A8C(0, &qword_27F1DF028, 0x277D0C170);
  v28 = v9;
  v16 = (v10 + 64) >> 6;
  v17 = v2 & 0xC000000000000001;
  v29 = v8;
  while (1)
  {
    while (v8 < 0)
    {
      if (!sub_24E3488A8())
      {
LABEL_43:
        sub_24DFFCE68();

        return;
      }

      swift_dynamicCast();
      v22 = v12;
      v20 = v31;
      v30 = v22;
      if (v17)
      {
        goto LABEL_33;
      }

LABEL_37:
      if (*(v2 + 16))
      {
        v23 = sub_24E348618();
        v24 = ~(-1 << *(v2 + 32));
        while (1)
        {
          v25 = v23 & v24;
          if (((*(v2 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
          {
            break;
          }

          v26 = *(*(v2 + 48) + 8 * v25);
          v27 = sub_24E348628();

          v23 = v25 + 1;
          if (v27)
          {
            sub_24DFFCE68();

            goto LABEL_45;
          }
        }
      }

      v9 = v28;
      v8 = v29;
      v17 = v2 & 0xC000000000000001;
      v12 = v30;
    }

    v18 = v12;
    if (!v12)
    {
      break;
    }

LABEL_32:
    v30 = (v18 - 1) & v18;
    v31 = *(*(v8 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v18)))));
    v20 = v31;
    if (!v17)
    {
      goto LABEL_37;
    }

LABEL_33:
    v21 = sub_24E3488B8();

    v12 = v30;
    if (v21)
    {
      sub_24DFFCE68();
LABEL_45:

      return;
    }
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_43;
    }

    v18 = *(v9 + 8 * v11);
    ++v19;
    if (v18)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
}

void *sub_24E1C0758(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI26GKSuggestionsContainerCell_nearbyPlayers);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    v5 = sub_24DFFA658(v4);
    v7 = v6;
    v8 = sub_24E347CB8();
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_24E367D20;
    v12 = sub_24DFD8654();
    v13 = MEMORY[0x277D83C10];
    *(v11 + 56) = MEMORY[0x277D83B88];
    *(v11 + 64) = v13;
    *(v11 + 32) = v12;
    v14 = sub_24E347CC8();
    v16 = v15;

    sub_24E1C08FC(v2, v5, v7, v14, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24E1C08FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
    v13 = sub_24E347CF8();
    v15 = v14;
    v16 = sub_24E347CF8();
    sub_24E08FD58(v13, v15, v16, v17, v12);

    type metadata accessor for GKExpandedGroupViewController();
    v18 = GKGameCenterUIFrameworkBundle();
    v19 = GKExpandedGroupViewController.__allocating_init(nibName:bundle:)(0xD000000000000021, 0x800000024E3ABE70, v18);
    [v19 setModalPresentationStyle_];
    v20 = [v19 view];
    if (v20)
    {
      v21 = v20;
      [v20 setFrame_];

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();

      sub_24E2BC75C(a1, a2, a3, a4, a5, v6);
      swift_beginAccess();
      v23 = swift_unknownObjectWeakLoadStrong();
      if (v23)
      {
        v24 = v23;
        [v23 presentViewController:v19 animated:1 completion:0];
      }

      swift_unknownObjectRelease();
      swift_unknownObjectWeakAssign();
    }

    else
    {
      __break(1u);
    }
  }
}