uint64_t sub_1BD6057F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD6026AC(a1, v4, v5, v6);
}

void sub_1BD6058B4(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60, &qword_1BE0E7CE8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_1BD602244(a1, a2, v2 + v6, v7);
}

uint64_t block_copy_helper_79_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

void sub_1BD605984(uint64_t a1, char a2, void *a3)
{
  v81 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v67 - v8;
  v9 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v67 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v67 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v72 = (v15 + 32);
    v77 = (v15 + 56);
    v68 = (v15 + 48);
    v69 = (v15 + 8);
    v18 = (a1 + 48);
    while (1)
    {
      v79 = v17;
      v40 = v9;
      v42 = *(v18 - 2);
      v41 = *(v18 - 1);
      v43 = *v18;
      v44 = *v81;
      sub_1BE048C84();
      v80 = v43;
      v46 = sub_1BD148F70(v42, v41);
      v47 = v44[2];
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        break;
      }

      v50 = v45;
      if (v44[3] >= v49)
      {
        if ((a2 & 1) == 0)
        {
          sub_1BD507B78();
        }
      }

      else
      {
        sub_1BD503328(v49, a2 & 1);
        v51 = sub_1BD148F70(v42, v41);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_28;
        }

        v46 = v51;
      }

      v53 = *v81;
      if (v50)
      {
        v76 = *v81;
        v75 = *(v53[7] + 8 * v46);
        v54 = [v75 updatedAt];
        if (v54)
        {
          v55 = v73;
          v56 = v54;
          sub_1BE04AEE4();

          v57 = *v72;
          v58 = v70;
          (*v72)(v70, v55, v40);
          v74 = *v77;
          v74(v58, 0, 1, v40);
          v59 = v58;
          v9 = v40;
          v57(v78, v59, v40);
        }

        else
        {
          v64 = v70;
          v9 = v40;
          v74 = *v77;
          v74(v70, 1, 1, v40);
          sub_1BE04ADA4();
          if ((*v68)(v64, 1, v40) != 1)
          {
            sub_1BD0DE53C(v64, &unk_1EBD39970, &unk_1BE0B9F80);
          }
        }

        v65 = [v80 updatedAt];
        if (v65)
        {
          v19 = v73;
          v20 = v65;
          sub_1BE04AEE4();

          v21 = v71;
          v22 = *v72;
          (*v72)(v71, v19, v40);
          v74(v21, 0, 1, v40);
          v23 = v21;
          v9 = v40;
          v22(v11, v23, v40);
        }

        else
        {
          v66 = v71;
          v74(v71, 1, 1, v9);
          sub_1BE04ADA4();
          if ((*v68)(v66, 1, v9) != 1)
          {
            sub_1BD0DE53C(v71, &unk_1EBD39970, &unk_1BE0B9F80);
          }
        }

        v24 = v78;
        v25 = sub_1BE04AE74();
        v26 = *v69;
        (*v69)(v11, v9);
        v26(v24, v9);
        v27 = v80;
        v28 = v75;
        if (v25)
        {
          v29 = v75;
        }

        else
        {
          v29 = v80;
        }

        v30 = v29;
        v41, v31, v32, v33, v34, v35, v36, v37;

        v38 = v76[7];
        v39 = *(v38 + 8 * v46);
        *(v38 + 8 * v46) = v30;
      }

      else
      {
        v53[(v46 >> 6) + 8] |= 1 << v46;
        v60 = (v53[6] + 16 * v46);
        *v60 = v42;
        v60[1] = v41;
        *(v53[7] + 8 * v46) = v80;
        v61 = v53[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_27;
        }

        v53[2] = v63;
        v9 = v40;
      }

      v18 += 3;
      a2 = 1;
      v17 = v79 - 1;
      if (v79 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1BE053C14();
    __break(1u);
  }
}

uint64_t sub_1BD605F0C(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v3 = &qword_1BE0E7C78;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF30, &qword_1BE0E7C78);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v141 = &v129 - v8;
  v144 = type metadata accessor for RedemptionPresentation(0);
  MEMORY[0x1EEE9AC00](v144 - 8);
  v131 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v133 = &v129 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v132 = &v129 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v143 = &v129 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v130 = &v129 - v18;
  v136 = MEMORY[0x1E69E7CC8];
  v149 = MEMORY[0x1E69E7CC8];
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;
  v147 = (v17 + 48);
  v134 = v17;
  v140 = (v17 + 56);
  result = sub_1BE048C84();
  v142 = v6;
  v138 = a1;
  v32 = 0;
  if (v22)
  {
    while (1)
    {
      while (1)
      {
        v33 = v32;
LABEL_9:
        v34 = __clz(__rbit64(v22)) | (v33 << 6);
        v35 = *(a1 + 56);
        v36 = (*(a1 + 48) + 16 * v34);
        v37 = v36[1];
        v139 = *v36;
        v38 = *(v35 + 8 * v34);
        v146 = v37;
        sub_1BE048C84();
        sub_1BD9DECE4(v38, v6);
        v39 = v144;
        v145 = *v147;
        if (v145(v6, 1, v144) == 1)
        {
          sub_1BD0DE53C(v6, &qword_1EBD4CF30, v3);
          v40 = v141;
          (*v140)(v141, 1, 1, v39);
        }

        else
        {
          sub_1BD605158(v6, v143);
          v41 = [v38 identifier];
          v42 = sub_1BE052434();
          v44 = v43;

          KeyPath = swift_getKeyPath();
          v46 = swift_getKeyPath();
          sub_1BE04D8B4(v148);
          KeyPath, v47, v48, v49, v50, v51, v52, v53;
          v46, v54, v55, v56, v57, v58, v59, v60;
          v68 = v148[0];
          if (*(v148[0] + 2))
          {
            v135 = sub_1BD148F70(v42, v44);
            v70 = v69;
            v44, v69, v71, v72, v73, v74, v75, v76;
            v40 = v141;
            if (v70)
            {
              v84 = v133;
              sub_1BD6065D0(v68[7] + *(v134 + 72) * v135, v133);
              v68, v85, v86, v87, v88, v89, v90, v91;
              v92 = v132;
              sub_1BD605158(v84, v132);
              v93 = v144;
              v94 = *(v92 + *(v144 + 56));
              sub_1BD606634(v92);
              v95 = *(v93 + 56);
              v96 = v143;

              *(v96 + v95) = v94;
            }

            else
            {
              v68, v77, v78, v79, v80, v81, v82, v83;
            }

            a1 = v138;
          }

          else
          {
            v148[0], v61, v62, v63, v64, v65, v66, v67;
            v44, v97, v98, v99, v100, v101, v102, v103;
            a1 = v138;
            v40 = v141;
          }

          v104 = v143;
          sub_1BD6065D0(v143, v40);
          v39 = v144;
          (*v140)(v40, 0, 1, v144);
          sub_1BD606634(v104);
          v3 = &qword_1BE0E7C78;
        }

        v22 &= v22 - 1;

        if (v145(v40, 1, v39) != 1)
        {
          break;
        }

        v146, v105, v106, v107, v108, v109, v110, v111;
        result = sub_1BD0DE53C(v40, &qword_1EBD4CF30, v3);
        v32 = v33;
        v6 = v142;
        if (!v22)
        {
          goto LABEL_6;
        }
      }

      v112 = v40;
      v113 = v3;
      v114 = v130;
      sub_1BD605158(v112, v130);
      sub_1BD605158(v114, v131);
      v115 = v136[2];
      v116 = v146;
      if (v136[3] <= v115)
      {
        sub_1BD5032EC(v115 + 1, 1);
      }

      v117 = v149;
      sub_1BE053D04();
      sub_1BE052524();
      result = sub_1BE053D64();
      v118 = v117 + 64;
      v136 = v117;
      v119 = -1 << *(v117 + 32);
      v120 = result & ~v119;
      v121 = v120 >> 6;
      if (((-1 << v120) & ~*(v117 + 64 + 8 * (v120 >> 6))) == 0)
      {
        break;
      }

      v122 = __clz(__rbit64((-1 << v120) & ~*(v117 + 64 + 8 * (v120 >> 6)))) | v120 & 0x7FFFFFFFFFFFFFC0;
      v3 = v113;
      v6 = v142;
LABEL_33:
      *(v118 + ((v122 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v122;
      v127 = v136;
      v128 = (v136[6] + 16 * v122);
      *v128 = v139;
      v128[1] = v116;
      result = sub_1BD605158(v131, v127[7] + *(v134 + 72) * v122);
      ++v127[2];
      v32 = v33;
      if (!v22)
      {
        goto LABEL_6;
      }
    }

    v123 = 0;
    v124 = (63 - v119) >> 6;
    v3 = v113;
    v6 = v142;
    while (++v121 != v124 || (v123 & 1) == 0)
    {
      v125 = v121 == v124;
      if (v121 == v124)
      {
        v121 = 0;
      }

      v123 |= v125;
      v126 = *(v118 + 8 * v121);
      if (v126 != -1)
      {
        v122 = __clz(__rbit64(~v126)) + (v121 << 6);
        goto LABEL_33;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v23)
      {
        a1, v25, v26, v27, v28, v29, v30, v31;
        return v136;
      }

      v22 = *(v19 + 8 * v33);
      ++v32;
      if (v22)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6065D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedemptionPresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD606634(uint64_t a1)
{
  v2 = type metadata accessor for RedemptionPresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD606690(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

void sub_1BD6066F8(char a1, char a2)
{
  v3 = v2;
  Tracker = PKCATrackedLayoutGetTracker();
  v7 = [v2 backdropLayer];
  if (a1)
  {
    v8 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_blurAmount];
  }

  else
  {
    v8 = 0.0;
  }

  if (a2)
  {
    if (a1)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_blurAmount];
    }

    v10 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_springFactory];
    v11 = sub_1BE052404();
    v12 = [v10 springAnimationWithKeyPath_];

    [v12 pkui:v9 updateForAdditiveAnimationFromScalar:v8 toScalar:?];
    if (Tracker)
    {
      [Tracker trackAnimation_];
    }
  }

  v13 = sub_1BE04C564();
  v14 = sub_1BE052404();
  [v7 setValue:v13 forKeyPath:v14];

  if (a1)
  {
    v15 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_colorBrightnessAmount];
  }

  else
  {
    v15 = 0.0;
  }

  if (a2)
  {
    if (a1)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_colorBrightnessAmount];
    }

    v17 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_springFactory];
    v18 = sub_1BE052404();
    v19 = [v17 springAnimationWithKeyPath_];

    [v19 pkui:v16 updateForAdditiveAnimationFromScalar:v15 toScalar:?];
    if (Tracker)
    {
      [Tracker trackAnimation_];
    }
  }

  v20 = sub_1BE04C564();
  v21 = sub_1BE052404();
  [v7 setValue:v20 forKeyPath:v21];
}

id sub_1BD606998(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_springFactory] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_blurAmount] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_colorBrightnessAmount] = a3;
  v34.receiver = v3;
  v34.super_class = ObjectType;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v34, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = *MEMORY[0x1E6979928];
  v11 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v12 = v9;
  v13 = [v11 initWithType_];
  v14 = sub_1BE052404();
  [v13 setName_];

  v15 = sub_1BE052824();
  v16 = sub_1BE052404();
  [v13 setValue:v15 forKeyPath:v16];

  v17 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v18 = sub_1BE052404();
  [v17 setName_];

  v19 = [v12 backdropLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50, &unk_1BE0C74D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BE0B6CA0;
  v21 = sub_1BD606D04();
  *(v20 + 32) = v13;
  *(v20 + 88) = v21;
  *(v20 + 56) = v21;
  *(v20 + 64) = v17;
  v22 = v19;
  v23 = v13;
  v24 = v17;
  v25 = sub_1BE052724();
  v20, v26, v27, v28, v29, v30, v31, v32;
  [v22 setFilters_];

  sub_1BD6066F8(0, 0);
  return v12;
}

unint64_t sub_1BD606D04()
{
  result = qword_1EBD4A9E0;
  if (!qword_1EBD4A9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4A9E0);
  }

  return result;
}

void sub_1BD606D98(uint64_t a1)
{
  sub_1BE04AF64();
  if (v1 <= 0x3F)
  {
    sub_1BE0493F4();
    if (v2 <= 0x3F)
    {
      sub_1BE04A974();
      if (v3 <= 0x3F)
      {
        sub_1BD606F20(319, &qword_1EBD46180, sub_1BD4411B4, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1BD606F20(319, &qword_1EBD3F760, type metadata accessor for TransactionContext, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1BD606F20(319, &qword_1EBD3F768, MEMORY[0x1E69675F8], MEMORY[0x1E69E6720]);
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

void sub_1BD606F20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD606FCC(uint64_t a1)
{
  sub_1BD606F20(319, &qword_1EBD4CFC0, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1BD49DA08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD60709C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v80 = a1;
  v5 = sub_1BE049904();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v57 - v8;
  v9 = sub_1BE049834();
  v60 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v57 - v12;
  v13 = sub_1BE0495A4();
  v79 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE049A94();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  v21 = v20[11];
  v22 = type metadata accessor for TransactionContext(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v69 = v21;
  v64 = v23 + 56;
  v65 = v24;
  v24(a3 + v21, 1, 1, v22);
  v25 = v20[12];
  v26 = sub_1BE048F54();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v70 = v25;
  v68 = v26;
  v63 = v27 + 56;
  v61 = v27;
  v62 = v28;
  (v28)(a3 + v25, 1, 1);
  v66 = v17;
  v29 = *(v17 + 16);
  v30 = v80;
  v71 = v16;
  v29(v19, v80, v16);
  v31 = *(v79 + 16);
  v32 = v30 + *(v22 + 20);
  v78 = v15;
  v72 = v13;
  v31(v15, v32, v13);
  sub_1BE049974();
  v67 = v22;
  v57 = sub_1BD736290(v30 + *(v22 + 28));
  v34 = v33;
  v35 = v58;
  sub_1BE049984();
  v36 = v60;
  v37 = v59;
  (*(v60 + 104))(v59, *MEMORY[0x1E6967870], v9);
  sub_1BD608E00(&qword_1EBD3F7C8, MEMORY[0x1E69678D8], MEMORY[0x1E69678F0]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v38 = *(v36 + 8);
  v38(v37, v9);
  v38(v35, v9);
  if (v84 == v83)
  {
    v39 = sub_1BE049574();
    v40 = (a3 + v20[6]);
    *v40 = v39;
    v40[1] = v41;
    v42 = v57;
  }

  else
  {
    v43 = (a3 + v20[6]);
    v44 = v57;
    *v43 = v57;
    v43[1] = v34;
    sub_1BE048C84();
    v42 = v44;
  }

  v45 = v20[10];
  v46 = (a3 + v20[5]);
  *v46 = v42;
  v46[1] = v34;
  sub_1BE0499A4();
  sub_1BD7271C4();
  v47 = v73;
  sub_1BE049A34();
  v49 = v74;
  v48 = v75;
  v50 = v76;
  (*(v75 + 104))(v74, *MEMORY[0x1E6967980], v76);
  sub_1BD608E00(&qword_1EBD461D8, MEMORY[0x1E6967988], MEMORY[0x1E69679A0]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v51 = *(v48 + 8);
  v51(v49, v50);
  v51(v47, v50);
  *(a3 + v20[7]) = v82 == v81;
  v52 = sub_1BE049964();
  (*(v79 + 8))(v78, v72);
  (*(v66 + 8))(v19, v71);
  *(a3 + v45) = v52;
  v53 = v69;
  sub_1BD0DE53C(a3 + v69, &qword_1EBD3F790, &qword_1BE0D6710);
  sub_1BD608E48(v80, a3 + v53, type metadata accessor for TransactionContext);
  v65(a3 + v53, 0, 1, v67);
  v54 = v70;
  sub_1BD0DE53C(a3 + v70, &qword_1EBD3F788, &unk_1BE0E2970);
  v55 = v68;
  (*(v61 + 32))(a3 + v54, v77, v68);
  return v62(a3 + v54, 0, 1, v55);
}

uint64_t sub_1BD607794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a1;
  v131 = a2;
  v106 = type metadata accessor for TransactionContext(0);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v103 = &v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v108 = &v103 - v4;
  v107 = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v107);
  v109 = (&v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = type metadata accessor for FinanceKitTransactionMapView(0);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v111 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v103 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFC8, &qword_1BE0E7E60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v130 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v103 - v12;
  v13 = type metadata accessor for FinanceKitSelectedTransactionView(0);
  v123 = *(v13 - 8);
  v133 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v134 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1BE04B0F4();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1BE04A974();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1BE0493F4();
  v137 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v115 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1BE04AB24();
  v140 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v19 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1BE04AB54();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE04AF64();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v114);
  v132 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v104 = &v103 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v116 = &v103 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v103 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v103 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v103 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFA8, &unk_1BE0E7DD0);
  sub_1BE0516A4();
  (*(v23 + 16))(v25, v39, v22);
  v135 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel;
  sub_1BD609568(v39, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  sub_1BE04AB14();
  sub_1BE04AB04();
  v126 = sub_1BE04AF24();
  v125 = v41;
  (*(v140 + 8))(v19, v124);
  (*(v138 + 8))(v21, v139);
  (*(v23 + 8))(v25, v22);
  v42 = v40;
  v43 = v113;
  sub_1BE0516A4();
  v44 = v114;
  v45 = &v39[*(v114 + 24)];
  v46 = *(v45 + 1);
  v138 = *v45;
  v124 = v46;
  sub_1BE048C84();
  v47 = v135;
  sub_1BD609568(v39, v135);
  v112 = v42;
  sub_1BE0516A4();
  v48 = v115;
  (*(v137 + 16))(v115, &v36[v44[8]], v136);
  sub_1BD609568(v36, v47);
  sub_1BE0516A4();
  v49 = v118;
  v50 = v117;
  v51 = v119;
  (*(v118 + 16))(v117, &v33[v44[9]], v119);
  sub_1BD609568(v33, v47);
  v52 = v120;
  sub_1BE04B054();
  v53 = sub_1BE0493D4();
  v139 = v54;
  v140 = v53;
  v55 = v52;
  v56 = v44;
  (*(v121 + 8))(v55, v122);
  (*(v49 + 8))(v50, v51);
  (*(v137 + 8))(v48, v136);
  sub_1BE0516A4();
  LODWORD(v137) = v36[v44[7]];
  v57 = v135;
  sub_1BD609568(v36, v135);
  v58 = v134;
  sub_1BD609500(v43, v134, type metadata accessor for FinanceKitSelectedTransactionView);
  v59 = (*(v123 + 80) + 16) & ~*(v123 + 80);
  v136 = swift_allocObject();
  sub_1BD608E48(v58, v136 + v59, type metadata accessor for FinanceKitSelectedTransactionView);
  v60 = v116;
  v61 = v43;
  sub_1BE0516A4();
  v62 = *(v60 + v56[10]);
  v63 = v62;
  sub_1BD609568(v60, v57);
  if (v62)
  {
    v64 = v104;
    v65 = v61;
    sub_1BE0516A4();
    v66 = (v64 + v56[5]);
    v68 = *v66;
    v67 = v66[1];
    sub_1BE048C84();
    sub_1BD609568(v64, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    v69 = v132;
    sub_1BE0516A4();
    v70 = v56[11];
    v71 = v69 + v70;
    v72 = v106;
    v73 = v65;
    if ((*(v105 + 48))(v71, 1, v106))
    {
      sub_1BD609568(v132, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
      v74 = sub_1BE0491B4();
      v75 = v108;
      (*(*(v74 - 8) + 56))(v108, 1, 1, v74);
    }

    else
    {
      v79 = v132;
      v80 = v103;
      sub_1BD609500(v132 + v70, v103, type metadata accessor for TransactionContext);
      sub_1BD609568(v79, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
      v81 = v80 + *(v72 + 28);
      v75 = v108;
      sub_1BD0DE19C(v81, v108, &qword_1EBD3F7C0, &unk_1BE0D6570);
      sub_1BD609568(v80, type metadata accessor for TransactionContext);
    }

    v82 = v109;
    *v109 = v63;
    *(v82 + 8) = v68;
    *(v82 + 16) = v67;
    sub_1BD608FC0(v75, v82 + *(v107 + 24));
    v83 = v73;
    v84 = v134;
    sub_1BD609500(v83, v134, type metadata accessor for FinanceKitSelectedTransactionView);
    v85 = swift_allocObject();
    sub_1BD608E48(v84, v85 + v59, type metadata accessor for FinanceKitSelectedTransactionView);
    v86 = v111;
    sub_1BD608E48(v82, v111, type metadata accessor for FinanceKitTransactionMapView.ViewModel);
    v78 = v128;
    v87 = (v86 + *(v128 + 20));
    *v87 = sub_1BD609490;
    v87[1] = v85;
    v88 = v86 + *(v78 + 24);
    LOBYTE(v141) = 0;
    sub_1BE051694();
    v89 = v147;
    *v88 = v146;
    *(v88 + 8) = v89;
    v90 = v86;
    v91 = v110;
    sub_1BD608E48(v90, v110, type metadata accessor for FinanceKitTransactionMapView);
    v77 = v129;
    sub_1BD608E48(v91, v129, type metadata accessor for FinanceKitTransactionMapView);
    v76 = 0;
  }

  else
  {
    v76 = 1;
    v77 = v129;
    v78 = v128;
  }

  (*(v127 + 56))(v77, v76, 1, v78);
  v92 = v130;
  sub_1BD0DE19C(v77, v130, &qword_1EBD4CFC8, &qword_1BE0E7E60);
  v93 = v126;
  v94 = v125;
  *&v141 = v126;
  *(&v141 + 1) = v125;
  v95 = v124;
  *&v142 = v138;
  *(&v142 + 1) = v124;
  *&v143 = v140;
  *(&v143 + 1) = v139;
  v96 = v137;
  LOBYTE(v144) = v137;
  *(&v144 + 1) = *v156;
  DWORD1(v144) = *&v156[3];
  v97 = v136;
  *(&v144 + 1) = sub_1BD608EB0;
  v145 = v136;
  v98 = v131;
  *(v131 + 64) = v136;
  v99 = v142;
  *v98 = v141;
  v98[1] = v99;
  v100 = v144;
  v98[2] = v143;
  v98[3] = v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFD0, &qword_1BE0E7E68);
  sub_1BD0DE19C(v92, v98 + *(v101 + 48), &qword_1EBD4CFC8, &qword_1BE0E7E60);
  sub_1BD608F10(&v141, &v146);
  sub_1BD0DE53C(v77, &qword_1EBD4CFC8, &qword_1BE0E7E60);
  sub_1BD0DE53C(v92, &qword_1EBD4CFC8, &qword_1BE0E7E60);
  v146 = v93;
  v147 = v94;
  v148 = v138;
  v149 = v95;
  v150 = v140;
  v151 = v139;
  v152 = v96;
  *v153 = *v156;
  *&v153[3] = *&v156[3];
  v154 = sub_1BD608EB0;
  v155 = v97;
  return sub_1BD608F6C(&v146);
}

uint64_t sub_1BD6086C0(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitTransactionDetailView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v7 = sub_1BE048F54();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - v12;
  v14 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = type metadata accessor for TransactionContext(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v41 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v41 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFA8, &unk_1BE0E7DD0);
  sub_1BE0516A4();
  sub_1BD0DE19C(&v19[*(v14 + 44)], v13, &qword_1EBD3F790, &qword_1BE0D6710);
  sub_1BD609568(v19, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  if ((*(v21 + 48))(v13, 1, v20) == 1)
  {
    return sub_1BD0DE53C(v13, &qword_1EBD3F790, &qword_1BE0D6710);
  }

  sub_1BD608E48(v13, v25, type metadata accessor for TransactionContext);
  sub_1BE0516A4();
  sub_1BD0DE19C(&v16[*(v14 + 48)], v6, &qword_1EBD3F788, &unk_1BE0E2970);
  sub_1BD609568(v16, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  v28 = v45;
  v27 = v46;
  if ((*(v45 + 48))(v6, 1, v46) == 1)
  {
    sub_1BD609568(v25, type metadata accessor for TransactionContext);
    return sub_1BD0DE53C(v6, &qword_1EBD3F788, &unk_1BE0E2970);
  }

  else
  {
    v29 = v43;
    (*(v28 + 32))(v43, v6, v27);
    v30 = *(a1 + *(type metadata accessor for FinanceKitSelectedTransactionView(0) + 20));
    if (v30)
    {
      v31 = v41;
      sub_1BD609500(v25, v41, type metadata accessor for TransactionContext);
      v32 = v42;
      (*(v28 + 16))(v42, v29, v27);
      sub_1BE048964();
      v33 = v44;
      sub_1BD80B518(v31, v32, v44);
      sub_1BD982324(v33);
      v30, v34, v35, v36, v37, v38, v39, v40;
      sub_1BD609568(v33, type metadata accessor for FinanceKitTransactionDetailView);
      (*(v28 + 8))(v29, v27);
      return sub_1BD609568(v25, type metadata accessor for TransactionContext);
    }

    else
    {
      type metadata accessor for NavigationController();
      sub_1BD608E00(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
      result = sub_1BE04EEB4();
      __break(1u);
    }
  }

  return result;
}

void sub_1BD608C50(void *a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for FinanceKitSelectedTransactionView(0) + 20));
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      type metadata accessor for NavigationController();
      sub_1BD608E00(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
      sub_1BE048964();
      v5 = v4;
      sub_1BE04D804();
      v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFD8, &qword_1BE0E7E70));
      sub_1BE048964();
      v7 = a1;
      v8 = sub_1BE04F894();
      if ([v5 _pk_settings_useStateDrivenNavigation])
      {
        [v5 _pk_settings_pushViewController_];
      }

      else
      {
        [v5 pushViewController:v8 animated:1];
      }

      v3, v9, v10, v11, v12, v13, v14, v15;
    }
  }

  else
  {
    type metadata accessor for NavigationController();
    sub_1BD608E00(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    sub_1BE04EEB4();
    __break(1u);
  }
}

uint64_t sub_1BD608E00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD608E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD608EB0()
{
  v1 = *(type metadata accessor for FinanceKitSelectedTransactionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD6086C0(v2);
}

uint64_t sub_1BD608FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_70()
{
  v1 = type metadata accessor for FinanceKitSelectedTransactionView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = sub_1BE04AF64();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  *(v2 + v4[5] + 8), v5, v6, v7, v8, v9, v10, v11;
  *(v2 + v4[6] + 8), v12, v13, v14, v15, v16, v17, v18;
  v19 = v4[8];
  v20 = sub_1BE0493F4();
  (*(*(v20 - 8) + 8))(v2 + v19, v20);
  v21 = v4[9];
  v22 = sub_1BE04A974();
  (*(*(v22 - 8) + 8))(v2 + v21, v22);

  v23 = v2 + v4[11];
  v24 = type metadata accessor for TransactionContext(0);
  if (!(*(*(v24 - 1) + 48))(v23, 1, v24))
  {
    v25 = sub_1BE049A94();
    (*(*(v25 - 8) + 8))(v23, v25);
    v26 = v24[5];
    v27 = sub_1BE0495A4();
    (*(*(v27 - 8) + 8))(v23 + v26, v27);
    v28 = v24[6];
    v29 = sub_1BE049184();
    (*(*(v29 - 8) + 8))(v23 + v28, v29);
    v30 = v24[7];
    v31 = sub_1BE0491B4();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v23 + v30, 1, v31))
    {
      (*(v32 + 8))(v23 + v30, v31);
    }

    v33 = v24[8];
    v34 = sub_1BE049E04();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v23 + v33, 1, v34))
    {
      (*(v35 + 8))(v23 + v33, v34);
    }
  }

  v36 = v4[12];
  v37 = sub_1BE048F54();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v2 + v36, 1, v37))
  {
    (*(v38 + 8))(v2 + v36, v37);
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFA8, &unk_1BE0E7DD0);
  *(v2 + *(v39 + 28)), v40, v41, v42, v43, v44, v45, v46;
  *(v2 + *(v1 + 20)), v47, v48, v49, v50, v51, v52, v53;

  return swift_deallocObject();
}

void sub_1BD609490(void *a1)
{
  v3 = *(type metadata accessor for FinanceKitSelectedTransactionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD608C50(a1, v4);
}

uint64_t sub_1BD609500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD609568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD6095C8()
{
  result = qword_1EBD4CFE0;
  if (!qword_1EBD4CFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CFE8, &qword_1BE0E7E78);
    sub_1BD60964C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CFE0);
  }

  return result;
}

unint64_t sub_1BD60964C()
{
  result = qword_1EBD4CFF0;
  if (!qword_1EBD4CFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CFF8, &unk_1BE0E7E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CFF0);
  }

  return result;
}

id sub_1BD6096B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_companionContext] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_coordinator] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_viewController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_identifier];
  *v8 = 0xD000000000000015;
  *(v8 + 1) = 0x80000001BE1316C0;
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_originalContext] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_credential] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_provisionedPasses] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD60989C(void (*a1)(uint64_t, unint64_t, void, uint64_t, double), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0, &unk_1BE0E7EE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v164 - v7;
  v9 = sub_1BE04B8D4();
  v175 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v164 - v13;
  v15 = sub_1BE04B944();
  v176 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v174 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v164 - v18;
  v20 = sub_1BE04BAC4();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v3 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_credential);
  if (!v26)
  {
    a1(0x6564657263206F6ELL, 0xED00006C6169746ELL, 0, 1, v23);
    return;
  }

  v171 = v15;
  v172 = v25;
  v173 = v22;
  v177 = a2;
  v178 = v26;
  v27 = [v178 paymentPass];
  if (!v27)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v28 = v27;
  v29 = [v27 isCarKeyPass];

  if (v29)
  {
    v30 = [v178 credentialToShare];
    if (!v30)
    {
LABEL_55:
      __break(1u);
      return;
    }

    v31 = v30;
    v32 = [v30 isShareable];

    if (v32)
    {
      v33 = v172;
      v170 = *(v3 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_originalContext);
      sub_1BE04BC34();
      v34 = sub_1BE04BAB4();
      v36 = *(v21 + 8);
      v35 = v21 + 8;
      v169 = v36;
      v36(v33, v173);
      if (v34)
      {
        (a1)(0x6764697262206E69, 0xE900000000000065, 0, 1);
LABEL_21:

        return;
      }

      v166 = v35;
      v168 = a1;
      sub_1BE04BB04();
      sub_1BE04B924();
      v40 = v176 + 8;
      v167 = *(v176 + 8);
      v167(v19, v171);
      v41 = v175;
      (v175)[13](v11, *MEMORY[0x1E69B7F78], v9);
      v42 = sub_1BE04B8C4();
      v43 = v41[1];
      v43(v11, v9);
      v43(v14, v9);
      if ((v42 & 1) == 0)
      {
        (v168)(0xD00000000000001ALL, 0x80000001BE1315A0, 0, 1);
        goto LABEL_21;
      }

      v176 = v40;
      v44 = sub_1BE04BC14();
      v45 = [objc_opt_self() watchWebServiceForIssuerProvisioning];
      v46 = v168;
      if (!v45)
      {
        (v168)(0xD000000000000026, 0x80000001BE1315C0, 0, 1);

        v44, v68, v69, v70, v71, v72, v73, v74;
        return;
      }

      v47 = v45;
      (v175[7])(v8, 1, 1, v9);
      v48 = v47;
      sub_1BE04B914();
      sub_1BE04BBA4();
      v49 = *(v3 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_companionContext);
      *(v3 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_companionContext) = v44;
      sub_1BE048964();
      v49, v50, v51, v52, v53, v54, v55, v56;
      v57 = *(v3 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_provisionedPasses);
      v58 = MEMORY[0x1E69E7CC0];
      if (!v57)
      {
        goto LABEL_39;
      }

      v59 = sub_1BE04BCE4();
      if (v60)
      {
        if (v60 != 1)
        {
          if (v59)
          {
            v103 = 0xD000000000000034;
            v104 = 0x80000001BE131680;
            goto LABEL_43;
          }

LABEL_39:
          v112 = v174;
          sub_1BE04BB94();
          v113 = sub_1BE04B934();
          v167(v112, v171);
          v114 = [v113 deviceSerialNumber];
          swift_unknownObjectRelease();
          if (v114)
          {
            v122 = v48;
            v123 = sub_1BE052434();
            v125 = v124;

            v179[0] = v123;
            v179[1] = v125;
            MEMORY[0x1EEE9AC00](v126);
            *(&v164 - 2) = v179;
            v127 = sub_1BD2FF084(sub_1BD60AA50, (&v164 - 4), v58);
            v125, v128, v129, v130, v131, v132, v133, v134;
            v58, v135, v136, v137, v138, v139, v140, v141;
            if (v127)
            {
              v46(0xD000000000000021, 0x80000001BE131650, 0, 1);

              v44, v142, v143, v144, v145, v146, v147, v148;
              return;
            }

            v149 = v172;
            sub_1BE04BC34();
            v150 = sub_1BE04BA34();
            v169(v149, v173);
            v48 = v122;
            if (v150)
            {
              v151 = [v122 targetDevice];
              if (v151)
              {
                v152 = v151;
                if ([v151 respondsToSelector_])
                {
                  v153 = [v152 canAddToCompanionPrecheckForegroundConnectivity];
                  swift_unknownObjectRelease();
                  if ((v153 & 1) == 0)
                  {
                    v154 = 0xD000000000000027;
                    v155 = 0x80000001BE131620;
                    v156 = 1;
LABEL_51:
                    v46(v154, v155, 0, v156);
                    goto LABEL_52;
                  }
                }

                else
                {
                  swift_unknownObjectRelease();
                }
              }
            }

            v154 = 0;
            v155 = 0;
            v156 = 0;
            goto LABEL_51;
          }

          v58, v115, v116, v117, v118, v119, v120, v121;
          v104 = 0x80000001BE1315F0;
          v103 = 0xD000000000000026;
LABEL_43:
          v46(v103, v104, 0, 1);
LABEL_52:

          v44, v157, v158, v159, v160, v161, v162, v163;
          return;
        }

        v61 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1BE0B69E0;
        v62 = [v61 serialNumber];
        v63 = sub_1BE052434();
        v65 = v64;

        *(v58 + 32) = v63;
        *(v58 + 40) = v65;
        v66 = v61;
        v67 = 1;
LABEL_38:
        sub_1BD307F28(v66, v67);
        goto LABEL_39;
      }

      v175 = v59;
      v75 = [v59 devices];
      sub_1BD0E5E8C(0, &qword_1EBD41B08, 0x1E69B8870);
      v76 = sub_1BE052744();

      if (v76 >> 62)
      {
        v84 = sub_1BE053704();
        if (v84)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v84 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v84)
        {
LABEL_25:
          v164 = v48;
          v165 = v44;
          v179[0] = v58;
          sub_1BD03B254(0, v84 & ~(v84 >> 63), 0, v79, v80, v81, v82, v83);
          if ((v84 & 0x8000000000000000) == 0)
          {
            v85 = 0;
            v58 = v179[0];
            v86 = v76;
            v87 = v76 & 0xC000000000000001;
            v88 = v76;
            do
            {
              if (v87)
              {
                v89 = MEMORY[0x1BFB40900](v85, v86);
              }

              else
              {
                v89 = v86[v85 + 4];
              }

              v90 = v89;
              v91 = [v90 serialNumber];
              v92 = sub_1BE052434();
              v94 = v93;

              v179[0] = v58;
              v101 = *(v58 + 16);
              v100 = *(v58 + 24);
              if (v101 >= v100 >> 1)
              {
                sub_1BD03B254((v100 > 1), v101 + 1, 1, v95, v96, v97, v98, v99);
                v58 = v179[0];
              }

              ++v85;
              *(v58 + 16) = v101 + 1;
              v102 = v58 + 16 * v101;
              *(v102 + 32) = v92;
              *(v102 + 40) = v94;
              v86 = v88;
            }

            while (v84 != v85);
            sub_1BD307F28(v175, 0);
            v88, v105, v106, v107, v108, v109, v110, v111;
            v48 = v164;
            v44 = v165;
            v46 = v168;
            goto LABEL_39;
          }

          __break(1u);
          goto LABEL_54;
        }
      }

      v76, v77, v78, v79, v80, v81, v82, v83;
      v66 = v175;
      v67 = 0;
      goto LABEL_38;
    }

    v37 = 0xD00000000000001BLL;
    v38 = 0x80000001BE131580;
  }

  else
  {
    v37 = 0x2072616320746F6ELL;
    v38 = 0xEB0000000079656BLL;
  }

  (a1)(v37, v38, 0, 1);
  v39 = v178;
}

void sub_1BD60A330(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_credential);
  if (v5 && (v6 = v2, (v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_companionContext)) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
    v8 = sub_1BE04C384();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BE0B69E0;
    *(v11 + v10) = v5;
    (*(v9 + 104))(v11 + v10, *MEMORY[0x1E69B82A8], v8);
    sub_1BE04C3D4();
    swift_allocObject();
    v12 = v5;
    sub_1BE048964();
    v13 = sub_1BE04C394();
    v14 = type metadata accessor for CarKeyProvisioningUICoordinator();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v16 = &v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
    *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] = 0;
    *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
    *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = 0;
    *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;
    *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;
    v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning] = 0;
    *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion] = 0;
    *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context] = v7;
    *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = v13;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    *(v16 + 1) = 0;
    swift_unknownObjectWeakAssign();
    v54.receiver = v15;
    v54.super_class = v14;
    sub_1BE048964();
    sub_1BE048964();
    v17 = objc_msgSendSuper2(&v54, sel_init);
    v18 = *(v6 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_coordinator);
    *(v6 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_coordinator) = v17;
    v19 = v17;

    v20 = &v19[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate];
    swift_beginAccess();
    *(v20 + 1) = &off_1F3BB1C00;
    swift_unknownObjectWeakAssign();
    v21 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v7;
    v23[4] = v12;
    v23[5] = v19;
    v23[6] = a1;
    v23[7] = a2;
    v24 = v12;
    sub_1BE048964();
    v25 = v19;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD31821C(v21, 5, sub_1BD60A9E8, v23);

    v7, v26, v27, v28, v29, v30, v31, v32;
    v13, v33, v34, v35, v36, v37, v38, v39;

    v22, v40, v41, v42, v43, v44, v45, v46;
    v23, v47, v48, v49, v50, v51, v52, v53;
  }

  else
  {
    a1(0);
  }
}

void sub_1BD60A724(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a1)
    {
      a6(0);
    }

    else
    {
      objc_allocWithZone(type metadata accessor for ProvisioningCarAddToWatchViewController());
      sub_1BE048964();
      v13 = sub_1BD44D378(a3, a4);
      v14 = *&v13[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator];
      *&v13[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator] = a5;

      v15 = &a5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
      swift_beginAccess();
      *(v15 + 1) = &off_1F3BA73A8;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v16 = *&v12[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_viewController];
      *&v12[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_viewController] = v13;
      v17 = a5;
      v18 = v13;

      a6(1);
    }
  }
}

uint64_t sub_1BD60A8A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD60A8DC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD60A930()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_viewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1BD60A960()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v0, &off_1F3BB1C10, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD60A9F8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BE053B84() & 1;
  }
}

uint64_t sub_1BD60AA50(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BE053B84() & 1;
  }
}

id sub_1BD60AAA8(uint64_t a1, void *a2)
{
  v4 = sub_1BE04BC84();
  v5 = [v4 devicePrimaryPaymentApplication];
  if (v5 && (v6 = v5, v7 = [v5 subcredentials], v6, v7) && (sub_1BD0E5E8C(0, &qword_1EBD398B8, 0x1E69B85A0), sub_1BD60AC0C(), v8 = sub_1BE052A34(), v7, v9 = sub_1BD960F00(v8), v8, v10, v11, v12, v13, v14, v15, v16, v9))
  {
    v17 = [v4 paymentPass];
    v18 = [objc_allocWithZone(MEMORY[0x1E69B8C38]) initWithPaymentPass:v17 credentialToShare:v9];

    objc_allocWithZone(type metadata accessor for ProvisioningCarAddToWatchFlowItem());
    v19 = a2;
    v20 = sub_1BD6096B0(a1, v18, a2);
  }

  else
  {
    v21 = objc_allocWithZone(type metadata accessor for ProvisioningCarAddToWatchFlowItem());
    v20 = sub_1BD6096B0(a1, 0, 0);
  }

  return v20;
}

unint64_t sub_1BD60AC0C()
{
  result = qword_1EBD474E0;
  if (!qword_1EBD474E0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD398B8, 0x1E69B85A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD474E0);
  }

  return result;
}

uint64_t LightenForegroundModifier.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

uint64_t LightenForegroundModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BE051C44();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D040, &qword_1BE0E7F20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23[-v13];
  v15 = *v2;
  v16 = sub_1BE051CD4();
  v18 = v17;
  if (v15)
  {
    v23[15] = 1;
  }

  else
  {
    v23[14] = 0;
  }

  sub_1BD60AF84();
  sub_1BE051C34();
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D050, &qword_1BE0E7F28) + 36);
  (*(v6 + 32))(v11, v8, v5);
  sub_1BD60AFD8(v11, v14);
  sub_1BD60AFD8(v14, v19);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D058, &qword_1BE0E7F30) + 36));
  *v20 = v16;
  v20[1] = v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D060, &qword_1BE0E7F38);
  return (*(*(v21 - 8) + 16))(a2, a1, v21);
}

unint64_t sub_1BD60AF84()
{
  result = qword_1EBD4D048;
  if (!qword_1EBD4D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D048);
  }

  return result;
}

uint64_t sub_1BD60AFD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D040, &qword_1BE0E7F20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD60B04C()
{
  result = qword_1EBD4D068;
  if (!qword_1EBD4D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D068);
  }

  return result;
}

unint64_t sub_1BD60B0E0()
{
  result = qword_1EBD4D070;
  if (!qword_1EBD4D070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D050, &qword_1BE0E7F28);
    sub_1BD0DE4F4(&qword_1EBD4D078, &qword_1EBD4D060, &qword_1BE0E7F38, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&qword_1EBD4D080, &qword_1EBD4D058, &qword_1BE0E7F30, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D070);
  }

  return result;
}

uint64_t sub_1BD60B1D4()
{
  v1 = sub_1BE051384();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D098, &qword_1BE0E8138);
  sub_1BE051C24();
  v6 = swift_allocObject();
  v22 = xmmword_1BE0B69E0;
  *(v6 + 16) = xmmword_1BE0B69E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0A0, qword_1BE0E8140);
  sub_1BE051C04();
  v7 = swift_allocObject();
  v7[1] = v22;
  v8 = 1.123;
  v9 = 0.0;
  if (!v5)
  {
    v8 = 0.0;
  }

  v10 = -0.257;
  if (!v5)
  {
    v10 = 0.0;
  }

  v11 = 0.026;
  if (!v5)
  {
    v11 = 0.0;
  }

  v12 = 0.257;
  if (v5)
  {
    v9 = 1.174;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = 0.198;
  if (v5)
  {
    v13 = 1.0;
  }

  v23 = v8;
  v24 = v10;
  v25 = v11;
  v26 = 0;
  v27 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v5)), 0x1FuLL)), xmmword_1BE0E7F00, xmmword_1BE0E7EF0);
  v28 = 0;
  v29 = v27.i64[0];
  v30 = v12;
  v31 = v9;
  v32 = 0;
  v33 = v27.i32[0];
  v34 = 0xBF370A3DBE5A1CACLL;
  v35 = -1114409796;
  v36 = v13;
  v37 = 0;
  sub_1BE051BF4();
  (*(v2 + 104))(v4, *MEMORY[0x1E69814D8], v1);
  sub_1BE051474();
  sub_1BE051C14();
  v7, v14, v15, v16, v17, v18, v19, v20;
  return v6;
}

unint64_t sub_1BD60B51C()
{
  result = qword_1EBD4D088;
  if (!qword_1EBD4D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D088);
  }

  return result;
}

unint64_t sub_1BD60B574()
{
  result = qword_1EBD4D090;
  if (!qword_1EBD4D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D090);
  }

  return result;
}

unint64_t sub_1BD60B5DC()
{
  result = qword_1EBD4D0A8;
  if (!qword_1EBD4D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D0A8);
  }

  return result;
}

uint64_t type metadata accessor for PassHeaderView(uint64_t a1)
{
  result = qword_1EBD4D0B0;
  if (!qword_1EBD4D0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD60B6A4(uint64_t a1)
{
  sub_1BD60B770(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1C2DD8(319, &qword_1EBD4D0C8, &type metadata for BankAccount);
    if (v2 <= 0x3F)
    {
      sub_1BD1C2DD8(319, &qword_1EBD4F750, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD60B770(uint64_t a1)
{
  if (!qword_1EBD4D0C0)
  {
    type metadata accessor for WrappedPass(255);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4D0C0);
    }
  }
}

uint64_t sub_1BD60B7E4@<X0>(void *a1@<X8>)
{
  v234 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0D0, &qword_1BE0E8218);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v201 = (&v199 - v3);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0D8, &qword_1BE0E8220);
  MEMORY[0x1EEE9AC00](v206);
  v202 = &v199 - v4;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0E0, &qword_1BE0E8228);
  v207 = *(v209 - 1);
  MEMORY[0x1EEE9AC00](v209);
  v203 = &v199 - v5;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0E8, &qword_1BE0E8230);
  MEMORY[0x1EEE9AC00](v208);
  v204 = &v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v205 = &v199 - v8;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0F0, &qword_1BE0E8238);
  v212 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v210 = &v199 - v9;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0F8, &qword_1BE0E8240);
  MEMORY[0x1EEE9AC00](v231);
  v232 = &v199 - v10;
  v11 = sub_1BE04FF64();
  v228 = *(v11 - 8);
  v229 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v227 = &v199 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D100, &qword_1BE0E8248);
  MEMORY[0x1EEE9AC00](v224);
  v226 = &v199 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v225 = (&v199 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D108, &qword_1BE0E8250);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v213 = (&v199 - v17);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D110, &qword_1BE0E8258);
  MEMORY[0x1EEE9AC00](v217);
  v214 = &v199 - v18;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D118, &qword_1BE0E8260);
  v219 = *(v221 - 1);
  MEMORY[0x1EEE9AC00](v221);
  v215 = &v199 - v19;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D120, &qword_1BE0E8268);
  MEMORY[0x1EEE9AC00](v220);
  v216 = &v199 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v218 = &v199 - v22;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D128, &qword_1BE0E8270);
  v223 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v222 = &v199 - v23;
  v24 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v24);
  v211 = &v199 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v199 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90, &unk_1BE0B89D0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v199 - v30;
  v32 = type metadata accessor for WrappedPass(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v199 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(v1, v31, &unk_1EBD43B90, &unk_1BE0B89D0);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_1BD0DE53C(v31, &unk_1EBD43B90, &unk_1BE0B89D0);
    v36 = (v1 + *(type metadata accessor for PassHeaderView(0) + 20));
    v37 = *v36;
    if (*v36)
    {
      v222 = v36[1];
      v223 = v37;
      PKPassFrontFaceContentSize();
      v221 = PKPassKitUIBundle();
      v220 = sub_1BE0515F4();
      sub_1BE051CD4();
      sub_1BE04E5E4();
      v38 = v257;
      v39 = v258;
      v40 = v259;
      v41 = v260;
      v42 = v261;
      v43 = v262;
      v44 = sub_1BE0513F4();
      v45 = sub_1BE051454();
      v44, v46, v47, v48, v49, v50, v51, v52;
      LOBYTE(v249) = v39;
      LOBYTE(v247[0]) = v41;
      v53 = sub_1BE0513F4();
      v54 = sub_1BE051454();
      v53, v55, v56, v57, v58, v59, v60, v61;
      *&v249 = v220;
      *(&v249 + 1) = v38;
      LOBYTE(v250) = v39;
      *(&v250 + 1) = v40;
      LOBYTE(v251) = v41;
      *(&v251 + 1) = v42;
      *&v252 = v43;
      v253 = xmmword_1BE0CACB0;
      *(&v252 + 1) = v45;
      *&v254 = 0x3FF0000000000000;
      v255 = xmmword_1BE0CC060;
      *(&v254 + 1) = v54;
      v256 = 0x4000000000000000;
      sub_1BD0DE19C(&v249, v247, &qword_1EBD4D138, &qword_1BE0E8280);
      v62 = v223;
      v63 = [v223 bankName];
      if (v63)
      {
        v64 = v63;
        v65 = sub_1BE052434();
        v67 = v66;
      }

      else
      {
        v65 = 0;
        v67 = 0xE000000000000000;
      }

      v137 = sub_1BD41F634(v62);
      v139 = v138;
      v140 = sub_1BE04F7B4();
      v141 = v201;
      *v201 = v140;
      *(v141 + 8) = 0x4020000000000000;
      *(v141 + 16) = 0;
      v142 = v141 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D140, &qword_1BE0E8288) + 44);
      sub_1BD0DE19C(&v249, v247, &qword_1EBD4D138, &qword_1BE0E8280);
      v143 = sub_1BE04F7B4();
      v144 = v225;
      *v225 = v143;
      *(v144 + 8) = 0x4010000000000000;
      *(v144 + 16) = 0;
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D148, &qword_1BE0E8290);
      sub_1BD60D120(v65, v67, v137, v139, 0, 0, v144 + *(v145 + 44));
      v146 = (v144 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D150, &qword_1BE0E8298) + 36));
      v147 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
      v148 = sub_1BE0505C4();
      (*(*(v148 - 8) + 56))(v146 + v147, 1, 1, v148);
      *v146 = swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v150 = v144 + *(v224 + 36);
      *v150 = KeyPath;
      *(v150 + 8) = 1;
      v241 = v253;
      v242 = v254;
      v243 = v255;
      v244 = v256;
      v237 = v249;
      v238 = v250;
      v239 = v251;
      v240 = v252;
      v151 = v226;
      sub_1BD0DE19C(v144, v226, &qword_1EBD4D100, &qword_1BE0E8248);
      v152 = v241;
      v153 = v242;
      v245[4] = v241;
      v245[5] = v242;
      v154 = v243;
      v245[6] = v243;
      v246 = v244;
      v155 = v237;
      v156 = v238;
      v245[0] = v237;
      v245[1] = v238;
      v157 = v239;
      v158 = v240;
      v245[2] = v239;
      v245[3] = v240;
      *(v142 + 112) = v244;
      *(v142 + 80) = v153;
      *(v142 + 96) = v154;
      *(v142 + 48) = v158;
      *(v142 + 64) = v152;
      *(v142 + 16) = v156;
      *(v142 + 32) = v157;
      *v142 = v155;
      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D158, &qword_1BE0E8300);
      sub_1BD0DE19C(v151, v142 + *(v159 + 48), &qword_1EBD4D100, &qword_1BE0E8248);
      sub_1BD0DE19C(v245, v247, &qword_1EBD4D138, &qword_1BE0E8280);
      sub_1BD0DE53C(v144, &qword_1EBD4D100, &qword_1BE0E8248);
      sub_1BD0DE53C(v151, &qword_1EBD4D100, &qword_1BE0E8248);
      v247[4] = v241;
      v247[5] = v242;
      v247[6] = v243;
      v248 = v244;
      v247[0] = v237;
      v247[1] = v238;
      v247[2] = v239;
      v247[3] = v240;
      sub_1BD0DE53C(v247, &qword_1EBD4D138, &qword_1BE0E8280);
      v67, v160, v161, v162, v163, v164, v165, v166;
      v139, v167, v168, v169, v170, v171, v172, v173;
      sub_1BE051CD4();
      sub_1BE04EE54();
      v174 = v202;
      sub_1BD0DE204(v141, v202, &qword_1EBD4D0D0, &qword_1BE0E8218);
      v175 = v206;
      v176 = (v174 + *(v206 + 36));
      v177 = v268;
      v176[4] = v267;
      v176[5] = v177;
      v176[6] = v269;
      v178 = v264;
      *v176 = v263;
      v176[1] = v178;
      v179 = v266;
      v176[2] = v265;
      v176[3] = v179;
      v180 = v227;
      sub_1BE04FF54();
      v181 = sub_1BD60D8AC();
      v182 = v203;
      sub_1BE050D14();
      (*(v228 + 8))(v180, v229);
      sub_1BD0DE53C(v174, &qword_1EBD4D0D8, &qword_1BE0E8220);
      sub_1BE052434();
      v184 = v183;
      v235 = v175;
      v236 = v181;
      swift_getOpaqueTypeConformance2();
      v185 = v205;
      v186 = v209;
      sub_1BE050DE4();
      v184, v187, v188, v189, v190, v191, v192, v193;
      (*(v207 + 8))(v182, v186);
      sub_1BD0DE19C(v185, v204, &qword_1EBD4D0E8, &qword_1BE0E8230);
      sub_1BD60D950();
      v194 = v210;
      sub_1BE051A24();
      sub_1BD0DE53C(v185, &qword_1EBD4D0E8, &qword_1BE0E8230);
      sub_1BD0DE53C(&v249, &qword_1EBD4D138, &qword_1BE0E8280);
      v195 = v212;
      v196 = v233;
      (*(v212 + 2))(v232, v194, v233);
      swift_storeEnumTagMultiPayload();
      sub_1BD60DBD8(&qword_1EBD4D178, &qword_1EBD4D128, &qword_1BE0E8270, sub_1BD60DA18);
      sub_1BD60DBD8(&qword_1EBD4D198, &qword_1EBD4D0F0, &qword_1BE0E8238, sub_1BD60D950);
      v197 = v234;
      sub_1BE04F9A4();

      sub_1BD0DE53C(&v249, &qword_1EBD4D138, &qword_1BE0E8280);
      (*(v195 + 8))(v194, v196);
      v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D130, &qword_1BE0E8278);
      return (*(*(v198 - 8) + 56))(v197, 0, 1, v198);
    }

    else
    {
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D130, &qword_1BE0E8278);
      return (*(*(v78 - 8) + 56))(v234, 1, 1, v78);
    }
  }

  else
  {
    sub_1BD0E8DE0(v31, v35);
    sub_1BD60DC60(v35, v28 + v24[6], type metadata accessor for WrappedPass);
    v68 = type metadata accessor for PassHeaderView(0);
    v69 = *(v1 + v68[8]);
    PKPassFrontFaceContentSize();
    v28[3] = v69;
    v28[4] = v69 * (v71 / v70);
    *v28 = sub_1BD70C870;
    v28[1] = 0.0;
    *(v28 + 16) = 0;
    *(v28 + v24[7]) = 1;
    *(v28 + v24[8]) = 1911;
    v208 = sub_1BD4943B0();
    v73 = v72;
    v74 = v1 + v68[6];
    v75 = *(v74 + 8);
    v212 = v28;
    v200 = v35;
    if (v75)
    {
      v76 = *v74;
      v77 = v75;
    }

    else
    {
      v76 = sub_1BD60CD8C(v35);
      v77 = v80;
    }

    v81 = (v1 + v68[7]);
    v82 = *v81;
    v83 = v81[1];
    sub_1BE048C84();
    v84 = sub_1BE04F7B4();
    v85 = v213;
    *v213 = v84;
    *(v85 + 8) = 0x4020000000000000;
    *(v85 + 16) = 0;
    v86 = v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1A0, &qword_1BE0E8308) + 44);
    v87 = sub_1BE04F7B4();
    v88 = v225;
    *v225 = v87;
    *(v88 + 8) = 0x4010000000000000;
    *(v88 + 16) = 0;
    v89 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D148, &qword_1BE0E8290) + 44);
    v209 = v73;
    v210 = v77;
    sub_1BD60D120(v208, v73, v76, v77, v82, v83, v89);
    v90 = (v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D150, &qword_1BE0E8298) + 36));
    v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
    v92 = sub_1BE0505C4();
    (*(*(v92 - 8) + 56))(v90 + v91, 1, 1, v92);
    *v90 = swift_getKeyPath();
    v93 = swift_getKeyPath();
    v94 = v88 + *(v224 + 36);
    *v94 = v93;
    *(v94 + 8) = 1;
    v95 = v211;
    sub_1BD60DC60(v212, v211, type metadata accessor for PassImage);
    v96 = v226;
    sub_1BD0DE19C(v88, v226, &qword_1EBD4D100, &qword_1BE0E8248);
    sub_1BD60DC60(v95, v86, type metadata accessor for PassImage);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1A8, &qword_1BE0E8310);
    sub_1BD0DE19C(v96, v86 + *(v97 + 48), &qword_1EBD4D100, &qword_1BE0E8248);
    sub_1BD0DE53C(v88, &qword_1EBD4D100, &qword_1BE0E8248);
    sub_1BD0DE53C(v96, &qword_1EBD4D100, &qword_1BE0E8248);
    sub_1BD60DCC8(v95, type metadata accessor for PassImage);
    v209, v98, v99, v100, v101, v102, v103, v104;
    sub_1BE051CD4();
    sub_1BE04EE54();
    v105 = v214;
    sub_1BD0DE204(v85, v214, &qword_1EBD4D108, &qword_1BE0E8250);
    v106 = v217;
    v107 = (v105 + *(v217 + 36));
    v108 = v254;
    v107[4] = v253;
    v107[5] = v108;
    v107[6] = v255;
    v109 = v250;
    *v107 = v249;
    v107[1] = v109;
    v110 = v252;
    v107[2] = v251;
    v107[3] = v110;
    v111 = v227;
    sub_1BE04FF54();
    v112 = sub_1BD60DAE0();
    v113 = v215;
    sub_1BE050D14();
    (*(v228 + 8))(v111, v229);
    sub_1BD0DE53C(v105, &qword_1EBD4D110, &qword_1BE0E8258);
    sub_1BE052434();
    v115 = v114;
    *&v247[0] = v106;
    *(&v247[0] + 1) = v112;
    swift_getOpaqueTypeConformance2();
    v116 = v218;
    v117 = v221;
    sub_1BE050DE4();
    v115, v118, v119, v120, v121, v122, v123, v124;
    (*(v219 + 8))(v113, v117);
    sub_1BD0DE19C(v116, v216, &qword_1EBD4D120, &qword_1BE0E8268);
    sub_1BD60DA18();
    v125 = v222;
    sub_1BE051A24();
    v210, v126, v127, v128, v129, v130, v131, v132;
    sub_1BD0DE53C(v116, &qword_1EBD4D120, &qword_1BE0E8268);
    v133 = v223;
    v134 = v230;
    (*(v223 + 2))(v232, v125, v230);
    swift_storeEnumTagMultiPayload();
    sub_1BD60DBD8(&qword_1EBD4D178, &qword_1EBD4D128, &qword_1BE0E8270, sub_1BD60DA18);
    sub_1BD60DBD8(&qword_1EBD4D198, &qword_1EBD4D0F0, &qword_1BE0E8238, sub_1BD60D950);
    v135 = v234;
    sub_1BE04F9A4();
    v133[1](v125, v134);
    sub_1BD60DCC8(v200, type metadata accessor for WrappedPass);
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D130, &qword_1BE0E8278);
    (*(*(v136 - 8) + 56))(v135, 0, 1, v136);
    return sub_1BD60DCC8(v212, type metadata accessor for PassImage);
  }
}

id sub_1BD60CD8C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD60DC60(a1, v14, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD60DCC8(v14, type metadata accessor for WrappedPass);
      (*(v3 + 104))(v11, *MEMORY[0x1E69B8068], v2);
      result = PKPassKitBundle();
      if (result)
      {
        v17 = result;
        v18 = sub_1BE04B6F4();

        (*(v3 + 8))(v11, v2);
        return v18;
      }

      __break(1u);
      goto LABEL_17;
    }

    sub_1BD60DCC8(v14, type metadata accessor for WrappedPass);
    return 0;
  }

  v19 = *v14;
  if ([*v14 passType] != 1)
  {

    return 0;
  }

  v20 = [v19 isTransitPass];
  v21 = *MEMORY[0x1E69B8068];
  v22 = *(v3 + 104);
  if (v20)
  {
    v22(v8, v21, v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v23 = result;
    v24 = sub_1BE04B6F4();

    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v22(v5, v21, v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v25 = result;
    v24 = sub_1BE04B6F4();

    (*(v3 + 8))(v5, v2);
  }

  return v24;
}

uint64_t sub_1BD60D120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v277 = a6;
  v274 = a5;
  v275 = a4;
  v273 = a3;
  v280 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v282 = &v272 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v281 = &v272 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v279 = &v272 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v285 = &v272 - v16;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v286 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v283 = &v272 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v272 - v19;
  v287 = a1;
  v288 = a2;
  v21 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v276 = v21;
  v22 = sub_1BE0506C4();
  v24 = v23;
  LOBYTE(v21) = v25;
  v27 = v26;
  v28 = sub_1BE0503D4();
  v29 = sub_1BE050334();
  v28, v30, v31, v32, v33, v34, v35, v36;
  v37 = sub_1BE0505F4();
  v39 = v38;
  LOBYTE(a1) = v40;
  v42 = v41;
  v29, v38, v40, v41, v43, v44, v45, v46;
  sub_1BD0DDF10(v22, v24, (v21 & 1), v47, v48, v49, v50, v51);
  v27, v52, v53, v54, v55, v56, v57, v58;
  v59 = sub_1BE051224();
  v60 = sub_1BE050564();
  v62 = v61;
  LOBYTE(v22) = v63;
  v65 = v64;
  v59, v61, v63, v64, v66, v67, v68, v69;
  sub_1BD0DDF10(v37, v39, (a1 & 1), v70, v71, v72, v73, v74);
  v42, v75, v76, v77, v78, v79, v80, v81;
  v287 = v60;
  v288 = v62;
  v289 = v22 & 1;
  v290 = v65;
  sub_1BE052434();
  v83 = v82;
  v278 = v20;
  sub_1BE050DE4();
  v83, v84, v85, v86, v87, v88, v89, v90;
  sub_1BD0DDF10(v60, v62, (v22 & 1), v91, v92, v93, v94, v95);
  v65, v96, v97, v98, v99, v100, v101, v102;
  if (v275)
  {
    v287 = v273;
    v288 = v275;
    sub_1BE048C84();
    v103 = sub_1BE0506C4();
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v110 = sub_1BE0502E4();
    v111 = sub_1BE0505F4();
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v110, v112, v114, v116, v118, v119, v120, v121;
    sub_1BD0DDF10(v103, v105, (v107 & 1), v122, v123, v124, v125, v126);
    v109, v127, v128, v129, v130, v131, v132, v133;
    v134 = sub_1BE051234();
    v135 = sub_1BE050564();
    v137 = v136;
    LOBYTE(v105) = v138;
    v140 = v139;
    v134, v136, v138, v139, v141, v142, v143, v144;
    sub_1BD0DDF10(v111, v113, (v115 & 1), v145, v146, v147, v148, v149);
    v117, v150, v151, v152, v153, v154, v155, v156;
    v287 = v135;
    v288 = v137;
    v289 = v105 & 1;
    v290 = v140;
    sub_1BE052434();
    v158 = v157;
    v159 = v283;
    sub_1BE050DE4();
    v158, v160, v161, v162, v163, v164, v165, v166;
    sub_1BD0DDF10(v135, v137, (v105 & 1), v167, v168, v169, v170, v171);
    v140, v172, v173, v174, v175, v176, v177, v178;
    v179 = v285;
    sub_1BD0DE204(v159, v285, &qword_1EBD452C0, &qword_1BE0B7620);
    v180 = 0;
    v181 = v179;
  }

  else
  {
    v180 = 1;
    v181 = v285;
    v159 = v283;
  }

  v182 = v286 + 56;
  v183 = *(v286 + 56);
  v184 = 1;
  v183(v181, v180, 1, v284);
  if (v277)
  {
    v287 = v274;
    v288 = v277;
    sub_1BE048C84();
    v185 = sub_1BE0506C4();
    v286 = v182;
    v186 = v185;
    v188 = v187;
    v190 = v189;
    v277 = v183;
    v192 = v191;
    v193 = sub_1BE0502E4();
    v194 = sub_1BE0505F4();
    v196 = v195;
    v197 = v159;
    v199 = v198;
    v201 = v200;
    v193, v195, v198, v200, v202, v203, v204, v205;
    sub_1BD0DDF10(v186, v188, (v190 & 1), v206, v207, v208, v209, v210);
    v192, v211, v212, v213, v214, v215, v216, v217;
    v218 = sub_1BE051234();
    v219 = sub_1BE050564();
    v221 = v220;
    LOBYTE(v188) = v222;
    v224 = v223;
    v218, v220, v222, v223, v225, v226, v227, v228;
    v229 = (v199 & 1);
    v159 = v197;
    sub_1BD0DDF10(v194, v196, v229, v230, v231, v232, v233, v234);
    v201, v235, v236, v237, v238, v239, v240, v241;
    v287 = v219;
    v288 = v221;
    v289 = v188 & 1;
    v290 = v224;
    sub_1BE052434();
    v243 = v242;
    sub_1BE050DE4();
    v243, v244, v245, v246, v247, v248, v249, v250;
    v251 = v221;
    v183 = v277;
    sub_1BD0DDF10(v219, v251, (v188 & 1), v252, v253, v254, v255, v256);
    v224, v257, v258, v259, v260, v261, v262, v263;
    v264 = v279;
    sub_1BD0DE204(v197, v279, &qword_1EBD452C0, &qword_1BE0B7620);
    v184 = 0;
  }

  else
  {
    v264 = v279;
  }

  v183(v264, v184, 1, v284);
  v265 = v278;
  sub_1BD0DE19C(v278, v159, &qword_1EBD452C0, &qword_1BE0B7620);
  v266 = v285;
  v267 = v281;
  sub_1BD0DE19C(v285, v281, &unk_1EBD5BB60, &qword_1BE0C4580);
  v268 = v282;
  sub_1BD0DE19C(v264, v282, &unk_1EBD5BB60, &qword_1BE0C4580);
  v269 = v280;
  sub_1BD0DE19C(v159, v280, &qword_1EBD452C0, &qword_1BE0B7620);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1B0, &qword_1BE0E8318);
  sub_1BD0DE19C(v267, v269 + *(v270 + 48), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE19C(v268, v269 + *(v270 + 64), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v264, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v266, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v265, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v268, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v267, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v283, &qword_1EBD452C0, &qword_1BE0B7620);
}

unint64_t sub_1BD60D8AC()
{
  result = qword_1EBD4D160;
  if (!qword_1EBD4D160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D0D8, &qword_1BE0E8220);
    sub_1BD60DB84(&qword_1EBD4D168, &qword_1EBD4D0D0, &qword_1BE0E8218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D160);
  }

  return result;
}

unint64_t sub_1BD60D950()
{
  result = qword_1EBD4D170;
  if (!qword_1EBD4D170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D0E8, &qword_1BE0E8230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D0D8, &qword_1BE0E8220);
    sub_1BD60D8AC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D170);
  }

  return result;
}

unint64_t sub_1BD60DA18()
{
  result = qword_1EBD4D180;
  if (!qword_1EBD4D180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D120, &qword_1BE0E8268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D110, &qword_1BE0E8258);
    sub_1BD60DAE0();
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D180);
  }

  return result;
}

unint64_t sub_1BD60DAE0()
{
  result = qword_1EBD4D188;
  if (!qword_1EBD4D188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D110, &qword_1BE0E8258);
    sub_1BD60DB84(&qword_1EBD4D190, &qword_1EBD4D108, &qword_1BE0E8250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D188);
  }

  return result;
}

uint64_t sub_1BD60DB84(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1BD60DBD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD60DC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD60DCC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD60DD28()
{
  result = qword_1EBD4D1B8;
  if (!qword_1EBD4D1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D1C0, &qword_1BE0E8320);
    sub_1BD60DDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D1B8);
  }

  return result;
}

unint64_t sub_1BD60DDAC()
{
  result = qword_1EBD4D1C8;
  if (!qword_1EBD4D1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D130, &qword_1BE0E8278);
    sub_1BD60DBD8(&qword_1EBD4D178, &qword_1EBD4D128, &qword_1BE0E8270, sub_1BD60DA18);
    sub_1BD60DBD8(&qword_1EBD4D198, &qword_1EBD4D0F0, &qword_1BE0E8238, sub_1BD60D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D1C8);
  }

  return result;
}

uint64_t sub_1BD60DE90(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 24) = a1;
  *(v4 + 16) = a3;
  v5 = sub_1BE04D214();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  *(v4 + 88) = swift_task_alloc();
  v6 = sub_1BE053924();
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD60E004, v3, 0);
}

uint64_t sub_1BD60E004(uint64_t a1)
{
  v2 = v1[5];
  if (*(v2 + 112))
  {
    sub_1BE04D1E4();
    v3 = sub_1BE04D204();
    v4 = sub_1BE052C54();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v1[10];
    v7 = v1[6];
    v8 = v1[7];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v3, v4, "Throttled task already running, ignoring new call.", v9, 2u);
      MEMORY[0x1BFB45F20](v9, -1, -1);
    }

    (*(v8 + 8))(v6, v7);

    v10 = v1[1];

    return v10();
  }

  else
  {
    *(v2 + 112) = 1;
    v12 = sub_1BE053DB4();
    v14 = v13;
    sub_1BE053C44();
    v15 = swift_task_alloc();
    v1[15] = v15;
    *v15 = v1;
    v15[1] = sub_1BD60E204;

    return sub_1BD60F4D4(v12, v14, 0, 0, 1);
  }
}

uint64_t sub_1BD60E204()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_1BD60E4C0;
  }

  else
  {
    v7 = sub_1BD60E38C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1BD60E38C()
{
  v1 = v0[11];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_1BE0528D4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v2;
  sub_1BE048964();
  v6 = sub_1BD122C00(0, 0, v1, &unk_1BE0E83E0, v5);
  v6, v7, v8, v9, v10, v11, v12, v13;
  *(v0[5] + 112) = 0;

  v14 = v0[1];

  return v14();
}

uint64_t sub_1BD60E4C0(uint64_t a1)
{
  if (sub_1BE052974())
  {
    sub_1BE04D1E4();
    v2 = sub_1BE04D204();
    v3 = sub_1BE052C54();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v1[16];
    v6 = v1[9];
    v7 = v1[6];
    v8 = v1[7];
    if (v4)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v2, v3, "Throttled task cancelled.", v9, 2u);
      MEMORY[0x1BFB45F20](v9, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v10 = v1[16];
    sub_1BE04D1E4();
    v11 = v10;
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C34();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v1[16];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v15;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1BD026000, v12, v13, "Throttled task failed with an error %@.", v16, 0xCu);
      sub_1BD1E236C(v17);
      MEMORY[0x1BFB45F20](v17, -1, -1);
      MEMORY[0x1BFB45F20](v16, -1, -1);
    }

    else
    {
    }

    (*(v1[7] + 8))(v1[8], v1[6]);
  }

  *(v1[5] + 112) = 0;

  v20 = v1[1];

  return v20();
}

uint64_t sub_1BD60E730(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1BD126968;

  return v7();
}

uint64_t sub_1BD60E818()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BD60E854(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1BD126968;

  return sub_1BD60DE90(a3, a4, a1);
}

void *sub_1BD60E908()
{
  type metadata accessor for Throttler();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0x4014000000000000;
  result[4] = &unk_1BE0E83E8;
  result[5] = 0;
  qword_1EBD4D1D0 = &unk_1BE0E83F8;
  *algn_1EBD4D1D8 = result;
  return result;
}

uint64_t sub_1BD60E990()
{
  v1 = sub_1BE04D214();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_1BE052104();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD60EAA8, 0, 0);
}

uint64_t sub_1BD60EAA8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[8] = [objc_allocWithZone(sub_1BE052124()) init];
  (*(v2 + 104))(v1, *MEMORY[0x1E699C738], v3);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1BD60EB98;
  v5 = v0[7];

  return MEMORY[0x1EEE041A8](v5);
}

uint64_t sub_1BD60EB98()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1BD60ED7C;
  }

  else
  {
    v5 = sub_1BD60ED08;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BD60ED08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD60ED7C()
{
  v1 = *(v0 + 80);

  sub_1BE04D1E4();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to update FinHealth insights with error %@.", v7, 0xCu);
    sub_1BD1E236C(v8);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 24) + 8))(*(v0 + 32), *(v0 + 16));

  v11 = *(v0 + 8);

  return v11();
}

void static BankConnectTransactionInsightsLoader.requestPersonalizedInsightsUpdate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_1BE0528D4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = sub_1BD122C00(0, 0, v3, &unk_1BE0E8330, v5);
  v6, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1BD60F018()
{
  if (qword_1EBD36CC0 != -1)
  {
    swift_once();
  }

  v3 = (qword_1EBD4D1D0 + *qword_1EBD4D1D0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return v3();
}

uint64_t sub_1BD60F138()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD126968;

  return sub_1BD60EFFC();
}

id BankConnectTransactionInsightsLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectTransactionInsightsLoader.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BankConnectTransactionInsightsLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD60F420()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD60EFFC();
}

uint64_t sub_1BD60F4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1BE053914();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1BD60F5D4, 0, 0);
}

uint64_t sub_1BD60F5D4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1BE053924();
  v5 = sub_1BD60FA4C(&qword_1EBD4D1E0, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1BE053C24();
  sub_1BD60FA4C(&qword_1EBD4D1E8, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1BE053934();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1BD60F764;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1BD60F764()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD60F920, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1BD60F920()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD60F98C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD60E730(a1, v4, v5, v6);
}

uint64_t sub_1BD60FA4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_14Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));
  *(v1 + 40), v2, v3, v4, v5, v6, v7, v8;

  return swift_deallocObject();
}

uint64_t sub_1BD60FADC()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD126968;

  return sub_1BD60E854(v3, v2, v5, v4);
}

uint64_t sub_1BD60FC20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450, &qword_1BE0D7250);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD0DE19C(a1, &v5 - v3, &qword_1EBD40450, &qword_1BE0D7250);
  return sub_1BE04F314();
}

id ACHBankCredentialPickerViewController.__allocating_init(currentBankInformation:selectAction:cancelAction:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1BD618540(a1, a2, a3, a4, a5);

  return v12;
}

id ACHBankCredentialPickerViewController.init(currentBankInformation:selectAction:cancelAction:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1BD618540(a1, a2, a3, a4, a5);

  return v6;
}

id ACHBankCredentialPickerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1BD60FEBC()
{
  v1 = v0;
  v2 = sub_1BE051AD4();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v50 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0, &qword_1BE0E8400);
  MEMORY[0x1EEE9AC00](v56);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  v57 = type metadata accessor for ACHBankCredentialPicker(0) - 8;
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v50 - v13);
  v15 = type metadata accessor for ACHBankCredentialPickerViewController();
  v64.receiver = v0;
  v64.super_class = v15;
  objc_msgSendSuper2(&v64, sel_viewDidLoad);
  v16 = sub_1BE052404();
  v17 = PKLocalizedPaymentString(v16);

  [v1 setTitle_];
  v18 = [v1 navigationItem];
  v19 = [v1 editButtonItem];
  [v18 setRightBarButtonItem_];

  v55 = swift_allocObject();
  *(v55 + 16) = v1;
  v54 = swift_allocObject();
  *(v54 + 16) = v1;
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  v21 = *&v1[OBJC_IVAR___PKACHBankCredentialPickerViewController_cancelAction + 8];
  v52 = *&v1[OBJC_IVAR___PKACHBankCredentialPickerViewController_cancelAction];
  v53 = v20;
  v51 = v21;
  type metadata accessor for ACHBankCredentialPicker.ViewState(0);
  swift_allocObject();
  v63 = 0;
  v22 = v1;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE04D874();
  v23 = sub_1BE049364();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  sub_1BD0DE19C(v10, v7, &qword_1EBD4D1F0, &qword_1BE0E8400);
  sub_1BE04D874();
  sub_1BD0DE53C(v10, &qword_1EBD4D1F0, &qword_1BE0E8400);
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD6187F4(&qword_1EBD41FA8, type metadata accessor for CredentialCenterModel, &protocol conformance descriptor for CredentialCenterModel);
  *v14 = sub_1BE04E954();
  v14[1] = v24;
  v25 = v54;
  v26 = v55;
  v14[2] = sub_1BD618768;
  v14[3] = v26;
  v14[4] = sub_1BD61878C;
  v14[5] = v25;
  v28 = v52;
  v27 = v53;
  v14[6] = sub_1BD6187B0;
  v14[7] = v27;
  v29 = v51;
  v14[8] = v28;
  v14[9] = v29;
  sub_1BD6187F4(&qword_1EBD4D220, type metadata accessor for ACHBankCredentialPicker.ViewState, &unk_1BE0E86E0);
  v30 = sub_1BE04E954();
  v32 = v31;
  v14[10] = v30;
  v14[11] = v31;
  v34 = v61;
  v33 = v62;
  v35 = v59;
  (*(v61 + 104))(v59, *MEMORY[0x1E697D710], v62);
  (*(v34 + 16))(v60, v35, v33);
  sub_1BE048964();
  sub_1BE051694();
  (*(v34 + 8))(v35, v33);
  sub_1BD61883C(v14, v58);
  v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D228, &qword_1BE0E8408));
  v37 = sub_1BE04F894();
  [v22 addChildViewController_];
  v38 = [v22 view];
  if (v38)
  {
    v39 = v38;
    v40 = [v37 view];

    if (v40)
    {
      [v39 addSubview_];

      [v37 didMoveToParentViewController_];
      v41 = *&v22[OBJC_IVAR___PKACHBankCredentialPickerViewController_hostingVC];
      *&v22[OBJC_IVAR___PKACHBankCredentialPickerViewController_hostingVC] = v37;

      sub_1BD6188A0(v14);
      v42 = *&v22[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState];
      *&v22[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState] = v32;
      v42, v43, v44, v45, v46, v47, v48, v49;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD610550(double a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for ACHBankCredentialPickerViewController();
  objc_msgSendSuper2(&v15, sel_viewWillLayoutSubviews);
  v2 = *&v1[OBJC_IVAR___PKACHBankCredentialPickerViewController_hostingVC];
  if (v2)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v1 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BD61067C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D240, &unk_1BE0E8410);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D250, &unk_1BE0E8420);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v43 - v13;
  v15 = type metadata accessor for ACHBankCredentialPickerViewController();
  v44.receiver = v2;
  v44.super_class = v15;
  objc_msgSendSuper2(&v44, sel_viewWillAppear_, a1 & 1);
  v16 = *&v2[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState];
  if (v16)
  {
    swift_beginAccess();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
    sub_1BE04D884();
    swift_endAccess();
    v16, v17, v18, v19, v20, v21, v22, v23;
    sub_1BD14BE3C();
    v24 = sub_1BE052D54();
    v43[1] = v24;
    v25 = sub_1BE052D14();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600, &qword_1BE0D4A30, MEMORY[0x1E695C068]);
    v43[0] = v11;
    sub_1BD6187F4(&qword_1EBD35EA0, sub_1BD14BE3C, MEMORY[0x1E69E8028]);
    sub_1BE04D924();
    sub_1BD0DE53C(v6, &unk_1EBD4D240, &unk_1BE0E8410);

    (*(v8 + 8))(v10, v7);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BD0DE4F4(&qword_1EBD4D258, &qword_1EBD4D250, &unk_1BE0E8420, MEMORY[0x1E695BE98]);
    v27 = v43[0];
    v28 = sub_1BE04D954();
    v26, v29, v30, v31, v32, v33, v34, v35;
    (*(v12 + 8))(v14, v27);
    swift_beginAccess();
    sub_1BE04D7D4();
    swift_endAccess();
    v28, v36, v37, v38, v39, v40, v41, v42;
  }
}

void sub_1BD610A8C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2 != [Strong isEditing])
    {
      [v4 setEditing:v2 animated:0];
    }
  }
}

void sub_1BD610B60(char a1, double a2)
{
  v3 = v2;
  v49.receiver = v3;
  v49.super_class = type metadata accessor for ACHBankCredentialPickerViewController();
  objc_msgSendSuper2(&v49, sel_viewDidDisappear_, a1 & 1);
  v5 = OBJC_IVAR___PKACHBankCredentialPickerViewController_cancellables;
  swift_beginAccess();
  v47 = v5;
  v6 = *&v3[v5];
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_1BE048C84();
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE04D7F4();
    sub_1BD6187F4(&qword_1EBD597F0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    sub_1BE052A74();
    v11 = v50;
    v10 = v51;
    v12 = v52;
    v13 = v53;
    v14 = v54;
  }

  else
  {
    v15 = -1 << *(v6 + 32);
    v10 = (v6 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(v6 + 56));
    swift_bridgeObjectRetain_n();
    v13 = 0;
    v11 = v6;
  }

  v46 = v12;
  v18 = (v12 + 64) >> 6;
  if (v11 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v11 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    sub_1BE048964();
    if (!v23)
    {
LABEL_19:
      sub_1BD0D45FC(v11, v10, v46, v13, v14, v7, v8, v9);
      v6, v31, v32, v33, v34, v35, v36, v37;
      v38 = *&v3[v47];
      *&v3[v47] = MEMORY[0x1E69E7CD0];
      v38, v39, v40, v41, v42, v43, v44, v45;
      return;
    }

    while (1)
    {
      sub_1BE04D7E4();
      v23, v24, v25, v26, v27, v28, v29, v30;
      v13 = v21;
      v14 = v22;
      if ((v11 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1BE053744())
      {
        sub_1BE04D7F4();
        swift_dynamicCast();
        v23 = v48;
        v21 = v13;
        v22 = v14;
        if (v48)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      v14 = 0;
      goto LABEL_19;
    }

    v20 = *&v10[8 * v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1BD610EE0()
{
  v1 = v0;
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E69B86A8]) initWithType_];
  if (v6)
  {
    v7 = v6;
    sub_1BE049314();
    v9 = v8;
    v10 = sub_1BE052404();
    v9, v11, v12, v13, v14, v15, v16, v17;
    [v7 setRoutingNumber_];

    sub_1BE0492E4();
    v19 = v18;
    v20 = sub_1BE052404();
    v19, v21, v22, v23, v24, v25, v26, v27;
    [v7 setAccountNumber_];

    sub_1BE049344();
    if (v28)
    {
      v29 = v28;
      v30 = sub_1BE052404();
      v29, v31, v32, v33, v34, v35, v36, v37;
    }

    else
    {
      v30 = 0;
    }

    [v7 setBankName_];

    MEMORY[0x1BFB363C0]();
    sub_1BE04AF74();
    v39 = v38;
    (*(v3 + 8))(v5, v2);
    v40 = sub_1BE052404();
    v39, v41, v42, v43, v44, v45, v46, v47;
    [v7 setIdentifier_];

    (*(v1 + OBJC_IVAR___PKACHBankCredentialPickerViewController_selectAction))(v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6110DC()
{
  v1 = *&v0[OBJC_IVAR___PKACHBankCredentialPickerViewController_model];
  v2 = *&v0[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState];
  v3 = type metadata accessor for ACHBankCredentialPickerViewController.AddCredentialHandler();
  v4 = objc_allocWithZone(v3);
  v5 = objc_allocWithZone(MEMORY[0x1E69B86A8]);
  sub_1BE048964();
  sub_1BE048964();
  v6 = [v5 initWithType_];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  *&v4[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_info] = v6;
  *&v4[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_model] = v1;
  *&v4[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_viewState] = v2;
  v4[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_isAddingCredential] = 0;
  v29.receiver = v4;
  v29.super_class = v3;
  v7 = objc_msgSendSuper2(&v29, sel_init);
  v8 = *&v7[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_info];
  v9 = objc_allocWithZone(PKAddBankAccountInformationViewController);
  v10 = v7;
  v11 = v8;
  v12 = sub_1BE052404();
  v13 = [v9 initWithDelegate:v10 bankInformation:v11 accountCountryCode:v12];

  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v13 setSaveToBankCredentialCenter_];
  [v13 setShowDeleteButton_];
  v14 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
  if ([v0 pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [v14 setModalPresentationStyle_];
  }

  [v14 setSupportedInterfaceOrientations_];
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v27[4] = sub_1BD619BD4;
  v28 = v15;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_1BD126964;
  v27[3] = &block_descriptor_179_0;
  v16 = _Block_copy(v27);
  v17 = v28;
  v18 = v0;
  v17, v19, v20, v21, v22, v23, v24, v25;
  [v18 presentViewController:v14 animated:1 completion:v16];

  _Block_release(v16);
  v26 = *&v18[OBJC_IVAR___PKACHBankCredentialPickerViewController_addCredentialHandler];
  *&v18[OBJC_IVAR___PKACHBankCredentialPickerViewController_addCredentialHandler] = v10;
}

void sub_1BD61138C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE049364();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = *(v5 + 16);
  v8(&v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4, v7);
  v9 = objc_allocWithZone(type metadata accessor for ACHBankCredentialViewController());
  v10 = sub_1BD616870(&v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (v8)(&v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v5 + 32))(v13 + v12, &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  v14 = &v10[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_editAction];
  v15 = *&v10[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_editAction];
  v16 = *&v10[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_editAction + 8];
  *v14 = sub_1BD619B3C;
  v14[1] = v13;
  sub_1BE048964();
  v17 = v10;
  sub_1BD0D4744(v15, v16, v18, v19, v20, v21, v22, v23);
  v11, v24, v25, v26, v27, v28, v29, v30;
  v31 = [v2 navigationController];
  if (v31)
  {
    v32 = v31;
    if ([v31 _pk_settings_useStateDrivenNavigation])
    {
      [v32 _pk_settings_pushViewController_];
    }

    else
    {
      [v32 pushViewController:v17 animated:1];
    }
  }

  if (*&v2[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v33[15] = 0;
    sub_1BE048964();
    sub_1BE04D8C4();
  }
}

void sub_1BD611618(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE049364();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v112 = v6;
  v113 = v5;
  v14 = *&Strong[OBJC_IVAR___PKACHBankCredentialPickerViewController_model];
  v108 = Strong;
  v15 = *&Strong[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState];
  v114 = v10;
  v16 = *(v10 + 16);
  v16(v12, a2, v9);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  v109 = type metadata accessor for ACHBankCredentialPickerViewController.EditCredentialHandler(0);
  v18 = objc_allocWithZone(v109);
  v19 = v9;
  v20 = v18;
  v18[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_isUpdatingCredential] = 0;
  *&v18[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_model] = v14;
  v110 = v19;
  (v16)(&v18[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_ach], v12);
  *&v20[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_viewState] = v15;
  v21 = &v20[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_credentialUpdated];
  *v21 = sub_1BD619BCC;
  v21[1] = v17;
  v22 = objc_allocWithZone(MEMORY[0x1E69B86A8]);
  v111 = v15;
  swift_retain_n();
  sub_1BE048964();
  v23 = a3;
  sub_1BE048964();
  sub_1BE048964();
  v24 = [v22 initWithType_];
  if (!v24)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v25 = v24;
  sub_1BE049314();
  v27 = v26;
  v28 = sub_1BE052404();
  v27, v29, v30, v31, v32, v33, v34, v35;
  [v25 setRoutingNumber_];

  sub_1BE0492E4();
  v37 = v36;
  v38 = sub_1BE052404();
  v37, v39, v40, v41, v42, v43, v44, v45;
  [v25 setAccountNumber_];

  sub_1BE049344();
  if (v46)
  {
    v47 = v46;
    v48 = sub_1BE052404();
    v47, v49, v50, v51, v52, v53, v54, v55;
  }

  else
  {
    v48 = 0;
  }

  [v25 setBankName_];

  MEMORY[0x1BFB363C0]();
  sub_1BE04AF74();
  v57 = v56;
  (*(v112 + 8))(v8, v113);
  v58 = sub_1BE052404();
  v57, v59, v60, v61, v62, v63, v64, v65;
  [v25 setIdentifier_];

  *&v20[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_info] = v25;
  v117.receiver = v20;
  v117.super_class = v109;
  v66 = objc_msgSendSuper2(&v117, sel_init);
  v14, v67, v68, v69, v70, v71, v72, v73;
  v111, v74, v75, v76, v77, v78, v79, v80;
  v17, v81, v82, v83, v84, v85, v86, v87;
  (*(v114 + 8))(v12, v110);
  v88 = *&v66[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_info];
  v89 = objc_allocWithZone(PKAddBankAccountInformationViewController);
  v90 = v66;
  v91 = v88;
  v92 = sub_1BE052404();
  v93 = [v89 initWithDelegate:v90 bankInformation:v91 accountCountryCode:v92];

  if (!v93)
  {
    goto LABEL_12;
  }

  [v93 setSaveToBankCredentialCenter_];
  [v93 setShowDeleteButton_];
  v94 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
  v95 = v108;
  if ([v108 pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [v94 setModalPresentationStyle_];
  }

  [v94 setSupportedInterfaceOrientations_];
  v96 = swift_allocObject();
  *(v96 + 16) = v95;
  aBlock[4] = sub_1BD619BF4;
  v116 = v96;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_141;
  v97 = _Block_copy(aBlock);
  v98 = v116;
  v99 = v95;
  v98, v100, v101, v102, v103, v104, v105, v106;
  [v99 presentViewController:v94 animated:1 completion:v97];

  _Block_release(v97);
  v107 = *&v99[OBJC_IVAR___PKACHBankCredentialPickerViewController_editCredentialHandler];
  *&v99[OBJC_IVAR___PKACHBankCredentialPickerViewController_editCredentialHandler] = v66;
}

uint64_t sub_1BD611BE0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE049364();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);
  sub_1BE048964();
  sub_1BE04D8C4();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1BD611D58(uint64_t result)
{
  if (*(result + OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    return sub_1BE04D8C4();
  }

  return result;
}

id ACHBankCredentialPickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = sub_1BE052404();
    a2, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithNibName:v7 bundle:a3];

  return v15;
}

uint64_t sub_1BD611F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BE04D214();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = sub_1BE049394();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0, &qword_1BE0E8400);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v8 = sub_1BE049364();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  sub_1BE0528A4();
  v4[18] = sub_1BE052894();
  v10 = sub_1BE052844();
  v4[19] = v10;
  v4[20] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD6121D0, v10, v9);
}

id sub_1BD6121D0()
{
  v1 = *(v0[2] + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_info);
  v0[21] = v1;
  result = [v1 routingNumber];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  sub_1BE052434();

  result = [v1 accountNumber];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = result;
  sub_1BE052434();

  v5 = [v1 bankName];
  if (v5)
  {
    v6 = v5;
    sub_1BE052434();
  }

  sub_1BE049304();
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  v10 = v0[17];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  v14 = *(v8 + 56);
  v0[22] = v14;
  v0[23] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(v9, 0, 1, v7);
  (*(v8 + 32))(v10, v9, v7);
  v15 = *(v8 + 16);
  v0[24] = v15;
  v0[25] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v11, v10, v7);
  (*(v12 + 104))(v11, *MEMORY[0x1E6967770], v13);
  v16 = swift_task_alloc();
  v0[26] = v16;
  *v16 = v0;
  v16[1] = sub_1BD6124FC;
  v17 = v0[11];

  return CredentialCenterModel.addCredential(bankCredential:)(v17);
}

uint64_t sub_1BD6124FC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 216) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);
  if (v0)
  {
    v8 = sub_1BD6128A0;
  }

  else
  {
    v8 = sub_1BD612694;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BD612694(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 168);
  v11 = *(v8 + 56);
  v10 = *(v8 + 64);
  v12 = *(v8 + 48);
  v13 = *(v8 + 16);
  *(v8 + 144), a2, a3, a4, a5, a6, a7, a8;
  MEMORY[0x1BFB363C0]();
  sub_1BE04AF74();
  v15 = v14;
  (*(v11 + 8))(v10, v12);
  v16 = sub_1BE052404();
  v15, v17, v18, v19, v20, v21, v22, v23;
  [v9 setIdentifier_];

  if (*(v13 + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_viewState))
  {
    v24 = *(v8 + 176);
    v25 = *(v8 + 120);
    v27 = *(v8 + 96);
    v26 = *(v8 + 104);
    (*(v8 + 192))(v26, *(v8 + 136), v25);
    v24(v26, 0, 1, v25);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v26, v27, &qword_1EBD4D1F0, &qword_1BE0E8400);
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD0DE53C(v26, &qword_1EBD4D1F0, &qword_1BE0E8400);
  }

  v28 = *(v8 + 16);
  (*(*(v8 + 128) + 8))(*(v8 + 136), *(v8 + 120));
  *(v28 + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_isAddingCredential) = 0;

  v29 = *(v8 + 8);

  return v29();
}

uint64_t sub_1BD6128A0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 216);
  *(v8 + 144), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE04D164();
  v10 = v9;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v8 + 216);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1BD026000, v11, v12, "Failed to add credential %@", v14, 0xCu);
    sub_1BD0DE53C(v15, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v15, -1, -1);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  v18 = *(v8 + 216);
  v20 = *(v8 + 32);
  v19 = *(v8 + 40);
  v21 = *(v8 + 24);

  (*(v20 + 8))(v19, v21);
  v22 = *(v8 + 16);
  (*(*(v8 + 128) + 8))(*(v8 + 136), *(v8 + 120));
  *(v22 + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_isAddingCredential) = 0;

  v23 = *(v8 + 8);

  return v23();
}

id sub_1BD612B70(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD612C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0, &qword_1BE0E8400);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v5 = sub_1BE04D214();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_1BE049394();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = sub_1BE049364();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = sub_1BE0528A4();
  v4[32] = sub_1BE052894();
  v10 = sub_1BE052844();
  v4[33] = v10;
  v4[34] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD612E84, v10, v9);
}

uint64_t sub_1BD612E84()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[12];
  v0[35] = *(v4 + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_model);
  v5 = OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_ach;
  v6 = *(v3 + 16);
  v0[36] = v6;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = *(v4 + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_info);
  v8 = [v7 routingNumber];
  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v8;
  v12 = sub_1BE052434();
  v14 = v13;

  v0[38] = v12;
  v0[39] = v14;
  v8 = [v7 accountNumber];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  v15 = v8;
  v16 = sub_1BE052434();
  v18 = v17;

  v0[40] = v16;
  v0[41] = v18;
  v19 = [v7 bankName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1BE052434();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v0[42] = v21;
  v0[43] = v23;
  v8 = sub_1BD612FEC;
  v9 = 0;
  v10 = 0;

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BD612FEC()
{
  v1 = v0[36];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v12 = v0[24];
  v5 = v0[22];
  v11 = v0[21];
  v1(v2, v0[29], v3);
  sub_1BE0492F4();
  sub_1BE049324();
  sub_1BE049354();
  v1(v4, v2, v3);
  v6 = *MEMORY[0x1E6967770];
  v7 = *(v5 + 104);
  v7(v4, v6, v11);
  v1(v12, v2, v3);
  v7(v12, v6, v11);
  v8 = swift_task_alloc();
  v0[44] = v8;
  *v8 = v0;
  v8[1] = sub_1BD613180;
  v9 = v0[24];

  return MEMORY[0x1EEDC1528](v9);
}

uint64_t sub_1BD613180()
{
  v2 = *v1;
  v2[45] = v0;

  v3 = v2[24];
  v4 = v2[22];
  v5 = v2[21];
  v6 = *(v4 + 8);
  v7 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[49] = v6;
    v2[50] = v7;
    v6(v3, v5);
    v8 = sub_1BD6136D8;
  }

  else
  {
    v2[46] = v6;
    v2[47] = v7;
    v6(v3, v5);
    v8 = sub_1BD613304;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1BD613304(uint64_t a1)
{
  *(v1 + 384) = sub_1BE052894();
  v3 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD613390, v3, v2);
}

uint64_t sub_1BD613390(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = (v8 + 16);
  v10 = *(v8 + 360);
  v11 = *(v8 + 160);
  *(v8 + 384), a2, a3, a4, a5, a6, a7, a8;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE04D8B4((v8 + 80));
  v13, v14, v15, v16, v17, v18, v19, v20;
  KeyPath, v21, v22, v23, v24, v25, v26, v27;
  v28 = *(v8 + 80);
  v29 = v28[2];
  v28, v30, v31, v32, v33, v34, v35, v36;
  sub_1BE0492D4();
  v37 = swift_task_alloc();
  v37[2] = v11;
  v38 = swift_getKeyPath();
  v39 = swift_getKeyPath();
  v40 = sub_1BE04D8A4();
  v42 = v41;
  v43 = sub_1BD1DA97C(sub_1BD327FE0, v37);
  v44 = *(*v42 + 16);
  if (v44 < v43)
  {
    __break(1u);
LABEL_11:
    v40 = sub_1BD1D7C4C(0, v40[2] + 1, 1, v40);
    *v37 = v40;
    goto LABEL_4;
  }

  v109 = v29;
  v45 = *(v8 + 152);
  v46 = *(v8 + 160);
  v47 = *(v8 + 144);
  sub_1BD1DD4E0(v43, v44);

  (v40)(v8 + 16, 0);
  v39, v48, v49, v50, v51, v52, v53, v54;
  v38, v55, v56, v57, v58, v59, v60, v61;
  (*(v45 + 8))(v46, v47);
  v62 = swift_getKeyPath();
  v63 = swift_getKeyPath();
  sub_1BE04D8B4((v8 + 88));
  v63, v64, v65, v66, v67, v68, v69, v70;
  v62, v71, v72, v73, v74, v75, v76, v77;
  v78 = *(v8 + 88);
  v79 = v78[2];
  v78, v80, v81, v82, v83, v84, v85, v86;
  if (v79 >= v109)
  {
    goto LABEL_7;
  }

  v42 = v8 + 48;
  (*(*(v8 + 176) + 16))(*(v8 + 184), *(v8 + 200), *(v8 + 168));
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v38 = sub_1BE04D8A4();
  v37 = v87;
  v40 = *v87;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v37 = v40;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v90 = v40[2];
  v89 = v40[3];
  if (v90 >= v89 >> 1)
  {
    v40 = sub_1BD1D7C4C((v89 > 1), v90 + 1, 1, v40);
    *v37 = v40;
  }

  v92 = *(v8 + 176);
  v91 = *(v8 + 184);
  v93 = *(v8 + 168);
  v40[2] = v90 + 1;
  (*(v92 + 32))(v40 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v90, v91, v93);
  (v38)(v42, 0);
  v10, v94, v95, v96, v97, v98, v99, v100;
  v9, v101, v102, v103, v104, v105, v106, v107;
LABEL_7:

  return MEMORY[0x1EEE6DFA0](sub_1BD613998, 0, 0);
}

uint64_t sub_1BD6136D8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  (*(v0 + 392))(*(v0 + 200), *(v0 + 168));
  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1BD613788, v6, v7);
}

uint64_t sub_1BD613788(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 360);
  *(v8 + 256), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE04D164();
  v10 = v9;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C34();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v8 + 360);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v14;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_1BD026000, v11, v12, "Failed to update credential %@", v15, 0xCu);
    sub_1BD0DE53C(v16, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v16, -1, -1);
    MEMORY[0x1BFB45F20](v15, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 128) + 8))(*(v8 + 136), *(v8 + 120));
  *(*(v8 + 96) + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_isUpdatingCredential) = 0;

  v19 = *(v8 + 8);

  return v19();
}

uint64_t sub_1BD613998()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  (*(v0 + 368))(*(v0 + 200), *(v0 + 168));
  v6 = *(v4 + 8);
  *(v0 + 408) = v6;
  *(v0 + 416) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v5);
  (*(v4 + 32))(v2, v3, v5);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1BD613A60, v7, v8);
}

uint64_t sub_1BD613A60(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 96);
  *(v8 + 256), a2, a3, a4, a5, a6, a7, a8;
  if (*(v9 + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_viewState))
  {
    v10 = *(v8 + 208);
    v11 = *(v8 + 216);
    v13 = *(v8 + 104);
    v12 = *(v8 + 112);
    (*(v8 + 288))(v12, *(v8 + 240), v10);
    (*(v11 + 56))(v12, 0, 1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v12, v13, &qword_1EBD4D1F0, &qword_1BE0E8400);
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD0DE53C(v12, &qword_1EBD4D1F0, &qword_1BE0E8400);
  }

  v14 = *(v8 + 408);
  v15 = *(v8 + 240);
  v16 = *(v8 + 208);
  (*(*(v8 + 96) + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_credentialUpdated))(v15);
  v14(v15, v16);
  *(*(v8 + 96) + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_isUpdatingCredential) = 0;

  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BD613DDC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ACHBankCredentialPicker(0);
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D3F8, &qword_1BE0E8790);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - v6;
  v43 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D400, &qword_1BE0E8798);
  sub_1BD0DE4F4(&qword_1EBD4D408, &qword_1EBD4D400, &qword_1BE0E8798, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  KeyPath = swift_getKeyPath();
  v9 = &v7[*(v5 + 36)];
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410, &unk_1BE0D2B20) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  sub_1BE0516C4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  (*(*(v11 - 8) + 56))(v9 + v10, 0, 1, v11);
  *v9 = KeyPath;
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE04D8B4(v44);
  v12, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
  sub_1BD61883C(v1, &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v29 = swift_allocObject();
  sub_1BD619028(&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  sub_1BD61910C();
  sub_1BE051064();
  v29, v30, v31, v32, v33, v34, v35, v36;
  sub_1BD0DE53C(v7, &qword_1EBD4D3F8, &qword_1BE0E8790);
  swift_beginAccess();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D440, &qword_1BE0E87D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0, &unk_1BE0E87E0);
  sub_1BE04D884();
  swift_endAccess();
  sub_1BD61883C(v1, &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = swift_allocObject();
  result = sub_1BD619028(&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v28);
  v40 = (a1 + *(v37 + 56));
  *v40 = sub_1BD619324;
  v40[1] = v38;
  return result;
}

void sub_1BD6141B0(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D460, &qword_1BE0E8840);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v49 = a1;
  v11 = sub_1BE052404();
  v12 = PKLocalizedPaymentString(v11);

  if (v12)
  {
    v47 = a2;
    v48 = v4;
    v13 = v7;
    v14 = sub_1BE052434();
    v16 = v15;

    v54 = v14;
    v55 = v16;
    sub_1BD0DDEBC();
    v54 = sub_1BE0506C4();
    v55 = v17;
    LOBYTE(v56) = v18 & 1;
    v57 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D468, &qword_1BE0E8848);
    sub_1BD6193BC();
    sub_1BE051A24();
    v20 = sub_1BE052404();
    v21 = PKLocalizedPaymentString(v20);

    if (v21)
    {
      v45 = sub_1BE052434();
      v44 = v22;

      v23 = *(a1 + 48);
      v42 = *(a1 + 56);
      LOBYTE(v50) = 0;
      sub_1BE048964();
      sub_1BE051944();
      v24 = v54;
      v40 = v54;
      v41 = v55;
      v25 = v56;
      v26 = sub_1BE0511D4();
      v27 = v5;
      v28 = *(v5 + 16);
      v46 = v13;
      v43 = v10;
      v29 = v48;
      v28(v13, v10, v48);
      v30 = v47;
      v28(v47, v13, v29);
      v31 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D4A8, &unk_1BE0E8868) + 48)];
      v32 = v45;
      v33 = v44;
      *&v50 = v45;
      *(&v50 + 1) = v44;
      v34 = v42;
      *&v51 = v23;
      *(&v51 + 1) = v42;
      *&v52 = v24;
      v35 = v41;
      *(&v52 + 1) = v41;
      LOBYTE(v53) = v25;
      *(&v53 + 1) = v26;
      v36 = v51;
      *v31 = v50;
      *(v31 + 1) = v36;
      v37 = v53;
      *(v31 + 2) = v52;
      *(v31 + 3) = v37;
      sub_1BD619524(&v50, &v54);
      v38 = *(v27 + 8);
      v38(v43, v29);
      v54 = v32;
      v55 = v33;
      v56 = v23;
      v57 = v34;
      v58 = v40;
      v59 = v35;
      v60 = v25;
      v61 = v26;
      sub_1BD4623B4(&v54);
      v38(v46, v29);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD61454C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = type metadata accessor for ACHBankCredentialPicker(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v15 = CredentialCenterModel.achCredentials.getter();
  v13[1] = swift_getKeyPath();
  sub_1BD61883C(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1BD619028(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D4B0, &unk_1BE0E8890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D490, &qword_1BE0E8858);
  sub_1BD0DE4F4(&qword_1EBD44198, &unk_1EBD4D4B0, &unk_1BE0E8890, MEMORY[0x1E69E6338]);
  sub_1BD6187F4(&unk_1EBD4D4C0, MEMORY[0x1E6967750], MEMORY[0x1E6967758]);
  sub_1BD0DE4F4(&qword_1EBD4D488, &unk_1EBD4D490, &qword_1BE0E8858, MEMORY[0x1E697D680]);
  v8 = v14;
  sub_1BE0519C4();
  sub_1BD61883C(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_allocObject();
  sub_1BD619028(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1BD619600;
  *(v10 + 24) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D468, &qword_1BE0E8848);
  v12 = (v8 + *(result + 36));
  *v12 = sub_1BD619664;
  v12[1] = v10;
  return result;
}

uint64_t sub_1BD6147F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE049364();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ACHBankCredentialPicker(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD61883C(a2, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1BD619028(v11, v14 + v12);
  (*(v5 + 32))(v14 + v13, v7, v4);
  v17 = a1;
  v18 = a2;
  type metadata accessor for ACHCredentialRow(0);
  sub_1BD6187F4(&qword_1EBD4D4E0, type metadata accessor for ACHCredentialRow, &unk_1BE0E2044);
  return sub_1BE051704();
}

uint64_t sub_1BD614A40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0, &qword_1BE0E8400);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30[-v8];
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4(&v31);
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  if (v31)
  {
    v26 = 32;
  }

  else
  {
    v27 = sub_1BE049364();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v9, a2, v27);
    (*(v28 + 56))(v9, 0, 1, v27);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v9, v6, &qword_1EBD4D1F0, &qword_1BE0E8400);
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD0DE53C(v9, &qword_1EBD4D1F0, &qword_1BE0E8400);
    v26 = 16;
  }

  return (*(a1 + v26))(a2);
}

uint64_t sub_1BD614C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v5 = sub_1BE051AD4();
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v68[-v8];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D4E8, &qword_1BE0E88B8) - 8;
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v68[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0, &qword_1BE0E8400);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v71 = &v68[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68[-v16];
  v18 = sub_1BE049364();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v70 = &v68[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = *(v19 + 16);
  v73 = &v68[-v24];
  v23(v22);
  v80 = a2;
  KeyPath = swift_getKeyPath();
  v26 = swift_getKeyPath();
  sub_1BE04D8B4(v17);
  KeyPath, v27, v28, v29, v30, v31, v32, v33;
  v26, v34, v35, v36, v37, v38, v39, v40;
  v41 = a1;
  v42 = v14;
  (v23)(v14, v41, v18);
  v43 = v17;
  v44 = v72;
  (*(v19 + 56))(v14, 0, 1, v18);
  v45 = *(v74 + 56);
  sub_1BD0DE19C(v43, v44, &qword_1EBD4D1F0, &qword_1BE0E8400);
  sub_1BD0DE19C(v14, v44 + v45, &qword_1EBD4D1F0, &qword_1BE0E8400);
  v74 = v19;
  v46 = *(v19 + 48);
  if (v46(v44, 1, v18) == 1)
  {
    sub_1BD0DE53C(v14, &qword_1EBD4D1F0, &qword_1BE0E8400);
    sub_1BD0DE53C(v43, &qword_1EBD4D1F0, &qword_1BE0E8400);
    v47 = v46(v44 + v45, 1, v18);
    v48 = v76;
    v49 = v74;
    if (v47 == 1)
    {
      sub_1BD0DE53C(v44, &qword_1EBD4D1F0, &qword_1BE0E8400);
      v51 = v77;
      v50 = v78;
LABEL_9:
      type metadata accessor for ACHBankCredentialPicker(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
      v54 = v75;
      sub_1BE0516A4();
      v55 = MEMORY[0x1E697D708];
      (*(v51 + 104))(v48, *MEMORY[0x1E697D708], v50);
      v62 = sub_1BE051AC4();
      v63 = *(v51 + 8);
      v63(v48, v50);
      v63(v54, v50);
      v53 = v62 ^ 1;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v52 = v71;
  sub_1BD0DE19C(v44, v71, &qword_1EBD4D1F0, &qword_1BE0E8400);
  if (v46(v44 + v45, 1, v18) == 1)
  {
    sub_1BD0DE53C(v14, &qword_1EBD4D1F0, &qword_1BE0E8400);
    sub_1BD0DE53C(v43, &qword_1EBD4D1F0, &qword_1BE0E8400);
    v49 = v74;
    (*(v74 + 8))(v52, v18);
    v48 = v76;
LABEL_6:
    sub_1BD0DE53C(v44, &qword_1EBD4D4E8, &qword_1BE0E88B8);
    v53 = 0;
    v51 = v77;
    v50 = v78;
    goto LABEL_7;
  }

  v49 = v74;
  v56 = v70;
  (*(v74 + 32))(v70, v44 + v45, v18);
  sub_1BD6187F4(&qword_1EBD4D4F0, MEMORY[0x1E6967750], MEMORY[0x1E6967760]);
  v69 = sub_1BE052334();
  v57 = v44;
  v58 = v18;
  v59 = v43;
  v60 = *(v49 + 8);
  v60(v56, v58);
  sub_1BD0DE53C(v42, &qword_1EBD4D1F0, &qword_1BE0E8400);
  v61 = v59;
  v18 = v58;
  sub_1BD0DE53C(v61, &qword_1EBD4D1F0, &qword_1BE0E8400);
  v60(v52, v58);
  sub_1BD0DE53C(v57, &qword_1EBD4D1F0, &qword_1BE0E8400);
  v51 = v77;
  v50 = v78;
  v48 = v76;
  if (v69)
  {
    goto LABEL_9;
  }

  v53 = 0;
LABEL_7:
  v54 = v75;
  v55 = MEMORY[0x1E697D708];
LABEL_10:
  type metadata accessor for ACHBankCredentialPicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  sub_1BE0516A4();
  (*(v51 + 104))(v48, *v55, v50);
  v64 = sub_1BE051AC4();
  v65 = *(v51 + 8);
  v65(v48, v50);
  v65(v54, v50);
  v66 = v79;
  (*(v49 + 32))(v79, v73, v18);
  result = type metadata accessor for ACHCredentialRow(0);
  *(v66 + *(result + 20)) = v53 & 1;
  *(v66 + *(result + 24)) = v64 & 1;
  return result;
}

void sub_1BD6153A4(uint64_t a1)
{
  v76 = sub_1BE049364();
  v78 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1BE04AFE4();
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ACHBankCredentialPicker(0);
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = v7;
  v67 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v61 - v9;
  v10 = sub_1BE04B304();
  v63 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v1;
  v13 = CredentialCenterModel.achCredentials.getter();
  v14 = sub_1BE04B344();
  sub_1BD6187F4(&unk_1EBD4D4D0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  v15 = sub_1BE052AE4();
  if (v15)
  {
    v23 = v15;
    v62 = v10;
    v80 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v15 & ~(v15 >> 63), 0);
    v24 = v80;
    sub_1BE052AD4();
    if ((v23 & 0x8000000000000000) == 0)
    {
      v72 = &v13[(*(v78 + 80) + 32) & ~*(v78 + 80)];
      v73 = v13;
      v70 = v78 + 8;
      v71 = v78 + 16;
      v69 = v77 + 32;
      while (1)
      {
        v25 = sub_1BE052B34();
        v27 = *v26;
        v25(v79, 0);
        if ((v27 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v27 >= *(v13 + 2))
        {
          goto LABEL_13;
        }

        v28 = v14;
        v29 = v12;
        v30 = a1;
        v31 = v78;
        v32 = &v72[*(v78 + 72) * v27];
        v33 = v74;
        v34 = v76;
        v35 = (*(v78 + 16))(v74, v32, v76);
        MEMORY[0x1BFB363C0](v35);
        (*(v31 + 8))(v33, v34);
        v80 = v24;
        v37 = *(v24 + 16);
        v36 = *(v24 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1BD531F28((v36 > 1), v37 + 1, 1);
          v24 = v80;
        }

        *(v24 + 16) = v37 + 1;
        (*(v77 + 32))(v24 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v37, v5, v75);
        v12 = v29;
        a1 = v30;
        v14 = v28;
        sub_1BE052B14();
        --v23;
        v13 = v73;
        if (!v23)
        {
          (*(v63 + 8))(v12, v62);
          v13, v38, v39, v40, v41, v42, v43, v44;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v13, v16, v17, v18, v19, v20, v21, v22;
    v24 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v45 = sub_1BE0528D4();
    v46 = v65;
    (*(*(v45 - 8) + 56))(v65, 1, 1, v45);
    v47 = v67;
    sub_1BD61883C(v68, v67);
    sub_1BE0528A4();
    v48 = sub_1BE052894();
    v49 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v50 = (v66 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    v52 = MEMORY[0x1E69E85E0];
    v51[2] = v48;
    v51[3] = v52;
    sub_1BD619028(v47, v51 + v49);
    *(v51 + v50) = v24;
    v53 = sub_1BD122C00(0, 0, v46, &unk_1BE0E88A8, v51);
    v53, v54, v55, v56, v57, v58, v59, v60;
  }
}

void sub_1BD615970(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = sub_1BE051D74();
  sub_1BE04E7D4();
  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1BD6159E4(uint64_t a1, char a2)
{
  v3 = sub_1BE051AD4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v8;
  v11 = MEMORY[0x1E697D708];
  if ((a2 & 1) == 0)
  {
    v11 = MEMORY[0x1E697D710];
  }

  (*(v4 + 104))(v13 - v8, *v11, v3, v9);
  type metadata accessor for ACHBankCredentialPicker(0);
  (*(v4 + 16))(v6, v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  sub_1BE0516B4();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1BD615B64(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v2 = sub_1BE049364();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450, &unk_1BE0BF570);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v45 - v6;
  v8 = sub_1BE049394();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0, &qword_1BE0E8400);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v46 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v45 - v18);
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  sub_1BE04D8B4(v19);
  KeyPath, v22, v23, v24, v25, v26, v27, v28;
  v21, v29, v30, v31, v32, v33, v34, v35;
  v48 = v3;
  LODWORD(v21) = (*(v3 + 48))(v19, 1, v2);
  result = sub_1BD0DE53C(v19, &qword_1EBD4D1F0, &qword_1BE0E8400);
  if (v21 == 1)
  {
    sub_1BD0DE19C(v50, v7, &unk_1EBD4D450, &unk_1BE0BF570);
    v38 = v51;
    v37 = v52;
    if ((*(v51 + 48))(v7, 1, v52) == 1)
    {
      return sub_1BD0DE53C(v7, &unk_1EBD4D450, &unk_1BE0BF570);
    }

    else
    {
      v39 = v49;
      (*(v38 + 32))(v49, v7, v37);
      (*(v38 + 16))(v10, v39, v37);
      if ((*(v38 + 88))(v10, v37) == *MEMORY[0x1E6967770])
      {
        (*(v38 + 96))(v10, v37);
        v40 = v38;
        v42 = v47;
        v41 = v48;
        (*(v48 + 32))(v47, v10, v2);
        v43 = v45;
        (*(v41 + 16))(v45, v42, v2);
        (*(v41 + 56))(v43, 0, 1, v2);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BD0DE19C(v43, v46, &qword_1EBD4D1F0, &qword_1BE0E8400);
        sub_1BE048964();
        sub_1BE04D8C4();
        sub_1BD0DE53C(v43, &qword_1EBD4D1F0, &qword_1BE0E8400);
        (*(v41 + 8))(v42, v2);
        return (*(v40 + 8))(v39, v52);
      }

      else
      {
        v44 = *(v38 + 8);
        v44(v39, v37);
        return (v44)(v10, v37);
      }
    }
  }

  return result;
}

uint64_t sub_1BD616074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1BE04D214();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = sub_1BE0528A4();
  v5[8] = sub_1BE052894();
  v8 = sub_1BE052844();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD61616C, v8, v7);
}

uint64_t sub_1BD616194()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1BD61623C;
  v2 = *(v0 + 24);

  return MEMORY[0x1EEDC14E8](v2);
}

uint64_t sub_1BD61623C(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v4 = v3[9];
    v5 = v3[10];
    v6 = sub_1BD6164A0;
  }

  else
  {
    v6 = sub_1BD616358;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BD616358(uint64_t a1)
{
  *(v1 + 120) = sub_1BE052894();
  v3 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD6163E4, v3, v2);
}

void sub_1BD6163E4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 112);
  v10 = *(v8 + 104);
  v11 = *(v8 + 88);
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD1D5708(2, v10, v11);
  if (v9)
  {
  }

  else
  {
    *(v8 + 104), v12, v13, v14, v15, v16, v17, v18;

    MEMORY[0x1EEE6DFA0](sub_1BD616630, 0, 0);
  }
}

uint64_t sub_1BD6164A0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 112);
  *(v8 + 64), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE04D164();
  v10 = v9;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C34();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v8 + 112);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v14;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_1BD026000, v11, v12, "Failed to delete credentials: %@", v15, 0xCu);
    sub_1BD0DE53C(v16, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v16, -1, -1);
    MEMORY[0x1BFB45F20](v15, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 40) + 8))(*(v8 + 48), *(v8 + 32));

  v19 = *(v8 + 8);

  return v19();
}

uint64_t sub_1BD616648(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 64), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD6166B0()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD61673C()
{
  v1 = OBJC_IVAR____TtCV9PassKitUI23ACHBankCredentialPicker9ViewState__isEditing;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV9PassKitUI23ACHBankCredentialPicker9ViewState__selectedCredential;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D518, &qword_1BE0E88F8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD616830@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ACHBankCredentialPicker.ViewState(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

char *sub_1BD616870(char *a1)
{
  v21 = a1;
  v3 = sub_1BE049364();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  *&v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_hostingVC] = 0;
  v14 = &v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_editAction];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = *(v4 + 16);
  v15(&v21 - v12, a1, v3, v11);
  type metadata accessor for ACHBankCredentialViewController.ViewState(0);
  v16 = swift_allocObject();
  (v15)(v9, v13, v3);
  swift_beginAccess();
  (v15)(v6, v9, v3);
  sub_1BE04D874();
  v17 = *(v4 + 8);
  v17(v9, v3);
  swift_endAccess();
  v17(v13, v3);
  *&v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_viewState] = v16;
  v18 = type metadata accessor for ACHBankCredentialViewController();
  v22.receiver = v1;
  v22.super_class = v18;
  v19 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  v17(v21, v3);
  return v19;
}

void sub_1BD616B18()
{
  v1 = v0;
  v2 = sub_1BE049364();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ACHBankCredentialViewController();
  v70.receiver = v1;
  v70.super_class = v6;
  objc_msgSendSuper2(&v70, sel_viewDidLoad);
  v7 = *&v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_viewState];
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4(v5);
  v7, v10, v11, v12, v13, v14, v15, v16;
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v9, v24, v25, v26, v27, v28, v29, v30;
  sub_1BE049344();
  v32 = v31;
  (*(v3 + 8))(v5, v2);
  if (v32)
  {
    v33 = sub_1BE052404();
    v32, v34, v35, v36, v37, v38, v39, v40;
  }

  else
  {
    v33 = 0;
  }

  [v1 setTitle_];

  if (*&v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_editAction])
  {
    v41 = [v1 navigationItem];
    v42 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:v1 action:sel_editButtonTapped];
    [v41 setRightBarButtonItem_];
  }

  v43 = [v1 navigationItem];
  [v43 setBackButtonDisplayMode_];

  type metadata accessor for ACHBankCredentialViewController.ViewState(0);
  sub_1BD6187F4(&qword_1EBD4D500, type metadata accessor for ACHBankCredentialViewController.ViewState, &unk_1BE0E86A8);
  sub_1BE048964();
  v44 = sub_1BE04E954();
  v46 = v45;
  v47 = swift_getKeyPath();
  v68[0] = v44;
  v68[1] = v46;
  v68[2] = v47;
  v69 = 0;
  v48 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D508, &qword_1BE0E88F0));
  sub_1BE048964();
  sub_1BE048964();
  v49 = sub_1BE04F894();
  [v1 addChildViewController_];
  v50 = [v1 view];
  if (v50)
  {
    v51 = v50;
    v52 = [v49 view];

    if (v52)
    {
      [v51 addSubview_];

      [v49 didMoveToParentViewController_];
      v47, v53, v54, v55, v56, v57, v58, v59;
      v46, v60, v61, v62, v63, v64, v65, v66;
      v67 = *&v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_hostingVC];
      *&v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_hostingVC] = v49;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD616EFC(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ACHBankCredentialViewController();
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = *&v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_hostingVC];
    if (v12)
    {
      v13 = [v12 view];
    }

    else
    {
      v13 = 0;
    }

    [v13 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD61716C()
{
  v1 = OBJC_IVAR____TtCC9PassKitUI31ACHBankCredentialViewController9ViewState__ach;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D4F8, &qword_1BE0E88C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD617214@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ACHBankCredentialViewController.ViewState(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD617254(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_1BE052404();
  v5 = PKLocalizedPaymentString(v4);

  if (v5)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    sub_1BE0506C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D3B0, &qword_1BE0E8720);
    sub_1BD0DE4F4(&qword_1EBD4D3A8, &unk_1EBD4D3B0, &qword_1BE0E8720, MEMORY[0x1E6981F48]);
    sub_1BE051A24();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD617394(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  LODWORD(v130) = a4;
  v131 = a1;
  v132 = a3;
  v129 = a5;
  v6 = sub_1BE049364();
  v134 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D3C0, &qword_1BE0E8728);
  v127 = *(v9 - 8);
  v128 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v126 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v114 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v124 = &v114 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v114 - v16;
  v17 = sub_1BE052404();
  v18 = PKLocalizedPaymentString(v17);

  if (v18)
  {
    sub_1BE052434();
    v20 = v19;

    KeyPath = swift_getKeyPath();
    v22 = swift_getKeyPath();
    sub_1BE04D8B4(v8);
    KeyPath, v23, v24, v25, v26, v27, v28, v29;
    v22, v30, v31, v32, v33, v34, v35, v36;
    v37 = sub_1BE0492E4();
    v39 = v38;
    v40 = *(v134 + 8);
    v115 = v8;
    v120 = v40;
    v121 = v6;
    v134 += 8;
    v40(v8, v6);
    v41 = sub_1BE04F504();
    LOBYTE(v135) = 1;
    sub_1BD617BD0(&v154);
    v150 = v156;
    v151 = v157;
    v148 = v154;
    v149 = v155;
    v153[1] = v155;
    v153[2] = v156;
    v153[3] = v157;
    v153[4] = v158;
    v152 = v158;
    v153[0] = v154;
    sub_1BD0DE19C(&v148, &v145, &qword_1EBD3E1F0, &qword_1BE0C3060);
    sub_1BD0DE53C(v153, &qword_1EBD3E1F0, &qword_1BE0C3060);
    v20, v42, v43, v44, v45, v46, v47, v48;
    v123 = &v114;
    *&v147[7] = v148;
    *&v147[71] = v152;
    *&v147[55] = v151;
    *&v147[39] = v150;
    *&v147[23] = v149;
    *&v146[33] = *&v147[32];
    *&v146[49] = *&v147[48];
    *&v146[65] = *&v147[64];
    *&v146[1] = *v147;
    v145 = v41;
    v146[0] = v135;
    *&v146[80] = *(&v152 + 1);
    *&v146[17] = *&v147[16];
    MEMORY[0x1EEE9AC00](v49);
    v50 = v132;
    *(&v114 - 6) = v131;
    *(&v114 - 5) = a2;
    v122 = a2;
    *(&v114 - 4) = v50;
    v118 = v130 & 1;
    *(&v114 - 24) = v130 & 1;
    *(&v114 - 2) = v37;
    *(&v114 - 1) = v39;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D3D0, &qword_1BE0DA410);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8, &qword_1BE0D73A0);
    v53 = sub_1BD0DE4F4(&unk_1EBD3E170, &unk_1EBD4D3D0, &qword_1BE0DA410, MEMORY[0x1E69817F8]);
    v54 = sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8, &qword_1BE0D73A0, MEMORY[0x1E697D680]);
    v130 = v51;
    v119 = v52;
    v116 = v54;
    v117 = v53;
    sub_1BE0508B4();
    v39, v55, v56, v57, v58, v59, v60, v61;
    v158 = *&v146[48];
    v159 = *&v146[64];
    v160 = *&v146[80];
    v154 = v145;
    v155 = *v146;
    v156 = *&v146[16];
    v157 = *&v146[32];
    sub_1BD0DE53C(&v154, &unk_1EBD4D3D0, &qword_1BE0DA410);
    v62 = sub_1BE052404();
    v63 = PKLocalizedPaymentString(v62);

    if (v63)
    {
      sub_1BE052434();
      v65 = v64;

      v66 = swift_getKeyPath();
      v67 = swift_getKeyPath();
      v68 = v115;
      v69 = v122;
      sub_1BE04D8B4(v115);
      v66, v70, v71, v72, v73, v74, v75, v76;
      v67, v77, v78, v79, v80, v81, v82, v83;
      v84 = sub_1BE049314();
      v86 = v85;
      v120(v68, v121);
      v87 = sub_1BE04F504();
      v138 = 1;
      sub_1BD617BD0(&v145);
      v141 = *&v146[16];
      v142 = *&v146[32];
      v139 = v145;
      v140 = *v146;
      v144[1] = *v146;
      v144[2] = *&v146[16];
      v144[3] = *&v146[32];
      v144[4] = *&v146[48];
      v143 = *&v146[48];
      v144[0] = v145;
      sub_1BD0DE19C(&v139, &v135, &qword_1EBD3E1F0, &qword_1BE0C3060);
      sub_1BD0DE53C(v144, &qword_1EBD3E1F0, &qword_1BE0C3060);
      v65, v88, v89, v90, v91, v92, v93, v94;
      *&v137[7] = v139;
      *&v137[71] = v143;
      *&v137[55] = v142;
      *&v137[39] = v141;
      *&v137[23] = v140;
      *&v136[33] = *&v137[32];
      *&v136[49] = *&v137[48];
      *&v136[65] = *&v137[64];
      *&v136[1] = *v137;
      v135 = v87;
      v136[0] = v138;
      *&v136[80] = *(&v143 + 1);
      *&v136[17] = *&v137[16];
      MEMORY[0x1EEE9AC00](v95);
      v96 = v132;
      *(&v114 - 6) = v131;
      *(&v114 - 5) = v69;
      *(&v114 - 4) = v96;
      *(&v114 - 24) = v118;
      *(&v114 - 2) = v84;
      *(&v114 - 1) = v86;
      v97 = v124;
      sub_1BE0508B4();
      v86, v98, v99, v100, v101, v102, v103, v104;
      *&v146[48] = *&v136[48];
      *&v146[64] = *&v136[64];
      *&v146[80] = *&v136[80];
      v145 = v135;
      *v146 = *v136;
      *&v146[16] = *&v136[16];
      *&v146[32] = *&v136[32];
      sub_1BD0DE53C(&v145, &unk_1EBD4D3D0, &qword_1BE0DA410);
      v106 = v127;
      v105 = v128;
      v107 = *(v127 + 16);
      v108 = v125;
      v109 = v133;
      v107(v125, v133, v128);
      v110 = v126;
      v107(v126, v97, v105);
      v111 = v129;
      v107(v129, v108, v105);
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D3E0, &unk_1BE0E8780);
      v107(&v111[*(v112 + 48)], v110, v105);
      v113 = *(v106 + 8);
      v113(v97, v105);
      v113(v109, v105);
      v113(v110, v105);
      v113(v108, v105);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD617BD0(uint64_t a5@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v61 = sub_1BE0506C4();
  v62 = v6;
  v8 = v7;
  v60 = v9;
  sub_1BE048C84();
  v10 = sub_1BE0506C4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1BE04FC94();
  v17 = sub_1BE050574();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1BD0DDF10(v10, v12, (v14 & 1), v22, v24, v25, v26, v27);
  v16, v28, v29, v30, v31, v32, v33, v34;
  v35 = (v21 & 1);
  *a5 = v61;
  *(a5 + 8) = v8;
  *(a5 + 16) = v60 & 1;
  *(a5 + 24) = v62;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = v17;
  *(a5 + 56) = v19;
  *(a5 + 64) = v35;
  *(a5 + 72) = v23;
  sub_1BD0D7F18(v61, v8, v60 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v17, v19, v35);
  sub_1BE048C84();
  sub_1BD0DDF10(v17, v19, v35, v36, v37, v38, v39, v40);
  v23, v41, v42, v43, v44, v45, v46, v47;
  sub_1BD0DDF10(v61, v8, (v60 & 1), v48, v49, v50, v51, v52);
  v62, v53, v54, v55, v56, v57, v58, v59;
}

uint64_t sub_1BD617D84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  a4 &= 1u;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  sub_1BE048964();
  sub_1BD619014(a3, a4);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);

  return sub_1BE051704();
}

void sub_1BD617EB0(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1BE04F3D4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v12 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(a3, 0, v13, v14, v15, v16, v17, v18);
    (*(v9 + 8))(v11, v8);
  }

  v19 = [objc_opt_self() generalPasteboard];
  v20 = sub_1BE052404();
  [v19 setString_];
}

void sub_1BD618044()
{
  v0 = sub_1BE052404();
  v1 = PKLocalizedPaymentString(v0);

  if (v1)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    sub_1BE051624();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD618100()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D398, &qword_1BE0E8718);
  sub_1BD618EF4();
  return sub_1BE0504E4();
}

void sub_1BD618184(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD618204(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD618278(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0, &qword_1BE0E8400);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1BD0DE19C(a1, &v10 - v7, &qword_1EBD4D1F0, &qword_1BE0E8400);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v8, v5, &qword_1EBD4D1F0, &qword_1BE0E8400);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v8, &qword_1EBD4D1F0, &qword_1BE0E8400);
}

uint64_t sub_1BD6183A8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BE049364();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);
  sub_1BE048964();
  sub_1BE04D8C4();
  return (*(v4 + 8))(v10, v3);
}

id sub_1BD618540(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState] = 0;
  *&v5[OBJC_IVAR___PKACHBankCredentialPickerViewController_hostingVC] = 0;
  *&v5[OBJC_IVAR___PKACHBankCredentialPickerViewController_addCredentialHandler] = 0;
  *&v5[OBJC_IVAR___PKACHBankCredentialPickerViewController_editCredentialHandler] = 0;
  *&v5[OBJC_IVAR___PKACHBankCredentialPickerViewController_cancellables] = MEMORY[0x1E69E7CD0];
  if (a1 && (v11 = [a1 identifier]) != 0)
  {
    v12 = v11;
    v13 = sub_1BE052434();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  type metadata accessor for CredentialCenterModel(0);
  swift_allocObject();
  *&v6[OBJC_IVAR___PKACHBankCredentialPickerViewController_model] = CredentialCenterModel.init(userDefaultCredentialIdentifier:)(v13, v15);
  v16 = &v6[OBJC_IVAR___PKACHBankCredentialPickerViewController_selectAction];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = &v6[OBJC_IVAR___PKACHBankCredentialPickerViewController_cancelAction];
  *v17 = a4;
  *(v17 + 1) = a5;
  v19.receiver = v6;
  v19.super_class = type metadata accessor for ACHBankCredentialPickerViewController();
  return objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
}

void _s9PassKitUI37ACHBankCredentialPickerViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState) = 0;
  *(v0 + OBJC_IVAR___PKACHBankCredentialPickerViewController_hostingVC) = 0;
  *(v0 + OBJC_IVAR___PKACHBankCredentialPickerViewController_addCredentialHandler) = 0;
  *(v0 + OBJC_IVAR___PKACHBankCredentialPickerViewController_editCredentialHandler) = 0;
  *(v0 + OBJC_IVAR___PKACHBankCredentialPickerViewController_cancellables) = MEMORY[0x1E69E7CD0];
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD6187F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD61883C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ACHBankCredentialPicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6188A0(uint64_t a1)
{
  v2 = type metadata accessor for ACHBankCredentialPicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD61897C(uint64_t a1)
{
  result = sub_1BE049364();
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

void sub_1BD618A50(uint64_t a1)
{
  sub_1BD1E1120();
  if (v1 <= 0x3F)
  {
    sub_1BD618B1C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD618B1C(uint64_t a1)
{
  if (!qword_1EBD4D320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D1F0, &qword_1BE0E8400);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4D320);
    }
  }
}

void sub_1BD618BCC(uint64_t a1)
{
  sub_1BD618E40(319, &unk_1EBD4D368, MEMORY[0x1E6967750], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD618CC4(uint64_t a1)
{
  sub_1BD327B74(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v2 <= 0x3F)
    {
      sub_1BD618DAC(319);
      if (v3 <= 0x3F)
      {
        sub_1BD618E40(319, &qword_1EBD4D390, MEMORY[0x1E697D718], MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD618DAC(uint64_t a1)
{
  if (!qword_1EBD4D388)
  {
    type metadata accessor for ACHBankCredentialPicker.ViewState(255);
    sub_1BD6187F4(&qword_1EBD4D220, type metadata accessor for ACHBankCredentialPicker.ViewState, &unk_1BE0E86E0);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4D388);
    }
  }
}

void sub_1BD618E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD618EF4()
{
  result = qword_1EBD4D3A0;
  if (!qword_1EBD4D3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D398, &qword_1BE0E8718);
    sub_1BD0DE4F4(&qword_1EBD4D3A8, &unk_1EBD4D3B0, &qword_1BE0E8720, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D3A0);
  }

  return result;
}

uint64_t sub_1BD619014(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD619028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ACHBankCredentialPicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD61908C(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD615970(a1, a2, v6);
}

unint64_t sub_1BD61910C()
{
  result = qword_1EBD4D420;
  if (!qword_1EBD4D420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D3F8, &qword_1BE0E8790);
    sub_1BD0DE4F4(&qword_1EBD4D428, &unk_1EBD4D430, &qword_1BE0E87D0, MEMORY[0x1E697CD20]);
    sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410, &unk_1BE0D2B20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D420);
  }

  return result;
}

uint64_t objectdestroy_114Tm()
{
  v1 = (type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v2[1], v3, v4, v5, v6, v7, v8, v9;
  v2[3], v10, v11, v12, v13, v14, v15, v16;
  v2[5], v17, v18, v19, v20, v21, v22, v23;
  v2[7], v24, v25, v26, v27, v28, v29, v30;
  v2[9], v31, v32, v33, v34, v35, v36, v37;
  v2[11], v38, v39, v40, v41, v42, v43, v44;
  v45 = v2 + v1[12];
  v46 = sub_1BE051AD4();
  (*(*(v46 - 8) + 8))(v45, v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  *&v45[*(v47 + 28)], v48, v49, v50, v51, v52, v53, v54;

  return swift_deallocObject();
}

uint64_t sub_1BD619324(uint64_t a1)
{
  v3 = *(type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD615B64(a1, v4);
}

unint64_t sub_1BD6193BC()
{
  result = qword_1EBD4D470;
  if (!qword_1EBD4D470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D468, &qword_1BE0E8848);
    sub_1BD619474();
    sub_1BD0DE4F4(&qword_1EBD44C28, &qword_1EBD4D4A0, &qword_1BE0E8860, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D470);
  }

  return result;
}

unint64_t sub_1BD619474()
{
  result = qword_1EBD4D478;
  if (!qword_1EBD4D478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D480, &qword_1BE0E8850);
    sub_1BD0DE4F4(&qword_1EBD4D488, &unk_1EBD4D490, &qword_1BE0E8858, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D478);
  }

  return result;
}

uint64_t sub_1BD619580(uint64_t a1)
{
  v3 = *(type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD6147F8(a1, v4);
}

uint64_t sub_1BD61968C(uint64_t a1)
{
  v4 = *(type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD616074(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1BD6197AC()
{
  v1 = *(type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1BE049364() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD614A40(v0 + v2, v5);
}

void sub_1BD619880(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - v10;
  if ([*&v4[*a1] isValid])
  {
    if ((v4[*a2] & 1) == 0)
    {
      v4[*a2] = 1;
      v12 = sub_1BE0528D4();
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
      sub_1BE0528A4();
      v13 = v4;
      v14 = sub_1BE052894();
      v15 = swift_allocObject();
      v16 = MEMORY[0x1E69E85E0];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = v13;
      v17 = sub_1BD122C00(0, 0, v11, a4, v15);
      v17, v18, v19, v20, v21, v22, v23, v24;
    }
  }
}

uint64_t sub_1BD6199D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD612C04(a1, v4, v5, v6);
}

uint64_t sub_1BD619A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD611F78(a1, v4, v5, v6);
}

void sub_1BD619B3C()
{
  v1 = *(sub_1BE049364() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD611618(v3, v0 + v2, v4);
}

uint64_t sub_1BD619C58(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1BD619D48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v114 = a1;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37210, &unk_1BE0B1230);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v104 - v3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D878, &qword_1BE0E8FA8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v104 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D880, &qword_1BE0E8FB0);
  v109 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v104 - v5;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D888, &qword_1BE0E8FB8);
  v106 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D890, &qword_1BE0E8FC0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v104 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D898, &qword_1BE0E8FC8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v104 - v12;
  v118 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D8A0, &qword_1BE0E8FD0);
  sub_1BD62AD24();
  sub_1BE0504E4();
  v14 = [objc_opt_self() systemGroupedBackgroundColor];
  v15 = sub_1BE0511C4();
  v16 = sub_1BE0501D4();
  v17 = &v13[*(v11 + 36)];
  *v17 = v15;
  v17[8] = v16;
  v18 = sub_1BE04F434();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v22, *MEMORY[0x1E697C438], v18, v20);
  v23 = sub_1BD62AF24();
  sub_1BE050E84();
  (*(v19 + 8))(v22, v18);
  sub_1BD0DE53C(v13, &qword_1EBD4D898, &qword_1BE0E8FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD0, &unk_1BE0E9000);
  sub_1BE04EE44();
  v24 = swift_allocObject();
  v24[1] = xmmword_1BE0B69E0;
  sub_1BE04EE34();
  v120 = v11;
  v121 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v104;
  MEMORY[0x1BFB3DEF0](0, v24, v7, OpaqueTypeConformance2);
  v24, v27, v28, v29, v30, v31, v32, v33;
  (*(v8 + 8))(v10, v7);
  v117 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD8, &unk_1BE0B7C90);
  v120 = v7;
  v121 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CE0, &unk_1BE0E9010);
  v37 = sub_1BD0DE4F4(&qword_1EBD38CE8, &qword_1EBD38CE0, &unk_1BE0E9010, MEMORY[0x1E697BEF0]);
  v120 = v36;
  v121 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v107;
  v40 = v105;
  sub_1BE051024();
  (*(v106 + 8))(v26, v40);
  v116 = v2;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA48, &qword_1BE0C6AF0);
  v120 = v40;
  v121 = v34;
  v122 = v35;
  v123 = v38;
  swift_getOpaqueTypeConformance2();
  sub_1BD279F20();
  v41 = v110;
  v42 = v108;
  sub_1BE050954();
  (*(v109 + 8))(v39, v42);
  v43 = sub_1BE04EC54();
  v44 = sub_1BE0501F4();
  v45 = v41 + *(v111 + 9);
  *v45 = v43;
  *(v45 + 8) = v44;
  v46 = swift_allocObject();
  v47 = *(v2 + 48);
  *(v46 + 48) = *(v2 + 32);
  *(v46 + 64) = v47;
  *(v46 + 80) = *(v2 + 64);
  v48 = *(v2 + 16);
  *(v46 + 16) = *v2;
  *(v46 + 32) = v48;
  v49 = swift_allocObject();
  v50 = *(v2 + 48);
  *(v49 + 48) = *(v2 + 32);
  *(v49 + 64) = v50;
  *(v49 + 80) = *(v2 + 64);
  v51 = *(v2 + 16);
  *(v49 + 16) = *v2;
  *(v49 + 32) = v51;
  sub_1BD62B05C(v2, &v120);
  sub_1BD62B05C(v2, &v120);
  sub_1BD62B094();
  sub_1BD0F9764();
  sub_1BE050DC4();
  v46, v52, v53, v54, v55, v56, v57, v58;
  v49, v59, v60, v61, v62, v63, v64, v65;
  sub_1BD08FDA4(v41);
  sub_1BE0528A4();
  sub_1BD62B05C(v2, &v120);
  v66 = sub_1BE052894();
  v67 = swift_allocObject();
  v68 = MEMORY[0x1E69E85E0];
  *(v67 + 16) = v66;
  *(v67 + 24) = v68;
  v69 = *(v2 + 48);
  *(v67 + 64) = *(v2 + 32);
  *(v67 + 80) = v69;
  *(v67 + 96) = *(v2 + 64);
  v70 = *(v2 + 16);
  *(v67 + 32) = *v2;
  *(v67 + 48) = v70;
  v71 = sub_1BE0528D4();
  v72 = *(v71 - 8);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = &v104 - v74;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v110 = sub_1BE04EAA4();
    v111 = &v104;
    v109 = *(v110 - 1);
    MEMORY[0x1EEE9AC00](v110);
    v77 = &v104 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_1BE053834();
    v121, v78, v79, v80, v81, v82, v83, v84;
    v120 = 0xD000000000000045;
    v121 = 0x80000001BE131C50;
    v119 = 82;
    v85 = sub_1BE053B24();
    v87 = v86;
    MEMORY[0x1BFB3F610](v85);
    v87, v88, v89, v90, v91, v92, v93, v94;
    v96 = MEMORY[0x1EEE9AC00](v95);
    (*(v72 + 16))(&v104 - v74, &v104 - v74, v71, v96);
    sub_1BE04EA94();
    (*(v72 + 8))(&v104 - v74, v71);
    v97 = v114;
    (*(v112 + 32))(v114, v115, v113);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37218, &unk_1BE0E9030);
    return (*(v109 + 32))(v97 + *(v98 + 36), v77, v110);
  }

  else
  {
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37220, &qword_1BE0B1240);
    v101 = v114;
    v102 = (v114 + *(v100 + 36));
    v103 = sub_1BE04E7B4();
    (*(v72 + 32))(&v102[*(v103 + 20)], v75, v71);
    *v102 = &unk_1BE0E9028;
    *(v102 + 1) = v67;
    return (*(v112 + 32))(v101, v115, v113);
  }
}

uint64_t sub_1BD61A980@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D8C8, &qword_1BE0E8FE0);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v71 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D8B8, &qword_1BE0E8FD8);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v72 = v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0, &unk_1BE0E8DD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v71 - v7;
  v9 = sub_1BE049184();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *a1;
  v84[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D900, &unk_1BE0E9040);
  sub_1BE0516A4();
  v12 = v83[0];
  KeyPath = swift_getKeyPath();
  *&v84[0] = v12;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v21 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__institution;
  swift_beginAccess();
  sub_1BD0DE19C(v12 + v21, v8, &qword_1EBD498D0, &unk_1BE0E8DD0);
  v12, v22, v23, v24, v25, v26, v27, v28;
  v29 = v10;
  v30 = *(v10 + 48);
  v31 = v9;
  if (v30(v8, 1, v9) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD498D0, &unk_1BE0E8DD0);
  }

  else
  {
    v32 = v29;
    v33 = *(v29 + 32);
    v34 = v75;
    v33(v75, v8, v31);
    v84[0] = v85;
    sub_1BE0516A4();
    v35 = v83[0];
    v36 = swift_getKeyPath();
    *&v84[0] = v35;
    sub_1BE04B594();
    v36, v37, v38, v39, v40, v41, v42, v43;
    v44 = *&v35[OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions];
    sub_1BE048C84();
    v35, v45, v46, v47, v48, v49, v50, v51;
    if (v44)
    {
      v71[1] = v71;
      MEMORY[0x1EEE9AC00](v52);
      v71[0] = &v71[-6];
      v71[-4] = v44;
      v71[-3] = v34;
      v71[-2] = a1;
      v53 = sub_1BE04F7C4();
      v82 = 0;
      sub_1BD61B380(v44, v80);
      memcpy(v83, v80, 0x261uLL);
      memcpy(v84, v80, 0x261uLL);
      sub_1BD0DE19C(v83, &v79, &qword_1EBD4D908, &qword_1BE0E9050);
      sub_1BD0DE53C(v84, &qword_1EBD4D908, &qword_1BE0E9050);
      memcpy(&v81[7], v83, 0x261uLL);
      v54 = v82;
      v55 = v73;
      v56 = &v73[*(v74 + 36)];
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
      v58 = sub_1BE0505C4();
      (*(*(v58 - 8) + 56))(v56 + v57, 1, 1, v58);
      *v56 = swift_getKeyPath();
      *v55 = v53;
      *(v55 + 1) = 0;
      v55[16] = v54;
      memcpy(v55 + 17, v81, 0x268uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CA8, &qword_1BE0B7C70);
      sub_1BD62AE40();
      sub_1BD0F92F0();
      v59 = v72;
      sub_1BE051A24();
      v44, v60, v61, v62, v63, v64, v65, v66;
      v68 = v76;
      v67 = v77;
      v69 = v78;
      (*(v76 + 32))(v78, v59, v77);
      (*(v68 + 56))(v69, 0, 1, v67);
      return (*(v32 + 8))(v75, v31);
    }

    (*(v32 + 8))(v34, v31);
  }

  return (*(v76 + 56))(v78, 1, 1, v77);
}

uint64_t sub_1BD61AF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE049184();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v17 = a1;
  (*(v7 + 16))(&v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v6, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v12 = v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *(a3 + 48);
  *(v12 + 32) = *(a3 + 32);
  *(v12 + 48) = v13;
  *(v12 + 64) = *(a3 + 64);
  v14 = *(a3 + 16);
  *v12 = *a3;
  *(v12 + 16) = v14;
  sub_1BE048C84();
  sub_1BD62B05C(a3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C28, qword_1BE0E9120);
  sub_1BE04AFE4();
  type metadata accessor for FinanceKitInternalTransactionCell(0);
  sub_1BD0DE4F4(&qword_1EBD38D98, &qword_1EBD38C28, qword_1BE0E9120, MEMORY[0x1E69E6338]);
  sub_1BD626BFC(&qword_1EBD38CB0, type metadata accessor for FinanceKitInternalTransactionCell, &unk_1BE0E8A4C);
  sub_1BD626BFC(&qword_1EBD38DA0, MEMORY[0x1E6967A40], MEMORY[0x1E6967A60]);
  return sub_1BE0519D4();
}

double sub_1BD61B214@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  v9 = v8[5];
  v10 = sub_1BE049A94();
  (*(*(v10 - 8) + 16))(&a4[v9], a1, v10);
  v11 = v8[6];
  v12 = sub_1BE049184();
  (*(*(v12 - 8) + 16))(&a4[v11], a2, v12);
  v13 = *(a3 + 64);
  type metadata accessor for NavigationController();
  sub_1BD626BFC(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  v14 = v13;
  *a4 = sub_1BE04EEC4();
  *(a4 + 1) = v15;
  *&a4[v8[7]] = v14;
  v16 = v8[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB0, &unk_1BE0B7DB0);
  sub_1BE051694();
  result = *&v18;
  *&a4[v16] = v18;
  return result;
}

id sub_1BD61B380@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v87 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BD61B770(a1, v106);
  (*(v4 + 104))(v6, *MEMORY[0x1E69B80D8], v3, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v4 + 8))(v6, v3);
    v102[0] = v10;
    v102[1] = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = sub_1BE0503D4();
    v21 = sub_1BE0505F4();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v20, v22, v24, v26, v28, v29, v30, v31;
    sub_1BD0DDF10(v13, v15, (v17 & 1), v32, v33, v34, v35, v36);
    v19, v37, v38, v39, v40, v41, v42, v43;
    v44 = sub_1BE0505D4();
    v46 = v45;
    LOBYTE(v13) = v47;
    v49 = v48;
    sub_1BD0DDF10(v21, v23, (v25 & 1), v48, v50, v51, v52, v53);
    v27, v54, v55, v56, v57, v58, v59, v60;
    v61 = sub_1BE051464();
    v102[0] = v61;
    v62 = sub_1BE050574();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    sub_1BD0DDF10(v44, v46, (v13 & 1), v67, v69, v70, v71, v72);
    v61, v73, v74, v75, v76, v77, v78, v79;
    v49, v80, v81, v82, v83, v84, v85, v86;
    v105 = v66 & 1;
    v103 = 0;
    memcpy(v89, v106, 0x219uLL);
    memcpy(v88, v106, 0x219uLL);
    *&v90 = v62;
    *(&v90 + 1) = v64;
    LOBYTE(v91) = v66 & 1;
    *(&v91 + 1) = *v104;
    DWORD1(v91) = *&v104[3];
    *(&v91 + 1) = v68;
    v92 = 0u;
    v93 = 0u;
    v94 = 0;
    memset(&v88[36], 0, 33);
    v88[34] = v90;
    v88[35] = v91;
    memcpy(v87, v88, 0x261uLL);
    v95[0] = v62;
    v95[1] = v64;
    v96 = v66 & 1;
    *v97 = *v104;
    *&v97[3] = *&v104[3];
    v98 = v68;
    v99 = 0u;
    v100 = 0u;
    v101 = 0;
    sub_1BD0DE19C(v89, v102, &qword_1EBD4D910, &qword_1BE0E9088);
    sub_1BD0DE19C(&v90, v102, &qword_1EBD38D88, &qword_1BE0E9090);
    sub_1BD0DE53C(v95, &qword_1EBD38D88, &qword_1BE0E9090);
    memcpy(v102, v106, 0x219uLL);
    return sub_1BD0DE53C(v102, &qword_1EBD4D910, &qword_1BE0E9088);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1BD61B770@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BE04F504();
  v50 = 1;
  v7 = sub_1BE04F7B4();
  v51 = 0;
  sub_1BD61C9A8(v3, a1, &v33);
  v64 = v45;
  v65 = v46;
  v66 = v47;
  v67 = v48;
  v60 = v41;
  v61 = v42;
  v62 = v43;
  v63 = v44;
  v56 = v37;
  v57 = v38;
  v58 = v39;
  v59 = v40;
  v52 = v33;
  v53 = v34;
  v54 = v35;
  v55 = v36;
  v68[12] = v45;
  v68[13] = v46;
  v68[14] = v47;
  v68[15] = v48;
  v68[8] = v41;
  v68[9] = v42;
  v68[10] = v43;
  v68[11] = v44;
  v68[4] = v37;
  v68[5] = v38;
  v68[6] = v39;
  v68[7] = v40;
  v68[0] = v33;
  v68[1] = v34;
  v68[2] = v35;
  v68[3] = v36;
  sub_1BD0DE19C(&v52, &v32, &qword_1EBD4D918, &qword_1BE0E9098);
  sub_1BD0DE53C(v68, &qword_1EBD4D918, &qword_1BE0E9098);
  *&__src[199] = v64;
  *&__src[215] = v65;
  *&__src[231] = v66;
  *&__src[247] = v67;
  *&__src[135] = v60;
  *&__src[151] = v61;
  *&__src[167] = v62;
  *&__src[183] = v63;
  *&__src[71] = v56;
  *&__src[87] = v57;
  *&__src[103] = v58;
  *&__src[119] = v59;
  *&__src[7] = v52;
  *&__src[23] = v53;
  *&__src[39] = v54;
  *&__src[55] = v55;
  v8 = v51;
  v9 = v50;
  sub_1BE051CD4();
  sub_1BE04EE54();
  LOBYTE(a1) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v51 = 0;
  v18 = swift_allocObject();
  v19 = *(v3 + 48);
  *(v18 + 48) = *(v3 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(v3 + 64);
  v20 = *(v3 + 16);
  *(v18 + 16) = *v3;
  *(v18 + 32) = v20;
  sub_1BD62B05C(v3, &v32);
  LOBYTE(v3) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  a2->n128_u64[0] = v6;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = v9;
  a2[1].n128_u64[1] = v7;
  a2[2].n128_u64[0] = 0x4032000000000000;
  a2[2].n128_u8[8] = v8;
  memcpy(&a2[2].n128_f32[2] + 1, __src, 0x107uLL);
  v29 = v38;
  a2[23] = v37;
  a2[24] = v29;
  a2[25] = v39;
  v30 = v34;
  a2[19] = v33;
  a2[20] = v30;
  result = v36;
  a2[21] = v35;
  a2[22] = result;
  a2[26].n128_u8[0] = a1;
  a2[26].n128_u64[1] = v11;
  a2[27].n128_u64[0] = v13;
  a2[27].n128_u64[1] = v15;
  a2[28].n128_u64[0] = v17;
  a2[28].n128_u8[8] = 0;
  a2[29].n128_u64[0] = sub_1BD0D4658;
  a2[29].n128_u64[1] = 0;
  a2[30].n128_u64[0] = sub_1BD62B3F8;
  a2[30].n128_u64[1] = v18;
  a2[31].n128_u8[0] = v3;
  a2[31].n128_u64[1] = v22;
  a2[32].n128_u64[0] = v24;
  a2[32].n128_u64[1] = v26;
  a2[33].n128_u64[0] = v28;
  a2[33].n128_u8[8] = 0;
  return result;
}

uint64_t sub_1BD61BB6C(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CE0, &unk_1BE0E9010);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1BE04FB34();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D20, &qword_1BE0B7CF8);
  sub_1BD0DE4F4(&qword_1EBD38D28, &qword_1EBD38D20, &qword_1BE0B7CF8, MEMORY[0x1E69817F8]);
  sub_1BE04E424();
  v7 = sub_1BD0DE4F4(&qword_1EBD38CE8, &qword_1EBD38CE0, &unk_1BE0E9010, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

int *sub_1BD61BD58@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D30, &qword_1BE0B7D00);
  return sub_1BD61BDB0(a1, a2 + *(v4 + 44));
}

int *sub_1BD61BDB0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_1BE051584();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE049B04();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC30, &qword_1BE0B7D08);
  MEMORY[0x1EEE9AC00](v69);
  v12 = &v67 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D38, &qword_1BE0B7D10);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v67 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D40, &qword_1BE0B7D18);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v67 - v14;
  v74 = a1;
  v79 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D900, &unk_1BE0E9040);
  sub_1BE0516A4();
  v15 = v78;
  KeyPath = swift_getKeyPath();
  *&v79 = v15;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v24 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  swift_beginAccess();
  (*(v8 + 16))(v10, &v15[v24], v7);
  v15, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1BFB3FF90](v10);
  PKScreenScale();
  result = PKIconForFKCategory();
  if (result)
  {
    v33 = sub_1BE051544();
    (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
    v34 = 0.0;
    v68 = sub_1BE0515E4();
    v33, v35, v36, v37, v38, v39, v40, v41;
    (*(v4 + 8))(v6, v3);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v42 = v79;
    v43 = BYTE8(v79);
    v44 = v80;
    v45 = v81;
    v46 = v82;
    v47 = v83;
    v48 = &v12[*(v69 + 36)];
    v49 = *(sub_1BE04EDE4() + 20);
    v50 = *MEMORY[0x1E697F468];
    v51 = sub_1BE04F684();
    (*(*(v51 - 8) + 104))(&v48[v49], v50, v51);
    __asm { FMOV            V0.2D, #6.0 }

    *v48 = _Q0;
    *&v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    *v12 = v68;
    *(v12 + 1) = v42;
    v12[16] = v43;
    *(v12 + 3) = v44;
    v12[32] = v45;
    *(v12 + 5) = v46;
    *(v12 + 6) = v47;
    v57 = v74;
    v77 = v74[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    if (v76)
    {
      v58 = 1.0;
    }

    else
    {
      v58 = 0.0;
    }

    v59 = v72;
    sub_1BD0DE204(v12, v72, &unk_1EBD3FC30, &qword_1BE0B7D08);
    *(v59 + *(v70 + 36)) = v58;
    v77 = v57[3];
    sub_1BE0516A4();
    if (!v76)
    {
      v34 = 40.0;
    }

    v60 = v73;
    v61 = sub_1BD0DE204(v59, v73, &qword_1EBD38D38, &qword_1BE0B7D10);
    v62 = v60 + *(v71 + 36);
    *v62 = 0;
    *(v62 + 8) = v34;
    v63 = MEMORY[0x1BFB3EDF0](v61, 0.5, 1.0, 0.0);
    v77 = v57[3];
    sub_1BE0516A4();
    v64 = v76;
    v65 = v75;
    sub_1BD0DE204(v60, v75, &qword_1EBD38D40, &qword_1BE0B7D18);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D48, &qword_1BE0E33A0);
    v66 = v65 + result[9];
    *v66 = v63;
    *(v66 + 8) = v64;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD61C3A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v66 - v4;
  v6 = sub_1BE0495A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *v1;
  v69 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D900, &unk_1BE0E9040);
  sub_1BE0516A4();
  v10 = v68;
  KeyPath = swift_getKeyPath();
  *&v69 = v10;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__account;
  swift_beginAccess();
  sub_1BD0DE19C(v10 + v19, v5, &qword_1EBD498C8, &unk_1BE0DF580);
  v10, v20, v21, v22, v23, v24, v25, v26;
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_1BD0DE53C(v5, &qword_1EBD498C8, &unk_1BE0DF580);
LABEL_7:
    v48 = 0;
    v50 = 0;
    goto LABEL_8;
  }

  v28 = v9;
  (*(v7 + 32))(v9, v5, v6);
  v68 = v70;
  sub_1BE0516A4();
  v29 = v67;
  v30 = swift_getKeyPath();
  *&v68 = v29;
  sub_1BE04B594();
  v30, v31, v32, v33, v34, v35, v36, v37;
  v38 = *&v29[OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions];
  sub_1BE048C84();
  v29, v39, v40, v41, v42, v43, v44, v45;
  if (!v38)
  {
    result = (*(v7 + 8))(v28, v6);
    goto LABEL_7;
  }

  v68 = v70;
  sub_1BE0516A4();
  v46 = v67;
  sub_1BD625694(v28, v38);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v46, v49, v51, v53, v55, v56, v57, v58;
  v38, v59, v60, v61, v62, v63, v64, v65;
  result = (*(v7 + 8))(v28, v6);
  if (!v50)
  {
    v48 = 0;
LABEL_8:
    v52 = 0;
    v54 = 0;
  }

  *a1 = v48;
  a1[1] = v50;
  a1[2] = v52;
  a1[3] = v54;
  return result;
}

void *sub_1BD61C714@<X0>(double *a2@<X8>)
{
  sub_1BE04E9E4();
  v4 = v3;
  sub_1BE04E9D4();
  v6 = v4 + v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830, &unk_1BE0B7CC0);
  result = sub_1BE0516A4();
  v8 = v6 / v9;
  if (v6 / v9 <= 0.0)
  {
    v8 = 0.0;
  }

  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  *a2 = v8;
  return result;
}

void sub_1BD61C7B0(uint64_t a1, double *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830, &unk_1BE0B7CC0);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
}

uint64_t sub_1BD61C850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1BE0528A4();
  v3[6] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD61C8E8, v5, v4);
}

uint64_t sub_1BD61C8E8()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D900, &unk_1BE0E9040);
  sub_1BE0516A4();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F8798;

  return sub_1BD61EF54();
}

id sub_1BD61C9A8@<X0>(__int128 *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v68 = a2;
  v5 = sub_1BE051584();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE049B04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v112 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D900, &unk_1BE0E9040);
  sub_1BE0516A4();
  v12 = v110;
  KeyPath = swift_getKeyPath();
  *&v112 = v12;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v21 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  swift_beginAccess();
  (*(v9 + 16))(v11, &v12[v21], v8);
  v12, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1BFB3FF90](v11);
  PKScreenScale();
  result = PKIconForFKCategory();
  if (result)
  {
    v30 = sub_1BE051544();
    v32 = v72;
    v31 = v73;
    (*(v72 + 104))(v7, *MEMORY[0x1E6981630], v73);
    v64 = sub_1BE0515E4();
    v30, v33, v34, v35, v36, v37, v38, v39;
    (*(v32 + 8))(v7, v31);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    LOBYTE(v32) = v121;
    v40 = v123;
    v72 = v124;
    v73 = v122;
    v70 = v120;
    v71 = v125;
    v41 = [objc_opt_self() systemGrayColor];
    v69 = sub_1BE0511C4();
    v42 = PKUIPixelLength();
    v119 = v32;
    v117 = v40;
    v65 = v40;
    v66 = sub_1BE04F7B4();
    LOBYTE(v74[0]) = 0;
    sub_1BD61D11C(v67, v68, &v112);
    v99 = *&v113[64];
    v100 = *&v113[80];
    v101 = *&v113[96];
    v102 = *&v113[112];
    v96 = *&v113[16];
    v97 = *&v113[32];
    v98 = *&v113[48];
    v94 = v112;
    v95 = *v113;
    v103[6] = *&v113[80];
    v103[7] = *&v113[96];
    v103[8] = *&v113[112];
    v103[2] = *&v113[16];
    v103[3] = *&v113[32];
    v103[4] = *&v113[48];
    v103[5] = *&v113[64];
    v103[0] = v112;
    v103[1] = *v113;
    sub_1BD0DE19C(&v94, &v110, &qword_1EBD4D920, &qword_1BE0E90A0);
    sub_1BD0DE53C(v103, &qword_1EBD4D920, &qword_1BE0E90A0);
    *&v93[87] = v99;
    *&v93[103] = v100;
    *&v93[119] = v101;
    *&v93[135] = v102;
    *&v93[23] = v95;
    *&v93[39] = v96;
    *&v93[55] = v97;
    *&v93[71] = v98;
    *&v93[7] = v94;
    v43 = v64;
    *&v104 = v64;
    *(&v104 + 1) = v70;
    LOBYTE(v105) = v32;
    *(&v105 + 1) = *v118;
    DWORD1(v105) = *&v118[3];
    *(&v105 + 1) = v73;
    LOBYTE(v106) = v40;
    *(&v106 + 1) = *v116;
    DWORD1(v106) = *&v116[3];
    *(&v106 + 1) = v72;
    *&v107 = v71;
    BYTE8(v107) = 1;
    HIDWORD(v107) = *&v115[3];
    *(&v107 + 9) = *v115;
    *&v108 = v69;
    *(&v108 + 1) = v42;
    v90 = v107;
    v91 = v108;
    v88 = v105;
    v89 = v106;
    v87 = v104;
    v44 = *&v93[16];
    *&v111[17] = *&v93[16];
    v45 = *v93;
    *&v111[1] = *v93;
    v46 = *&v93[80];
    *&v111[81] = *&v93[80];
    v47 = *&v93[64];
    *&v111[65] = *&v93[64];
    v48 = *&v93[48];
    *&v111[49] = *&v93[48];
    v49 = *&v93[32];
    *&v111[33] = *&v93[32];
    *&v111[144] = *(&v102 + 1);
    v50 = *&v93[128];
    *&v111[129] = *&v93[128];
    v51 = *&v93[112];
    *&v111[113] = *&v93[112];
    v52 = *&v93[96];
    *&v111[97] = *&v93[96];
    *(&v92[4] + 8) = *&v111[48];
    *(&v92[3] + 8) = *&v111[32];
    *(&v92[7] + 8) = *&v111[96];
    *(&v92[8] + 8) = *&v111[112];
    *(&v92[9] + 8) = *&v111[128];
    v53 = v74[0];
    v54 = v66;
    *&v110 = v66;
    *(&v110 + 1) = 0x4008000000000000;
    v111[0] = v74[0];
    *(&v92[5] + 8) = *&v111[64];
    *(&v92[6] + 8) = *&v111[80];
    *(v92 + 8) = v110;
    *&v92[0] = 0x4020000000000000;
    *(&v92[10] + 1) = *&v111[144];
    *(&v92[1] + 8) = *v111;
    *(&v92[2] + 8) = *&v111[16];
    v55 = v92[8];
    a3[12] = v92[7];
    a3[13] = v55;
    v56 = v92[10];
    a3[14] = v92[9];
    a3[15] = v56;
    v57 = v92[4];
    a3[8] = v92[3];
    a3[9] = v57;
    v58 = v92[6];
    a3[10] = v92[5];
    a3[11] = v58;
    v59 = v92[0];
    a3[4] = v91;
    a3[5] = v59;
    v60 = v92[2];
    a3[6] = v92[1];
    a3[7] = v60;
    v61 = v88;
    *a3 = v87;
    a3[1] = v61;
    v62 = v90;
    a3[2] = v89;
    a3[3] = v62;
    *&v113[97] = v52;
    *&v113[113] = v51;
    *v114 = v50;
    *&v113[33] = v49;
    *&v113[49] = v48;
    v109 = 0x4020000000000000;
    *&v112 = v54;
    *(&v112 + 1) = 0x4008000000000000;
    v113[0] = v53;
    *&v114[15] = *&v93[143];
    *&v113[65] = v47;
    *&v113[81] = v46;
    *&v113[1] = v45;
    *&v113[17] = v44;
    sub_1BD0DE19C(&v104, v74, &qword_1EBD4D928, &qword_1BE0E90A8);
    sub_1BD0DE19C(&v110, v74, &qword_1EBD4D930, &qword_1BE0E90B0);
    sub_1BD0DE53C(&v112, &qword_1EBD4D930, &qword_1BE0E90B0);
    v74[0] = v43;
    v74[1] = v70;
    v75 = v32;
    *v76 = *v118;
    *&v76[3] = *&v118[3];
    v77 = v73;
    v78 = v65;
    *v79 = *v116;
    *&v79[3] = *&v116[3];
    v80 = v72;
    v81 = v71;
    v82 = 1;
    *&v83[3] = *&v115[3];
    *v83 = *v115;
    v84 = v69;
    v85 = v42;
    v86 = 0x4020000000000000;
    return sub_1BD0DE53C(v74, &qword_1EBD4D928, &qword_1BE0E90A8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD61D11C(__int128 *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v135 = a2;
  v138 = a3;
  v4 = sub_1BE049B04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D900, &unk_1BE0E9040);
  sub_1BE0516A4();
  v8 = v159[0];
  KeyPath = swift_getKeyPath();
  *&v169 = v8;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v8[v17], v4);
  v8, v18, v19, v20, v21, v22, v23, v24;
  v25 = sub_1BE049AE4();
  v27 = v26;
  (*(v5 + 8))(v7, v4);
  *&v169 = v25;
  *(&v169 + 1) = v27;
  v134 = sub_1BD0DDEBC();
  v28 = sub_1BE0506C4();
  v30 = v29;
  LOBYTE(v7) = v31;
  v33 = v32;
  v34 = sub_1BE050344();
  v35 = sub_1BE0505F4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v34, v36, v38, v40, v42, v43, v44, v45;
  sub_1BD0DDF10(v28, v30, (v7 & 1), v46, v47, v48, v49, v50);
  v33, v51, v52, v53, v54, v55, v56, v57;
  sub_1BE050364();
  v58 = sub_1BE050544();
  v141 = v59;
  v142 = v58;
  LOBYTE(v28) = v60;
  v143 = v61;
  sub_1BD0DDF10(v35, v37, (v39 & 1), v61, v62, v63, v64, v65);
  v41, v66, v67, v68, v69, v70, v71, v72;
  v140 = swift_getKeyPath();
  v137 = sub_1BE051464();
  v136 = swift_getKeyPath();
  v139 = v28 & 1;
  LOBYTE(v169) = v28 & 1;
  LOBYTE(v159[0]) = 0;
  v73 = sub_1BE052404();
  v74 = PKLocalizedString(v73);

  if (v74)
  {
    sub_1BE052434();
    v76 = v75;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1BE0B69E0;
    v78 = v135[2];
    v79 = MEMORY[0x1E69E65A8];
    *(v77 + 56) = MEMORY[0x1E69E6530];
    *(v77 + 64) = v79;
    *(v77 + 32) = v78;
    v80 = sub_1BE052454();
    v82 = v81;
    v76, v81, v83, v84, v85, v86, v87, v88;
    *&v169 = v80;
    *(&v169 + 1) = v82;
    v89 = sub_1BE0506C4();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = sub_1BE0502A4();
    v97 = sub_1BE0505F4();
    v99 = v98;
    v101 = v100;
    v135 = v102;
    v96, v98, v100, v102, v103, v104, v105, v106;
    sub_1BD0DDF10(v89, v91, (v93 & 1), v107, v108, v109, v110, v111);
    v95, v112, v113, v114, v115, v116, v117, v118;
    v119 = swift_getKeyPath();
    v120 = sub_1BE051494();
    v121 = swift_getKeyPath();
    v122 = v101 & 1;
    v182 = v101 & 1;
    v180 = 0;
    *&v149 = v142;
    *(&v149 + 1) = v141;
    LOBYTE(v150) = v139;
    *(&v150 + 1) = v184[0];
    DWORD1(v150) = *(v184 + 3);
    *(&v150 + 1) = v143;
    *&v151 = v140;
    *(&v151 + 1) = 2;
    LOBYTE(v152) = 0;
    DWORD1(v152) = *&v183[3];
    *(&v152 + 1) = *v183;
    v124 = v136;
    v123 = v137;
    *(&v152 + 1) = v136;
    v153 = v137;
    *&v148[0] = v137;
    v146 = v151;
    v147 = v152;
    v144 = v149;
    v145 = v150;
    *&v154 = v97;
    *(&v154 + 1) = v99;
    LOBYTE(v155) = v122;
    DWORD1(v155) = *&v181[3];
    *(&v155 + 1) = *v181;
    v125 = v135;
    *(&v155 + 1) = v135;
    *&v156 = v119;
    *(&v156 + 1) = 1;
    LOBYTE(v157) = 0;
    DWORD1(v157) = *&v179[3];
    *(&v157 + 1) = *v179;
    *(&v157 + 1) = v121;
    v158 = v120;
    *(v148 + 8) = v154;
    *(&v148[4] + 1) = v120;
    *(&v148[3] + 8) = v157;
    *(&v148[2] + 8) = v156;
    *(&v148[1] + 8) = v155;
    v126 = v149;
    v127 = v150;
    v128 = v152;
    v129 = v138;
    v138[2] = v151;
    v129[3] = v128;
    *v129 = v126;
    v129[1] = v127;
    v130 = v148[0];
    v131 = v148[1];
    v132 = v148[4];
    v129[7] = v148[3];
    v129[8] = v132;
    v133 = v148[2];
    v129[5] = v131;
    v129[6] = v133;
    v129[4] = v130;
    v159[0] = v97;
    v159[1] = v99;
    v160 = v122;
    *v161 = *v181;
    *&v161[3] = *&v181[3];
    v162 = v125;
    v163 = v119;
    v164 = 1;
    v165 = 0;
    *v166 = *v179;
    *&v166[3] = *&v179[3];
    v167 = v121;
    v168 = v120;
    sub_1BD0DE19C(&v149, &v169, &qword_1EBD4D938, &qword_1BE0E9118);
    sub_1BD0DE19C(&v154, &v169, &qword_1EBD4D938, &qword_1BE0E9118);
    sub_1BD0DE53C(v159, &qword_1EBD4D938, &qword_1BE0E9118);
    *&v169 = v142;
    *(&v169 + 1) = v141;
    v170 = v139;
    *v171 = v184[0];
    *&v171[3] = *(v184 + 3);
    v172 = v143;
    v173 = v140;
    v174 = 2;
    v175 = 0;
    *v176 = *v183;
    *&v176[3] = *&v183[3];
    v177 = v124;
    v178 = v123;
    sub_1BD0DE53C(&v169, &qword_1EBD4D938, &qword_1BE0E9118);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD61D744(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__accountID;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1BD626BFC(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v21[0] = a1;
  LOBYTE(a1) = sub_1BE052334();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v21[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v21[0];
    v21[-2] = v2;
    v21[-1] = v12;
    v21[1] = v2;
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
    sub_1BE04B584();
    KeyPath, v13, v14, v15, v16, v17, v18, v19;
  }

  return (v10)(v21[0], v4);
}

uint64_t sub_1BD61DA0C@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v19 = v4;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = *a2;
  swift_beginAccess();
  v17 = (a3)(0);
  return (*(*(v17 - 8) + 16))(a4, v19 + v16, v17);
}

uint64_t sub_1BD61DB0C@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t (*a4)(void, __n128)@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = *a3;
  swift_beginAccess();
  v18 = (a4)(0);
  return (*(*(v18 - 8) + 16))(a5, v8 + v17, v18);
}

uint64_t sub_1BD61DC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1BD61DCE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE049B04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1BD626BFC(&qword_1EBD3A340, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AE8]);
  v21[0] = a1;
  LOBYTE(a1) = sub_1BE052334();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v21[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v21[0];
    v21[-2] = v2;
    v21[-1] = v12;
    v21[1] = v2;
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
    sub_1BE04B584();
    KeyPath, v13, v14, v15, v16, v17, v18, v19;
  }

  return (v10)(v21[0], v4);
}

uint64_t sub_1BD61DF84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void, __n128))
{
  v7 = *a3;
  swift_beginAccess();
  v8 = (a4)(0);
  (*(*(v8 - 8) + 24))(a1 + v7, a2, v8);
  return swift_endAccess();
}

uint64_t sub_1BD61E050(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  v10 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__range;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v10, v9, &qword_1EBD38DB8, &unk_1BE0BD340);
  sub_1BE04AF64();
  sub_1BD626BFC(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  if ((sub_1BE052334() & 1) == 0)
  {
    sub_1BD0DE53C(v9, &qword_1EBD38DB8, &unk_1BE0BD340);
    goto LABEL_5;
  }

  v11 = sub_1BE052334();
  sub_1BD0DE53C(v9, &qword_1EBD38DB8, &unk_1BE0BD340);
  if ((v11 & 1) == 0)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v21[-2] = v2;
    v21[-1] = a1;
    v21[1] = v2;
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
    sub_1BE04B584();
    KeyPath, v13, v14, v15, v16, v17, v18, v19;
    return sub_1BD0DE53C(a1, &qword_1EBD38DB8, &unk_1BE0BD340);
  }

  sub_1BD0DE19C(a1, v6, &qword_1EBD38DB8, &unk_1BE0BD340);
  swift_beginAccess();
  sub_1BD2C7C4C(v6, v2 + v10, &qword_1EBD38DB8, &unk_1BE0BD340);
  swift_endAccess();
  return sub_1BD0DE53C(a1, &qword_1EBD38DB8, &unk_1BE0BD340);
}

uint64_t sub_1BD61E320()
{
  KeyPath = swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  return sub_1BE048964();
}

uint64_t sub_1BD61E3CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store);
  return sub_1BE048964();
}

void sub_1BD61E480(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store);
  if (v10 == a1)
  {

    v10, a2, a3, a4, a5, a6, a7, a8;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
    sub_1BE04B584();
    KeyPath, v12, v13, v14, v15, v16, v17, v18;
    a1, v19, v20, v21, v22, v23, v24, v25;
  }
}

uint64_t sub_1BD61E5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1BD0DE19C(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_1BD61E68C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0, &unk_1BE0E8DD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__institution;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v6, v5, &qword_1EBD498D0, &unk_1BE0E8DD0);
  v7 = sub_1BD629D90(v5, a1);
  sub_1BD0DE53C(v5, &qword_1EBD498D0, &unk_1BE0E8DD0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    v17[2] = v1;
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1BD0DE19C(a1, v5, &qword_1EBD498D0, &unk_1BE0E8DD0);
    swift_beginAccess();
    sub_1BD2C7C4C(v5, v1 + v6, &qword_1EBD498D0, &unk_1BE0E8DD0);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD498D0, &unk_1BE0E8DD0);
}

uint64_t sub_1BD61E8B8@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v20 = v5;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v18 = *a2;
  swift_beginAccess();
  return sub_1BD0DE19C(v20 + v18, a5, a3, a4);
}

uint64_t sub_1BD61E998@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = *a3;
  swift_beginAccess();
  return sub_1BD0DE19C(v10 + v19, a6, a4, a5);
}

uint64_t sub_1BD61EA7C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__account;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v6, v5, &qword_1EBD498C8, &unk_1BE0DF580);
  v7 = sub_1BD629A70(v5, a1);
  sub_1BD0DE53C(v5, &qword_1EBD498C8, &unk_1BE0DF580);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    v17[2] = v1;
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1BD0DE19C(a1, v5, &qword_1EBD498C8, &unk_1BE0DF580);
    swift_beginAccess();
    sub_1BD2C7C4C(v5, v1 + v6, &qword_1EBD498C8, &unk_1BE0DF580);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD498C8, &unk_1BE0DF580);
}

uint64_t sub_1BD61EC84()
{
  KeyPath = swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  return sub_1BE048C84();
}

uint64_t sub_1BD61ED30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions);
  return sub_1BE048C84();
}

void sub_1BD61EDE4(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions;
  v11 = *(v8 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions);
  if (!v11)
  {
    if (!a1)
    {
      v21 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
    sub_1BE04B584();
    KeyPath, v23, v24, v25, v26, v27, v28, v29;
    a1, v30, v31, v32, v33, v34, v35, v36;
    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v12 = sub_1BE048C84();
  v13 = sub_1BD400C50(v12, a1);
  v11, v14, v15, v16, v17, v18, v19, v20;
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  v21 = *(v8 + v10);
LABEL_8:
  *(v8 + v10) = a1;

  v21, a2, a3, a4, a5, a6, a7, a8;
}

uint64_t sub_1BD61EF54()
{
  v1[26] = v0;
  v2 = sub_1BE04D214();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B0, &unk_1BE0D6750);
  v1[41] = v5;
  v1[42] = *(v5 - 8);
  v1[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7E0, &unk_1BE0E8DC0);
  v1[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  v1[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  v1[46] = swift_task_alloc();
  v6 = sub_1BE049E74();
  v1[47] = v6;
  v1[48] = *(v6 - 8);
  v1[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0, &unk_1BE0B7DD0);
  v1[50] = swift_task_alloc();
  v7 = sub_1BE049D74();
  v1[51] = v7;
  v1[52] = *(v7 - 8);
  v1[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0, &unk_1BE0E8DD0);
  v1[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC0, &unk_1BE0B7DC0);
  v1[55] = swift_task_alloc();
  v8 = sub_1BE049CC4();
  v1[56] = v8;
  v1[57] = *(v8 - 8);
  v1[58] = swift_task_alloc();
  v9 = sub_1BE049D44();
  v1[59] = v9;
  v1[60] = *(v9 - 8);
  v1[61] = swift_task_alloc();
  v10 = sub_1BE049E54();
  v1[62] = v10;
  v1[63] = *(v10 - 8);
  v1[64] = swift_task_alloc();
  v11 = sub_1BE0495A4();
  v1[65] = v11;
  v1[66] = *(v11 - 8);
  v1[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8, &unk_1BE1091B0);
  v1[70] = swift_task_alloc();
  v12 = sub_1BE049B64();
  v1[71] = v12;
  v1[72] = *(v12 - 8);
  v1[73] = swift_task_alloc();
  v13 = sub_1BE049C24();
  v1[74] = v13;
  v1[75] = *(v13 - 8);
  v1[76] = swift_task_alloc();
  v14 = sub_1BE04AFE4();
  v1[77] = v14;
  v1[78] = *(v14 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = sub_1BE0528A4();
  v1[81] = sub_1BE052894();
  v16 = sub_1BE052844();
  v1[82] = v16;
  v1[83] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1BD61F6C0, v16, v15);
}

uint64_t sub_1BD61F6C0()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[70];
  v30 = v0[77];
  v31 = v0[65];
  v4 = v0[26];
  KeyPath = swift_getKeyPath();
  v0[84] = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel___observationRegistrar;
  v0[13] = v4;
  v0[85] = sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v13 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__accountID;
  swift_beginAccess();
  v14 = *(v2 + 16);
  v0[86] = v14;
  v0[87] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v1, v4 + v13, v30);
  v15 = swift_getKeyPath();
  v0[14] = v4;
  sub_1BE04B594();
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store;
  v0[88] = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store;
  v0[89] = *(v4 + v23);
  v24 = swift_task_alloc();
  v0[90] = v24;
  *(v24 + 16) = v1;
  sub_1BE048964();
  v0[15] = v31;
  sub_1BE04B444();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8, &unk_1BE0DF620);
  (*(*(v25 - 8) + 56))(v3, 0, 1, v25);
  sub_1BE049B54();
  v26 = swift_task_alloc();
  v0[91] = v26;
  *v26 = v0;
  v26[1] = sub_1BD61F964;
  v27 = v0[76];
  v28 = v0[73];

  return MEMORY[0x1EEDC14B8](v27, v28);
}

uint64_t sub_1BD61F964()
{
  v2 = *v1;
  *(*v1 + 736) = v0;

  v3 = v2[89];
  (*(v2[72] + 8))(v2[73], v2[71]);
  v3, v4, v5, v6, v7, v8, v9, v10;
  v11 = v2[83];
  v12 = v2[82];
  if (v0)
  {
    v13 = sub_1BD621F54;
  }

  else
  {
    v13 = sub_1BD61FB08;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, v11);
}

uint64_t sub_1BD61FB08()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = sub_1BE049C14();
  (*(v2 + 8))(v1, v3);
  if (v4[2])
  {
    (*(*(v0 + 528) + 16))(*(v0 + 552), v4 + ((*(*(v0 + 528) + 80) + 32) & ~*(*(v0 + 528) + 80)), *(v0 + 520));
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(v0 + 552);
  v14 = *(v0 + 544);
  v15 = *(v0 + 528);
  v16 = *(v0 + 520);
  v17 = *(v0 + 208);
  v4, v5, v6, v7, v8, v9, v10, v11;
  (*(v15 + 56))(v13, v12, 1, v16);
  sub_1BD61EA7C(v13);
  KeyPath = swift_getKeyPath();
  *(v0 + 128) = v17;
  sub_1BE04B594();
  KeyPath, v19, v20, v21, v22, v23, v24, v25;
  v26 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__account;
  swift_beginAccess();
  sub_1BD0DE19C(v17 + v26, v14, &qword_1EBD498C8, &unk_1BE0DF580);
  if ((*(v15 + 48))(v14, 1, v16) == 1)
  {
    v34 = *(v0 + 632);
    v35 = *(v0 + 624);
    v36 = *(v0 + 616);
    v37 = *(v0 + 544);
    *(v0 + 648), v27, v28, v29, v30, v31, v32, v33;
    sub_1BD0DE53C(v37, &qword_1EBD498C8, &unk_1BE0DF580);
    (*(v35 + 8))(v34, v36);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v69 = *(v0 + 704);
    v41 = *(v0 + 504);
    v40 = *(v0 + 512);
    v42 = *(v0 + 496);
    v43 = *(v0 + 440);
    v44 = *(v0 + 208);
    (*(*(v0 + 528) + 32))(*(v0 + 536), *(v0 + 544), *(v0 + 520));
    sub_1BE049524();
    v45 = sub_1BE049E24();
    v47 = v46;
    (*(v41 + 8))(v40, v42);
    v48 = swift_getKeyPath();
    *(v0 + 136) = v44;
    sub_1BE04B594();
    v48, v49, v50, v51, v52, v53, v54, v55;
    *(v0 + 744) = *(v44 + v69);
    v56 = swift_task_alloc();
    *(v0 + 752) = v56;
    *(v56 + 16) = v45;
    *(v56 + 24) = v47;
    sub_1BE048964();
    v57 = sub_1BE049184();
    *(v0 + 760) = v57;
    *(v0 + 144) = v57;
    sub_1BE04B444();
    v47, v58, v59, v60, v61, v62, v63, v64;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E00, &unk_1BE0B7E60);
    (*(*(v65 - 8) + 56))(v43, 0, 1, v65);
    sub_1BE049CB4();
    v66 = swift_task_alloc();
    *(v0 + 768) = v66;
    *v66 = v0;
    v66[1] = sub_1BD620074;
    v67 = *(v0 + 488);
    v68 = *(v0 + 464);

    return MEMORY[0x1EEDC14C8](v67, v68);
  }
}

uint64_t sub_1BD620074()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  v3 = v2[93];
  (*(v2[57] + 8))(v2[58], v2[56]);
  v3, v4, v5, v6, v7, v8, v9, v10;
  v11 = v2[83];
  v12 = v2[82];
  if (v0)
  {
    v13 = sub_1BD622258;
  }

  else
  {
    v13 = sub_1BD620218;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, v11);
}

uint64_t sub_1BD620218(uint64_t a1)
{
  v3 = v1[60];
  v2 = v1[61];
  v4 = v1[59];
  v5 = sub_1BE049D34();
  (*(v3 + 8))(v2, v4);
  v13 = v1[95];
  if (v5[2])
  {
    v14 = *(v13 - 8);
    (*(v14 + 16))(v1[54], v5 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
    v5, v15, v16, v17, v18, v19, v20, v21;
    v22 = 0;
  }

  else
  {
    v5, v6, v7, v8, v9, v10, v11, v12;
    v14 = *(v13 - 8);
    v22 = 1;
  }

  v23 = v1[88];
  v24 = v1[54];
  v25 = v1[50];
  v26 = v1[31];
  v41 = v1[30];
  v27 = v1[26];
  (*(v14 + 56))(v24, v22, 1, v1[95]);
  sub_1BD61E68C(v24);
  KeyPath = swift_getKeyPath();
  v1[19] = v27;
  sub_1BE04B594();
  KeyPath, v29, v30, v31, v32, v33, v34, v35;
  v1[98] = *(v27 + v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8, &unk_1BE0DF590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0, &qword_1BE0B7DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B6CA0;
  swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_1BE048964();
  sub_1BE04A4F4();
  swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD38DE8, MEMORY[0x1E69695A8], MEMORY[0x1E69695C0]);
  sub_1BE04A4F4();
  sub_1BD623104(v25);
  (*(v26 + 56))(v25, 0, 1, v41);
  v36 = sub_1BE049CE4();
  v37 = MEMORY[0x1E6967BC8];
  v1[5] = v36;
  v1[6] = v37;
  __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  sub_1BE049CD4();
  v38 = swift_task_alloc();
  v1[99] = v38;
  *v38 = v1;
  v38[1] = sub_1BD620600;
  v39 = v1[53];

  return MEMORY[0x1EEDC14D8](v39, v1 + 2);
}

uint64_t sub_1BD620600()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  *(v2 + 784), v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v17 = *(v2 + 664);
    v18 = *(v2 + 656);
    v19 = sub_1BD62258C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16), v10, v11, v12, v13, v14, v15, v16);
    v17 = *(v2 + 664);
    v18 = *(v2 + 656);
    v19 = sub_1BD620734;
  }

  return MEMORY[0x1EEE6DFA0](v19, v18, v17);
}

uint64_t sub_1BD620734(uint64_t a1)
{
  v73 = v1[100];
  v69 = v1[88];
  v70 = v1[86];
  v68 = v1[79];
  v2 = v1[78];
  v3 = v1[77];
  v4 = v1[46];
  v5 = v1[26];
  v6 = sub_1BE049D54();
  sub_1BD61EDE4(v6, v7, v8, v9, v10, v11, v12, v13);
  KeyPath = swift_getKeyPath();
  v1[20] = v5;
  sub_1BE04B594();
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v22 = *(v5 + v69);
  v70(v4, v68, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  sub_1BE048964();
  sub_1BE049D64();
  v23 = sub_1BE048FD4();
  if (v73)
  {
    v31 = v1[81];
    v72 = v1[67];
    v32 = v1[66];
    v71 = v1[65];
    v33 = v1[52];
    v34 = v1[53];
    v35 = v1[51];
    v36 = v1[45];
    v37 = v1[46];
    v22, v24, v25, v26, v27, v28, v29, v30;
    v31, v38, v39, v40, v41, v42, v43, v44;
    sub_1BD0DE53C(v36, &qword_1EBD3F788, &unk_1BE0E2970);
    sub_1BD0DE53C(v37, &qword_1EBD39980, &qword_1BE0BF3C0);
    (*(v33 + 8))(v34, v35);
    (*(v32 + 8))(v72, v71);

    (*(v1[78] + 8))(v1[79], v1[77]);
    sub_1BE04D114();
    v45 = v73;
    v46 = sub_1BE04D204();
    v47 = sub_1BE052C54();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v73;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_1BD026000, v46, v47, "Failed to load/observe transactions in category view model with error: %@", v48, 0xCu);
      sub_1BD0DE53C(v49, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v49, -1, -1);
      MEMORY[0x1BFB45F20](v48, -1, -1);
    }

    else
    {
    }

    (*(v1[28] + 8))(v1[29], v1[27]);

    v66 = v1[1];

    return v66();
  }

  else
  {
    v52 = v23;
    v54 = v1[45];
    v53 = v1[46];
    v22, v24, v25, v26, v27, v28, v29, v30;
    sub_1BD0DE53C(v54, &qword_1EBD3F788, &unk_1BE0E2970);
    sub_1BD0DE53C(v53, &qword_1EBD39980, &qword_1BE0BF3C0);
    sub_1BE049E64();
    v52, v55, v56, v57, v58, v59, v60, v61;
    v1[101] = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions;
    v1[102] = sub_1BE052894();
    v62 = sub_1BD626BFC(&qword_1EBD3F7E8, MEMORY[0x1E6967C80], MEMORY[0x1E6967C88]);
    v63 = swift_task_alloc();
    v1[103] = v63;
    *v63 = v1;
    v63[1] = sub_1BD620CF4;
    v64 = v1[47];
    v65 = v1[44];

    return MEMORY[0x1EEE6D8C8](v65, v64, v62);
  }
}

uint64_t sub_1BD620CF4()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  v3 = *(v2 + 816);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1BE052844();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1BD621B3C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1BE052844();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1BD620E8C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1BD620E8C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 816), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 664);
  v10 = *(v8 + 656);

  return MEMORY[0x1EEE6DFA0](sub_1BD620EF4, v10, v9);
}

uint64_t sub_1BD620EF4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v20 = *(v0 + 808);
    v21 = *(v0 + 208);
    (*(v3 + 32))(*(v0 + 344), v1, v2);
    KeyPath = swift_getKeyPath();
    *(v0 + 184) = v21;
    sub_1BE04B594();
    KeyPath, v23, v24, v25, v26, v27, v28, v29;
    v30 = MEMORY[0x1E69E7CC0];
    if (*(v21 + v20))
    {
      v30 = *(v21 + v20);
    }

    *(v0 + 176) = v30;
    sub_1BE048C84();
    v31 = sub_1BE0490E4();
    v227 = v31[2];
    if (v227)
    {
      v39 = *(v0 + 832);
      v41 = *(v0 + 312);
      v40 = *(v0 + 320);
      v42 = *(v0 + 272);
      v43 = *(v0 + 280);
      v44 = *(v0 + 264);
      v45 = *(v43 + 16);
      v229 = v31;
      v45(v40, v31 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v42);
      sub_1BD623104(v44);
      v45(v41, v40, v42);
      *(v0 + 192) = v41;
      v46 = v39;
      v47 = sub_1BE04B434();
      if (v39)
      {
        v223 = *(v0 + 536);
        v55 = *(v0 + 528);
        v56 = *(v0 + 416);
        v211 = *(v0 + 408);
        v213 = *(v0 + 424);
        v57 = *(v0 + 384);
        v207 = *(v0 + 376);
        v209 = *(v0 + 392);
        v58 = *(v0 + 336);
        v203 = *(v0 + 328);
        v205 = *(v0 + 344);
        v201 = *(v0 + 320);
        v215 = *(v0 + 312);
        v219 = *(v0 + 520);
        v59 = *(v0 + 280);
        v199 = *(v0 + 272);
        v60 = *(v0 + 264);
        v61 = *(v0 + 240);
        v62 = *(v0 + 248);
        *(v0 + 648), v48, v49, v50, v51, v52, v53, v54;
        v229, v63, v64, v65, v66, v67, v68, v69;
        (*(v62 + 8))(v60, v61);
        v70 = *(v59 + 8);
        v70(v201, v199);
        (*(v58 + 8))(v205, v203);
        (*(v57 + 8))(v209, v207);
        (*(v56 + 8))(v213, v211);
        (*(v55 + 8))(v223, v219);
        *(v0 + 176), v71, v72, v73, v74, v75, v76, v77;
        v70(v215, v199);
LABEL_45:

        (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
        sub_1BE04D114();
        v189 = v46;
        v190 = sub_1BE04D204();
        v191 = sub_1BE052C54();

        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          *v192 = 138412290;
          v194 = v46;
          v195 = _swift_stdlib_bridgeErrorToNSError();
          *(v192 + 4) = v195;
          *v193 = v195;
          _os_log_impl(&dword_1BD026000, v190, v191, "Failed to load/observe transactions in category view model with error: %@", v192, 0xCu);
          sub_1BD0DE53C(v193, &unk_1EBD3E590, &unk_1BE0B7E50);
          MEMORY[0x1BFB45F20](v193, -1, -1);
          MEMORY[0x1BFB45F20](v192, -1, -1);
        }

        else
        {
        }

        (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
        goto LABEL_49;
      }

      v78 = *(v0 + 312);
      v79 = *(v0 + 272);
      v80 = *(v0 + 280);
      v81 = v47;
      (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
      v82 = *(v80 + 8);
      v82(v78, v79);
      if (v81)
      {
        sub_1BD62A0B0(*(v0 + 320), (v0 + 176));
      }

      v82(*(v0 + 320), *(v0 + 272));
      if (v227 == 1)
      {
        v46 = 0;
        v31 = v229;
      }

      else
      {
        v83 = 1;
        v31 = v229;
        do
        {
          if (v83 >= v31[2])
          {
            goto LABEL_53;
          }

          v85 = *(v0 + 312);
          v84 = *(v0 + 320);
          v86 = *(v0 + 272);
          v87 = *(v0 + 280);
          v88 = *(v0 + 264);
          v89 = *(v87 + 16);
          v89(v84, v31 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v83, v86);
          sub_1BD623104(v88);
          v89(v85, v84, v86);
          *(v0 + 192) = v85;
          v90 = sub_1BE04B434();
          v91 = *(v0 + 312);
          v92 = *(v0 + 272);
          v93 = *(v0 + 280);
          (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
          v94 = *(v93 + 8);
          v94(v91, v92);
          if (v90)
          {
            sub_1BD62A0B0(*(v0 + 320), (v0 + 176));
          }

          ++v83;
          v94(*(v0 + 320), *(v0 + 272));
          v31 = v229;
        }

        while (v227 != v83);
        v46 = 0;
      }
    }

    else
    {
      v46 = *(v0 + 832);
    }

    v31, v32, v33, v34, v35, v36, v37, v38;
    v31 = sub_1BE0490D4();
    v216 = v31[2];
    if (v216)
    {
      v100 = 0;
      v214 = v31;
      while (1)
      {
        if (v100 >= v31[2])
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v103 = *(v0 + 304);
        v105 = *(v0 + 272);
        v104 = *(v0 + 280);
        v224 = *(v0 + 256);
        v228 = *(v0 + 296);
        v106 = *(v104 + 16);
        v106(v103, v31 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v100, v105);
        v107 = *(v0 + 176);
        v108 = swift_task_alloc();
        *(v108 + 16) = v103;
        v212 = v107;
        v220 = sub_1BD619C58(sub_1BD62A3DC, v108, v107, MEMORY[0x1E6967A40]);
        v110 = v109;

        sub_1BD623104(v224);
        v106(v228, v103, v105);
        *(v0 + 200) = v228;
        v111 = sub_1BE04B434();
        if (v46)
        {
          v225 = *(v0 + 536);
          v166 = *(v0 + 528);
          v221 = *(v0 + 520);
          v167 = *(v0 + 416);
          v206 = *(v0 + 408);
          v208 = *(v0 + 424);
          v168 = *(v0 + 384);
          v202 = *(v0 + 376);
          v204 = *(v0 + 392);
          v169 = *(v0 + 336);
          v198 = *(v0 + 328);
          v200 = *(v0 + 344);
          v230 = *(v0 + 304);
          v217 = *(v0 + 296);
          v170 = *(v0 + 280);
          v210 = *(v0 + 272);
          v172 = *(v0 + 248);
          v171 = *(v0 + 256);
          v173 = *(v0 + 240);
          *(v0 + 648), v112, v113, v114, v115, v116, v117, v118;
          v214, v174, v175, v176, v177, v178, v179, v180;
          (*(v172 + 8))(v171, v173);
          (*(v169 + 8))(v200, v198);
          (*(v168 + 8))(v204, v202);
          (*(v167 + 8))(v208, v206);
          (*(v166 + 8))(v225, v221);
          v212, v181, v182, v183, v184, v185, v186, v187;
          v188 = *(v170 + 8);
          v188(v217, v210);
          v188(v230, v210);
          goto LABEL_45;
        }

        v119 = v111;
        v120 = *(v0 + 296);
        v121 = *(v0 + 272);
        v122 = *(v0 + 280);
        (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
        v123 = *(v122 + 8);
        v123(v120, v121);
        if (v119)
        {
          break;
        }

        v124 = *(v0 + 272);
        if ((v110 & 1) == 0)
        {
          v125 = *(v0 + 288);
          sub_1BD3B37CC(v220, v125);
          v123(v125, v124);
LABEL_30:
          v101 = *(v0 + 304);
LABEL_31:
          v102 = *(v0 + 272);
          goto LABEL_22;
        }

        v101 = *(v0 + 304);
        v102 = *(v0 + 272);
LABEL_22:
        v123(v101, v102);
        v46 = 0;
        ++v100;
        v31 = v214;
        if (v216 == v100)
        {
          goto LABEL_32;
        }
      }

      v101 = *(v0 + 304);
      if (v110)
      {
        sub_1BD62A0B0(v101, (v0 + 176));
        goto LABEL_30;
      }

      goto LABEL_31;
    }

LABEL_32:
    v31, v32, v33, v95, v96, v97, v98, v99;
    v126 = sub_1BE0490C4();
    v127 = sub_1BD537330(v126);
    v126, v128, v129, v130, v131, v132, v133, v134;
    sub_1BE048C84();
    v135 = sub_1BD62A3FC((v0 + 176), v127);
    v127, v136, v137, v138, v139, v140, v141, v142;
    v143 = *(v0 + 176);
    v144 = v143[2];
    if (v135 > v144)
    {
      goto LABEL_54;
    }

    if (v135 < 0)
    {
LABEL_55:
      __break(1u);
    }

    else if (!__OFADD__(v144, v135 - v144))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v135 > v143[3] >> 1)
      {
        if (v144 <= v135)
        {
          v146 = v135;
        }

        else
        {
          v146 = v144;
        }

        v143 = sub_1BD1D825C(isUniquelyReferenced_nonNull_native, v146, 1, v143);
        *(v0 + 176) = v143;
      }

      v148 = *(v0 + 336);
      v147 = *(v0 + 344);
      v149 = *(v0 + 328);
      sub_1BD1DDE18(v135, v144, 0);
      v127, v150, v151, v152, v153, v154, v155, v156;
      sub_1BD61EDE4(v143, v157, v158, v159, v160, v161, v162, v163);
      (*(v148 + 8))(v147, v149);
      *(v0 + 816) = sub_1BE052894();
      v164 = sub_1BD626BFC(&qword_1EBD3F7E8, MEMORY[0x1E6967C80], MEMORY[0x1E6967C88]);
      v165 = swift_task_alloc();
      *(v0 + 824) = v165;
      *v165 = v0;
      v165[1] = sub_1BD620CF4;
      v32 = *(v0 + 376);
      v31 = *(v0 + 352);
      v33 = v164;

      return MEMORY[0x1EEE6D8C8](v31, v32, v33);
    }

    __break(1u);
    return MEMORY[0x1EEE6D8C8](v31, v32, v33);
  }

  v226 = *(v0 + 632);
  v11 = *(v0 + 624);
  v222 = *(v0 + 616);
  v218 = *(v0 + 536);
  v12 = *(v0 + 528);
  v13 = *(v0 + 520);
  v14 = *(v0 + 416);
  v15 = *(v0 + 424);
  v16 = *(v0 + 408);
  v17 = *(v0 + 384);
  v18 = *(v0 + 392);
  v19 = *(v0 + 376);
  *(v0 + 648), v4, v5, v6, v7, v8, v9, v10;
  (*(v17 + 8))(v18, v19);
  (*(v14 + 8))(v15, v16);
  (*(v12 + 8))(v218, v13);
  (*(v11 + 8))(v226, v222);

LABEL_49:

  v196 = *(v0 + 8);

  return v196();
}

uint64_t sub_1BD621B3C()
{
  v1 = v0[102];
  v0[21] = v0[104];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  swift_willThrowTypedImpl();
  v1, v2, v3, v4, v5, v6, v7, v8;
  v9 = v0[83];
  v10 = v0[82];

  return MEMORY[0x1EEE6DFA0](sub_1BD621BDC, v10, v9);
}

uint64_t sub_1BD621BDC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 536);
  v10 = *(v8 + 528);
  v11 = *(v8 + 520);
  v13 = *(v8 + 416);
  v12 = *(v8 + 424);
  v14 = *(v8 + 408);
  v15 = *(v8 + 384);
  v16 = *(v8 + 392);
  v17 = *(v8 + 376);
  *(v8 + 648), a2, a3, a4, a5, a6, a7, a8;
  (*(v15 + 8))(v16, v17);
  (*(v13 + 8))(v12, v14);
  (*(v10 + 8))(v9, v11);

  v18 = *(v8 + 832);
  (*(*(v8 + 624) + 8))(*(v8 + 632), *(v8 + 616));
  sub_1BE04D114();
  v19 = v18;
  v20 = sub_1BE04D204();
  v21 = sub_1BE052C54();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = v18;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_1BD026000, v20, v21, "Failed to load/observe transactions in category view model with error: %@", v22, 0xCu);
    sub_1BD0DE53C(v23, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v23, -1, -1);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 224) + 8))(*(v8 + 232), *(v8 + 216));

  v26 = *(v8 + 8);

  return v26();
}

uint64_t sub_1BD621F54(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 648), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 736);
  (*(*(v8 + 624) + 8))(*(v8 + 632), *(v8 + 616));
  sub_1BE04D114();
  v10 = v9;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1BD026000, v11, v12, "Failed to load/observe transactions in category view model with error: %@", v13, 0xCu);
    sub_1BD0DE53C(v14, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v14, -1, -1);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 224) + 8))(*(v8 + 232), *(v8 + 216));

  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BD622258(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 536);
  v10 = *(v8 + 528);
  v11 = *(v8 + 520);
  *(v8 + 648), a2, a3, a4, a5, a6, a7, a8;
  (*(v10 + 8))(v9, v11);

  v12 = *(v8 + 776);
  (*(*(v8 + 624) + 8))(*(v8 + 632), *(v8 + 616));
  sub_1BE04D114();
  v13 = v12;
  v14 = sub_1BE04D204();
  v15 = sub_1BE052C54();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v12;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_1BD026000, v14, v15, "Failed to load/observe transactions in category view model with error: %@", v16, 0xCu);
    sub_1BD0DE53C(v17, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v17, -1, -1);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 224) + 8))(*(v8 + 232), *(v8 + 216));

  v20 = *(v8 + 8);

  return v20();
}

uint64_t sub_1BD62258C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 536);
  v10 = *(v8 + 528);
  v11 = *(v8 + 520);
  *(v8 + 648), a2, a3, a4, a5, a6, a7, a8;
  (*(v10 + 8))(v9, v11);
  __swift_destroy_boxed_opaque_existential_0((v8 + 16), v12, v13, v14, v15, v16, v17, v18);

  v19 = *(v8 + 800);
  (*(*(v8 + 624) + 8))(*(v8 + 632), *(v8 + 616));
  sub_1BE04D114();
  v20 = v19;
  v21 = sub_1BE04D204();
  v22 = sub_1BE052C54();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v19;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_1BD026000, v21, v22, "Failed to load/observe transactions in category view model with error: %@", v23, 0xCu);
    sub_1BD0DE53C(v24, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v24, -1, -1);
    MEMORY[0x1BFB45F20](v23, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 224) + 8))(*(v8 + 232), *(v8 + 216));

  v27 = *(v8 + 8);

  return v27();
}

uint64_t sub_1BD6228C8@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828, &unk_1BE0E8C00);
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70, &unk_1BE0F4300);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E78, &qword_1BE0B7ED0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70, &unk_1BE0F4300, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  (*(v9 + 8))(v11, v8);
  sub_1BE04AFE4();
  sub_1BE04A7B4();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D830, &qword_1BE0E8F08);
  a3[4] = sub_1BD62A9C0();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1BD0DE4F4(&qword_1EBD38ED0, &qword_1EBD38E78, &qword_1BE0B7ED0, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828, &unk_1BE0E8C00, MEMORY[0x1E6968D20]);
  sub_1BD626BFC(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v24 = v27;
  sub_1BE04A714();
  (*(v28 + 8))(v7, v24);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1BD622C64@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E08, &unk_1BE109160);
  v6 = *(v5 - 8);
  v29 = v5;
  v30 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E10, &unk_1BE0B7E70);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E18, &qword_1BE109170);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  sub_1BD0DE4F4(&qword_1EBD38E20, &qword_1EBD38E10, &unk_1BE0B7E70, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  (*(v10 + 8))(v12, v9);
  v31 = v27;
  v32 = v28;
  sub_1BE04A7B4();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E28, &unk_1BE0B7EB0);
  a4[4] = sub_1BD0F9CDC();
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_1BD0DE4F4(&qword_1EBD38E50, &qword_1EBD38E18, &qword_1BE109170, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD38E58, &qword_1EBD38E08, &unk_1BE109160, MEMORY[0x1E6968D20]);
  v25 = v29;
  sub_1BE04A714();
  (*(v30 + 8))(v8, v25);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1BD622FD0()
{
  v0 = sub_1BE04AFE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - v5;
  sub_1BE049A14();
  sub_1BE049A14();
  v7 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1BD623104@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v3 = sub_1BE049904();
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = &v72 - v6;
  v7 = sub_1BE049B04();
  v73 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04AFE4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v86 = v2;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v22 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__accountID;
  swift_beginAccess();
  v74 = v13;
  v75 = v11;
  v23 = *(v11 + 16);
  v76 = v10;
  v24 = v10;
  v25 = v73;
  v23(v13, v2 + v22, v24);
  v26 = swift_getKeyPath();
  v85 = v2;
  sub_1BE04B594();
  v26, v27, v28, v29, v30, v31, v32, v33;
  v34 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  swift_beginAccess();
  v35 = *(v25 + 16);
  v77 = v7;
  v35(v9, v2 + v34, v7);
  v36 = swift_getKeyPath();
  v84 = v2;
  sub_1BE04B594();
  v36, v37, v38, v39, v40, v41, v42, v43;
  v44 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__range;
  swift_beginAccess();
  sub_1BD0DE19C(v2 + v44, v79, &qword_1EBD38DB8, &unk_1BE0BD340);
  (*(v81 + 104))(v80, *MEMORY[0x1E6967980], v82);
  LOBYTE(v44) = sub_1BE049AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D610, &unk_1BE0E8B88);
  v45 = sub_1BE049B44();
  v46 = *(v45 - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v49 = swift_allocObject();
  if (v44)
  {
    *(v49 + 16) = xmmword_1BE0B69E0;
    (*(v46 + 104))(v49 + v48, *MEMORY[0x1E6967B10], v45);
    v50 = sub_1BD5374CC(v49);
    swift_setDeallocating();
    (*(v46 + 8))(v49 + v48, v45);
  }

  else
  {
    *(v49 + 16) = xmmword_1BE0B6CA0;
    v51 = *(v46 + 104);
    v51(v49 + v48, *MEMORY[0x1E6967B18], v45);
    v51(v49 + v48 + v47, *MEMORY[0x1E6967B10], v45);
    v50 = sub_1BD5374CC(v49);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  v52 = sub_1BE049AD4();
  MEMORY[0x1EEE9AC00](v52);
  v53 = v74;
  *(&v72 - 6) = v74;
  *(&v72 - 5) = v50;
  v55 = v79;
  v54 = v80;
  *(&v72 - 4) = v56;
  *(&v72 - 3) = v54;
  *(&v72 - 2) = v55;
  v83 = sub_1BE049A94();
  sub_1BE04B444();
  v52, v57, v58, v59, v60, v61, v62, v63;
  v50, v64, v65, v66, v67, v68, v69, v70;
  (*(v25 + 8))(v9, v77);
  (*(v81 + 8))(v54, v82);
  sub_1BD0DE53C(v55, &qword_1EBD38DB8, &unk_1BE0BD340);
  return (*(v75 + 8))(v53, v76);
}

uint64_t sub_1BD62373C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, void, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v259 = a6;
  v242 = a5;
  v261 = a4;
  v219 = a3;
  v270 = a2;
  v246 = a7;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE0, &unk_1BE0B7F40);
  v248 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v245 = &v194 - v8;
  v258 = sub_1BE04A7A4();
  v265 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v256 = &v194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D618, &qword_1BE0E8B98);
  v262 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v253 = &v194 - v10;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D620, &unk_1BE0E8BA0);
  v266 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v238 = &v194 - v11;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A38, &qword_1BE0DF8F8);
  v263 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v241 = &v194 - v12;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D628, &qword_1BE0E8BB0);
  v264 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v243 = &v194 - v13;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D630, &qword_1BE0E8BB8);
  v237 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v229 = &v194 - v14;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D638, &qword_1BE0E8BC0);
  v233 = *(v232 - 1);
  MEMORY[0x1EEE9AC00](v232);
  v226 = &v194 - v15;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D640, &qword_1BE0E8BC8);
  v235 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v228 = &v194 - v16;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D648, &qword_1BE0E8BD0);
  v223 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v215 = &v194 - v17;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D650, &qword_1BE0E8BD8);
  v218 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v212 = &v194 - v18;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D658, &unk_1BE0E8BE0);
  v221 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v216 = &v194 - v19;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D660, &qword_1BE110000);
  v209 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v202 = &v194 - v20;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D668, &qword_1BE0E8BF0);
  v205 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v199 = &v194 - v21;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D670, &qword_1BE0E8BF8);
  v207 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v203 = &v194 - v22;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828, &unk_1BE0E8C00);
  v198 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v24 = &v194 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8, &qword_1BE0DF8F0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v194 - v27;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0, &qword_1BE0B7F50);
  v196 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v30 = &v194 - v29;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F830, &qword_1BE0E29F0);
  v201 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v194 = &v194 - v31;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D678, &qword_1BE0E8C10);
  v211 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v249 = &v194 - v32;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D680, &qword_1BE0E8C18);
  v214 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v250 = &v194 - v33;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D688, &qword_1BE0E8C20);
  v225 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v251 = &v194 - v34;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D690, &qword_1BE0E8C28);
  v231 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v252 = &v194 - v35;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D698, &qword_1BE0E8C30);
  v240 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v227 = &v194 - v36;
  v269 = *a1;
  v37 = v28;
  v38 = v25;
  v272 = sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v40, v41, v42, v43, v44, v45, v46;
  v47 = *(v26 + 8);
  v271 = v26 + 8;
  v273 = v47;
  v47(v37, v25);
  sub_1BE04AFE4();
  v48 = v24;
  sub_1BE04A7B4();
  v49 = MEMORY[0x1E6968D58];
  v270 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0, &qword_1BE0B7F50, MEMORY[0x1E6968D58]);
  v50 = MEMORY[0x1E6968D20];
  v260 = MEMORY[0x1E6968D20];
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828, &unk_1BE0E8C00, MEMORY[0x1E6968D20]);
  sub_1BD626BFC(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v51 = v195;
  v52 = v197;
  sub_1BE04A714();
  (*(v198 + 8))(v48, v52);
  (*(v196 + 8))(v30, v51);
  v274 = v219;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D6A0, &qword_1BE0E8C68);
  v53 = v199;
  sub_1BE04A7B4();
  v267 = v37;
  v268 = v38;
  sub_1BE04A7C4();
  v54 = swift_getKeyPath();
  v55 = v202;
  sub_1BE04A724();
  v54, v56, v57, v58, v59, v60, v61, v62;
  v273(v37, v38);
  sub_1BD0DE4F4(&qword_1EBD4D6A8, &qword_1EBD4D668, &qword_1BE0E8BF0, v50);
  sub_1BD0DE4F4(&qword_1EBD4D6B0, &qword_1EBD4D660, &qword_1BE110000, v49);
  v63 = MEMORY[0x1E69E6508];
  sub_1BD0DE4F4(&qword_1EBD4D6B8, &qword_1EBD4D6A0, &qword_1BE0E8C68, MEMORY[0x1E69E6508]);
  sub_1BD626BFC(&qword_1EBD40690, MEMORY[0x1E6967B20], MEMORY[0x1E6967B38]);
  v64 = v203;
  v65 = v204;
  v66 = v208;
  sub_1BE04A754();
  (*(v209 + 8))(v55, v66);
  (*(v205 + 8))(v53, v65);
  sub_1BD0DE4F4(&qword_1EBD3F858, &qword_1EBD3F830, &qword_1BE0E29F0, MEMORY[0x1E6968D08]);
  v219 = MEMORY[0x1E6968C08];
  sub_1BD0DE4F4(&qword_1EBD4D6C0, &qword_1EBD4D670, &qword_1BE0E8BF8, MEMORY[0x1E6968C08]);
  v67 = v194;
  v68 = v200;
  v69 = v206;
  sub_1BE04A784();
  (*(v207 + 8))(v64, v69);
  (*(v201 + 8))(v67, v68);
  v274 = v261;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D6C8, &qword_1BE0E8CA0);
  v70 = v212;
  sub_1BE04A7B4();
  v72 = v267;
  v71 = v268;
  sub_1BE04A7C4();
  v73 = swift_getKeyPath();
  v74 = v215;
  sub_1BE04A724();
  v73, v75, v76, v77, v78, v79, v80, v81;
  v273(v72, v71);
  sub_1BD0DE4F4(&qword_1EBD4D6D0, &qword_1EBD4D650, &qword_1BE0E8BD8, v260);
  sub_1BD0DE4F4(&qword_1EBD4D6D8, &qword_1EBD4D648, &qword_1BE0E8BD0, v270);
  sub_1BD0DE4F4(&qword_1EBD4D6E0, &qword_1EBD4D6C8, &qword_1BE0E8CA0, v63);
  sub_1BD626BFC(&qword_1EBD3A340, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AE8]);
  v82 = v216;
  v83 = v217;
  v84 = v222;
  sub_1BE04A754();
  (*(v223 + 8))(v74, v84);
  (*(v218 + 8))(v70, v83);
  v261 = MEMORY[0x1E6968B68];
  sub_1BD0DE4F4(&qword_1EBD4D6E8, &qword_1EBD4D678, &qword_1BE0E8C10, MEMORY[0x1E6968B68]);
  sub_1BD0DE4F4(&qword_1EBD4D6F0, &qword_1EBD4D658, &unk_1BE0E8BE0, v219);
  v85 = v249;
  v86 = v210;
  v87 = v220;
  sub_1BE04A784();
  (*(v221 + 8))(v82, v87);
  (*(v211 + 8))(v85, v86);
  v89 = v267;
  v88 = v268;
  sub_1BE04A7C4();
  v90 = swift_getKeyPath();
  v91 = v226;
  sub_1BE04A724();
  v90, v92, v93, v94, v95, v96, v97, v98;
  v273(v89, v88);
  sub_1BE049904();
  v99 = v229;
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD4D6F8, &qword_1EBD4D638, &qword_1BE0E8BC0, v270);
  sub_1BD0DE4F4(&qword_1EBD4D700, &qword_1EBD4D630, &qword_1BE0E8BB8, v260);
  sub_1BD626BFC(&qword_1EBD3F7A0, MEMORY[0x1E6967988], MEMORY[0x1E6967998]);
  v100 = v228;
  v101 = v99;
  v102 = v232;
  v103 = v236;
  sub_1BE04A744();
  (*(v237 + 8))(v101, v103);
  (*(v233 + 1))(v91, v102);
  sub_1BD0DE4F4(&qword_1EBD4D708, &qword_1EBD4D680, &qword_1BE0E8C18, v261);
  sub_1BD0DE4F4(&qword_1EBD4D710, &qword_1EBD4D640, &qword_1BE0E8BC8, MEMORY[0x1E6968D90]);
  v104 = v250;
  v105 = v213;
  v106 = v234;
  sub_1BE04A784();
  (*(v235 + 8))(v100, v106);
  (*(v214 + 8))(v104, v105);
  v107 = v89;
  v108 = v268;
  sub_1BE04A7C4();
  v109 = swift_getKeyPath();
  v110 = v241;
  sub_1BE04A724();
  v109, v111, v112, v113, v114, v115, v116, v117;
  v273(v107, v108);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v118 = v253;
  sub_1BE04A7B4();
  v119 = swift_getKeyPath();
  v260 = sub_1BD0DE4F4(&qword_1EBD4D718, &qword_1EBD4D618, &qword_1BE0E8B98, v260);
  v120 = v238;
  v121 = v254;
  sub_1BE04A724();
  v119, v122, v123, v124, v125, v126, v127, v128;
  v129 = *(v262 + 8);
  v262 += 8;
  v249 = v129;
  (v129)(v118, v121);
  v130 = *MEMORY[0x1E6968C38];
  v131 = v265;
  v132 = *(v265 + 104);
  v237 = v265 + 104;
  v242 = v132;
  v133 = v256;
  v134 = v258;
  v132(v256, v130, v258);
  v135 = v270;
  v236 = sub_1BD0DE4F4(&qword_1EBD49A48, &qword_1EBD49A38, &qword_1BE0DF8F8, v270);
  v235 = sub_1BD0DE4F4(&qword_1EBD4D720, &qword_1EBD4D620, &unk_1BE0E8BA0, v135);
  v234 = sub_1BD626BFC(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v136 = v243;
  v137 = v255;
  v138 = v257;
  sub_1BE04A774();
  v139 = *(v131 + 8);
  v265 = v131 + 8;
  v233 = v139;
  v139(v133, v134);
  v140 = *(v266 + 8);
  v266 += 8;
  v232 = v140;
  v141 = v120;
  (v140)(v120, v138);
  v142 = *(v263 + 8);
  v263 += 8;
  v143 = v110;
  v142(v110, v137);
  sub_1BD0DE4F4(&qword_1EBD4D728, &qword_1EBD4D688, &qword_1BE0E8C20, v261);
  v229 = sub_1BD0DE4F4(&qword_1EBD4D730, &qword_1EBD4D628, &qword_1BE0E8BB0, MEMORY[0x1E6968AF0]);
  v144 = v251;
  v145 = v224;
  v146 = v244;
  sub_1BE04A784();
  v147 = *(v264 + 8);
  v264 += 8;
  v228 = v147;
  v148 = v136;
  (v147)(v136, v146);
  (*(v225 + 8))(v144, v145);
  v149 = v267;
  v150 = v268;
  sub_1BE04A7C4();
  v151 = swift_getKeyPath();
  sub_1BE04A724();
  v151, v152, v153, v154, v155, v156, v157, v158;
  v273(v149, v150);
  v159 = v253;
  sub_1BE04A7B4();
  v160 = swift_getKeyPath();
  v161 = v141;
  v162 = v254;
  sub_1BE04A724();
  v160, v163, v164, v165, v166, v167, v168, v169;
  (v249)(v159, v162);
  v170 = v256;
  v171 = v258;
  v242(v256, *MEMORY[0x1E6968C40], v258);
  v172 = v255;
  v173 = v257;
  sub_1BE04A774();
  v233(v170, v171);
  (v232)(v161, v173);
  v142(v143, v172);
  v174 = v261;
  sub_1BD0DE4F4(&qword_1EBD4D738, &qword_1EBD4D690, &qword_1BE0E8C28, v261);
  v175 = v227;
  v176 = v252;
  v177 = v230;
  sub_1BE04A784();
  (v228)(v148, v146);
  (*(v231 + 8))(v176, v177);
  v178 = v267;
  sub_1BE04A7C4();
  v179 = swift_getKeyPath();
  v180 = v245;
  sub_1BE04A724();
  v179, v181, v182, v183, v184, v185, v186, v187;
  v273(v178, v150);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D740, &qword_1BE0E8DA8);
  v189 = v246;
  v246[3] = v188;
  v189[4] = sub_1BD628D28();
  __swift_allocate_boxed_opaque_existential_1(v189);
  sub_1BD0DE4F4(&qword_1EBD4D828, &qword_1EBD4D698, &qword_1BE0E8C30, v174);
  sub_1BD0DE4F4(qword_1EBD38F90, &qword_1EBD38EE0, &unk_1BE0B7F40, v270);
  v190 = v175;
  v191 = v239;
  v192 = v247;
  sub_1BE04A784();
  (*(v248 + 8))(v180, v192);
  return (*(v240 + 8))(v190, v191);
}

uint64_t sub_1BD6255CC(uint64_t a1, double a2)
{
  v3 = sub_1BE049904();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BE049A44();
}

void sub_1BD625694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v153 = a2;
  v136 = a1;
  v127 = sub_1BE04AF64();
  v134 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v5 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1BE04B0F4();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0493F4();
  v135 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v145 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v119 - v10;
  v11 = sub_1BE049A94();
  v12 = *(v11 - 8);
  v147 = v11;
  v148 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v146 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE049B04();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v119 - v19;
  KeyPath = swift_getKeyPath();
  v22 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel___observationRegistrar;
  v156 = v3;
  v23 = sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  v138 = v22;
  v139 = v23;
  sub_1BE04B594();
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v31 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  swift_beginAccess();
  v32 = *(v15 + 16);
  v130 = v15 + 16;
  v129 = v32;
  v32(v20, v3 + v31, v14);
  (*(v15 + 104))(v17, *MEMORY[0x1E6967AC0], v14);
  sub_1BD626BFC(&qword_1EBD3A340, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AE8]);
  v33 = sub_1BE052334();
  v34 = *(v15 + 8);
  v34(v17, v14);
  v131 = v20;
  v133 = v14;
  v132 = v15 + 8;
  v128 = v34;
  v34(v20, v14);
  if ((v33 & 1) == 0)
  {
    v122 = v31;
    v123 = v5;
    v144 = v7;
    MEMORY[0x1EEE9AC00](0);
    v35 = v136;
    *(&v119 - 2) = v3;
    *(&v119 - 1) = v35;
    v36 = v153;
    sub_1BE048C84();
    sub_1BD1CEA30(sub_1BD628CF8, (&v119 - 4), v36);
    v38 = v37;
    v152 = (MEMORY[0x1BFB403C0](0) >> 48);
    v153 = v39 >> 32;
    v46 = v39 >> 48;
    v47 = v38[2];
    LODWORD(v151) = v40 >> 16;
    if (v47)
    {
      v121 = v3;
      v143 = *(v148 + 16);
      v48 = (*(v148 + 80) + 32) & ~*(v148 + 80);
      v120 = v38;
      v49 = v38 + v48;
      v142 = *(v148 + 72);
      v141 = (v135 + 8);
      v140 = (v148 + 8);
      v51 = v146;
      v50 = v147;
      v148 += 16;
      do
      {
        v150 = v46;
        v151 = v47;
        v143(v51, v49, v50);
        v52 = v145;
        sub_1BE0499A4();
        sub_1BE0493C4();
        v149 = v53;
        (*v141)(v52, v144);
        v51 = v146;
        v50 = v147;
        v152 = (sub_1BE053384() >> 48);
        v153 = HIDWORD(v54);
        v46 = HIWORD(v54);
        v56 = HIWORD(v55);
        (*v140)(v51, v50);
        v49 += v142;
        v47 = v151 - 1;
      }

      while (v151 != 1);
      LODWORD(v151) = v56;
      v120, v57, v58, v59, v60, v61, v62, v63;
      v64 = v134;
      v3 = v121;
    }

    else
    {
      v38, v39, v40, v41, v42, v43, v44, v45;
      v64 = v134;
    }

    sub_1BE049594();
    sub_1BE049404();
    v65 = swift_getKeyPath();
    v155 = v3;
    sub_1BE04B594();
    v65, v66, v67, v68, v69, v70, v71, v72;
    v73 = v131;
    v74 = v133;
    v129(v131, v3 + v122, v133);
    LOBYTE(v65) = sub_1BE049AA4();
    v128(v73, v74);
    if (v65)
    {
      v75 = v124;
      sub_1BE04B054();
      v76 = sub_1BE0493E4();
      v150 = v77;
      v151 = v76;
      (*(v125 + 8))(v75, v126);
      v78 = v123;
    }

    else
    {
      v79 = sub_1BE052404();
      v80 = PKLocalizedPaymentString(v79);

      v78 = v123;
      if (!v80)
      {
        goto LABEL_15;
      }

      sub_1BE052434();
      v82 = v81;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1BE0B69E0;
      v84 = v124;
      sub_1BE04B054();
      v85 = sub_1BE0493E4();
      v87 = v86;
      (*(v125 + 8))(v84, v126);
      *(v83 + 56) = MEMORY[0x1E69E6158];
      *(v83 + 64) = sub_1BD110550();
      *(v83 + 32) = v85;
      *(v83 + 40) = v87;
      v88 = sub_1BE052454();
      v150 = v89;
      v151 = v88;
      v82, v89, v90, v91, v92, v93, v94, v95;
    }

    v96 = swift_getKeyPath();
    v155 = v3;
    sub_1BE04B594();
    v96, v97, v98, v99, v100, v101, v102, v103;
    v104 = v3 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__range;
    swift_beginAccess();
    v152 = *(v64 + 16);
    v105 = v127;
    v152(v78, v104, v127);
    v153 = sub_1BE04AE64();
    v106 = *(v64 + 8);
    v106(v78, v105);
    v107 = swift_getKeyPath();
    v154 = v3;
    sub_1BE04B594();
    v107, v108, v109, v110, v111, v112, v113, v114;
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
    v152(v78, v104 + *(v115 + 36), v105);
    v116 = sub_1BE04AE64();
    v106(v78, v105);
    v117 = v153;
    v118 = PKDateRangeStringFromDateToDate();

    if (v118)
    {
      sub_1BE052434();

      (*(v135 + 8))(v137, v144);
      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_1BD626198(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v77 = a3;
  v78 = a1;
  v5 = sub_1BE049904();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v70 - v8;
  v9 = sub_1BE0493F4();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - v16;
  KeyPath = swift_getKeyPath();
  v79 = a2;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel, &unk_1BE0E8A9C);
  sub_1BE04B594();
  KeyPath, v19, v20, v21, v22, v23, v24, v25;
  v26 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__range;
  swift_beginAccess();
  sub_1BD0DE19C(a2 + v26, v17, &qword_1EBD38DB8, &unk_1BE0BD340);
  sub_1BE049974();
  sub_1BD626BFC(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1BE052314())
  {
    v27 = sub_1BE0522F4();
    (*(v12 + 8))(v14, v11);
    sub_1BD0DE53C(v17, &qword_1EBD38DB8, &unk_1BE0BD340);
    if (v27)
    {
      v28 = v74;
      sub_1BE0499A4();
      v29 = sub_1BE0493A4();
      v31 = v30;
      (*(v75 + 8))(v28, v76);
      v33 = sub_1BE049594();
      v39 = v32;
      if (v29 == v33 && v31 == v32)
      {
        v31, v32, v33, v34, v35, v36, v37, v38;
        v39, v40, v41, v42, v43, v44, v45, v46;
LABEL_10:
        v64 = v70;
        sub_1BE049A34();
        v66 = v71;
        v65 = v72;
        v67 = v73;
        (*(v72 + 104))(v71, *MEMORY[0x1E6967980], v73);
        sub_1BD626BFC(&qword_1EBD3F7A0, MEMORY[0x1E6967988], MEMORY[0x1E6967998]);
        v68 = sub_1BE052334();
        v69 = *(v65 + 8);
        v69(v66, v67);
        v69(v64, v67);
        v47 = v68 ^ 1;
        return v47 & 1;
      }

      v49 = sub_1BE053B84();
      v31, v50, v51, v52, v53, v54, v55, v56;
      v39, v57, v58, v59, v60, v61, v62, v63;
      if (v49)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    sub_1BD0DE53C(v17, &qword_1EBD38DB8, &unk_1BE0BD340);
  }

  v47 = 0;
  return v47 & 1;
}