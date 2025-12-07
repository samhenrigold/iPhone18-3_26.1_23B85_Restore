id sub_24DFC6864(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = a2;
  v5 = type metadata accessor for AppStorePlatterData(0);
  v6 = OUTLINED_FUNCTION_6_15(v5);
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12GameCenterUI19AppStoreContentView_platterViews;
  OUTLINED_FUNCTION_5_16(&v3[OBJC_IVAR____TtC12GameCenterUI19AppStoreContentView_platterViews], v69);
  v61 = v11;
  v12 = *&v3[v11];
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v17 = 0;
  v18 = &selRef_processorCount;
  if (v15)
  {
    while (1)
    {
      v19 = v17;
LABEL_9:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      [*(*(v12 + 56) + ((v19 << 9) | (8 * v20))) removeFromSuperview];
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      result = sub_24E348C98();
      __break(1u);
      return result;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 64 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_9;
    }
  }

  v21 = OBJC_IVAR____TtC12GameCenterUI19AppStoreContentView_platterOrdering;
  swift_beginAccess();
  *&v3[v21] = MEMORY[0x277D84F90];

  v22 = v61;
  OUTLINED_FUNCTION_2_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFC18, qword_24E36C610);
  sub_24E347C38();
  swift_endAccess();
  v23 = *(a1 + 16);
  if (v23)
  {
    v63 = OBJC_IVAR____TtC12GameCenterUI19AppStoreContentView_scrollView;
    v64 = OBJC_IVAR____TtC12GameCenterUI19AppStoreContentView_orientation;
    v24 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v62 = *(v8 + 72);
    v60 = v21;
    do
    {
      OUTLINED_FUNCTION_1_24();
      sub_24DFC7890(v24, v10, v25);
      sub_24DF8BD34(v10, v67);
      swift_beginAccess();
      v26 = *&v3[v21];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v3[v21] = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24E07768C(0, *(v26 + 16) + 1, 1, v26);
        v26 = v56;
        *&v3[v21] = v56;
      }

      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_24E07768C(v28 > 1, v29 + 1, 1, v26);
        v26 = v57;
      }

      *(v26 + 16) = v29 + 1;
      v30 = v26 + 40 * v29;
      v31 = v67[0];
      v32 = v67[1];
      *(v30 + 64) = v68;
      *(v30 + 32) = v31;
      *(v30 + 48) = v32;
      *&v3[v21] = v26;
      swift_endAccess();
      if (v10[168] - 1 >= 2)
      {
        if (v10[168])
        {
          OUTLINED_FUNCTION_9_9();
          v49 = objc_allocWithZone(type metadata accessor for AppLockupsPlatterView());
          v50 = OUTLINED_FUNCTION_7_12();
          v51 = sub_24E1EB3D8(v50);
          OUTLINED_FUNCTION_20_3();
          OUTLINED_FUNCTION_2_21();
        }

        else
        {
          OUTLINED_FUNCTION_9_9();
          v46 = objc_allocWithZone(type metadata accessor for AppStoreContentPlatterView());
          v47 = OUTLINED_FUNCTION_7_12();
          v48 = sub_24E243C34(v47);
          sub_24E2436C0(v10, v65);
          OUTLINED_FUNCTION_2_21();
          v18 = v48;
        }

        v52 = swift_isUniquelyReferenced_nonNull_native();
        v66 = *&v3[v22];
        sub_24E058554(v18, v10, v52);
        *&v3[v22] = v66;
        swift_endAccess();
      }

      else
      {
        OUTLINED_FUNCTION_9_9();
        v33 = objc_allocWithZone(type metadata accessor for EmptyStatePlatterView());
        v34 = OUTLINED_FUNCTION_7_12();
        v35 = sub_24E009D80(v34);
        OUTLINED_FUNCTION_20_3();
        OUTLINED_FUNCTION_2_21();
        swift_isUniquelyReferenced_nonNull_native();
        v66 = *&v3[v22];
        v36 = v66;
        *&v3[v22] = 0x8000000000000000;
        v37 = sub_24E26AE00();
        if (__OFADD__(v36[2], (v38 & 1) == 0))
        {
          goto LABEL_34;
        }

        v39 = v37;
        v40 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFC20, &unk_24E384C20);
        if (sub_24E348AB8())
        {
          v41 = sub_24E26AE00();
          if ((v40 & 1) != (v42 & 1))
          {
            goto LABEL_36;
          }

          v39 = v41;
        }

        v43 = v66;
        if (v40)
        {
          v44 = v66[7];
          v45 = *(v44 + 8 * v39);
          *(v44 + 8 * v39) = v18;
        }

        else
        {
          v66[(v39 >> 6) + 8] |= 1 << v39;
          sub_24DF8BD34(v10, v43[6] + 40 * v39);
          *(v43[7] + 8 * v39) = v18;
          v53 = v43[2];
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          if (v54)
          {
            goto LABEL_35;
          }

          v43[2] = v55;
        }

        v22 = v61;
        *&v3[v61] = v43;
        swift_endAccess();
        v21 = v60;
      }

      [*&v3[v63] addSubview_];

      sub_24DFC78F0(v10, type metadata accessor for AppStorePlatterData);
      v24 += v62;
      --v23;
    }

    while (v23);
  }

  return [v3 setNeedsLayout];
}

void sub_24DFC6D88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for AppStorePlatterData.ContentData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppStorePlatterData(0);
  sub_24DFC7890(a1 + *(v9 + 36), v8, type metadata accessor for AppStorePlatterData.ContentData);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_24DFC702C(a1);
  }

  else
  {
    v10 = OBJC_IVAR____TtC12GameCenterUI19AppStoreContentView_platterViews;
    OUTLINED_FUNCTION_5_16(&v3[OBJC_IVAR____TtC12GameCenterUI19AppStoreContentView_platterViews], v27);
    v11 = *&v3[v10];
    if (*(v11 + 16))
    {

      v12 = sub_24E26AE00();
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);

        sub_24E2436C0(a1, a2);
        [v3 setNeedsLayout];
        v15 = objc_opt_self();
        v16 = swift_allocObject();
        *(v16 + 16) = v3;
        v25 = sub_24DFC795C;
        v26 = v16;
        aBlock = MEMORY[0x277D85DD0];
        v22 = 1107296256;
        v23 = sub_24E00B24C;
        v24 = &block_descriptor_32;
        v17 = _Block_copy(&aBlock);
        v18 = v3;

        v25 = CGSizeMake;
        v26 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v22 = 1107296256;
        v23 = sub_24DFD47C8;
        v24 = &block_descriptor_35;
        v19 = _Block_copy(&aBlock);
        [v15 animateWithDuration:4 delay:v17 options:v19 animations:0.3 completion:0.0];

        _Block_release(v19);
        _Block_release(v17);
      }

      else
      {
      }
    }

    sub_24DFC78F0(v8, type metadata accessor for AppStorePlatterData.ContentData);
  }
}

void sub_24DFC702C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppStorePlatterData(0);
  v5 = OUTLINED_FUNCTION_6_15(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = OBJC_IVAR____TtC12GameCenterUI19AppStoreContentView_platterViews;
  OUTLINED_FUNCTION_5_16(&v2[OBJC_IVAR____TtC12GameCenterUI19AppStoreContentView_platterViews], v30);
  if (*(*&v2[v10] + 16))
  {

    v11 = sub_24E26AE00();
    if (v12)
    {
      v13 = OUTLINED_FUNCTION_22_3(v11);

      v23 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      v28 = sub_24DFC7724;
      v29 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_24E00B24C;
      v27 = &block_descriptor_3;
      v15 = _Block_copy(&aBlock);
      v16 = v13;

      OUTLINED_FUNCTION_1_24();
      sub_24DFC7890(a1, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
      v18 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = v2;
      sub_24DFC7750(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
      *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
      v28 = sub_24DFC77B4;
      v29 = v19;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_24DFD47C8;
      v27 = &block_descriptor_17;
      v20 = _Block_copy(&aBlock);
      v21 = v16;
      v22 = v2;

      [v23 animateWithDuration:4 delay:v15 options:v20 animations:0.2 completion:0.0];

      _Block_release(v20);
      _Block_release(v15);
    }

    else
    {
    }
  }
}

void sub_24DFC72D4(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v7 = OBJC_IVAR____TtC12GameCenterUI19AppStoreContentView_platterOrdering;
  swift_beginAccess();
  v8 = *&a2[v7];
  v15[2] = a3;

  *&a2[v7] = sub_24DFC5540(sub_24DFC784C, v15, v8);

  swift_beginAccess();
  v9 = sub_24E203240();
  swift_endAccess();

  [a4 removeFromSuperview];
  [a2 setNeedsLayout];
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v20 = sub_24DFC7880;
  v21 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_24E00B24C;
  v19 = &block_descriptor_23;
  v12 = _Block_copy(&aBlock);
  v13 = a2;

  v20 = CGSizeMake;
  v21 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_24DFD47C8;
  v19 = &block_descriptor_26;
  v14 = _Block_copy(&aBlock);
  [v10 animateWithDuration:4 delay:v12 options:v14 animations:0.3 completion:0.0];
  _Block_release(v14);
  _Block_release(v12);
}

id sub_24DFC753C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for AppStoreContentView.Orientation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24DFC76D0()
{
  result = qword_27F1DFC08;
  if (!qword_27F1DFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DFC08);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24DFC7750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStorePlatterData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24DFC77B4(uint64_t a1)
{
  v3 = type metadata accessor for AppStorePlatterData(0);
  OUTLINED_FUNCTION_6_15(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24DFC72D4(a1, v9, v1 + v8, v10);
}

uint64_t sub_24DFC7890(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24DFC78F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
}

uint64_t OUTLINED_FUNCTION_5_16(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_11_7()
{

  return [v0 (v1 + 3832)];
}

id OUTLINED_FUNCTION_12_8()
{

  return [v1 (v0 + 3832)];
}

id OUTLINED_FUNCTION_17_6()
{

  return [v0 (v1 + 3448)];
}

id OUTLINED_FUNCTION_18_5(id a1, SEL a2)
{

  return [a1 a2];
}

id OUTLINED_FUNCTION_19_3()
{

  return [v0 bounds];
}

id OUTLINED_FUNCTION_20_3()
{
  v3 = *(v1 - 208);

  return sub_24E2436C0(v0, v3);
}

id OUTLINED_FUNCTION_21_3()
{

  return [v0 (v1 + 3448)];
}

id OUTLINED_FUNCTION_22_3(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);

  return v3;
}

uint64_t sub_24DFC7BBC()
{
  type metadata accessor for RemoveFriendProfileSection();
  result = swift_allocObject();
  *(result + 16) = 277;
  return result;
}

uint64_t sub_24DFC7BE8(void *__src)
{
  v68 = *v1;
  memcpy(__dst, __src, sizeof(__dst));
  v3 = sub_24E347478();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_3_14();
  v73 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v63 - v6;
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v70 = v9;
  v71 = v8;
  MEMORY[0x28223BE20](v8);
  v69 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  v14 = type metadata accessor for RemoveFriendAction(0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_14();
  v72 = v15;
  v16 = sub_24E347458();
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_3_14();
  v74 = v17;
  v18 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v75 = v25;
  v76 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_14();
  v27 = v26;
  memcpy(v81, __src, sizeof(v81));
  v28 = 0;
  if (sub_24DF8BF80(v81) != 1)
  {
    v66 = v81[0];
    v67 = v7;
    v29 = v81[1];
    v30 = BYTE1(v81[1]);
    memcpy(v80, __dst, sizeof(v80));
    sub_24DF8BF98(v80, v79);
    if (qword_27F1DDE48 != -1)
    {
      swift_once();
    }

    if (byte_27F20B8B0 == 1 && (v30 & 1) != 0 && (v29 & 1) == 0)
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      inited = swift_initStackObject();
      v65 = xmmword_24E367D20;
      *(inited + 16) = xmmword_24E367D20;
      v33 = MEMORY[0x277D837D0];
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 72) = v33;
      *(inited + 48) = 0x65766F6D6572;
      *(inited + 56) = 0xE600000000000000;
      v34 = sub_24E347C28();
      if (qword_27F1DD808 != -1)
      {
        swift_once();
      }

      v35 = sub_24E347058();
      v36 = __swift_project_value_buffer(v35, qword_27F20AE00);
      MEMORY[0x25303DB90](0x724665766F6D6572, 0xEC000000646E6569, 0x6E6F74747562, 0xE600000000000000, v34, v36);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
      v37 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v65;
      (*(v20 + 16))(v38 + v37, v23, v18);
      sub_24E347448();
      v64 = v27;
      sub_24E3471D8();
      (*(v20 + 8))(v23, v18);
      v39 = sub_24E32C0B8();
      v40 = v72;
      (*(v75 + 16))(v72 + *(v14 + 28), v27, v76);
      v41 = v66;
      *v40 = v39;
      *(v40 + 8) = v41;
      *(v40 + 16) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78, &unk_24E369E80);
      v28 = swift_allocObject();
      *(v28 + 16) = v65;
      v42 = v41;
      v43 = sub_24E347CB8();
      v44 = GKGameCenterUIFrameworkBundle();
      v45 = GKGetLocalizedStringFromTableInBundle();

      v46 = sub_24E347CF8();
      v48 = v47;

      memset(v79, 0, 64);
      v79[64] = -1;
      v78[3] = v14;
      v78[4] = sub_24DFC865C(&qword_27F1DFC28, type metadata accessor for RemoveFriendAction, &unk_24E377800);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
      sub_24DFC85F8(v40, boxed_opaque_existential_1, v50);
      sub_24E343398();
      v51 = v70;
      v52 = v71;
      (*(v70 + 16))(v69, v13, v71);
      sub_24DFC865C(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_24E348918();
      (*(v51 + 8))(v13, v52);
      v53 = type metadata accessor for DetailData(0);
      *(v28 + 56) = v53;
      *(v28 + 64) = sub_24DFC865C(&qword_27F1DEE80, type metadata accessor for DetailData, &unk_24E3885B0);
      v54 = __swift_allocate_boxed_opaque_existential_1((v28 + 32));
      *(v54 + 25) = 0u;
      v54[27] = 0;
      *(v54 + 23) = 0u;
      v55 = *(v53 + 56);
      v71 = v55;
      v70 = sub_24E3474B8();
      __swift_storeEnumTagSinglePayload(v54 + v55, 1, 1, v70);
      v56 = v54 + *(v53 + 60);
      sub_24DF8BD34(v77, v54);
      *(v54 + 40) = 7;
      v54[6] = v46;
      v54[7] = v48;
      v54[9] = 0;
      v54[10] = 0;
      v54[8] = 0;
      sub_24DF8C8EC(v79, (v54 + 11));
      v54[20] = 0;
      v54[21] = 0;
      *(v54 + 88) = 256;
      *v56 = 0;
      v56[8] = 0;

      sub_24DF8BDF0(v78, (v54 + 23));
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_24E369E30;
      strcpy((v57 + 32), "impressionType");
      *(v57 + 47) = -18;
      *(v57 + 48) = 0x74656C63696863;
      *(v57 + 56) = 0xE700000000000000;
      v58 = MEMORY[0x277D837D0];
      *(v57 + 72) = MEMORY[0x277D837D0];
      *(v57 + 80) = 0x6973736572706D69;
      v59 = MEMORY[0x277D83B88];
      *(v57 + 88) = 0xEF7865646E496E6FLL;
      *(v57 + 96) = 0;
      *(v57 + 120) = v59;
      *(v57 + 128) = 0x657079546469;
      *(v57 + 136) = 0xE600000000000000;
      *(v57 + 144) = 0x636974617473;
      *(v57 + 152) = 0xE600000000000000;
      *(v57 + 168) = v58;
      *(v57 + 176) = 1701667182;
      *(v57 + 216) = v58;
      *(v57 + 184) = 0xE400000000000000;
      *(v57 + 192) = v46;
      *(v57 + 200) = v48;

      sub_24E347C28();
      sub_24E347468();
      sub_24E347448();
      v60 = MEMORY[0x277D84F90];
      sub_24E0241AC(MEMORY[0x277D84F90]);
      sub_24E0241AC(v60);
      v61 = v67;
      sub_24E347488();
      sub_24DF8BE60(v77);
      sub_24DF8C95C(v79, &qword_27F1DEE88, &unk_24E36BF90);
      sub_24DF8C95C(v78, &qword_27F1DEE90, &unk_24E369E90);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v70);
      sub_24DF8BEB4(v61, v54 + v71);
      sub_24DF8C95C(__src, &qword_27F1DEEA0, qword_24E369EA0);
      sub_24DFC86A4(v40, v62);
      (*(v75 + 8))(v64, v76);
    }

    else
    {
      sub_24DF8C95C(__src, &qword_27F1DEEA0, qword_24E369EA0);
      return 0;
    }
  }

  return v28;
}

uint64_t sub_24DFC85F8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for RemoveFriendAction(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DFC865C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24DFC86A4(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for RemoveFriendAction(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24DFC8700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_19_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_6_16();
  sub_24DF8F3A8(v12, v13, &unk_27F1DFC70, &qword_24E36BAF0);
  v14 = sub_24E348098();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_24DF8F34C(v5, &unk_27F1DFC70, &qword_24E36BAF0);
  }

  else
  {
    sub_24E348088();
    OUTLINED_FUNCTION_22_0();
    (*(v16 + 8))(v5, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = v18;
    sub_24E347FF8();
    OUTLINED_FUNCTION_23_5();
    if (v6)
    {
LABEL_6:
      sub_24E347D58();
      OUTLINED_FUNCTION_16_4();
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v17 | v19)
      {
        OUTLINED_FUNCTION_18_6();
      }

      else
      {
        v21 = 0;
      }

      OUTLINED_FUNCTION_16_6(v21);
      v23 = swift_task_create();

      sub_24DF8F34C(v7, &unk_27F1DFC70, &qword_24E36BAF0);

      return v23;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  sub_24DF8F34C(v7, &unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_16_4();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v17 | v19)
  {
    OUTLINED_FUNCTION_17_7();
  }

  return swift_task_create();
}

uint64_t sub_24DFC8994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_19_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_6_16();
  sub_24DF8F3A8(v12, v13, &unk_27F1DFC70, &qword_24E36BAF0);
  v14 = sub_24E348098();
  OUTLINED_FUNCTION_25_3(v14);
  if (&qword_24E36BAF0 == 1)
  {
    sub_24DF8F34C(v5, &unk_27F1DFC70, &qword_24E36BAF0);
  }

  else
  {
    sub_24E348088();
    OUTLINED_FUNCTION_22_0();
    (*(v15 + 8))(v5, &unk_27F1DFC70);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    sub_24E347FF8();
    OUTLINED_FUNCTION_23_5();
    if (v6)
    {
LABEL_6:
      sub_24E347D58();
      OUTLINED_FUNCTION_16_4();
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCA8, &qword_24E38F7C0);
      OUTLINED_FUNCTION_28_3();
      if (v18)
      {
        OUTLINED_FUNCTION_18_6();
      }

      OUTLINED_FUNCTION_16_6(v18);
      v22 = OUTLINED_FUNCTION_30_2(v19, v20, v21);

      sub_24DF8F34C(v7, &unk_27F1DFC70, &qword_24E36BAF0);

      return v22;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  sub_24DF8F34C(v7, &unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_16_4();
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCA8, &qword_24E38F7C0);
  OUTLINED_FUNCTION_28_3();
  if (v24)
  {
    OUTLINED_FUNCTION_17_7();
  }

  return swift_task_create();
}

uint64_t sub_24DFC8C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_19_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_6_16();
  sub_24DF8F3A8(v12, v13, &unk_27F1DFC70, &qword_24E36BAF0);
  v14 = sub_24E348098();
  OUTLINED_FUNCTION_25_3(v14);
  if (&qword_24E36BAF0 == 1)
  {
    sub_24DF8F34C(v5, &unk_27F1DFC70, &qword_24E36BAF0);
  }

  else
  {
    sub_24E348088();
    OUTLINED_FUNCTION_22_0();
    (*(v15 + 8))(v5, &unk_27F1DFC70);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    sub_24E347FF8();
    OUTLINED_FUNCTION_23_5();
    if (v6)
    {
LABEL_6:
      sub_24E347D58();
      OUTLINED_FUNCTION_16_4();
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCB0, &qword_24E36C758);
      OUTLINED_FUNCTION_28_3();
      if (v18)
      {
        OUTLINED_FUNCTION_18_6();
      }

      OUTLINED_FUNCTION_16_6(v18);
      v22 = OUTLINED_FUNCTION_30_2(v19, v20, v21);

      sub_24DF8F34C(v7, &unk_27F1DFC70, &qword_24E36BAF0);

      return v22;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  sub_24DF8F34C(v7, &unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_16_4();
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCB0, &qword_24E36C758);
  OUTLINED_FUNCTION_28_3();
  if (v24)
  {
    OUTLINED_FUNCTION_17_7();
  }

  return swift_task_create();
}

id OnboardingFriendsSuggestionsViewController.init(gameBundleId:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_hostingController] = 0;
  v6 = OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_invitedContacts;
  type metadata accessor for FriendsSuggestionsOnboardingInvitedContacts(0);
  swift_allocObject();
  *&v2[v6] = sub_24E25F21C();
  *&v2[OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_game] = 0;
  *&v2[OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_suggestedFriends] = 0;
  *&v2[OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_dataUpdateDelegate] = 0;
  v7 = sub_24E347638();
  OUTLINED_FUNCTION_31_1(v7);
  v8 = &v2[OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_gameBundleId];
  *v8 = a1;
  *(v8 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

void sub_24DFC8FE0()
{
  *(v0 + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_hostingController) = 0;
  v1 = OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_invitedContacts;
  type metadata accessor for FriendsSuggestionsOnboardingInvitedContacts(0);
  swift_allocObject();
  *(v0 + v1) = sub_24E25F21C();
  *(v0 + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_game) = 0;
  *(v0 + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_suggestedFriends) = 0;
  *(v0 + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_dataUpdateDelegate) = 0;
  v2 = sub_24E347638();
  OUTLINED_FUNCTION_31_1(v2);
  sub_24E348AE8();
  __break(1u);
}

Swift::Void __swiftcall OnboardingFriendsSuggestionsViewController.loadView()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v1 setView_];

  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFC68, &unk_24E36C660));
  v4 = sub_24E345D58();

  sub_24DFC9164(v4);
}

void sub_24DFC9164(void *a1)
{
  sub_24DFC9214();
  v3 = *(v1 + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_hostingController);
  *(v1 + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_hostingController) = a1;
  v4 = a1;

  sub_24DFC92B8();
}

void sub_24DFC9214()
{
  v1 = *&v0[OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_hostingController];
  if (v1)
  {
    v4 = v1;
    v2 = [v4 view];
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];

      [v0 removeChildViewController_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24DFC92B8()
{
  v1 = *&v0[OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_hostingController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v4 addSubview_];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = objc_opt_self();
  v10 = [v2 view];
  v11 = [v0 view];
  [v9 _gkInstallEdgeConstraintsForView_containedWithinParentView_];
}

void sub_24DFC9438()
{
  v1 = type metadata accessor for FriendsSuggestionsOnboardingView(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v22 - v5);
  v7 = *&v0[OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_suggestedFriends];
  if (v7)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v0;
    v22 = swift_allocObject();
    *(v22 + 16) = v0;
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    v9 = v1[10];
    v10 = v0;

    sub_24DFC9A90(v6 + v9);
    v11 = *&v10[OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_game];
    *v6 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
    swift_storeEnumTagMultiPayload();
    *(v6 + v1[5]) = v7;
    v12 = (v6 + v1[6]);
    type metadata accessor for FriendsSuggestionsOnboardingInvitedContacts(0);
    sub_24DFCD6A0(&qword_27F1DFD20, type metadata accessor for FriendsSuggestionsOnboardingInvitedContacts, &unk_24E388698);
    v13 = v11;
    *v12 = sub_24E3455C8();
    v12[1] = v14;
    v15 = (v6 + v1[7]);
    v16 = v22;
    v17 = v23;
    *v15 = sub_24DFCD658;
    v15[1] = v17;
    v18 = (v6 + v1[8]);
    *v18 = sub_24DFCD67C;
    v18[1] = v16;
    v19 = (v6 + v1[9]);
    *v19 = CGSizeMake;
    v19[1] = v8;
    *(v6 + v1[11]) = v11;
    swift_unknownObjectWeakInit();
    sub_24DFCD6E8(v6, v3);
    v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFD28, &qword_24E36C830));
    v21 = sub_24E345D58();
    sub_24DFC9164(v21);
    sub_24DFCD74C(v6);
  }
}

void sub_24DFC96E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  if (a1)
  {
    v6 = a1;
    if ([v6 supportsFriendingViaPush])
    {
      v7 = sub_24E283C30(v6);
      if (v8)
      {
        v9 = v7;
        v10 = v8;
        sub_24DFCBF18(0);
        v11 = sub_24E348098();
        __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
        sub_24E348068();
        v12 = v6;
        v13 = v1;
        v14 = sub_24E348058();
        v15 = swift_allocObject();
        v16 = MEMORY[0x277D85700];
        v15[2] = v14;
        v15[3] = v16;
        v15[4] = v12;
        v15[5] = v9;
        v15[6] = v10;
        v15[7] = v13;
        sub_24DFC8700(0, 0, v5, &unk_24E36C840, v15);

        return;
      }
    }

    sub_24DFCBF18(1);
    v17 = [v6 contact];
  }

  else
  {
    sub_24DFCBF18(2);
    v17 = 0;
  }

  v20 = v17;
  sub_24DFCBDAC(v17);
  v18 = v20;
}

void sub_24DFC98B0()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 accountService];

  v3 = [objc_opt_self() currentDevice];
  if (v3)
  {
    sub_24E1A3838(v3);
    if (v4)
    {
      v5 = sub_24E347CB8();
    }

    else
    {
      v5 = 0;
    }

    [v2 setLastFriendSuggestionsVersionDisplayedForSignedInPlayer_];
    swift_unknownObjectRelease();

    v6 = [v0 navigationController];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() local];
      v9 = [v8 shouldShowContactsIntegrationConsentScreen];

      v10 = [objc_opt_self() shared];
      v13 = v10;
      if (v9)
      {
        [v10 presentContactsIntegrationConsentScreen_];

        v11 = v13;
      }

      else
      {
        v12 = [v10 delegate];

        if (v12)
        {
          [v12 onboardingFlowFinishedWithAction_];
          swift_unknownObjectRelease();
        }

        v11 = v7;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24DFC9A90@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCB8, &qword_24E36C768);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController____lazy_storage___metricsContext;
  swift_beginAccess();
  sub_24DF8F3A8(v1 + v9, v8, &qword_27F1DFCB8, &qword_24E36C768);
  v10 = sub_24E347638();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  sub_24DF8F34C(v8, &qword_27F1DFCB8, &qword_24E36C768);
  sub_24DFCC868();
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  swift_beginAccess();
  sub_24DFCD48C(v5, v1 + v9);
  return swift_endAccess();
}

Swift::Void __swiftcall OnboardingFriendsSuggestionsViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v16 - v7;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewWillAppear_, a1, v6);
  v9 = [v1 navigationController];
  if (v9)
  {
    v10 = v9;
    [v9 setNavigationBarHidden_];
  }

  v11 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  sub_24E348068();
  v12 = v1;
  v13 = sub_24E348058();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  sub_24DFC8700(0, 0, v8, &unk_24E36C678, v14);
}

uint64_t sub_24DFC9DBC()
{
  v0[2] = sub_24E348068();
  v0[3] = sub_24E348058();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24DFC9E68;

  return sub_24DFC9FEC();
}

uint64_t sub_24DFC9E68()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  v4 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24DFC9F94, v4, v3);
}

uint64_t sub_24DFC9F94()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24DFC9FEC()
{
  v1[24] = v0;
  v2 = sub_24E343F88();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_24E348068();
  v1[29] = sub_24E348058();
  v4 = sub_24E347FF8();
  v1[30] = v4;
  v1[31] = v3;

  return MEMORY[0x2822009F8](sub_24DFCA0EC, v4, v3);
}

uint64_t sub_24DFCA0EC()
{
  v2 = (v0[24] + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_gameBundleId);
  v3 = *v2;
  v0[32] = *v2;
  v4 = v2[1];
  v0[33] = v4;
  if (!v4)
  {

    OUTLINED_FUNCTION_24_2();
    swift_initStaticObject();
    sub_24E2EFE4C();
    v11 = OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_20_4(v11);
    v12 = OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_20_4(v12);
    sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);

    v13 = sub_24E348368();
    v14 = OUTLINED_FUNCTION_1_25(v13, MEMORY[0x277D225C0]);
    OUTLINED_FUNCTION_13_9(v14, v15, sub_24DFCD594);

    __swift_destroy_boxed_opaque_existential_1(v1);

    v16 = OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_20_4(v16);
    v17 = objc_allocWithZone(type metadata accessor for OnboardingFriendsSuggestionsViewController.FriendRecommendationsDataUpdateDelegate());
    v18 = OUTLINED_FUNCTION_2_22();
    v19 = *OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_dataUpdateDelegate;
    *OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_dataUpdateDelegate = v18;

    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_29_2();

    __asm { BRAA            X1, X16 }
  }

  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8, &unk_24E36DBA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24E367D20;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;

  v7 = sub_24E347EE8();
  v0[34] = v7;

  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_24DFCA3C8;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCE0, &unk_24E36C7A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24DFCAE2C;
  v0[13] = &block_descriptor_4;
  v0[14] = v8;
  [v5 loadGamesWithBundleIDs:v7 withCompletionHandler:v0 + 10];
  OUTLINED_FUNCTION_29_2();

  return MEMORY[0x282200938](v9);
}

uint64_t sub_24DFCA3C8()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_10();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 280) = v4;
  v5 = v3[31];
  v6 = v3[30];
  if (v4)
  {
    v7 = sub_24DFCA7E0;
  }

  else
  {
    v7 = sub_24DFCA4EC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

void sub_24DFCA4EC()
{

  v3 = *(v0 + 184);
  if (sub_24DFD8654())
  {
    sub_24DFFA844();
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x25303F560](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = *(v0 + 192);

    v7 = *(v6 + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_game);
    *(v6 + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_game) = v5;
  }

  else
  {
    v8 = *(v0 + 272);

    sub_24E343C98();

    v9 = sub_24E343F78();
    v1 = sub_24E348258();

    if (os_log_type_enabled(v9, v1))
    {
      v11 = *(v0 + 256);
      v10 = *(v0 + 264);
      v12 = *(v0 + 224);
      v13 = *(v0 + 200);
      v14 = *(v0 + 208);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_24E1C2BE0(v11, v10, &v33);
      _os_log_impl(&dword_24DE53000, v9, v1, "Error loading a GKGame object from %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_22_4();

      v17 = *(v14 + 8);
      v2 = (v14 + 8);
      v17(v12, v13);
    }

    else
    {
      v18 = *(v0 + 224);
      v19 = *(v0 + 200);
      v20 = *(v0 + 208);

      v21 = *(v20 + 8);
      v1 = v20 + 8;
      v21(v18, v19);
    }
  }

  OUTLINED_FUNCTION_24_2();
  swift_initStaticObject();
  sub_24E2EFE4C();
  v22 = OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_20_4(v22);
  v23 = OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_20_4(v23);
  sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);

  v24 = sub_24E348368();
  v25 = OUTLINED_FUNCTION_1_25(v24, MEMORY[0x277D225C0]);
  OUTLINED_FUNCTION_13_9(v25, v26, sub_24DFCD594);

  __swift_destroy_boxed_opaque_existential_1(v2);

  v27 = OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_20_4(v27);
  v28 = objc_allocWithZone(type metadata accessor for OnboardingFriendsSuggestionsViewController.FriendRecommendationsDataUpdateDelegate());
  v29 = OUTLINED_FUNCTION_2_22();
  v30 = *(v1 + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_dataUpdateDelegate);
  *(v1 + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_dataUpdateDelegate) = v29;

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_29_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_24DFCA7E0()
{
  v34 = v0;
  v3 = v0[34];
  v2 = v0[35];

  swift_willThrow();

  sub_24E343C98();

  v4 = v2;
  v5 = sub_24E343F78();
  v6 = sub_24E348258();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[35];
  if (v7)
  {
    v9 = v0[32];
    v1 = v0[33];
    v10 = v0[26];
    v31 = v0[25];
    v32 = v0[27];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_24E1C2BE0(v9, v1, &v33);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_24DE53000, v5, v6, "Error loading a GKGame object from %s with error: %@", v11, 0x16u);
    sub_24DF8F34C(v12, &unk_27F1DF730, &qword_24E36DA40);
    OUTLINED_FUNCTION_22_4();
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_22_4();

    v17 = *(v10 + 8);
    v16 = v10 + 8;
    v17(v32, v31);
  }

  else
  {
    v19 = v0[26];
    v18 = v0[27];
    v16 = v0[25];

    (*(v19 + 8))(v18, v16);
  }

  OUTLINED_FUNCTION_24_2();
  swift_initStaticObject();
  sub_24E2EFE4C();
  v20 = OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_20_4(v20);
  v21 = OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_20_4(v21);
  sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);

  v22 = sub_24E348368();
  v23 = OUTLINED_FUNCTION_1_25(v22, MEMORY[0x277D225C0]);
  OUTLINED_FUNCTION_13_9(v23, v24, sub_24DFCD594);

  __swift_destroy_boxed_opaque_existential_1(v1);

  v25 = OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_20_4(v25);
  v26 = objc_allocWithZone(type metadata accessor for OnboardingFriendsSuggestionsViewController.FriendRecommendationsDataUpdateDelegate());
  v27 = OUTLINED_FUNCTION_2_22();
  v28 = *(v16 + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_dataUpdateDelegate);
  *(v16 + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_dataUpdateDelegate) = v27;

  OUTLINED_FUNCTION_12_5();

  return v29();
}

Swift::Void __swiftcall OnboardingFriendsSuggestionsViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewIsAppearing_, a1);
}

Swift::Void __swiftcall OnboardingFriendsSuggestionsViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillDisappear_, a1);
  if ([v1 isMovingFromParentViewController])
  {
    sub_24DFCAC30();
  }
}

uint64_t sub_24DFCAC30()
{
  v0 = sub_24E347638();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24DFC9A90(v3);
  sub_24E32E900(6, 8, 1, 9, 2, v3);
  return (*(v1 + 8))(v3, v0);
}

void __swiftcall OnboardingFriendsSuggestionsViewController.contentScrollView(for:)(UIScrollView_optional *__return_ptr retstr, NSDirectionalRectEdge a2)
{
  v4 = *(v2 + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_hostingController);
  if (v4)
  {
    v5 = [v4 contentScrollViewForEdge_];
  }
}

uint64_t sub_24DFCAE2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_24E1D5B0C();
  }

  else
  {
    sub_24DF88A8C(0, &unk_27F1DFCF0, 0x277D0C048);
    v7 = sub_24E347F08();

    return sub_24E1C6B10(v4, v7);
  }
}

void sub_24DFCAED4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_suggestedFriends) = v2;

    sub_24DFC9438();
  }
}

void sub_24DFCAF54(void *a1, uint64_t a2)
{
  v3 = sub_24E343F88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E343C98();
  v7 = a1;
  v8 = sub_24E343F78();
  v9 = sub_24E348258();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24DE53000, v8, v9, "error fetch %@", v10, 0xCu);
    sub_24DF8F34C(v11, &unk_27F1DF730, &qword_24E36DA40);
    MEMORY[0x253040EE0](v11, -1, -1);
    MEMORY[0x253040EE0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    *(Strong + OBJC_IVAR___GKOnboardingFriendsSuggestionsViewController_suggestedFriends) = 0;

    sub_24DFC9438();
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    sub_24DFC98B0();
  }
}

uint64_t sub_24DFCB178(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E346EE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24E346F08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24E347CF8();
  v23 = v12;
  sub_24E348918();
  sub_24E12C94C(a1, &v24);
  sub_24DF8BE60(aBlock);
  if (!v25)
  {
    return sub_24DF8F34C(&v24, &qword_27F1E0370, &unk_24E369A10);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v15 = v22;
    v14 = v23;
    sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
    v20 = sub_24E348368();
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = v15;
    v16[4] = v14;
    aBlock[4] = sub_24DFCD5D0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E00B24C;
    aBlock[3] = &block_descriptor_47;
    v17 = _Block_copy(aBlock);

    sub_24E346EF8();
    *&v24 = MEMORY[0x277D84F90];
    sub_24DFCD6A0(&qword_27F1DFD00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90, &qword_24E36C170);
    sub_24DFCD5F4();
    sub_24E3487E8();
    v18 = v20;
    MEMORY[0x25303EED0](0, v11, v7, v17);
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  return result;
}

void *sub_24DFCB4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;

    swift_getKeyPath();
    swift_getKeyPath();

    v7 = sub_24E344E48();
    sub_24E1C33C4(&v9, a2, a3);

    v7(v8, 0);
  }

  return result;
}

id sub_24DFCB5F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtCC12GameCenterUI42OnboardingFriendsSuggestionsViewControllerP33_48F72ACA40F78B09E808C26EC55289D339FriendRecommendationsDataUpdateDelegate_updateBlock];
  *v6 = a1;
  *(v6 + 1) = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 daemonProxy];
  [v10 addDataUpdateDelegate_];

  return v9;
}

uint64_t sub_24DFCB6B8(uint64_t result, uint64_t a2)
{
  if (result == 4)
  {
    return (*(v2 + OBJC_IVAR____TtCC12GameCenterUI42OnboardingFriendsSuggestionsViewControllerP33_48F72ACA40F78B09E808C26EC55289D339FriendRecommendationsDataUpdateDelegate_updateBlock))(a2);
  }

  return result;
}

id sub_24DFCB77C()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() daemonProxy];
  [v2 removeDataUpdateDelegate_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_24DFCB890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_24E343F88();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_24E348068();
  v7[9] = sub_24E348058();
  v10 = sub_24E347FF8();
  v7[10] = v10;
  v7[11] = v9;

  return MEMORY[0x2822009F8](sub_24DFCB988, v10, v9);
}

uint64_t sub_24DFCB988()
{
  OUTLINED_FUNCTION_8_9();
  v1 = v0[2];
  type metadata accessor for GameCenter();
  swift_initStaticObject();
  v2 = [v1 contact];
  v3 = [v2 identifier];

  sub_24E347CF8();
  v5 = v4;

  v0[12] = v5;
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_24DFCBA90;

  return sub_24E2EFF78();
}

uint64_t sub_24DFCBA90()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v3 = v2;
  OUTLINED_FUNCTION_9_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_24DFCBBF8;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_24DFCBB98;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24DFCBB98()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24DFCBBF8()
{
  v1 = v0[14];

  sub_24E343CC8();
  v2 = v1;
  v3 = sub_24E343F78();
  v4 = sub_24E348258();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24DE53000, v3, v4, "Unable to send friend invitation via push, falling back to Messages flow. %@", v6, 0xCu);
    sub_24DF8F34C(v7, &unk_27F1DF730, &qword_24E36DA40);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_22_4();
  }

  v10 = v0[14];
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[6];
  v14 = v0[2];

  (*(v12 + 8))(v11, v13);
  v15 = [v14 contact];
  sub_24DFCBDAC(v15);

  OUTLINED_FUNCTION_12_5();

  return v16();
}

uint64_t sub_24DFCBDAC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  if (a1)
  {
    v8 = a1;
    MEMORY[0x25303EA30]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24E347F48();
    }

    sub_24E347F88();
    v7 = v16;
  }

  v9 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  sub_24E348068();
  v10 = v2;
  v11 = sub_24E348058();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v7;
  v12[5] = v10;
  sub_24DFC8700(0, 0, v6, &unk_24E36C850, v12);
}

uint64_t sub_24DFCBF18(uint64_t a1)
{
  v2 = sub_24E347638();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24DFC9A90(v5);
  sub_24E32F4E0(a1, 0x696472616F626E6FLL, 0xEA0000000000676ELL, 0xD000000000000010, 0x800000024E39C790, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24DFCC05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_24E348068();
  v5[4] = sub_24E348058();
  v7 = sub_24E347FF8();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_24DFCC0F4, v7, v6);
}

uint64_t sub_24DFCC0F4()
{
  OUTLINED_FUNCTION_8_9();
  if (GKIsRemoteUI())
  {
    type metadata accessor for FriendRequestFacilitator();
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_24DFCC258;

    return static FriendRequestFacilitator.makeViewController(recipients:chatGUID:)();
  }

  else
  {
    v3 = *(v0 + 16);

    type metadata accessor for FriendRequestFacilitator();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    static FriendRequestFacilitator.makeViewControllerForRemoteInvite(recipients:chatGUID:resultHandler:)(v3, 0, 0, sub_24DFCD91C, v4);

    OUTLINED_FUNCTION_12_5();

    return v5();
  }
}

uint64_t sub_24DFCC258()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  *(v7 + 64) = v6;

  v8 = *(v1 + 48);
  v9 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24DFCC374, v9, v8);
}

uint64_t sub_24DFCC374()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  [v2 presentViewController:v1 animated:1 completion:0];

  OUTLINED_FUNCTION_12_5();

  return v3();
}

void sub_24DFCC3F0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v5 = Strong;
    [Strong presentViewController:a1 animated:1 completion:0];
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v8[4] = sub_24DFCD924;
    v8[5] = a3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_24E0121FC;
    v8[3] = &block_descriptor_76;
    v7 = _Block_copy(v8);
    v5 = a2;

    [v5 setRemoteViewReadyHandler_];
    _Block_release(v7);
  }
}

void sub_24DFCC518(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24E346EE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24E346F08();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19[0] = v11;
    sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
    v14 = a1;
    v15 = sub_24E348368();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = v14;
    aBlock[4] = sub_24DFCD92C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E00B24C;
    aBlock[3] = &block_descriptor_82;
    v17 = _Block_copy(aBlock);
    v18 = v14;

    sub_24E346EF8();
    v19[1] = MEMORY[0x277D84F90];
    sub_24DFCD6A0(&qword_27F1DFD00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90, &qword_24E36C170);
    sub_24DFCD5F4();
    sub_24E3487E8();
    MEMORY[0x25303EED0](0, v13, v8, v17);
    _Block_release(v17);

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v13, v19[0]);
  }
}

void sub_24DFCC7FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong presentViewController:a2 animated:0 completion:0];
  }
}

uint64_t sub_24DFCC868()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0, &unk_24E36C770);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = sub_24E347638();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E347628();
  sub_24E3477D8();
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24E32EA08();
  v9[0] = sub_24E3477C8();
  v9[1] = MEMORY[0x277D221C0];
  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0, &unk_24E36C100);
  sub_24E3475B8();
  (*(v1 + 8))(v3, v0);

  return (*(v5 + 8))(v7, v4);
}

id OnboardingFriendsSuggestionsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id OnboardingFriendsSuggestionsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24DFCCC28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E25EF48();
  *a1 = result;
  return result;
}

uint64_t sub_24DFCCC80()
{
  OUTLINED_FUNCTION_8_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  v1[1] = sub_24DFB3184;
  OUTLINED_FUNCTION_3_20();

  return sub_24DFC9DBC();
}

uint64_t type metadata accessor for OnboardingFriendsSuggestionsViewController(uint64_t a1)
{
  result = qword_27F1DFC80;
  if (!qword_27F1DFC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24DFCCD74(uint64_t a1)
{
  sub_24DFCCE58(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24DFCCE58(uint64_t a1)
{
  if (!qword_27F1DFC90)
  {
    sub_24E347638();
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1DFC90);
    }
  }
}

uint64_t sub_24DFCCED4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_24DFCCFC8;

  return v5(v2 + 16);
}

uint64_t sub_24DFCCFC8()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_24DFCD0EC()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_24DFCD17C()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_24DFCD20C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24DFCD300;

  return v5(v2 + 32);
}

uint64_t sub_24DFCD300()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v2 = v1;
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_12_5();

  return v8();
}

uint64_t sub_24DFCD3FC()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_24DFCD48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCB8, &qword_24E36C768);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DFCD4FC()
{
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_46()
{
}

{
}

unint64_t sub_24DFCD5F4()
{
  result = qword_27F1DFD10;
  if (!qword_27F1DFD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F1E1C90, &qword_24E36C170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DFD10);
  }

  return result;
}

uint64_t sub_24DFCD6A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24DFCD6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendsSuggestionsOnboardingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DFCD74C(uint64_t a1)
{
  v2 = type metadata accessor for FriendsSuggestionsOnboardingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DFCD7A8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_4(v6);
  *v7 = v8;
  v7[1] = sub_24DFB4D64;
  v9 = OUTLINED_FUNCTION_3_20();

  return sub_24DFCB890(v9, v10, v1, v2, v3, v5, v4);
}

uint64_t sub_24DFCD86C()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_4(v4);
  *v5 = v6;
  v5[1] = sub_24DFB4D64;
  v7 = OUTLINED_FUNCTION_3_20();

  return sub_24DFCC05C(v7, v8, v1, v3, v2);
}

void (*OUTLINED_FUNCTION_1_25@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>))(uint64_t *a1)
{
  v3[21] = v2;
  v3[22] = a2;
  v3[18] = a1;
  return sub_24DFCD58C;
}

id OUTLINED_FUNCTION_2_22()
{

  return sub_24DFCB5F0(sub_24DFCD59C, v0);
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_24E347A78();
}

void OUTLINED_FUNCTION_16_6(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

void OUTLINED_FUNCTION_17_7()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

void OUTLINED_FUNCTION_18_6()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

double OUTLINED_FUNCTION_20_4(uint64_t a1)
{

  swift_unknownObjectWeakInit();
  return result;
}

void OUTLINED_FUNCTION_22_4()
{

  JUMPOUT(0x253040EE0);
}

double OUTLINED_FUNCTION_23_5()
{

  swift_unknownObjectRelease();
  return result;
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return type metadata accessor for GameCenter();
}

uint64_t OUTLINED_FUNCTION_25_3(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t sub_24DFCDB80()
{
  result = swift_allocObject();
  *(result + 16) = 4638;
  return result;
}

uint64_t sub_24DFCDBAC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - v10;
  memcpy(v82, __src, sizeof(v82));
  if (sub_24DF8BF80(v82) == 1 || (v82[12] & 1) != 0)
  {
    return 0;
  }

  v76 = v5;
  v12 = v82[11];
  v13 = v82[13];
  if (v82[1])
  {
    memcpy(v81, __dst, sizeof(v81));
    sub_24DF8BF98(v81, &v78);
  }

  else
  {
    v1 = v82[0];
    v36 = BYTE1(v82[1]);
    memcpy(v81, __dst, sizeof(v81));
    sub_24DF8BF98(v81, &v78);
    if ([v1 achievementsVisibility] == 2 || (v36 & 1) == 0 && objc_msgSend(v1, sel_achievementsVisibility) == 1)
    {
      v37 = &qword_27F1DEEA0;
      v38 = qword_24E369EA0;
      v39 = __src;
LABEL_30:
      sub_24DF8BFF4(v39, v37, v38);
      return 0;
    }
  }

  memset(v81, 0, 40);
  if (v13)
  {
    *&v78 = v13;
    v14 = v13;
    v15 = v13;
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30, &unk_24E36E840);
    sub_24DF88A8C(0, &qword_27F1DFD38, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v1 = v77;
      if ([v77 gkIsNotConnectedToInternetError])
      {
        v69 = v1;
        v16 = sub_24E347CB8();
        v17 = GKGameCenterUIFrameworkBundle();
        v18 = OUTLINED_FUNCTION_5_8(v17);

        v19 = sub_24E347CF8();
        v74 = v20;
        v75 = v19;

        [objc_opt_self() wapiCapability];
        v21 = sub_24E347CB8();
        v22 = GKGameCenterUIFrameworkBundle();
        v23 = OUTLINED_FUNCTION_5_8(v22);

        v24 = sub_24E347CF8();
        v72 = v25;
        v73 = v24;

        v26 = sub_24E347CB8();
        v27 = GKGameCenterUIFrameworkBundle();
        v28 = OUTLINED_FUNCTION_5_8(v27);

        v29 = sub_24E347CF8();
        v70 = v30;
        v71 = v29;

        if (qword_27F1DD628 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for ExternalUrlAction(0);
        v32 = __swift_project_value_buffer(v31, qword_27F20A950);
        *(&v79 + 1) = v31;
        v80 = sub_24DFCED48(&qword_27F1DF0A8, type metadata accessor for ExternalUrlAction, &unk_24E36D6C0);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
        sub_24DFCED90(v32, boxed_opaque_existential_1, type metadata accessor for ExternalUrlAction);

        sub_24DF8BFF4(v81, &qword_27F1DEE90, &unk_24E369E90);
        v81[0] = v78;
        v81[1] = v79;
        *&v81[2] = v80;
        v34 = "_INTERNET_CONNECTION_MESSAGE";
        v35 = 0xD000000000000014;
        goto LABEL_26;
      }
    }
  }

  if (!v12 || (v40 = sub_24E078DC4(v12)) == 0)
  {
LABEL_29:
    sub_24DF8BFF4(__src, &qword_27F1DEEA0, qword_24E369EA0);
    v37 = &qword_27F1DEE90;
    v38 = &unk_24E369E90;
    v39 = v81;
    goto LABEL_30;
  }

  v41 = v40;
  if (!sub_24DFD8654())
  {

    goto LABEL_29;
  }

  sub_24DFFA844();
  if ((v41 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x25303F560](0, v41);
  }

  else
  {
    v42 = *(v41 + 32);
  }

  v43 = v42;

  v44 = [v43 items];

  if (!v44)
  {
    goto LABEL_29;
  }

  v45 = sub_24E347F08();

  v46 = *(v45 + 16);

  if (v46)
  {
    goto LABEL_29;
  }

  v35 = 0xD000000000000013;
  v47 = sub_24E347CB8();
  v48 = GKGameCenterUIFrameworkBundle();
  v49 = OUTLINED_FUNCTION_5_8(v48);

  v50 = sub_24E347CF8();
  v72 = v51;
  v73 = v50;

  v70 = 0;
  v71 = 0;
  v34 = "ErrorProfileSection";
  v74 = 0xE000000000000000;
  v75 = 0;
LABEL_26:
  v52 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:30.0];
  sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
  v53 = v52;
  v54 = sub_24E1A5748(v35, v34 | 0x8000000000000000, v52);
  v69 = v53;

  if (v54)
  {
    v68 = v54;
  }

  else
  {
    v68 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78, &unk_24E369E80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_24E367D20;
  sub_24DFAE87C(v81, &v78, &qword_27F1DEE90, &unk_24E369E90);
  *(v55 + 56) = type metadata accessor for EmptyStateData(0);
  *(v55 + 64) = sub_24DFCED48(&qword_27F1DFD30, type metadata accessor for EmptyStateData, &protocol conformance descriptor for EmptyStateData);
  v57 = __swift_allocate_boxed_opaque_existential_1((v55 + 32));
  *(v57 + 19) = 0u;
  v57[21] = 0;
  *(v57 + 17) = 0u;
  sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  v62 = v68;
  v57[5] = v68;
  v57[6] = 0;
  *(v57 + 56) = 1;
  v63 = v74;
  v57[8] = v75;
  v57[9] = v63;
  v64 = v72;
  v57[10] = v73;
  v57[11] = v64;
  v65 = v70;
  v57[12] = v71;
  v57[13] = v65;
  v57[14] = 0;
  v57[15] = 0;
  *(v57 + 128) = 1;
  v66 = v62;
  sub_24DFAE710(&v78, (v57 + 17), &qword_27F1DEE90, &unk_24E369E90);
  sub_24E343398();
  v67 = v76;
  (*(v76 + 16))(v8, v11, v3);
  sub_24DFCED48(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24E348918();
  (*(v67 + 8))(v11, v3);
  sub_24DF8BFF4(&v78, &qword_27F1DEE90, &unk_24E369E90);
  sub_24DF8BFF4(__src, &qword_27F1DEEA0, qword_24E369EA0);

  sub_24DF8BFF4(v81, &qword_27F1DEE90, &unk_24E369E90);
  return v55;
}

void sub_24DFCE438(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24E347458();
  v5 = OUTLINED_FUNCTION_4_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v107 = v7 - v6;
  v8 = sub_24E347478();
  v9 = OUTLINED_FUNCTION_4_5(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v106 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  v13 = OUTLINED_FUNCTION_4_5(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v96 - v14;
  v16 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v105 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_1();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050, &unk_24E36B8D0);
  v23 = OUTLINED_FUNCTION_4_5(v22);
  MEMORY[0x28223BE20](v23);
  v109 = &v96 - v24;
  v25 = type metadata accessor for HeaderData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_1();
  v29 = v28 - v27;
  v30 = type metadata accessor for TitleHeaderView.Style(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v31);
  v108 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v96 - v34;
  memcpy(__dst, a1, 0x90uLL);
  if (sub_24DF8BF80(__dst) == 1)
  {
    goto LABEL_12;
  }

  if (!__dst[11])
  {
    goto LABEL_12;
  }

  v36 = sub_24E078DC4(__dst[11]);
  if (!v36)
  {
    goto LABEL_12;
  }

  v37 = v36;
  if (!sub_24DFD8654())
  {

LABEL_12:
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v25);
    v88 = type metadata accessor for Shelf.Presentation(0);
    type metadata accessor for FooterData(0);
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
    OUTLINED_FUNCTION_5_17();
    *(v93 + 32) = 1;
    v94 = a2 + v88[12];
    *v94 = 0;
    *(v94 + 8) = 1;
    OUTLINED_FUNCTION_1_26();
    *(a2 + v95) = 1;
    *(a2 + v88[8]) = 1;
    *(a2 + v88[9]) = 1;
    *(a2 + v88[10]) = 0;
    return;
  }

  v102 = v15;
  sub_24DFFA844();
  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x25303F560](0, v37);
  }

  else
  {
    v38 = *(v37 + 32);
  }

  v39 = v38;

  v40 = sub_24E165C68(v39);
  if (!v41)
  {
    goto LABEL_12;
  }

  v103 = v41;
  v104 = v40;
  sub_24E099B2C(v35);
  type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for PlayerCardTheme(0);
  v47 = *(__swift_project_value_buffer(v46, qword_27F20BF00) + *(v46 + 40));
  v48 = v30[8];
  v35[v30[6]] = 0;
  v35[v30[7]] = 0;
  v35[v48] = 0;
  v35[v30[9]] = 0;
  *&v35[v30[11]] = 0;
  *&v35[v30[13]] = v47;
  v35[v30[10]] = 1;
  v35[v30[12]] = 0;
  v100 = type metadata accessor for TitleHeaderView.Style;
  sub_24DFCED90(v35, v108, type metadata accessor for TitleHeaderView.Style);
  memset(v115, 0, 64);
  v115[64] = -1;
  memset(v114, 0, 64);
  v114[64] = -1;
  sub_24E3444F8();
  memset(v112, 0, sizeof(v112));
  v113 = 0;
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v53 = v47;
  sub_24E343398();
  v54 = sub_24E343378();
  v97 = v55;
  v98 = v54;
  (*(v105 + 8))(v21, v16);
  v56 = v29 + v25[7];
  *(v56 + 32) = 0u;
  *(v56 + 48) = 0u;
  *v56 = 0u;
  *(v56 + 16) = 0u;
  *(v56 + 64) = -1;
  v57 = v29 + v25[9];
  *(v57 + 32) = 0u;
  *(v57 + 48) = 0u;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  *(v57 + 64) = -1;
  v58 = (v29 + v25[10]);
  v59 = v29 + v25[11];
  *(v59 + 32) = 0;
  *v59 = 0u;
  *(v59 + 16) = 0u;
  v60 = v25[13];
  v99 = v25[12];
  v61 = v29 + v60;
  *(v61 + 32) = 0;
  *v61 = 0u;
  *(v61 + 16) = 0u;
  v105 = v25[14];
  v101 = sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  v110 = v98;
  v111 = v97;
  sub_24E348918();
  sub_24DFCED90(v108, v29 + v25[5], v100);
  v66 = (v29 + v25[6]);
  v67 = v103;
  *v66 = v104;
  v66[1] = v67;

  sub_24DFAE710(v115, v56, &qword_27F1DEE88, &unk_24E36BF90);
  v68 = (v29 + v25[8]);
  *v68 = 0;
  v68[1] = 0;
  sub_24DFAE710(v114, v57, &qword_27F1DEE88, &unk_24E36BF90);
  *(v29 + v99) = 0;
  *v58 = 0;
  v58[1] = 0;
  sub_24DFAE710(v112, v59, &qword_27F1DEE90, &unk_24E369E90);
  sub_24DFAE87C(v109, v29 + v25[17], &qword_27F1DF050, &unk_24E36B8D0);
  v69 = v29 + v25[16];
  *v69 = 0;
  *(v69 + 8) = 0;
  *(v29 + v25[15]) = xmmword_24E3699A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369E30;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  *(inited + 48) = 0x666C656873;
  *(inited + 56) = 0xE500000000000000;
  v71 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = 0x6973736572706D69;
  v72 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v72;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x636974617473;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v71;
  *(inited + 176) = 1701667182;
  *(inited + 216) = v71;
  v73 = v103;
  v74 = v104;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = v74;
  *(inited + 200) = v73;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v75 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v75);
  v76 = v102;
  sub_24E347488();
  sub_24DF8BFF4(v109, &qword_27F1DF050, &unk_24E36B8D0);
  sub_24DF8BFF4(v112, &qword_27F1DEE90, &unk_24E369E90);
  sub_24DF8BFF4(v114, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24DF8BFF4(v115, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24DFAE7C0(v108, type metadata accessor for TitleHeaderView.Style);
  sub_24DFAE7C0(v35, type metadata accessor for TitleHeaderView.Style);
  __swift_storeEnumTagSinglePayload(v76, 0, 1, v101);
  sub_24DF8BEB4(v76, v29 + v105);
  sub_24DFCED90(v29, a2, type metadata accessor for HeaderData);
  __swift_storeEnumTagSinglePayload(a2, 0, 1, v25);
  v77 = type metadata accessor for Shelf.Presentation(0);
  type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  OUTLINED_FUNCTION_5_17();
  *(v82 + 32) = 1;
  v83 = a2 + v77[12];
  *v83 = 0;
  *(v83 + 8) = 1;
  OUTLINED_FUNCTION_1_26();
  *(a2 + v84) = 1;
  *(a2 + v77[8]) = 1;
  *(a2 + v77[9]) = 1;
  *(a2 + v77[10]) = 0;
  sub_24DFAE7C0(v29, type metadata accessor for HeaderData);
}

uint64_t sub_24DFCED48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24DFCED90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_1_26()
{
  v2 = (v1 + v0[13]);
  v3 = (v1 + v0[14]);
  v4 = (v1 + v0[15]);
  *(v1 + v0[6]) = 0;
  *v2 = 0;
  v2[1] = 0;
  *v3 = 0;
  v3[1] = 0;
  *v4 = 0;
  v4[1] = 0;
}

double OUTLINED_FUNCTION_5_17()
{
  v2 = (v1 + *(v0 + 44));
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

id sub_24DFCEE44(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, id a6, int a7, uint64_t a8, uint64_t a9)
{
  if (a8)
  {
    objc_opt_self();
    v11 = [a1 layoutSize];
    v12 = OUTLINED_FUNCTION_1_27(v11, sel_horizontalGroupWithLayoutSize_subitem_count_);

    v13 = [objc_opt_self() sectionWithGroup_];
    v14 = qword_27F1DDC38;
    v15 = v13;
    if (v14 != -1)
    {
      OUTLINED_FUNCTION_0_35(&qword_27F1DDC38);
    }

    v16 = sub_24E3444F8();
    __swift_project_value_buffer(v16, qword_27F20B4B8);
    sub_24E3444E8();
    [v15 setInterGroupSpacing_];
    if (qword_27F1DDC48 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v16, qword_27F20B4E8);
    sub_24E3444E8();
    v18 = v17;
    if (qword_27F1DDC28 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v16, qword_27F20B488);
    sub_24E3444E8();
    v20 = v19;
    sub_24E3444E8();
    v22 = v21;
    sub_24E3444E8();
    [v15 setContentInsets_];
  }

  else
  {
    v26 = [a6 traitCollection];
    v27 = [v26 horizontalSizeClass];

    if (v27 == 1 || (v28 = [a6 traitCollection], v29 = objc_msgSend(v28, sel_verticalSizeClass), v28, v29 == 1))
    {
      objc_opt_self();
      v30 = [a1 layoutSize];
      v31 = OUTLINED_FUNCTION_1_27(v30, sel_horizontalGroupWithLayoutSize_subitem_count_);

      v32 = [objc_opt_self() sectionWithGroup_];
      v33 = *(a9 + OBJC_IVAR___GameLayerPageGrid_interColumnSpacing);
      v15 = v32;
      [v15 setInterGroupSpacing_];
      [v15 setOrthogonalScrollingBehavior_];
    }

    else
    {
      v34 = objc_opt_self();
      v35 = [objc_opt_self() fractionalWidthDimension_];
      v36 = [a1 layoutSize];
      v37 = [v36 heightDimension];

      v38 = [objc_opt_self() sizeWithWidthDimension:v35 heightDimension:v37];
      v39 = [v34 horizontalGroupWithLayoutSize:v38 subitem:a1 count:*(a9 + OBJC_IVAR___GameLayerPageGrid_columnCount)];

      v40 = objc_opt_self();
      v33 = *(a9 + OBJC_IVAR___GameLayerPageGrid_interColumnSpacing);
      v41 = [v40 fixedSpacing_];
      [v39 setInterItemSpacing_];

      v42 = [objc_opt_self() sectionWithGroup_];
      v15 = v42;
    }

    if (qword_27F1DDC38 != -1)
    {
      OUTLINED_FUNCTION_0_35(&qword_27F1DDC38);
    }

    v43 = sub_24E3444F8();
    __swift_project_value_buffer(v43, qword_27F20B4B8);
    sub_24E3444E8();
    v45 = v44;
    [a4 safeAreaInsets];
    v46 = a9 + OBJC_IVAR___GameLayerPageGrid_centeringInsets;
    v48 = vabdd_f64(v47, *(a9 + OBJC_IVAR___GameLayerPageGrid_centeringInsets + 8));
    sub_24E3444E8();
    v50 = v49;
    [a4 safeAreaInsets];
    [v15 setContentInsets_];
    [v15 setInterGroupSpacing_];
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA190, &qword_24E36C900);
  sub_24E347128();

  if (v74 || v75 != 0xE000000000000000)
  {
    v52 = sub_24E348C08();

    if ((v52 & 1) == 0)
    {
      v53 = objc_opt_self();
      v54 = [v53 estimatedDimension_];
      v55 = [v53 estimatedDimension_];
      v56 = [objc_opt_self() sizeWithWidthDimension:v54 heightDimension:v55];

      ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
      v58 = a8 == 0;
      v59 = a8 != 0;
      v60 = -25.0;
      v61 = -6.0;
      if (a8)
      {
        v61 = -25.0;
      }

      v62 = 2.0;
      if (!a8)
      {
        v62 = 16.0;
        v60 = -10.0;
      }

      if (ShouldUsePadUI)
      {
        v63 = v62;
      }

      else
      {
        v63 = 0.0;
      }

      if (ShouldUsePadUI)
      {
        v64 = v60;
      }

      else
      {
        v64 = v61;
      }

      sub_24DFCF654();
      v65 = sub_24E347CF8();
      v67 = v66;
      v68 = v56;
      v69 = sub_24DFCF5A8(v68, v65, v67, 2, v63, v64);
      [v69 setPinToVisibleBounds_];
      [v69 setExtendsBoundary_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_24E369990;
      *(v70 + 32) = v69;
      v71 = v69;
      v72 = sub_24E347EE8();

      [v15 setBoundarySupplementaryItems_];
    }
  }

  else
  {
  }

  return v15;
}

id sub_24DFCF5A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v10 = sub_24E347CB8();

  v11 = [swift_getObjCClassFromMetadata() boundarySupplementaryItemWithLayoutSize:a1 elementKind:v10 alignment:a4 absoluteOffset:{a5, a6}];

  return v11;
}

unint64_t sub_24DFCF654()
{
  result = qword_27F1DFD40;
  if (!qword_27F1DFD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1DFD40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_35(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_1_27(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_24DFCF6D8(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v30 = [a1 traitCollection];
  v31 = sub_24E3483C8();

  OUTLINED_FUNCTION_5_18();
  if (v31)
  {

    sub_24DFCF7A4(a1, v32, v33, v34, v35, v36, v37, v38, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
  }

  else
  {

    sub_24DFD076C();
  }
}

void sub_24DFCF7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_44();
  a27 = v29;
  a28 = v30;
  v31 = v28;
  v173 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v159 = v41;
  v42 = sub_24E3446A8();
  v43 = OUTLINED_FUNCTION_0_27(v42, &v184);
  v160 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v45);
  v46 = sub_24E344648();
  v47 = OUTLINED_FUNCTION_0_27(v46, &a10);
  v162 = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v49);
  v50 = sub_24E344658();
  v51 = OUTLINED_FUNCTION_0_27(v50, &a9);
  v175 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v53);
  v54 = sub_24E3445E8();
  v55 = OUTLINED_FUNCTION_0_27(v54, &a16);
  v174 = v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v57);
  v58 = sub_24E344688();
  v59 = OUTLINED_FUNCTION_0_27(v58, &a11);
  v176 = v60;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v61);
  v63 = &v150 - v62;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_5_11(&v150 - v65);
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_7_1();
  sub_24DF8F3A8(v28 + 320, &v180, &qword_27F1DEE30, &qword_24E369B60);
  v177 = v40;
  v169 = v36;
  v168 = v38;
  if (!*(&v181 + 1))
  {
    sub_24DF8F34C(&v180, &qword_27F1DEE30, &qword_24E369B60);
    goto LABEL_6;
  }

  v67 = OUTLINED_FUNCTION_26_3();
  sub_24DE56CE8(v67, v68);
  v69 = *v28;
  v70 = *(v28 + 8);
  if (*v28 == 0.0 && v70 == 0.0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v183);
    v36 = v169;
LABEL_6:
    v71 = v36;
    v170 = v40;
    goto LABEL_8;
  }

  v187.origin.x = v40;
  v187.origin.y = v38;
  v72 = v34;
  v73 = v169;
  v187.size.width = v169;
  v187.size.height = v72;
  MinX = CGRectGetMinX(v187);
  v188.origin.x = OUTLINED_FUNCTION_41_0();
  v75 = CGRectGetMidY(v188) + v70 * -0.5;
  OUTLINED_FUNCTION_10_12(&v183, v185);
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_41_0();
  sub_24E348508();
  sub_24E344088();
  OUTLINED_FUNCTION_20_5((v28 + 16));
  OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_32_2();
  v76 = OUTLINED_FUNCTION_53();
  v77(v76);
  v189.origin.x = MinX;
  v189.origin.y = v75;
  v189.size.width = v69;
  v189.size.height = v70;
  v170 = v38 + CGRectGetMaxX(v189);
  v190.origin.x = MinX;
  v40 = v177;
  v190.origin.y = v75;
  v190.size.width = v69;
  v36 = v73;
  v34 = v72;
  v190.size.height = v70;
  v71 = v36 - (v38 + CGRectGetWidth(v190));
  __swift_destroy_boxed_opaque_existential_1(&v183);
LABEL_8:
  sub_24DF8F3A8(v28 + 480, &v180, &qword_27F1DEE30, &qword_24E369B60);
  if (*(&v181 + 1))
  {
    v78 = OUTLINED_FUNCTION_26_3();
    sub_24DE56CE8(v78, v79);
    v157 = v71;
    v191.origin.x = v40;
    v80 = v168;
    v191.origin.y = v168;
    v191.size.width = v36;
    v191.size.height = v34;
    CGRectGetMaxX(v191);
    v192.origin.x = v40;
    v192.origin.y = v80;
    v192.size.width = v36;
    v192.size.height = v34;
    CGRectGetMidY(v192);
    OUTLINED_FUNCTION_10_12(&v183, v185);
    OUTLINED_FUNCTION_30_3();
    sub_24E348508();
    sub_24E344088();
    OUTLINED_FUNCTION_20_5((v28 + 144));
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_32_2();
    v81 = OUTLINED_FUNCTION_53();
    v82(v81);
    __swift_destroy_boxed_opaque_existential_1(&v183);
  }

  else
  {
    sub_24DF8F34C(&v180, &qword_27F1DEE30, &qword_24E369B60);
  }

  sub_24DF8F3A8(v28 + 440, &v180, &qword_27F1DEE30, &qword_24E369B60);
  v152 = v63;
  if (*(&v181 + 1))
  {
    v83 = OUTLINED_FUNCTION_26_3();
    sub_24DE56CE8(v83, v84);
    sub_24DF89628(&v183, &v180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFD48, &qword_24E37B200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFD50, &qword_24E36C908);
    swift_dynamicCast();
    OUTLINED_FUNCTION_25_4();
    if (v85)
    {
      __swift_destroy_boxed_opaque_existential_1(v179);
    }

    else
    {
      OUTLINED_FUNCTION_10_12(&v183, v185);
      OUTLINED_FUNCTION_30_3();
      v88 = sub_24E3440D8(v86, v87);
      v90 = v89;
      OUTLINED_FUNCTION_35_2();
      v91 = CGRectGetMaxX(v193) - v88;
      v194.origin.x = OUTLINED_FUNCTION_7_14();
      v92 = CGRectGetMidY(v194) + v90 * -0.5;
      OUTLINED_FUNCTION_10_12(&v183, v185);
      sub_24E348508();
      sub_24E344088();
      v195.origin.x = v91;
      v195.origin.y = v92;
      v195.size.width = v88;
      v195.size.height = v90;
      CGRectGetWidth(v195);
      OUTLINED_FUNCTION_20_5((v28 + 144));
      OUTLINED_FUNCTION_12_9();
      v93 = OUTLINED_FUNCTION_53();
      v94(v93);
    }

    __swift_destroy_boxed_opaque_existential_1(&v183);
  }

  else
  {
    sub_24DF8F34C(&v180, &qword_27F1DEE30, &qword_24E369B60);
    OUTLINED_FUNCTION_25_4();
  }

  v95 = *(v28 + 384);
  v96 = v31[49];
  __swift_project_boxed_opaque_existential_1(v31 + 45, v31[48]);
  v185 = v95;
  v186 = *(v96 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v183);
  OUTLINED_FUNCTION_22_0();
  (*(v97 + 16))();
  v182 = 0;
  v180 = 0u;
  v181 = 0u;
  v98 = v174;
  v99 = *(v174 + 104);
  v100 = v163;
  v156 = *MEMORY[0x277D227C8];
  v101 = v172;
  v155 = v99;
  v99(v163);
  v102 = v175;
  v103 = *(v175 + 104);
  v104 = v165;
  v154 = *MEMORY[0x277D227F0];
  v105 = v166;
  v153 = v103;
  v103(v165);
  v106 = v164;
  sub_24E344618();
  sub_24E344678();
  v107 = *(v162 + 8);
  *&v177 = v162 + 8;
  v169 = *&v107;
  v107(v106, v167);
  v108 = *(v102 + 8);
  v175 = v102 + 8;
  v168 = *&v108;
  v108(v104, v105);
  v109 = *(v98 + 8);
  v174 = v98 + 8;
  v109(v100, v101);
  sub_24DF8F34C(&v180, &qword_27F1DEE48, qword_24E36BF40);
  __swift_destroy_boxed_opaque_existential_1(&v183);
  sub_24E076A38();
  v111 = v110;
  v112 = *(v110 + 16);
  if (v112 >= *(v110 + 24) >> 1)
  {
    OUTLINED_FUNCTION_8_12();
    v111 = v147;
  }

  *(v111 + 16) = v112 + 1;
  v113 = *(v176 + 32);
  v157 = *(v176 + 72);
  OUTLINED_FUNCTION_29_3();
  *(v114 - 256) = v115;
  v113();
  sub_24DF8F3A8((v31 + 50), &v180, &qword_27F1DF0C0, &unk_24E36B630);
  if (*(&v181 + 1))
  {
    v116 = OUTLINED_FUNCTION_26_3();
    sub_24DE56CE8(v116, v117);
    OUTLINED_FUNCTION_23_6(&v183, v185);
    if (sub_24E344058())
    {
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_22_0();
      (*(v118 + 16))();
      v119 = OUTLINED_FUNCTION_9_11();
      v120(v119);
      OUTLINED_FUNCTION_44_0();
      v151 = v109;
      OUTLINED_FUNCTION_40_0();
      v121();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38, &qword_24E373200);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_24E36A270;
      sub_24E344618();
      sub_24E344628();
      v178 = v122;
      sub_24DF8A8A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40, &unk_24E369B90);
      sub_24DF8A8FC();
      OUTLINED_FUNCTION_49_0();
      sub_24E3487E8();
      sub_24E344678();
      OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_55();
      v123();
      v109 = v151;
      OUTLINED_FUNCTION_51();
      v124();
      v125 = OUTLINED_FUNCTION_43_0();
      (v109)(v125);
      sub_24DF8F34C(v179, &qword_27F1DEE48, qword_24E36BF40);
      __swift_destroy_boxed_opaque_existential_1(&v180);
      v126 = *(v111 + 16);
      if (v126 >= *(v111 + 24) >> 1)
      {
        OUTLINED_FUNCTION_8_12();
        v111 = v148;
      }

      v127 = v171;
      *(v111 + 16) = v126 + 1;
      OUTLINED_FUNCTION_29_3();
      v127();
    }

    __swift_destroy_boxed_opaque_existential_1(&v183);
  }

  else
  {
    sub_24DF8F34C(&v180, &qword_27F1DF0C0, &unk_24E36B630);
  }

  sub_24DF8F3A8((v31 + 55), &v183, &qword_27F1DEE30, &qword_24E369B60);
  if (!v185)
  {
    sub_24DF8F34C(&v183, &qword_27F1DEE30, &qword_24E369B60);
    v180 = 0u;
    v181 = 0u;
    v182 = 0;
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFD48, &qword_24E37B200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFD50, &qword_24E36C908);
  OUTLINED_FUNCTION_26_3();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v182 = 0;
    v180 = 0u;
    v181 = 0u;
    goto LABEL_34;
  }

  if (!*(&v181 + 1))
  {
LABEL_34:
    sub_24DF8F34C(&v180, &qword_27F1DF0C0, &unk_24E36B630);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_50();
  v128 = OUTLINED_FUNCTION_26_3();
  sub_24DE56CE8(v128, v129);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_22_0();
  (*(v130 + 16))();
  v131 = OUTLINED_FUNCTION_9_11();
  v132(v131);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_40_0();
  v133();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38, &qword_24E373200);
  OUTLINED_FUNCTION_15_7();
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_24E36A270;
  sub_24E344618();
  sub_24E344628();
  v178 = v134;
  sub_24DF8A8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40, &unk_24E369B90);
  sub_24DF8A8FC();
  OUTLINED_FUNCTION_49_0();
  sub_24E3487E8();
  sub_24E344678();
  OUTLINED_FUNCTION_55();
  v135();
  OUTLINED_FUNCTION_51();
  v136();
  v137 = OUTLINED_FUNCTION_43_0();
  (v109)(v137);
  sub_24DF8F34C(v179, &qword_27F1DEE48, qword_24E36BF40);
  __swift_destroy_boxed_opaque_existential_1(&v180);
  v138 = *(v111 + 16);
  if (v138 >= *(v111 + 24) >> 1)
  {
    OUTLINED_FUNCTION_48_0();
    v111 = v149;
  }

  *(v111 + 16) = v138 + 1;
  OUTLINED_FUNCTION_29_3();
  v139();
  __swift_destroy_boxed_opaque_existential_1(&v183);
LABEL_35:
  v140 = v31[65];
  if (v140)
  {
    v141 = v140;
    OUTLINED_FUNCTION_35_2();
    CGRectGetMinX(v196);
    OUTLINED_FUNCTION_35_2();
    CGRectGetMinY(v197);
    v142 = v141;
    OUTLINED_FUNCTION_7_14();
    [v142 setFrame_];
  }

  v143 = v158;
  sub_24E344668();
  OUTLINED_FUNCTION_7_14();
  sub_24E348508();
  sub_24E344608();
  v198.origin.x = OUTLINED_FUNCTION_7_14();
  Width = CGRectGetWidth(v198);
  v145 = sub_24E343FF8();
  *v146 = Width;
  v145(&v183, 0);
  (*(v160 + 8))(v143, v161);
  OUTLINED_FUNCTION_45();
}

void sub_24DFD076C()
{
  OUTLINED_FUNCTION_44();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  sub_24DF8F3A8(v0 + 320, v75, &qword_27F1DEE30, &qword_24E369B60);
  v73 = v8;
  v74 = *&v10;
  if (!v76)
  {
    sub_24DF8F34C(v75, &qword_27F1DEE30, &qword_24E369B60);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_64();
  if (*v0 == 0.0 && *(v0 + 8) == 0.0)
  {
    __swift_destroy_boxed_opaque_existential_1(v78);
LABEL_6:
    v71 = v10;
    v18 = v6;
    goto LABEL_8;
  }

  v72 = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v78, v79);
  OUTLINED_FUNCTION_24_3();
  sub_24E3440E8();
  v20 = v19;
  v21 = v6;
  v23 = v22;
  v81.origin.x = OUTLINED_FUNCTION_14_6();
  MinX = CGRectGetMinX(v81);
  v82.origin.x = OUTLINED_FUNCTION_14_6();
  v25 = CGRectGetMidY(v82) + v23 * -0.5;
  OUTLINED_FUNCTION_10_12(v78, v79);
  OUTLINED_FUNCTION_14_6();
  sub_24E348508();
  sub_24E344088();
  v83.origin.x = MinX;
  v83.origin.y = v25;
  v83.size.width = v20;
  v83.size.height = v23;
  CGRectGetMinX(v83);
  v84.origin.x = MinX;
  v84.origin.y = v25;
  v84.size.width = v20;
  v84.size.height = v23;
  v6 = v21;
  CGRectGetMinY(v84);
  OUTLINED_FUNCTION_1_17((v0 + 16));
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_32_2();
  v26(v17, v11);
  v85.origin.x = OUTLINED_FUNCTION_33_1();
  v85.size.height = v72;
  v71 = MinX + CGRectGetMaxX(v85);
  v86.origin.x = OUTLINED_FUNCTION_33_1();
  v86.size.height = v72;
  v18 = v21 - (MinX + CGRectGetWidth(v86));
  __swift_destroy_boxed_opaque_existential_1(v78);
LABEL_8:
  sub_24DF8F3A8(v0 + 480, v75, &qword_27F1DEE30, &qword_24E369B60);
  if (v76)
  {
    OUTLINED_FUNCTION_64();
    v72 = v18;
    v27 = *(v0 + 304);
    OUTLINED_FUNCTION_27_3();
    CGRectGetMaxX(v87);
    OUTLINED_FUNCTION_27_3();
    CGRectGetMidY(v88);
    OUTLINED_FUNCTION_10_12(v78, v79);
    OUTLINED_FUNCTION_27_3();
    sub_24E348508();
    sub_24E344088();
    OUTLINED_FUNCTION_1_17((v0 + 144));
    v28 = OUTLINED_FUNCTION_13_10();
    (*(v13 + 8))(v17, v11);
    v18 = v72 - (v27 + v28);
    __swift_destroy_boxed_opaque_existential_1(v78);
  }

  else
  {
    sub_24DF8F34C(v75, &qword_27F1DEE30, &qword_24E369B60);
  }

  sub_24DF8F3A8(v0 + 440, v75, &qword_27F1DEE30, &qword_24E369B60);
  if (v76)
  {
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_10_12(v78, v79);
    OUTLINED_FUNCTION_53();
    v31 = sub_24E3440D8(v29, v30);
    v33 = v32;
    if (v18 - v31 < v6 * 0.5)
    {
      OUTLINED_FUNCTION_27_3();
      sub_24DFCF7A4(v2, v34, v35, v36, v37, v38, v39, v40, v65, v66, v67, v68, v69, v70, *&v71, *&v72, *&v73, v74, v75[0], v75[1], v75[2], v76, v77, v78[0], v78[1], v78[2], v79, v80);
      __swift_destroy_boxed_opaque_existential_1(v78);
      goto LABEL_34;
    }

    v89.origin.x = v71;
    v89.origin.y = v73;
    v89.size.width = v18;
    v89.size.height = v4;
    CGRectGetMaxX(v89);
    OUTLINED_FUNCTION_27_3();
    CGRectGetMidY(v90);
    OUTLINED_FUNCTION_10_12(v78, v79);
    OUTLINED_FUNCTION_27_3();
    sub_24E348508();
    sub_24E344088();
    v91.origin.x = OUTLINED_FUNCTION_33_1();
    v91.size.height = v33;
    CGRectGetWidth(v91);
    OUTLINED_FUNCTION_1_17((v0 + 144));
    OUTLINED_FUNCTION_13_10();
    (*(v13 + 8))(v17, v11);
    __swift_destroy_boxed_opaque_existential_1(v78);
  }

  else
  {
    sub_24DF8F34C(v75, &qword_27F1DEE30, &qword_24E369B60);
  }

  OUTLINED_FUNCTION_10_12((v0 + 360), *(v0 + 384));
  OUTLINED_FUNCTION_34_2();
  v43 = sub_24E3440D8(v41, v42);
  v45 = v44;
  OUTLINED_FUNCTION_63((v0 + 64));
  OUTLINED_FUNCTION_24_3();
  sub_24E3441B8();
  v47 = v46;
  v48 = *(v0 + 56);
  if (v48 == 1)
  {
    OUTLINED_FUNCTION_5_18();
    v53 = CGRectGetMidX(v92) + v43 * -0.5;
  }

  else
  {
    OUTLINED_FUNCTION_5_18();
    if (v48 == 2)
    {
      v53 = CGRectGetMaxX(*&v49) - v43;
    }

    else
    {
      v53 = CGRectGetMinX(*&v49);
    }
  }

  OUTLINED_FUNCTION_5_18();
  v54 = v47 + CGRectGetMinY(v93);
  OUTLINED_FUNCTION_10_12((v0 + 360), *(v0 + 384));
  sub_24E348508();
  sub_24E344088();
  sub_24DF8F3A8(v0 + 400, v75, &qword_27F1DF0C0, &unk_24E36B630);
  if (v76)
  {
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_23_6(v78, v79);
    if (sub_24E344058())
    {
      OUTLINED_FUNCTION_10_12(v78, v79);
      OUTLINED_FUNCTION_34_2();
      sub_24E3440D8(v55, v56);
      OUTLINED_FUNCTION_63((v0 + 184));
      OUTLINED_FUNCTION_24_3();
      sub_24E3441B8();
      if (v48 == 1)
      {
        OUTLINED_FUNCTION_54();
        CGRectGetMidX(v94);
        v57 = v53;
      }

      else
      {
        v57 = v53;
        OUTLINED_FUNCTION_54();
        if (v48 == 2)
        {
          CGRectGetMaxX(*&v58);
        }

        else
        {
          CGRectGetMinX(*&v58);
        }
      }

      v95.origin.x = v57;
      v95.origin.y = v54;
      v95.size.width = v43;
      v95.size.height = v45;
      CGRectGetMaxY(v95);
      OUTLINED_FUNCTION_10_12(v78, v79);
      sub_24E348508();
      sub_24E344088();
      __swift_destroy_boxed_opaque_existential_1(v78);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v78);
    }
  }

  else
  {
    sub_24DF8F34C(v75, &qword_27F1DF0C0, &unk_24E36B630);
  }

  v62 = *(v0 + 520);
  if (v62)
  {
    v63 = v62;
    OUTLINED_FUNCTION_5_18();
    CGRectGetMinX(v96);
    OUTLINED_FUNCTION_54();
    CGRectGetMinY(v97);
    v64 = v63;
    [v64 setFrame_];
  }

  sub_24E343FD8();
LABEL_34:
  OUTLINED_FUNCTION_45();
}

void sub_24DFD1014(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = sub_24E3483C8();

  v3 = OUTLINED_FUNCTION_34_2();
  if (v2)
  {
    sub_24DFD108C(v3);
  }

  else
  {
    sub_24DFD1DE0(v3, v4);
  }
}

void sub_24DFD108C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24E3446A8();
  v5 = OUTLINED_FUNCTION_0_27(v4, &v149);
  v128 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v7);
  v8 = sub_24E344648();
  v9 = OUTLINED_FUNCTION_0_27(v8, &v152);
  v131 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v11);
  v12 = sub_24E344658();
  v13 = OUTLINED_FUNCTION_0_27(v12, &v150);
  v139 = v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v15);
  v16 = sub_24E3445E8();
  v17 = OUTLINED_FUNCTION_0_27(v16, &v153);
  v19 = v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v20);
  v21 = sub_24E344688();
  v22 = OUTLINED_FUNCTION_0_27(v21, &v151);
  v140 = v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_11(v116 - v26);
  v27 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_1();
  v33 = v32 - v31;
  sub_24DF8F3A8(v1 + 320, &v146, &qword_27F1DEE30, &qword_24E369B60);
  v34 = v147;
  sub_24DF8F34C(&v146, &qword_27F1DEE30, &qword_24E369B60);
  if (v34 && (*v1 != 0.0 || *(v1 + 8) != 0.0))
  {
    v35 = *(v1 + 40);
    v36 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    sub_24E2548A0(v35, v36);
    sub_24E344198();
    v37 = OUTLINED_FUNCTION_58();
    v38(v37);
  }

  sub_24DF8F3A8((v2 + 60), &v146, &qword_27F1DEE30, &qword_24E369B60);
  v39 = v147;
  v40 = OUTLINED_FUNCTION_22_5();
  sub_24DF8F34C(v40, v41, &qword_24E369B60);
  if (v39)
  {
    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_46_0();
    v42 = OUTLINED_FUNCTION_58();
    v43(v42);
  }

  sub_24DF8F3A8((v2 + 55), &v143, &qword_27F1DEE30, &qword_24E369B60);
  v129 = a1;
  if (*(&v144 + 1))
  {
    v44 = OUTLINED_FUNCTION_57();
    sub_24DE56CE8(v44, v45);
    sub_24DF89628(&v146, &v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFD48, &qword_24E37B200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFD50, &qword_24E36C908);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v142);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_10_12(v46, v47);
      if (sub_24E344058())
      {
        v48 = OUTLINED_FUNCTION_22_5();
        OUTLINED_FUNCTION_10_12(v48, v49);
        v50 = OUTLINED_FUNCTION_1_16();
        sub_24E3440D8(v50, v51);
        OUTLINED_FUNCTION_47_0();
        OUTLINED_FUNCTION_46_0();
        (*(v29 + 8))(v33, v27);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v146);
  }

  else
  {
    sub_24DF8F34C(&v143, &qword_27F1DEE30, &qword_24E369B60);
  }

  v52 = v2[48];
  v53 = v2[49];
  OUTLINED_FUNCTION_10_12(v2 + 45, v52);
  v147 = v52;
  v148 = *(v53 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v146);
  OUTLINED_FUNCTION_22_0();
  (*(v54 + 16))();
  v145 = 0;
  v143 = 0u;
  v144 = 0u;
  v55 = *(v19 + 104);
  v56 = v132;
  v57 = *MEMORY[0x277D227D0];
  v58 = v137;
  v122 = v19 + 104;
  v121 = v55;
  v55(v132, v57, v137);
  v59 = v139;
  v60 = *(v139 + 104);
  v61 = v133;
  v120 = *MEMORY[0x277D227F0];
  v62 = v134;
  v119 = v60;
  v60(v133);
  v63 = v135;
  sub_24E344618();
  sub_24E344678();
  v64 = *(v131 + 8);
  v126 = v131 + 8;
  v125 = v64;
  v64(v63, v136);
  v65 = *(v59 + 8);
  v139 = v59 + 8;
  v124 = v65;
  v65(v61, v62);
  v66 = v19 + 8;
  v67 = *(v19 + 8);
  v67(v56, v58);
  sub_24DF8F34C(&v143, &qword_27F1DEE48, qword_24E36BF40);
  __swift_destroy_boxed_opaque_existential_1(&v146);
  sub_24E076A38();
  v69 = v68;
  v70 = *(v68 + 16);
  if (v70 >= *(v68 + 24) >> 1)
  {
    OUTLINED_FUNCTION_8_12();
    v69 = v113;
  }

  *(v69 + 16) = v70 + 1;
  v71 = *(v140 + 32);
  v72 = (*(v140 + 80) + 32) & ~*(v140 + 80);
  v123 = *(v140 + 72);
  OUTLINED_FUNCTION_31_2();
  *(v73 - 256) = v74;
  v71();
  sub_24DF8F3A8((v2 + 50), &v143, &qword_27F1DF0C0, &unk_24E36B630);
  if (*(&v144 + 1))
  {
    v75 = OUTLINED_FUNCTION_57();
    sub_24DE56CE8(v75, v76);
    v77 = OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_23_6(v77, v78);
    if (sub_24E344058())
    {
      v118 = v72;
      v138 = v71;
      v117 = v67;
      v79 = OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_10_12(v79, v80);
      OUTLINED_FUNCTION_61();
      OUTLINED_FUNCTION_22_0();
      (*(v81 + 16))();
      OUTLINED_FUNCTION_39();
      v82 = v132;
      v83 = v137;
      OUTLINED_FUNCTION_52();
      v84();
      v116[1] = v66;
      v85 = OUTLINED_FUNCTION_11_8();
      v86(v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38, &qword_24E373200);
      OUTLINED_FUNCTION_15_7();
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_24E36A270;
      sub_24E344618();
      sub_24E344628();
      v141 = v87;
      sub_24DF8A8A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40, &unk_24E369B90);
      v88 = sub_24DF8A8FC();
      OUTLINED_FUNCTION_17_8(v88);
      sub_24E344678();
      v67 = v117;
      OUTLINED_FUNCTION_37_1();
      v89();
      OUTLINED_FUNCTION_42_0();
      v90();
      v67(v82, v83);
      sub_24DF8F34C(v142, &qword_27F1DEE48, qword_24E36BF40);
      __swift_destroy_boxed_opaque_existential_1(&v143);
      v91 = *(v69 + 16);
      if (v91 >= *(v69 + 24) >> 1)
      {
        OUTLINED_FUNCTION_8_12();
        v69 = v114;
      }

      v71 = v138;
      v72 = v118;
      *(v69 + 16) = v91 + 1;
      OUTLINED_FUNCTION_31_2();
      v71();
    }

    __swift_destroy_boxed_opaque_existential_1(&v146);
  }

  else
  {
    sub_24DF8F34C(&v143, &qword_27F1DF0C0, &unk_24E36B630);
  }

  sub_24DF8F3A8((v2 + 55), &v146, &qword_27F1DEE30, &qword_24E369B60);
  if (!v147)
  {
    sub_24DF8F34C(&v146, &qword_27F1DEE30, &qword_24E369B60);
    v143 = 0u;
    v144 = 0u;
    v145 = 0;
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFD48, &qword_24E37B200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFD50, &qword_24E36C908);
  OUTLINED_FUNCTION_57();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
    goto LABEL_32;
  }

  if (!*(&v144 + 1))
  {
LABEL_32:
    sub_24DF8F34C(&v143, &qword_27F1DF0C0, &unk_24E36B630);
    goto LABEL_33;
  }

  v92 = OUTLINED_FUNCTION_57();
  sub_24DE56CE8(v92, v93);
  v94 = OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_23_6(v94, v95);
  if (sub_24E344058())
  {
    v118 = v72;
    v138 = v71;
    v117 = v67;
    v96 = OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_10_12(v96, v97);
    OUTLINED_FUNCTION_61();
    OUTLINED_FUNCTION_22_0();
    (*(v98 + 16))();
    OUTLINED_FUNCTION_39();
    v99 = v132;
    OUTLINED_FUNCTION_52();
    v100();
    v101 = OUTLINED_FUNCTION_11_8();
    v102(v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38, &qword_24E373200);
    OUTLINED_FUNCTION_15_7();
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_24E36A270;
    sub_24E344618();
    sub_24E344628();
    v141 = v103;
    sub_24DF8A8A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40, &unk_24E369B90);
    v104 = sub_24DF8A8FC();
    OUTLINED_FUNCTION_17_8(v104);
    sub_24E344678();
    OUTLINED_FUNCTION_37_1();
    v105();
    OUTLINED_FUNCTION_42_0();
    v106();
    v117(v99, v137);
    sub_24DF8F34C(v142, &qword_27F1DEE48, qword_24E36BF40);
    __swift_destroy_boxed_opaque_existential_1(&v143);
    v107 = *(v69 + 16);
    if (v107 >= *(v69 + 24) >> 1)
    {
      OUTLINED_FUNCTION_48_0();
      v69 = v115;
    }

    *(v69 + 16) = v107 + 1;
    OUTLINED_FUNCTION_31_2();
    v108();
    __swift_destroy_boxed_opaque_existential_1(&v146);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v146);
  }

LABEL_33:
  v109 = v127;
  sub_24E344668();
  OUTLINED_FUNCTION_36_2();
  v112 = sub_24E3445F8(v110, v111);
  (*(v128 + 8))(v109, v130, v112);
  OUTLINED_FUNCTION_1_16();
}

void sub_24DFD1DE0(uint64_t a1, double a2)
{
  v4 = v2;
  v7 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v13 = v12 - v11;
  sub_24DF8F3A8(v2 + 320, v40, &qword_27F1DEE30, &qword_24E369B60);
  OUTLINED_FUNCTION_46();
  v14 = a2;
  if (v3)
  {
    OUTLINED_FUNCTION_0_16((v2 + 16));
    OUTLINED_FUNCTION_6_17();
    sub_24E344198();
    v16 = v15;
    v17 = OUTLINED_FUNCTION_16_7();
    v18(v17);
    v14 = a2 - (v16 + *v2);
  }

  sub_24DF8F3A8(v2 + 480, v40, &qword_27F1DEE30, &qword_24E369B60);
  OUTLINED_FUNCTION_46();
  if (v3)
  {
    v19 = *(v2 + 304);
    OUTLINED_FUNCTION_0_16((v2 + 144));
    OUTLINED_FUNCTION_6_17();
    sub_24E344198();
    v21 = v20;
    v22 = OUTLINED_FUNCTION_16_7();
    v23(v22);
    v14 = v14 - (v19 + v21);
  }

  sub_24DF8F3A8(v2 + 440, &v38, &qword_27F1DEE30, &qword_24E369B60);
  if (!v39)
  {
    sub_24DF8F34C(&v38, &qword_27F1DEE30, &qword_24E369B60);
    goto LABEL_10;
  }

  sub_24DE56CE8(&v38, v40);
  OUTLINED_FUNCTION_10_12(v40, v41);
  v24 = OUTLINED_FUNCTION_1_16();
  if (v14 - sub_24E3440D8(v24, v25) >= a2 * 0.5)
  {
    OUTLINED_FUNCTION_0_16((v2 + 144));
    OUTLINED_FUNCTION_6_17();
    sub_24E344198();
    v26 = OUTLINED_FUNCTION_16_7();
    v27(v26);
    __swift_destroy_boxed_opaque_existential_1(v40);
LABEL_10:
    OUTLINED_FUNCTION_10_12((v2 + 360), *(v2 + 384));
    OUTLINED_FUNCTION_36_2();
    sub_24E3440D8(v28, v29);
    OUTLINED_FUNCTION_63((v2 + 64));
    OUTLINED_FUNCTION_24_3();
    sub_24E3441B8();
    sub_24DF8F3A8(v2 + 400, &v38, &qword_27F1DF0C0, &unk_24E36B630);
    if (v39)
    {
      sub_24DE56CE8(&v38, v40);
      OUTLINED_FUNCTION_23_6(v40, v41);
      if (sub_24E344058())
      {
        OUTLINED_FUNCTION_10_12(v40, v41);
        OUTLINED_FUNCTION_36_2();
        sub_24E3440D8(v30, v31);
        OUTLINED_FUNCTION_63((v2 + 184));
        OUTLINED_FUNCTION_24_3();
        sub_24E3441B8();
      }

      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      sub_24DF8F34C(&v38, &qword_27F1DF0C0, &unk_24E36B630);
    }

    sub_24DF8F3A8(v2 + 400, v40, &qword_27F1DF0C0, &unk_24E36B630);
    if (v41)
    {
      OUTLINED_FUNCTION_23_6(v40, v41);
      v32 = sub_24E344058();
      __swift_destroy_boxed_opaque_existential_1(v40);
      if (v32)
      {
        v33 = 256;
        v34 = 248;
        v35 = 224;
LABEL_21:
        v36 = *(v4 + v34);
        v37 = *(v4 + v33);
        __swift_project_boxed_opaque_existential_1((v4 + v35), v36);
        sub_24E2548A0(v36, v37);
        OUTLINED_FUNCTION_6_17();
        sub_24E344198();
        (*(v9 + 8))(v13, v7);
        goto LABEL_22;
      }
    }

    else
    {
      sub_24DF8F34C(v40, &qword_27F1DF0C0, &unk_24E36B630);
    }

    v33 = 136;
    v34 = 128;
    v35 = 104;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_1_16();
  sub_24DFD108C(a1);
  __swift_destroy_boxed_opaque_existential_1(v40);
LABEL_22:
  OUTLINED_FUNCTION_1_16();
}

uint64_t sub_24DFD22D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 528))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_24DFD2314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 520) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 528) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 528) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DFD23F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_24DFD2434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_8_12()
{

  sub_24E076A38();
}

uint64_t OUTLINED_FUNCTION_9_11()
{
  *(v0 - 256) = 0;
  *(v0 - 272) = 0u;
  *(v0 - 288) = 0u;
  return *(v0 - 424);
}

double OUTLINED_FUNCTION_12_9()
{

  sub_24E344198();
  return result;
}

double OUTLINED_FUNCTION_13_10()
{

  sub_24E344198();
  return result;
}

uint64_t OUTLINED_FUNCTION_17_8(uint64_t a1)
{

  return sub_24E3487E8();
}

uint64_t OUTLINED_FUNCTION_20_5(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_24E2548A0(v1, v2);
}

double OUTLINED_FUNCTION_39()
{
  *(v0 - 240) = 0;
  result = 0.0;
  *(v0 - 256) = 0u;
  *(v0 - 272) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_45_0()
{
  v1 = *(v0 - 168);
  v2 = *(v0 - 160);
  __swift_project_boxed_opaque_existential_1((v0 - 192), v1);
  *(v0 - 216) = v1;
  *(v0 - 208) = *(v2 + 8);

  return __swift_allocate_boxed_opaque_existential_1((v0 - 240));
}

double OUTLINED_FUNCTION_46_0()
{

  sub_24E344198();
  return result;
}

uint64_t OUTLINED_FUNCTION_47_0()
{
  v1 = v0[21];
  v2 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v1);

  return sub_24E2548A0(v1, v2);
}

void OUTLINED_FUNCTION_48_0()
{

  sub_24E076A38();
}

uint64_t *OUTLINED_FUNCTION_61()
{
  *(v2 - 200) = v0;
  *(v2 - 192) = *(v1 + 8);

  return __swift_allocate_boxed_opaque_existential_1((v2 - 224));
}

uint64_t OUTLINED_FUNCTION_64()
{

  return sub_24DE56CE8((v0 - 224), v0 - 184);
}

id sub_24DFD29F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_24E347CB8();

  v3 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v3;
}

uint64_t sub_24DFD2A5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_24E348878();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_24DFD2A80(uint64_t a1, uint64_t a2)
{
  v2 = sub_24E347CF8();
  v4 = v3;
  v5 = sub_24E347CF8();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_24DFD2AF8(char a1, uint64_t a2)
{
  v2 = 0x6E69616D6F64;
  if (a1)
  {
    OUTLINED_FUNCTION_18_7();
    if (v4 == 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
    v8 = 0x6E69616D6F64;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_18_7();
    v15 = (v14 - 32) | 0x8000000000000000;
    if (v10 == 1)
    {
      v2 = v11;
    }

    else
    {
      v2 = v13;
    }

    if (v10 == 1)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0xE600000000000000;
  }

  if (v8 == v2 && v9 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_2_23(v8, a2, v2);
  }

  return v18 & 1;
}

uint64_t sub_24DFD2BB4()
{
  OUTLINED_FUNCTION_41_1();
  v3 = 1802398060;
  switch(v4)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_28_4();
      break;
    case 2:
      v0 = 0xE500000000000000;
      v3 = 0x666C656873;
      break;
    case 3:
      v3 = OUTLINED_FUNCTION_43_1();
      break;
    case 4:
      v3 = OUTLINED_FUNCTION_9_12() & 0xFFFFFFFFFFFFLL | 0x6143000000000000;
      v0 = 0xEA00000000006472;
      break;
    case 5:
      v0 = 0xE600000000000000;
      v3 = 0x70756B636F6CLL;
      break;
    default:
      break;
  }

  v5 = 0xE400000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_26_4();
      break;
    case 2:
      v5 = 0xE500000000000000;
      v2 = 0x666C656873;
      break;
    case 3:
      OUTLINED_FUNCTION_42_1();
      break;
    case 4:
      OUTLINED_FUNCTION_8_13();
      v2 = v6 & 0xFFFFFFFFFFFFLL | 0x6143000000000000;
      v5 = 0xEA00000000006472;
      break;
    case 5:
      v5 = 0xE600000000000000;
      v2 = 0x70756B636F6CLL;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v3, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_24DFD2CEC()
{
  OUTLINED_FUNCTION_41_1();
  v3 = 1802398060;
  switch(v4)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_43_1();
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_28_4();
      break;
    case 3:
      v3 = OUTLINED_FUNCTION_55_0();
      v0 = 0xEB00000000746E69;
      break;
    case 4:
      v3 = OUTLINED_FUNCTION_57_0();
      break;
    case 5:
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_52_0();
      break;
    default:
      break;
  }

  v5 = 0xE400000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_42_1();
      break;
    case 2:
      OUTLINED_FUNCTION_26_4();
      break;
    case 3:
      OUTLINED_FUNCTION_51_0();
      v5 = 0xEB00000000746E69;
      break;
    case 4:
      OUTLINED_FUNCTION_16_8();
      break;
    case 5:
      OUTLINED_FUNCTION_49_1();
      OUTLINED_FUNCTION_47_1();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_23(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_24DFD2E08()
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_45_1();
  v5 = v4;
  v6 = v3;
  v7 = "achievementsByGameList";
  switch(v5)
  {
    case 1:
      v1 = 0xE700000000000000;
      v6 = 0x656C69666F7270;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_55_0();
      v1 = v9 + 4;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_6_18();
      v1 = 0xEC00000064656546;
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_56();
      v8 = 7630437;
      goto LABEL_13;
    case 5:
      v6 = 0xD000000000000016;
      v1 = 0x800000024E39C840;
      break;
    case 6:
      v6 = OUTLINED_FUNCTION_40_1();
      v1 = 0xEA0000000000676ELL;
      break;
    case 7:
      v1 = 0xE600000000000000;
      v6 = 0x656461637261;
      break;
    case 8:
      v6 = 0x616C7069746C756DLL;
      v8 = 7497081;
      goto LABEL_13;
    case 9:
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_47_1();
      break;
    case 10:
      v6 = OUTLINED_FUNCTION_38_0();
      v8 = 6582881;
LABEL_13:
      v1 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 11:
      v6 = 0x676E656C6C616863;
      v1 = v0 + 1;
      break;
    default:
      break;
  }

  switch(v2)
  {
    case 1:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_3_21();
      break;
    case 2:
      OUTLINED_FUNCTION_51_0();
      v0 = v11 + 4;
      break;
    case 3:
      OUTLINED_FUNCTION_5_19();
      v0 = 0xEC00000064656546;
      break;
    case 4:
      OUTLINED_FUNCTION_50_0();
      v10 = 7630437;
      goto LABEL_26;
    case 5:
      v3 = 0xD000000000000016;
      v0 = (v7 - 32) | 0x8000000000000000;
      break;
    case 6:
      OUTLINED_FUNCTION_58_0();
      v0 = 0xEA0000000000676ELL;
      break;
    case 7:
      v0 = 0xE600000000000000;
      v3 = 0x656461637261;
      break;
    case 8:
      v3 = 0x616C7069746C756DLL;
      v10 = 7497081;
      goto LABEL_26;
    case 9:
      OUTLINED_FUNCTION_49_1();
      OUTLINED_FUNCTION_52_0();
      break;
    case 10:
      OUTLINED_FUNCTION_54_0();
      v10 = 6582881;
LABEL_26:
      v0 = v10 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 11:
      v3 = 0x676E656C6C616863;
      ++v0;
      break;
    default:
      break;
  }

  if (v6 == v3 && v1 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_13_11(v6, v2, v3);
  }

  return v13 & 1;
}

uint64_t sub_24DFD3074()
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_4_17();
  v5 = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      v6 = 0x656C69666F7270;
    }

    else
    {
      v6 = 0x7261506472696874;
    }

    if (v5 == 1)
    {
      v1 = 0xE700000000000000;
    }

    else
    {
      v1 = 0xEA00000000007974;
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_1();
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 0x656C69666F7270;
    }

    else
    {
      v4 = 0x7261506472696874;
    }

    if (v3 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xEA00000000007974;
    }
  }

  if (v6 == v4 && v1 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_11(v6, v3, v4);
  }

  return v8 & 1;
}

uint64_t sub_24DFD315C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 6778480;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6778480;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1734701162;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1667851624;
      break;
    case 3:
      v5 = 7496556;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1734701162;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1667851624;
      break;
    case 3:
      v2 = 7496556;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_24DFD3260(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  v5 = 0x6669636570736E75;
  v6 = 0xEB00000000646569;
  switch(v4)
  {
    case 1:
      v5 = 0x526465646E756F72;
      v6 = 0xEB00000000746365;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = 0x646E756F72;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x746365527674;
      break;
    case 4:
      OUTLINED_FUNCTION_45_1();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x526465646E756F72;
      v2 = 0xEB00000000746365;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x646E756F72;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x746365527674;
      break;
    case 4:
      OUTLINED_FUNCTION_29_4();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_11(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_24DFD33D8(char a1, char a2)
{
  if (qword_24E36CBA8[a1] == qword_24E36CBA8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_24E348C08();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_24DFD3458(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7562345;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7562345;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1701667182;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x64496D616461;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v6 = 0x656C646E7562;
      goto LABEL_7;
    case 4:
      v3 = 0xE800000000000000;
      v6 = 0x726579616C70;
      goto LABEL_7;
    case 5:
      v5 = OUTLINED_FUNCTION_6_18();
      v3 = 0xEA00000000006449;
      break;
    case 6:
      v5 = OUTLINED_FUNCTION_6_18();
      v7 = 1701869908;
      goto LABEL_11;
    case 7:
      v3 = 0xE800000000000000;
      v6 = 0x746567646977;
LABEL_7:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 8:
      v5 = 0x6146746567646977;
      v7 = 2037148013;
LABEL_11:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  v8 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE400000000000000;
      v2 = 1701667182;
      break;
    case 2:
      v8 = 0xE600000000000000;
      v2 = 0x64496D616461;
      break;
    case 3:
      v8 = 0xE800000000000000;
      v9 = 0x656C646E7562;
      goto LABEL_18;
    case 4:
      v8 = 0xE800000000000000;
      v9 = 0x726579616C70;
      goto LABEL_18;
    case 5:
      OUTLINED_FUNCTION_5_19();
      v8 = 0xEA00000000006449;
      break;
    case 6:
      OUTLINED_FUNCTION_5_19();
      v10 = 1701869908;
      goto LABEL_22;
    case 7:
      v8 = 0xE800000000000000;
      v9 = 0x746567646977;
LABEL_18:
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 8:
      v2 = 0x6146746567646977;
      v10 = 2037148013;
LABEL_22:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v12 & 1;
}

uint64_t sub_24DFD364C(uint64_t a1)
{
  OUTLINED_FUNCTION_3_21();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x6E656972466C6C61;
    }

    else
    {
      v5 = 0x6552646E65697266;
    }

    if (v4 == 1)
    {
      v6 = 0xEA00000000007364;
    }

    else
    {
      v6 = 0xEE00737473657571;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = v3;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x6E656972466C6C61;
    }

    else
    {
      v3 = 0x6552646E65697266;
    }

    if (v2 == 1)
    {
      v7 = 0xEA00000000007364;
    }

    else
    {
      v7 = 0xEE00737473657571;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v5 == v3 && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_23(v5, v2, v3);
  }

  return v9 & 1;
}

uint64_t sub_24DFD3750(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEE00646579616C50;
  v3 = 0x796C746E65636572;
  v4 = a1;
  v5 = 0x796C746E65636572;
  v6 = 0xEE00646579616C50;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_25_5();
      v6 = v7 | 0x8000000000000000;
      break;
    case 2:
      v5 = 0x646163724177656ELL;
      v6 = 0xEE0073656D614765;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x756F59726F66;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_48_1();
      break;
    case 2:
      v3 = 0x646163724177656ELL;
      v2 = 0xEE0073656D614765;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x756F59726F66;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_13_11(v5, a2, v3);
  }

  return v9 & 1;
}

uint64_t sub_24DFD3898(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x77654E7374616877;
  }

  else
  {
    v3 = 0x656D6F636C6577;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x77654E7374616877;
  }

  else
  {
    v5 = 0x656D6F636C6577;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_24DFD392C()
{
  v0 = DashboardLaunchContext.rawValue.getter();
  v2 = v1;
  v3 = DashboardLaunchContext.rawValue.getter();
  if (v0 == v3 && v2 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2_23(v0, v4, v3);
  }

  return v6 & 1;
}

uint64_t sub_24DFD39B4(uint64_t a1)
{
  OUTLINED_FUNCTION_3_21();
  v3 = 0xE700000000000000;
  v5 = v4;
  v6 = v2;
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_29_4();
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_38_0();
      v7 = 1935962721;
      goto LABEL_7;
    case 3:
      v6 = OUTLINED_FUNCTION_56();
      v7 = 1937010277;
LABEL_7:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_40_1();
      v3 = 0xEA0000000000676ELL;
      break;
    case 5:
      v6 = 0x6E656972466C6C61;
      v3 = 0xEA00000000007364;
      break;
    case 6:
      v8 = OUTLINED_FUNCTION_9_12();
      v6 = OUTLINED_FUNCTION_37_2(v8);
      goto LABEL_12;
    case 7:
      v6 = OUTLINED_FUNCTION_57_0();
      break;
    case 8:
      v6 = 0x49656C69666F7270;
      v3 = 0x786F626E496ELL;
LABEL_12:
      v3 = v3 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 9:
      v6 = OUTLINED_FUNCTION_44_1();
      break;
    default:
      break;
  }

  v9 = 0xE700000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_45_1();
      break;
    case 2:
      OUTLINED_FUNCTION_54_0();
      v10 = 1935962721;
      goto LABEL_19;
    case 3:
      OUTLINED_FUNCTION_50_0();
      v10 = 1937010277;
LABEL_19:
      v9 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_58_0();
      v9 = 0xEA0000000000676ELL;
      break;
    case 5:
      v2 = 0x6E656972466C6C61;
      v9 = 0xEA00000000007364;
      break;
    case 6:
      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_32_3();
      goto LABEL_24;
    case 7:
      OUTLINED_FUNCTION_16_8();
      break;
    case 8:
      v2 = 0x49656C69666F7270;
      v9 = 0x786F626E496ELL;
LABEL_24:
      v9 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 9:
      OUTLINED_FUNCTION_46_1();
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2_23(v6, v1, v2);
  }

  return v12 & 1;
}

uint64_t sub_24DFD3BC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_24DFD3C4C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x726564616568;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x726564616568;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_39_0(0x4677656Eu);
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_9_12() & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 3:
      v5 = 0x6552686372616573;
      v3 = 0xED000073746C7573;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_33_2();
      break;
    case 2:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_8_13();
      v2 = v7 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 3:
      v2 = 0x6552686372616573;
      v6 = 0xED000073746C7573;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_23(v5, a2, v2);
  }

  return v9 & 1;
}

uint64_t sub_24DFD3D80(char a1, uint64_t a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x6579614C656D6167;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x73676E6974746573;
    }

    else
    {
      v4 = 0x65726F7453707061;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x6579614C656D6167;
    v5 = 0xE900000000000072;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x73676E6974746573;
    }

    else
    {
      v3 = 0x65726F7453707061;
    }

    v2 = 0xE800000000000000;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_11(v4, a2, v3);
  }

  return v7 & 1;
}

uint64_t sub_24DFD3E74(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x6979616C50776F6ELL;
  v4 = a1;
  v5 = 0x6979616C50776F6ELL;
  v6 = 0xEA0000000000676ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x65756E69746E6F63;
      v6 = 0xEF676E6979616C50;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_6_18();
      v6 = 0xEC00000064656546;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_25_5();
      v6 = v7 | 0x8000000000000000;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x72616265646973;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_9_12() & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x65756E69746E6F63;
      v2 = 0xEF676E6979616C50;
      break;
    case 2:
      OUTLINED_FUNCTION_5_19();
      v2 = 0xEC00000064656546;
      break;
    case 3:
      OUTLINED_FUNCTION_48_1();
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x72616265646973;
      break;
    case 5:
      v2 = 0xE700000000000000;
      OUTLINED_FUNCTION_8_13();
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_13_11(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_24DFD4008(uint64_t a1, uint64_t a2)
{
  a1 = a1;
  v2 = 0xE000000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE700000000000000;
      a1 = 0x4E495F4E474953;
      break;
    case 2:
      v2 = 0xE800000000000000;
      a1 = 0x54554F5F4E474953;
      break;
    case 3:
      v2 = 0xE700000000000000;
      a1 = 0x454C49464F5250;
      break;
    case 4:
      a1 = 0x4F52505F54494445;
      v2 = 0xEC000000454C4946;
      break;
    case 5:
      a1 = 0x454952465F4C4C41;
      v2 = 0xEB0000000053444ELL;
      break;
    case 6:
      a1 = 0x525F444E45495246;
      v2 = 0xEF53545345555145;
      break;
    case 7:
      a1 = 0x465F455449564E49;
      v2 = 0xEE0053444E454952;
      break;
    case 8:
      a1 = 0xD000000000000010;
      v2 = 0x800000024E39C680;
      break;
    case 9:
      v2 = 0x800000024E39C6A0;
      a1 = 0xD000000000000013;
      break;
    default:
      break;
  }

  v3 = a2;
  v4 = 0xE000000000000000;
  switch(a2)
  {
    case 1:
      v4 = 0xE700000000000000;
      v3 = 0x4E495F4E474953;
      break;
    case 2:
      v4 = 0xE800000000000000;
      v3 = 0x54554F5F4E474953;
      break;
    case 3:
      v4 = 0xE700000000000000;
      v3 = 0x454C49464F5250;
      break;
    case 4:
      v3 = 0x4F52505F54494445;
      v4 = 0xEC000000454C4946;
      break;
    case 5:
      v3 = 0x454952465F4C4C41;
      v4 = 0xEB0000000053444ELL;
      break;
    case 6:
      v3 = 0x525F444E45495246;
      v4 = 0xEF53545345555145;
      break;
    case 7:
      v3 = 0x465F455449564E49;
      v4 = 0xEE0053444E454952;
      break;
    case 8:
      OUTLINED_FUNCTION_16_8();
      break;
    case 9:
      v4 = 0x800000024E39C6A0;
      v3 = 0xD000000000000013;
      break;
    default:
      break;
  }

  if (a1 == v3 && v2 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2_23(a1, a2, v3);
  }

  return v6 & 1;
}

uint64_t sub_24DFD42AC(uint64_t a1)
{
  OUTLINED_FUNCTION_3_21();
  v3 = 0xE700000000000000;
  v5 = v4;
  v6 = v2;
  switch(v5)
  {
    case 1:
      v6 = 0x666F725074696465;
      v3 = 0xEB00000000656C69;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_39_0(0x466C6C61u);
      break;
    case 3:
      v7 = OUTLINED_FUNCTION_9_12();
      v6 = OUTLINED_FUNCTION_37_2(v7);
      v3 = 0xEE00000000000000;
      break;
    case 4:
      v6 = 0x7246657469766E69;
      v3 = 0xED000073646E6569;
      break;
    case 5:
      v6 = OUTLINED_FUNCTION_25_5();
      v3 = v8 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v9 = 0xE700000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x666F725074696465;
      v9 = 0xEB00000000656C69;
      break;
    case 2:
      OUTLINED_FUNCTION_33_2();
      break;
    case 3:
      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_32_3();
      v9 = 0xEE00000000000000;
      break;
    case 4:
      v2 = 0x7246657469766E69;
      v9 = 0xED000073646E6569;
      break;
    case 5:
      OUTLINED_FUNCTION_16_8();
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23(v6, v1, v2);
  }

  return v11 & 1;
}

uint64_t sub_24DFD4438(uint64_t a1)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_4_17();
  v6 = v5;
  v7 = "appstoreReengagement";
  v8 = "appstoreProductPage";
  v9 = v3;
  v10 = 0xE900000000000064;
  v11 = "achievementsByGame";
  switch(v6)
  {
    case 1:
      v10 = 0x800000024E39CC50;
      v9 = v4 + 1;
      break;
    case 2:
      v10 = 0x800000024E39CC70;
      v9 = v4 + 2;
      break;
    case 3:
      break;
    case 4:
      v10 = 0xE700000000000000;
      v9 = OUTLINED_FUNCTION_44_1();
      break;
    default:
      v10 = 0x800000024E39CC30;
      v9 = 0xD000000000000012;
      break;
  }

  switch(v2)
  {
    case 1:
      v1 = (v8 - 32) | 0x8000000000000000;
      v3 = v4 + 1;
      break;
    case 2:
      v1 = (v7 - 32) | 0x8000000000000000;
      v3 = v4 + 2;
      break;
    case 3:
      break;
    case 4:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_46_1();
      break;
    default:
      v1 = (v11 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000012;
      break;
  }

  if (v9 == v3 && v10 == v1)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_13_11(v9, v2, v3);
  }

  return v13 & 1;
}

uint64_t sub_24DFD4580(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7105633;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6F2D656461637261;
    }

    else
    {
      v4 = 0x616372612D6E6F6ELL;
    }

    if (v3 == 1)
    {
      v5 = 0xEB00000000796C6ELL;
    }

    else
    {
      v5 = 0xEF796C6E6F2D6564;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7105633;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6F2D656461637261;
    }

    else
    {
      v2 = 0x616372612D6E6F6ELL;
    }

    if (a2 == 1)
    {
      v6 = 0xEB00000000796C6ELL;
    }

    else
    {
      v6 = 0xEF796C6E6F2D6564;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_24DFD4694(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x7974697669746361;
  }

  else
  {
    v3 = 0x65756E69746E6F63;
  }

  if (v2)
  {
    v4 = 0xEF676E6979616C50;
  }

  else
  {
    v4 = 0xEC00000064656546;
  }

  if (a2)
  {
    v5 = 0x7974697669746361;
  }

  else
  {
    v5 = 0x65756E69746E6F63;
  }

  if (a2)
  {
    v6 = 0xEC00000064656546;
  }

  else
  {
    v6 = 0xEF676E6979616C50;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_24DFD473C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x73656D6167;
  }

  else
  {
    v3 = 0x726564616568;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x73656D6167;
  }

  else
  {
    v5 = 0x726564616568;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_24DFD47C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

double sub_24DFD481C(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = sub_24E3483C8();

  result = 150.0;
  if (v2)
  {
    return 308.0;
  }

  return result;
}

double sub_24DFD4874()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F1DDFD8 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, &qword_27F20BB88);
  v25 = *(*(v4 - 8) + 16);
  v25(v3, v5, v4);
  v6 = *MEMORY[0x277D22618];
  v7 = v1[13];
  v26 = v1 + 13;
  v7(v3, v6, v0);
  v8 = sub_24E3444F8();
  v40 = v8;
  v41 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v39);
  v37 = v0;
  v38 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  v28 = v1[2];
  v28(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  v10 = v1[1];
  v27 = v1 + 1;
  v10(v3, v0);
  if (qword_27F1DDFE0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, &qword_27F20BBA0);
  v25(v3, v11, v4);
  v7(v3, v6, v0);
  v37 = v8;
  v38 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v36);
  v34 = v0;
  v35 = MEMORY[0x277D22628];
  v12 = __swift_allocate_boxed_opaque_existential_1(&v33);
  v13 = v28;
  v28(v12, v3, v0);
  sub_24E344508();
  v10(v3, v0);
  v14 = v8;
  v24[0] = v8;
  v15 = v7;
  v16 = *MEMORY[0x277D76918];
  *v3 = *MEMORY[0x277D76918];
  v17 = *MEMORY[0x277D22620];
  v15(v3, v17, v0);
  v34 = v14;
  v35 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v33);
  v24[1] = v1 + 2;
  v31 = v0;
  v32 = MEMORY[0x277D22628];
  v18 = __swift_allocate_boxed_opaque_existential_1(&v30);
  v13(v18, v3, v0);
  v19 = v16;
  sub_24E344508();
  v10(v3, v0);
  v20 = *MEMORY[0x277D76940];
  *v3 = *MEMORY[0x277D76940];
  v15(v3, v17, v0);
  v31 = v24[0];
  v32 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v30);
  v29[3] = v0;
  v29[4] = MEMORY[0x277D22628];
  v21 = __swift_allocate_boxed_opaque_existential_1(v29);
  v28(v21, v3, v0);
  v22 = v20;
  sub_24E344508();
  v10(v3, v0);
  xmmword_27F1DFD60 = vdupq_n_s64(0x4054000000000000uLL);
  sub_24DF88BF0(&v39, &unk_27F1DFD70);
  sub_24DF88BF0(&v36, &unk_27F1DFD98);
  xmmword_27F1DFDC0 = xmmword_24E36CAE0;
  unk_27F1DFDD0 = xmmword_24E36CAE0;
  qword_27F1DFDE0 = 0;
  unk_27F1DFDE8 = 0;
  byte_27F1DFDF0 = 1;
  sub_24DF88BF0(&v33, &unk_27F1DFDF8);
  sub_24DF88BF0(&v30, &unk_27F1DFE20);
  unk_27F1DFE48 = xmmword_24E36CAF0;
  result = 16.0;
  unk_27F1DFE58 = xmmword_24E36CB00;
  return result;
}

id SmallPlayerCardView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

char *SmallPlayerCardView.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v152 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_contentView;
  type metadata accessor for ShadowView();
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_contentViewBackground;
  type metadata accessor for BackgroundView();
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButton;
  *(v1 + v7) = [objc_opt_self() buttonWithType_];
  v8 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_avatarView;
  type metadata accessor for GKPlayerGroupView();
  static GKPlayerGroupView.create()();
  *(v1 + v8) = v9;
  v10 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_messagesBadge;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v11 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_titleLabel;
  if (qword_27F1DDFD8 != -1)
  {
    OUTLINED_FUNCTION_2_19();
    swift_once();
  }

  v12 = sub_24E344158();
  v13 = __swift_project_value_buffer(v12, &qword_27F20BB88);
  v14 = *(*(v12 - 8) + 16);
  v14(v4, v13, v12);
  OUTLINED_FUNCTION_1_22();
  v15 = type metadata accessor for DynamicTypeLabel(0);
  v16 = objc_allocWithZone(v15);
  v17 = OUTLINED_FUNCTION_24_4();
  *(v1 + v11) = v17;
  v18 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_subtitleLabel;
  if (qword_27F1DDFE0 != -1)
  {
    OUTLINED_FUNCTION_20_6();
    v17 = swift_once();
  }

  v19 = OUTLINED_FUNCTION_6_13(v17, &qword_27F20BBA0);
  (v14)(v19);
  OUTLINED_FUNCTION_1_22();
  v20 = objc_allocWithZone(v15);
  v21 = OUTLINED_FUNCTION_0_29();
  *(v1 + v18) = v21;
  v22 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_button;
  if (qword_27F1DE010 != -1)
  {
    OUTLINED_FUNCTION_19_5();
    v21 = swift_once();
  }

  v23 = OUTLINED_FUNCTION_6_13(v21, &unk_27F20BC30);
  (v14)(v23);
  OUTLINED_FUNCTION_1_22();
  v24 = objc_allocWithZone(type metadata accessor for RoundedButton(0));
  *(v1 + v22) = sub_24E2C2254(v4);
  v25 = (v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButtonActionBlock);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_buttonActionBlock);
  *v26 = 0;
  v26[1] = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_shouldAnimateOnCloseButtonPress) = 1;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_disabled) = 0;
  v27 = v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_currentImageFetch;
  *(v27 + 32) = 0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_image) = 0;
  v28 = type metadata accessor for SmallPlayerCardView();
  v162 = v1;
  v163 = v28;
  v29 = OUTLINED_FUNCTION_28();
  v32 = objc_msgSendSuper2(v30, v31, v29);
  v33 = OUTLINED_FUNCTION_1_16();
  [v34 v35];
  [v32 setClipsToBounds_];
  v36 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_contentView;
  v37 = *&v32[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_contentView];
  v38 = v32;
  [v38 addSubview_];
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
  }

  v39 = type metadata accessor for PlayerCardTheme(0);
  v155 = __swift_project_value_buffer(v39, qword_27F20BF00);
  v156 = v39;
  v40 = &v155[v39[15]];
  v41 = v40[48];
  v42 = [*&v32[v36] layer];
  v154 = v32;
  *&v152 = v36;
  if (v41)
  {
    v43 = [v38 traitCollection];
    sub_24E344A98();
    v45 = v44;
  }

  else
  {
    v45 = 1.0;
  }

  [v42 setBorderWidth_];

  v46 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_contentViewBackground;
  v47 = *&v38[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_contentViewBackground];
  v48 = *v40;
  v49 = *(v40 + 1);
  v50 = *(v40 + 2);
  v51 = *(v40 + 3);
  v52 = *(v40 + 4);
  v53 = *(v40 + 5);
  v54 = v40[48];
  v157[0] = v48;
  v157[1] = v49;
  v157[2] = v50;
  v158 = v51;
  v159 = v52;
  v160 = v53;
  v161 = v54;
  v55 = v47;
  sub_24DFD7E3C(v48, v49, v50, v51, v52, v53, v54);
  sub_24DFEB8F4(v157);

  [*&v38[v46] _setContinuousCornerRadius_];
  v56 = [*&v38[v46] layer];
  [v56 setMaskedCorners_];

  v57 = v154;
  v58 = v152;
  [*&v154[v152] addSubview_];
  v59 = *&v57[v58];
  sub_24E30A400(0, 12.0);

  v60 = [*&v57[v58] layer];
  if (qword_27F1DDDE0 != -1)
  {
    OUTLINED_FUNCTION_14_7(&qword_27F1DDDE0);
  }

  v61 = [qword_27F20B808 CGColor];
  [v60 setBorderColor_];

  [*&v57[v58] setIsAccessibilityElement_];
  v62 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButton;
  v63 = *&v38[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButton];
  sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
  v64 = v63;
  v65 = sub_24DFD29F8(0x6B72616D78, 0xE500000000000000);
  [v64 setImage:v65 forState:0];

  v66 = *&v38[v62];
  v67 = objc_opt_self();
  v68 = v66;
  v69 = [v67 configurationWithPointSize:6 weight:13.0];
  [v68 setPreferredSymbolConfiguration:v69 forImageInState:0];

  v70 = *&v38[v62];
  v71 = v155;
  v72 = *v155;
  v73 = objc_opt_self();
  v74 = v70;
  v75 = &selRef_secondaryLabelColor;
  if (!v72)
  {
    v75 = &selRef_labelColor;
  }

  v76 = [v73 *v75];
  [v74 setTintColor_];

  v77 = [*&v38[v62] layer];
  if (*&v71[v156[14] + 8])
  {
    v78 = sub_24E347CB8();
  }

  else
  {
    v78 = 0;
  }

  [v77 setCompositingFilter_];

  swift_unknownObjectRelease();
  [*&v38[v62] _setTouchInsets_];
  sub_24DFD8050(0xD00000000000002ELL, 0x800000024E39F360, *&v38[v62]);
  [*&v57[v58] addSubview_];
  v79 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_avatarView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v80 = *&v38[v79];
  if (v80)
  {
    v81 = v80;
    sub_24DFD8050(0xD00000000000002DLL, 0x800000024E39F430, v81);
    [*&v57[v58] addSubview_];
  }

  v153 = v62;
  v158 = &type metadata for GKFeatureFlags;
  v159 = sub_24DFA0CB4();
  LOBYTE(v157[0]) = 15;
  v82 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v157);
  if (v82)
  {
    v83 = [v38 traitCollection];
    [v83 displayScale];
    v85 = v84;

    v86 = sub_24DFE71DC(20.0, 20.0, v85);
    if (v86)
    {
      v87 = v86[2];

      v88 = *&v38[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_messagesBadge];
      v89 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v90 = v88;
      v91 = [v89 initWithCGImage_];
      [v90 setImage_];
    }

    [*&v57[v58] addSubview_];
  }

  v92 = *&v57[v58];
  v93 = v58;
  v94 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_titleLabel;
  [v92 addSubview_];
  v95 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_subtitleLabel;
  [*&v57[v93] addSubview_];
  v96 = *&v57[v93];
  v97 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_button;
  [v96 addSubview_];
  [*&v38[v94] setTextAlignment_];
  v98 = *&v38[v94];
  v99 = objc_opt_self();
  v100 = v98;
  v101 = [v99 labelColor];
  [v100 setTextColor_];

  [*&v38[v94] setIsAccessibilityElement_];
  sub_24DFD8050(0xD00000000000002DLL, 0x800000024E39F390, *&v38[v94]);
  [*&v38[v95] setTextAlignment_];
  v102 = *&v38[v95];
  v154 = v99;
  v103 = [v99 secondaryLabelColor];
  [v102 setTextColor_];

  [*&v38[v95] setIsAccessibilityElement_];
  sub_24DFD8050(0xD000000000000030, 0x800000024E39F3C0, *&v38[v95]);
  v104 = v153;
  [*&v38[v153] addTarget:v38 action:sel_didTapCloseButton forControlEvents:0x2000];
  [*&v38[v97] _setWantsAccessibilityUnderline_];
  v105 = [*&v38[v97] titleLabel];
  if (v105)
  {
    v106 = v105;
    [v105 setLineBreakMode_];
  }

  [*&v38[v97] addTarget:v38 action:sel_didTapButton forControlEvents:0x2000];
  [*&v38[v97] setBackgroundColor_];
  v107 = *&v38[v97];
  v108 = [v154 whiteColor];
  [v107 setTitleColor:v108 forState:0];

  [*&v38[v97] setIsAccessibilityElement_];
  sub_24DFD8050(0xD00000000000002FLL, 0x800000024E39F400, *&v38[v97]);
  v109 = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  [v38 addLayoutGuide_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_24E36BFC0;
  v111 = *&v38[v97];
  *(v110 + 32) = v111;
  v112 = *&v38[v104];
  *(v110 + 40) = v112;
  v113 = v111;
  v114 = v112;
  v156 = v109;
  sub_24DFD7FD0(v110, v109);
  v155 = objc_opt_self();
  [v155 _gkInstallEdgeConstraintsForLayoutGuide_containedWithinParentView_];

  v115 = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  [v38 addLayoutGuide_];
  v116 = swift_allocObject();
  v152 = xmmword_24E369990;
  *(v116 + 16) = xmmword_24E369990;
  v117 = *&v38[v104];
  *(v116 + 32) = v117;
  v118 = v117;
  sub_24DFD7FD0(v116, v115);
  v119 = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  [v38 addLayoutGuide_];
  v120 = swift_allocObject();
  *(v120 + 16) = v152;
  v121 = *&v38[v97];
  *(v120 + 32) = v121;
  v122 = v121;
  sub_24DFD7FD0(v120, v119);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_24E36CB10;
  v124 = [v115 topAnchor];

  v125 = v104;
  v126 = [*&v38[v104] &selRef_updateNavHeaderHeightAndOpacity];
  v127 = [v124 constraintEqualToAnchor_];

  *(v123 + 32) = v127;
  v128 = [v115 bottomAnchor];

  v129 = [*&v38[v125] &selRef_contentView + 5];
  v130 = OUTLINED_FUNCTION_12_10();

  *(v123 + 40) = v130;
  v131 = [v115 leftAnchor];

  v132 = [v38 &selRef_isOn + 2];
  v133 = OUTLINED_FUNCTION_12_10();

  *(v123 + 48) = v133;
  v134 = [v115 rightAnchor];

  v135 = [v38 rightAnchor];
  v136 = OUTLINED_FUNCTION_12_10();

  *(v123 + 56) = v136;
  v137 = [v119 topAnchor];

  v138 = [*&v38[v97] topAnchor];
  v139 = OUTLINED_FUNCTION_12_10();

  *(v123 + 64) = v139;
  v140 = [v119 bottomAnchor];

  v141 = [*&v38[v97] bottomAnchor];
  v142 = OUTLINED_FUNCTION_12_10();

  *(v123 + 72) = v142;
  v143 = [v119 leftAnchor];

  v144 = [v38 leftAnchor];
  v145 = OUTLINED_FUNCTION_12_10();

  *(v123 + 80) = v145;
  v146 = [v119 rightAnchor];

  v147 = [v38 rightAnchor];
  v148 = OUTLINED_FUNCTION_12_10();

  *(v123 + 88) = v148;
  sub_24DF88A8C(0, &qword_27F1E1F10, 0x277CCAAD0);
  v149 = sub_24E347EE8();

  [v155 activateConstraints_];

  v150 = [v154 whiteColor];
  [v38 setTintColor_];

  return v38;
}

void sub_24DFD5EAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_contentView;
  type metadata accessor for ShadowView();
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_contentViewBackground;
  type metadata accessor for BackgroundView();
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButton;
  *(v1 + v7) = [objc_opt_self() buttonWithType_];
  v8 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_avatarView;
  type metadata accessor for GKPlayerGroupView();
  static GKPlayerGroupView.create()();
  *(v1 + v8) = v9;
  v10 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_messagesBadge;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v11 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_titleLabel;
  if (qword_27F1DDFD8 != -1)
  {
    OUTLINED_FUNCTION_2_19();
    swift_once();
  }

  v12 = sub_24E344158();
  v13 = __swift_project_value_buffer(v12, &qword_27F20BB88);
  v14 = *(*(v12 - 8) + 16);
  v14(v4, v13, v12);
  OUTLINED_FUNCTION_1_22();
  v15 = type metadata accessor for DynamicTypeLabel(0);
  v16 = objc_allocWithZone(v15);
  v17 = OUTLINED_FUNCTION_24_4();
  *(v1 + v11) = v17;
  v18 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_subtitleLabel;
  if (qword_27F1DDFE0 != -1)
  {
    OUTLINED_FUNCTION_20_6();
    v17 = swift_once();
  }

  v19 = OUTLINED_FUNCTION_6_13(v17, &qword_27F20BBA0);
  (v14)(v19);
  OUTLINED_FUNCTION_1_22();
  v20 = objc_allocWithZone(v15);
  v21 = OUTLINED_FUNCTION_0_29();
  *(v1 + v18) = v21;
  v22 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_button;
  if (qword_27F1DE010 != -1)
  {
    OUTLINED_FUNCTION_19_5();
    v21 = swift_once();
  }

  v23 = OUTLINED_FUNCTION_6_13(v21, &unk_27F20BC30);
  (v14)(v23);
  OUTLINED_FUNCTION_1_22();
  v24 = objc_allocWithZone(type metadata accessor for RoundedButton(0));
  *(v1 + v22) = sub_24E2C2254(v4);
  v25 = (v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButtonActionBlock);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_buttonActionBlock);
  *v26 = 0;
  v26[1] = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_shouldAnimateOnCloseButtonPress) = 1;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_disabled) = 0;
  v27 = v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_currentImageFetch;
  *(v27 + 32) = 0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_image) = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24DFD621C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24DFD6294(v1);
}

void *sub_24DFD624C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_avatarView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24DFD6294(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_avatarView;
  OUTLINED_FUNCTION_22_6(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24DFD6328@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_24DFD6428();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_24DFD8674;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_24DFD6398(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24DFD865C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24DE56C38(v1, v2);
  return sub_24DFD6434(v4, v3);
}

uint64_t sub_24DFD648C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_24DFD658C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_24DFA0D30;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_24DFD64FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24DFA0D28;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24DE56C38(v1, v2);
  return sub_24DFD65EC(v4, v3);
}

uint64_t sub_24DFD6598(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v3 = *v2;
  sub_24DE56C38(*v2, v2[1]);
  return v3;
}

uint64_t sub_24DFD65F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_24DE73FA0(v7, v8);
}

uint64_t sub_24DFD66A0()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_shouldAnimateOnCloseButtonPress;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24DFD66E0(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_shouldAnimateOnCloseButtonPress;
  result = OUTLINED_FUNCTION_22_6(a1);
  *(v1 + v3) = v2;
  return result;
}

id sub_24DFD676C()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_button];
  v2 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_disabled;
  if (v0[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_disabled] == 1)
  {
    v3 = [*&v0[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_button] backgroundColor];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 colorWithAlphaComponent_];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
    }

    v6 = type metadata accessor for PlayerCardTheme(0);
    v5 = *(__swift_project_value_buffer(v6, qword_27F20BF00) + *(v6 + 64));
  }

  [v1 setBackgroundColor_];

  v7 = (v0[v2] & 1) == 0;

  return [v0 setUserInteractionEnabled_];
}

id sub_24DFD6924()
{
  [v0 bounds];

  return [v0 measurementsWithFitting:v0 in:{v1, v2}];
}

double sub_24DFD6970(void *a1)
{
  v3 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DFD6B9C(v21);
  [v1 bounds];
  [v1 layoutMargins];
  sub_24E187BA8(v8);
  v9 = OUTLINED_FUNCTION_1_16();
  sub_24E3445F8(v9, v10);
  v11 = OUTLINED_FUNCTION_1_16();
  v13 = sub_24E188900(v12, v11);
  (*(v5 + 8))(v8, v3, v13);
  v14 = sub_24DFD481C(a1);
  [v1 layoutMargins];
  v16 = v15;
  v18 = v17;
  sub_24DFD80B4(v21);
  return v14 + v16 + v18;
}

id sub_24DFD6B9C@<X0>(void *a1@<X8>)
{
  if (qword_27F1DD618 != -1)
  {
    OUTLINED_FUNCTION_1_28(&qword_27F1DD618);
  }

  sub_24DFD85F0(&xmmword_27F1DFD60, __src);
  v3 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_avatarView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = MEMORY[0x277D22A58];
  if (v4)
  {
    v6 = type metadata accessor for GKPlayerGroupView();
    v7 = MEMORY[0x277D22A58];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = *(v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_messagesBadge);
  a1[41] = sub_24DF88A8C(0, &qword_27F1DFF00, 0x277D755E8);
  a1[42] = v5;
  a1[38] = v8;
  v9 = *(v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_titleLabel);
  v10 = type metadata accessor for DynamicTypeLabel(0);
  v11 = MEMORY[0x277D22A68];
  a1[46] = v10;
  a1[47] = v11;
  a1[43] = v9;
  v12 = *(v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_subtitleLabel);
  a1[51] = v10;
  a1[52] = v11;
  a1[48] = v12;
  v13 = *(v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButton);
  a1[56] = sub_24DF88A8C(0, &qword_27F1DFF08, off_279666E10);
  a1[57] = v5;
  a1[53] = v13;
  v20 = *(v1 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_button);
  a1[61] = type metadata accessor for RoundedButton(0);
  a1[62] = v5;
  a1[58] = v20;
  memcpy(a1, __src, 0x108uLL);
  a1[33] = v4;
  a1[34] = 0;
  a1[35] = 0;
  a1[36] = v6;
  a1[37] = v7;
  v14 = v4;
  v15 = v8;
  v16 = v9;
  v17 = v12;
  v18 = v13;

  return v20;
}

uint64_t sub_24DFD6D54()
{
  v1 = v0;
  v2 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SmallPlayerCardView();
  v26.receiver = v0;
  v26.super_class = v8;
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  v9 = *&v0[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_contentView];
  [v0 bounds];
  v11 = v10;
  v13 = v12;
  [v0 layoutMargins];
  [v9 setFrame_];
  v18 = *&v0[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_contentViewBackground];
  [v9 bounds];
  [v18 setFrame_];
  sub_24DFD6B9C(v25);
  [v9 bounds];
  sub_24E18781C(v1, v19, v20, v21, v22);
  (*(v4 + 8))(v7, v2);
  sub_24DFD6F4C();
  return sub_24DFD80B4(v25);
}

void sub_24DFD6F4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButton);
  [v1 bounds];
  Width = CGRectGetWidth(v10);
  [v1 bounds];
  v3 = (Width - CGRectGetHeight(v11)) * 0.5;
  [v1 bounds];
  CGRectInset(v12, v3, 0.0);
  objc_opt_self();
  v4 = OUTLINED_FUNCTION_1_16();
  v7 = [v5 v6];
  v8 = [objc_opt_self() effectWithPath_];

  [v1 setFocusEffect_];
}

void sub_24DFD706C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_shouldAnimateOnCloseButtonPress;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v17 = sub_24DFC7724;
    v18 = v3;
    aBlock = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_24E00B24C;
    v16 = &block_descriptor_5;
    v4 = _Block_copy(&aBlock);
    v5 = v0;

    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v17 = sub_24DFD8580;
    v18 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_24DFD47C8;
    v16 = &block_descriptor_21;
    v7 = _Block_copy(&aBlock);
    v8 = v5;

    [v2 animateWithDuration:4 delay:v4 options:v7 animations:0.2 completion:0.0];
    _Block_release(v7);
    _Block_release(v4);
  }

  else
  {
    v9 = &v0[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButtonActionBlock];
    OUTLINED_FUNCTION_8_11();
    swift_beginAccess();
    v10 = *v9;
    if (*v9)
    {
      v11 = *(v9 + 1);

      v10(v12);
      sub_24DE73FA0(v10, v11);
    }
  }
}

uint64_t sub_24DFD7268(uint64_t a1, uint64_t a2)
{
  v2 = a2 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_closeButtonActionBlock;
  result = swift_beginAccess();
  v4 = *v2;
  if (*v2)
  {
    v5 = *(v2 + 8);

    v4(v6);
    return sub_24DE73FA0(v4, v5);
  }

  return result;
}

uint64_t sub_24DFD7324()
{
  v1 = v0 + OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_buttonActionBlock;
  OUTLINED_FUNCTION_8_11();
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 8);

    v3(v5);
    return sub_24DE73FA0(v3, v4);
  }

  return result;
}

void sub_24DFD73DC(void *a1, __n128 a2)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for SmallPlayerCardView();
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, a1);
  v4 = [v2 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (!a1 || v5 != [a1 userInterfaceStyle])
  {
    v6 = [*&v2[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_contentView] layer];
    if (qword_27F1DDDE0 != -1)
    {
      OUTLINED_FUNCTION_14_7(&qword_27F1DDDE0);
    }

    v7 = [qword_27F20B808 CGColor];
    [v6 setBorderColor_];
  }
}

void static SmallPlayerCardView.size(fitting:component:layoutEnvironment:)()
{
  swift_getObjectType();
  v0 = sub_24DFC1764();
  v1 = sub_24DFD481C(v0);
  if (qword_27F1DD618 != -1)
  {
    OUTLINED_FUNCTION_1_28(&qword_27F1DD618);
  }

  sub_24E188900(&xmmword_27F1DFD60, v1);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_16();
}

double static SmallPlayerCardView.size(fitting:traitEnvironment:)(void *a1)
{
  v1 = sub_24DFD481C(a1);
  if (qword_27F1DD618 != -1)
  {
    OUTLINED_FUNCTION_1_28(&qword_27F1DD618);
  }

  return sub_24E188900(&xmmword_27F1DFD60, v1);
}

id sub_24DFD7674(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_titleLabel];
  v5 = sub_24E347CB8();
  [v4 setText_];

  v6 = *&v2[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_subtitleLabel];
  if (*(a1 + 64))
  {
    v7 = sub_24E347CB8();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];

  v8 = *&v2[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_button];
  v9 = sub_24E347CB8();
  [v8 setTitle:v9 forState:0];

  v2[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_disabled] = (*(a1 + 200) & 1) == 0;
  sub_24DFD676C();
  [*&v2[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_messagesBadge] setHidden_];
  v10 = type metadata accessor for SmallPlayerCardData(0);
  v11 = *(v10 + 68);
  v12 = *(a1 + v11);
  if (!v12 || sub_24DFD2A5C(*(a1 + v11)) < 1)
  {
    v19 = *(a1 + 96);
    if (v19 == 255)
    {
      return [v2 setNeedsLayout];
    }

    v20 = *(a1 + 88);
    v21 = objc_allocWithZone(MEMORY[0x277D0C170]);
    v22 = v20;
    if (v19)
    {
      v23 = [v21 initWithContact_];
      if (!v23)
      {
        sub_24DFD8108(v20, v19);
        return [v2 setNeedsLayout];
      }

      v24 = v23;
      v25 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_avatarView;
      OUTLINED_FUNCTION_8_11();
      swift_beginAccess();
      v26 = *&v2[v25];
      if (v26)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v24 = [v21 initWithInternalRepresentation_];
      v27 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_avatarView;
      OUTLINED_FUNCTION_8_11();
      swift_beginAccess();
      v26 = *&v2[v27];
      if (v26)
      {
LABEL_14:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24E369990;
        *(inited + 32) = v24;
        v29 = (a1 + *(v10 + 64));
        v30 = *v29;
        v31 = v29[1];
        v32 = v26;
        v33 = v24;
        GKPlayerGroupView.configure(players:messagesGroupIdentifier:playerSelectionProxy:)(inited, v30, v31, 0);

        sub_24DFD8108(v20, v19);
        swift_setDeallocating();
        sub_24DFD7EB0();
        return [v2 setNeedsLayout];
      }
    }

    sub_24DFD8108(v20, v19);

    return [v2 setNeedsLayout];
  }

  v13 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_avatarView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v14 = *&v2[v13];
  if (v14)
  {
    v15 = (a1 + *(v10 + 64));
    v16 = *v15;
    v17 = v15[1];
    v18 = v14;
    GKPlayerGroupView.configure(players:messagesGroupIdentifier:playerSelectionProxy:)(v12, v16, v17, 0);
  }

  return [v2 setNeedsLayout];
}

id sub_24DFD7988()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_titleLabel] setText_];
  [*&v0[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_subtitleLabel] setText_];
  OUTLINED_FUNCTION_8_11();
  [v2 v3];
  v4 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_avatarView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    v6 = v5;
    sub_24E0D24D8();
  }

  [*&v1[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_messagesBadge] setHidden_];
  v1[OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_disabled] = 0;
  sub_24DFD676C();
  return [v1 setAlpha_];
}

void sub_24DFD7B68(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24DFD7BE0(v1);
}

void *sub_24DFD7B98()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_image;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24DFD7BE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI19SmallPlayerCardView_image;
  OUTLINED_FUNCTION_22_6(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SmallPlayerCardView.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SmallPlayerCardView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

JUMeasurements __swiftcall SmallPlayerCardView.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  [v2 sizeThatFits_];
  v5 = 0.0;
  v6 = v4;
  result.var3 = v5;
  result.var2 = v6;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

id sub_24DFD7E3C(id result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 2)
  {
  }

  else
  {
    if (a7 == 1)
    {
      v8 = result;
      result = a2;
    }

    else
    {
      if (a7)
      {
        return result;
      }
    }

    return result;
  }
}

uint64_t sub_24DFD7EB0()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_11_5();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24DFD7F18(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_11_5();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_24DFD7F60()
{
  type metadata accessor for ActivityFeedRelationshipAchievement(0);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_11_5();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_24DFD7FD0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFF70, &qword_24E38CB50);
  v3 = sub_24E347EE8();

  [a2 setPreferredFocusEnvironments_];
}

void sub_24DFD8050(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E347CB8();

  [a3 setAccessibilityIdentifier_];
}

void sub_24DFD8108(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24DFD8588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF680, &qword_24E36C160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_28(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_23(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_24E348C08();
}

id OUTLINED_FUNCTION_12_10()
{

  return [v1 (v0 + 3941)];
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_24E348C08();
}

uint64_t OUTLINED_FUNCTION_14_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_6(uint64_t a1, ...)
{

  return swift_beginAccess();
}

char *OUTLINED_FUNCTION_24_4()
{

  return sub_24E0AEF24(v0, 0, 2, 0, 1, 0);
}

void sub_24DFD8A60()
{
  v0 = sub_24E347458();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v30 - v11;
  sub_24E3471F8();
  sub_24E347428();
  v14 = v13;
  v15 = *(v1 + 8);
  v15(v12, v0);
  if (v14)
  {

    sub_24E3471F8();
    sub_24E347428();
    v17 = v16;
    v15(v9, v0);
    if (v17)
    {

      sub_24E3471F8();
      sub_24E347428();
      v19 = v18;
      v15(v6, v0);
      if (v19)
      {
        v20 = sub_24E347CB8();
      }

      else
      {
        v20 = 0;
      }

      sub_24E3471F8();
      sub_24E347428();
      v22 = v21;
      v15(v3, v0);
      if (v22)
      {
        v23 = sub_24E347CB8();
      }

      else
      {
        v23 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFF80, &qword_24E37B8A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24E367D20;
      v30[1] = sub_24E347CF8();
      v30[2] = v25;
      v26 = MEMORY[0x277D837D0];
      sub_24E348918();
      if (qword_27F1DD788 != -1)
      {
        swift_once();
      }

      if (byte_27F1E20F0)
      {
        v27 = 0xE900000000000072;
        v28 = 0x6579614C656D6167;
      }

      else
      {
        if (qword_27F1DD790 != -1)
        {
          swift_once();
        }

        v28 = 0x73676E6974746573;
        if (!byte_27F1E20F1)
        {
          v28 = 0x65726F7453707061;
        }

        v27 = 0xE800000000000000;
      }

      *(inited + 96) = v26;
      *(inited + 72) = v28;
      *(inited + 80) = v27;
      v29 = sub_24E347C28();
      sub_24DFD8E4C(v20, v23, v29, v30[0]);
    }
  }
}

void sub_24DFD8E4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E347BE8();

  [a4 reportEvent:a1 type:a2 payload:v7];
}

int64x2_t sub_24DFD8EE8@<Q0>(int64x2_t *a1@<X8>)
{
  v2 = sub_24E343FC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SystemImage();
  v6 = [objc_opt_self() configurationWithTextStyle_];
  v28 = sub_24E18EFCC(0x2E6E6F7276656863, 0xEF64726177726F66, v6);

  v7 = MEMORY[0x277D225F8];
  a1[2].i64[1] = MEMORY[0x277D85048];
  a1[3].i64[0] = v7;
  a1[1].i64[0] = 0x4028000000000000;
  if (qword_27F1DDF90 != -1)
  {
    swift_once();
  }

  v8 = sub_24E344158();
  v26 = __swift_project_value_buffer(v8, &unk_27F20BAB0);
  v9 = *(v8 - 8);
  v25 = *(v9 + 16);
  v27 = v9 + 16;
  v25(v5, v26, v8);
  v24 = *MEMORY[0x277D22618];
  v23 = v3[13];
  v23(v5);
  v10 = sub_24E3444F8();
  v11 = MEMORY[0x277D22798];
  a1[5].i64[0] = v10;
  a1[5].i64[1] = v11;
  __swift_allocate_boxed_opaque_existential_1(&a1[3].i64[1]);
  v30 = v2;
  v31 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v13 = v3[2];
  v13(boxed_opaque_existential_1, v5, v2);
  sub_24E344508();
  v14 = v3[1];
  v14(v5, v2);
  v25(v5, v26, v8);
  (v23)(v5, v24, v2);
  a1[7].i64[1] = v10;
  a1[8].i64[0] = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(a1[6].i64);
  v30 = v2;
  v31 = MEMORY[0x277D22628];
  v15 = __swift_allocate_boxed_opaque_existential_1(v29);
  v13(v15, v5, v2);
  sub_24E344508();
  v14(v5, v2);
  a1[10].i64[0] = MEMORY[0x277D85048];
  a1[10].i64[1] = MEMORY[0x277D225F8];
  a1[8].i64[1] = 0x4034000000000000;
  v16 = v28;
  [v28 size];
  v18 = v17;
  v20 = v19;

  result = vdupq_n_s64(0x4044000000000000uLL);
  *a1 = result;
  a1[11].i64[0] = v18;
  a1[11].i64[1] = v20;
  return result;
}

char *sub_24DFD9268(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
  v13 = sub_24E1A5748(0xD00000000000002FLL, 0x800000024E39F6E0, 0);
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() preferredFontForTextStyle_];
    v16 = [objc_opt_self() configurationWithFont_];

    v17 = [v14 imageWithConfiguration_];
  }

  else
  {
    v17 = 0;
  }

  v18 = OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_achievementGlyph;
  v19 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  *&v5[v18] = v19;
  v20 = OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_titleLabel;
  if (qword_27F1DDF90 != -1)
  {
    OUTLINED_FUNCTION_0_36();
    swift_once();
  }

  v21 = sub_24E344158();
  v22 = __swift_project_value_buffer(v21, &unk_27F20BAB0);
  (*(*(v21 - 8) + 16))(v12, v22, v21);
  v23 = objc_allocWithZone(OUTLINED_FUNCTION_2_24());
  *&v5[v20] = OUTLINED_FUNCTION_0_29();
  v24 = OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_chevronGlyph;
  v40 = 1;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v45 = 7;
  v25 = sub_24E073800();
  sub_24DF9D524(&v40);
  *&v5[v24] = v25;
  v26 = type metadata accessor for AchievementsLinkView();
  v39.receiver = v5;
  v39.super_class = v26;
  v27 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v28 = *MEMORY[0x277D768C8];
  v29 = *(MEMORY[0x277D768C8] + 8);
  v30 = *(MEMORY[0x277D768C8] + 16);
  v31 = *(MEMORY[0x277D768C8] + 24);
  v32 = v27;
  [v32 setLayoutMargins_];
  v33 = OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_achievementGlyph;
  [*&v32[OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_achievementGlyph] setContentMode_];
  v34 = qword_27F1DE118;
  v35 = *&v32[v33];
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for PlayerCardTheme(0);
  [v35 setTintColor_];

  [v32 addSubview_];
  [v32 addSubview_];
  [v32 addSubview_];

  return v32;
}

void sub_24DFD962C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
  v5 = sub_24E1A5748(0xD00000000000002FLL, 0x800000024E39F6E0, 0);
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() preferredFontForTextStyle_];
    v8 = [objc_opt_self() configurationWithFont_];

    v9 = [v6 imageWithConfiguration_];
  }

  else
  {
    v9 = 0;
  }

  v10 = OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_achievementGlyph;
  v11 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  *(v1 + v10) = v11;
  v12 = OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_titleLabel;
  if (qword_27F1DDF90 != -1)
  {
    OUTLINED_FUNCTION_0_36();
    swift_once();
  }

  v13 = sub_24E344158();
  v14 = __swift_project_value_buffer(v13, &unk_27F20BAB0);
  (*(*(v13 - 8) + 16))(v4, v14, v13);
  v15 = objc_allocWithZone(OUTLINED_FUNCTION_2_24());
  *(v1 + v12) = OUTLINED_FUNCTION_0_29();
  v16 = OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_chevronGlyph;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v24 = 7;
  v17 = sub_24E073800();
  sub_24DF9D524(&v19);
  *(v1 + v16) = v17;
  sub_24E348AE8();
  __break(1u);
}

double sub_24DFD9930(uint64_t a1, double a2, double a3)
{
  [v3 layoutMargins];
  v9 = a2 - v7 - v8;
  v12 = a3 - v10 - v11;
  sub_24DFD9C30(v17);
  v13 = sub_24E0AB310(a1, v9, v12);
  sub_24DFDA120(v17);
  [v3 layoutMargins];
  return v13 + v14 + v15;
}

uint64_t sub_24DFD9A8C()
{
  v1 = sub_24E344048();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AchievementsLinkView();
  v17.receiver = v0;
  v17.super_class = v5;
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  sub_24DFD9C30(v16);
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  [v0 layoutMargins];
  sub_24E0AB504(v0, v13, v12, v7 - v13 - v10, v9 - v12 - v11);
  sub_24DFDA120(v16);
  return (*(v2 + 8))(v4, v1);
}

id sub_24DFD9C30@<X0>(int64x2_t *a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  sub_24DFD8EE8(a1);
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_achievementGlyph);
  v5 = sub_24DF88A8C(0, &qword_27F1DFF00, 0x277D755E8);
  v6 = MEMORY[0x277D22A58];
  a1[13].i64[1] = v5;
  a1[14].i64[0] = v6;
  a1[12].i64[0] = v4;
  v7 = *(v2 + OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_titleLabel);
  v8 = type metadata accessor for DynamicTypeLabel(0);
  v9 = MEMORY[0x277D22A68];
  a1[16].i64[0] = v8;
  a1[16].i64[1] = v9;
  a1[14].i64[1] = v7;
  v13 = *(v2 + OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_chevronGlyph);
  a1[18].i64[1] = sub_24DF88A8C(0, &qword_27F1E1D30, 0x277D75D18);
  a1[19].i64[0] = v6;
  a1[17].i64[0] = v13;
  v10 = v4;
  v11 = v7;

  return v13;
}

id sub_24DFD9D28(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_titleLabel];
  v3 = sub_24E347CB8();
  [v2 setText_];

  return [v1 setNeedsLayout];
}

double sub_24DFD9D9C(double a1, double a2)
{
  sub_24DFD8EE8(v6);
  swift_getObjectType();
  v3 = sub_24DFC1764();
  v4 = sub_24E0AB884(v6, v3, a1);
  swift_unknownObjectRelease();
  sub_24DFDA0CC(v6);
  return v4;
}

id sub_24DFD9E24()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_titleLabel];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFFA8, &qword_24E387320);
  sub_24E347128();

  sub_24DFA0B40(v3, v4, v1);
  return [v0 setNeedsLayout];
}

void *sub_24DFD9F0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20AchievementsLinkView_titleLabel);
  v2 = v1;
  return v1;
}

id sub_24DFD9F3C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AchievementsLinkView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24DFDA080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2_24()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);

  return type metadata accessor for DynamicTypeLabel(0);
}

id sub_24DFDA1C0(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t sub_24DFDA2B8(void *a1)
{
  v1 = a1;
  v2 = sub_24DFDA2EC();

  return v2 & 1;
}

id sub_24DFDA2EC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_isHighlighted);
}

void sub_24DFDA324(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_24DFDA378(v3);
}

void sub_24DFDA378(char a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setHighlighted_, a1 & 1);
  sub_24DFDA3C4();
}

void sub_24DFDA3C4()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 contentView];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  if (objc_msgSendSuper2(&v4, sel_isHighlighted))
  {
    v3 = [objc_opt_self() quaternaryLabelColor];
  }

  else
  {
    v3 = 0;
  }

  [v2 setBackgroundColor_];
}

void *sub_24DFDA478(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = sub_24E344D18();
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  sub_24E344D48();
  OUTLINED_FUNCTION_0_14();
  v34 = v18;
  v35 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v21 = v20 - v19;
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
  }

  v22 = type metadata accessor for PlayerCardTheme(0);
  __swift_project_value_buffer(v22, qword_27F20BF00);
  v23 = [a3 traitCollection];
  v33 = a3;
  v24 = v23;
  sub_24E336424(v16);

  sub_24E344D28();
  v32 = *(v7 + 16);
  v32(v12, a1, v5);
  v31 = a1;
  v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v26 = swift_allocObject();
  v27 = *(v7 + 32);
  v27(v26 + v25, v12, v5);
  sub_24E344D38();
  v32(v12, v31, v5);
  v28 = swift_allocObject();
  v27(v28 + v25, v12, v5);
  *(v28 + ((v25 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;

  sub_24E344D08();
  sub_24DF88A8C(0, &qword_27F1DFFD8, 0x277CFB868);
  v29 = sub_24E3484C8();
  [v29 setContentInsetsReference_];
  (*(v34 + 8))(v21, v35);
  return v29;
}

uint64_t sub_24DFDA7AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_24E344BD8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24E344BE8();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = sub_24E3434A8();
  v10 = MEMORY[0x277D74C98];
  if (!v9)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D74C98], v4);
    sub_24E344BB8();
  }

  v11 = sub_24E3434A8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  v12 = *(v14[1] + 16);

  if (v11 == v12 - 1)
  {
    (*(v5 + 104))(v7, *v10, v4);
    return sub_24E344BC8();
  }

  return result;
}

id sub_24DFDA980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFFE0, &unk_24E373EF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for SmallFriendLockupData(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  v10 = v40;
  v11 = sub_24E3434C8();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v11 >= *(v10 + 16))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    sub_24E347F48();
    goto LABEL_6;
  }

  sub_24DF89628(v10 + 40 * v11 + 32, v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    sub_24DFA9298(v6, &qword_27F1DFFE0, &unk_24E373EF0);
    return [objc_allocWithZone(MEMORY[0x277D75AD8]) init];
  }

  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_24DFDBC54(v6, v9, v12);
  v42 = MEMORY[0x277D84F90];
  sub_24DF88A8C(0, &qword_27F1DFFE8, 0x277D753C0);
  v13 = sub_24E347CB8();
  v14 = GKGameCenterUIFrameworkBundle();
  v15 = GKGetLocalizedStringFromTableInBundle();

  v16 = sub_24E347CF8();
  v18 = v17;

  v6 = sub_24DFDAFBC(1, v16, v18, sub_24DFDAF90, 0);
  sub_24DF9DEAC((v9 + 144), &v40, &qword_27F1DEE90, &unk_24E369E90);
  if (!v41)
  {
    sub_24DFA9298(&v40, &qword_27F1DEE90, &unk_24E369E90);
    v26 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  sub_24DE56CE8(&v40, v43);
  v19 = sub_24E347CB8();
  v20 = GKGameCenterUIFrameworkBundle();
  v21 = GKGetLocalizedStringFromTableInBundle();

  v22 = sub_24E347CF8();
  v24 = v23;

  sub_24DF89628(v43, &v40);
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  sub_24DE56CE8(&v40, v25 + 24);

  sub_24DFDAFBC(1, v22, v24, sub_24DFDBD54, v25);
  MEMORY[0x25303EA30]();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_18;
  }

LABEL_6:
  sub_24E347F88();
  v26 = v42;
  __swift_destroy_boxed_opaque_existential_1(v43);
LABEL_9:
  sub_24DF9DEAC((v9 + 104), &v40, &qword_27F1DEE90, &unk_24E369E90);
  if (v41)
  {
    sub_24DE56CE8(&v40, v43);
    v28 = sub_24E347CB8();
    v29 = GKGameCenterUIFrameworkBundle();
    v30 = GKGetLocalizedStringFromTableInBundle();

    v31 = sub_24E347CF8();
    v33 = v32;

    sub_24DF89628(v43, &v40);
    v34 = swift_allocObject();
    *(v34 + 16) = a3;
    sub_24DE56CE8(&v40, v34 + 24);

    v35 = sub_24DFDAFBC(0, v31, v33, sub_24DFDBDA4, v34);
    MEMORY[0x25303EA30]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24E347F48();
    }

    sub_24E347F88();
    v26 = v42;
    v36 = [objc_opt_self() systemOrangeColor];
    [v35 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_24DFA9298(&v40, &qword_27F1DEE90, &unk_24E369E90);
  }

  sub_24DF88A8C(0, &qword_27F1DFFF0, 0x277D75AD8);
  v27 = sub_24DFDB390(v26);

  sub_24DFDBCB8(v9, v37);
  return v27;
}

id sub_24DFDAFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = sub_24E347CB8();
  }

  else
  {
    v8 = 0;
  }

  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24DFDB0C0;
  v12[3] = &block_descriptor_6;
  v9 = _Block_copy(v12);
  v10 = [swift_getObjCClassFromMetadata() contextualActionWithStyle:a1 title:v8 handler:v9];

  _Block_release(v9);

  return v10;
}

void sub_24DFDB0C0(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_24DFDBD8C, v8);
}

uint64_t sub_24DFDB194(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_24DFA9298(v15, &unk_27F1EAC90, &unk_24E36E890);
  }

  else
  {
    (*(v9 + 104))(v12, *MEMORY[0x277D21E18], v7);
    sub_24E3473B8();

    (*(v9 + 8))(v12, v7);
    (*(*(v16 - 8) + 8))(v15, v16);
  }

  return a3(1);
}

id sub_24DFDB390(uint64_t a1)
{
  sub_24DF88A8C(0, &qword_27F1DFFE8, 0x277D753C0);
  v1 = sub_24E347EE8();

  v2 = [swift_getObjCClassFromMetadata() configurationWithActions_];

  return v2;
}

double sub_24DFDB414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_24DF9DEAC(a2, &v10 - v7, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF9DEAC(a3, &v8[*(v5 + 56)], &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DFA9298(v8, &unk_27F1E1CA0, &unk_24E36C0D0);
  return 0.0;
}

double sub_24DFDB4F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  sub_24DF9DEAC(a2, &v23 - v16, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF9DEAC(a3, &v17[*(v14 + 56)], &unk_27F1E1CB0, &unk_24E36D160);
  if (qword_27F1DDC48 != -1)
  {
    swift_once();
  }

  v18 = sub_24E3444F8();
  __swift_project_value_buffer(v18, qword_27F20B4E8);
  v19 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v21 = v20;

  (*(v9 + 8))(v13, v7);
  sub_24DFA9298(v17, &unk_27F1E1CA0, &unk_24E36C0D0);
  return v21;
}

double sub_24DFDB6F0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_24DF9DEAC(a1, &v13 - v8, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF9DEAC(a2, &v9[*(v6 + 56)], &unk_27F1E1CB0, &unk_24E36D160);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
  }

  v10 = type metadata accessor for PlayerCardTheme(0);
  v11 = *(__swift_project_value_buffer(v10, qword_27F20BF00) + 64);
  sub_24DFA9298(v9, &unk_27F1E1CA0, &unk_24E36C0D0);
  *a3 = v11;
  result = 0.0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 33) = 0u;
  *(a3 + 56) = -1;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 1;
  return result;
}

uint64_t type metadata accessor for SmallFriendLockupCollectionViewCell(uint64_t a1)
{
  result = qword_27F1DFFB0;
  if (!qword_27F1DFFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DFDB940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_24E3448F8();
}

uint64_t sub_24DFDB990(uint64_t a1)
{
  result = sub_24DFDBAD0(&qword_27F1DFFC0, type metadata accessor for SmallFriendLockupCollectionViewCell, &unk_24E36CC74);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24DFDBA78(uint64_t a1)
{
  result = sub_24DFDBAD0(&qword_27F1DFFD0, type metadata accessor for SmallFriendLockupCollectionViewCell, &unk_24E36CCB4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24DFDBAD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24DFDBB18@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);

  return sub_24DFDA7AC(a1, a2);
}

id sub_24DFDBBAC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24DFDA980(a1, v1 + v4, v5);
}

uint64_t sub_24DFDBC54(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for SmallFriendLockupData(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DFDBCB8(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for SmallFriendLockupData(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_16Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24DFDBDB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24E3433A8();
  MEMORY[0x28223BE20](v6);
  v8 = [a1 activityType];
  if ((v8 - 1) < 3)
  {
    OUTLINED_FUNCTION_3_23();
    sub_24DF81EF4(a4, v50);
    sub_24E343398();
    v24 = OUTLINED_FUNCTION_1_29();
    v25(v24);
    v26 = sub_24DFDC008();
    OUTLINED_FUNCTION_2_25(v26);
    v27 = OUTLINED_FUNCTION_4_18();
    v28(v27);
    type metadata accessor for ActivityFeedArtworkData(0);
    swift_allocObject();
    v29 = a1;
    v30 = OUTLINED_FUNCTION_0_37();
    return sub_24E1A959C(v30, v31, v32, v33, v34, v35, v36);
  }

  else
  {
    v9 = v8;
    if ((v8 - 5) >= 2)
    {
      result = 0;
      if (v9 == 4)
      {
        OUTLINED_FUNCTION_3_23();
        sub_24DF81EF4(a4, v50);
        sub_24E343398();
        v37 = OUTLINED_FUNCTION_1_29();
        v38(v37);
        v39 = sub_24DFDC008();
        OUTLINED_FUNCTION_2_25(v39);
        v40 = OUTLINED_FUNCTION_4_18();
        v41(v40);
        type metadata accessor for ActivityFeedAchievementData(0);
        swift_allocObject();
        v42 = a1;
        v43 = OUTLINED_FUNCTION_0_37();
        return sub_24E321AA8(v43, v44, v45, v46, v47, v48, v49);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_23();
      sub_24DF81EF4(a4, v50);
      sub_24E343398();
      v10 = OUTLINED_FUNCTION_1_29();
      v11(v10);
      v12 = sub_24DFDC008();
      OUTLINED_FUNCTION_2_25(v12);
      v13 = OUTLINED_FUNCTION_4_18();
      v14(v13);
      type metadata accessor for ActivityFeedLeaderboardData(0);
      swift_allocObject();
      v15 = a1;
      v16 = OUTLINED_FUNCTION_0_37();
      return sub_24E2BA010(v16, v17, v18, v19, v20, v21, v22);
    }
  }

  return result;
}

unint64_t sub_24DFDC008()
{
  result = qword_27F1DE1B0;
  if (!qword_27F1DE1B0)
  {
    sub_24E3433A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DE1B0);
  }

  return result;
}

void *OUTLINED_FUNCTION_2_25(uint64_t a1)
{

  return sub_24E348918();
}

uint64_t OUTLINED_FUNCTION_3_23()
{
  *(v0 - 80) = 0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
}

unint64_t GKMultiplayerLobbyAction.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24DFDC104()
{
  result = qword_27F1DFFF8;
  if (!qword_27F1DFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DFFF8);
  }

  return result;
}

unint64_t sub_24DFDC158@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GKMultiplayerLobbyAction.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI23GKMultiplayerViewStatusO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI25AvatarArtworkLoaderConfigOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DFDC1E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DFDC234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_24DFDC2AC(void *a1, uint64_t a2)
{
  v6 = [a1 type];
  if (v6 == 2)
  {
    goto LABEL_4;
  }

  if (v6 == 1)
  {
    v10 = sub_24E347CB8();
    v11 = GKGameCenterUIFrameworkBundle();
    v12 = OUTLINED_FUNCTION_1_12(v11);

    v2 = sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D83B88];
    *(v13 + 16) = xmmword_24E367D20;
    v15 = MEMORY[0x277D83C10];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    *(v13 + 32) = a2;
    sub_24E347CC8();
    OUTLINED_FUNCTION_6_9();

LABEL_14:

    return v2;
  }

  if (!v6)
  {
LABEL_4:
    v7 = [a1 player];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 displayNameWithOptions_];
      if (!v9)
      {
        v2 = [v8 internal];
        v9 = [v2 messagesID];
      }

      sub_24E347CF8();
      OUTLINED_FUNCTION_6_9();
    }

    else
    {
      v2 = 0;
      v3 = 0;
    }

    if ((sub_24DFDCAD4(a1) & 1) == 0 || !v3)
    {

      return v2;
    }

    v16 = sub_24E347CB8();
    v17 = GKGameCenterUIFrameworkBundle();
    v18 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24E367D20;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_24DF95A7C();
    *(v19 + 32) = v2;
    *(v19 + 40) = v3;
    sub_24E347D18();
    OUTLINED_FUNCTION_6_9();

    goto LABEL_14;
  }

  return 0;
}

id sub_24DFDC55C(void *a1, uint64_t a2)
{
  v4 = [a1 type];
  if (v4 == 2)
  {
    return [a1 player];
  }

  if (v4 == 1)
  {
    v5 = [a1 player];
    if (v5)
    {
    }

    else if ([a1 type] == 1)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D0BFE8]) init];
      [v7 setAutomatchPosition_];
      v6 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];

      return v6;
    }

    return [a1 player];
  }

  if (!v4)
  {
    return [a1 player];
  }

  return 0;
}

void sub_24DFDC670(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 player];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [a1 player];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isLocalPlayer];

    if (v7)
    {
LABEL_4:
      OUTLINED_FUNCTION_0_38();
      v8 = sub_24E347CB8();
      v9 = GKGameCenterUIFrameworkBundle();
      v10 = OUTLINED_FUNCTION_1_12(v9);

      sub_24E347CF8();
      OUTLINED_FUNCTION_6_9();

      *a2 = v8;
      *(a2 + 8) = v6;
      *(a2 + 16) = 0;
      return;
    }

LABEL_5:
    v6 = &selRef_smallIconURLString;
    if ([a1 status] == 7)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
LABEL_13:
      v13 = 3;
LABEL_14:
      *(a2 + 16) = v13;
      return;
    }

    v11 = [a1 type];
    if (v11 == 2)
    {
LABEL_10:
      switch([a1 status])
      {
        case 1uLL:
        case 0xEuLL:
          goto LABEL_26;
        case 2uLL:
        case 3uLL:
        case 4uLL:
          OUTLINED_FUNCTION_0_38();
          v15 = sub_24E347CB8();
          v16 = GKGameCenterUIFrameworkBundle();
          v17 = OUTLINED_FUNCTION_1_12(v16);
          goto LABEL_30;
        case 6uLL:
          v18 = OUTLINED_FUNCTION_2_26();
          v19 = GKGameCenterUIFrameworkBundle();
          v20 = OUTLINED_FUNCTION_1_12(v19);
          goto LABEL_27;
        case 0xBuLL:
          *a2 = 0;
          *(a2 + 8) = 0;
          goto LABEL_31;
        case 0xCuLL:
          goto LABEL_4;
        case 0x14uLL:
          goto LABEL_29;
        case 0x15uLL:
          goto LABEL_22;
        default:
          goto LABEL_11;
      }
    }

    if (v11 != 1)
    {
      if (!v11)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = xmmword_24E369980;
LABEL_12:
      *a2 = v12;
      goto LABEL_13;
    }

    v14 = [a1 status];
    if (v14)
    {
      if (v14 == 4)
      {
        goto LABEL_4;
      }

      if (v14 == 9)
      {
        goto LABEL_26;
      }

      if (v14 == 20)
      {
LABEL_29:
        v15 = OUTLINED_FUNCTION_2_26();
        v23 = GKGameCenterUIFrameworkBundle();
        v17 = OUTLINED_FUNCTION_1_12(v23);
LABEL_30:
        v24 = v17;

        sub_24E347CF8();
        OUTLINED_FUNCTION_6_9();

        *a2 = v15;
        *(a2 + 8) = &selRef_smallIconURLString;
LABEL_31:
        v13 = 2;
        goto LABEL_14;
      }

      if (v14 == 14)
      {
LABEL_26:
        OUTLINED_FUNCTION_0_38();
        v18 = sub_24E347CB8();
        v21 = GKGameCenterUIFrameworkBundle();
        v20 = OUTLINED_FUNCTION_1_12(v21);
LABEL_27:
        v22 = v20;

        sub_24E347CF8();
        OUTLINED_FUNCTION_6_9();

        *a2 = v18;
        *(a2 + 8) = &selRef_smallIconURLString;
      }

      else
      {
        if (v14 == 13)
        {
          goto LABEL_21;
        }

LABEL_22:
        *a2 = xmmword_24E3699A0;
      }

      v13 = 1;
      goto LABEL_14;
    }

LABEL_21:
    v12 = xmmword_24E36CD50;
    goto LABEL_12;
  }

  __break(1u);
}

id sub_24DFDCAD4(void *a1)
{
  if ([a1 status] != 1)
  {
    v15 = 0;
    return (v15 & 1);
  }

  result = [a1 player];
  if (result)
  {
    v3 = result;
    v4 = [result alias];

    v5 = sub_24E347CF8();
    v7 = v6;

    v8 = sub_24E347CB8();
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();

    v11 = sub_24E347CF8();
    v13 = v12;

    if (v5 == v11 && v7 == v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_24E348C08();
    }

    return (v15 & 1);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_26()
{

  return sub_24E347CB8();
}

unint64_t sub_24DFDCC64()
{
  result = qword_27F1E0000;
  if (!qword_27F1E0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0000);
  }

  return result;
}

id sub_24DFDCCB8(uint64_t a1, void *a2)
{
  v2 = a2;
  LODWORD(v3) = 1132068864;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1132068864;
  [v2 setContentCompressionResistancePriority:1 forAxis:v4];
  return v2;
}

uint64_t sub_24DFDCD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24DFDCE10();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24DFDCD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24DFDCE10();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24DFDCDE8(uint64_t a1)
{
  sub_24DFDCE10();
  sub_24E345E08();
  __break(1u);
}

unint64_t sub_24DFDCE10()
{
  result = qword_27F1E0008;
  if (!qword_27F1E0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0008);
  }

  return result;
}

id sub_24DFDCE74(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = objc_opt_self();
  if (a8)
  {
    v13 = [a1 layoutSize];
    v14 = [v12 horizontalGroupWithLayoutSize:v13 subitem:a1 count:1];

    v15 = [objc_opt_self() sectionWithGroup_];
    v16 = qword_27F1DDC38;
    v17 = v15;
    if (v16 != -1)
    {
      OUTLINED_FUNCTION_0_35(&qword_27F1DDC38);
    }

    v18 = sub_24E3444F8();
    __swift_project_value_buffer(v18, qword_27F20B4B8);
    sub_24E3444E8();
    [v17 setInterGroupSpacing_];
    if (qword_27F1DDC48 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v18, qword_27F20B4E8);
    sub_24E3444E8();
    v20 = v19;
    if (qword_27F1DDC28 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v18, qword_27F20B488);
    sub_24E3444E8();
    v22 = v21;
    sub_24E3444E8();
    v24 = v23;
    sub_24E3444E8();
    [v17 setContentInsets_];
  }

  else
  {
    v26 = [objc_opt_self() fractionalWidthDimension_];
    v27 = [a1 layoutSize];
    v28 = [v27 heightDimension];

    v29 = [objc_opt_self() &selRef:v26 landingViewControllerWithGameBundleId:v28 + 6];
    v14 = [v12 horizontalGroupWithLayoutSize:v29 subitem:a1 count:*(a9 + OBJC_IVAR___GameLayerPageGrid_columnCount)];

    v30 = objc_opt_self();
    v31 = *(a9 + OBJC_IVAR___GameLayerPageGrid_interColumnSpacing);
    v32 = [v30 fixedSpacing_];
    [v14 setInterItemSpacing_];

    v33 = [objc_opt_self() sectionWithGroup_];
    v34 = qword_27F1DDC38;
    v17 = v33;
    if (v34 != -1)
    {
      OUTLINED_FUNCTION_0_35(&qword_27F1DDC38);
    }

    v35 = sub_24E3444F8();
    __swift_project_value_buffer(v35, qword_27F20B4B8);
    sub_24E3444E8();
    v37 = v36;
    [a4 safeAreaInsets];
    v38 = a9 + OBJC_IVAR___GameLayerPageGrid_centeringInsets;
    v40 = vabdd_f64(v39, *(a9 + OBJC_IVAR___GameLayerPageGrid_centeringInsets + 8));
    sub_24E3444E8();
    v42 = v41;
    [a4 safeAreaInsets];
    [v17 setContentInsets_];
    [v17 setInterGroupSpacing_];
    a8 = 0;
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA190, &qword_24E36C900);
  sub_24E347128();

  if (v66 || v67 != 0xE000000000000000)
  {
    v44 = sub_24E348C08();

    if ((v44 & 1) == 0)
    {
      v45 = objc_opt_self();
      v46 = [v45 estimatedDimension_];
      v47 = [v45 estimatedDimension_];
      v48 = [objc_opt_self() sizeWithWidthDimension:v46 heightDimension:v47];

      ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
      v50 = a8 == 0;
      v51 = a8 != 0;
      v52 = -25.0;
      v53 = -6.0;
      if (a8)
      {
        v53 = -25.0;
      }

      v54 = 2.0;
      if (!a8)
      {
        v54 = 16.0;
        v52 = -10.0;
      }

      if (ShouldUsePadUI)
      {
        v55 = v54;
      }

      else
      {
        v55 = 0.0;
      }

      if (ShouldUsePadUI)
      {
        v56 = v52;
      }

      else
      {
        v56 = v53;
      }

      sub_24DFCF654();
      v57 = sub_24E347CF8();
      v59 = v58;
      v60 = v48;
      v61 = sub_24DFCF5A8(v60, v57, v59, 2, v55, v56);
      [v61 setPinToVisibleBounds_];
      [v61 setExtendsBoundary_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_24E369990;
      *(v62 + 32) = v61;
      v63 = v61;
      v64 = sub_24E347EE8();

      [v17 setBoundarySupplementaryItems_];
    }
  }

  else
  {
  }

  return v17;
}

void sub_24DFDD4DC()
{
  OUTLINED_FUNCTION_32();
  v58 = v2;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA7D0, &unk_24E36C0E0);
  OUTLINED_FUNCTION_0_14();
  v55 = v6;
  v56 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_3();
  v54 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CD0, &unk_24E36D1A0);
  OUTLINED_FUNCTION_0_14();
  v52 = v10;
  v53 = v9;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_3();
  v51 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60, &unk_24E36C0F0);
  OUTLINED_FUNCTION_4_5(v13);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = sub_24E347638();
  v18 = OUTLINED_FUNCTION_4_5(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_1();
  v50 = sub_24E347388();
  OUTLINED_FUNCTION_0_14();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  *&v0[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_bootstrapPresenter] = 0;
  *&v0[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_compositionalLayout] = 0;
  *&v0[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource] = 0;
  v22 = OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_components;
  if (qword_27F1DD908 != -1)
  {
    OUTLINED_FUNCTION_10_13();
    swift_once();
  }

  *&v0[v22] = qword_27F20B010;
  *&v0[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_sortGamesBarButtonItem] = 0;
  v23 = OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_navigationBarFocusGuide;
  v24 = objc_allocWithZone(MEMORY[0x277D75500]);

  *&v0[v23] = [v24 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E9810, &qword_24E371680);
  swift_allocObject();

  *&v60 = sub_24E347578();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0098, &unk_24E36D1B0);
  swift_allocObject();
  sub_24DFB4C28(&qword_27F1E9820, &unk_27F1E9810, &qword_24E371680, MEMORY[0x277D22080]);
  v57 = v4;
  *&v0[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_statePresenter] = sub_24E344898();
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  (*(v20 + 16))(v1, qword_27F20B960 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline, v50);
  sub_24E347628();
  v25 = sub_24E347118();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v25);
  sub_24E3476A8();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_pageMetricsPresenter] = sub_24E347658();
  v26 = type metadata accessor for AchievementsByGameViewController();
  v63.receiver = v0;
  v63.super_class = v26;
  v27 = objc_msgSendSuper2(&v63, sel_initWithNibName_bundle_, 0, 0);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v28 = *&v27[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_pageMetricsPresenter];
  sub_24DF8BD90(&v60, v59, &qword_27F1E1B70, qword_24E3756A0);
  v29 = objc_allocWithZone(type metadata accessor for BootstrapPresenter());
  v30 = v27;
  swift_retain_n();
  v31 = v58;
  swift_retain_n();
  v32 = v30;
  v33 = sub_24E190B5C(v27, v59, 0, v28, 0, 0, v31);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_2861150A8;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CF0, &unk_24E36C120);
  v34 = MEMORY[0x277D21A98];
  sub_24DFB4C28(&qword_27F1DFB10, &unk_27F1E1CF0, &unk_24E36C120, MEMORY[0x277D21A98]);
  sub_24E347198();
  v35 = v51;
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v59);
  (*(v52 + 8))(v35, v53);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_2861150A8;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1D00, &qword_24E375EB0);
  sub_24DFB4C28(&qword_27F1DFB18, &unk_27F1E1D00, &qword_24E375EB0, v34);
  sub_24E347198();
  v36 = v54;
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v59);
  (*(v55 + 8))(v36, v56);

  sub_24DF8BFF4(&v60, &qword_27F1E1B70, qword_24E3756A0);
  v37 = *&v32[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_bootstrapPresenter];
  *&v32[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_bootstrapPresenter] = v33;

  v38 = *&v32[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_statePresenter];
  v39 = v32;
  v40 = sub_24E3448A8();
  sub_24E2E78BC(v40, v39);

  v41 = [v39 navigationItem];
  [v41 setLargeTitleDisplayMode_];

  v42 = OUTLINED_FUNCTION_9_13();
  v43 = GKGameCenterUIFrameworkBundle();
  v44 = OUTLINED_FUNCTION_23_7(v43);

  sub_24E347CF8();
  v60 = 0u;
  v61 = 0u;
  v45 = objc_allocWithZone(MEMORY[0x277D751E0]);
  sub_24E3076B4();
  v46 = *&v39[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_sortGamesBarButtonItem];
  *&v39[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_sortGamesBarButtonItem] = v47;

  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for PlayerCardTheme(0);
  v49 = __swift_project_value_buffer(v48, qword_27F20BF00);
  sub_24DFFE82C(*v49);

  OUTLINED_FUNCTION_18();
}

void sub_24DFDDD04()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_bootstrapPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_compositionalLayout) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_components;
  if (qword_27F1DD908 != -1)
  {
    OUTLINED_FUNCTION_10_13();
    swift_once();
  }

  *(v0 + v1) = qword_27F20B010;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_sortGamesBarButtonItem) = 0;
  v2 = OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_navigationBarFocusGuide;
  v3 = objc_allocWithZone(MEMORY[0x277D75500]);

  *(v0 + v2) = [v3 init];
  sub_24E348AE8();
  __break(1u);
}

id sub_24DFDDE24()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for AchievementsByGameViewController();
  result = objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_bootstrapPresenter];
  if (v2)
  {
    v3 = v2;
    sub_24E19116C(v3, v4, v5, v6, v7, v8, v9, v10);

    sub_24E3476A8();

    sub_24E347888();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24DFDDF08(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for AchievementsByGameViewController();
  objc_msgSendSuper2(&v13, sel_viewDidAppear_, a1 & 1);

  sub_24E347668();

  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 navigationBar];

    if (v6)
    {
      v7 = *&v2[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_navigationBarFocusGuide];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_24E369990;
      *(v8 + 32) = v6;
      v9 = v6;
      sub_24DFD7FD0(v8, v7);
      v10 = v9;
      [v10 addLayoutGuide_];
      [objc_opt_self() _gkInstallEdgeConstraintsForLayoutGuide_containedWithinParentView_];
    }
  }

  v11 = [v2 navigationController];
  if (v11)
  {
    v12 = v11;
    [v11 setNeedsFocusUpdate];
  }
}

uint64_t sub_24DFDE0D4(char a1)
{
  v4 = sub_24E347908();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AchievementsByGameViewController();
  objc_msgSendSuper2(&v12, sel_viewWillDisappear_, a1 & 1);
  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];

    if (v10)
    {
      [v10 removeLayoutGuide_];
    }
  }

  sub_24E3478F8();
  sub_24E347678();

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_24DFDE280(uint64_t a1)
{
  v2 = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AchievementsByGameViewController();
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, v2 & 1);
  sub_24E3476A8();

  sub_24E3478B8();
}

void sub_24DFDE350()
{
  OUTLINED_FUNCTION_32();
  v3 = v0;
  v40 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C30, &unk_24E36C0A0);
  OUTLINED_FUNCTION_0_14();
  v38 = v6;
  v39 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_3();
  v37 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0070, &unk_24E36D170);
  OUTLINED_FUNCTION_0_14();
  v42 = v10;
  v43 = v9;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_3();
  v41 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C40, &unk_24E375E80);
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_14();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60, &unk_24E36C0F0);
  OUTLINED_FUNCTION_4_5(v17);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_9();

  sub_24E3448A8();
  sub_24E07C1C0();

  v19 = sub_24E347118();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v19);
  sub_24E347698();

  sub_24E3448A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0, &unk_24E36FA60);
  v20 = MEMORY[0x277D21A98];
  sub_24DFB4C28(&unk_27F1E1C50, &unk_27F1E6CC0, &unk_24E36FA60, MEMORY[0x277D21A98]);
  sub_24E347198();
  type metadata accessor for AchievementsByGameViewController();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v44);
  (*(v15 + 8))(v2, v13);
  sub_24E3448A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0078, &unk_24E36D180);
  sub_24DFB4C28(&unk_27F1EA170, &qword_27F1E0078, &unk_24E36D180, v20);
  sub_24E347198();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v44);
  (*(v42 + 8))(v41, v43);
  v21 = OUTLINED_FUNCTION_20_7();
  if (!v21)
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = v21;
  sub_24E1E086C();

  if (!OUTLINED_FUNCTION_20_7())
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_21_2();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E97E0, &unk_24E371660));
  v23 = sub_24E344CB8();
  v24 = OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource;
  v25 = *&v0[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource];
  *&v0[OBJC_IVAR____TtC12GameCenterUI32AchievementsByGameViewController_diffableDataSource] = v23;

  v26 = OUTLINED_FUNCTION_20_7();
  if (!v26)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = *&v0[v24];
  if (!v27)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v28 = v26;
  v29 = v27;
  sub_24E0B0548(v28, v29, v40);

  v30 = OUTLINED_FUNCTION_20_7();
  if (!v30)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v31 = v30;
  [v30 setDataSource_];

  v32 = OUTLINED_FUNCTION_20_7();
  if (!v32)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v33 = v32;
  sub_24DFDF858();
  v35 = v34;
  [v33 setCollectionViewLayout_];

  sub_24E3448A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C70, &unk_24E36C0B0);
  sub_24DFB4C28(&unk_27F1E97F0, &unk_27F1E1C70, &unk_24E36C0B0, MEMORY[0x277D21A98]);
  OUTLINED_FUNCTION_21_4();
  sub_24E347198();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v44);
  (*(v38 + 8))(v37, v39);
  sub_24E3448A8();
  sub_24E07CE88();

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v36 = [v3 navigationItem];
    [v36 setStyle_];
  }

  OUTLINED_FUNCTION_18();
}