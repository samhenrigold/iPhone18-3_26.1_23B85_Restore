uint64_t sub_248709830()
{
  *(v0 + 424) = *(v0 + 560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2487098CC, 0, 0);
}

uint64_t sub_2487098CC()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_248709980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248709B94(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_24870DDF8;

  return sub_2487088DC(a1);
}

uint64_t sub_248709C50(uint64_t a1, uint64_t a2)
{
  v3[80] = v2;
  v3[79] = a2;
  v3[78] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v3[85] = swift_task_alloc();
  v4 = sub_2487309B0();
  v3[86] = v4;
  v3[87] = *(v4 - 8);
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66B8, &qword_2487355B8);
  v3[90] = v5;
  v3[91] = *(v5 - 8);
  v3[92] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248709E20, 0, 0);
}

void *sub_248709E20()
{
  v1 = v0[79];
  v0[77] = MEMORY[0x277D84F90];
  sub_248730C20();
  sub_2486CF4C4(0, &qword_27EEA6338, 0x277D57038);
  result = sub_248730BF0();
  v3 = result;
  v0[93] = result;
  if (v1 >> 62)
  {
    result = sub_248731790();
    v4 = result;
    v0[94] = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[94] = v4;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v0[79] + 32;
  v8 = MEMORY[0x277D85000];
  do
  {
    if (v6)
    {
      v9 = MEMORY[0x24C1D7600](v5, v0[79]);
    }

    else
    {
      v9 = *(v7 + 8 * v5);
    }

    v10 = v9;
    ++v5;
    v11 = (*((*v8 & *v9) + 0x80))();
    v12 = sub_248730C10();
  }

  while (v4 != v5);
LABEL_10:
  v13 = v3;
  v14 = swift_task_alloc();
  v0[95] = v14;
  *v14 = v0;
  v14[1] = sub_248709FFC;
  v15 = v0[92];
  v16 = v0[78];

  return sub_248708388(v15, v16, v3);
}

uint64_t sub_248709FFC()
{
  v2 = *(*v1 + 744);
  *(*v1 + 768) = v0;

  if (v0)
  {
    v3 = sub_24870B374;
  }

  else
  {
    v3 = sub_24870A128;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24870A128()
{
  v0[76] = sub_248730C40();
  v1 = MEMORY[0x277D84F90];
  v0[98] = MEMORY[0x277D84F90];
  v0[97] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66C0, qword_2487355C8);
  v3 = sub_24870DDB0(&qword_27EEA66C8, &qword_27EEA66C0, qword_2487355C8, MEMORY[0x277CE4870]);
  v4 = swift_task_alloc();
  v0[99] = v4;
  *v4 = v0;
  v4[1] = sub_24870A240;

  return MEMORY[0x282200308](v0 + 75, v2, v3);
}

uint64_t sub_24870A240()
{
  *(*v1 + 800) = v0;

  if (v0)
  {
    v2 = sub_24870B1D4;
  }

  else
  {
    v2 = sub_24870A354;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24870A378()
{
  v1 = *(v0 + 808);
  if (!v1)
  {
    v95 = *(v0 + 736);
    v96 = *(v0 + 728);
    v97 = *(v0 + 720);

    (*(v96 + 8))(v95, v97);

    v98 = *(v0 + 8);
    v99 = *(v0 + 776);

    return v98(v99);
  }

  v123 = (v0 + 584);
  *(v0 + 584) = MEMORY[0x277D84F90];
  v119 = v1;
  v2 = sub_248730C30();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_81;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_82:
    v7 = MEMORY[0x277D84F90];
LABEL_83:

    type metadata accessor for FeaturizedConversation();
    v3 = swift_allocObject();
    *(v3 + 16) = 2;
    *(v3 + 40) = v7;
    if (v7 >> 62)
    {
      goto LABEL_90;
    }

    v103 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v103)
    {
      goto LABEL_85;
    }

LABEL_91:
    v106 = 0;
    v105 = 0;
LABEL_92:
    *(v3 + 24) = v106;
    *(v3 + 32) = v105;
    v107 = *(v3 + 40);
    if (v107 >> 62)
    {
      if (sub_248731790())
      {
        goto LABEL_94;
      }
    }

    else if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_94:
      v108 = (v0 + 616);

      MEMORY[0x24C1D71A0](v109);
      if (*((*v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248731260();
      }

      sub_2487312A0();

      v110 = *v108;
      v111 = *v108;
      goto LABEL_99;
    }

    v111 = *(v0 + 784);
    v110 = *(v0 + 776);
LABEL_99:
    *(v0 + 784) = v111;
    *(v0 + 776) = v110;
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66C0, qword_2487355C8);
    v113 = sub_24870DDB0(&qword_27EEA66C8, &qword_27EEA66C0, qword_2487355C8, MEMORY[0x277CE4870]);
    v114 = swift_task_alloc();
    *(v0 + 792) = v114;
    *v114 = v0;
    v114[1] = sub_24870A240;
    v103 = v0 + 600;
    v101 = v112;
    v102 = v113;

    return MEMORY[0x282200308](v103, v101, v102);
  }

LABEL_4:
  v5 = 0;
  v138 = v0 + 560;
  v6 = v3 & 0xC000000000000001;
  v117 = v3 & 0xFFFFFFFFFFFFFF8;
  v118 = (v0 + 568);
  v7 = MEMORY[0x277D84F90];
  v116 = v3 + 32;
  v137 = v0;
  v121 = v4;
  v122 = v3;
  v120 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v6)
    {
      v8 = MEMORY[0x24C1D7600](v5, v3);
    }

    else
    {
      if (v5 >= *(v117 + 16))
      {
        goto LABEL_89;
      }

      v8 = *(v116 + 8 * v5);
    }

    v9 = v8;
    v10 = __OFADD__(v5, 1);
    v11 = v5 + 1;
    if (v10)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      v4 = sub_248731790();
      if (!v4)
      {
        goto LABEL_82;
      }

      goto LABEL_4;
    }

    v125 = v11;
    *(v0 + 280) = sub_248730C70();
    *(v0 + 256) = v9;
    sub_2486C5B68(v0 + 256, v0 + 288);
    sub_248730D50();
    v124 = v9;
    if (swift_dynamicCast())
    {
      break;
    }

    sub_2486C5B68(v0 + 256, v0 + 320);
    if (swift_dynamicCast())
    {
      v3 = *v118;
      v25 = objc_allocWithZone(type metadata accessor for ConversationTurnAIMLIS(0));
      v126 = sub_248713D24(v3);
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
LABEL_68:
    v3 = v122;
    v5 = v125;
    v6 = v120;
    if (v125 == v121)
    {
      goto LABEL_83;
    }
  }

  v12 = *(v0 + 712);
  v13 = *(v0 + 696);
  v14 = *(v0 + 688);
  v15 = *(v0 + 680);
  v16 = *(v0 + 576);
  v17 = type metadata accessor for ConversationTurnPLL(0);
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn] = v16;
  *(v0 + 544) = v18;
  *(v0 + 552) = v17;

  v3 = objc_msgSendSuper2((v0 + 544), sel_init);

  sub_248730D40();

  v19 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  (*(v13 + 40))(v3 + v19, v12, v14);
  swift_endAccess();

  sub_248730D20();

  v20 = sub_248730970();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 48))(v15, 1, v20);
  v23 = *(v0 + 680);
  if (v22 == 1)
  {
    sub_2486C7940(*(v0 + 680), &qword_27EEA6240, &unk_248733390);
    v24 = 0;
  }

  else
  {
    sub_248730900();
    v24 = v26;
    (*(v21 + 8))(v23, v20);
  }

  v27 = v3 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp;
  v0 = v137;
  swift_beginAccess();
  *v27 = v24;
  *(v27 + 8) = v22 == 1;
  v28 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
  swift_beginAccess();
  *(v3 + v28) = 0;
  sub_24871082C();

  v126 = v3;
LABEL_17:

  v29 = *(v0 + 752);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v30 = sub_2486D3554(MEMORY[0x277D84F90]);
  if (!v29)
  {
LABEL_57:
    v136 = v30;
    v69 = *(v0 + 704);
    v70 = *(v0 + 696);
    v71 = *(v0 + 688);
    v72 = *(v0 + 672);
    v73 = &v126[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
    swift_beginAccess();
    v74 = *v73;
    v134 = v73[8];
    v75 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    (*(v70 + 16))(v69, &v126[v75], v71);
    v76 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
    swift_beginAccess();
    sub_2486D8A6C(&v126[v76], v72, &qword_27EEA5D90, &qword_2487333C0);
    if (v136[2] && (v77 = sub_2486C94CC(0x7165722E4843524FLL, 0xEE00644974736575), (v78 & 1) != 0))
    {
      v79 = *(v137 + 696);
      v80 = *(v137 + 688);
      v81 = *(v137 + 664);
      sub_2486C5B68(v136[7] + 32 * v77, v137 + 192);
      v82 = swift_dynamicCast();
      (*(v79 + 56))(v81, v82 ^ 1u, 1, v80);
    }

    else
    {
      (*(*(v137 + 696) + 56))(*(v137 + 664), 1, 1, *(v137 + 688));
    }

    v83 = *(v137 + 704);
    v84 = *(v137 + 696);
    v85 = *(v137 + 672);
    v86 = *(v137 + 664);
    v130 = *(v137 + 688);
    v132 = v86;
    v87 = *(v137 + 656);
    v88 = *(v137 + 648);
    v89 = sub_248730980();
    v128 = v90;
    sub_2486D8A6C(v86, v87, &qword_27EEA5D90, &qword_2487333C0);
    sub_2486D8A6C(v85, v88, &qword_27EEA5D90, &qword_2487333C0);
    type metadata accessor for FeaturizedConversationTurn(0);
    v91 = swift_allocObject();
    *(v91 + 16) = 1;
    v92 = sub_2486D3554(MEMORY[0x277D84F90]);
    sub_2486C7940(v85, &qword_27EEA5D90, &qword_2487333C0);
    (*(v84 + 8))(v83, v130);
    *(v91 + 24) = v92;
    *(v91 + 40) = v89;
    *(v91 + 48) = v128;
    if (v134)
    {
      v93 = -1.0;
    }

    else
    {
      v93 = v74;
    }

    *(v91 + 32) = v93;
    sub_2486C98BC(v87, v91 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26FeaturizedConversationTurn_requestID);
    v0 = v137;
    sub_2486C98BC(v88, v91 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26FeaturizedConversationTurn_clockId);
    swift_beginAccess();
    *(v91 + 24) = v136;

    sub_2486C7940(v132, &qword_27EEA5D90, &qword_2487333C0);

    MEMORY[0x24C1D71A0](v94);
    if (*((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248731260();
    }

    sub_2487312A0();

    v7 = *v123;
    goto LABEL_68;
  }

  v7 = 0;
  while (1)
  {
    v33 = *(v0 + 632);
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x24C1D7600](v7);
      goto LABEL_25;
    }

    if (v7 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v34 = *(v33 + 8 * v7 + 32);
LABEL_25:
    v3 = v34;
    v10 = __OFADD__(v7, 1);
    v35 = v7 + 1;
    if (v10)
    {
      goto LABEL_79;
    }

    v131 = v35;
    (*((*MEMORY[0x277D85000] & *v34) + 0x70))(v126);
    v36 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25IntraTurnFeatureExtractor_features;
    swift_beginAccess();
    v127 = v36;
    v129 = v3;
    v37 = *(v3 + v36);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v138 = v30;
    v39 = v37 + 64;
    v40 = -1 << *(v37 + 32);
    if (-v40 < 64)
    {
      v41 = ~(-1 << -v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v37 + 64);
    v133 = (63 - v40) >> 6;
    v135 = v37;

    v43 = 0;
    if (!v42)
    {
LABEL_33:
      if (v133 <= v43 + 1)
      {
        v46 = v43 + 1;
      }

      else
      {
        v46 = v133;
      }

      v47 = v46 - 1;
      while (1)
      {
        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v45 >= v133)
        {
          v42 = 0;
          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          v43 = v47;
          *(v0 + 112) = 0u;
          goto LABEL_42;
        }

        v42 = *(v39 + 8 * v45);
        ++v43;
        if (v42)
        {
          v43 = v45;
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    while (1)
    {
      v45 = v43;
LABEL_41:
      v48 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v49 = v48 | (v45 << 6);
      v50 = (*(v135 + 48) + 16 * v49);
      v51 = *v50;
      v52 = v50[1];
      sub_2486C5B68(*(v135 + 56) + 32 * v49, v0 + 224);
      *(v0 + 112) = v51;
      *(v0 + 120) = v52;
      sub_2486C79A0((v0 + 224), (v0 + 128));

LABEL_42:
      v53 = *(v0 + 128);
      *(v0 + 64) = *(v0 + 112);
      *(v0 + 80) = v53;
      *(v0 + 96) = *(v0 + 144);
      v54 = *(v0 + 72);
      if (!v54)
      {
        break;
      }

      v55 = *(v0 + 64);
      sub_2486C5B68(v0 + 80, v0 + 32);
      *(v0 + 16) = v55;
      *(v0 + 24) = v54;

      sub_2486C7940(v0 + 64, &qword_27EEA6328, &qword_248734838);
      v56 = *(v0 + 24);
      if (!v56)
      {
        goto LABEL_20;
      }

      v57 = *(v0 + 16);
      sub_2486C79A0((v0 + 32), (v0 + 160));
      v3 = sub_2486C94CC(v57, v56);
      v59 = v30;
      v60 = v30[2];
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_77;
      }

      v63 = v58;
      if (v59[3] >= v62)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v58 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        else
        {
          sub_2486E62F4();
          if ((v63 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

LABEL_31:

        v30 = *v138;
        v44 = (*(*v138 + 56) + 32 * v3);
        __swift_destroy_boxed_opaque_existential_0(v44);
        v0 = v137;
        sub_2486C79A0((v137 + 160), v44);
        isUniquelyReferenced_nonNull_native = 1;
        if (!v42)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_2486E45C8(v62, isUniquelyReferenced_nonNull_native & 1);
        v64 = sub_2486C94CC(v57, v56);
        if ((v63 & 1) != (v65 & 1))
        {

          return sub_2487318B0();
        }

        v3 = v64;
        if (v63)
        {
          goto LABEL_31;
        }

LABEL_51:
        v0 = v137;
        v30 = *v138;
        *(*v138 + 8 * (v3 >> 6) + 64) |= 1 << v3;
        v66 = (v30[6] + 16 * v3);
        *v66 = v57;
        v66[1] = v56;
        sub_2486C79A0((v137 + 160), (v30[7] + 32 * v3));
        v67 = v30[2];
        v10 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v10)
        {
          goto LABEL_78;
        }

        v30[2] = v68;
        isUniquelyReferenced_nonNull_native = 1;
        if (!v42)
        {
          goto LABEL_33;
        }
      }
    }

    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
LABEL_20:
    v31 = *(v0 + 752);

    v3 = v129;
    *&v129[v127] = MEMORY[0x277D84F98];

    v32 = v131 == v31;
    v7 = v131;
    if (v32)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  v103 = sub_248731790();
  if (!v103)
  {
    goto LABEL_91;
  }

LABEL_85:
  if ((v7 & 0xC000000000000001) != 0)
  {

    v115 = MEMORY[0x24C1D7600](0, v7);

    v106 = *(v115 + 40);
    v105 = *(v115 + 48);

    swift_unknownObjectRelease();
    goto LABEL_92;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v104 = *(v7 + 32);
    v106 = *(v104 + 40);
    v105 = *(v104 + 48);

    goto LABEL_92;
  }

  __break(1u);
  return MEMORY[0x282200308](v103, v101, v102);
}

uint64_t sub_24870B1D4()
{
  *(v0 + 592) = *(v0 + 800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_24870B270, 0, 0);
}

uint64_t sub_24870B270()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24870B374()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24870B44C(uint64_t a1, uint64_t a2)
{
  v3[80] = v2;
  v3[79] = a2;
  v3[78] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v3[85] = swift_task_alloc();
  v4 = sub_2487309B0();
  v3[86] = v4;
  v3[87] = *(v4 - 8);
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66B8, &qword_2487355B8);
  v3[90] = v5;
  v3[91] = *(v5 - 8);
  v3[92] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24870B61C, 0, 0);
}

void sub_24870B61C()
{
  v1 = v0[79];
  v0[77] = MEMORY[0x277D84F90];
  sub_248730C20();
  sub_2486CF4C4(0, &qword_27EEA6338, 0x277D57038);
  v2 = sub_248730BF0();
  v3 = sub_2486CF4C4(0, &qword_27EEA66D0, 0x277D56858);
  sub_2486CF428();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_248733790;
  *(v4 + 32) = sub_2486CF4C4(0, &qword_27EEA66D8, 0x277D569E8);
  *(v4 + 40) = sub_2486CF4C4(0, &qword_27EEA66E0, 0x277D56A38);
  v5 = MEMORY[0x24C1D6B80](v3, v4);

  v6 = sub_248730C10();
  v0[93] = v6;

  if (v1 >> 62)
  {
    v7 = sub_248731790();
    v0[94] = v7;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[94] = v7;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  v8 = 0;
  v9 = v1 & 0xC000000000000001;
  v10 = v0[79] + 32;
  v11 = MEMORY[0x277D85000];
  do
  {
    if (v9)
    {
      v12 = MEMORY[0x24C1D7600](v8, v0[79]);
    }

    else
    {
      v12 = *(v10 + 8 * v8);
    }

    v13 = v12;
    ++v8;
    v14 = (*((*v11 & *v12) + 0x80))();
    v15 = sub_248730C10();
  }

  while (v7 != v8);
LABEL_10:
  v16 = v6;
  v17 = swift_task_alloc();
  v0[95] = v17;
  *v17 = v0;
  v17[1] = sub_24870B8AC;
  v18 = v0[92];
  v19 = v0[78];

  sub_248708388(v18, v19, v6);
}

uint64_t sub_24870B8AC()
{
  v2 = *(*v1 + 744);
  *(*v1 + 768) = v0;

  if (v0)
  {
    v3 = sub_24870DE0C;
  }

  else
  {
    v3 = sub_24870B9D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24870B9D8()
{
  v0[76] = sub_248730C40();
  v1 = MEMORY[0x277D84F90];
  v0[98] = MEMORY[0x277D84F90];
  v0[97] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66C0, qword_2487355C8);
  v3 = sub_24870DDB0(&qword_27EEA66C8, &qword_27EEA66C0, qword_2487355C8, MEMORY[0x277CE4870]);
  v4 = swift_task_alloc();
  v0[99] = v4;
  *v4 = v0;
  v4[1] = sub_24870BAF0;

  return MEMORY[0x282200308](v0 + 75, v2, v3);
}

uint64_t sub_24870BAF0()
{
  *(*v1 + 800) = v0;

  if (v0)
  {
    v2 = sub_24870CA84;
  }

  else
  {
    v2 = sub_24870BC04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24870BC28()
{
  v1 = *(v0 + 808);
  if (!v1)
  {
    v96 = *(v0 + 736);
    v97 = *(v0 + 728);
    v98 = *(v0 + 720);

    (*(v97 + 8))(v96, v98);

    v99 = *(v0 + 8);
    v100 = *(v0 + 776);

    return v99(v100);
  }

  v124 = (v0 + 584);
  *(v0 + 584) = MEMORY[0x277D84F90];
  v120 = v1;
  v2 = sub_248730C30();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_81;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_82:
    v7 = MEMORY[0x277D84F90];
LABEL_83:

    type metadata accessor for FeaturizedConversation();
    v3 = swift_allocObject();
    *(v3 + 16) = 2;
    *(v3 + 40) = v7;
    if (v7 >> 62)
    {
      goto LABEL_90;
    }

    v104 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v104)
    {
      goto LABEL_85;
    }

LABEL_91:
    v107 = 0;
    v106 = 0;
LABEL_92:
    *(v3 + 24) = v107;
    *(v3 + 32) = v106;
    v108 = *(v3 + 40);
    if (v108 >> 62)
    {
      if (sub_248731790())
      {
        goto LABEL_94;
      }
    }

    else if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_94:
      v109 = (v0 + 616);

      MEMORY[0x24C1D71A0](v110);
      if (*((*v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248731260();
      }

      sub_2487312A0();

      v111 = *v109;
      v112 = *v109;
      goto LABEL_99;
    }

    v112 = *(v0 + 784);
    v111 = *(v0 + 776);
LABEL_99:
    *(v0 + 784) = v112;
    *(v0 + 776) = v111;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66C0, qword_2487355C8);
    v114 = sub_24870DDB0(&qword_27EEA66C8, &qword_27EEA66C0, qword_2487355C8, MEMORY[0x277CE4870]);
    v115 = swift_task_alloc();
    *(v0 + 792) = v115;
    *v115 = v0;
    v115[1] = sub_24870BAF0;
    v104 = v0 + 600;
    v102 = v113;
    v103 = v114;

    return MEMORY[0x282200308](v104, v102, v103);
  }

LABEL_4:
  v5 = 0;
  v139 = v0 + 560;
  v6 = v3 & 0xC000000000000001;
  v118 = v3 & 0xFFFFFFFFFFFFFF8;
  v119 = (v0 + 568);
  v7 = MEMORY[0x277D84F90];
  v117 = v3 + 32;
  v138 = v0;
  v122 = v4;
  v123 = v3;
  v121 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v6)
    {
      v8 = MEMORY[0x24C1D7600](v5, v3);
    }

    else
    {
      if (v5 >= *(v118 + 16))
      {
        goto LABEL_89;
      }

      v8 = *(v117 + 8 * v5);
    }

    v9 = v8;
    v10 = __OFADD__(v5, 1);
    v11 = v5 + 1;
    if (v10)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      v4 = sub_248731790();
      if (!v4)
      {
        goto LABEL_82;
      }

      goto LABEL_4;
    }

    v126 = v11;
    *(v0 + 280) = sub_248730C70();
    *(v0 + 256) = v9;
    sub_2486C5B68(v0 + 256, v0 + 288);
    sub_248730D50();
    v125 = v9;
    if (swift_dynamicCast())
    {
      break;
    }

    sub_2486C5B68(v0 + 256, v0 + 320);
    if (swift_dynamicCast())
    {
      v3 = *v119;
      v25 = objc_allocWithZone(type metadata accessor for ConversationTurnAIMLIS(0));
      v26 = sub_248713D24(v3);
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
LABEL_68:
    v3 = v123;
    v5 = v126;
    v6 = v121;
    if (v126 == v122)
    {
      goto LABEL_83;
    }
  }

  v12 = *(v0 + 712);
  v13 = *(v0 + 696);
  v14 = *(v0 + 688);
  v15 = *(v0 + 680);
  v16 = *(v0 + 576);
  v17 = type metadata accessor for ConversationTurnPLL(0);
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn] = v16;
  *(v0 + 544) = v18;
  *(v0 + 552) = v17;

  v3 = objc_msgSendSuper2((v0 + 544), sel_init);

  sub_248730D40();

  v19 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  (*(v13 + 40))(v3 + v19, v12, v14);
  swift_endAccess();

  sub_248730D20();

  v20 = sub_248730970();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 48))(v15, 1, v20);
  v23 = *(v0 + 680);
  if (v22 == 1)
  {
    sub_2486C7940(*(v0 + 680), &qword_27EEA6240, &unk_248733390);
    v24 = 0;
  }

  else
  {
    sub_248730900();
    v24 = v27;
    (*(v21 + 8))(v23, v20);
  }

  v28 = v3 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp;
  v0 = v138;
  swift_beginAccess();
  *v28 = v24;
  *(v28 + 8) = v22 == 1;
  v29 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
  swift_beginAccess();
  *(v3 + v29) = 0;
  sub_24871082C();

  v26 = v3;
LABEL_17:

  v30 = *(v0 + 752);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v31 = sub_24871557C(v26);
  v127 = v26;
  if (!v30)
  {
LABEL_57:
    v137 = v31;
    v70 = *(v0 + 704);
    v71 = *(v0 + 696);
    v72 = *(v0 + 688);
    v73 = *(v0 + 672);
    v74 = &v26[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
    swift_beginAccess();
    v75 = *v74;
    v135 = v74[8];
    v76 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    (*(v71 + 16))(v70, &v26[v76], v72);
    v77 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
    swift_beginAccess();
    sub_2486D8A6C(&v26[v77], v73, &qword_27EEA5D90, &qword_2487333C0);
    if (v137[2] && (v78 = sub_2486C94CC(0x7165722E4843524FLL, 0xEE00644974736575), (v79 & 1) != 0))
    {
      v80 = *(v138 + 696);
      v81 = *(v138 + 688);
      v82 = *(v138 + 664);
      sub_2486C5B68(v137[7] + 32 * v78, v138 + 192);
      v83 = swift_dynamicCast();
      (*(v80 + 56))(v82, v83 ^ 1u, 1, v81);
    }

    else
    {
      (*(*(v138 + 696) + 56))(*(v138 + 664), 1, 1, *(v138 + 688));
    }

    v84 = *(v138 + 704);
    v85 = *(v138 + 696);
    v86 = *(v138 + 672);
    v87 = *(v138 + 664);
    v131 = *(v138 + 688);
    v133 = v87;
    v88 = *(v138 + 656);
    v89 = *(v138 + 648);
    v90 = sub_248730980();
    v129 = v91;
    sub_2486D8A6C(v87, v88, &qword_27EEA5D90, &qword_2487333C0);
    sub_2486D8A6C(v86, v89, &qword_27EEA5D90, &qword_2487333C0);
    type metadata accessor for FeaturizedConversationTurn(0);
    v92 = swift_allocObject();
    *(v92 + 16) = 1;
    v93 = sub_2486D3554(MEMORY[0x277D84F90]);
    sub_2486C7940(v86, &qword_27EEA5D90, &qword_2487333C0);
    (*(v85 + 8))(v84, v131);
    *(v92 + 24) = v93;
    *(v92 + 40) = v90;
    *(v92 + 48) = v129;
    if (v135)
    {
      v94 = -1.0;
    }

    else
    {
      v94 = v75;
    }

    *(v92 + 32) = v94;
    sub_2486C98BC(v88, v92 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26FeaturizedConversationTurn_requestID);
    v0 = v138;
    sub_2486C98BC(v89, v92 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26FeaturizedConversationTurn_clockId);
    swift_beginAccess();
    *(v92 + 24) = v137;

    sub_2486C7940(v133, &qword_27EEA5D90, &qword_2487333C0);

    MEMORY[0x24C1D71A0](v95);
    if (*((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248731260();
    }

    sub_2487312A0();

    v7 = *v124;
    goto LABEL_68;
  }

  v7 = 0;
  while (1)
  {
    v34 = *(v0 + 632);
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x24C1D7600](v7);
      goto LABEL_25;
    }

    if (v7 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v35 = *(v34 + 8 * v7 + 32);
LABEL_25:
    v3 = v35;
    v10 = __OFADD__(v7, 1);
    v36 = v7 + 1;
    if (v10)
    {
      goto LABEL_79;
    }

    v132 = v36;
    (*((*MEMORY[0x277D85000] & *v35) + 0x70))(v26);
    v37 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25IntraTurnFeatureExtractor_features;
    swift_beginAccess();
    v128 = v37;
    v130 = v3;
    v38 = *(v3 + v37);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v139 = v31;
    v40 = v38 + 64;
    v41 = -1 << *(v38 + 32);
    if (-v41 < 64)
    {
      v42 = ~(-1 << -v41);
    }

    else
    {
      v42 = -1;
    }

    v43 = v42 & *(v38 + 64);
    v134 = (63 - v41) >> 6;
    v136 = v38;

    v44 = 0;
    if (!v43)
    {
LABEL_33:
      if (v134 <= v44 + 1)
      {
        v47 = v44 + 1;
      }

      else
      {
        v47 = v134;
      }

      v48 = v47 - 1;
      while (1)
      {
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v46 >= v134)
        {
          v43 = 0;
          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          v44 = v48;
          *(v0 + 112) = 0u;
          goto LABEL_42;
        }

        v43 = *(v40 + 8 * v46);
        ++v44;
        if (v43)
        {
          v44 = v46;
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    while (1)
    {
      v46 = v44;
LABEL_41:
      v49 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v50 = v49 | (v46 << 6);
      v51 = (*(v136 + 48) + 16 * v50);
      v52 = *v51;
      v53 = v51[1];
      sub_2486C5B68(*(v136 + 56) + 32 * v50, v0 + 224);
      *(v0 + 112) = v52;
      *(v0 + 120) = v53;
      sub_2486C79A0((v0 + 224), (v0 + 128));

LABEL_42:
      v54 = *(v0 + 128);
      *(v0 + 64) = *(v0 + 112);
      *(v0 + 80) = v54;
      *(v0 + 96) = *(v0 + 144);
      v55 = *(v0 + 72);
      if (!v55)
      {
        break;
      }

      v56 = *(v0 + 64);
      sub_2486C5B68(v0 + 80, v0 + 32);
      *(v0 + 16) = v56;
      *(v0 + 24) = v55;

      sub_2486C7940(v0 + 64, &qword_27EEA6328, &qword_248734838);
      v57 = *(v0 + 24);
      if (!v57)
      {
        goto LABEL_20;
      }

      v58 = *(v0 + 16);
      sub_2486C79A0((v0 + 32), (v0 + 160));
      v3 = sub_2486C94CC(v58, v57);
      v60 = v31;
      v61 = v31[2];
      v62 = (v59 & 1) == 0;
      v63 = v61 + v62;
      if (__OFADD__(v61, v62))
      {
        goto LABEL_77;
      }

      v64 = v59;
      if (v60[3] >= v63)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v59 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        else
        {
          sub_2486E62F4();
          if ((v64 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

LABEL_31:

        v31 = *v139;
        v45 = (*(*v139 + 56) + 32 * v3);
        __swift_destroy_boxed_opaque_existential_0(v45);
        v0 = v138;
        sub_2486C79A0((v138 + 160), v45);
        isUniquelyReferenced_nonNull_native = 1;
        if (!v43)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_2486E45C8(v63, isUniquelyReferenced_nonNull_native & 1);
        v65 = sub_2486C94CC(v58, v57);
        if ((v64 & 1) != (v66 & 1))
        {

          return sub_2487318B0();
        }

        v3 = v65;
        if (v64)
        {
          goto LABEL_31;
        }

LABEL_51:
        v0 = v138;
        v31 = *v139;
        *(*v139 + 8 * (v3 >> 6) + 64) |= 1 << v3;
        v67 = (v31[6] + 16 * v3);
        *v67 = v58;
        v67[1] = v57;
        sub_2486C79A0((v138 + 160), (v31[7] + 32 * v3));
        v68 = v31[2];
        v10 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v10)
        {
          goto LABEL_78;
        }

        v31[2] = v69;
        isUniquelyReferenced_nonNull_native = 1;
        if (!v43)
        {
          goto LABEL_33;
        }
      }
    }

    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
LABEL_20:
    v32 = *(v0 + 752);

    v3 = v130;
    *&v130[v128] = MEMORY[0x277D84F98];

    v33 = v132 == v32;
    v7 = v132;
    v26 = v127;
    if (v33)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  v104 = sub_248731790();
  if (!v104)
  {
    goto LABEL_91;
  }

LABEL_85:
  if ((v7 & 0xC000000000000001) != 0)
  {

    v116 = MEMORY[0x24C1D7600](0, v7);

    v107 = *(v116 + 40);
    v106 = *(v116 + 48);

    swift_unknownObjectRelease();
    goto LABEL_92;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v105 = *(v7 + 32);
    v107 = *(v105 + 40);
    v106 = *(v105 + 48);

    goto LABEL_92;
  }

  __break(1u);
  return MEMORY[0x282200308](v104, v102, v103);
}

uint64_t sub_24870CA84()
{
  *(v0 + 592) = *(v0 + 800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_24870DE10, 0, 0);
}

id sub_24870CB38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24870CC00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24870CC70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_24870DDFC;

  return v6();
}

uint64_t sub_24870CD58(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2486D873C;

  return v7();
}

uint64_t sub_24870CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66E8, &qword_2487356D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2486D8A6C(a3, v23 - v10, &qword_27EEA66E8, &qword_2487356D8);
  v12 = sub_248731340();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2486C7940(v11, &qword_27EEA66E8, &qword_2487356D8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_248731330();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_248731300();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_248731070() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2486C7940(a3, &qword_27EEA66E8, &qword_2487356D8);

    return v21;
  }

LABEL_8:
  sub_2486C7940(a3, &qword_27EEA66E8, &qword_2487356D8);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_24870D13C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24870D234;

  return v6(a1);
}

uint64_t sub_24870D234()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of ConversationStream.streamConversations(bookmark:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24870D474;

  return v7(a1);
}

uint64_t sub_24870D474(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ConversationStream.streamFeaturizedConversations(bookmark:extractors:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24870DE00;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ConversationStreamAIMLIS.streamConversationsWithUtterance(bookmark:extractors:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24870DE00;

  return v9(a1, a2);
}

uint64_t sub_24870D810()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24870DDFC;

  return sub_248709B94(v2, v3, v4);
}

uint64_t sub_24870D8C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24870DDFC;

  return sub_24870CC70(v2, v3, v4);
}

uint64_t sub_24870D984(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24870DDFC;

  return sub_24870CD58(a1, v4, v5, v6);
}

uint64_t sub_24870DA50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24870DDFC;

  return sub_24870D13C(a1, v4);
}

uint64_t sub_24870DB08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2486D873C;

  return sub_24870D13C(a1, v4);
}

uint64_t sub_24870DBC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24870DDFC;

  return sub_248706B48(v2, v3, v4);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24870DCBC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2486D873C;

  return sub_24870566C(v2, v3);
}

uint64_t objectdestroy_34Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24870DDB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t BiomeSQLResult.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_24870DE78()
{
  v1 = [*(v0 + 16) columns];
  v2 = sub_248731240();

  return v2;
}

uint64_t sub_24870DEC8()
{
  v1 = [*(v0 + 16) row];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_248730F10();

  return v3;
}

id sub_24870DF38()
{
  v1 = [*(v0 + 16) error];

  return v1;
}

uint64_t BiomeSQLResult.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t AsyncBookmarkingSignalReader.conversationStreamsBookmarked(startBookmark:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v50 = a4;
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v8 = sub_248730970();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v13 = sub_248730DF0();
  v14 = __swift_project_value_buffer(v13, qword_28150F088);
  v15 = a1;
  v16 = sub_248730DD0();
  v17 = sub_2487313B0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v48 = v12;
    v49 = v7;
    v19 = v18;
    v46 = swift_slowAlloc();
    v53 = v46;
    *v19 = 136315138;
    v20 = v9;
    v21 = [v15 debugDescription];
    v22 = sub_248730FF0();
    v47 = v14;
    v23 = v22;
    v25 = v24;

    v9 = v20;
    v26 = sub_2486D3010(v23, v25, &v53);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_2486BF000, v16, v17, "Apply bookmark %s to PPL stream", v19, 0xCu);
    v27 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x24C1D8100](v27, -1, -1);
    v28 = v19;
    v12 = v48;
    v7 = v49;
    MEMORY[0x24C1D8100](v28, -1, -1);
  }

  sub_248730960();
  sub_2486F85E4(0);
  if (v29)
  {
    v30 = sub_248730DD0();
    v31 = sub_2487313B0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2486BF000, v30, v31, "No PLL timestamp found, creating a new bookmark for PLL", v32, 2u);
      MEMORY[0x24C1D8100](v32, -1, -1);
    }

    (*(v9 + 16))(v7, v12, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v33 = sub_2486F9978(0, v7);
    sub_2486E1660(v7);
    if (!v33)
    {
      v34 = sub_248730DD0();
      v35 = sub_2487313D0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_2486BF000, v34, v35, "Failed to update bookmark for conversation stream.", v36, 2u);
        MEMORY[0x24C1D8100](v36, -1, -1);
      }
    }

    sub_248730CC0();

    v37 = sub_248730CB0();
  }

  else
  {
    sub_248730CC0();
    v38 = v12;

    sub_2487308F0();
    v37 = sub_248730CA0();
    (*(v9 + 16))(v7, v12, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v39 = sub_2486F9978(0, v7);
    sub_2486E1660(v7);
    if (!v39)
    {
      v40 = sub_248730DD0();
      v41 = sub_2487313D0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_2486BF000, v40, v41, "Failed to update bookmark for conversation stream.", v42, 2u);
        v43 = v42;
        v12 = v38;
        MEMORY[0x24C1D8100](v43, -1, -1);
      }
    }
  }

  sub_248730D10();

  return (*(v9 + 8))(v12, v8);
}

id BMNotificationStream.publisherWithStreamsBookmark(startBookmark:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v46 - v5;
  v7 = sub_248730970();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248730960();
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v11 = sub_248730DF0();
  v12 = __swift_project_value_buffer(v11, qword_28150F088);
  v13 = a1;
  v14 = sub_248730DD0();
  v15 = sub_2487313B0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v48 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v46[1] = v12;
    v19 = v18;
    v50[0] = v18;
    *v17 = 136315138;
    v20 = [v13 debugDescription];
    v49 = v2;
    v47 = v7;
    v21 = v20;
    v22 = v6;
    v23 = v8;
    v24 = sub_248730FF0();
    v26 = v25;

    v27 = v24;
    v8 = v23;
    v6 = v22;
    v28 = sub_2486D3010(v27, v26, v50);

    *(v17 + 4) = v28;
    v7 = v47;
    v2 = v49;
    _os_log_impl(&dword_2486BF000, v14, v15, "Apply bookmark %s to NotificationStream", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C1D8100](v19, -1, -1);
    v29 = v17;
    v10 = v48;
    MEMORY[0x24C1D8100](v29, -1, -1);
  }

  v30 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v31 = *&v13[v30];
  if (*(v31 + 16))
  {

    v32 = sub_2486C94CC(0xD000000000000011, 0x800000024873C170);
    if (v33)
    {
      v34 = *(*(v31 + 56) + 8 * v32);

      (*(v8 + 16))(v6, v10, v7);
      (*(v8 + 56))(v6, 0, 1, v7);
      v35 = sub_2486F96D8(11, v6);
      sub_2486E1660(v6);
      if (!v35)
      {
        v36 = sub_248730DD0();
        v37 = sub_2487313D0();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_2486BF000, v36, v37, "Failed to update bookmark for notification stream.", v38, 2u);
          MEMORY[0x24C1D8100](v38, -1, -1);
        }
      }

      v39 = [v2 publisherFromStartTime_];
      goto LABEL_18;
    }
  }

  (*(v8 + 16))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v40 = sub_2486F96D8(11, v6);
  sub_2486E1660(v6);
  if (!v40)
  {
    v41 = sub_248730DD0();
    v42 = sub_2487313D0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2486BF000, v41, v42, "Failed to update bookmark for notification stream.", v43, 2u);
      MEMORY[0x24C1D8100](v43, -1, -1);
    }
  }

  v39 = [v2 publisherWithStartTime:0 endTime:0 maxEvents:0 reversed:0];
LABEL_18:
  v44 = v39;
  (*(v8 + 8))(v10, v7);
  return v44;
}

id MessagesReadFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MessagesReadFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesReadFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_24870EC20(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 idsHandle];
    if (v7)
    {
      v8 = v7;
      v9 = sub_248730FF0();
      v11 = v10;

      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v13[2] = 0;
    }

    v13[0] = v9;
    v13[1] = v11;
    v13[3] = v12;
    swift_beginAccess();
    sub_2486C6800(v13, 0xD000000000000016, 0x80000002487397E0);
    swift_endAccess();
  }
}

id MessagesReadFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesReadFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *static ConversationTurnFactory.create(rawTurn:)(uint64_t a1)
{
  sub_2486C5B68(a1, v7);
  sub_248730D50();
  if (swift_dynamicCast())
  {
    v2 = objc_allocWithZone(type metadata accessor for ConversationTurnPLL(0));
    return ConversationTurnPLL.init(turn:)(v6);
  }

  else
  {
    sub_2486C5B68(a1, v7);
    sub_248730C70();
    if (swift_dynamicCast())
    {
      v4 = objc_allocWithZone(type metadata accessor for ConversationTurnAIMLIS(0));
      v5 = sub_248713D24(v6);

      return v5;
    }

    else
    {
      return 0;
    }
  }
}

id Conversation.__allocating_init(turns:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t ConversationTurnType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_24870EEC8@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

char *ConversationTurnAIMLIS.__allocating_init(turn:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_248713D24(a1);

  return v4;
}

id ConversationTurnFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationTurnFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_24870F2FC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_24870F3B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  v5 = sub_2487309B0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24870F43C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2487309B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_24870F554@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  v4 = sub_2487309B0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24870F5DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  v4 = sub_2487309B0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_24870F6CC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_2486C7B38(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
  swift_beginAccess();
  sub_24870CC00(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_24870F78C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
  swift_beginAccess();
  return sub_2486C7B38(v1 + v3, a1);
}

uint64_t sub_24870F7E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
  swift_beginAccess();
  sub_24870CC00(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24870F934(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_24870F9F0()
{
  v1 = v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp;
  swift_beginAccess();
  return *v1;
}

void sub_24870FA3C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_24870FAFC()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24870FB40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id ConversationTurn.init()()
{
  v1 = sub_2487309B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 56))(&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID], 1, 1, v1);
  v5 = &v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_domain];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_domainSource];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
  *v7 = 0;
  v7[8] = 1;
  v8 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_asrEvents] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_flowEvents] = v8;
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_dimEvents] = v8;
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ueiEvents] = v8;
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_mhEvents] = v8;
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_orchEvents] = v8;
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ttsEvents] = v8;
  sub_2487309A0();
  (*(v2 + 32))(&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID], v4, v1);
  *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType] = 2;
  v9 = type metadata accessor for ConversationTurn(0);
  v11.receiver = v0;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_24870FDD8()
{
  v1 = v0;
  v2 = sub_2487309B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_248731650();
  v41 = v39;
  v42 = v40;
  MEMORY[0x24C1D70A0](0xD000000000000012, 0x800000024873C910);
  v6 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
  swift_beginAccess();
  v38[22] = *(v1 + v6);
  sub_248731710();
  MEMORY[0x24C1D70A0](0x727554202020200ALL, 0xEE00203A4449206ELL);
  v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  sub_24870111C();
  v8 = sub_248731850();
  MEMORY[0x24C1D70A0](v8);

  (*(v3 + 8))(v5, v2);
  MEMORY[0x24C1D70A0](0xD00000000000001BLL, 0x800000024873C930);
  v9 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_asrEvents;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 >> 62)
  {
    v11 = sub_248731790();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38[16] = v11;
  v12 = sub_248731850();
  MEMORY[0x24C1D70A0](v12);

  MEMORY[0x24C1D70A0](0xD00000000000001CLL, 0x800000024873C950);
  v13 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_flowEvents;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (v14 >> 62)
  {
    v15 = sub_248731790();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38[13] = v15;
  v16 = sub_248731850();
  MEMORY[0x24C1D70A0](v16);

  MEMORY[0x24C1D70A0](0xD00000000000001BLL, 0x800000024873C970);
  v17 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_dimEvents;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (v18 >> 62)
  {
    v19 = sub_248731790();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38[10] = v19;
  v20 = sub_248731850();
  MEMORY[0x24C1D70A0](v20);

  MEMORY[0x24C1D70A0](0xD00000000000001BLL, 0x800000024873C990);
  v21 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ueiEvents;
  swift_beginAccess();
  v22 = *(v1 + v21);
  if (v22 >> 62)
  {
    v23 = sub_248731790();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38[7] = v23;
  v24 = sub_248731850();
  MEMORY[0x24C1D70A0](v24);

  MEMORY[0x24C1D70A0](0xD00000000000001ALL, 0x800000024873C9B0);
  v25 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_mhEvents;
  swift_beginAccess();
  v26 = *(v1 + v25);
  if (v26 >> 62)
  {
    v27 = sub_248731790();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38[4] = v27;
  v28 = sub_248731850();
  MEMORY[0x24C1D70A0](v28);

  MEMORY[0x24C1D70A0](0xD00000000000001CLL, 0x800000024873C9D0);
  v29 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_orchEvents;
  swift_beginAccess();
  v30 = *(v1 + v29);
  if (v30 >> 62)
  {
    v31 = sub_248731790();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38[1] = v31;
  v32 = sub_248731850();
  MEMORY[0x24C1D70A0](v32);

  MEMORY[0x24C1D70A0](0xD00000000000001BLL, 0x800000024873C9F0);
  v33 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ttsEvents;
  swift_beginAccess();
  v34 = *(v1 + v33);
  if (v34 >> 62)
  {
    v35 = sub_248731790();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38[0] = v35;
  v36 = sub_248731850();
  MEMORY[0x24C1D70A0](v36);

  return v41;
}

id sub_2487103E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *ConversationTurnPLL.init(turn:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21[-v4];
  v6 = sub_2487309B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn] = a1;
  v10 = type metadata accessor for ConversationTurnPLL(0);
  v22.receiver = v1;
  v22.super_class = v10;

  v11 = objc_msgSendSuper2(&v22, sel_init);

  sub_248730D40();

  v12 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  (*(v7 + 40))(&v11[v12], v9, v6);
  swift_endAccess();

  sub_248730D20();

  v13 = sub_248730970();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v5, 1, v13);
  if (v15 == 1)
  {
    sub_2486C7940(v5, &qword_27EEA6240, &unk_248733390);
    v16 = 0;
  }

  else
  {
    sub_248730900();
    v16 = v17;
    (*(v14 + 8))(v5, v13);
  }

  v18 = &v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
  swift_beginAccess();
  *v18 = v16;
  v18[8] = v15 == 1;
  v19 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
  swift_beginAccess();
  *&v11[v19] = 0;
  sub_24871082C();

  return v11;
}

unint64_t sub_24871082C()
{
  v1 = v0;
  result = sub_248730D30();
  v3 = result;
  if (result >> 62)
  {
    result = sub_248731790();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_28:
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x24C1D7600](v5, v3) : *(v3 + 8 * v5 + 32);
      v7 = v6;
      v8 = sub_248710A78();
      if (v8)
      {
        break;
      }

      v11 = sub_24871104C();
      if (v11)
      {
        v9 = v11;
        v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_flowEvents;
        goto LABEL_22;
      }

      v12 = sub_248711620();
      if (v12)
      {
        v9 = v12;
        v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_dimEvents;
        goto LABEL_22;
      }

      v13 = sub_248711BF4();
      if (v13)
      {
        v9 = v13;
        v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ueiEvents;
        goto LABEL_22;
      }

      v14 = sub_2487121C8();
      if (v14)
      {
        v9 = v14;
        v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_mhEvents;
        goto LABEL_22;
      }

      v15 = sub_24871279C();
      if (v15)
      {
        v9 = v15;
        v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_orchEvents;
        goto LABEL_22;
      }

      v16 = sub_248712D70();
      if (v16)
      {
        v9 = v16;
        v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ttsEvents;
        goto LABEL_22;
      }

LABEL_25:
      ++v5;

      if (v4 == v5)
      {
      }
    }

    v9 = v8;
    v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_asrEvents;
LABEL_22:
    swift_beginAccess();
    v17 = v9;
    MEMORY[0x24C1D71A0]();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248731260();
    }

    sub_2487312A0();
    swift_endAccess();

    v7 = v17;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

id sub_248710A78()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 <= 13)
  {
    if (v2 > 6)
    {
      switch(v2)
      {
        case 7:
          if (v1 && (v34 = [v1 payload]) != 0)
          {
            v35 = v34;
            v36 = sub_2487308C0();
            v38 = v37;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v36, v38);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9A8];
          break;
        case 9:
          if (v1 && (v54 = [v1 payload]) != 0)
          {
            v55 = v54;
            v56 = sub_2487308C0();
            v58 = v57;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v56, v58);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9D0];
          break;
        case 13:
          if (v1 && (v14 = [v1 payload]) != 0)
          {
            v15 = v14;
            v16 = sub_2487308C0();
            v18 = v17;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v16, v18);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D57500];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 1:
          if (v1 && (v24 = [v1 payload]) != 0)
          {
            v25 = v24;
            v26 = sub_2487308C0();
            v28 = v27;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v26, v28);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A800];
          break;
        case 4:
          if (v1 && (v44 = [v1 payload]) != 0)
          {
            v45 = v44;
            v46 = sub_2487308C0();
            v48 = v47;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v46, v48);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D585A8];
          break;
        case 6:
          if (v1 && (v3 = [v1 payload]) != 0)
          {
            v4 = v3;
            v5 = sub_2487308C0();
            v7 = v6;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v5, v7);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A978];
          break;
        default:
LABEL_52:

          return 0;
      }
    }

LABEL_75:
    v66 = [objc_allocWithZone(v65) initWithData_];

    if (v66)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v2 <= 18)
  {
    switch(v2)
    {
      case 14:
        if (v1 && (v29 = [v1 payload]) != 0)
        {
          v30 = v29;
          v31 = sub_2487308C0();
          v33 = v32;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v31, v33);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D56C30];
        break;
      case 17:
        if (v1 && (v49 = [v1 payload]) != 0)
        {
          v50 = v49;
          v51 = sub_2487308C0();
          v53 = v52;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v51, v53);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D57038];
        break;
      case 18:
        if (v1 && (v9 = [v1 payload]) != 0)
        {
          v10 = v9;
          v11 = sub_2487308C0();
          v13 = v12;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v11, v13);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D590F0];
        break;
      default:
        goto LABEL_52;
    }

    goto LABEL_75;
  }

  if (v2 == 19)
  {
    if (v1 && (v39 = [v1 payload]) != 0)
    {
      v40 = v39;
      v41 = sub_2487308C0();
      v43 = v42;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v41, v43);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D59610];
    goto LABEL_75;
  }

  if (v2 != 20)
  {
    if (v2 != 23)
    {
      goto LABEL_52;
    }

    if (v1 && (v19 = [v1 payload]) != 0)
    {
      v20 = v19;
      v21 = sub_2487308C0();
      v23 = v22;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v21, v23);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D587F0];
    goto LABEL_75;
  }

  if (v1 && (v59 = [v1 payload]) != 0)
  {
    v60 = v59;
    v61 = sub_2487308C0();
    v63 = v62;

    v64 = sub_2487308A0();
    sub_2486CC7FC(v61, v63);
  }

  else
  {
    v64 = 0;
  }

  v68 = [objc_allocWithZone(MEMORY[0x277D56858]) initWithData_];

  return v68;
}

id sub_24871104C()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 > 13)
  {
    if (v2 > 18)
    {
      switch(v2)
      {
        case 19:
          if (v1 && (v40 = [v1 payload]) != 0)
          {
            v41 = v40;
            v42 = sub_2487308C0();
            v44 = v43;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v42, v44);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D59610];
          break;
        case 20:
          if (v1 && (v60 = [v1 payload]) != 0)
          {
            v61 = v60;
            v62 = sub_2487308C0();
            v64 = v63;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v62, v64);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D56858];
          break;
        case 23:
          if (v1 && (v20 = [v1 payload]) != 0)
          {
            v21 = v20;
            v22 = sub_2487308C0();
            v24 = v23;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v22, v24);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D587F0];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 14:
          if (v1 && (v30 = [v1 payload]) != 0)
          {
            v31 = v30;
            v32 = sub_2487308C0();
            v34 = v33;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v32, v34);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D56C30];
          break;
        case 17:
          if (v1 && (v50 = [v1 payload]) != 0)
          {
            v51 = v50;
            v52 = sub_2487308C0();
            v54 = v53;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v52, v54);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D57038];
          break;
        case 18:
          if (v1 && (v9 = [v1 payload]) != 0)
          {
            v10 = v9;
            v11 = sub_2487308C0();
            v13 = v12;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v11, v13);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D590F0];
          break;
        default:
          goto LABEL_52;
      }
    }

    goto LABEL_77;
  }

  if (v2 <= 6)
  {
    switch(v2)
    {
      case 1:
        if (v1 && (v25 = [v1 payload]) != 0)
        {
          v26 = v25;
          v27 = sub_2487308C0();
          v29 = v28;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v27, v29);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D5A800];
        break;
      case 4:
        if (v1 && (v45 = [v1 payload]) != 0)
        {
          v46 = v45;
          v47 = sub_2487308C0();
          v49 = v48;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v47, v49);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D585A8];
        break;
      case 6:
        if (v1 && (v3 = [v1 payload]) != 0)
        {
          v4 = v3;
          v5 = sub_2487308C0();
          v7 = v6;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v5, v7);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D5A978];
        break;
      default:
LABEL_52:

        return 0;
    }

LABEL_77:
    v68 = [objc_allocWithZone(v65) initWithData_];

    if (v68)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v2 == 7)
  {
    if (v1 && (v35 = [v1 payload]) != 0)
    {
      v36 = v35;
      v37 = sub_2487308C0();
      v39 = v38;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v37, v39);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D5A9A8];
    goto LABEL_77;
  }

  if (v2 == 9)
  {
    if (v1 && (v55 = [v1 payload]) != 0)
    {
      v56 = v55;
      v57 = sub_2487308C0();
      v59 = v58;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v57, v59);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D5A9D0];
    goto LABEL_77;
  }

  if (v2 != 13)
  {
    goto LABEL_52;
  }

  if (v1 && (v14 = [v1 payload]) != 0)
  {
    v15 = v14;
    v16 = sub_2487308C0();
    v18 = v17;

    v19 = sub_2487308A0();
    sub_2486CC7FC(v16, v18);
  }

  else
  {
    v19 = 0;
  }

  v66 = [objc_allocWithZone(MEMORY[0x277D57500]) initWithData_];

  return v66;
}

id sub_248711620()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 <= 13)
  {
    if (v2 > 6)
    {
      switch(v2)
      {
        case 7:
          if (v1 && (v34 = [v1 payload]) != 0)
          {
            v35 = v34;
            v36 = sub_2487308C0();
            v38 = v37;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v36, v38);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9A8];
          break;
        case 9:
          if (v1 && (v55 = [v1 payload]) != 0)
          {
            v56 = v55;
            v57 = sub_2487308C0();
            v59 = v58;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v57, v59);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9D0];
          break;
        case 13:
          if (v1 && (v14 = [v1 payload]) != 0)
          {
            v15 = v14;
            v16 = sub_2487308C0();
            v18 = v17;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v16, v18);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D57500];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 1:
          if (v1 && (v24 = [v1 payload]) != 0)
          {
            v25 = v24;
            v26 = sub_2487308C0();
            v28 = v27;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v26, v28);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A800];
          break;
        case 4:
          if (v1 && (v44 = [v1 payload]) != 0)
          {
            v45 = v44;
            v46 = sub_2487308C0();
            v48 = v47;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v46, v48);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D585A8];
          break;
        case 6:
          if (v1 && (v3 = [v1 payload]) != 0)
          {
            v4 = v3;
            v5 = sub_2487308C0();
            v7 = v6;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v5, v7);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A978];
          break;
        default:
LABEL_52:

          return 0;
      }
    }

LABEL_77:
    v68 = [objc_allocWithZone(v65) initWithData_];

    if (v68)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v2 > 18)
  {
    switch(v2)
    {
      case 19:
        if (v1 && (v39 = [v1 payload]) != 0)
        {
          v40 = v39;
          v41 = sub_2487308C0();
          v43 = v42;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v41, v43);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D59610];
        break;
      case 20:
        if (v1 && (v60 = [v1 payload]) != 0)
        {
          v61 = v60;
          v62 = sub_2487308C0();
          v64 = v63;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v62, v64);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D56858];
        break;
      case 23:
        if (v1 && (v19 = [v1 payload]) != 0)
        {
          v20 = v19;
          v21 = sub_2487308C0();
          v23 = v22;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v21, v23);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D587F0];
        break;
      default:
        goto LABEL_52;
    }

    goto LABEL_77;
  }

  if (v2 == 14)
  {
    if (v1 && (v29 = [v1 payload]) != 0)
    {
      v30 = v29;
      v31 = sub_2487308C0();
      v33 = v32;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v31, v33);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D56C30];
    goto LABEL_77;
  }

  if (v2 != 17)
  {
    if (v2 != 18)
    {
      goto LABEL_52;
    }

    if (v1 && (v9 = [v1 payload]) != 0)
    {
      v10 = v9;
      v11 = sub_2487308C0();
      v13 = v12;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v11, v13);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D590F0];
    goto LABEL_77;
  }

  if (v1 && (v49 = [v1 payload]) != 0)
  {
    v50 = v49;
    v51 = sub_2487308C0();
    v53 = v52;

    v54 = sub_2487308A0();
    sub_2486CC7FC(v51, v53);
  }

  else
  {
    v54 = 0;
  }

  v66 = [objc_allocWithZone(MEMORY[0x277D57038]) initWithData_];

  return v66;
}

id sub_248711BF4()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 > 13)
  {
    if (v2 > 18)
    {
      switch(v2)
      {
        case 19:
          if (v1 && (v40 = [v1 payload]) != 0)
          {
            v41 = v40;
            v42 = sub_2487308C0();
            v44 = v43;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v42, v44);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D59610];
          break;
        case 20:
          if (v1 && (v60 = [v1 payload]) != 0)
          {
            v61 = v60;
            v62 = sub_2487308C0();
            v64 = v63;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v62, v64);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D56858];
          break;
        case 23:
          if (v1 && (v19 = [v1 payload]) != 0)
          {
            v20 = v19;
            v21 = sub_2487308C0();
            v23 = v22;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v21, v23);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D587F0];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 14:
          if (v1 && (v30 = [v1 payload]) != 0)
          {
            v31 = v30;
            v32 = sub_2487308C0();
            v34 = v33;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v32, v34);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D56C30];
          break;
        case 17:
          if (v1 && (v50 = [v1 payload]) != 0)
          {
            v51 = v50;
            v52 = sub_2487308C0();
            v54 = v53;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v52, v54);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D57038];
          break;
        case 18:
          if (v1 && (v9 = [v1 payload]) != 0)
          {
            v10 = v9;
            v11 = sub_2487308C0();
            v13 = v12;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v11, v13);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D590F0];
          break;
        default:
          goto LABEL_52;
      }
    }

    goto LABEL_77;
  }

  if (v2 > 6)
  {
    switch(v2)
    {
      case 7:
        if (v1 && (v35 = [v1 payload]) != 0)
        {
          v36 = v35;
          v37 = sub_2487308C0();
          v39 = v38;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v37, v39);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D5A9A8];
        break;
      case 9:
        if (v1 && (v55 = [v1 payload]) != 0)
        {
          v56 = v55;
          v57 = sub_2487308C0();
          v59 = v58;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v57, v59);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D5A9D0];
        break;
      case 13:
        if (v1 && (v14 = [v1 payload]) != 0)
        {
          v15 = v14;
          v16 = sub_2487308C0();
          v18 = v17;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v16, v18);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D57500];
        break;
      default:
        goto LABEL_52;
    }

    goto LABEL_77;
  }

  if (v2 != 1)
  {
    if (v2 != 4)
    {
      if (v2 == 6)
      {
        if (v1 && (v3 = [v1 payload]) != 0)
        {
          v4 = v3;
          v5 = sub_2487308C0();
          v7 = v6;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v5, v7);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D5A978];
        goto LABEL_77;
      }

LABEL_52:

      return 0;
    }

    if (v1 && (v45 = [v1 payload]) != 0)
    {
      v46 = v45;
      v47 = sub_2487308C0();
      v49 = v48;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v47, v49);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D585A8];
LABEL_77:
    v68 = [objc_allocWithZone(v65) initWithData_];

    if (v68)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v1 && (v24 = [v1 payload]) != 0)
  {
    v25 = v24;
    v26 = sub_2487308C0();
    v28 = v27;

    v29 = sub_2487308A0();
    sub_2486CC7FC(v26, v28);
  }

  else
  {
    v29 = 0;
  }

  v66 = [objc_allocWithZone(MEMORY[0x277D5A800]) initWithData_];

  return v66;
}

id sub_2487121C8()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 <= 13)
  {
    if (v2 > 6)
    {
      switch(v2)
      {
        case 7:
          if (v1 && (v35 = [v1 payload]) != 0)
          {
            v36 = v35;
            v37 = sub_2487308C0();
            v39 = v38;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v37, v39);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9A8];
          break;
        case 9:
          if (v1 && (v55 = [v1 payload]) != 0)
          {
            v56 = v55;
            v57 = sub_2487308C0();
            v59 = v58;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v57, v59);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9D0];
          break;
        case 13:
          if (v1 && (v14 = [v1 payload]) != 0)
          {
            v15 = v14;
            v16 = sub_2487308C0();
            v18 = v17;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v16, v18);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D57500];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 1:
          if (v1 && (v25 = [v1 payload]) != 0)
          {
            v26 = v25;
            v27 = sub_2487308C0();
            v29 = v28;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v27, v29);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A800];
          break;
        case 4:
          if (v1 && (v45 = [v1 payload]) != 0)
          {
            v46 = v45;
            v47 = sub_2487308C0();
            v49 = v48;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v47, v49);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D585A8];
          break;
        case 6:
          if (v1 && (v3 = [v1 payload]) != 0)
          {
            v4 = v3;
            v5 = sub_2487308C0();
            v7 = v6;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v5, v7);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A978];
          break;
        default:
LABEL_52:

          return 0;
      }
    }

LABEL_77:
    v68 = [objc_allocWithZone(v65) initWithData_];

    if (v68)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v2 <= 18)
  {
    switch(v2)
    {
      case 14:
        if (v1 && (v30 = [v1 payload]) != 0)
        {
          v31 = v30;
          v32 = sub_2487308C0();
          v34 = v33;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v32, v34);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D56C30];
        break;
      case 17:
        if (v1 && (v50 = [v1 payload]) != 0)
        {
          v51 = v50;
          v52 = sub_2487308C0();
          v54 = v53;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v52, v54);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D57038];
        break;
      case 18:
        if (v1 && (v9 = [v1 payload]) != 0)
        {
          v10 = v9;
          v11 = sub_2487308C0();
          v13 = v12;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v11, v13);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D590F0];
        break;
      default:
        goto LABEL_52;
    }

    goto LABEL_77;
  }

  if (v2 == 19)
  {
    if (v1 && (v40 = [v1 payload]) != 0)
    {
      v41 = v40;
      v42 = sub_2487308C0();
      v44 = v43;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v42, v44);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D59610];
    goto LABEL_77;
  }

  if (v2 == 20)
  {
    if (v1 && (v60 = [v1 payload]) != 0)
    {
      v61 = v60;
      v62 = sub_2487308C0();
      v64 = v63;

      v8 = sub_2487308A0();
      sub_2486CC7FC(v62, v64);
    }

    else
    {
      v8 = 0;
    }

    v65 = MEMORY[0x277D56858];
    goto LABEL_77;
  }

  if (v2 != 23)
  {
    goto LABEL_52;
  }

  if (v1 && (v19 = [v1 payload]) != 0)
  {
    v20 = v19;
    v21 = sub_2487308C0();
    v23 = v22;

    v24 = sub_2487308A0();
    sub_2486CC7FC(v21, v23);
  }

  else
  {
    v24 = 0;
  }

  v66 = [objc_allocWithZone(MEMORY[0x277D587F0]) initWithData_];

  return v66;
}

id sub_24871279C()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 <= 13)
  {
    if (v2 > 6)
    {
      switch(v2)
      {
        case 7:
          if (v1 && (v34 = [v1 payload]) != 0)
          {
            v35 = v34;
            v36 = sub_2487308C0();
            v38 = v37;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v36, v38);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9A8];
          break;
        case 9:
          if (v1 && (v55 = [v1 payload]) != 0)
          {
            v56 = v55;
            v57 = sub_2487308C0();
            v59 = v58;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v57, v59);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A9D0];
          break;
        case 13:
          if (v1 && (v14 = [v1 payload]) != 0)
          {
            v15 = v14;
            v16 = sub_2487308C0();
            v18 = v17;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v16, v18);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D57500];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 1:
          if (v1 && (v24 = [v1 payload]) != 0)
          {
            v25 = v24;
            v26 = sub_2487308C0();
            v28 = v27;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v26, v28);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A800];
          break;
        case 4:
          if (v1 && (v45 = [v1 payload]) != 0)
          {
            v46 = v45;
            v47 = sub_2487308C0();
            v49 = v48;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v47, v49);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D585A8];
          break;
        case 6:
          if (v1 && (v3 = [v1 payload]) != 0)
          {
            v4 = v3;
            v5 = sub_2487308C0();
            v7 = v6;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v5, v7);
          }

          else
          {
            v8 = 0;
          }

          v65 = MEMORY[0x277D5A978];
          break;
        default:
LABEL_52:

          return 0;
      }
    }

LABEL_77:
    v68 = [objc_allocWithZone(v65) initWithData_];

    if (v68)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v2 <= 18)
  {
    switch(v2)
    {
      case 14:
        if (v1 && (v29 = [v1 payload]) != 0)
        {
          v30 = v29;
          v31 = sub_2487308C0();
          v33 = v32;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v31, v33);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D56C30];
        break;
      case 17:
        if (v1 && (v50 = [v1 payload]) != 0)
        {
          v51 = v50;
          v52 = sub_2487308C0();
          v54 = v53;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v52, v54);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D57038];
        break;
      case 18:
        if (v1 && (v9 = [v1 payload]) != 0)
        {
          v10 = v9;
          v11 = sub_2487308C0();
          v13 = v12;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v11, v13);
        }

        else
        {
          v8 = 0;
        }

        v65 = MEMORY[0x277D590F0];
        break;
      default:
        goto LABEL_52;
    }

    goto LABEL_77;
  }

  if (v2 != 19)
  {
    if (v2 == 20)
    {
      if (v1 && (v60 = [v1 payload]) != 0)
      {
        v61 = v60;
        v62 = sub_2487308C0();
        v64 = v63;

        v8 = sub_2487308A0();
        sub_2486CC7FC(v62, v64);
      }

      else
      {
        v8 = 0;
      }

      v65 = MEMORY[0x277D56858];
    }

    else
    {
      if (v2 != 23)
      {
        goto LABEL_52;
      }

      if (v1 && (v19 = [v1 payload]) != 0)
      {
        v20 = v19;
        v21 = sub_2487308C0();
        v23 = v22;

        v8 = sub_2487308A0();
        sub_2486CC7FC(v21, v23);
      }

      else
      {
        v8 = 0;
      }

      v65 = MEMORY[0x277D587F0];
    }

    goto LABEL_77;
  }

  if (v1 && (v39 = [v1 payload]) != 0)
  {
    v40 = v39;
    v41 = sub_2487308C0();
    v43 = v42;

    v44 = sub_2487308A0();
    sub_2486CC7FC(v41, v43);
  }

  else
  {
    v44 = 0;
  }

  v66 = [objc_allocWithZone(MEMORY[0x277D59610]) initWithData_];

  return v66;
}

uint64_t sub_248712D70()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 > 13)
  {
    if (v2 > 18)
    {
      switch(v2)
      {
        case 19:
          if (v1 && (v39 = [v1 payload]) != 0)
          {
            v40 = v39;
            v41 = sub_2487308C0();
            v43 = v42;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v41, v43);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D59610];
          break;
        case 20:
          if (v1 && (v59 = [v1 payload]) != 0)
          {
            v60 = v59;
            v61 = sub_2487308C0();
            v63 = v62;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v61, v63);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D56858];
          break;
        case 23:
          if (v1 && (v19 = [v1 payload]) != 0)
          {
            v20 = v19;
            v21 = sub_2487308C0();
            v23 = v22;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v21, v23);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D587F0];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 14:
          if (v1 && (v29 = [v1 payload]) != 0)
          {
            v30 = v29;
            v31 = sub_2487308C0();
            v33 = v32;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v31, v33);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D56C30];
          break;
        case 17:
          if (v1 && (v49 = [v1 payload]) != 0)
          {
            v50 = v49;
            v51 = sub_2487308C0();
            v53 = v52;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v51, v53);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D57038];
          break;
        case 18:
          if (v1 && (v9 = [v1 payload]) != 0)
          {
            v10 = v9;
            v11 = sub_2487308C0();
            v13 = v12;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v11, v13);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D590F0];
          break;
        default:
          goto LABEL_52;
      }
    }
  }

  else if (v2 > 6)
  {
    switch(v2)
    {
      case 7:
        if (v1 && (v34 = [v1 payload]) != 0)
        {
          v35 = v34;
          v36 = sub_2487308C0();
          v38 = v37;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v36, v38);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D5A9A8];
        break;
      case 9:
        if (v1 && (v54 = [v1 payload]) != 0)
        {
          v55 = v54;
          v56 = sub_2487308C0();
          v58 = v57;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v56, v58);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D5A9D0];
        break;
      case 13:
        if (v1 && (v14 = [v1 payload]) != 0)
        {
          v15 = v14;
          v16 = sub_2487308C0();
          v18 = v17;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v16, v18);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D57500];
        break;
      default:
        goto LABEL_52;
    }
  }

  else
  {
    switch(v2)
    {
      case 1:
        if (v1 && (v24 = [v1 payload]) != 0)
        {
          v25 = v24;
          v26 = sub_2487308C0();
          v28 = v27;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v26, v28);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D5A800];
        break;
      case 4:
        if (v1 && (v44 = [v1 payload]) != 0)
        {
          v45 = v44;
          v46 = sub_2487308C0();
          v48 = v47;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v46, v48);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D585A8];
        break;
      case 6:
        if (v1 && (v3 = [v1 payload]) != 0)
        {
          v4 = v3;
          v5 = sub_2487308C0();
          v7 = v6;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v5, v7);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D5A978];
        break;
      default:
LABEL_52:

        return 0;
    }
  }

  v65 = [objc_allocWithZone(v64) initWithData_];

  if (v65)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

char *ConversationTurnAIMLIS.init(turn:)(void *a1)
{
  v2 = sub_248713D24(a1);

  return v2;
}

unint64_t sub_2487133FC()
{
  v1 = v0;
  result = sub_248730BB0();
  v3 = result;
  if (result >> 62)
  {
    result = sub_248731790();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_31:
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1D7600](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = sub_248730AD0();
      if (v8)
      {
        v9 = v8;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_asrEvents;
LABEL_19:
          swift_beginAccess();
          v13 = v9;
LABEL_20:
          v14 = v13;
          MEMORY[0x24C1D71A0]();
          if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_248731260();
          }

          sub_2487312A0();
          swift_endAccess();
          goto LABEL_23;
        }
      }

      v11 = sub_248730AD0();
      if (v11)
      {
        v9 = v11;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_dimEvents;
          goto LABEL_19;
        }
      }

      v12 = sub_248730AD0();
      if (v12)
      {
        v9 = v12;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ueiEvents;
          goto LABEL_19;
        }
      }

      v15 = sub_248730AD0();
      if (!v15)
      {
        goto LABEL_24;
      }

      v14 = v15;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_orchEvents;
        swift_beginAccess();
        v13 = v14;
        goto LABEL_20;
      }

LABEL_23:

      v7 = v14;
LABEL_24:
      ++v5;

      if (v4 == v5)
      {
      }
    }
  }

  __break(1u);
  return result;
}

id Conversation.init(turns:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Conversation();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_24871384C()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
LABEL_28:
    if (sub_248731790())
    {
      result = sub_248731790();
      goto LABEL_3;
    }

    return 1;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return 1;
  }

LABEL_3:
  v4 = v1 & 0xC000000000000001;
  if (result != 1)
  {
    goto LABEL_8;
  }

  if (v4)
  {
    goto LABEL_34;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v1 + 32); ; i = MEMORY[0x24C1D7600](0, v1))
    {
      v6 = i;
      v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
      swift_beginAccess();
      v8 = *&v6[v7];

      if (v8 != 2)
      {
        return 1;
      }

LABEL_8:
      if (v4)
      {
        break;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(v1 + 32);
        goto LABEL_11;
      }

      __break(1u);
LABEL_34:
      ;
    }

    v9 = MEMORY[0x24C1D7600](0, v1);
LABEL_11:
    v10 = v9;
    v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
    swift_beginAccess();
    v12 = *&v10[v11];

    if (v2)
    {
      v13 = sub_248731790();
    }

    else
    {
      v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (j = 0; ; ++j)
    {
      v2 = v13 == j;
      if (v13 == j)
      {
        break;
      }

      if (v4)
      {
        v15 = MEMORY[0x24C1D7600](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v15 = *(v1 + 8 * j + 32);
      }

      v16 = v15;
      if (__OFADD__(j, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v17 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
      swift_beginAccess();
      v18 = *&v16[v17];

      if (v18 == 2 || v18 != v12)
      {
        return v2;
      }
    }

    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_248713A34()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns);
  if (v1 >> 62)
  {
    v2 = sub_248731790();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0xD000000000000012;
  if (!v2)
  {
    return v3;
  }

  sub_248731650();
  result = MEMORY[0x24C1D70A0](0xD000000000000023, 0x800000024873CA80);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1D7600](0, v1);
    goto LABEL_7;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v1 + 32);
LABEL_7:
    v6 = v5;
    swift_beginAccess();

    sub_248731710();
    MEMORY[0x24C1D70A0](0xD000000000000026, 0x800000024873CAB0);
    if (v1 >> 62)
    {
      sub_248731790();
    }

    v7 = sub_248731850();
    MEMORY[0x24C1D70A0](v7);

    return 0;
  }

  __break(1u);
  return result;
}

id sub_248713BF8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_248730FC0();

  return v5;
}

id Conversation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_248713D24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29[-v4];
  v6 = sub_2487309B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn] = a1;
  v10 = type metadata accessor for ConversationTurnAIMLIS(0);
  v30.receiver = v1;
  v30.super_class = v10;
  a1;
  v11 = objc_msgSendSuper2(&v30, sel_init);
  v12 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn;
  v13 = *&v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn];
  v14 = v11;
  v15 = v13;
  sub_248730C60();

  v16 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
  swift_beginAccess();
  (*(v7 + 40))(&v14[v16], v9, v6);
  swift_endAccess();

  sub_248714D6C();
  v17 = sub_248730B70();
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = v17;
  result = sub_248730AE0();
  if (result)
  {
    v20 = result;
    sub_248730B10();

    (*(v7 + 56))(v5, 0, 1, v6);
    v21 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
    swift_beginAccess();
    sub_24870CC00(v5, &v14[v21]);
    swift_endAccess();
LABEL_4:
    v22 = *&v11[v12];
    v23 = v14;
    v24 = v22;
    sub_248730BD0();
    v26 = v25;

    v27 = &v23[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
    swift_beginAccess();
    *v27 = v26;
    v27[8] = 0;
    v28 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
    swift_beginAccess();
    *&v23[v28] = 1;

    sub_2487133FC();
    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_248714048(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2487140A8()
{
  result = qword_27EEA6740;
  if (!qword_27EEA6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6740);
  }

  return result;
}

unint64_t sub_248714100()
{
  result = qword_27EEA6748;
  if (!qword_27EEA6748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA6750, &qword_2487358B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6748);
  }

  return result;
}

void sub_24871417C(uint64_t a1)
{
  sub_2487309B0();
  if (v1 <= 0x3F)
  {
    sub_2486CA054(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_248714D6C()
{
  result = qword_27EEA5E68;
  if (!qword_27EEA5E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEA5E68);
  }

  return result;
}

uint64_t sub_248714DCC()
{
  sub_248730C20();
  v0 = sub_2486CF4C4(0, &qword_27EEA66D0, 0x277D56858);
  sub_2486CF428();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_248733790;
  *(v1 + 32) = sub_2486CF4C4(0, &qword_27EEA66D8, 0x277D569E8);
  *(v1 + 40) = sub_2486CF4C4(0, &qword_27EEA66E0, 0x277D56A38);
  v2 = MEMORY[0x24C1D6B80](v0, v1);

  return v2;
}

unint64_t sub_248714EB4(void *a1)
{
  v1 = [a1 package];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = [v1 postItn];

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = [v3 utterances];
  if (v4)
  {
    v5 = v4;
    sub_2486CF4C4(0, &qword_27EEA6398, 0x277D56AB0);
    v6 = sub_248731240();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = [v3 phrases];
  if (v7)
  {
    v8 = v7;
    sub_2486CF4C4(0, &qword_27EEA6390, 0x277D56A00);
    i = sub_248731240();

    if (!(v6 >> 62))
    {
      goto LABEL_8;
    }

LABEL_68:
    result = sub_248731790();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

  i = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_68;
  }

LABEL_8:
  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_69:

    return MEMORY[0x277D84F90];
  }

LABEL_9:
  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_86;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v11 = *(v6 + 32);
LABEL_12:
  v12 = v11;

  v13 = [v12 interpretationIndices];
  if (v13)
  {
    v14 = v13;
    sub_2486CF4C4(0, &qword_27EEA6388, 0x277CCABB0);
    v15 = sub_248731240();

    if (!(v15 >> 62))
    {
LABEL_14:
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_15;
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_14;
    }
  }

  v16 = sub_248731790();
LABEL_15:
  v44 = v12;
  v45 = v3;
  v46 = i;
  v47 = v15;
  if (v16)
  {
    v6 = 0;
    v17 = v15 & 0xC000000000000001;
    v54 = i & 0xC000000000000001;
    v55 = v15 & 0xFFFFFFFFFFFFFF8;
    v52 = i & 0xFFFFFFFFFFFFFF8;
    v53 = v15 + 32;
    v51 = i + 32;
    v18 = MEMORY[0x277D84F90];
    v48 = v15 & 0xC000000000000001;
    v49 = v16;
    while (1)
    {
      if (v17)
      {
        v20 = MEMORY[0x24C1D7600](v6, v47);
      }

      else
      {
        if (v6 >= *(v55 + 16))
        {
          goto LABEL_77;
        }

        v20 = *(v53 + 8 * v6);
      }

      v21 = v20;
      v22 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        v11 = MEMORY[0x24C1D7600](0, v6);
        goto LABEL_12;
      }

      if (v54)
      {
        v23 = MEMORY[0x24C1D7600](v6, v46);
      }

      else
      {
        if (v6 >= *(v52 + 16))
        {
          goto LABEL_78;
        }

        v23 = *(v51 + 8 * v6);
      }

      v24 = v23;
      v25 = [v23 interpretations];

      if (v25)
      {
        sub_2486CF4C4(0, &qword_27EEA6378, 0x277D56968);
        v6 = sub_248731240();

        v26 = [v21 integerValue];
        if ((v6 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x24C1D7600](v26, v6);
        }

        else
        {
          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_81;
          }

          if (v26 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_82;
          }

          v27 = *(v6 + 8 * v26 + 32);
        }

        v28 = v27;

        v29 = v28;
        v30 = [v28 tokens];
        if (v30)
        {
          v31 = v30;
          sub_2486CF4C4(0, &qword_27EEA6380, 0x277D56AA0);
          v6 = sub_248731240();
        }

        else
        {
          v6 = MEMORY[0x277D84F90];
        }

        v25 = v29;
      }

      else
      {
        v6 = MEMORY[0x277D84F90];
      }

      i = v6 >> 62;
      if (v6 >> 62)
      {
        v32 = sub_248731790();
      }

      else
      {
        v32 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3 = (v18 >> 62);
      if (v18 >> 62)
      {
        v33 = sub_248731790();
      }

      else
      {
        v33 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 = v32;
      v34 = __OFADD__(v33, v32);
      v35 = v33 + v32;
      if (v34)
      {
        goto LABEL_79;
      }

      v56 = v21;
      v57 = v22;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v3)
      {
        goto LABEL_46;
      }

LABEL_47:
      v18 = sub_248731690();
      v3 = (v18 & 0xFFFFFFFFFFFFFF8);
LABEL_48:
      v36 = v3[2];
      v37 = v3[3];
      if (i)
      {
        v38 = sub_248731790();
        if (v38)
        {
LABEL_52:
          if (((v37 >> 1) - v36) < v58)
          {
            goto LABEL_83;
          }

          v50 = v3;
          if (i)
          {
            if (v38 < 1)
            {
              goto LABEL_85;
            }

            sub_24870DDB0(&qword_27EEA6790, &qword_27EEA6788, qword_248735AA8, MEMORY[0x277D83988]);
            for (i = 0; i != v38; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6788, qword_248735AA8);
              v39 = sub_2486C7838(v59, i, v6);
              v41 = *v40;
              (v39)(v59, 0);
              v3[v36 + 4 + i] = v41;
            }

            v17 = v48;
            v16 = v49;
            v3 = v58;
          }

          else
          {
            i = v6 & 0xFFFFFFFFFFFFFF8;
            sub_2486CF4C4(0, &qword_27EEA6380, 0x277D56AA0);
            v3 = v58;
            swift_arrayInitWithCopy();
          }

          v19 = v57;
          if (v3 > 0)
          {
            v42 = v50[2];
            v34 = __OFADD__(v42, v3);
            v43 = v3 + v42;
            if (v34)
            {
              goto LABEL_84;
            }

            v50[2] = v43;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v38 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v38)
        {
          goto LABEL_52;
        }
      }

      v19 = v57;
      if (v58 > 0)
      {
        goto LABEL_80;
      }

LABEL_18:
      v6 = v19;
      if (v19 == v16)
      {
        goto LABEL_74;
      }
    }

    if (!v3)
    {
      v3 = (v18 & 0xFFFFFFFFFFFFFF8);
      if (v35 <= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

LABEL_46:
    sub_248731790();
    goto LABEL_47;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_74:

  return v18;
}

unint64_t sub_24871557C(uint64_t a1)
{
  swift_beginAccess();

  v2 = sub_2486EFD10(v1);

  v4 = sub_2486EFEA0(v3);

  if (v2 >> 62)
  {
    goto LABEL_68;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248731790())
  {
    v64 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      v6 = sub_248731790();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    v55 = v2 & 0xC000000000000001;
    v51 = v2 + 32;
    v52 = v2 & 0xFFFFFFFFFFFFFF8;
    v62 = v4 & 0xC000000000000001;
    v63 = v4 + 32;
    v8 = MEMORY[0x277D84F90];
    v53 = i;
    v54 = v2;
    v59 = v4;
    v60 = v6;
    while (1)
    {
      if (v55)
      {
        v9 = MEMORY[0x24C1D7600](v7, v2);
        v10 = __OFADD__(v7, 1);
        v11 = v7 + 1;
        if (v10)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v7 >= *(v52 + 16))
        {
          goto LABEL_67;
        }

        v9 = *(v51 + 8 * v7);
        v10 = __OFADD__(v7, 1);
        v11 = v7 + 1;
        if (v10)
        {
          goto LABEL_66;
        }
      }

      v57 = v11;
      v58 = v8;
      v12 = v9;
      v13 = [v9 package];
      v14 = [v13 postItn];

      v65 = [v14 linkId];
      v56 = v12;
      v15 = sub_248714EB4(v12);
      if (v6)
      {
        break;
      }

LABEL_56:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
      sub_24870DDB0(&qword_27EEA6360, &qword_27EEA5F80, &qword_248733300, MEMORY[0x277D83958]);
      v41 = sub_248730F90();
      v43 = v42;

      v8 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2486C44B4(0, *(v58 + 2) + 1, 1, v58);
      }

      v45 = *(v8 + 2);
      v44 = *(v8 + 3);
      v46 = v65;
      if (v45 >= v44 >> 1)
      {
        v8 = sub_2486C44B4((v44 > 1), v45 + 1, 1, v8);
        v46 = v65;
      }

      *(v8 + 2) = v45 + 1;
      v47 = &v8[16 * v45];
      *(v47 + 4) = v41;
      *(v47 + 5) = v43;
      v2 = v54;
      v7 = v57;
      if (v57 == v53)
      {
        goto LABEL_70;
      }
    }

    v2 = 0;
    v61 = v15 & 0xFFFFFFFFFFFFFF8;
    v68 = v15 & 0xC000000000000001;
    v16 = MEMORY[0x277D84F90];
    v17 = v62;
    v67 = v15;
    while (1)
    {
      v18 = v15;
      if (v17)
      {
        v19 = MEMORY[0x24C1D7600](v2, v4);
        v10 = __OFADD__(v2++, 1);
        if (v10)
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      else
      {
        if (v2 >= *(v64 + 16))
        {
          goto LABEL_64;
        }

        v19 = *(v63 + 8 * v2);
        v10 = __OFADD__(v2++, 1);
        if (v10)
        {
          goto LABEL_63;
        }
      }

      v66 = v19;
      v20 = [v19 linkId];
      if (!v20)
      {
        break;
      }

      v21 = v20;
      if (v65)
      {
        sub_2486CF4C4(0, &qword_27EEA6370, 0x277D5AC78);
        v22 = v65;
        v23 = sub_248731530();

        if (v23)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

LABEL_15:

LABEL_16:
      v15 = v18;
      if (v2 == v6)
      {
        goto LABEL_56;
      }
    }

    if (v65)
    {
      goto LABEL_15;
    }

LABEL_28:
    v24 = [v66 tokens];
    if (v24)
    {
      v25 = v24;
      sub_2486CF4C4(0, &qword_27EEA6368, 0x277D56AA8);
      v26 = sub_248731240();

      if (!(v18 >> 62))
      {
LABEL_30:
        v27 = v18;
        v28 = *(v61 + 16);
        if (v28)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v26 = 0;
      if (!(v18 >> 62))
      {
        goto LABEL_30;
      }
    }

    v40 = sub_248731790();
    v27 = v18;
    v28 = v40;
    if (!v40)
    {
LABEL_54:

LABEL_55:
      v6 = v60;
      v17 = v62;
      goto LABEL_16;
    }

LABEL_31:
    if (v28 >= 1)
    {
      v29 = 0;
      while (1)
      {
        if (v68)
        {
          v4 = MEMORY[0x24C1D7600](v29, v27);
          if (!v26)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v4 = *(v27 + 8 * v29 + 32);
          if (!v26)
          {
            goto LABEL_42;
          }
        }

        v30 = [v4 linkIndex];
        if ((v26 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x24C1D7600]();
        }

        else
        {
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v30)
          {
            __break(1u);
            goto LABEL_63;
          }

          v31 = *(v26 + 32 + 8 * v30);
        }

        v32 = v31;

        v33 = [v32 text];

        if (!v33)
        {
LABEL_42:
          v34 = 0;
          v36 = 0xE000000000000000;
          goto LABEL_43;
        }

        v34 = sub_248730FF0();
        v36 = v35;

LABEL_43:
        if ([v4 appendSpaceAfter])
        {
          MEMORY[0x24C1D70A0](32, 0xE100000000000000);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_2486C44B4(0, *(v16 + 2) + 1, 1, v16);
        }

        v38 = *(v16 + 2);
        v37 = *(v16 + 3);
        if (v38 >= v37 >> 1)
        {
          v16 = sub_2486C44B4((v37 > 1), v38 + 1, 1, v16);
        }

        ++v29;

        *(v16 + 2) = v38 + 1;
        v39 = &v16[16 * v38];
        *(v39 + 4) = v34;
        *(v39 + 5) = v36;
        v27 = v67;
        if (v28 == v29)
        {
          v18 = v67;

          v4 = v59;
          goto LABEL_55;
        }
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_70:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2487335F0;
  *(inited + 32) = 0x74736F702E525341;
  *(inited + 40) = 0xEB000000006E7449;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  *(inited + 48) = v8;
  v49 = sub_2486D3554(inited);
  swift_setDeallocating();
  sub_2486D964C(inited + 32);
  return v49;
}

id VoiceTriggerStatisticsEventFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoiceTriggerStatisticsEventFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceTriggerStatisticsEventFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_248715DD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v43 - v6;
  v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v9 = *(a1 + v8);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = v9;
    v13 = [v11 absoluteTimestamp];
    if (v13)
    {
      v14 = v13;
      sub_248730950();

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = sub_248730970();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v5, v15, 1, v16);
    sub_2486E16DC(v5, v7);
    if ((*(v17 + 48))(v7, 1, v16) == 1)
    {
      sub_2486E1660(v7);
      v44 = 0u;
      v45 = 0u;
    }

    else
    {
      *(&v45 + 1) = v16;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v44);
      (*(v17 + 32))(boxed_opaque_existential_0, v7, v16);
    }

    swift_beginAccess();
    sub_2486C6800(&v44, 0xD00000000000002CLL, 0x800000024873A140);
    swift_endAccess();
    v19 = [v11 firstPassTriggerSource];
    v20 = MEMORY[0x277D849A8];
    *(&v45 + 1) = MEMORY[0x277D849A8];
    LODWORD(v44) = v19;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD000000000000031, 0x800000024873A170);
    swift_endAccess();
    [v11 firstPassPeakScoreHS];
    v21 = MEMORY[0x277D839F8];
    *(&v45 + 1) = MEMORY[0x277D839F8];
    *&v44 = v22;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD00000000000002FLL, 0x800000024873A1B0);
    swift_endAccess();
    [v11 firstPassPeakScoreJS];
    *(&v45 + 1) = v21;
    *&v44 = v23;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD00000000000002FLL, 0x800000024873A1E0);
    swift_endAccess();
    [v11 hwSampleRate];
    *(&v45 + 1) = v21;
    *&v44 = v24;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD000000000000027, 0x800000024873A210);
    swift_endAccess();
    v25 = [v11 invocationTypeID];
    *(&v45 + 1) = v20;
    LODWORD(v44) = v25;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD00000000000002BLL, 0x800000024873A240);
    swift_endAccess();
    [v11 mitigationScore];
    *(&v45 + 1) = v21;
    *&v44 = v26;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD00000000000002ALL, 0x800000024873A270);
    swift_endAccess();
    [v11 recognizerScoreHS];
    *(&v45 + 1) = v21;
    *&v44 = v27;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD00000000000002CLL, 0x800000024873A2A0);
    swift_endAccess();
    [v11 recognizerScoreJS];
    *(&v45 + 1) = v21;
    *&v44 = v28;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD00000000000002CLL, 0x800000024873A2D0);
    swift_endAccess();
    [v11 repetitionSimilarityScore];
    *(&v45 + 1) = v21;
    *&v44 = v29;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD000000000000034, 0x800000024873A300);
    swift_endAccess();
    [v11 tdSpeakerRecognizerCombinedScore];
    *(&v45 + 1) = v21;
    *&v44 = v30;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD00000000000003BLL, 0x800000024873A340);
    swift_endAccess();
    [v11 triggerScoreHS];
    *(&v45 + 1) = v21;
    *&v44 = v31;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD000000000000029, 0x800000024873A380);
    swift_endAccess();
    [v11 triggerScoreJS];
    *(&v45 + 1) = v21;
    *&v44 = v32;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD000000000000029, 0x800000024873A3B0);
    swift_endAccess();
    v33 = [v11 configVersion];
    if (v33)
    {
      v34 = v33;
      v35 = sub_248730FF0();
      v37 = v36;

      v38 = MEMORY[0x277D837D0];
    }

    else
    {
      v35 = 0;
      v37 = 0;
      v38 = 0;
      *&v45 = 0;
    }

    *&v44 = v35;
    *(&v44 + 1) = v37;
    *(&v45 + 1) = v38;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD000000000000028, 0x800000024873A3E0);
    swift_endAccess();
    [v11 keywordThresholdHS];
    *(&v45 + 1) = v21;
    *&v44 = v39;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD00000000000002DLL, 0x800000024873A410);
    swift_endAccess();
    [v11 keywordThresholdJS];
    *(&v45 + 1) = v21;
    *&v44 = v40;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD00000000000002DLL, 0x800000024873A440);
    swift_endAccess();
    [v11 tdSpeakerRecognizerCombinedThresholdHS];
    *(&v45 + 1) = v21;
    *&v44 = v41;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD000000000000041, 0x800000024873A470);
    swift_endAccess();
    [v11 tdSpeakerRecognizerCombinedThresholdJS];
    *(&v45 + 1) = v21;
    *&v44 = v42;
    swift_beginAccess();
    sub_2486C6800(&v44, 0xD000000000000041, 0x800000024873A4C0);
    swift_endAccess();
  }
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getVoiceTriggerIsRejected(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {

    v3 = sub_2486C94CC(0xD000000000000016, 0x800000024873A680);
    if (v4)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 2;
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getHasNextTurn(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {

    v3 = sub_2486C94CC(0x547478654E736168, 0xEB000000006E7275);
    if (v4)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 2;
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getHasNextRejection(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {

    v3 = sub_2486C94CC(0xD000000000000010, 0x800000024873A6C0);
    if (v4)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 2;
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getHasAppLaunchEvent(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {

    v3 = sub_2486C94CC(0xD000000000000011, 0x800000024873A700);
    if (v4)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 2;
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getHasAppIntentEvent(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {

    v3 = sub_2486C94CC(0xD000000000000011, 0x800000024873A740);
    if (v4)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 2;
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getHasTextInputEvent(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {

    v3 = sub_2486C94CC(0xD000000000000011, 0x800000024873A780);
    if (v4)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 2;
}

uint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getHasDeviceUnlockEvent(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  if (*(v2 + 16))
  {

    v3 = sub_2486C94CC(0xD000000000000014, 0x800000024873A7C0);
    if (v4)
    {
      sub_2486C5B68(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 2;
}

unint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getDeltaTimeNextTurn(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_2486C94CC(0xD000000000000013, 0x800000024873A6A0);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_2486C5B68(*(v2 + 56) + 32 * v4, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
LABEL_7:
    v6 = 1;
    return v3 | (v6 << 32);
  }

  v6 = 0;
  v3 = v8;
  return v3 | (v6 << 32);
}

unint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getDeltaTimeNextRejection(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_2486C94CC(0xD000000000000018, 0x800000024873A6E0);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_2486C5B68(*(v2 + 56) + 32 * v4, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
LABEL_7:
    v6 = 1;
    return v3 | (v6 << 32);
  }

  v6 = 0;
  v3 = v8;
  return v3 | (v6 << 32);
}

unint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getDeltaTimeAppLaunch(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_2486C94CC(0xD000000000000014, 0x800000024873A720);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_2486C5B68(*(v2 + 56) + 32 * v4, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
LABEL_7:
    v6 = 1;
    return v3 | (v6 << 32);
  }

  v6 = 0;
  v3 = v8;
  return v3 | (v6 << 32);
}

unint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getDeltaTimeAppIntent(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_2486C94CC(0xD000000000000019, 0x800000024873A760);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_2486C5B68(*(v2 + 56) + 32 * v4, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
LABEL_7:
    v6 = 1;
    return v3 | (v6 << 32);
  }

  v6 = 0;
  v3 = v8;
  return v3 | (v6 << 32);
}

unint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getDeltaTimeTextInput(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_2486C94CC(0xD000000000000014, 0x800000024873A7A0);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_2486C5B68(*(v2 + 56) + 32 * v4, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
LABEL_7:
    v6 = 1;
    return v3 | (v6 << 32);
  }

  v6 = 0;
  v3 = v8;
  return v3 | (v6 << 32);
}

unint64_t static VoiceTriggerStatisticsEventFeatureExtractor.getDeltaTimeDeviceUnlock(featurizedEvent:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_2486C94CC(0xD000000000000017, 0x800000024873A7E0);
  if ((v5 & 1) == 0)
  {

    goto LABEL_6;
  }

  sub_2486C5B68(*(v2 + 56) + 32 * v4, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
LABEL_7:
    v6 = 1;
    return v3 | (v6 << 32);
  }

  v6 = 0;
  v3 = v8;
  return v3 | (v6 << 32);
}

id VoiceTriggerStatisticsEventFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceTriggerStatisticsEventFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BiomeSQLDatabase.__allocating_init(biomeEventTypes:bookmark:endTimes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BiomeSQLDatabase();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables] = 0;
  v9 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes] = 0;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB] = 0;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_biomeEventTypes] = a1;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_bookmark] = a2;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_additionalFunctions] = 0;
  *&v7[v8] = 0;
  *&v7[v9] = a3;
  v11.receiver = v7;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, sel_init);
}

id BiomeSQLDatabase.__allocating_init(biomeEventTypes:bookmark:additionalFunctions:endTimes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BiomeSQLDatabase();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables;
  *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables] = 0;
  v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes;
  *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes] = 0;
  *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB] = 0;
  *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_biomeEventTypes] = a1;
  *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_bookmark] = a2;
  *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_additionalFunctions] = a3;
  *&v9[v10] = 0;
  *&v9[v11] = a4;
  v13.receiver = v9;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, sel_init);
}

id BiomeSQLDatabase.__allocating_init(biomeEventTypes:bookmark:additionalFunctions:unifiedVirtualTables:endTimes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables;
  *&v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables] = 0;
  v13 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes;
  *&v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes] = 0;
  *&v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB] = 0;
  *&v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_biomeEventTypes] = a1;
  *&v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_bookmark] = a2;
  *&v11[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_additionalFunctions] = a3;
  *&v11[v12] = a4;
  *&v11[v13] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id BiomeSQLDatabase.init(biomeEventTypes:bookmark:additionalFunctions:unifiedVirtualTables:endTimes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables] = 0;
  v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes] = 0;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB] = 0;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_biomeEventTypes] = a1;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_bookmark] = a2;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_additionalFunctions] = a3;
  *&v5[v6] = a4;
  *&v5[v7] = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for BiomeSQLDatabase();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_248717394()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB;
  v2 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB);
  }

  else
  {
    v4 = sub_2487173F8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2487173F8(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v41 = sub_2487179D8();
  if (*(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_unifiedVirtualTables))
  {

    sub_2486C3B80(v2);
  }

  v3 = objc_allocWithZone(MEMORY[0x277CF1A88]);
  sub_2486CF4C4(0, &qword_27EEA5AC0, 0x277CF1B50);
  v4 = sub_248731230();
  v5 = [v3 initWithAdditionalVirtualTables:v4 privileges:0 isColumnAccessLoggingEnabled:0];

  v6 = _s26DeepThoughtBiomeFoundation20UserDefinedFunctionsO010predefinedG0SayAA18FunctionDefinitionVGyFZ_0();
  v7 = *(v6 + 2);
  v8 = &unk_248734000;
  if (v7)
  {
    v34 = a1;
    v9 = (v6 + 64);
    do
    {
      v11 = *(v9 - 4);
      v12 = *(v9 - 1);
      v13 = *v9;

      v14 = sub_248730FC0();
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      *(v15 + 24) = v13;
      v39 = sub_24871921C;
      v40 = v15;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_2487177EC;
      v38 = &block_descriptor_25;
      v16 = _Block_copy(&aBlock);

      aBlock = 0;
      LODWORD(v12) = [v5 registerFunctionWithName:v14 numArgs:v11 function:v16 error:&aBlock];
      _Block_release(v16);

      if (v12)
      {
        v10 = aBlock;
      }

      else
      {
        v17 = aBlock;
        v18 = sub_2487307E0();

        swift_willThrow();
      }

      v9 += 5;
      --v7;
    }

    while (v7);

    a1 = v34;
    v8 = &unk_248734000;
  }

  else
  {
  }

  v19 = *(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_additionalFunctions);

  if (v19)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 64);
      v22 = v8[162];
      do
      {
        v24 = *(v21 - 4);
        v26 = *(v21 - 1);
        v25 = *v21;

        v27 = sub_248730FC0();
        v28 = swift_allocObject();
        *(v28 + 16) = v26;
        *(v28 + 24) = v25;
        v39 = sub_24871925C;
        v40 = v28;
        aBlock = MEMORY[0x277D85DD0];
        v36 = v22;
        v37 = sub_2487177EC;
        v38 = &block_descriptor_32_0;
        v29 = _Block_copy(&aBlock);

        aBlock = 0;
        v30 = [v5 registerFunctionWithName:v27 numArgs:v24 function:v29 error:&aBlock];
        _Block_release(v29);

        if (v30)
        {
          v23 = aBlock;
        }

        else
        {
          v31 = aBlock;
          v32 = sub_2487307E0();

          swift_willThrow();
        }

        v21 += 5;
        --v20;
      }

      while (v20);
    }
  }

  return v5;
}

id sub_2487177EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_248731240();

  v4(v13, v5, a3);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_248731870();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void (*sub_248717978(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_248717394();
  return sub_2487179C0;
}

void sub_2487179C0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB);
  *(v1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase____lazy_storage___biomeDB) = v2;
}

uint64_t sub_2487179D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v54 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v52 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v55 = v0;
  v6 = *&v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_biomeEventTypes];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 32);
    v50 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_endTimes;
    v49[1] = v59;
    v51 = v49 - v4;
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      v11 = _s26DeepThoughtBiomeFoundation0C18LibraryStreamUtilsO03getcF09eventTypeSo12BMStreamBaseCSgAA05EventJ0O_tFZ_0(v10);
      if (!v11)
      {
        goto LABEL_5;
      }

      v12 = v11;
      v56 = v8;
      v13 = [v11 schema];
      v14 = [v13 tableName];

      v15 = sub_248730FF0();
      v17 = v16;

      aBlock = v15;
      v58 = v17;
      v62 = 46;
      v63 = 0xE100000000000000;
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_2486D8A18();
      sub_248731580();

      v18 = [v12 schema];
      v19 = [v18 columns];

      sub_2486CF4C4(0, &qword_27EEA6620, 0x277CF1A80);
      sub_248731240();

      v20 = objc_allocWithZone(MEMORY[0x277CF1AA0]);
      v21 = sub_248730FC0();

      v22 = sub_248731230();

      v23 = [v20 initWithTableName:v21 columns:v22];

      if (v23)
      {
        break;
      }

LABEL_4:
      v8 = v56;
LABEL_5:
      if (!--v7)
      {
        return v5;
      }
    }

    v24 = *&v55[v50];
    if (v24)
    {
      v25 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
      v27 = v26;
      swift_beginAccess();
      v28 = *(v24 + 16);
      if (*(v28 + 16))
      {

        v29 = sub_2486C94CC(v25, v27);
        v31 = v30;

        if (v31)
        {
          v32 = *(v28 + 56);
          v33 = sub_248730970();
          v34 = *(v33 - 8);
          v35 = v34;
          v36 = v32 + *(v34 + 72) * v29;
          v37 = v51;
          (*(v34 + 16))(v51, v36, v33);

          (*(v35 + 56))(v37, 0, 1, v33);
LABEL_15:
          v39 = v52;
          sub_2486C5C10(v37, v52);
          v40 = (*(v54 + 80) + 32) & ~*(v54 + 80);
          v41 = swift_allocObject();
          v42 = v55;
          *(v41 + 16) = v9;
          *(v41 + 24) = v42;
          sub_2486E16DC(v39, v41 + v40);
          v43 = objc_allocWithZone(MEMORY[0x277CF1B50]);
          v59[2] = sub_2487190D4;
          v59[3] = v41;
          aBlock = MEMORY[0x277D85DD0];
          v58 = 1107296256;
          v59[0] = sub_2487188B0;
          v59[1] = &block_descriptor_2;
          v44 = _Block_copy(&aBlock);
          v45 = v42;
          v46 = [v43 initWithSchema:v23 publisherBlockWithOptions:v44 acceptPublisherOptions:0];
          _Block_release(v44);

          v47 = v46;
          MEMORY[0x24C1D71A0]();
          if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_248731260();
          }

          sub_2487312A0();

          sub_2486E1660(v37);
          v5 = v64;
          goto LABEL_4;
        }
      }

      else
      {
      }
    }

    v38 = sub_248730970();
    v37 = v51;
    (*(*(v38 - 8) + 56))(v51, 1, 1, v38);
    goto LABEL_15;
  }

  return v5;
}

uint64_t sub_248717FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s26DeepThoughtBiomeFoundation0C18LibraryStreamUtilsO03getcE9Publisher9eventType8bookmark17overwriteBookmark7endTimeSo014BMBookmarkableI0CyyXlGSgAA05EventK0O_AA07StreamsN0CSgSb0D04DateVSgtFZ_0(a2, *(a3 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16BiomeSQLDatabase_bookmark), 0, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA67C8, &qword_248735B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA67D0, &qword_248735B80);
  swift_dynamicCast();
  return v5;
}

uint64_t static BiomeSQLDatabase.createUnifiedSiriTurnTable(dataModelClass:bookmark:useCase:endTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24871812C;

  return sub_248718918(a1, a2, a3, a4, a5);
}

uint64_t sub_24871812C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_248718228(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA67D8, &qword_248735B88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA67E0, &unk_248735B90);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_248730B30();
  *(swift_allocObject() + 16) = a3;
  type metadata accessor for UnifiedSiriTurnBase(0);
  sub_2487191B8();
  sub_248730AC0();

  (*(v6 + 8))(v8, v5);
  v13 = sub_248730AA0();
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t static BiomeSQLDatabase.createUnifiedSiriTurnBaseTable(bookmark:useCase:endTime:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2487184DC, 0, 0);
}

uint64_t sub_2487184DC()
{
  v1 = v0[5];
  v2 = type metadata accessor for UnifiedSiriTurnBase(0);
  v3 = sub_248730970();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2487185DC;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_248718918(v2, v7, v8, v5, v6);
}

uint64_t sub_2487185DC(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v6 = *v1;

  sub_2486E1660(v3);

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2487186FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_248717394();
  v3 = sub_2487313A0();

  type metadata accessor for BiomeSQLResult();
  result = swift_allocObject();
  *(result + 16) = v3;
  return result;
}

id BiomeSQLDatabase.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeSQLDatabase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeSQLDatabase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2487188B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_248718918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2487189BC, 0, 0);
}

uint64_t sub_2487189BC()
{
  v1 = *(v0 + 184);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v4 = type metadata accessor for StreamsBookmark();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  *v6 = 0x4C4D4941706D6574;
  *(v6 + 1) = 0xEA00000000005349;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v3;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(v2);
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  v7 = objc_msgSendSuper2((v0 + 144), sel_init);
  if (v1)
  {
    v8 = *(v0 + 184);

    v7 = v8;
  }

  *(v0 + 224) = v7;
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  v11 = sub_2486F85E4(1);
  v13 = v12;
  sub_2486C5C10(v9, v10);
  v14 = sub_248730970();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v10, 1, v14);
  v17 = *(v0 + 216);
  if (v16 == 1)
  {
    v18 = sub_2486E1660(*(v0 + 216));
    v19 = 0;
  }

  else
  {
    sub_248730900();
    v21 = v20;
    v18 = (*(v15 + 8))(v17, v14);
    v19 = v21;
  }

  v22 = *(v0 + 200);
  *(v0 + 160) = 0xD000000000000013;
  *(v0 + 168) = 0x800000024873CED0;
  if (v22)
  {
    MEMORY[0x24C1D70A0](*(v0 + 192));
    MEMORY[0x24C1D70A0](46, 0xE100000000000000);
  }

  v23 = (*(*(v0 + 176) + 192))(v18);
  if (!v23)
  {
    sub_248730C20();
    v23 = sub_248730BE0();
  }

  *(v0 + 232) = v23;
  v24 = v23;
  sub_248730B50();
  *(v0 + 240) = *(v0 + 168);
  v25 = swift_task_alloc();
  *(v0 + 248) = v25;
  *v25 = v0;
  v25[1] = sub_248718CB8;

  return MEMORY[0x2821377A8](v0 + 64, v24, v11, v13 & 1, v19, v16 == 1, 0, 1);
}

uint64_t sub_248718CB8()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_248718F5C;
  }

  else
  {
    v2 = sub_248718DE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248718DE8()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[22];
  _s26DeepThoughtBiomeFoundation12SchemaMapperO03getcE014dataModelClassSo11BMSQLSchemaCAA19UnifiedSiriTurnBaseCm_tFZ_0(v3);
  v5 = v4;
  sub_2486E8718((v0 + 8), (v0 + 13));
  v6 = swift_allocObject();
  sub_2486CD01C((v0 + 13), v6 + 16);
  *(v6 + 56) = v3;
  v7 = objc_allocWithZone(MEMORY[0x277CF1B50]);
  v0[6] = sub_24871916C;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2487188B0;
  v0[5] = &block_descriptor_16;
  v8 = _Block_copy(v0 + 2);
  v9 = [v7 initWithSchema:v5 publisherBlockWithOptions:v8 acceptPublisherOptions:0];

  _Block_release(v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_248718F5C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_2487190D4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_248717FCC(a1, v4, v5, v6);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2487191B8()
{
  result = qword_27EEA67E8;
  if (!qword_27EEA67E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA67D8, &qword_248735B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA67E8);
  }

  return result;
}

uint64_t Embedder.embeddingModel.getter(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_248731040();
}

uint64_t dispatch thunk of Embedder.embed(text:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24871812C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of Embedder.embed(texts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_248719560;

  return v9(a1, a2, a3);
}

uint64_t EmbeddingsIntraFeaturizedTurnFeatureExtractor.defaultModelVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultModelVersion);

  return v1;
}

uint64_t EmbeddingsIntraFeaturizedTurnFeatureExtractor.defaultLocale.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultLocale);

  return v1;
}

id sub_2487195E8(void *a1)
{
  result = [a1 subwordTokenEmbedding];
  if (result)
  {
    v2 = result;
    v3 = [result embeddingVersion];

    if (!v3)
    {
      return 0;
    }

    v4 = sub_248730FF0();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_248719674(void *a1)
{
  result = [a1 subwordTokenEmbedding];
  if (result)
  {
    v2 = result;
    v3 = [result embeddingDim];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2487196CC(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = sub_2487309E0();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24871978C, 0, 0);
}

uint64_t sub_24871978C()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v4 = [objc_allocWithZone(MEMORY[0x277CF3B40]) init];
  v0[49] = v4;

  sub_2487309C0();
  v5 = sub_2487309D0();
  v0[50] = v5;
  (*(v2 + 8))(v1, v3);
  v6 = sub_248730FC0();
  v0[51] = v6;
  v0[2] = v0;
  v0[3] = sub_248719950;
  v7 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6808, &qword_248735BF8);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_24871A60C;
  v0[21] = &block_descriptor_3;
  v0[22] = v7;
  [v4 setupWithLocale:v5 embeddingVersion:v6 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_248719950()
{
  v1 = *(*v0 + 48);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = sub_24871A2DC;
  }

  else
  {
    v2 = sub_248719A60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248719A60()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 352);

  swift_beginAccess();
  v3 = *(v2 + 24);

  v5 = sub_2486C86E8(0x74736F702E525341, 0xEB000000006E7449, v3, v4);

  if (v5)
  {
    if (v5[2])
    {
      v6 = v5[4];
      *(v0 + 424) = v6;
      v7 = v5[5];
      *(v0 + 432) = v7;

      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v9 = *(v0 + 392);
        v10 = sub_248730FC0();
        *(v0 + 440) = v10;
        *(v0 + 80) = v0;
        *(v0 + 120) = v0 + 344;
        *(v0 + 88) = sub_248719CA8;
        v11 = swift_continuation_init();
        *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6810, qword_248735C00);
        *(v0 + 208) = MEMORY[0x277D85DD0];
        *(v0 + 216) = 1107296256;
        *(v0 + 224) = sub_24871A6B8;
        *(v0 + 232) = &block_descriptor_3;
        *(v0 + 240) = v11;
        [v9 processEmbeddingRequest:v10 completionHandler:v0 + 208];

        return MEMORY[0x282200938](v0 + 80);
      }
    }

    else
    {
      v12 = *(v0 + 392);
    }
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_248719CA8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 448) = v1;
  if (v1)
  {
    v2 = sub_24871A428;
  }

  else
  {

    v2 = sub_248719DC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_248719DC0()
{
  v33 = v0;
  v1 = *(v0 + 344);

  sub_24871A998(v1, 1);
  v3 = v2;
  if (!*(v2 + 16))
  {

    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v16 = sub_248730DF0();
    __swift_project_value_buffer(v16, qword_28150F088);
    v17 = sub_248730DD0();
    v18 = sub_2487313D0();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 392);
    if (!v19)
    {
      goto LABEL_21;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Empty subwords array";
    goto LABEL_20;
  }

  result = [v1 subwordTokenEmbedding];
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = result;
  v6 = [result embeddingDim];

  result = [v1 subwordTokenEmbedding];
  if (!result)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result embeddingVersion];

  if (!v8)
  {

    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v23 = sub_248730DF0();
    __swift_project_value_buffer(v23, qword_28150F088);
    v17 = sub_248730DD0();
    v18 = sub_2487313D0();
    v24 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 392);
    if (!v24)
    {
      goto LABEL_21;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Embeddings version not found";
    goto LABEL_20;
  }

  v9 = sub_248730FF0();
  v11 = v10;

  sub_24871ABC8(v1, v3);
  if (v12)
  {
    v13 = v12;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
    v29 = v3;
    swift_beginAccess();

    sub_2486C6800(&v29, 0xD000000000000013, 0x8000000248739270);
    v32 = MEMORY[0x277D84D38];
    v29 = v6;
    sub_2486C6800(&v29, 0xD00000000000001FLL, 0x80000002487392D0);
    v32 = MEMORY[0x277D837D0];
    v29 = v9;
    v30 = v11;
    sub_2486C6800(&v29, 0xD00000000000001CLL, 0x80000002487392F0);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEA5FA0, &unk_248734090);
    v29 = v13;

    sub_2486C6800(&v29, 0xD00000000000001CLL, 0x8000000248739290);
    swift_endAccess();
    v14 = sub_24871B090(v3, v13, v6);

    if (v14)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5AB0, &qword_248733008);
    }

    else
    {
      v15 = 0;
      v30 = 0;
      v31 = 0;
    }

    v27 = *(v0 + 392);
    v29 = v14;
    v32 = v15;
    swift_beginAccess();
    sub_2486C6800(&v29, 0xD00000000000001DLL, 0x80000002487392B0);
    swift_endAccess();

    goto LABEL_24;
  }

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v25 = sub_248730DF0();
  __swift_project_value_buffer(v25, qword_28150F088);
  v17 = sub_248730DD0();
  v18 = sub_2487313D0();
  v26 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 392);
  if (v26)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Subword embeddings not found";
LABEL_20:
    _os_log_impl(&dword_2486BF000, v17, v18, v22, v21, 2u);
    MEMORY[0x24C1D8100](v21, -1, -1);
  }

LABEL_21:

LABEL_24:

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_24871A2DC()
{
  v1 = v0[51];
  v2 = v0[50];
  swift_willThrow();

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v3 = sub_248730DF0();
  __swift_project_value_buffer(v3, qword_28150F088);
  v4 = sub_248730DD0();
  v5 = sub_2487313D0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[52];
  v8 = v0[49];
  if (v6)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2486BF000, v4, v5, "Unable to set up CDM client", v9, 2u);
    MEMORY[0x24C1D8100](v9, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24871A428()
{
  v17 = v0;
  v1 = v0[55];
  swift_willThrow();

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v2 = sub_248730DF0();
  __swift_project_value_buffer(v2, qword_28150F088);

  v3 = sub_248730DD0();
  v4 = sub_2487313D0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[56];
  v7 = v0[54];
  if (v5)
  {
    v8 = v0[53];
    v9 = v0[49];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    v12 = sub_2486D3010(v8, v7, &v16);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_2486BF000, v3, v4, "Unable to compute embeddings for utterance: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1D8100](v11, -1, -1);
    MEMORY[0x24C1D8100](v10, -1, -1);
  }

  else
  {
    v13 = v0[49];
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24871A60C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24871A6B8(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

id EmbeddingsIntraFeaturizedTurnFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmbeddingsIntraFeaturizedTurnFeatureExtractor.init()()
{
  v1 = &v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultModelVersion];
  *v1 = 0x3030322E30303333;
  *(v1 + 1) = 0xEB00000000302E30;
  v2 = &v0[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation45EmbeddingsIntraFeaturizedTurnFeatureExtractor_defaultLocale];
  *v2 = 0x53552D6E65;
  *(v2 + 1) = 0xE500000000000000;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EmbeddingsIntraFeaturizedTurnFeatureExtractor();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_24871A8C8()
{
}

id EmbeddingsIntraFeaturizedTurnFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmbeddingsIntraFeaturizedTurnFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24871A998(void *a1, char a2)
{
  v4 = [a1 subwordTokenChain];
  if (!v4)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v5 = v4;
  v6 = [v4 subwordTokens];

  if (!v6)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v7 = [v6 count];

  if (a2)
  {
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_27;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (v7 < v9)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v9 == v7)
  {
    return;
  }

  v10 = MEMORY[0x277D84F90];
  v11 = v9;
  do
  {
    v12 = v11;
    while (1)
    {
      if (v11 < v9 || v12 >= v7)
      {
        __break(1u);
        goto LABEL_26;
      }

      v13 = [a1 subwordTokenChain];
      if (!v13)
      {
        goto LABEL_28;
      }

      v14 = v13;
      v15 = [v13 subwordTokensAtIndex_];

      if (v15)
      {
        break;
      }

LABEL_12:
      if (v7 == ++v12)
      {
        return;
      }
    }

    v16 = [v15 value];
    if (!v16)
    {

      goto LABEL_12;
    }

    v17 = v10;
    v18 = v16;
    v19 = sub_248730FF0();
    v24 = v20;

    v25 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_2486C44B4(0, *(v17 + 2) + 1, 1, v17);
    }

    v22 = *(v17 + 2);
    v21 = *(v17 + 3);
    v10 = v17;
    if (v22 >= v21 >> 1)
    {
      v10 = sub_2486C44B4((v21 > 1), v22 + 1, 1, v17);
    }

    v11 = (v12 + 1);

    *(v10 + 2) = v22 + 1;
    v23 = &v10[16 * v22];
    *(v23 + 4) = v25;
    *(v23 + 5) = v24;
  }

  while (v7 - 1 != v12);
}

void sub_24871ABC8(void *a1, uint64_t a2)
{
  sub_2486D3FD4(MEMORY[0x277D84F90]);
  v5 = [a1 subwordTokenEmbedding];
  if (!v5)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v6 = v5;
  v7 = [v5 embeddingDim];

  v8 = [a1 subwordTokenEmbedding];
  if (!v8)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v9 = v8;
  v10 = [v8 embeddingTensor];

  if (!v10)
  {
LABEL_48:
    __break(1u);
    return;
  }

  v11 = [v10 valuesCount];

  if (v7 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = *(a2 + 16);
  v2 = v12 * v7;
  v38 = v12;
  if ((v12 * v7) >> 64 != (v12 * v7) >> 63)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((v2 & 0x8000000000000000) != 0 || v11 != v2)
  {

    if (qword_28150EE60 == -1)
    {
LABEL_28:
      v27 = sub_248730DF0();
      __swift_project_value_buffer(v27, qword_28150F088);
      v28 = sub_248730DD0();
      v29 = sub_2487313D0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134218240;
        *(v30 + 4) = v11;
        *(v30 + 12) = 2048;
        *(v30 + 14) = v2;
        _os_log_impl(&dword_2486BF000, v28, v29, "Subword token has: %lu elements, not expected :%ld ", v30, 0x16u);
        MEMORY[0x24C1D8100](v30, -1, -1);
      }

      return;
    }

LABEL_43:
    swift_once();
    goto LABEL_28;
  }

  if (v12)
  {
    v2 = 0;
    v13 = 0;
    v36 = a2 + 32;
    v37 = v7;
    while (1)
    {
      v11 = v7 * v13;
      if ((v7 * v13) >> 64 != (v7 * v13) >> 63)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v14 = (v11 + v7);
      if (__OFADD__(v11, v7))
      {
        goto LABEL_39;
      }

      if (v14 < v11)
      {
        goto LABEL_40;
      }

      v15 = MEMORY[0x277D84F90];
      if (v11 != v14)
      {
        break;
      }

      v16 = *(MEMORY[0x277D84F90] + 16);
LABEL_15:
      v7 = v37;
      if (v16 != v37)
      {

        if (qword_28150EE60 != -1)
        {
          swift_once();
        }

        v31 = sub_248730DF0();
        __swift_project_value_buffer(v31, qword_28150F088);

        v32 = sub_248730DD0();
        v33 = sub_2487313D0();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 134218240;
          v35 = *(v15 + 16);

          *(v34 + 4) = v35;

          *(v34 + 12) = 2048;
          *(v34 + 14) = v37;
          _os_log_impl(&dword_2486BF000, v32, v33, "Subword embedding vector has: %ld, not expected :%llu", v34, 0x16u);
          MEMORY[0x24C1D8100](v34, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        return;
      }

      v17 = (v36 + 16 * v13);
      v18 = *v17;
      v19 = v17[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_2486EC888(v15, v18, v19, isUniquelyReferenced_nonNull_native);

      v2 += v37;
      if (++v13 == v38)
      {
        return;
      }
    }

    while (1)
    {
      v21 = [a1 subwordTokenEmbedding];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v23 = [v21 embeddingTensor];

      if (!v23)
      {
        goto LABEL_45;
      }

      if ((v2 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_38;
      }

      [v23 valuesAtIndex_];
      v25 = v24;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2486C5DD4();
      }

      v26 = *(v15 + 16);
      v16 = v26 + 1;
      if (v26 >= *(v15 + 24) >> 1)
      {
        v15 = sub_2486C5DD4();
      }

      *(v15 + 16) = v16;
      *(v15 + 4 * v26 + 32) = v25;
      ++v11;
      if (!--v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }
}

uint64_t sub_24871B090(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = a1;
    v7 = sub_248731290();
    *(v7 + 16) = a3;
    bzero((v7 + 32), 4 * a3);
    v9 = 0;
    v10 = *(v3 + 16);
    v11 = (v3 + 40);
    v12 = a3;
    v37 = (v3 + 40);
    v38 = v10;
    while (!v10)
    {
LABEL_12:
      if (++v9 == a3)
      {
        *v8.i32 = v10;
        v17 = a3 - 1;
        if (v12 < a3 - 1)
        {
          v17 = v12;
        }

        v18 = v17 + 1;
        if (v18 >= 9)
        {
          v32 = v18 & 7;
          if ((v18 & 7) == 0)
          {
            v32 = 8;
          }

          v19 = v18 - v32;
          v33 = vdupq_lane_s32(v8, 0);
          v34 = (v7 + 48);
          v35 = v19;
          do
          {
            v36 = vdivq_f32(*v34, v33);
            v34[-1] = vdivq_f32(v34[-1], v33);
            *v34 = v36;
            v34 += 2;
            v35 -= 8;
          }

          while (v35);
        }

        else
        {
          v19 = 0;
        }

        while (v19 < v12)
        {
          *(v7 + 4 * v19 + 32) = *(v7 + 4 * v19 + 32) / *v8.i32;
          if (a3 == ++v19)
          {
            return v7;
          }
        }

        goto LABEL_40;
      }
    }

    while (1)
    {
      v4 = *(v11 - 1);
      v3 = *v11;
      v13 = *(a2 + 16);

      if (!v13)
      {
        break;
      }

      v14 = sub_2486C94CC(v4, v3);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = v14;

      v3 = *(*(a2 + 56) + 8 * v16);
      if (*(v3 + 16) != a3)
      {

        if (qword_28150EE60 != -1)
        {
          swift_once();
        }

        v27 = sub_248730DF0();
        __swift_project_value_buffer(v27, qword_28150F088);

        v28 = sub_248730DD0();
        v29 = sub_2487313D0();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 134218240;
          v31 = *(v3 + 16);

          *(v30 + 4) = v31;

          *(v30 + 12) = 2048;
          *(v30 + 14) = a3;
          _os_log_impl(&dword_2486BF000, v28, v29, "Embeddings vector size: %ld not expected: %llu", v30, 0x16u);
          MEMORY[0x24C1D8100](v30, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        return 0;
      }

      if (v9 >= a3)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v12 = *(v7 + 16);
      if (v9 >= v12)
      {
        goto LABEL_38;
      }

      *(v7 + 32 + 4 * v9) = *(v3 + 4 * v9 + 32) + *(v7 + 32 + 4 * v9);
      v11 += 2;
      if (!--v10)
      {
        v11 = v37;
        v10 = v38;
        goto LABEL_12;
      }
    }

    if (qword_28150EE60 != -1)
    {
      goto LABEL_41;
    }
  }

  v20 = sub_248730DF0();
  __swift_project_value_buffer(v20, qword_28150F088);

  v21 = sub_248730DD0();
  v22 = sub_2487313D0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v23 = 136315138;
    v25 = sub_2486D3010(v4, v3, &v39);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_2486BF000, v21, v22, "Subword embedding vector not found for subword: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C1D8100](v24, -1, -1);
    MEMORY[0x24C1D8100](v23, -1, -1);
  }

  else
  {
  }

  return 0;
}

id LocationPointOfInterestCategoryFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationPointOfInterestCategoryFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationPointOfInterestCategoryFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_24871B6EC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 poiCategory];
    if (v7)
    {
      v8 = v7;
      v9 = sub_248730FF0();
      v11 = v10;

      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v13[2] = 0;
    }

    v13[0] = v9;
    v13[1] = v11;
    v13[3] = v12;
    swift_beginAccess();
    sub_2486C6800(v13, 0xD00000000000002BLL, 0x80000002487397B0);
    swift_endAccess();
  }
}

id LocationPointOfInterestCategoryFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationPointOfInterestCategoryFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MADTextEmbedder.init(version:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24871B86C, 0, 0);
}

uint64_t sub_24871B86C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_248730DE0();
  v4 = [objc_opt_self() service];
  v5 = type metadata accessor for MADTextEmbedder(0);
  *(v3 + *(v5 + 20)) = v4;
  v6 = (v3 + *(v5 + 24));
  *v6 = v2;
  v6[1] = v1;
  v7 = v0[1];

  return v7();
}

uint64_t type metadata accessor for MADTextEmbedder(uint64_t a1)
{
  result = qword_27EEA6820;
  if (!qword_27EEA6820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MADTextEmbedder.embed(text:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24871B9B8, 0, 0);
}

uint64_t sub_24871B9B8()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5C70, &qword_248734E10);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_2487335F0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_24871BA9C;

  return MADTextEmbedder.embed(texts:)(v3);
}

uint64_t sub_24871BA9C(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_24871BBBC, 0, 0);
}

void sub_24871BBBC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    if (!*(v1 + 16))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  v3(v2);
}

uint64_t MADTextEmbedder.embed(texts:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24871BC68, 0, 0);
}

uint64_t sub_24871BC68()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6818, &qword_248735D00);
  *v2 = v0;
  v2[1] = sub_24871BD74;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x6574286465626D65, 0xED0000293A737478, sub_24871C390, v1, v3);
}

uint64_t sub_24871BD74()
{

  return MEMORY[0x2822009F8](sub_24871BE8C, 0, 0);
}

uint64_t sub_24871BE8C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    v3 = sub_248730DD0();
    v4 = sub_2487313D0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2486BF000, v3, v4, "Failed at generating embeddings.", v5, 2u);
      MEMORY[0x24C1D8100](v5, -1, -1);
    }
  }

  v6 = *(v1 + 8);

  return v6(v2);
}

void sub_24871BF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v38 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6840, qword_248735D60);
  v32 = *(v36 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v36);
  v31 = &v31 - v5;
  v6 = type metadata accessor for MADTextEmbedder(0);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D26890]) init];
  [v9 setExtendedContextLength_];
  if (*(a2 + *(v6 + 24) + 8))
  {
    v10 = sub_248731060();
    v12 = v11;
    v13 = v10 == 3425357 && v11 == 0xE300000000000000;
    if (v13 || (v14 = v10, (sub_248731880() & 1) != 0))
    {

      v15 = 4;
    }

    else
    {
      if (v14 == 3490893 && v12 == 0xE300000000000000)
      {
      }

      else
      {
        v30 = sub_248731880();

        if ((v30 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v15 = 5;
    }

    [v9 setVersion_];
  }

LABEL_9:
  v34 = *(a2 + *(v6 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5E98, &unk_248733730);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_248735CD0;
  *(v16 + 32) = v9;
  sub_2486CF4C4(0, &qword_27EEA6848, 0x277D268A8);
  v17 = v9;
  v33 = sub_248731230();

  v18 = sub_248731230();
  sub_2486F7314(a2, &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v31;
  v19 = v32;
  v21 = v36;
  (*(v32 + 16))(v31, v38, v36);
  v22 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v23 = (v7 + *(v19 + 80) + v22) & ~*(v19 + 80);
  v24 = (v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_24871D0D8(v8, v25 + v22);
  (*(v19 + 32))(v25 + v23, v20, v21);
  *(v25 + v24) = v17;
  aBlock[4] = sub_24871D13C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24871CE04;
  aBlock[3] = &block_descriptor_4;
  v26 = _Block_copy(aBlock);
  v27 = v17;

  v28 = v33;
  [v34 performRequests:v33 text:v18 identifier:0 completionHandler:v26];
  _Block_release(v26);
}

void sub_24871C398(id a1, id a2, int a3, int a4, id a5)
{
  if (!a2)
  {
    if (a1 == -1 || (v13 = [a5 embeddingResults]) == 0)
    {
      v25 = sub_248730DD0();
      v26 = sub_2487313D0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2486BF000, v25, v26, "No results returned by MAD service.", v27, 2u);
        MEMORY[0x24C1D8100](v27, -1, -1);
      }

      v37 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6840, qword_248735D60);
      goto LABEL_31;
    }

    v14 = v13;
    v36 = sub_2486CF4C4(0, &qword_27EEA6850, 0x277D26898);
    v15 = sub_248731240();

    if (v15 >> 62)
    {
      v16 = sub_248731790();
      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_9:
        if (v16 < 1)
        {
          __break(1u);
          return;
        }

        v17 = 0;
        v18 = MEMORY[0x277D84F90];
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x24C1D7600](v17, v15);
          }

          else
          {
            v19 = *(v15 + 8 * v17 + 32);
          }

          v20 = v19;
          sub_24871C7FC();
          if (v21)
          {
            v22 = v21;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_2486C4C64(0, v18[2] + 1, 1, v18);
            }

            v24 = v18[2];
            v23 = v18[3];
            if (v24 >= v23 >> 1)
            {
              v18 = sub_2486C4C64((v23 > 1), v24 + 1, 1, v18);
            }

            v18[2] = v24 + 1;
            v18[v24 + 4] = v22;
          }

          else
          {
          }

          ++v17;
        }

        while (v16 != v17);
        goto LABEL_27;
      }
    }

    v18 = MEMORY[0x277D84F90];
LABEL_27:

    v28 = sub_248730DD0();
    v29 = sub_2487313C0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136315138;
      v32 = MEMORY[0x24C1D71D0](v15, v36);
      v34 = v33;

      v35 = sub_2486D3010(v32, v34, &v37);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_2486BF000, v28, v29, "Found result: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C1D8100](v31, -1, -1);
      MEMORY[0x24C1D8100](v30, -1, -1);
    }

    else
    {
    }

    v37 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6840, qword_248735D60);
LABEL_31:
    sub_248731310();
    return;
  }

  v6 = a2;
  v7 = sub_248730DD0();
  v8 = sub_2487313D0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2486BF000, v7, v8, "Failed at calling MAD service: %@", v9, 0xCu);
    sub_2486EF19C(v10);
    MEMORY[0x24C1D8100](v10, -1, -1);
    MEMORY[0x24C1D8100](v9, -1, -1);
  }

  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6840, qword_248735D60);
  sub_248731310();
}

void sub_24871C7FC()
{
  v1 = sub_248730DF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248730DE0();
  v5 = [v0 embedding];
  v6 = [v5 data];

  v7 = sub_2487308C0();
  v9 = v8;

  v10 = [v0 embedding];
  v11 = [v10 type];

  v12 = [v0 embedding];
  v13 = [v12 count];

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = sub_248730DD0();
  v15 = sub_2487313C0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v11;
    _os_log_impl(&dword_2486BF000, v14, v15, "Embedding type: %lu", v16, 0xCu);
    MEMORY[0x24C1D8100](v16, -1, -1);
  }

  if (v11 == 2)
  {
    v18 = v9 >> 62;
    if ((v9 >> 62) <= 1)
    {
      if (v18)
      {
        LODWORD(v19) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
LABEL_48:
          __break(1u);
          return;
        }

        v19 = v19;
      }

      else
      {
        v19 = BYTE6(v9);
      }

      goto LABEL_36;
    }

LABEL_19:
    if (v18 == 2)
    {
      v27 = *(v7 + 16);
      v26 = *(v7 + 24);
      _VF = __OFSUB__(v26, v27);
      v19 = v26 - v27;
      if (_VF)
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_36:
    v40 = v19 / 4;
    sub_24871D610(v7, v9);
    v31 = sub_24871D538(v40, v7, v9, MEMORY[0x277D83A90], sub_24871D3E4);
    sub_2486CC7FC(v7, v9);
    goto LABEL_37;
  }

  if (v11 != 1)
  {
    v20 = sub_248730DD0();
    v21 = sub_2487313D0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2486BF000, v20, v21, "Embedding type not supported.", v22, 2u);
      MEMORY[0x24C1D8100](v22, -1, -1);
    }

    sub_2486CC7FC(v7, v9);

    (*(v2 + 8))(v4, v1);
    return;
  }

  v17 = v9 >> 62;
  v50 = v2;
  if ((v9 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(v9);
      goto LABEL_26;
    }

LABEL_23:
    LODWORD(v18) = HIDWORD(v7) - v7;
    if (!__OFSUB__(HIDWORD(v7), v7))
    {
      v18 = v18;
      goto LABEL_26;
    }

    goto LABEL_47;
  }

  if (v17 != 2)
  {
    v18 = 0;
    goto LABEL_26;
  }

  v24 = *(v7 + 16);
  v23 = *(v7 + 24);
  _VF = __OFSUB__(v23, v24);
  v18 = v23 - v24;
  if (_VF)
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_26:
  v28 = v18;
  sub_24871D610(v7, v9);
  v29 = sub_24871D538(v28 / 2, v7, v9, MEMORY[0x277D84DC8], sub_24871D2A0);
  sub_2486CC7FC(v7, v9);
  v30 = *(v29 + 16);
  if (v30)
  {
    v49 = v1;
    v51 = MEMORY[0x277D84F90];
    sub_2486DA360(0, v30, 0);
    v31 = v51;
    v32 = *(v51 + 16);
    v33 = 32;
    do
    {
      _H8 = *(v29 + v33);
      v51 = v31;
      v35 = *(v31 + 24);
      if (v32 >= v35 >> 1)
      {
        sub_2486DA360((v35 > 1), v32 + 1, 1);
        v31 = v51;
      }

      __asm { FCVT            S0, H8 }

      *(v31 + 16) = v32 + 1;
      *(v31 + 4 * v32 + 32) = _S0;
      v33 += 2;
      ++v32;
      --v30;
    }

    while (v30);

    v1 = v49;
    v2 = v50;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
    v2 = v50;
  }

LABEL_37:
  v41 = *(v31 + 16);
  v42 = 32;
  do
  {
    if (!v41)
    {
      v48 = *(v2 + 8);

      v48(v4, v1);
      sub_2486CC7FC(v7, v9);

      return;
    }

    v43 = ~*(v31 + v42) & 0x7F800000;
    v42 += 4;
    --v41;
  }

  while (v43);

  v44 = sub_248730DD0();
  v45 = sub_2487313D0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_2486BF000, v44, v45, "Found embedding with nan values. Return zeros embedding.", v46, 2u);
    MEMORY[0x24C1D8100](v46, -1, -1);
  }

  if (v13)
  {
    v47 = sub_248731290();
    *(v47 + 16) = v13;
    bzero((v47 + 32), 4 * v13);
  }

  sub_2486CC7FC(v7, v9);
  (*(v2 + 8))(v4, v1);
}

void sub_24871CE04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24871CE7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24871812C;

  return MADTextEmbedder.embed(text:)(a1, a2);
}

uint64_t sub_24871CF20(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248719560;

  return MADTextEmbedder.embed(texts:)(a1);
}

void sub_24871CFDC(uint64_t a1)
{
  sub_248730DF0();
  if (v1 <= 0x3F)
  {
    sub_2486CF4C4(319, &qword_27EEA6830, 0x277D26888);
    if (v2 <= 0x3F)
    {
      sub_24871D088();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24871D088()
{
  if (!qword_27EEA6838)
  {
    v0 = sub_248731550();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEA6838);
    }
  }
}

uint64_t sub_24871D0D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MADTextEmbedder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24871D13C(void *a1, void *a2)
{
  v5 = *(type metadata accessor for MADTextEmbedder(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6840, qword_248735D60) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24871C398(a1, a2, v2 + v6, v2 + v9, v10);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24871D270@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24871D2A0(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_22;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v8 = v8;
    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = BYTE6(a4);
    if (!BYTE6(a4))
    {
LABEL_22:
      v15 = 0;
LABEL_26:
      v17 = v15;
      v18 = *a2 + v15 / 2;
      if (!__OFADD__(*a2, v17 / 2))
      {
        *a2 = v18;
        return result;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a3 + 16);
    }

    else
    {
      v12 = a3;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 + 0x4000000000000000 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = 2 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_30;
  }

  if (v14 < v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a2;
    result = sub_248730890();
    v15 = v14 - v12;
    if (__OFSUB__(v14, v12))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    a2 = v16;
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24871D3E4(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_22;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v8 = v8;
    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = BYTE6(a4);
    if (!BYTE6(a4))
    {
LABEL_22:
      v15 = 0;
LABEL_26:
      v11 = __OFADD__(*a2, v15 / 4);
      v17 = *a2 + v15 / 4;
      if (!v11)
      {
        *a2 = v17;
        return result;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a3 + 16);
    }

    else
    {
      v12 = a3;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = 4 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_30;
  }

  if (v14 < v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a2;
    result = sub_248730890();
    v15 = v14 - v12;
    if (__OFSUB__(v14, v12))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    a2 = v16;
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24871D538(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t *, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  if (result)
  {
    v10 = sub_248731290();
    *(v10 + 16) = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = 0;
  v11[0] = v10 + 32;
  v11[1] = v9;
  result = a5(v11, &v12, a2, a3);
  if (v5)
  {
    if (v12 <= v9)
    {
      *(v10 + 16) = v12;

      return v10;
    }

    goto LABEL_12;
  }

  if (v12 <= v9)
  {
    *(v10 + 16) = v12;
    return v10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_24871D610(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t SISchemaAnyEvent.topLevelPayload<A>(as:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_24871DC14();
  v4 = [v2 anyEventType];
  if (v4 > 13)
  {
    if (v4 > 18)
    {
      switch(v4)
      {
        case 19:
          if (v3 && (v41 = [v3 payload]) != 0)
          {
            v42 = v41;
            v43 = sub_2487308C0();
            v45 = v44;

            v10 = sub_2487308A0();
            sub_2486CC7FC(v43, v45);
          }

          else
          {
            v10 = 0;
          }

          v66 = MEMORY[0x277D59610];
          break;
        case 20:
          if (v3 && (v61 = [v3 payload]) != 0)
          {
            v62 = v61;
            v63 = sub_2487308C0();
            v65 = v64;

            v10 = sub_2487308A0();
            sub_2486CC7FC(v63, v65);
          }

          else
          {
            v10 = 0;
          }

          v66 = MEMORY[0x277D56858];
          break;
        case 23:
          if (v3 && (v21 = [v3 payload]) != 0)
          {
            v22 = v21;
            v23 = sub_2487308C0();
            v25 = v24;

            v10 = sub_2487308A0();
            sub_2486CC7FC(v23, v25);
          }

          else
          {
            v10 = 0;
          }

          v66 = MEMORY[0x277D587F0];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v4)
      {
        case 14:
          if (v3 && (v31 = [v3 payload]) != 0)
          {
            v32 = v31;
            v33 = sub_2487308C0();
            v35 = v34;

            v10 = sub_2487308A0();
            sub_2486CC7FC(v33, v35);
          }

          else
          {
            v10 = 0;
          }

          v66 = MEMORY[0x277D56C30];
          break;
        case 17:
          if (v3 && (v51 = [v3 payload]) != 0)
          {
            v52 = v51;
            v53 = sub_2487308C0();
            v55 = v54;

            v10 = sub_2487308A0();
            sub_2486CC7FC(v53, v55);
          }

          else
          {
            v10 = 0;
          }

          v66 = MEMORY[0x277D57038];
          break;
        case 18:
          if (v3 && (v11 = [v3 payload]) != 0)
          {
            v12 = v11;
            v13 = sub_2487308C0();
            v15 = v14;

            v10 = sub_2487308A0();
            sub_2486CC7FC(v13, v15);
          }

          else
          {
            v10 = 0;
          }

          v66 = MEMORY[0x277D590F0];
          break;
        default:
          goto LABEL_52;
      }
    }
  }

  else if (v4 > 6)
  {
    switch(v4)
    {
      case 7:
        if (v3 && (v36 = [v3 payload]) != 0)
        {
          v37 = v36;
          v38 = sub_2487308C0();
          v40 = v39;

          v10 = sub_2487308A0();
          sub_2486CC7FC(v38, v40);
        }

        else
        {
          v10 = 0;
        }

        v66 = MEMORY[0x277D5A9A8];
        break;
      case 9:
        if (v3 && (v56 = [v3 payload]) != 0)
        {
          v57 = v56;
          v58 = sub_2487308C0();
          v60 = v59;

          v10 = sub_2487308A0();
          sub_2486CC7FC(v58, v60);
        }

        else
        {
          v10 = 0;
        }

        v66 = MEMORY[0x277D5A9D0];
        break;
      case 13:
        if (v3 && (v16 = [v3 payload]) != 0)
        {
          v17 = v16;
          v18 = sub_2487308C0();
          v20 = v19;

          v10 = sub_2487308A0();
          sub_2486CC7FC(v18, v20);
        }

        else
        {
          v10 = 0;
        }

        v66 = MEMORY[0x277D57500];
        break;
      default:
        goto LABEL_52;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        if (v3 && (v26 = [v3 payload]) != 0)
        {
          v27 = v26;
          v28 = sub_2487308C0();
          v30 = v29;

          v10 = sub_2487308A0();
          sub_2486CC7FC(v28, v30);
        }

        else
        {
          v10 = 0;
        }

        v66 = MEMORY[0x277D5A800];
        break;
      case 4:
        if (v3 && (v46 = [v3 payload]) != 0)
        {
          v47 = v46;
          v48 = sub_2487308C0();
          v50 = v49;

          v10 = sub_2487308A0();
          sub_2486CC7FC(v48, v50);
        }

        else
        {
          v10 = 0;
        }

        v66 = MEMORY[0x277D585A8];
        break;
      case 6:
        if (v3 && (v5 = [v3 payload]) != 0)
        {
          v6 = v5;
          v7 = sub_2487308C0();
          v9 = v8;

          v10 = sub_2487308A0();
          sub_2486CC7FC(v7, v9);
        }

        else
        {
          v10 = 0;
        }

        v66 = MEMORY[0x277D5A978];
        break;
      default:
LABEL_52:

        return 0;
    }
  }

  v67 = [objc_allocWithZone(v66) initWithData_];

  if (v67)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id sub_24871DC14()
{
  if ([v0 anyEventType] != 6)
  {
    return v0;
  }

  v1 = [v0 payload];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2487308C0();
    v5 = v4;

    v6 = sub_2487308A0();
    sub_2486CC7FC(v3, v5);
  }

  else
  {
    v6 = 0;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

  v9 = [v8 event];
  return v9;
}

uint64_t sub_24871DCF8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ueiEvents;
  swift_beginAccess();

  v34 = sub_24871E328(v3);

  v5 = sub_24871EFA8(v4, &selRef_punchOut);

  swift_beginAccess();

  v33 = sub_24871F134(v6, &selRef_ended);

  v32 = sub_24871E6FC(v7);

  v29 = sub_24871EA44(v8);

  v10 = sub_24871EC04(v9);

  v12 = sub_24871EDC4(v11);

  v28 = sub_24871EFA8(v13, &selRef_requestMitigated);

  v14 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_asrEvents;
  swift_beginAccess();

  v31 = sub_24871F134(v15, &selRef_cancelled);

  v17 = sub_24871F304(v16);

  v18 = 0;
  v30 = v10;
  if ((v10 & 1) == 0 && !v12)
  {
    v18 = (!v31 && !v17) & ((v34 || v5) | v33 | v32);
  }

  v27 = v17;

  v20 = sub_24871F52C(v19);

  v21 = *(a1 + v14);
  v22 = *(a1 + v2);

  v23 = sub_24871F860(v21, v22);

  v24 = v5;
  v25 = MEMORY[0x277D839B0];
  v36 = MEMORY[0x277D839B0];
  v35[0] = v34;
  swift_beginAccess();
  sub_2486C6800(v35, 0xD000000000000011, 0x8000000248739580);
  v36 = v25;
  v35[0] = v33;
  sub_2486C6800(v35, 0xD00000000000001CLL, 0x80000002487395A0);
  v36 = v25;
  v35[0] = v32 & 1;
  sub_2486C6800(v35, 0xD000000000000022, 0x80000002487395E0);
  v36 = v25;
  v35[0] = v29;
  sub_2486C6800(v35, 0xD00000000000001FLL, 0x8000000248739610);
  v36 = v25;
  v35[0] = v24;
  sub_2486C6800(v35, 0xD000000000000014, 0x80000002487395C0);
  v36 = v25;
  v35[0] = v30 & 1;
  sub_2486C6800(v35, 0xD000000000000020, 0x8000000248739630);
  v36 = v25;
  v35[0] = v12 || v28;
  sub_2486C6800(v35, 0xD000000000000027, 0x8000000248739660);
  v36 = v25;
  v35[0] = v31;
  sub_2486C6800(v35, 0xD000000000000018, 0x8000000248739690);
  v36 = v25;
  v35[0] = v27;
  sub_2486C6800(v35, 0xD000000000000018, 0x80000002487396B0);
  v36 = v25;
  v35[0] = v18 & 1;
  sub_2486C6800(v35, 0xD00000000000001ELL, 0x8000000248739560);
  v36 = v25;
  v35[0] = v20 & v23 & 1;
  sub_2486C6800(v35, 0xD00000000000001ELL, 0x8000000248739500);
  v36 = v25;
  v35[0] = v20;
  sub_2486C6800(v35, 0xD00000000000001CLL, 0x8000000248739520);
  v36 = v25;
  v35[0] = v23 & 1;
  sub_2486C6800(v35, 0xD00000000000001CLL, 0x8000000248739540);
  v36 = v25;
  v35[0] = (v18 | v20 & v23) & 1;
  sub_2486C6800(v35, 0xD000000000000015, 0x80000002487394E0);
  return swift_endAccess();
}