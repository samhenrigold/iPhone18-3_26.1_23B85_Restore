uint64_t sub_1C055F644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v69 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = (&v61 - v8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D98, &unk_1C0970460);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v61 - v9;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v74 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v77 = (&v61 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA8, &qword_1C0970470);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  v78 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  v18 = MEMORY[0x1EEE9AC00](v78);
  v79 = (&v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v61 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_40;
  }

  if (!v23 || a1 == a2)
  {
    v56 = 1;
    return v56 & 1;
  }

  v64 = &v61 - v21;
  v65 = v4;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = (v11 + 48);
  v27 = a2 + v24;
  v62 = v15;
  v63 = (v5 + 48);
  v67 = *(v20 + 72);
  v68 = v26;
  v61 = v17;
  v66 = v10;
  while (1)
  {
    result = sub_1C0575968(v25, v22, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
    if (!v23)
    {
      __break(1u);
      return result;
    }

    v29 = v79;
    sub_1C0575968(v27, v79, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
    if (*v22 != *v29 || v22[1] != v79[1])
    {
      goto LABEL_39;
    }

    v75 = v25;
    v76 = v23;
    v73 = v27;
    v30 = *(v78 + 28);
    v31 = *(v15 + 48);
    sub_1C05149F8(v22 + v30, v17, &qword_1EBE16DA0, &qword_1C0997A60);
    sub_1C05149F8(v79 + v30, &v17[v31], &qword_1EBE16DA0, &qword_1C0997A60);
    v32 = *v68;
    if ((*v68)(v17, 1, v10) == 1)
    {
      v33 = v32(&v17[v31], 1, v10);
      v34 = v76;
      if (v33 == 1)
      {
        v35 = v10;
        sub_1C05145B4(v17, &qword_1EBE16DA0, &qword_1C0997A60);
        v36 = v75;
        goto LABEL_23;
      }

      sub_1C0575908(v79, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      v59 = v22;
      v60 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge;
LABEL_31:
      sub_1C0575908(v59, v60);
      sub_1C05145B4(v17, &qword_1EBE16DA8, &qword_1C0970470);
      goto LABEL_40;
    }

    v37 = v77;
    sub_1C05149F8(v17, v77, &qword_1EBE16DA0, &qword_1C0997A60);
    if (v32(&v17[v31], 1, v10) == 1)
    {
      sub_1C0575908(v79, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      sub_1C0575908(v22, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      v60 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel;
      v59 = v37;
      goto LABEL_31;
    }

    v38 = &v17[v31];
    v39 = v74;
    sub_1C0575688(v38, v74, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    if (*v37 != *v39 || v37[1] != v39[1])
    {
      v58 = v39;
      goto LABEL_37;
    }

    v40 = *(v66 + 28);
    v41 = *(v71 + 48);
    v42 = v37 + v40;
    v43 = v72;
    sub_1C05149F8(v42, v72, &qword_1EBE16D90, &qword_1C0970458);
    sub_1C05149F8(v39 + v40, v43 + v41, &qword_1EBE16D90, &qword_1C0970458);
    v44 = *v63;
    v45 = v65;
    if ((*v63)(v43, 1, v65) == 1)
    {
      v46 = v44(v43 + v41, 1, v45);
      v36 = v75;
      v34 = v76;
      if (v46 == 1)
      {
        sub_1C05145B4(v43, &qword_1EBE16D90, &qword_1C0970458);
        v22 = v64;
        goto LABEL_22;
      }

      sub_1C0575908(v74, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
LABEL_34:
      v22 = v64;
      sub_1C05145B4(v43, &qword_1EBE16D98, &unk_1C0970460);
      goto LABEL_38;
    }

    v47 = v70;
    sub_1C05149F8(v43, v70, &qword_1EBE16D90, &qword_1C0970458);
    v48 = v44(v43 + v41, 1, v45);
    v36 = v75;
    v34 = v76;
    if (v48 == 1)
    {
      sub_1C0575908(v74, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      sub_1C0575908(v47, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
      v17 = v61;
      goto LABEL_34;
    }

    v49 = v43 + v41;
    v50 = v69;
    sub_1C0575688(v49, v69, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    if ((*v47 != *v50 || v47[1] != v50[1]) && (sub_1C095DF3C() & 1) == 0)
    {
      break;
    }

    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v51 = sub_1C095D73C();
    sub_1C0575908(v50, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    sub_1C0575908(v47, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    sub_1C05145B4(v72, &qword_1EBE16D90, &qword_1C0970458);
    v17 = v61;
    v22 = v64;
    if ((v51 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_22:
    v35 = v66;
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v52 = v77;
    v53 = v74;
    v54 = sub_1C095D73C();
    sub_1C0575908(v53, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    sub_1C0575908(v52, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    sub_1C05145B4(v17, &qword_1EBE16DA0, &qword_1C0997A60);
    v15 = v62;
    if ((v54 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v55 = v79;
    v56 = sub_1C095D73C();
    sub_1C0575908(v55, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
    sub_1C0575908(v22, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
    if (v56)
    {
      v27 = v73 + v67;
      v25 = v36 + v67;
      v57 = v34 == 1;
      v23 = v34 - 1;
      v10 = v35;
      if (!v57)
      {
        continue;
      }
    }

    return v56 & 1;
  }

  sub_1C0575908(v50, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  sub_1C0575908(v47, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  sub_1C05145B4(v72, &qword_1EBE16D90, &qword_1C0970458);
  v17 = v61;
  v22 = v64;
LABEL_36:
  v58 = v74;
LABEL_37:
  sub_1C0575908(v58, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
LABEL_38:
  sub_1C0575908(v77, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  sub_1C05145B4(v17, &qword_1EBE16DA0, &qword_1C0997A60);
LABEL_39:
  sub_1C0575908(v79, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
  sub_1C0575908(v22, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
LABEL_40:
  v56 = 0;
  return v56 & 1;
}

uint64_t sub_1C056013C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1C0575968(v13, v10, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      sub_1C0575968(v14, v7, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      if (*v10 != *v7 || (sub_1C055BF38(*(v10 + 1), *(v7 + 1)) & 1) == 0 || *(v10 + 4) != *(v7 + 4))
      {
        break;
      }

      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v16 = sub_1C095D73C();
      sub_1C0575908(v7, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      sub_1C0575908(v10, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1C0575908(v7, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    sub_1C0575908(v10, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    goto LABEL_13;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1C05603B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            if (v5 != 2)
            {
              return 0;
            }
          }

          else if (v5 != 3)
          {
            return 0;
          }
        }

        else if (v7)
        {
          if (v5 != 1)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C0560458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1C0575968(v13, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
      sub_1C0575968(v14, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_1C095DF3C() & 1) == 0 || (sub_1C05606D0(v10[2], v7[2]) & 1) == 0)
      {
        break;
      }

      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v17 = sub_1C095D73C();
      sub_1C0575908(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
      sub_1C0575908(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1C0575908(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
    sub_1C0575908(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
    goto LABEL_16;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1C05606D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  MEMORY[0x1EEE9AC00](v4);
  v118 = (&v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D38, &unk_1C0970400);
  MEMORY[0x1EEE9AC00](v113);
  v7 = &v95 - v6;
  v117 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  v8 = *(v117 - 8);
  v9 = MEMORY[0x1EEE9AC00](v117);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v111 = (&v95 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v114 = &v95 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v115 = &v95 - v16;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D48, &qword_1C0970410);
  MEMORY[0x1EEE9AC00](v116);
  v119 = &v95 - v17;
  v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0);
  v19 = *(v18 - 8);
  v120 = v18;
  v121 = v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v95 - v23;
  v25 = type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState(0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = (&v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v26);
  v32 = &v95 - v31;
  v33 = *(a1 + 16);
  if (v33 != *(a2 + 16))
  {
LABEL_97:
    v91 = 0;
    return v91 & 1;
  }

  if (!v33 || a1 == a2)
  {
    v91 = 1;
    return v91 & 1;
  }

  v105 = v29;
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = a1 + v34;
  v36 = 0;
  v109 = a2 + v34;
  v101 = v7;
  v102 = (v8 + 48);
  v37 = *(v30 + 72);
  v95 = v4;
  v110 = v33;
  v103 = v37;
  v104 = v35;
  v112 = v28;
  while (1)
  {
    v38 = v37 * v36;
    result = sub_1C0575968(v35 + v37 * v36, v32, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState);
    if (v36 == v110)
    {
      break;
    }

    result = sub_1C0575968(v109 + v38, v28, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState);
    v40 = &qword_1EBE16D40;
    if (*v32 != *v28 || (v41 = *(v32 + 1), v42 = *(v112 + 1), v43 = *(v41 + 16), v43 != *(v42 + 16)))
    {
LABEL_96:
      sub_1C0575908(v112, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState);
      sub_1C0575908(v32, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState);
      goto LABEL_97;
    }

    if (v43 && v41 != v42)
    {
      v44 = 0;
      v45 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v106 = v42 + v45;
      v107 = v41 + v45;
      v100 = v11;
      v98 = v36;
      v99 = v41;
      v97 = v42;
      v96 = v43;
      while (1)
      {
        if (v44 >= *(v41 + 16))
        {
          goto LABEL_101;
        }

        v46 = v40;
        v47 = v44;
        v48 = *(v121 + 72) * v44;
        result = sub_1C0575968(v107 + v48, v24, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        v49 = *(v42 + 16);
        v108 = v47;
        if (v47 >= v49)
        {
          goto LABEL_102;
        }

        sub_1C0575968(v106 + v48, v22, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        v40 = v46;
        if ((*v24 != *v22 || *(v24 + 1) != *(v22 + 1)) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_95;
        }

        result = *(v24 + 2);
        if (result != *(v22 + 2) || *(v24 + 3) != *(v22 + 3))
        {
          result = sub_1C095DF3C();
          if ((result & 1) == 0)
          {
            goto LABEL_95;
          }
        }

        if (*(v24 + 4) != *(v22 + 4))
        {
          goto LABEL_95;
        }

        if (v24[40] != v22[40])
        {
          goto LABEL_95;
        }

        v50 = *(v24 + 6);
        v51 = *(v22 + 6);
        v52 = *(v50 + 16);
        if (v52 != *(v51 + 16))
        {
          goto LABEL_95;
        }

        if (v52 && v50 != v51)
        {
          v53 = (v50 + 40);
          v54 = (v51 + 40);
          do
          {
            result = *(v53 - 1);
            v55 = result == *(v54 - 1) && *v53 == *v54;
            if (!v55)
            {
              result = sub_1C095DF3C();
              if ((result & 1) == 0)
              {
                goto LABEL_95;
              }
            }

            v53 += 2;
            v54 += 2;
          }

          while (--v52);
        }

        v56 = *(v24 + 7);
        v57 = *(v22 + 7);
        v58 = *(v56 + 16);
        if (v58 != *(v57 + 16))
        {
          goto LABEL_95;
        }

        if (v58 && v56 != v57)
        {
          break;
        }

LABEL_38:
        v60 = v119;
        v61 = *(v120 + 40);
        v62 = *(v116 + 48);
        sub_1C05149F8(&v24[v61], v119, v46, &qword_1C09A7AD0);
        sub_1C05149F8(&v22[v61], v60 + v62, v46, &qword_1C09A7AD0);
        v63 = *v102;
        v64 = v117;
        if ((*v102)(v60, 1, v117) == 1)
        {
          v55 = v63(v60 + v62, 1, v64) == 1;
          v11 = v100;
          v41 = v99;
          v65 = v60;
          if (!v55)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v66 = v40;
          v67 = v115;
          sub_1C05149F8(v60, v115, v66, &qword_1C09A7AD0);
          if (v63(v60 + v62, 1, v64) == 1)
          {
            sub_1C0575908(v67, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
            v65 = v60;
LABEL_89:
            v92 = &qword_1EBE16D48;
            v93 = &qword_1C0970410;
            goto LABEL_94;
          }

          v68 = v114;
          sub_1C0575688(v60 + v62, v114, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          v69 = v101;
          v70 = &v101[*(v113 + 48)];
          sub_1C0575968(v67, v101, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575968(v68, v70, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v71 = v100;
            sub_1C0575968(v69, v100, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v40 = &qword_1EBE16D40;
            v41 = v99;
            if (EnumCaseMultiPayload != 1)
            {
              sub_1C0575908(v71, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
              goto LABEL_92;
            }

            v73 = v70;
            v74 = v118;
            sub_1C0575688(v73, v118, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
            v11 = v71;
            if ((*v71 != *v74 || *(v71 + 1) != v74[1]) && (sub_1C095DF3C() & 1) == 0)
            {
              goto LABEL_86;
            }

            if ((*(v71 + 2) != v118[2] || *(v71 + 3) != v118[3]) && (sub_1C095DF3C() & 1) == 0)
            {
              goto LABEL_86;
            }

            if ((*(v71 + 4) != v118[4] || *(v71 + 5) != v118[5]) && (sub_1C095DF3C() & 1) == 0)
            {
              goto LABEL_86;
            }

            v75 = *(v71 + 6);
            v76 = v118[6];
            v77 = *(v75 + 16);
            if (v77 != *(v76 + 16))
            {
              goto LABEL_86;
            }

            if (v77 && v75 != v76)
            {
              v78 = (v75 + 40);
              v79 = (v76 + 40);
              while (1)
              {
                v80 = *(v78 - 1) == *(v79 - 1) && *v78 == *v79;
                if (!v80 && (sub_1C095DF3C() & 1) == 0)
                {
                  break;
                }

                v78 += 2;
                v79 += 2;
                if (!--v77)
                {
                  goto LABEL_76;
                }
              }

LABEL_86:
              sub_1C0575908(v118, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
              sub_1C0575908(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_87:
              sub_1C0575908(v101, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
LABEL_93:
              v94 = v115;
              sub_1C0575908(v114, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
              sub_1C0575908(v94, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
              v92 = &qword_1EBE16D40;
              v93 = &qword_1C09A7AD0;
              v65 = v119;
LABEL_94:
              sub_1C05145B4(v65, v92, v93);
LABEL_95:
              sub_1C0575908(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
              sub_1C0575908(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
              goto LABEL_96;
            }

LABEL_76:
            sub_1C095D38C();
            sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
            if ((sub_1C095D73C() & 1) == 0)
            {
              goto LABEL_86;
            }

            sub_1C0575908(v118, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
            sub_1C0575908(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
          }

          else
          {
            v84 = v111;
            sub_1C0575968(v69, v111, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
            v86 = *v84;
            v85 = v84[1];
            v40 = &qword_1EBE16D40;
            if (swift_getEnumCaseMultiPayload() == 1)
            {

LABEL_92:
              sub_1C05145B4(v101, &qword_1EBE16D38, &unk_1C0970400);
              goto LABEL_93;
            }

            v87 = *v70;
            v88 = *(v70 + 1);
            if (v86 == v87 && v85 == v88)
            {

              v11 = v100;
              v41 = v99;
            }

            else
            {
              v89 = sub_1C095DF3C();

              v11 = v100;
              v41 = v99;
              if ((v89 & 1) == 0)
              {
                goto LABEL_87;
              }
            }
          }

          sub_1C0575908(v101, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575908(v114, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575908(v115, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          v65 = v119;
        }

        sub_1C05145B4(v65, v40, &qword_1C09A7AD0);
        sub_1C095D38C();
        sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        v90 = sub_1C095D73C();
        sub_1C0575908(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        result = sub_1C0575908(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        v36 = v98;
        v42 = v97;
        if ((v90 & 1) == 0)
        {
          goto LABEL_96;
        }

        v44 = v108 + 1;
        if (v108 + 1 == v96)
        {
          goto LABEL_82;
        }
      }

      v81 = (v56 + 40);
      v82 = (v57 + 40);
      while (v58)
      {
        result = *(v81 - 1);
        if (result != *(v82 - 1) || *v81 != *v82)
        {
          result = sub_1C095DF3C();
          if ((result & 1) == 0)
          {
            goto LABEL_95;
          }
        }

        v81 += 2;
        v82 += 2;
        if (!--v58)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
      break;
    }

LABEL_82:
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v28 = v112;
    v91 = sub_1C095D73C();
    sub_1C0575908(v28, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState);
    sub_1C0575908(v32, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState);
    if (v91)
    {
      ++v36;
      v37 = v103;
      v35 = v104;
      if (v36 != v110)
      {
        continue;
      }
    }

    return v91 & 1;
  }

  __break(1u);
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  return result;
}

uint64_t sub_1C0561484(uint64_t a1, uint64_t a2)
{
  v88 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  MEMORY[0x1EEE9AC00](v88);
  v94 = (&v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D38, &unk_1C0970400);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v78 - v6;
  v93 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  v8 = *(v93 - 8);
  v9 = MEMORY[0x1EEE9AC00](v93);
  v95 = (&v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v89 = (&v78 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v78 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v91 = &v78 - v15;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D48, &qword_1C0970410);
  MEMORY[0x1EEE9AC00](v92);
  v17 = &v78 - v16;
  v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v25 = &v78 - v24;
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
LABEL_89:
    v74 = 0;
    return v74 & 1;
  }

  if (!v26 || a1 == a2)
  {
    v74 = 1;
    return v74 & 1;
  }

  v87 = v22;
  v82 = v7;
  v83 = v26;
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = a1 + v27;
  v29 = a2 + v27;
  v30 = 0;
  v31 = *(v23 + 72);
  v32 = &qword_1C09A7AD0;
  v33 = v93;
  v80 = v31;
  v81 = v28;
  v84 = (v8 + 48);
  v85 = v29;
  while (1)
  {
    v34 = v31 * v30;
    result = sub_1C0575968(v28 + v31 * v30, v25, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
    if (v30 == v26)
    {
      goto LABEL_92;
    }

    v86 = v30;
    sub_1C0575968(v85 + v34, v21, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
    v36 = *v25 == *v21 && *(v25 + 1) == *(v21 + 1);
    if (!v36 && (sub_1C095DF3C() & 1) == 0)
    {
      goto LABEL_88;
    }

    result = *(v25 + 2);
    if (result != *(v21 + 2) || *(v25 + 3) != *(v21 + 3))
    {
      result = sub_1C095DF3C();
      if ((result & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    if (*(v25 + 4) != *(v21 + 4))
    {
      goto LABEL_88;
    }

    if (v25[40] != v21[40])
    {
      goto LABEL_88;
    }

    v37 = *(v25 + 6);
    v38 = *(v21 + 6);
    v39 = *(v37 + 16);
    if (v39 != *(v38 + 16))
    {
      goto LABEL_88;
    }

    if (v39 && v37 != v38)
    {
      v40 = (v37 + 40);
      v41 = (v38 + 40);
      do
      {
        result = *(v40 - 1);
        if (result != *(v41 - 1) || *v40 != *v41)
        {
          result = sub_1C095DF3C();
          if ((result & 1) == 0)
          {
            goto LABEL_88;
          }
        }

        v40 += 2;
        v41 += 2;
      }

      while (--v39);
    }

    v43 = *(v25 + 7);
    v44 = *(v21 + 7);
    v45 = *(v43 + 16);
    if (v45 != *(v44 + 16))
    {
      goto LABEL_88;
    }

    if (v45 && v43 != v44)
    {
      break;
    }

LABEL_33:
    v47 = *(v87 + 40);
    v48 = *(v92 + 48);
    v49 = v32;
    sub_1C05149F8(&v25[v47], v17, &qword_1EBE16D40, v32);
    sub_1C05149F8(&v21[v47], &v17[v48], &qword_1EBE16D40, v32);
    v50 = *v84;
    if ((*v84)(v17, 1, v33) == 1)
    {
      v51 = v50(&v17[v48], 1, v33);
      v26 = v83;
      if (v51 != 1)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v79 = v5;
      v52 = v91;
      sub_1C05149F8(v17, v91, &qword_1EBE16D40, v32);
      if (v50(&v17[v48], 1, v33) == 1)
      {
        sub_1C0575908(v52, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
LABEL_82:
        v76 = &qword_1EBE16D48;
        v77 = &qword_1C0970410;
        goto LABEL_87;
      }

      v53 = v90;
      sub_1C0575688(&v17[v48], v90, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
      v54 = v82;
      v55 = &v82[*(v79 + 48)];
      sub_1C0575968(v52, v82, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
      sub_1C0575968(v53, v55, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v56 = v95;
        sub_1C0575968(v54, v95, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1C0575908(v56, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_85:
          v75 = v91;
          sub_1C05145B4(v82, &qword_1EBE16D38, &unk_1C0970400);
          goto LABEL_86;
        }

        v57 = v55;
        v58 = v94;
        sub_1C0575688(v57, v94, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
        v5 = v79;
        v33 = v93;
        v32 = v49;
        v26 = v83;
        if ((*v56 != *v58 || v56[1] != v58[1]) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_79;
        }

        if ((v95[2] != v94[2] || v95[3] != v94[3]) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_79;
        }

        if ((v95[4] != v94[4] || v95[5] != v94[5]) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_79;
        }

        v59 = v95[6];
        v60 = v94[6];
        v61 = *(v59 + 16);
        if (v61 != *(v60 + 16))
        {
          goto LABEL_79;
        }

        if (v61 && v59 != v60)
        {
          v62 = (v59 + 40);
          v63 = (v60 + 40);
          while (1)
          {
            v64 = *(v62 - 1) == *(v63 - 1) && *v62 == *v63;
            if (!v64 && (sub_1C095DF3C() & 1) == 0)
            {
              break;
            }

            v62 += 2;
            v63 += 2;
            if (!--v61)
            {
              goto LABEL_71;
            }
          }

LABEL_79:
          sub_1C0575908(v94, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
          sub_1C0575908(v95, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_80:
          sub_1C0575908(v82, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          v75 = v91;
LABEL_86:
          sub_1C0575908(v90, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575908(v75, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          v76 = &qword_1EBE16D40;
          v77 = &qword_1C09A7AD0;
LABEL_87:
          sub_1C05145B4(v17, v76, v77);
LABEL_88:
          sub_1C0575908(v21, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
          sub_1C0575908(v25, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
          goto LABEL_89;
        }

LABEL_71:
        sub_1C095D38C();
        sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        if ((sub_1C095D73C() & 1) == 0)
        {
          goto LABEL_79;
        }

        sub_1C0575908(v94, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
        sub_1C0575908(v95, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      }

      else
      {
        v68 = v89;
        sub_1C0575968(v54, v89, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
        v70 = *v68;
        v69 = v68[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          goto LABEL_85;
        }

        v71 = *v55;
        v72 = *(v55 + 1);
        if (v70 == v71 && v69 == v72)
        {

          v5 = v79;
          v33 = v93;
          v32 = v49;
          v26 = v83;
        }

        else
        {
          v73 = sub_1C095DF3C();

          v5 = v79;
          v33 = v93;
          v32 = v49;
          v26 = v83;
          if ((v73 & 1) == 0)
          {
            goto LABEL_80;
          }
        }
      }

      sub_1C0575908(v82, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
      sub_1C0575908(v90, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
      sub_1C0575908(v91, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
    }

    sub_1C05145B4(v17, &qword_1EBE16D40, v32);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v74 = sub_1C095D73C();
    sub_1C0575908(v21, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
    sub_1C0575908(v25, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
    if (v74)
    {
      v30 = v86 + 1;
      v31 = v80;
      v28 = v81;
      if (v86 + 1 != v26)
      {
        continue;
      }
    }

    return v74 & 1;
  }

  v65 = (v43 + 40);
  v66 = (v44 + 40);
  while (v45)
  {
    result = *(v65 - 1);
    if (result != *(v66 - 1) || *v65 != *v66)
    {
      result = sub_1C095DF3C();
      if ((result & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    v65 += 2;
    v66 += 2;
    if (!--v45)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_1C0561FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t))
{
  v29 = a6;
  v31 = a5;
  v30 = a3(0);
  v9 = MEMORY[0x1EEE9AC00](v30);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 == *(a2 + 16))
  {
    if (!v15 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v17 = a1 + v16;
      v18 = a2 + v16;
      v19 = *(v12 + 72);
      while (1)
      {
        sub_1C0575968(v17, v14, a4);
        sub_1C0575968(v18, v11, a4);
        v20 = *(v30 + 20);
        v21 = *&v14[v20];
        v22 = *&v11[v20];
        if (v21 != v22)
        {

          v23 = v29(v21, v22);

          if ((v23 & 1) == 0)
          {
            break;
          }
        }

        sub_1C095D38C();
        sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        v24 = sub_1C095D73C();
        v25 = v31;
        sub_1C0575908(v11, v31);
        sub_1C0575908(v14, v25);
        if (v24)
        {
          v18 += v19;
          v17 += v19;
          if (--v15)
          {
            continue;
          }
        }

        return v24 & 1;
      }

      v27 = v31;
      sub_1C0575908(v11, v31);
      sub_1C0575908(v14, v27);
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1C0562268(uint64_t result, uint64_t a2)
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

uint64_t sub_1C05622C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v41 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v32 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_19:
    v31 = 0;
    return v31 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v31 = 1;
    return v31 & 1;
  }

  v18 = 0;
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v36 = v13;
  v37 = a2 + v19;
  v38 = *(v14 + 72);
  v39 = a1 + v19;
  v34 = v10;
  v35 = &v32 - v15;
  v33 = v17;
  while (1)
  {
    v20 = v38 * v18;
    result = sub_1C0575968(v39 + v38 * v18, v16, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    if (v18 == v17)
    {
      break;
    }

    v40 = v18;
    result = sub_1C0575968(v37 + v20, v13, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    v22 = *v16;
    v23 = *v13;
    v24 = *(*v16 + 16);
    if (v24 != *(v23 + 16))
    {
LABEL_18:
      sub_1C0575908(v36, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      sub_1C0575908(v35, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      goto LABEL_19;
    }

    if (v24 && v22 != v23)
    {
      v25 = 0;
      v26 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v27 = v22 + v26;
      v28 = v23 + v26;
      while (v25 < *(v22 + 16))
      {
        v29 = *(v41 + 72) * v25;
        result = sub_1C0575968(v27 + v29, v9, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
        if (v25 >= *(v23 + 16))
        {
          goto LABEL_22;
        }

        sub_1C0575968(v28 + v29, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
        v30 = static Com_Apple_Siri_Product_Proto_ElementValue.== infix(_:_:)(v9, v7);
        sub_1C0575908(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
        result = sub_1C0575908(v9, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
        if ((v30 & 1) == 0)
        {
          goto LABEL_18;
        }

        if (v24 == ++v25)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
      break;
    }

LABEL_14:
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v16 = v35;
    v13 = v36;
    v31 = sub_1C095D73C();
    sub_1C0575908(v13, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    sub_1C0575908(v16, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    if (v31)
    {
      v18 = v40 + 1;
      v17 = v33;
      if (v40 + 1 != v33)
      {
        continue;
      }
    }

    return v31 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0562714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
      return v18 & 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1C0575968(v13, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      sub_1C0575968(v14, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      if (*v10 != *v7)
      {
        break;
      }

      v16 = *(v10 + 1);
      v17 = *(v7 + 1);
      if (v7[16] == 1 && v17 >= 0x2A)
      {
        switch(v17)
        {
          case '+':
            if (v16 != 43)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case ',':
            if (v16 != 44)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '-':
            if (v16 != 45)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '.':
            if (v16 != 46)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '/':
            if (v16 != 47)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '0':
            if (v16 != 48)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '1':
            if (v16 != 49)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '2':
            if (v16 != 50)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '3':
            if (v16 != 51)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '4':
            if (v16 != 52)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '5':
            if (v16 != 53)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          case '6':
            if (v16 != 54)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
          default:
            if (v16 != 42)
            {
              goto LABEL_38;
            }

            goto LABEL_9;
        }
      }

      if (v16 != v17)
      {
        break;
      }

LABEL_9:
      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v18 = sub_1C095D73C();
      sub_1C0575908(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      sub_1C0575908(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_38:
    sub_1C0575908(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    sub_1C0575908(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C0562A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v25 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_33:
    v24 = 0;
    return v24 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v26 = a1 + v13;
  v14 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1C0575968(v26 + v15 * v12, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    if (v12 == v11)
    {
      break;
    }

    sub_1C0575968(v14 + v15 * v12, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    v17 = *v10 == *v7 && v10[1] == v7[1];
    if (!v17 && (sub_1C095DF3C() & 1) == 0 || (v10[2] != v7[2] || v10[3] != v7[3]) && (sub_1C095DF3C() & 1) == 0)
    {
      goto LABEL_32;
    }

    if ((v10[4] != v7[4] || v10[5] != v7[5]) && (sub_1C095DF3C() & 1) == 0)
    {
      goto LABEL_32;
    }

    v18 = v10[6];
    v19 = v7[6];
    v20 = *(v18 + 16);
    if (v20 != *(v19 + 16))
    {
      goto LABEL_32;
    }

    if (v20 && v18 != v19)
    {
      v21 = (v18 + 40);
      v22 = (v19 + 40);
      while (1)
      {
        v23 = *(v21 - 1) == *(v22 - 1) && *v21 == *v22;
        if (!v23 && (sub_1C095DF3C() & 1) == 0)
        {
          break;
        }

        v21 += 2;
        v22 += 2;
        if (!--v20)
        {
          goto LABEL_28;
        }
      }

LABEL_32:
      sub_1C0575908(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C0575908(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      goto LABEL_33;
    }

LABEL_28:
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v24 = sub_1C095D73C();
    sub_1C0575908(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    sub_1C0575908(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    if ((v24 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0562D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v68 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v74 = (&v63 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v63 - v13);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C08, &unk_1C0970520);
  v15 = MEMORY[0x1EEE9AC00](v70);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v63 - v18;
  v73 = type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0);
  v20 = MEMORY[0x1EEE9AC00](v73);
  v75 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v63 - v23;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
LABEL_67:
    v59 = 0;
    return v59 & 1;
  }

  if (!v24 || a1 == a2)
  {
    v59 = 1;
    return v59 & 1;
  }

  v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v26 = a1 + v25;
  v27 = 0;
  v63 = v4;
  v64 = a2 + v25;
  v71 = (v5 + 48);
  v72 = v12;
  v65 = *(v22 + 72);
  v66 = v26;
  v28 = v70;
  v69 = v24;
  while (1)
  {
    v29 = v65 * v27;
    result = sub_1C0575968(v66 + v65 * v27, v76, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);
    if (v27 == v69)
    {
      break;
    }

    v67 = v27;
    v31 = v75;
    sub_1C0575968(v64 + v29, v75, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);
    v32 = *(v73 + 20);
    v33 = *(v28 + 48);
    sub_1C05149F8(v76 + v32, v19, &qword_1EBE16B50, &unk_1C096E0F0);
    sub_1C05149F8(v31 + v32, &v19[v33], &qword_1EBE16B50, &unk_1C096E0F0);
    v34 = *v71;
    if ((*v71)(v19, 1, v4) == 1)
    {
      if (v34(&v19[v33], 1, v4) != 1)
      {
        goto LABEL_63;
      }

      sub_1C05145B4(v19, &qword_1EBE16B50, &unk_1C096E0F0);
    }

    else
    {
      sub_1C05149F8(v19, v14, &qword_1EBE16B50, &unk_1C096E0F0);
      if (v34(&v19[v33], 1, v4) == 1)
      {
        sub_1C0575908(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_63:
        v60 = &qword_1EBE16C08;
        v61 = &unk_1C0970520;
        goto LABEL_64;
      }

      v35 = &v19[v33];
      v36 = v74;
      sub_1C0575688(v35, v74, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      if ((*v14 != *v36 || v14[1] != v36[1]) && (sub_1C095DF3C() & 1) == 0)
      {
        goto LABEL_60;
      }

      if ((v14[2] != v74[2] || v14[3] != v74[3]) && (sub_1C095DF3C() & 1) == 0)
      {
        goto LABEL_60;
      }

      if ((v14[4] != v74[4] || v14[5] != v74[5]) && (sub_1C095DF3C() & 1) == 0)
      {
        goto LABEL_60;
      }

      v37 = v14[6];
      v38 = v74[6];
      v39 = *(v37 + 16);
      if (v39 != *(v38 + 16))
      {
        goto LABEL_60;
      }

      if (v39 && v37 != v38)
      {
        v40 = (v37 + 40);
        v41 = (v38 + 40);
        while (1)
        {
          v42 = *(v40 - 1) == *(v41 - 1) && *v40 == *v41;
          if (!v42 && (sub_1C095DF3C() & 1) == 0)
          {
            break;
          }

          v40 += 2;
          v41 += 2;
          if (!--v39)
          {
            goto LABEL_30;
          }
        }

LABEL_60:
        sub_1C0575908(v74, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
        sub_1C0575908(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
        v60 = &qword_1EBE16B50;
        v61 = &unk_1C096E0F0;
LABEL_64:
        v62 = v19;
LABEL_65:
        sub_1C05145B4(v62, v60, v61);
LABEL_66:
        sub_1C0575908(v75, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);
        sub_1C0575908(v76, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);
        goto LABEL_67;
      }

LABEL_30:
      v4 = v63;
      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v43 = v74;
      v44 = sub_1C095D73C();
      sub_1C0575908(v43, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C0575908(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C05145B4(v19, &qword_1EBE16B50, &unk_1C096E0F0);
      if ((v44 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v45 = *(v73 + 24);
    v46 = *(v28 + 48);
    sub_1C05149F8(v76 + v45, v17, &qword_1EBE16B50, &unk_1C096E0F0);
    sub_1C05149F8(v75 + v45, &v17[v46], &qword_1EBE16B50, &unk_1C096E0F0);
    if (v34(v17, 1, v4) == 1)
    {
      if (v34(&v17[v46], 1, v4) != 1)
      {
        goto LABEL_70;
      }

      sub_1C05145B4(v17, &qword_1EBE16B50, &unk_1C096E0F0);
    }

    else
    {
      v47 = v72;
      sub_1C05149F8(v17, v72, &qword_1EBE16B50, &unk_1C096E0F0);
      if (v34(&v17[v46], 1, v4) == 1)
      {
        sub_1C0575908(v47, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_70:
        v60 = &qword_1EBE16C08;
        v61 = &unk_1C0970520;
        v62 = v17;
        goto LABEL_65;
      }

      v48 = v68;
      sub_1C0575688(&v17[v46], v68, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      if ((*v47 != *v48 || v47[1] != v48[1]) && (sub_1C095DF3C() & 1) == 0)
      {
        goto LABEL_61;
      }

      if ((v72[2] != v48[2] || v72[3] != v48[3]) && (sub_1C095DF3C() & 1) == 0)
      {
        goto LABEL_61;
      }

      if ((v72[4] != v48[4] || v72[5] != v48[5]) && (sub_1C095DF3C() & 1) == 0)
      {
        goto LABEL_61;
      }

      v49 = v72[6];
      v50 = v48[6];
      v51 = *(v49 + 16);
      if (v51 != *(v50 + 16))
      {
        goto LABEL_61;
      }

      if (v51 && v49 != v50)
      {
        v52 = (v49 + 40);
        v53 = (v50 + 40);
        while (1)
        {
          v54 = *(v52 - 1) == *(v53 - 1) && *v52 == *v53;
          if (!v54 && (sub_1C095DF3C() & 1) == 0)
          {
            break;
          }

          v52 += 2;
          v53 += 2;
          if (!--v51)
          {
            goto LABEL_55;
          }
        }

LABEL_61:
        sub_1C0575908(v48, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
        sub_1C0575908(v72, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
        v60 = &qword_1EBE16B50;
        v61 = &unk_1C096E0F0;
        v62 = v17;
        goto LABEL_65;
      }

LABEL_55:
      v4 = v63;
      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v55 = v72;
      v56 = sub_1C095D73C();
      sub_1C0575908(v48, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      v28 = v70;
      sub_1C0575908(v55, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C05145B4(v17, &qword_1EBE16B50, &unk_1C096E0F0);
      if ((v56 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v58 = v75;
    v57 = v76;
    v59 = sub_1C095D73C();
    sub_1C0575908(v58, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);
    sub_1C0575908(v57, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);
    if (v59)
    {
      v27 = v67 + 1;
      if (v67 + 1 != v69)
      {
        continue;
      }
    }

    return v59 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0563790(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C0563820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v58 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E08, &unk_1C09704E0);
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v58 - v9;
  v70 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v10 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v74 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v75 = (&v58 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E18, &qword_1C09704F0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v73 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  v17 = MEMORY[0x1EEE9AC00](v73);
  v19 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v22 = (&v58 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_42;
  }

  if (!v23 || a1 == a2)
  {
    v55 = 1;
    return v55 & 1;
  }

  v59 = v14;
  v60 = v4;
  v24 = 0;
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v64 = a2 + v25;
  v62 = (&v58 - v21);
  v63 = (v10 + 48);
  v61 = (v5 + 48);
  v65 = *(v20 + 72);
  v66 = a1 + v25;
  v26 = v70;
  v71 = v23;
  while (1)
  {
    v27 = v65 * v24;
    result = sub_1C0575968(v66 + v65 * v24, v22, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    if (v24 == v71)
    {
      __break(1u);
      return result;
    }

    sub_1C0575968(v64 + v27, v19, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    v29 = *(v73 + 24);
    v30 = *(v14 + 48);
    sub_1C05149F8(v22 + v29, v16, &qword_1EBE16E10, &unk_1C0971270);
    sub_1C05149F8(v19 + v29, &v16[v30], &qword_1EBE16E10, &unk_1C0971270);
    v31 = *v63;
    if ((*v63)(v16, 1, v26) == 1)
    {
      if (v31(&v16[v30], 1, v26) == 1)
      {
        sub_1C05145B4(v16, &qword_1EBE16E10, &unk_1C0971270);
        v22 = v62;
        goto LABEL_30;
      }

      sub_1C0575908(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
      v56 = v62;
      v57 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode;
LABEL_37:
      sub_1C0575908(v56, v57);
      sub_1C05145B4(v16, &qword_1EBE16E18, &qword_1C09704F0);
      goto LABEL_42;
    }

    sub_1C05149F8(v16, v75, &qword_1EBE16E10, &unk_1C0971270);
    if (v31(&v16[v30], 1, v26) == 1)
    {
      sub_1C0575908(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
      sub_1C0575908(v62, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
      v57 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element;
      v56 = v75;
      goto LABEL_37;
    }

    v32 = &v16[v30];
    v33 = v74;
    sub_1C0575688(v32, v74, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
    v34 = v61;
    if ((*v75 != *v33 || v75[1] != v33[1]) && (sub_1C095DF3C() & 1) == 0)
    {
      goto LABEL_40;
    }

    v35 = v75[2];
    v36 = v74[2];
    v37 = *(v35 + 16);
    if (v37 != *(v36 + 16))
    {
      goto LABEL_40;
    }

    if (v37 && v35 != v36)
    {
      break;
    }

LABEL_24:
    v41 = *(v70 + 24);
    v42 = *(v69 + 48);
    v43 = v72;
    sub_1C05149F8(v75 + v41, v72, &qword_1EBE16E00, &qword_1C099BAE0);
    sub_1C05149F8(v74 + v41, v43 + v42, &qword_1EBE16E00, &qword_1C099BAE0);
    v44 = *v34;
    v45 = v60;
    if ((*v34)(v43, 1, v60) == 1)
    {
      if (v44(v72 + v42, 1, v45) != 1)
      {
        goto LABEL_39;
      }

      sub_1C05145B4(v72, &qword_1EBE16E00, &qword_1C099BAE0);
    }

    else
    {
      v46 = v72;
      v47 = v68;
      sub_1C05149F8(v72, v68, &qword_1EBE16E00, &qword_1C099BAE0);
      if (v44(v46 + v42, 1, v45) == 1)
      {
        sub_1C0575908(v47, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
LABEL_39:
        sub_1C05145B4(v72, &qword_1EBE16E08, &unk_1C09704E0);
        goto LABEL_40;
      }

      v48 = v67;
      sub_1C0575688(v46 + v42, v67, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      v49 = static Com_Apple_Siri_Product_Proto_Element.OneOf_Node.== infix(_:_:)(v47, v48);
      sub_1C0575908(v48, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      sub_1C0575908(v47, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      sub_1C05145B4(v46, &qword_1EBE16E00, &qword_1C099BAE0);
      if ((v49 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v50 = v70;
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v51 = v74;
    v52 = v75;
    v53 = sub_1C095D73C();
    v54 = v51;
    v26 = v50;
    v14 = v59;
    sub_1C0575908(v54, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
    sub_1C0575908(v52, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
    sub_1C05145B4(v16, &qword_1EBE16E10, &unk_1C0971270);
    v22 = v62;
    if ((v53 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_30:
    if (*v22 != *v19)
    {
      goto LABEL_41;
    }

    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v55 = sub_1C095D73C();
    sub_1C0575908(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    sub_1C0575908(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    if ((v55 & 1) != 0 && ++v24 != v71)
    {
      continue;
    }

    return v55 & 1;
  }

  v38 = (v35 + 40);
  v39 = (v36 + 40);
  while (1)
  {
    v40 = *(v38 - 1) == *(v39 - 1) && *v38 == *v39;
    if (!v40 && (sub_1C095DF3C() & 1) == 0)
    {
      break;
    }

    v38 += 2;
    v39 += 2;
    if (!--v37)
    {
      goto LABEL_24;
    }
  }

LABEL_40:
  sub_1C0575908(v74, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  sub_1C0575908(v75, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  sub_1C05145B4(v16, &qword_1EBE16E10, &unk_1C0971270);
  v22 = v62;
LABEL_41:
  sub_1C0575908(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
  sub_1C0575908(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
LABEL_42:
  v55 = 0;
  return v55 & 1;
}

uint64_t sub_1C05641DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0);
  v67 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v51 - v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = (&v51 - v15);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v51 - v16;
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v24 = &v51 - v23;
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
LABEL_68:
    v50 = 0;
    return v50 & 1;
  }

  if (!v25 || a1 == a2)
  {
    v50 = 1;
    return v50 & 1;
  }

  v54 = v10;
  v55 = v4;
  v63 = v25;
  v64 = v21;
  v51 = v13;
  v26 = 0;
  v27 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v28 = a1 + v27;
  v61 = a2 + v27;
  v59 = &v51 - v23;
  v60 = (v11 + 48);
  v29 = *(v22 + 72);
  v52 = v29;
  v53 = a1 + v27;
  v58 = v20;
  while (1)
  {
    result = sub_1C0575968(v28 + v29 * v26, v24, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);
    if (v26 == v63)
    {
      goto LABEL_74;
    }

    sub_1C0575968(v61 + v29 * v26, v20, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);
    v31 = *(v64 + 36);
    v32 = *(v66 + 48);
    v33 = v68;
    sub_1C05149F8(&v24[v31], v68, &qword_1EBE17420, &qword_1C0993380);
    sub_1C05149F8(&v20[v31], v33 + v32, &qword_1EBE17420, &qword_1C0993380);
    v34 = *v60;
    v35 = (*v60)(v33, 1, v10);
    v62 = v26;
    if (v35 == 1)
    {
      v36 = v34(v33 + v32, 1, v10);
      v20 = v58;
      if (v36 != 1)
      {
        goto LABEL_71;
      }

      sub_1C05145B4(v33, &qword_1EBE17420, &qword_1C0993380);
      v24 = v59;
      goto LABEL_20;
    }

    v37 = v65;
    sub_1C05149F8(v33, v65, &qword_1EBE17420, &qword_1C0993380);
    if (v34(v33 + v32, 1, v10) == 1)
    {
      sub_1C0575908(v37, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      v20 = v58;
LABEL_71:
      sub_1C05145B4(v33, &qword_1EBE16D60, &unk_1C0970430);
      v24 = v59;
LABEL_67:
      sub_1C0575908(v20, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);
      sub_1C0575908(v24, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);
      goto LABEL_68;
    }

    v38 = v33 + v32;
    v39 = v51;
    sub_1C0575688(v38, v51, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v20 = v58;
    v24 = v59;
    if (*v37 != *v39 || v37[1] != *(v39 + 8))
    {
LABEL_64:
      sub_1C0575908(v39, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C0575908(v37, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C05145B4(v68, &qword_1EBE17420, &qword_1C0993380);
      goto LABEL_67;
    }

    v40 = v37[2];
    v41 = *(v39 + 16);
    if (*(v39 + 24) == 1)
    {
      if (v41 > 2)
      {
        if (v41 == 3)
        {
          if (v40 != 3)
          {
            goto LABEL_64;
          }
        }

        else if (v41 == 4)
        {
          if (v40 != 4)
          {
            goto LABEL_64;
          }
        }

        else if (v40 != 5)
        {
          goto LABEL_64;
        }
      }

      else if (v41)
      {
        if (v41 == 1)
        {
          if (v40 != 1)
          {
            goto LABEL_64;
          }
        }

        else if (v40 != 2)
        {
          goto LABEL_64;
        }
      }

      else if (v40)
      {
        goto LABEL_64;
      }
    }

    else if (v40 != v41)
    {
      goto LABEL_64;
    }

    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v42 = sub_1C095D73C();
    sub_1C0575908(v39, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0575908(v37, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C05145B4(v68, &qword_1EBE17420, &qword_1C0993380);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_20:
    result = *v24;
    if (*v24 != *v20 || *(v24 + 1) != *(v20 + 1))
    {
      result = sub_1C095DF3C();
      if ((result & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (*(v24 + 2) != *(v20 + 2))
    {
      goto LABEL_67;
    }

    v43 = *(v24 + 3);
    v44 = *(v20 + 3);
    v45 = *(v43 + 16);
    if (v45 != *(v44 + 16))
    {
      goto LABEL_67;
    }

    if (v45 && v43 != v44)
    {
      break;
    }

LABEL_49:
    if ((sub_1C055E108(*(v24 + 4), *(v20 + 4)) & 1) == 0)
    {
      goto LABEL_67;
    }

    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v50 = sub_1C095D73C();
    sub_1C0575908(v20, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);
    sub_1C0575908(v24, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis);
    if (v50)
    {
      v26 = v62 + 1;
      v28 = v53;
      v10 = v54;
      v29 = v52;
      if (v62 + 1 != v63)
      {
        continue;
      }
    }

    return v50 & 1;
  }

  v46 = 0;
  v47 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v56 = v44 + v47;
  v57 = v43 + v47;
  while (v46 < *(v43 + 16))
  {
    v48 = *(v67 + 72) * v46;
    result = sub_1C0575968(v57 + v48, v9, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);
    if (v46 >= *(v44 + 16))
    {
      goto LABEL_73;
    }

    sub_1C0575968(v56 + v48, v7, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);
    if ((*v9 != *v7 || *(v9 + 1) != *(v7 + 1)) && (sub_1C095DF3C() & 1) == 0 || (*(v9 + 2) != *(v7 + 2) || *(v9 + 3) != *(v7 + 3)) && (sub_1C095DF3C() & 1) == 0 || (*(v9 + 4) != *(v7 + 4) || *(v9 + 5) != *(v7 + 5)) && (sub_1C095DF3C() & 1) == 0 || v9[48] != v7[48] || v9[49] != v7[49] || v9[50] != v7[50] || *(v9 + 7) != *(v7 + 7) || *(v9 + 16) != *(v7 + 16) || *(v9 + 17) != *(v7 + 17) || *(v9 + 18) != *(v7 + 18) || *(v9 + 19) != *(v7 + 19))
    {
      sub_1C0575908(v7, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);
      sub_1C0575908(v9, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);
      goto LABEL_67;
    }

    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v49 = sub_1C095D73C();
    sub_1C0575908(v7, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);
    result = sub_1C0575908(v9, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation);
    if ((v49 & 1) == 0)
    {
      goto LABEL_67;
    }

    if (v45 == ++v46)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t TerminalIntentNode.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1C095D7BC();
  MEMORY[0x1C68DDE90](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 40;
    do
    {

      sub_1C095D7BC();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return sub_1C056D194(a1);
}

uint64_t TerminalIntentNode.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1C095DFEC();
  sub_1C095D7BC();
  MEMORY[0x1C68DDE90](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_1C095D7BC();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  sub_1C056D194(v5);
  return sub_1C095E03C();
}

uint64_t sub_1C0564D10(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C095DFEC();
  sub_1C095D7BC();
  MEMORY[0x1C68DDE90](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_1C095D7BC();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  sub_1C056D194(v6);
  return sub_1C095E03C();
}

uint64_t sub_1C0564DC0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1C095DF3C() & 1) == 0 || (sub_1C055B098(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1C055B128(v3, v4);
}

uint64_t TerminalElement.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 528);
  v4 = *(v1 + 536);
  v5 = *(v1 + 1336);
  memcpy(__dst, v1, 0x20AuLL);
  if (sub_1C0573598(__dst) == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    memcpy(v10, v1, 0x20AuLL);
    sub_1C05735AC(v10, v9);
    TerminalElement.Value.hash(into:)(a1);
    memcpy(v9, v1, 0x20AuLL);
    sub_1C05735E4(v9);
  }

  MEMORY[0x1C68DDE90](*(v3 + 16));
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = v3 + 40;
    do
    {

      sub_1C095D7BC();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  v9[0] = v4;
  memcpy(&v9[1], (v1 + 537), 0x308uLL);
  if (sub_1C0573614(v9) == 1)
  {
    sub_1C095E00C();
    if (v5)
    {
LABEL_9:
      sub_1C095E00C();
      sub_1C095E00C();
      return sub_1C095D7BC();
    }
  }

  else
  {
    sub_1C095E00C();
    sub_1C095E00C();
    if (v4 != 9)
    {
      sub_1C0559784(a1, v4);
    }

    memcpy(v10, (v1 + 544), 0x301uLL);
    sub_1C056CE08(a1);
    if (v5)
    {
      goto LABEL_9;
    }
  }

  return sub_1C095E00C();
}

uint64_t TerminalElement.hashValue.getter()
{
  sub_1C095DFEC();
  TerminalElement.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C0565084()
{
  sub_1C095DFEC();
  TerminalElement.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C05650C8(uint64_t a1)
{
  sub_1C095DFEC();
  TerminalElement.hash(into:)(v2);
  return sub_1C095E03C();
}

uint64_t sub_1C056514C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  v4 = *(v3 + 16);
  if (v4 && (memmove(__dst, (v3 + 1344 * v4 - 1312), 0x20AuLL), sub_1C0573598(__dst) != 1))
  {
    memcpy(v9, __dst, sizeof(v9));
    v5 = sub_1C0565D0C();
    v6 = v7;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  __dst[0] = v2;
  __dst[1] = v1;

  MEMORY[0x1C68DD690](40, 0xE100000000000000);
  MEMORY[0x1C68DD690](v5, v6);

  MEMORY[0x1C68DD690](41, 0xE100000000000000);
  return __dst[0];
}

unint64_t TerminalIntentNode.debugDescription.getter()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[3];
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C095DC1C();

  v11 = 0xD00000000000001ALL;
  v12 = 0x80000001C09CC2D0;
  MEMORY[0x1C68DD690](v2, v3);
  MEMORY[0x1C68DD690](0x3D65756C6176202CLL, 0xE800000000000000);
  v5 = *(v4 + 16);
  if (v5 && (memmove(__dst, (v4 + 1344 * v5 - 1312), 0x20AuLL), sub_1C0573598(__dst) != 1))
  {
    memcpy(v9, __dst, sizeof(v9));
    v1 = TerminalElement.Value.debugDescription.getter();
    v6 = v7;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x1C68DD690](v1, v6);

  MEMORY[0x1C68DD690](62, 0xE100000000000000);
  return v11;
}

uint64_t TerminalElement.Value.debugDescription.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1C095DC1C();

  strcpy(v15, "<Value: type=");
  HIWORD(v15[1]) = -4864;
  memcpy(v17, v0, 0x20AuLL);
  v1 = sub_1C057363C(v17);
  sub_1C05272F0(v17);
  v2 = 0xE600000000000000;
  if (v1 <= 3)
  {
    v9 = 0x656C62756F64;
    v10 = 0xE300000000000000;
    v11 = 7630441;
    if (v1 != 2)
    {
      v11 = 1735290732;
      v10 = 0xE400000000000000;
    }

    if (v1)
    {
      v9 = 0x74616F6C66;
      v2 = 0xE500000000000000;
    }

    if (v1 <= 1)
    {
      v7 = v9;
    }

    else
    {
      v7 = v11;
    }

    if (v1 <= 1)
    {
      v8 = v2;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0x72616C616373;
    v4 = 0xEB00000000676154;
    if (v1 != 7)
    {
      v4 = 0xE800000000000000;
    }

    if (v1 != 6)
    {
      v3 = 0x6369746E616D6573;
      v2 = v4;
    }

    v5 = 0xE600000000000000;
    v6 = 0x676E69727473;
    if (v1 != 4)
    {
      v6 = 0x656D695465746164;
      v5 = 0xE800000000000000;
    }

    if (v1 <= 5)
    {
      v7 = v6;
    }

    else
    {
      v7 = v3;
    }

    if (v1 <= 5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v2;
    }
  }

  MEMORY[0x1C68DD690](v7, v8);

  MEMORY[0x1C68DD690](0x3D65756C6176202CLL, 0xE800000000000000);
  memcpy(v14, __dst, sizeof(v14));
  v12 = sub_1C0565A10();
  MEMORY[0x1C68DD690](v12);

  MEMORY[0x1C68DD690](62, 0xE100000000000000);
  return v15[0];
}

uint64_t TerminalElement.Value.description.getter()
{
  memcpy(__dst, v0, 0x20AuLL);
  memcpy(v13, v0, 0x20AuLL);
  v1 = sub_1C057363C(v13);
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      v11[0] = *sub_1C05272F0(v13);
      return sub_1C095DF0C();
    }

    else if (v1)
    {
      sub_1C05272F0(v13);
      return sub_1C095DA4C();
    }

    else
    {
      sub_1C05272F0(v13);
      return sub_1C095DA0C();
    }
  }

  else if (v1 <= 5)
  {
    if (v1 == 4)
    {
      v4 = sub_1C05272F0(v13);
      v6 = *v4;
      v5 = v4[1];
      v11[1] = 0xE100000000000000;
      MEMORY[0x1C68DD690](v6, v5);
      MEMORY[0x1C68DD690](34, 0xE100000000000000);
      return 34;
    }

    else
    {
      v7 = sub_1C05272F0(v13);
      memcpy(v10, v7, sizeof(v10));
      memcpy(v11, __dst, 0x20AuLL);
      v8 = sub_1C05272F0(v11);
      sub_1C0573648(v8, &v9);
      return sub_1C095D77C();
    }
  }

  else
  {
    if (v1 == 6)
    {
      sub_1C05272F0(v13);
      memcpy(v11, __dst, 0x20AuLL);
      sub_1C05272F0(v11);

      v2 = TerminalElement.ScalarValue.description.getter();
      sub_1C05735E4(__dst);
    }

    else if (v1 == 7)
    {
      v2 = *sub_1C05272F0(v13);
      memcpy(v11, __dst, 0x20AuLL);
      sub_1C05272F0(v11);
    }

    else
    {
      v2 = *(sub_1C05272F0(v13) + 16);
    }

    return v2;
  }
}

uint64_t sub_1C05657E4()
{
  memcpy(__dst, v0, 0x20AuLL);
  memcpy(v13, v0, 0x20AuLL);
  v1 = sub_1C057363C(v13);
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      v11[0] = *sub_1C05272F0(v13);
      return sub_1C095DF0C();
    }

    else if (v1)
    {
      sub_1C05272F0(v13);
      return sub_1C095DA4C();
    }

    else
    {
      sub_1C05272F0(v13);
      return sub_1C095DA0C();
    }
  }

  else if (v1 <= 5)
  {
    if (v1 == 4)
    {
      v4 = sub_1C05272F0(v13);
      v6 = *v4;
      v5 = v4[1];
      v11[1] = 0xE100000000000000;
      MEMORY[0x1C68DD690](v6, v5);
      MEMORY[0x1C68DD690](34, 0xE100000000000000);
      return 34;
    }

    else
    {
      v7 = sub_1C05272F0(v13);
      memcpy(v10, v7, sizeof(v10));
      memcpy(v11, __dst, 0x20AuLL);
      v8 = sub_1C05272F0(v11);
      sub_1C0573648(v8, &v9);
      return sub_1C095D77C();
    }
  }

  else
  {
    if (v1 == 6)
    {
      sub_1C05272F0(v13);
      memcpy(v11, __dst, 0x20AuLL);
      sub_1C05272F0(v11);

      v2 = TerminalElement.ScalarValue.description.getter();
      sub_1C05735E4(__dst);
    }

    else if (v1 == 7)
    {
      v2 = *sub_1C05272F0(v13);
      memcpy(v11, __dst, 0x20AuLL);
      sub_1C05272F0(v11);
    }

    else
    {
      v2 = *(sub_1C05272F0(v13) + 16);
    }

    return v2;
  }
}

uint64_t sub_1C0565A10()
{
  memcpy(__dst, v0, 0x20AuLL);
  v1 = sub_1C057363C(__dst);
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      v14[0] = *sub_1C05272F0(__dst);
      return sub_1C095DF0C();
    }

    else if (v1)
    {
      sub_1C05272F0(__dst);
      return sub_1C095DA4C();
    }

    else
    {
      sub_1C05272F0(__dst);
      return sub_1C095DA0C();
    }
  }

  else
  {
    if (v1 <= 5)
    {
      if (v1 == 4)
      {
        v4 = sub_1C05272F0(__dst);
        v6 = *v4;
        v5 = v4[1];
        v14[1] = 0xE100000000000000;
        MEMORY[0x1C68DD690](v6, v5);
        MEMORY[0x1C68DD690](34, 0xE100000000000000);
        return 34;
      }

      v10 = sub_1C05272F0(__dst);
      memcpy(v13, v10, 0x20AuLL);
      memcpy(v14, v0, 0x20AuLL);
      v11 = sub_1C05272F0(v14);
      sub_1C0573648(v11, &v12);
    }

    else if (v1 == 6)
    {
      *&v13[0] = *sub_1C05272F0(__dst);
      memcpy(v14, v0, 0x20AuLL);
      sub_1C05272F0(v14);
      type metadata accessor for TerminalElement.ScalarValue();
    }

    else
    {
      if (v1 == 7)
      {
        v2 = *sub_1C05272F0(__dst);
        memcpy(v14, v0, 0x20AuLL);
        sub_1C05272F0(v14);

        return v2;
      }

      v7 = sub_1C05272F0(__dst);
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v13[0] = *v7;
      *&v13[1] = v8;
      *(&v13[1] + 1) = v9;
      memcpy(v14, v0, 0x20AuLL);
      sub_1C05272F0(v14);
    }

    return sub_1C095D78C();
  }
}

BOOL sub_1C0565CAC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  memmove(v4, (v1 + 1344 * v2 - 1312), 0x20AuLL);
  return sub_1C0573598(v4) != 1;
}

uint64_t sub_1C0565D0C()
{
  memcpy(__dst, v0, 0x20AuLL);
  v1 = sub_1C057363C(__dst);
  if (v1 <= 3)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v4 = sub_1C05272F0(__dst);
        v15[0] = *v4;
        sub_1C0575530(v4, v5, v6);
      }

      else
      {
        v8 = sub_1C05272F0(__dst);
        v15[0] = *v8;
        sub_1C05754DC(v8, v9, v10);
      }

      return sub_1C095DB9C();
    }

    else if (v1)
    {
      sub_1C05272F0(__dst);
      return sub_1C095DA4C();
    }

    else
    {
      sub_1C05272F0(__dst);
      return sub_1C095DA0C();
    }
  }

  else if (v1 <= 5)
  {
    if (v1 == 4)
    {
LABEL_12:
      v7 = *sub_1C05272F0(__dst);
      memcpy(v15, v0, 0x20AuLL);
      sub_1C05272F0(v15);

      return v7;
    }

    v11 = sub_1C05272F0(__dst);
    memcpy(v14, v11, sizeof(v14));
    memcpy(v15, v0, 0x20AuLL);
    v12 = sub_1C05272F0(v15);
    sub_1C0573648(v12, &v13);
    return sub_1C095D77C();
  }

  else
  {
    if (v1 != 6)
    {
      if (v1 != 7)
      {
        v2 = *(sub_1C05272F0(__dst) + 16);

        return v2;
      }

      goto LABEL_12;
    }

    sub_1C05272F0(__dst);
    return TerminalElement.ScalarValue.description.getter();
  }
}

uint64_t TerminalElement.ScalarValue.description.getter()
{
  v1 = 7104878;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C095DC1C();

  v8 = 0x3D65756C61767BLL;
  v9 = 0xE700000000000000;
  memcpy(__dst, v0 + 2, 0x20AuLL);
  if (sub_1C0573598(__dst) == 1)
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
  }

  else
  {
    memcpy(v7, __dst, sizeof(v7));
    v3 = sub_1C05657E4();
    v2 = v4;
  }

  MEMORY[0x1C68DD690](v3, v2);

  MEMORY[0x1C68DD690](0x3D74696E75202CLL, 0xE700000000000000);
  v5 = v0[71];
  if (v5)
  {
    v1 = v0[70];
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x1C68DD690](v1, v5);

  MEMORY[0x1C68DD690](125, 0xE100000000000000);
  return v8;
}

uint64_t TerminalElement.SemanticValue.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C056603C()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t TerminalElement.SemanticValue.debugDescription.getter()
{
  MEMORY[0x1C68DD690](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C68DD690](62, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_1C05660CC()
{
  MEMORY[0x1C68DD690](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C68DD690](62, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t TerminalElement.ScalarValue.debugDescription.getter()
{
  v1 = 7104878;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C095DC1C();

  v10 = 60;
  v11 = 0xE100000000000000;
  v2 = sub_1C095E09C();
  MEMORY[0x1C68DD690](v2);

  MEMORY[0x1C68DD690](0x3D65756C6176203ALL, 0xE800000000000000);
  memcpy(__dst, v0 + 2, 0x20AuLL);
  if (sub_1C0573598(__dst) == 1)
  {
    v3 = 0xE300000000000000;
    v4 = 7104878;
  }

  else
  {
    memcpy(v9, __dst, 0x20AuLL);
    v4 = TerminalElement.Value.debugDescription.getter();
    v3 = v5;
  }

  MEMORY[0x1C68DD690](v4, v3);

  MEMORY[0x1C68DD690](0x3D74696E75202CLL, 0xE700000000000000);
  if (v0[71])
  {
    v6 = v0[70];
    v9[0] = 0xD000000000000016;
    v9[1] = 0x80000001C09CC2F0;
    MEMORY[0x1C68DD690](v6);
    MEMORY[0x1C68DD690](62, 0xE100000000000000);
    v1 = v9[0];
    v7 = v9[1];
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x1C68DD690](v1, v7);

  MEMORY[0x1C68DD690](62, 0xE100000000000000);
  return v10;
}

uint64_t TerminalElement.Value.hash(into:)(uint64_t a1)
{
  memcpy(__dst, v1, 0x20AuLL);
  v3 = sub_1C057363C(__dst);
  if (v3 > 3)
  {
    if (v3 <= 5)
    {
      if (v3 != 4)
      {
        v10 = sub_1C05272F0(__dst);
        memcpy(v14, v10, 0x20AuLL);
        return TerminalElement.DateTimeValue.hash(into:)(a1);
      }

      goto LABEL_15;
    }

    if (v3 != 6)
    {
      if (v3 != 7)
      {
        if (*(sub_1C05272F0(__dst) + 8))
        {
          sub_1C095E00C();
          sub_1C095D7BC();
        }

        else
        {
          sub_1C095E00C();
        }

        return sub_1C095D7BC();
      }

LABEL_15:
      sub_1C05272F0(__dst);
      return sub_1C095D7BC();
    }

    v8 = *sub_1C05272F0(__dst);
    memcpy(__src, v8 + 2, sizeof(__src));
    memmove(v14, v8 + 2, 0x20AuLL);
    if (sub_1C0573598(v14) == 1)
    {
      sub_1C095E00C();
      if (v8[71])
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1C095E00C();
      memcpy(v11, __src, 0x20AuLL);
      sub_1C05735AC(v11, v12);
      TerminalElement.Value.hash(into:)(a1);
      memcpy(v12, __src, 0x20AuLL);
      sub_1C05735E4(v12);
      if (v8[71])
      {
LABEL_18:
        v9 = v8[69];
        sub_1C095E00C();
        sub_1C095E00C();
        if (v9)
        {
          sub_1C095D7BC();
        }

        return sub_1C095D7BC();
      }
    }

    return sub_1C095E00C();
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v6 = sub_1C05272F0(__dst);
      return MEMORY[0x1C68DDE90](*v6);
    }

    v5 = *sub_1C05272F0(__dst);
  }

  else
  {
    if (v3)
    {
      sub_1C05272F0(__dst);
      return sub_1C095E01C();
    }

    v4 = *sub_1C05272F0(__dst);
    if (v4 == 0.0)
    {
      v4 = 0.0;
    }

    v5 = v4;
  }

  return MEMORY[0x1C68DDEC0](*&v5);
}

uint64_t TerminalElement.Value.hashValue.getter()
{
  sub_1C095DFEC();
  TerminalElement.Value.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C0566634()
{
  sub_1C095DFEC();
  TerminalElement.Value.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C0566678(uint64_t a1)
{
  sub_1C095DFEC();
  TerminalElement.Value.hash(into:)(v2);
  return sub_1C095E03C();
}

uint64_t TerminalElement.Origin.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  memcpy(__dst, v1 + 8, sizeof(__dst));
  sub_1C095E00C();
  if (v3 != 9)
  {
    sub_1C0559784(a1, v3);
  }

  return sub_1C056CE08(a1);
}

uint64_t TerminalElement.Origin.hashValue.getter()
{
  v1 = *v0;
  memcpy(__dst, v0 + 8, sizeof(__dst));
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v1 != 9)
  {
    sub_1C0559784(v3, v1);
  }

  sub_1C056CE08(v3);
  return sub_1C095E03C();
}

uint64_t sub_1C05667C8()
{
  v1 = *v0;
  memcpy(__dst, v0 + 8, sizeof(__dst));
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v1 != 9)
  {
    sub_1C0559784(v3, v1);
  }

  sub_1C056CE08(v3);
  return sub_1C095E03C();
}

uint64_t sub_1C0566854(uint64_t a1)
{
  v3 = *v1;
  memcpy(__dst, v1 + 8, sizeof(__dst));
  sub_1C095E00C();
  if (v3 != 9)
  {
    sub_1C0559784(a1, v3);
  }

  return sub_1C056CE08(a1);
}

uint64_t sub_1C05668D4(uint64_t a1)
{
  v2 = *v1;
  memcpy(__dst, v1 + 8, sizeof(__dst));
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v2 != 9)
  {
    sub_1C0559784(v4, v2);
  }

  sub_1C056CE08(v4);
  return sub_1C095E03C();
}

BOOL static TerminalElement.MatchingSpan.== infix(_:_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = *v1;
  v6 = v1[1];
  memcpy(v84, v1 + 2, 0x20AuLL);
  v7 = v4[69];
  v74 = v4[71];
  v75 = v4[68];
  v72 = v4[72];
  v73 = v4[70];
  v71 = v4[73];
  v69 = v4[74];
  v67 = v4[75];
  v65 = v4[76];
  v63 = v4[77];
  v61 = v4[78];
  v59 = v4[79];
  v57 = *(v4 + 641);
  v58 = *(v4 + 640);
  v55 = *(v4 + 643);
  v56 = *(v4 + 642);
  v53 = v4[81];
  v54 = v4[82];
  v52 = v4[83];
  v51 = *(v4 + 672);
  v49 = v4[85];
  v50 = v4[86];
  v47 = v4[87];
  v48 = v4[88];
  v43 = v4[89];
  v44 = v4[90];
  v46 = v4[91];
  v45 = *(v4 + 736);
  v9 = *v3;
  v8 = v3[1];
  memcpy(v85, v3 + 2, 0x20AuLL);
  v10 = v3[68];
  v11 = v3[69];
  v12 = v3[72];
  v70 = v3[73];
  v68 = v3[74];
  v66 = v3[75];
  v64 = v3[76];
  v62 = v3[77];
  v60 = v3[78];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v41 = v3[70];
    v42 = v3[71];
    v40 = v3[79];
    v38 = *(v3 + 641);
    v39 = *(v3 + 640);
    v36 = *(v3 + 643);
    v37 = *(v3 + 642);
    v34 = v3[81];
    v35 = v3[82];
    v33 = v3[83];
    v32 = *(v3 + 672);
    v29 = v3[85];
    v30 = v3[87];
    v31 = v3[86];
    v27 = v3[88];
    v28 = v3[89];
    v24 = v3[90];
    v25 = v3[91];
    v26 = *(v3 + 736);
    if ((v5 != v9 || v6 != v8) && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v41 = v3[70];
    v42 = v3[71];
    v40 = v3[79];
    v38 = *(v3 + 641);
    v39 = *(v3 + 640);
    v36 = *(v3 + 643);
    v37 = *(v3 + 642);
    v34 = v3[81];
    v35 = v3[82];
    v33 = v3[83];
    v32 = *(v3 + 672);
    v29 = v3[85];
    v30 = v3[87];
    v31 = v3[86];
    v27 = v3[88];
    v28 = v3[89];
    v24 = v3[90];
    v25 = v3[91];
    v26 = *(v3 + 736);
    if (v8)
    {
      return 0;
    }
  }

  memcpy(v82, v4 + 2, 0x20AuLL);
  memcpy(&v82[528], v3 + 2, 0x20AuLL);
  memcpy(v83, v4 + 2, 0x20AuLL);
  if (sub_1C0573598(v83) == 1)
  {
    memcpy(__dst, v3 + 2, 0x20AuLL);
    if (sub_1C0573598(__dst) == 1)
    {
      memcpy(v80, v4 + 2, 0x20AuLL);
      sub_1C05149F8(v84, v79, &qword_1EBE16C70, &unk_1C099BB20);
      sub_1C05149F8(v85, v79, &qword_1EBE16C70, &unk_1C099BB20);
      sub_1C05145B4(v80, &qword_1EBE16C70, &unk_1C099BB20);
      goto LABEL_17;
    }

    sub_1C05149F8(v84, v80, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v85, v80, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_14:
    memcpy(__dst, v82, 0x41AuLL);
    sub_1C05145B4(__dst, &qword_1EBE16C88, &qword_1C096E860);
    return 0;
  }

  memcpy(v80, v4 + 2, 0x20AuLL);
  memcpy(v79, v4 + 2, 0x20AuLL);
  memcpy(__dst, v3 + 2, 0x20AuLL);
  if (sub_1C0573598(__dst) == 1)
  {
    memcpy(__src, v4 + 2, 0x20AuLL);
    sub_1C05149F8(v84, v77, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v85, v77, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v80, v77, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05735E4(__src);
    goto LABEL_14;
  }

  memcpy(__src, v3 + 2, 0x20AuLL);
  sub_1C05149F8(v84, v77, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C05149F8(v85, v77, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C05149F8(v80, v77, &qword_1EBE16C70, &unk_1C099BB20);
  v14 = _s12SiriOntology15TerminalElementV5ValueO2eeoiySbAE_AEtFZ_0(v79);
  memcpy(v76, __src, 0x20AuLL);
  sub_1C05735E4(v76);
  memcpy(v77, v79, 0x20AuLL);
  sub_1C05735E4(v77);
  memcpy(__src, v4 + 2, 0x20AuLL);
  sub_1C05145B4(__src, &qword_1EBE16C70, &unk_1C099BB20);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (v7)
  {
    v15 = v42;
    if (!v11)
    {
      return 0;
    }

    v16 = v12;
    if (v75 != v10 || v7 != v11)
    {
      v17 = sub_1C095DF3C();
      v15 = v42;
      v16 = v12;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v16 = v12;
    v15 = v42;
    if (v11)
    {
      return 0;
    }
  }

  if (v74)
  {
    if (!v15)
    {
      return 0;
    }

    if (v73 != v41 || v74 != v15)
    {
      v18 = v16;
      v19 = sub_1C095DF3C();
      v16 = v18;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v72)
  {
    if (!v16)
    {
      return 0;
    }

    v20 = v16;
    memcpy(v79, (v72 + 16), 0x301uLL);
    memcpy(__src, (v72 + 16), 0x301uLL);
    memcpy(v80, (v20 + 16), 0x301uLL);
    memcpy(v77, (v20 + 16), 0x301uLL);
    sub_1C0573F24(v79, v82);
    sub_1C0573F24(v80, v82);
    v21 = static TerminalElement.MatchingSpan.== infix(_:_:)(__src);
    memcpy(__dst, v77, 0x301uLL);
    sub_1C0573F5C(__dst);
    memcpy(v82, __src, 0x301uLL);
    sub_1C0573F5C(v82);
    if (!v21)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v71)
  {
    if (!v70)
    {
      return 0;
    }

    memcpy(v79, (v71 + 16), 0x301uLL);
    memcpy(__src, (v71 + 16), 0x301uLL);
    memcpy(v80, (v70 + 16), 0x301uLL);
    memcpy(v77, (v70 + 16), 0x301uLL);
    sub_1C0573F24(v79, v82);
    sub_1C0573F24(v80, v82);
    v22 = static TerminalElement.MatchingSpan.== infix(_:_:)(__src);
    memcpy(__dst, v77, 0x301uLL);
    sub_1C0573F5C(__dst);
    memcpy(v82, __src, 0x301uLL);
    sub_1C0573F5C(v82);
    if (!v22)
    {
      return 0;
    }
  }

  else if (v70)
  {
    return 0;
  }

  if (v69 != v68 || v67 != v66 || v65 != v64 || v63 != v62 || v61 != v60 || v59 != v40 || v58 != v39 || v57 != v38 || v56 != v37 || v55 != v36)
  {
    return 0;
  }

  if (v54)
  {
    if (!v35 || (v53 != v34 || v54 != v35) && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  if (v52 != v33)
  {
    return 0;
  }

  if (v51 == 15)
  {
    if (v32 != 15)
    {
      return 0;
    }
  }

  else if (v32 == 15 || v51 != v32)
  {
    return 0;
  }

  if (v50)
  {
    if (!v31 || (v49 != v29 || v50 != v31) && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  if ((sub_1C055B098(v47, v30) & 1) == 0 || (sub_1C055B098(v48, v27) & 1) == 0 || (sub_1C056A1D8(v43, v28) & 1) == 0 || (sub_1C056A314(v44, v24) & 1) == 0)
  {
    return 0;
  }

  if ((v45 & 1) == 0)
  {
    v23 = v26;
    if (v46 != v25)
    {
      v23 = 1;
    }

    return (v23 & 1) == 0;
  }

  return v26 != 0;
}

uint64_t TerminalElement.OriginDetail.hash(into:)(uint64_t a1)
{
  memcpy(__dst, v1, 0x301uLL);
  v3 = sub_1C0573F8C(__dst);
  v4 = sub_1C0527300(__dst);
  if (!v3)
  {
    if (v4[1])
    {
      sub_1C095E00C();
      return sub_1C095D7BC();
    }

    return sub_1C095E00C();
  }

  if (v3 == 1)
  {
    memcpy(v8, v4, sizeof(v8));
    return TerminalElement.MatchingSpan.hash(into:)(a1);
  }

  if (!v4[4])
  {
    return sub_1C095E00C();
  }

  v6 = v4[1];
  v7 = v4[3];
  sub_1C095E00C();
  if (v6 == 1)
  {
    goto LABEL_13;
  }

  sub_1C095E00C();
  if (!v6)
  {
    sub_1C095E00C();
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1C095E00C();
    return sub_1C056DF84(a1);
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_10:
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C056DF84(a1);
}

uint64_t TerminalElement.OriginDetail.hashValue.getter()
{
  sub_1C095DFEC();
  memcpy(__dst, v0, 0x301uLL);
  v1 = sub_1C0573F8C(__dst);
  v2 = sub_1C0527300(__dst);
  if (!v1)
  {
    if (v2[1])
    {
      sub_1C095E00C();
      sub_1C095D7BC();
      return sub_1C095E03C();
    }

    goto LABEL_11;
  }

  if (v1 != 1)
  {
    if (v2[4])
    {
      v3 = v2[1];
      v4 = v2[3];
      sub_1C095E00C();
      if (v3 != 1)
      {
        sub_1C095E00C();
        if (v3)
        {
          sub_1C095E00C();
          sub_1C095D7BC();
          if (v4)
          {
LABEL_10:
            sub_1C095E00C();
            sub_1C095D7BC();
LABEL_14:
            sub_1C056DF84(v7);
            return sub_1C095E03C();
          }
        }

        else
        {
          sub_1C095E00C();
          if (v4)
          {
            goto LABEL_10;
          }
        }
      }

      sub_1C095E00C();
      goto LABEL_14;
    }

LABEL_11:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  memcpy(v6, v2, sizeof(v6));
  TerminalElement.MatchingSpan.hash(into:)(v7);
  return sub_1C095E03C();
}

uint64_t sub_1C05675B4(uint64_t a1)
{
  sub_1C095DFEC();
  memcpy(__dst, v1, 0x301uLL);
  v2 = sub_1C0573F8C(__dst);
  v3 = sub_1C0527300(__dst);
  if (!v2)
  {
    if (v3[1])
    {
      sub_1C095E00C();
      sub_1C095D7BC();
      return sub_1C095E03C();
    }

    goto LABEL_11;
  }

  if (v2 != 1)
  {
    if (v3[4])
    {
      v4 = v3[1];
      v5 = v3[3];
      sub_1C095E00C();
      if (v4 != 1)
      {
        sub_1C095E00C();
        if (v4)
        {
          sub_1C095E00C();
          sub_1C095D7BC();
          if (v5)
          {
LABEL_10:
            sub_1C095E00C();
            sub_1C095D7BC();
LABEL_14:
            sub_1C056DF84(v8);
            return sub_1C095E03C();
          }
        }

        else
        {
          sub_1C095E00C();
          if (v5)
          {
            goto LABEL_10;
          }
        }
      }

      sub_1C095E00C();
      goto LABEL_14;
    }

LABEL_11:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  memcpy(v7, v3, sizeof(v7));
  TerminalElement.MatchingSpan.hash(into:)(v8);
  return sub_1C095E03C();
}

uint64_t TerminalElement.DerivedOrigin.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  if (v3 != 1)
  {
    v4 = *(v1 + 24);
    sub_1C095E00C();
    if (v3)
    {
      sub_1C095E00C();
      sub_1C095D7BC();
      if (v4)
      {
LABEL_4:
        sub_1C095E00C();
        sub_1C095D7BC();
        goto LABEL_7;
      }
    }

    else
    {
      sub_1C095E00C();
      if (v4)
      {
        goto LABEL_4;
      }
    }
  }

  sub_1C095E00C();
LABEL_7:

  return sub_1C056DF84(a1);
}

uint64_t TerminalElement.DerivedOrigin.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1C095DFEC();
  if (v1 == 1)
  {
    goto LABEL_6;
  }

  sub_1C095E00C();
  if (!v1)
  {
    sub_1C095E00C();
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_6:
    sub_1C095E00C();
    goto LABEL_7;
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_1C095E00C();
  sub_1C095D7BC();
LABEL_7:
  sub_1C056DF84(v4);
  return sub_1C095E03C();
}

uint64_t sub_1C05678D8(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_1C095DFEC();
  if (v2 == 1)
  {
    goto LABEL_6;
  }

  sub_1C095E00C();
  if (!v2)
  {
    sub_1C095E00C();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_6:
    sub_1C095E00C();
    goto LABEL_7;
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_1C095E00C();
  sub_1C095D7BC();
LABEL_7:
  sub_1C056DF84(v5);
  return sub_1C095E03C();
}

uint64_t TerminalElement.AdjustmentReason.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_1C095E00C();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_1C095E00C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v2)
  {
    return sub_1C095E00C();
  }

LABEL_3:
  sub_1C095E00C();

  return sub_1C095D7BC();
}

uint64_t TerminalElement.AdjustmentReason.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1C095DFEC();
  if (!v1)
  {
    sub_1C095E00C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0567B14(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_1C095E00C();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_1C095E00C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v2)
  {
    return sub_1C095E00C();
  }

LABEL_3:
  sub_1C095E00C();

  return sub_1C095D7BC();
}

uint64_t sub_1C0567BCC(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_1C095DFEC();
  if (!v2)
  {
    sub_1C095E00C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t TerminalElement.ScalarValue.hash(into:)(uint64_t a1)
{
  memcpy(__dst, v1 + 2, sizeof(__dst));
  memcpy(v8, v1 + 2, 0x20AuLL);
  if (sub_1C0573598(v8) != 1)
  {
    sub_1C095E00C();
    memcpy(v5, __dst, 0x20AuLL);
    sub_1C05735AC(v5, v6);
    TerminalElement.Value.hash(into:)(a1);
    memcpy(v6, __dst, 0x20AuLL);
    sub_1C05735E4(v6);
    if (v1[71])
    {
      goto LABEL_3;
    }

    return sub_1C095E00C();
  }

  sub_1C095E00C();
  if (!v1[71])
  {
    return sub_1C095E00C();
  }

LABEL_3:
  v3 = v1[69];
  sub_1C095E00C();
  sub_1C095E00C();
  if (v3)
  {
    sub_1C095D7BC();
  }

  return sub_1C095D7BC();
}

uint64_t TerminalElement.ScalarValue.hashValue.getter()
{
  sub_1C095DFEC();
  memcpy(__dst, v0 + 2, sizeof(__dst));
  memcpy(v7, v0 + 2, 0x20AuLL);
  if (sub_1C0573598(v7) != 1)
  {
    sub_1C095E00C();
    memcpy(v3, __dst, 0x20AuLL);
    sub_1C05735AC(v3, v4);
    TerminalElement.Value.hash(into:)(v5);
    memcpy(v4, __dst, 0x20AuLL);
    sub_1C05735E4(v4);
    if (v0[71])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  if (!v0[71])
  {
    goto LABEL_6;
  }

LABEL_3:
  v1 = v0[69];
  sub_1C095E00C();
  sub_1C095E00C();
  if (v1)
  {
    sub_1C095D7BC();
  }

  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0567F48(uint64_t a1)
{
  sub_1C095DFEC();
  v2 = *v1;
  memcpy(__dst, (*v1 + 16), sizeof(__dst));
  memmove(v9, v2 + 2, 0x20AuLL);
  if (sub_1C0573598(v9) != 1)
  {
    sub_1C095E00C();
    memcpy(v5, __dst, 0x20AuLL);
    sub_1C05735AC(v5, v6);
    TerminalElement.Value.hash(into:)(v7);
    memcpy(v6, __dst, 0x20AuLL);
    sub_1C05735E4(v6);
    if (v2[71])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1C095E00C();
    return sub_1C095E03C();
  }

  sub_1C095E00C();
  if (!v2[71])
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = v2[69];
  sub_1C095E00C();
  sub_1C095E00C();
  if (v3)
  {
    sub_1C095D7BC();
  }

  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t TerminalElement.SemanticValue.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1C095E00C();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  return sub_1C095D7BC();
}

uint64_t TerminalElement.SemanticValue.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v1)
  {
    sub_1C095D7BC();
  }

  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05681A8()
{
  v1 = *(v0 + 8);
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v1)
  {
    sub_1C095D7BC();
  }

  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0568234(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1C095E00C();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  return sub_1C095D7BC();
}

uint64_t sub_1C05682BC(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1C095DFEC();
  sub_1C095E00C();
  if (v2)
  {
    sub_1C095D7BC();
  }

  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t static TerminalElement.OriginalValue.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_1C095DF3C();
  }
}

uint64_t TerminalElement.OriginalValue.hash(into:)(uint64_t a1)
{
  sub_1C095E00C();

  return sub_1C095D7BC();
}

uint64_t TerminalElement.OriginalValue.hashValue.getter()
{
  sub_1C095DFEC();
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0568448()
{
  sub_1C095DFEC();
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C05684AC(uint64_t a1)
{
  sub_1C095E00C();

  return sub_1C095D7BC();
}

uint64_t sub_1C0568500(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0568560(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_1C095DF3C();
  }
}

uint64_t sub_1C05685A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = v10 | (v4 << 6);
      v14 = (*(v3 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v3 + 56) + 8 * v13);

      v18 = sub_1C0516A8C(v15, v16);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
LABEL_133:

        return 0;
      }

      v21 = *(*(v2 + 56) + 8 * v18);
      v22 = v21 >> 62;
      if (v21 >> 62)
      {
        v113 = v21;
        v114 = sub_1C095DCDC();
        v21 = v113;
        v23 = v114;
      }

      else
      {
        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17 >> 62)
      {
        v125 = v23;
        v115 = v21;
        result = sub_1C095DCDC();
        v21 = v115;
        v23 = v125;
        if (v125 != result)
        {
          goto LABEL_133;
        }
      }

      else
      {
        result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23 != result)
        {
          goto LABEL_133;
        }
      }

      if (v23)
      {
        v24 = v21 & 0xFFFFFFFFFFFFFF8;
        v25 = (v21 & 0xFFFFFFFFFFFFFF8) + 32;
        v127 = v21 & 0xFFFFFFFFFFFFFF8;
        if (v21 < 0)
        {
          v24 = v21;
        }

        if (v22)
        {
          v25 = v24;
        }

        v26 = v17 & 0xFFFFFFFFFFFFFF8;
        v27 = (v17 & 0xFFFFFFFFFFFFFF8) + 32;
        v126 = v17 & 0xFFFFFFFFFFFFFF8;
        if (v17 < 0)
        {
          v26 = v17;
        }

        if (v17 >> 62)
        {
          v27 = v26;
        }

        if (v25 != v27)
        {
          break;
        }
      }

LABEL_119:

      if (!v8)
      {
        goto LABEL_7;
      }
    }

    if ((v23 & 0x8000000000000000) == 0)
    {
      v28 = v21 & 0xC000000000000001;
      v135 = v17 & 0xC000000000000001;
      v117 = v21 + 32;
      v142 = v21;

      v29 = 0;
      v143 = v17;
      v122 = v3;
      v123 = v2;
      v120 = v9;
      v121 = v5;
      v118 = v28;
      v119 = v8;
      v124 = v23;
      while (1)
      {
        if (__OFADD__(v29, 1))
        {
          goto LABEL_145;
        }

        v128 = v29 + 1;
        if (v28)
        {
          result = MEMORY[0x1C68DDAD0](v29, v142);
          v30 = result;
          if (v135)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v29 >= *(v127 + 16))
          {
            goto LABEL_147;
          }

          v30 = *(v117 + 8 * v29);

          if (v135)
          {
LABEL_32:
            v31 = MEMORY[0x1C68DDAD0](v29, v17);
            goto LABEL_37;
          }
        }

        if (v29 >= *(v126 + 16))
        {
          goto LABEL_148;
        }

LABEL_37:
        v32 = *(v30 + 24);
        v33 = *(v31 + 24);
        swift_unownedRetainStrong();
        v34 = v32[7];

        swift_unownedRetain();

        swift_unownedRetain();

        swift_unownedRetainStrong();
        v35 = v33[7];

        if (v34 != v35)
        {
          goto LABEL_128;
        }

        swift_unownedRetainStrong();
        v36 = v32;
        v37 = v32[8];
        v38 = v32[9];
        v39 = v36[10];
        v40 = v36[11];
        v159 = v36[12];

        v41 = v40;

        v161 = v36;

        swift_unownedRetainStrong();
        v42 = v33[8];
        v43 = v33[9];
        v44 = v33[10];
        v45 = v33[11];
        v156 = v33[12];

        if ((v37 != v42 || v38 != v43) && (sub_1C095DF3C() & 1) == 0 || (v39 != v44 || v41 != v45) && (sub_1C095DF3C() & 1) == 0)
        {

          swift_unownedRelease();
          goto LABEL_131;
        }

        v46 = v161;
        if (!v159)
        {
          if (v156)
          {
LABEL_135:

            goto LABEL_130;
          }

          goto LABEL_60;
        }

        if (!v156)
        {
          goto LABEL_135;
        }

        v47 = v159[1];
        v48 = v159[2];
        v49 = v159[3];
        v201 = v159[4];
        v200 = v49;
        v199 = v48;
        v198 = v47;
        v50 = v156[1];
        v51 = v156[2];
        v52 = v156[4];
        v211 = v156[3];
        v212 = v52;
        v210 = v51;
        v209 = v50;
        v165 = v199;
        v166 = v49;
        v167 = v201;
        v53 = *(&v50 + 1);
        v54 = v50;
        v55 = v156[3];
        v162 = v156[2];
        v163 = v55;
        v164 = v156[4];
        if (!*(&v198 + 1))
        {
          if (*(&v50 + 1))
          {
            v116 = *(&v198 + 1);
            v150 = v198;

            sub_1C05149F8(&v198, &v220, &qword_1EBE16D80, &qword_1C0970448);
            sub_1C05149F8(&v209, &v220, &qword_1EBE16D80, &qword_1C0970448);
LABEL_143:
            *&v220 = v150;
            *(&v220 + 1) = v116;
            v221 = v165;
            v222 = v166;
            v223 = v167;
            *&v224 = v54;
            *(&v224 + 1) = v53;
            v225 = v162;
            v226 = v163;
            v227 = v164;
            sub_1C05145B4(&v220, &qword_1EBE16D88, &qword_1C0970450);

LABEL_130:
            swift_unownedRelease();
            goto LABEL_131;
          }

          v220 = v198;
          v221 = v199;
          v222 = v200;
          v223 = v201;
          sub_1C05149F8(&v198, &v187, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v209, &v187, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05145B4(&v220, &qword_1EBE16D80, &qword_1C0970448);
LABEL_60:

          goto LABEL_66;
        }

        v220 = v198;
        v222 = v200;
        v223 = v201;
        v221 = v199;
        v150 = v198;
        v152 = *(&v199 + 1);
        v56 = *(&v200 + 1);
        v145 = *(&v201 + 1);
        if (!*(&v50 + 1))
        {
          v116 = *(&v198 + 1);

          sub_1C05149F8(&v198, &v187, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v209, &v187, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v220, &v187, &qword_1EBE16D80, &qword_1C0970448);

          v53 = 0;
          goto LABEL_143;
        }

        v57 = v221;
        v137 = v223;
        v139 = v222;
        v187 = v50;
        v189 = v163;
        v190 = v164;
        v188 = v162;
        v58 = v162;
        v59 = v163;
        v60 = v164;
        v148 = *(&v198 + 1);
        if (v198 == v50 || (sub_1C095DF3C()) && (__PAIR128__(v152, v57) == v58 || (sub_1C095DF3C()) && (__PAIR128__(v56, v139) == v59 || (sub_1C095DF3C()))
        {
          if (__PAIR128__(v145, v137) == v60)
          {

            sub_1C05149F8(&v198, &v176, &qword_1EBE16D80, &qword_1C0970448);
            sub_1C05149F8(&v209, &v176, &qword_1EBE16D80, &qword_1C0970448);
            sub_1C05149F8(&v220, &v176, &qword_1EBE16D80, &qword_1C0970448);
            v140 = 1;
          }

          else
          {
            v140 = sub_1C095DF3C();

            sub_1C05149F8(&v198, &v176, &qword_1EBE16D80, &qword_1C0970448);
            sub_1C05149F8(&v209, &v176, &qword_1EBE16D80, &qword_1C0970448);
            sub_1C05149F8(&v220, &v176, &qword_1EBE16D80, &qword_1C0970448);
          }

          v46 = v161;
        }

        else
        {

          sub_1C05149F8(&v198, &v176, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v209, &v176, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v220, &v176, &qword_1EBE16D80, &qword_1C0970448);
          v140 = 0;
          v46 = v161;
        }

        sub_1C05145B4(&v187, &qword_1EBE16D80, &qword_1C0970448);

        *&v176 = v150;
        *(&v176 + 1) = v148;
        v177 = v165;
        v178 = v166;
        v179 = v167;
        sub_1C05145B4(&v176, &qword_1EBE16D80, &qword_1C0970448);

        if ((v140 & 1) == 0)
        {
LABEL_128:

          swift_unownedRelease();
          goto LABEL_131;
        }

LABEL_66:
        swift_unownedRetainStrong();
        swift_beginAccess();
        v61 = v46[13];

        swift_unownedRetainStrong();
        swift_beginAccess();
        v62 = v33[13];

        v63 = *(v61 + 16);
        if (v63 != *(v62 + 16))
        {
LABEL_127:

          goto LABEL_130;
        }

        if (v63 && v61 != v62)
        {
          v64 = 0;
          v154 = v33;
          v129 = v62;
          v130 = v61;
          while (1)
          {
            v65 = *(v61 + v64 + 32);
            v66 = *(v61 + v64 + 40);
            v67 = *(v61 + v64 + 48);
            v68 = *(v61 + v64 + 56);
            v69 = *(v61 + v64 + 72);
            v141 = *(v61 + v64 + 64);
            v70 = *(v61 + v64 + 80);
            v157 = *(v61 + v64 + 88);
            v160 = *(v61 + v64 + 89);
            v138 = *(v61 + v64 + 92);
            v153 = *(v61 + v64 + 96);
            v134 = *(v61 + v64 + 100);
            v149 = *(v61 + v64 + 104);
            v132 = *(v61 + v64 + 112);
            v146 = *(v61 + v64 + 120);
            v71 = v62 + v64;
            v72 = *(v62 + v64 + 32);
            v73 = *(v62 + v64 + 40);
            v74 = *(v62 + v64 + 48);
            v75 = *(v62 + v64 + 56);
            v76 = *(v71 + 64);
            v77 = *(v71 + 72);
            v78 = *(v71 + 80);
            v155 = *(v71 + 88);
            v158 = *(v71 + 89);
            v136 = *(v71 + 92);
            v151 = *(v71 + 96);
            v133 = *(v71 + 100);
            v147 = *(v71 + 104);
            v131 = *(v71 + 112);
            v144 = *(v71 + 120);
            if ((v65 != v72 || v66 != v73) && (sub_1C095DF3C() & 1) == 0)
            {

              swift_unownedRelease();

              goto LABEL_139;
            }

            if ((v67 != v74 || v68 != v75) && (sub_1C095DF3C() & 1) == 0)
            {
              break;
            }

            if (v69)
            {
              v46 = v161;
              v62 = v129;
              v61 = v130;
              if (!v77 || (v141 != v76 || v69 != v77) && (sub_1C095DF3C() & 1) == 0)
              {
                goto LABEL_127;
              }
            }

            else
            {
              v46 = v161;
              v62 = v129;
              v61 = v130;
              if (v77)
              {
                goto LABEL_127;
              }
            }

            if (v157)
            {
              v33 = v154;
              v79 = v160;
              v80 = v158;
              if ((v155 & 1) == 0)
              {
                goto LABEL_127;
              }
            }

            else
            {
              v33 = v154;
              v79 = v160;
              v80 = v158;
              if ((v155 & 1) != 0 || v70 != v78)
              {
                goto LABEL_127;
              }
            }

            if (v79 == 7)
            {
              if (v80 != 7)
              {
                goto LABEL_129;
              }
            }

            else
            {
              if (v80 == 7)
              {
                goto LABEL_129;
              }

              if (v79 != v80)
              {
                goto LABEL_127;
              }
            }

            if (v153)
            {
              if ((v151 & 1) == 0)
              {
                goto LABEL_127;
              }
            }

            else if ((v151 & 1) != 0 || v138 != v136)
            {
              goto LABEL_127;
            }

            if (v149)
            {
              if ((v147 & 1) == 0)
              {
                goto LABEL_127;
              }
            }

            else if ((v147 & 1) != 0 || v134 != v133)
            {
              goto LABEL_127;
            }

            if (v146)
            {
              if ((v144 & 1) == 0)
              {
                goto LABEL_127;
              }
            }

            else if ((v144 & 1) != 0 || v132 != v131)
            {
              goto LABEL_127;
            }

            v64 += 96;
            if (!--v63)
            {
              goto LABEL_109;
            }
          }

          swift_unownedRelease();
LABEL_131:

          swift_unownedRelease();
LABEL_132:

          goto LABEL_133;
        }

LABEL_109:

        swift_unownedRetainStrong();
        v81 = v46[14];

        swift_unownedRetainStrong();
        v82 = v33[14];

        v83 = sub_1C055ACCC(v81, v82);

        if ((v83 & 1) == 0)
        {

          swift_unownedRelease();

LABEL_139:
          swift_unownedRelease();
          goto LABEL_132;
        }

        swift_unownedRetainStrong();
        swift_beginAccess();
        v84 = v46[15];

        swift_unownedRetainStrong();
        swift_beginAccess();
        v85 = v33[15];

        v86 = *(v84 + 16);
        if (v86 != *(v85 + 16))
        {
          goto LABEL_129;
        }

        if (v86 && v84 != v85)
        {
          v87 = v86 - 1;
          for (i = 32; ; i += 192)
          {
            v89 = *(v84 + i);
            v90 = *(v84 + i + 16);
            v91 = *(v84 + i + 48);
            v189 = *(v84 + i + 32);
            v190 = v91;
            v187 = v89;
            v188 = v90;
            v92 = *(v84 + i + 64);
            v93 = *(v84 + i + 80);
            v94 = *(v84 + i + 112);
            v193 = *(v84 + i + 96);
            v194 = v94;
            v191 = v92;
            v192 = v93;
            v95 = *(v84 + i + 128);
            v96 = *(v84 + i + 144);
            v97 = *(v84 + i + 160);
            *(v197 + 9) = *(v84 + i + 169);
            v197[0] = v97;
            v196 = v96;
            v195 = v95;
            v184 = *(v84 + i + 128);
            v185 = *(v84 + i + 144);
            v186[0] = *(v84 + i + 160);
            *(v186 + 9) = *(v84 + i + 169);
            v180 = *(v84 + i + 64);
            v181 = *(v84 + i + 80);
            v182 = *(v84 + i + 96);
            v183 = *(v84 + i + 112);
            v176 = *(v84 + i);
            v177 = *(v84 + i + 16);
            v178 = *(v84 + i + 32);
            v179 = *(v84 + i + 48);
            v98 = *(v85 + i);
            v99 = *(v85 + i + 16);
            v100 = *(v85 + i + 32);
            v201 = *(v85 + i + 48);
            v200 = v100;
            v199 = v99;
            v198 = v98;
            v101 = *(v85 + i + 64);
            v102 = *(v85 + i + 80);
            v103 = *(v85 + i + 96);
            v205 = *(v85 + i + 112);
            v204 = v103;
            v203 = v102;
            v202 = v101;
            v104 = *(v85 + i + 128);
            v105 = *(v85 + i + 144);
            v106 = *(v85 + i + 160);
            *(v208 + 9) = *(v85 + i + 169);
            v208[0] = v106;
            v207 = v105;
            v206 = v104;
            v107 = *(v85 + i + 144);
            v173 = *(v85 + i + 128);
            v174 = v107;
            v175[0] = *(v85 + i + 160);
            *(v175 + 9) = *(v85 + i + 169);
            v108 = *(v85 + i + 80);
            v169 = *(v85 + i + 64);
            v170 = v108;
            v109 = *(v85 + i + 112);
            v171 = *(v85 + i + 96);
            v172 = v109;
            v110 = *(v85 + i + 16);
            v165 = *(v85 + i);
            v166 = v110;
            v111 = *(v85 + i + 48);
            v167 = *(v85 + i + 32);
            v168 = v111;
            sub_1C0521E78(&v187, &v162);
            sub_1C0521E78(&v198, &v162);
            v112 = _s12SiriOntology13UsoEntitySpanV2eeoiySbAC_ACtFZ_0(&v176, &v165);
            v217 = v173;
            v218 = v174;
            v219[0] = v175[0];
            *(v219 + 9) = *(v175 + 9);
            v213 = v169;
            v214 = v170;
            v215 = v171;
            v216 = v172;
            v209 = v165;
            v210 = v166;
            v211 = v167;
            v212 = v168;
            sub_1C05755CC(&v209);
            v228 = v184;
            v229 = v185;
            v230[0] = v186[0];
            *(v230 + 9) = *(v186 + 9);
            v224 = v180;
            v225 = v181;
            v226 = v182;
            v227 = v183;
            v220 = v176;
            v221 = v177;
            v222 = v178;
            v223 = v179;
            sub_1C05755CC(&v220);
            if ((v112 & 1) == 0)
            {
              break;
            }

            if (!v87)
            {
              goto LABEL_117;
            }

            --v87;
          }

LABEL_129:

          goto LABEL_130;
        }

LABEL_117:

        swift_unownedRelease();

        result = swift_unownedRelease();
        v29 = v128;
        v2 = v123;
        v17 = v143;
        v5 = v121;
        v3 = v122;
        v8 = v119;
        v9 = v120;
        v28 = v118;
        if (v128 == v124)
        {

          goto LABEL_119;
        }
      }
    }
  }

  else
  {
LABEL_7:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return 1;
      }

      v12 = *(v5 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
    __break(1u);
LABEL_145:
    __break(1u);
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_1C0569898(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v61 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v62 = (v5 + 63) >> 6;
  v58 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v9 = (v7 - 1) & v7;
LABEL_13:
    v12 = *(*(v3 + 56) + 8 * (v8 | (v4 << 6)));
    v13 = sub_1C0514E38();
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    v15 = *(*(v2 + 56) + 8 * v13);
    v16 = *(v15 + 40);
    v17 = *(v12 + 40);
    if (v16 == 255)
    {
      if (v17 != 255)
      {
        return 0;
      }
    }

    else
    {
      if (v17 == 255)
      {
        return 0;
      }

      v18 = *(v15 + 24);
      v19 = *(v15 + 32);
      v21 = *(v12 + 24);
      v20 = *(v12 + 32);
      if (v16)
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_68;
        }

        if (v19)
        {
          if (!v20)
          {
            return 0;
          }

          v22 = v18 == v21 && v19 == v20;
          if (!v22 && (sub_1C095DF3C() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v20)
        {
          return 0;
        }
      }

      else
      {
        if (v17)
        {
          return 0;
        }

        if (v19)
        {
          if ((v20 & 1) == 0)
          {
            goto LABEL_68;
          }

          v18 = *(v12 + 24);
        }

        else if (v20 & 1 | (v18 != v21))
        {
LABEL_68:
          v48 = *(v12 + 32);
          v49 = *(v12 + 24);

          sub_1C0514B20(v49, v48, v17);

          return 0;
        }

        sub_1C0518BB4(v18, v20, 0);
      }
    }

    if (*(v15 + 56) != *(v12 + 56))
    {
      return 0;
    }

    v60 = v9;
    v23 = *(v15 + 64);
    v24 = *(v15 + 72);
    v26 = *(v15 + 80);
    v25 = *(v15 + 88);
    v27 = *(v15 + 96);
    v29 = *(v12 + 80);
    v28 = *(v12 + 88);
    v30 = *(v12 + 96);
    if (v23 != *(v12 + 64) || v24 != *(v12 + 72))
    {
      v32 = *(v12 + 96);
      v33 = v28;
      v34 = sub_1C095DF3C();
      v28 = v33;
      v30 = v32;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }

    v35 = v26 == v29 && v25 == v28;
    if (!v35 && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }

    if (v27)
    {
      if (!v30)
      {
        return 0;
      }

      v36 = v27[1];
      v37 = v27[2];
      v38 = v27[4];
      v82 = v27[3];
      v83 = v38;
      v80 = v36;
      v81 = v37;
      v39 = v30[1];
      v40 = v30[2];
      v41 = v30[4];
      v84[2] = v30[3];
      v84[3] = v41;
      v84[0] = v39;
      v84[1] = v40;
      v77 = v81;
      v78 = v82;
      v79 = v83;
      v42 = *(&v39 + 1);
      v43 = v30[3];
      v74 = v30[2];
      v75 = v43;
      v76 = v30[4];
      v44 = v80;
      if (!*(&v80 + 1))
      {
        v54 = v39;

        sub_1C05149F8(&v80, &v65, &qword_1EBE16D80, &qword_1C0970448);
        sub_1C05149F8(v84, &v65, &qword_1EBE16D80, &qword_1C0970448);

        if (v42)
        {
          goto LABEL_70;
        }

        v65 = v44;
        v66 = v77;
        v67 = v78;
        v68 = v79;
        sub_1C05145B4(&v65, &qword_1EBE16D80, &qword_1C0970448);

        v7 = v60;
        goto LABEL_62;
      }

      v65 = v80;
      v67 = v82;
      v68 = v83;
      v66 = v81;
      v57 = *(&v81 + 1);
      v56 = *(&v82 + 1);
      v55 = *(&v83 + 1);
      if (!*(&v39 + 1))
      {
        v54 = v39;

        sub_1C05149F8(&v80, v64, &qword_1EBE16D80, &qword_1C0970448);
        sub_1C05149F8(v84, v64, &qword_1EBE16D80, &qword_1C0970448);
        sub_1C05149F8(&v65, v64, &qword_1EBE16D80, &qword_1C0970448);

        v42 = 0;
LABEL_70:
        v65 = v44;
        v66 = v77;
        v67 = v78;
        v68 = v79;
        v69 = v54;
        v70 = v42;
        v71 = v74;
        v72 = v75;
        v73 = v76;
        sub_1C05145B4(&v65, &qword_1EBE16D88, &qword_1C0970450);

        return 0;
      }

      v45 = v66;
      v51 = v68;
      v52 = v67;
      v64[0] = v39;
      v64[2] = v75;
      v64[3] = v76;
      v64[1] = v74;
      v46 = v74;
      v47 = v75;
      v50 = v76;
      if (v80 == v39 || (sub_1C095DF3C()) && (__PAIR128__(v57, v45) == v46 || (sub_1C095DF3C()) && (__PAIR128__(v56, v52) == v47 || (sub_1C095DF3C()))
      {
        if (__PAIR128__(v55, v51) == v50)
        {

          sub_1C05149F8(&v80, v63, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(v84, v63, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v65, v63, &qword_1EBE16D80, &qword_1C0970448);
          v53 = 1;
        }

        else
        {
          v53 = sub_1C095DF3C();

          sub_1C05149F8(&v80, v63, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(v84, v63, &qword_1EBE16D80, &qword_1C0970448);
          sub_1C05149F8(&v65, v63, &qword_1EBE16D80, &qword_1C0970448);
        }
      }

      else
      {

        sub_1C05149F8(&v80, v63, &qword_1EBE16D80, &qword_1C0970448);
        sub_1C05149F8(v84, v63, &qword_1EBE16D80, &qword_1C0970448);
        sub_1C05149F8(&v65, v63, &qword_1EBE16D80, &qword_1C0970448);
        v53 = 0;
      }

      sub_1C05145B4(v64, &qword_1EBE16D80, &qword_1C0970448);

      v63[0] = v44;
      v63[1] = v77;
      v63[2] = v78;
      v63[3] = v79;
      sub_1C05145B4(v63, &qword_1EBE16D80, &qword_1C0970448);

      result = 0;
      v2 = a2;
      v7 = v60;
      v3 = v58;
      if ((v53 & 1) == 0)
      {
        return result;
      }
    }

    else
    {

      swift_retain_n();

      v7 = v60;
      if (v30)
      {

        return 0;
      }

LABEL_62:
      v3 = v58;
      v2 = a2;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v62)
    {
      return 1;
    }

    v11 = *(v61 + 8 * v4);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C056A1D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1C0516A8C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C056A314(uint64_t result, uint64_t a2)
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

    v20 = sub_1C0516A8C(v15, v16);
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
      v25 = sub_1C095DF3C();

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

uint64_t sub_1C056A4B8(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0);
  v63 = *(v60 - 8);
  v4 = MEMORY[0x1EEE9AC00](v60);
  v64 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DF0, &qword_1C09704C8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v12);
  v62 = (&v55 - v16);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v58 = v14;
  v59 = v8;
  v17 = 0;
  v18 = *(a1 + 64);
  v56 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v57 = v22;
  while (v21)
  {
    v61 = (v21 - 1) & v21;
    v31 = __clz(__rbit64(v21)) | (v17 << 6);
    v32 = v59;
    v33 = v62;
LABEL_17:
    v38 = *(*(a1 + 48) + 4 * v31);
    sub_1C0575968(*(a1 + 56) + *(v63 + 72) * v31, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DF8, &unk_1C09704D0);
    v40 = *(v39 + 48);
    *v14 = v38;
    sub_1C0575688(v10, v14 + v40, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    (*(*(v39 - 8) + 56))(v14, 0, 1, v39);
LABEL_18:
    sub_1C0575620(v14, v33, &qword_1EBE16DF0, &qword_1C09704C8);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DF8, &unk_1C09704D0);
    v42 = (*(*(v41 - 8) + 48))(v33, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = *(v41 + 48);
    v45 = *v33;
    sub_1C0575688(v33 + v44, v32, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    v46 = sub_1C057EAB4(v45);
    if ((v47 & 1) == 0)
    {
      goto LABEL_30;
    }

    v48 = v64;
    sub_1C0575968(*(a2 + 56) + *(v63 + 72) * v46, v64, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    v49 = *v48;
    v50 = *v32;
    v51 = *(*v48 + 16);
    if (v51 != *(*v32 + 16))
    {
      goto LABEL_29;
    }

    if (v51 && v49 != v50)
    {
      v52 = (v49 + 32);
      v53 = (v50 + 32);
      while (*v52 == *v53)
      {
        ++v52;
        ++v53;
        if (!--v51)
        {
          goto LABEL_6;
        }
      }

LABEL_29:
      sub_1C0575908(v64, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
LABEL_30:
      sub_1C0575908(v32, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
      return 0;
    }

LABEL_6:
    v23 = a1;
    v24 = a2;
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v25 = v10;
    v26 = v64;
    v27 = v32;
    v28 = sub_1C095D73C();
    v29 = v26;
    v10 = v25;
    sub_1C0575908(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    v30 = v27;
    a2 = v24;
    a1 = v23;
    v14 = v58;
    result = sub_1C0575908(v30, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
    v22 = v57;
    v21 = v61;
    if ((v28 & 1) == 0)
    {
      return v43;
    }
  }

  if (v22 <= v17 + 1)
  {
    v34 = v17 + 1;
  }

  else
  {
    v34 = v22;
  }

  v35 = v34 - 1;
  v32 = v59;
  v33 = v62;
  while (1)
  {
    v36 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v36 >= v22)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DF8, &unk_1C09704D0);
      (*(*(v54 - 8) + 56))(v14, 1, 1, v54);
      v61 = 0;
      v17 = v35;
      goto LABEL_18;
    }

    v37 = *(v56 + 8 * v36);
    ++v17;
    if (v37)
    {
      v61 = (v37 - 1) & v37;
      v31 = __clz(__rbit64(v37)) | (v36 << 6);
      v17 = v36;
      goto LABEL_17;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

unint64_t sub_1C056AA5C(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 4 * v12);
    result = sub_1C057EAB4(*(*(v3 + 48) + 4 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 4 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C056AB64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  MEMORY[0x1EEE9AC00](v4);
  v149 = (&v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D38, &unk_1C0970400);
  MEMORY[0x1EEE9AC00](v144);
  v7 = &v124 - v6;
  v147 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  v8 = *(v147 - 8);
  v9 = MEMORY[0x1EEE9AC00](v147);
  v150 = (&v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v143 = (&v124 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v124 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v145 = &v124 - v16;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D48, &qword_1C0970410);
  MEMORY[0x1EEE9AC00](v146);
  v18 = &v124 - v17;
  v152 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0);
  v154 = *(v152 - 8);
  v19 = MEMORY[0x1EEE9AC00](v152);
  v158 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v124 - v21;
  v148 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues(0);
  v156 = *(v148 - 8);
  v23 = MEMORY[0x1EEE9AC00](v148);
  v157 = (&v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v124 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v151 = &v124 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D50, &qword_1C0970418);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v155 = (&v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v30);
  v153 = (&v124 - v33);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v132 = v14;
  v126 = v4;
  v133 = v7;
  v34 = 0;
  v35 = *(a1 + 64);
  v130 = a1 + 64;
  v36 = 1 << *(a1 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v35;
  v39 = (v36 + 63) >> 6;
  v134 = (v8 + 48);
  v137 = a2;
  v136 = a1;
  v135 = v39;
  v140 = v22;
  while (v38)
  {
    v43 = v18;
    v142 = (v38 - 1) & v38;
    v44 = __clz(__rbit64(v38)) | (v34 << 6);
LABEL_17:
    v50 = (*(a1 + 48) + 16 * v44);
    v52 = *v50;
    v51 = v50[1];
    v53 = v151;
    sub_1C0575968(*(a1 + 56) + *(v156 + 72) * v44, v151, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D58, &unk_1C0970420);
    v55 = *(v54 + 48);
    v56 = v155;
    *v155 = v52;
    v56[1] = v51;
    v47 = v56;
    sub_1C0575688(v53, v56 + v55, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
    (*(*(v54 - 8) + 56))(v47, 0, 1, v54);

    v18 = v43;
    v22 = v140;
LABEL_18:
    v57 = v153;
    sub_1C0575620(v47, v153, &qword_1EBE16D50, &qword_1C0970418);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D58, &unk_1C0970420);
    v59 = (*(*(v58 - 8) + 48))(v57, 1, v58);
    v42 = v59 == 1;
    if (v59 == 1)
    {
      return v42;
    }

    v60 = *(v58 + 48);
    v61 = *v57;
    v62 = v57[1];
    sub_1C0575688(v57 + v60, v27, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
    v63 = sub_1C0516A8C(v61, v62);
    v64 = v27;
    v66 = v65;

    if ((v66 & 1) == 0)
    {
      goto LABEL_109;
    }

    v141 = v42;
    v67 = v157;
    result = sub_1C0575968(*(a2 + 56) + *(v156 + 72) * v63, v157, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
    v68 = *v67;
    v69 = *v64;
    v70 = *(v68 + 16);
    v27 = v64;
    if (v70 != *(*v64 + 16))
    {
LABEL_108:
      sub_1C0575908(v157, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
      v64 = v27;
LABEL_109:
      sub_1C0575908(v64, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
      return 0;
    }

    if (v70 && v68 != v69)
    {
      v71 = 0;
      v72 = (*(v154 + 80) + 32) & ~*(v154 + 80);
      v73 = v68 + v72;
      v138 = v27;
      v139 = v69 + v72;
      v129 = v68;
      v128 = v69;
      v127 = v70;
      v131 = v68 + v72;
      while (1)
      {
        if (v71 >= *(v68 + 16))
        {
          goto LABEL_114;
        }

        v74 = *(v154 + 72) * v71;
        result = sub_1C0575968(v73 + v74, v22, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        if (v71 >= *(v69 + 16))
        {
          goto LABEL_115;
        }

        v75 = v158;
        sub_1C0575968(v139 + v74, v158, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        if ((*v22 != *v75 || *(v22 + 1) != v75[1]) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_107;
        }

        result = *(v22 + 2);
        if (result != *(v158 + 16) || *(v22 + 3) != *(v158 + 24))
        {
          result = sub_1C095DF3C();
          if ((result & 1) == 0)
          {
            goto LABEL_107;
          }
        }

        if (*(v22 + 4) != *(v158 + 32))
        {
          goto LABEL_107;
        }

        if (v22[40] != *(v158 + 40))
        {
          goto LABEL_107;
        }

        v76 = *(v22 + 6);
        v77 = *(v158 + 48);
        v78 = *(v76 + 16);
        if (v78 != *(v77 + 16))
        {
          goto LABEL_107;
        }

        if (v78 && v76 != v77)
        {
          v79 = (v76 + 40);
          v80 = (v77 + 40);
          do
          {
            result = *(v79 - 1);
            if (result != *(v80 - 1) || *v79 != *v80)
            {
              result = sub_1C095DF3C();
              if ((result & 1) == 0)
              {
                goto LABEL_107;
              }
            }

            v79 += 2;
            v80 += 2;
          }

          while (--v78);
        }

        v82 = *(v22 + 7);
        v83 = *(v158 + 56);
        v84 = *(v82 + 16);
        if (v84 != *(v83 + 16))
        {
          goto LABEL_107;
        }

        if (v84 && v82 != v83)
        {
          break;
        }

LABEL_51:
        v86 = *(v152 + 40);
        v87 = *(v146 + 48);
        sub_1C05149F8(&v22[v86], v18, &qword_1EBE16D40, &qword_1C09A7AD0);
        sub_1C05149F8(v158 + v86, &v18[v87], &qword_1EBE16D40, &qword_1C09A7AD0);
        v88 = *v134;
        v89 = v147;
        if ((*v134)(v18, 1, v147) == 1)
        {
          v90 = v88(&v18[v87], 1, v89);
          v73 = v131;
          if (v90 != 1)
          {
            goto LABEL_101;
          }
        }

        else
        {
          v91 = v18;
          v92 = v18;
          v93 = v145;
          sub_1C05149F8(v91, v145, &qword_1EBE16D40, &qword_1C09A7AD0);
          if (v88(&v92[v87], 1, v89) == 1)
          {
            sub_1C0575908(v93, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
            v18 = v92;
LABEL_101:
            v121 = &qword_1EBE16D48;
            v122 = &qword_1C0970410;
            goto LABEL_106;
          }

          v125 = v92;
          v94 = &v92[v87];
          v95 = v132;
          sub_1C0575688(v94, v132, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          v96 = v133;
          v97 = &v133[*(v144 + 48)];
          sub_1C0575968(v93, v133, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575968(v95, v97, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v98 = v150;
            sub_1C0575968(v96, v150, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v73 = v131;
            if (EnumCaseMultiPayload != 1)
            {
              sub_1C0575908(v98, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_104:
              v18 = v125;
              sub_1C05145B4(v133, &qword_1EBE16D38, &unk_1C0970400);
              goto LABEL_105;
            }

            v100 = v97;
            v101 = v149;
            sub_1C0575688(v100, v149, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
            v18 = v125;
            if ((*v98 != *v101 || v98[1] != v101[1]) && (sub_1C095DF3C() & 1) == 0)
            {
              goto LABEL_98;
            }

            if ((v150[2] != v149[2] || v150[3] != v149[3]) && (sub_1C095DF3C() & 1) == 0)
            {
              goto LABEL_98;
            }

            if ((v150[4] != v149[4] || v150[5] != v149[5]) && (sub_1C095DF3C() & 1) == 0)
            {
              goto LABEL_98;
            }

            v102 = v150[6];
            v103 = v149[6];
            v104 = *(v102 + 16);
            if (v104 != *(v103 + 16))
            {
              goto LABEL_98;
            }

            if (v104 && v102 != v103)
            {
              v105 = (v102 + 40);
              v106 = (v103 + 40);
              while (1)
              {
                v107 = *(v105 - 1) == *(v106 - 1) && *v105 == *v106;
                if (!v107 && (sub_1C095DF3C() & 1) == 0)
                {
                  break;
                }

                v105 += 2;
                v106 += 2;
                if (!--v104)
                {
                  goto LABEL_89;
                }
              }

LABEL_98:
              sub_1C0575908(v149, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
              sub_1C0575908(v150, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_99:
              sub_1C0575908(v133, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
LABEL_105:
              v123 = v145;
              sub_1C0575908(v132, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
              sub_1C0575908(v123, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
              v121 = &qword_1EBE16D40;
              v122 = &qword_1C09A7AD0;
LABEL_106:
              sub_1C05145B4(v18, v121, v122);
LABEL_107:
              sub_1C0575908(v158, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
              sub_1C0575908(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
              v27 = v138;
              goto LABEL_108;
            }

LABEL_89:
            sub_1C095D38C();
            sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
            if ((sub_1C095D73C() & 1) == 0)
            {
              goto LABEL_98;
            }

            sub_1C0575908(v149, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
            sub_1C0575908(v150, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
          }

          else
          {
            v111 = v143;
            sub_1C0575968(v96, v143, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
            v113 = *v111;
            v112 = v111[1];
            v114 = swift_getEnumCaseMultiPayload();
            v73 = v131;
            if (v114 == 1)
            {

              goto LABEL_104;
            }

            v115 = *v97;
            v116 = *(v97 + 1);
            v18 = v125;
            if (v113 == v115 && v112 == v116)
            {
            }

            else
            {
              v117 = sub_1C095DF3C();

              if ((v117 & 1) == 0)
              {
                goto LABEL_99;
              }
            }
          }

          sub_1C0575908(v133, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575908(v132, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          sub_1C0575908(v145, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
        }

        sub_1C05145B4(v18, &qword_1EBE16D40, &qword_1C09A7AD0);
        sub_1C095D38C();
        sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        v118 = v158;
        v119 = sub_1C095D73C();
        sub_1C0575908(v118, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        result = sub_1C0575908(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue);
        v27 = v138;
        v68 = v129;
        v69 = v128;
        if ((v119 & 1) == 0)
        {
          goto LABEL_108;
        }

        if (++v71 == v127)
        {
          goto LABEL_6;
        }
      }

      v108 = (v82 + 40);
      v109 = (v83 + 40);
      while (v84)
      {
        result = *(v108 - 1);
        if (result != *(v109 - 1) || *v108 != *v109)
        {
          result = sub_1C095DF3C();
          if ((result & 1) == 0)
          {
            goto LABEL_107;
          }
        }

        v108 += 2;
        v109 += 2;
        if (!--v84)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_113;
    }

LABEL_6:
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v40 = v157;
    v41 = sub_1C095D73C();
    sub_1C0575908(v40, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
    result = sub_1C0575908(v27, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
    a2 = v137;
    a1 = v136;
    v39 = v135;
    v38 = v142;
    v42 = v141;
    if ((v41 & 1) == 0)
    {
      return v42;
    }
  }

  if (v39 <= v34 + 1)
  {
    v45 = v34 + 1;
  }

  else
  {
    v45 = v39;
  }

  v46 = v45 - 1;
  v47 = v155;
  while (1)
  {
    v48 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v48 >= v39)
    {
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D58, &unk_1C0970420);
      (*(*(v120 - 8) + 56))(v47, 1, 1, v120);
      v142 = 0;
      v34 = v46;
      goto LABEL_18;
    }

    v49 = *(v130 + 8 * v48);
    ++v34;
    if (v49)
    {
      v43 = v18;
      v142 = (v49 - 1) & v49;
      v44 = __clz(__rbit64(v49)) | (v48 << 6);
      v34 = v48;
      goto LABEL_17;
    }
  }

  __break(1u);
  __break(1u);
LABEL_113:
  __break(1u);
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
  return result;
}

uint64_t sub_1C056BC6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo(0);
  v5 = *(v4 - 8);
  v79 = v4;
  v80 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos(0);
  v76 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v77 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v65 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D28, &qword_1C09703F0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v20);
  v75 = (&v65 - v24);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v68 = v11;
  v69 = a1;
  v25 = 0;
  v26 = *(a1 + 64);
  v66 = a1 + 64;
  v67 = v18;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v65 = (v27 + 63) >> 6;
  v74 = v22;
  v70 = v16;
  v71 = a2;
  while (v29)
  {
    v73 = (v29 - 1) & v29;
    v32 = __clz(__rbit64(v29)) | (v25 << 6);
LABEL_17:
    v37 = (*(a1 + 48) + 16 * v32);
    v39 = *v37;
    v38 = v37[1];
    sub_1C0575968(*(a1 + 56) + *(v76 + 72) * v32, v18, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D30, &qword_1C09703F8);
    v41 = *(v40 + 48);
    v42 = v74;
    *v74 = v39;
    *(v42 + 1) = v38;
    v22 = v42;
    sub_1C0575688(v18, &v42[v41], type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
    (*(*(v40 - 8) + 56))(v22, 0, 1, v40);

LABEL_18:
    v43 = v75;
    sub_1C0575620(v22, v75, &qword_1EBE16D28, &qword_1C09703F0);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D30, &qword_1C09703F8);
    v45 = (*(*(v44 - 8) + 48))(v43, 1, v44) == 1;
    result = v45;
    if (v45)
    {
      return result;
    }

    v72 = v45;
    v46 = *(v44 + 48);
    v47 = *v43;
    v48 = v43[1];
    sub_1C0575688(v43 + v46, v16, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
    v49 = v47;
    v50 = v71;
    v51 = sub_1C0516A8C(v49, v48);
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      goto LABEL_37;
    }

    v54 = *(v50 + 56) + *(v76 + 72) * v51;
    v55 = v77;
    result = sub_1C0575968(v54, v77, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
    v56 = *v55;
    v57 = *v16;
    v58 = *(*v55 + 16);
    if (v58 != *(v57 + 16))
    {
LABEL_36:
      sub_1C0575908(v77, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
      v16 = v70;
LABEL_37:
      sub_1C0575908(v16, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
      return 0;
    }

    if (v58 && v56 != v57)
    {
      v59 = 0;
      v60 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v78 = v56 + v60;
      v61 = v57 + v60;
      while (v59 < *(v56 + 16))
      {
        v62 = *(v80 + 72) * v59;
        result = sub_1C0575968(v78 + v62, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
        if (v59 >= *(v57 + 16))
        {
          goto LABEL_42;
        }

        sub_1C0575968(v61 + v62, v8, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
        if ((*v10 != *v8 || v10[1] != v8[1]) && (sub_1C095DF3C() & 1) == 0 || (sub_1C05606D0(v10[2], v8[2]) & 1) == 0)
        {
          sub_1C0575908(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
          sub_1C0575908(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
          goto LABEL_36;
        }

        sub_1C095D38C();
        sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        v63 = sub_1C095D73C();
        sub_1C0575908(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
        result = sub_1C0575908(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);
        if ((v63 & 1) == 0)
        {
          goto LABEL_36;
        }

        if (v58 == ++v59)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_41;
    }

LABEL_6:
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v30 = v77;
    v16 = v70;
    v31 = sub_1C095D73C();
    sub_1C0575908(v30, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
    sub_1C0575908(v16, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
    a1 = v69;
    v18 = v67;
    v29 = v73;
    v22 = v74;
    result = v72;
    if ((v31 & 1) == 0)
    {
      return result;
    }
  }

  if (v65 <= v25 + 1)
  {
    v33 = v25 + 1;
  }

  else
  {
    v33 = v65;
  }

  v34 = v33 - 1;
  while (1)
  {
    v35 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v35 >= v65)
    {
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D30, &qword_1C09703F8);
      (*(*(v64 - 8) + 56))(v22, 1, 1, v64);
      v73 = 0;
      v25 = v34;
      goto LABEL_18;
    }

    v36 = *(v66 + 8 * v35);
    ++v25;
    if (v36)
    {
      v73 = (v36 - 1) & v36;
      v32 = __clz(__rbit64(v36)) | (v35 << 6);
      v25 = v35;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t TerminalElement.MatchingSpan.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 552);
  v4 = *(v1 + 568);
  v19 = *(v1 + 576);
  v20 = *(v1 + 584);
  v21 = *(v1 + 592);
  v22 = *(v1 + 600);
  v23 = *(v1 + 608);
  v24 = *(v1 + 616);
  v25 = *(v1 + 624);
  v26 = *(v1 + 632);
  v27 = *(v1 + 656);
  v28 = *(v1 + 664);
  v18 = *(v1 + 672);
  v5 = *(v1 + 688);
  v29 = *(v1 + 696);
  v30 = *(v1 + 704);
  v31 = *(v1 + 712);
  v6 = *(v1 + 720);
  v17 = *(v1 + 728);
  v7 = *(v1 + 736);
  if (*(v1 + 8))
  {
    sub_1C095E00C();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  memcpy(__dst, (v1 + 16), 0x20AuLL);
  if (sub_1C0573598(__dst) == 1)
  {
    sub_1C095E00C();
  }

  else
  {
    sub_1C095E00C();
    memcpy(v33, (v1 + 16), 0x20AuLL);
    sub_1C05735AC(v33, v32);
    TerminalElement.Value.hash(into:)(a1);
    memcpy(v32, (v1 + 16), 0x20AuLL);
    sub_1C05735E4(v32);
  }

  v8 = v7;
  v9 = v6;
  v10 = v5;
  sub_1C095E00C();
  if (v3)
  {
    sub_1C095D7BC();
  }

  if (v4)
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_1C095E00C();
    v11 = v29;
    if (v20)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  sub_1C095E00C();
  if (!v19)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_1C095E00C();
  memcpy(v32, (v19 + 16), 0x301uLL);
  TerminalElement.MatchingSpan.hash(into:)(a1);
  v11 = v29;
  if (v20)
  {
LABEL_12:
    sub_1C095E00C();
    memcpy(v32, (v20 + 16), 0x301uLL);
    TerminalElement.MatchingSpan.hash(into:)(a1);
    goto LABEL_16;
  }

LABEL_15:
  sub_1C095E00C();
LABEL_16:
  MEMORY[0x1C68DDE90](v21);
  MEMORY[0x1C68DDE90](v22);
  MEMORY[0x1C68DDE90](v23);
  MEMORY[0x1C68DDE90](v24);
  MEMORY[0x1C68DDE90](v25);
  MEMORY[0x1C68DDE90](v26);
  sub_1C095E00C();
  sub_1C095E00C();
  sub_1C095E00C();
  sub_1C095E00C();
  sub_1C095E00C();
  if (v27)
  {
    sub_1C095D7BC();
  }

  MEMORY[0x1C68DDE90](v28);
  if (v18 == 15)
  {
    sub_1C095E00C();
    if (v10)
    {
LABEL_20:
      sub_1C095E00C();
      sub_1C095D7BC();
      goto LABEL_23;
    }
  }

  else
  {
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v18);
    if (v10)
    {
      goto LABEL_20;
    }
  }

  sub_1C095E00C();
LABEL_23:
  MEMORY[0x1C68DDE90](*(v11 + 16));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 40;
    do
    {

      sub_1C095D7BC();

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  MEMORY[0x1C68DDE90](*(v30 + 16));
  v14 = *(v30 + 16);
  if (v14)
  {
    v15 = v30 + 40;
    do
    {

      sub_1C095D7BC();

      v15 += 16;
      --v14;
    }

    while (v14);
  }

  sub_1C0571C3C(a1, v31);
  sub_1C0571AD0(a1, v9);
  if (v8)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  return MEMORY[0x1C68DDEC0](v17);
}

uint64_t TerminalElement.MatchingSpan.hashValue.getter()
{
  sub_1C095DFEC();
  TerminalElement.MatchingSpan.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C056C8B8()
{
  sub_1C095DFEC();
  TerminalElement.MatchingSpan.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C056C8FC(uint64_t a1)
{
  sub_1C095DFEC();
  TerminalElement.MatchingSpan.hash(into:)(v2);
  return sub_1C095E03C();
}

uint64_t AnyMatchingSpan.matchingSpan.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x301uLL);
  memcpy(a1, (v1 + 16), 0x301uLL);
  return sub_1C0573F24(__dst, v4);
}

uint64_t AnyMatchingSpan.__allocating_init(_:)(const void *a1)
{
  v2 = swift_allocObject();
  memcpy((v2 + 16), a1, 0x301uLL);
  return v2;
}

uint64_t AnyMatchingSpan.deinit()
{
  memcpy(__dst, (v0 + 16), 0x301uLL);
  sub_1C0573F5C(__dst);
  return v0;
}

uint64_t AnyMatchingSpan.__deallocating_deinit()
{
  memcpy(__dst, (v0 + 16), 0x301uLL);
  sub_1C0573F5C(__dst);
  return swift_deallocClassInstance();
}

uint64_t static AnyMatchingSpan.== infix(_:_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, (v1 + 16), 0x301uLL);
  memcpy(__src, (v4 + 16), 0x301uLL);
  memcpy(v9, (v3 + 16), 0x301uLL);
  memcpy(v6, (v3 + 16), sizeof(v6));
  sub_1C0573F24(__dst, v11);
  sub_1C0573F24(v9, v11);
  LOBYTE(v3) = static TerminalElement.MatchingSpan.== infix(_:_:)(__src);
  memcpy(v10, v6, 0x301uLL);
  sub_1C0573F5C(v10);
  memcpy(v11, __src, 0x301uLL);
  sub_1C0573F5C(v11);
  return v3 & 1;
}

uint64_t AnyMatchingSpan.hashValue.getter()
{
  sub_1C095DFEC();
  memcpy(v2, (v0 + 16), sizeof(v2));
  TerminalElement.MatchingSpan.hash(into:)(v3);
  return sub_1C095E03C();
}

uint64_t sub_1C056CC18()
{
  v1 = *v0;
  sub_1C095DFEC();
  memcpy(v3, (v1 + 16), sizeof(v3));
  TerminalElement.MatchingSpan.hash(into:)(v4);
  return sub_1C095E03C();
}

uint64_t sub_1C056CCC8(uint64_t a1)
{
  sub_1C095DFEC();
  memcpy(v3, (*v1 + 16), sizeof(v3));
  TerminalElement.MatchingSpan.hash(into:)(v4);
  return sub_1C095E03C();
}

uint64_t sub_1C056CD1C(uint64_t a1)
{
  v1 = *MEMORY[0x1EEE9AC00](a1);
  v3 = *v2;
  memcpy(__dst, (v1 + 16), 0x301uLL);
  memcpy(__src, (v1 + 16), 0x301uLL);
  memcpy(v8, (v3 + 16), 0x301uLL);
  memcpy(v5, (v3 + 16), sizeof(v5));
  sub_1C0573F24(__dst, v10);
  sub_1C0573F24(v8, v10);
  LOBYTE(v1) = static TerminalElement.MatchingSpan.== infix(_:_:)(__src);
  memcpy(v9, v5, 0x301uLL);
  sub_1C0573F5C(v9);
  memcpy(v10, __src, 0x301uLL);
  sub_1C0573F5C(v10);
  return v1 & 1;
}

uint64_t sub_1C056CE08(uint64_t a1)
{
  memcpy(__dst, v1, 0x301uLL);
  if (sub_1C05757D8(__dst) == 1)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  memcpy(v9, v1, 0x301uLL);
  v4 = sub_1C0573F8C(v9);
  v5 = sub_1C0527300(v9);
  if (!v4)
  {
    if (v5[1])
    {
      sub_1C095E00C();
      return sub_1C095D7BC();
    }

    return sub_1C095E00C();
  }

  if (v4 == 1)
  {
    memcpy(v8, v5, sizeof(v8));
    return TerminalElement.MatchingSpan.hash(into:)(a1);
  }

  if (!v5[4])
  {
    return sub_1C095E00C();
  }

  v6 = v5[1];
  v7 = v5[3];
  sub_1C095E00C();
  if (v6 == 1)
  {
    goto LABEL_14;
  }

  sub_1C095E00C();
  if (!v6)
  {
    sub_1C095E00C();
    if (v7)
    {
      goto LABEL_12;
    }

LABEL_14:
    sub_1C095E00C();
    return sub_1C056DF84(a1);
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_12:
  sub_1C095E00C();
  sub_1C095D7BC();
  return sub_1C056DF84(a1);
}

uint64_t sub_1C056CFA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 - 8);
      v7 = *(v5 + 40);
      MEMORY[0x1C68DDEC0](*(v5 - 16));
      MEMORY[0x1C68DDEC0](v6);
      sub_1C095E01C();

      sub_1C095D7BC();
      sub_1C095D7BC();
      if (v7 && (sub_1C095E00C(), *(v7 + 24)))
      {
        sub_1C095E00C();
        sub_1C095D7BC();
        sub_1C095D7BC();
        sub_1C095D7BC();
        sub_1C095D7BC();
      }

      else
      {
        sub_1C095E00C();
      }

      v5 += 64;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C056D100(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = a2 + 52;
    do
    {
      sub_1C095E01C();
      sub_1C095E01C();
      sub_1C095E01C();
      sub_1C095E01C();
      sub_1C095E01C();
      result = sub_1C095E01C();
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C056D194(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = *(v2 + 16);
  result = MEMORY[0x1C68DDE90](v5);
  if (v5)
  {
    v7 = 0;
    v8 = v3 + 32;
    v31 = v5;
    v32 = v8;
    do
    {
      memcpy(v43, (v8 + 1344 * v7), sizeof(v43));
      memcpy(v44, (v8 + 1344 * v7), 0x20AuLL);
      if (sub_1C0573598(v44) == 1)
      {
        sub_1C095E00C();
        goto LABEL_7;
      }

      memcpy(v40, v43, 0x20AuLL);
      sub_1C095E00C();
      memcpy(v41, v40, 0x20AuLL);
      v13 = sub_1C057363C(v41);
      if (v13 <= 3)
      {
        if (v13 > 1)
        {
          if (v13 != 2)
          {
            v15 = *sub_1C05272F0(v41);
            goto LABEL_46;
          }

          v18 = sub_1C05272F0(v41);
          MEMORY[0x1C68DDE90](*v18);
        }

        else if (v13)
        {
          sub_1C05272F0(v41);
          sub_1C095E01C();
        }

        else
        {
          v14 = *sub_1C05272F0(v41);
          if (v14 == 0.0)
          {
            v14 = 0.0;
          }

          v15 = v14;
LABEL_46:
          MEMORY[0x1C68DDEC0](*&v15);
        }

LABEL_7:
        sub_1C0575738(v43, v42);
        goto LABEL_8;
      }

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
LABEL_36:
          sub_1C05272F0(v41);
          sub_1C0575738(v43, v42);
          sub_1C05149F8(v43, v42, &qword_1EBE16C70, &unk_1C099BB20);
          sub_1C095D7BC();
          v8 = v32;
          sub_1C05145B4(v43, &qword_1EBE16C70, &unk_1C099BB20);
          goto LABEL_8;
        }

        v22 = sub_1C05272F0(v41);
        memcpy(__dst, v22, 0x20AuLL);
        sub_1C0575738(v43, v42);
        TerminalElement.DateTimeValue.hash(into:)(v4);
      }

      else
      {
        if (v13 == 6)
        {
          v21 = *sub_1C05272F0(v41);
          memcpy(__src, v21 + 2, 0x20AuLL);
          memmove(__dst, v21 + 2, 0x20AuLL);
          if (sub_1C0573598(__dst) == 1)
          {
            sub_1C095E00C();
            sub_1C0575738(v43, v42);
            goto LABEL_78;
          }

          memcpy(v36, __src, sizeof(v36));
          sub_1C095E00C();
          memcpy(v37, v36, 0x20AuLL);
          v23 = sub_1C057363C(v37);
          if (v23 > 3)
          {
            if (v23 <= 5)
            {
              if (v23 == 4)
              {
                goto LABEL_69;
              }

              v29 = sub_1C05272F0(v37);
              memcpy(v35, v29, 0x20AuLL);
              sub_1C0575738(v43, v42);
              sub_1C05149F8(v43, v42, &qword_1EBE16C70, &unk_1C099BB20);
              TerminalElement.DateTimeValue.hash(into:)(v4);
              goto LABEL_85;
            }

            if (v23 != 6)
            {
              if (v23 != 7)
              {
                if (*(sub_1C05272F0(v37) + 8))
                {
                  sub_1C095E00C();
                  sub_1C0575738(v43, v42);
                  sub_1C05149F8(v43, v42, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(__src, v42, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C095D7BC();
                }

                else
                {
                  sub_1C095E00C();
                  sub_1C0575738(v43, v42);
                  sub_1C05149F8(v43, v42, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(__src, v42, &qword_1EBE16C70, &unk_1C099BB20);
                }

                goto LABEL_83;
              }

LABEL_69:
              sub_1C05272F0(v37);
              sub_1C0575738(v43, v42);
              sub_1C05149F8(v43, v42, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(__src, v42, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C095D7BC();
              v8 = v32;
LABEL_84:
              sub_1C05145B4(__src, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_85:
              if (v21[71])
              {
                v30 = v21[69];
                sub_1C095E00C();
                sub_1C095E00C();
                if (v30)
                {
                  sub_1C095D7BC();
                }

                v5 = v31;
                sub_1C095D7BC();
                sub_1C05145B4(v43, &qword_1EBE16C70, &unk_1C099BB20);
              }

              else
              {
                sub_1C095E00C();
                sub_1C05145B4(v43, &qword_1EBE16C70, &unk_1C099BB20);
                v5 = v31;
              }

              goto LABEL_8;
            }

            v27 = *sub_1C05272F0(v37);
            memcpy(v34, v27 + 2, 0x20AuLL);
            memmove(v35, v27 + 2, 0x20AuLL);
            if (sub_1C0573598(v35) == 1)
            {
              sub_1C095E00C();
              sub_1C0575738(v43, v42);
              sub_1C05149F8(v43, v42, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(__src, v42, &qword_1EBE16C70, &unk_1C099BB20);
              if (v27[71])
              {
LABEL_72:
                v28 = v27[69];
                sub_1C095E00C();
                sub_1C095E00C();
                if (v28)
                {
                  sub_1C095D7BC();
                }

LABEL_83:
                sub_1C095D7BC();
                goto LABEL_84;
              }
            }

            else
            {
              memcpy(v33, v34, sizeof(v33));
              sub_1C095E00C();
              sub_1C0575738(v43, v42);
              sub_1C05149F8(v43, v42, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(__src, v42, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(v34, v42, &qword_1EBE16C70, &unk_1C099BB20);
              TerminalElement.Value.hash(into:)(v4);
              memcpy(v42, v33, 0x20AuLL);
              sub_1C05735E4(v42);
              if (v27[71])
              {
                goto LABEL_72;
              }
            }

            sub_1C095E00C();
            goto LABEL_84;
          }

          if (v23 > 1)
          {
            if (v23 != 2)
            {
              v25 = *sub_1C05272F0(v37);
              goto LABEL_76;
            }

            v26 = sub_1C05272F0(v37);
            MEMORY[0x1C68DDE90](*v26);
          }

          else if (v23)
          {
            sub_1C05272F0(v37);
            sub_1C095E01C();
          }

          else
          {
            v24 = *sub_1C05272F0(v37);
            if (v24 == 0.0)
            {
              v24 = 0.0;
            }

            v25 = v24;
LABEL_76:
            MEMORY[0x1C68DDEC0](*&v25);
          }

          sub_1C0575738(v43, v42);
LABEL_78:
          sub_1C05149F8(v43, v42, &qword_1EBE16C70, &unk_1C099BB20);
          goto LABEL_85;
        }

        if (v13 == 7)
        {
          goto LABEL_36;
        }

        if (*(sub_1C05272F0(v41) + 8))
        {
          sub_1C095E00C();
          sub_1C0575738(v43, v42);
          sub_1C05149F8(v43, v42, &qword_1EBE16C70, &unk_1C099BB20);
          sub_1C095D7BC();
        }

        else
        {
          sub_1C095E00C();
          sub_1C0575738(v43, v42);
          sub_1C05149F8(v43, v42, &qword_1EBE16C70, &unk_1C099BB20);
        }

        sub_1C095D7BC();
        sub_1C05145B4(v43, &qword_1EBE16C70, &unk_1C099BB20);
        v8 = v32;
      }

LABEL_8:
      v9 = v43[66];
      MEMORY[0x1C68DDE90](*(v43[66] + 16));
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v9 + 40;
        do
        {

          sub_1C095D7BC();

          v11 += 16;
          --v10;
        }

        while (v10);
      }

      memcpy(v42, &v43[67], 0x309uLL);
      if (sub_1C0573614(v42) != 1)
      {
        v12 = LOBYTE(v43[67]);
        memcpy(v41, &v43[67] + 1, sizeof(v41));
        sub_1C095E00C();
        sub_1C095E00C();
        if (v12 != 9)
        {
          sub_1C095D7BC();
        }

        memcpy(v40, &v41[7], 0x301uLL);
        if (sub_1C05757D8(v40) != 1)
        {
          sub_1C095E00C();
          memcpy(__dst, &v41[7], 0x301uLL);
          v16 = sub_1C0573F8C(__dst);
          v17 = sub_1C0527300(__dst);
          if (v16)
          {
            if (v16 == 1)
            {
              memcpy(__src, v17, 0x301uLL);
              TerminalElement.MatchingSpan.hash(into:)(v4);
              goto LABEL_28;
            }

            if (v17[4])
            {
              v19 = v17[1];
              v20 = v17[3];
              sub_1C095E00C();
              if (v19 == 1)
              {
                sub_1C095E00C();
                v5 = v31;
              }

              else
              {
                sub_1C095E00C();
                sub_1C095E00C();
                if (v19)
                {
                  sub_1C095D7BC();
                }

                v5 = v31;
                sub_1C095E00C();
                if (v20)
                {
                  sub_1C095D7BC();
                }
              }

              sub_1C056DF84(v4);
              goto LABEL_28;
            }
          }

          else if (v17[1])
          {
            sub_1C095E00C();
            sub_1C095D7BC();
            goto LABEL_28;
          }
        }
      }

      sub_1C095E00C();
LABEL_28:
      if (v43[167])
      {
        sub_1C095E00C();
        sub_1C095E00C();
        sub_1C095D7BC();
      }

      else
      {
        sub_1C095E00C();
      }

      result = sub_1C0575770(v43);
      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t sub_1C056DF84(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = *(v2 + 16);
  result = MEMORY[0x1C68DDE90](v5);
  v82 = v5;
  if (v5)
  {
    v7 = 0;
    v81 = v3 + 32;
    while (1)
    {
      v83 = v7;
      v8 = v81 + 32 * v7;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);

      v84 = v10;

      sub_1C095D7BC();
      MEMORY[0x1C68DDE90](*(v9 + 16));
      v85 = v9;
      v11 = *(v9 + 16);
      if (v11)
      {
        v12 = v85 + 40;
        do
        {

          sub_1C095D7BC();

          v12 += 16;
          --v11;
        }

        while (v11);
      }

      MEMORY[0x1C68DDE90](*(v84 + 16));
      v13 = *(v84 + 16);
      if (v13)
      {
        break;
      }

LABEL_3:

      v7 = v83 + 1;
      if (v83 + 1 == v82)
      {
        return result;
      }
    }

    v14 = 0;
    v86 = *(v84 + 16);
    v87 = v84 + 32;
    while (1)
    {
      memcpy(v118, (v87 + 1344 * v14), sizeof(v118));
      memcpy(v119, (v87 + 1344 * v14), 0x20AuLL);
      if (sub_1C0573598(v119) == 1)
      {
        sub_1C095E00C();
        goto LABEL_13;
      }

      memcpy(v114, v118, 0x20AuLL);
      sub_1C095E00C();
      memcpy(v115, v114, 0x20AuLL);
      v18 = sub_1C057363C(v115);
      if (v18 <= 3)
      {
        if (v18 > 1)
        {
          if (v18 != 2)
          {
            v21 = *sub_1C05272F0(v115);
            goto LABEL_55;
          }

          v24 = sub_1C05272F0(v115);
          MEMORY[0x1C68DDE90](*v24);
        }

        else if (v18)
        {
          sub_1C05272F0(v115);
          sub_1C095E01C();
        }

        else
        {
          v20 = *sub_1C05272F0(v115);
          if (v20 == 0.0)
          {
            v20 = 0.0;
          }

          v21 = v20;
LABEL_55:
          MEMORY[0x1C68DDEC0](*&v21);
        }

LABEL_13:
        sub_1C0575738(v118, v117);
        goto LABEL_14;
      }

      if (v18 <= 5)
      {
        if (v18 == 4)
        {
LABEL_41:
          sub_1C05272F0(v115);
          sub_1C0575738(v118, v117);
          sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
          sub_1C095D7BC();
          v13 = v86;
          sub_1C05145B4(v118, &qword_1EBE16C70, &unk_1C099BB20);
          goto LABEL_14;
        }

        v30 = sub_1C05272F0(v115);
        memcpy(v116, v30, 0x20AuLL);
        sub_1C0575738(v118, v117);
        TerminalElement.DateTimeValue.hash(into:)(v4);
      }

      else
      {
        if (v18 == 6)
        {
          v29 = *sub_1C05272F0(v115);
          memcpy(v113, v29 + 2, 0x20AuLL);
          memmove(v116, v29 + 2, 0x20AuLL);
          if (sub_1C0573598(v116) == 1)
          {
            sub_1C095E00C();
            sub_1C0575738(v118, v117);
            goto LABEL_92;
          }

          memcpy(v111, v113, sizeof(v111));
          sub_1C095E00C();
          memcpy(v112, v111, 0x20AuLL);
          v31 = sub_1C057363C(v112);
          if (v31 > 3)
          {
            if (v31 <= 5)
            {
              if (v31 == 4)
              {
                goto LABEL_81;
              }

              v41 = sub_1C05272F0(v112);
              memcpy(v110, v41, 0x20AuLL);
              sub_1C0575738(v118, v117);
              sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
              TerminalElement.DateTimeValue.hash(into:)(v4);
              goto LABEL_104;
            }

            if (v31 != 6)
            {
              if (v31 != 7)
              {
                if (*(sub_1C05272F0(v112) + 8))
                {
                  sub_1C095E00C();
                  sub_1C0575738(v118, v117);
                  sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C095D7BC();
                }

                else
                {
                  sub_1C095E00C();
                  sub_1C0575738(v118, v117);
                  sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                }

                goto LABEL_102;
              }

LABEL_81:
              sub_1C05272F0(v112);
              sub_1C0575738(v118, v117);
              sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C095D7BC();
              v13 = v86;
LABEL_103:
              sub_1C05145B4(v113, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_104:
              if (v29[71])
              {
                v43 = v29[69];
                sub_1C095E00C();
                sub_1C095E00C();
                if (v43)
                {
                  sub_1C095D7BC();
                }

                sub_1C095D7BC();
                sub_1C05145B4(v118, &qword_1EBE16C70, &unk_1C099BB20);
              }

              else
              {
                sub_1C095E00C();
                sub_1C05145B4(v118, &qword_1EBE16C70, &unk_1C099BB20);
              }

              goto LABEL_14;
            }

            v39 = *sub_1C05272F0(v112);
            memcpy(v109, v39 + 2, 0x20AuLL);
            memmove(v110, v39 + 2, 0x20AuLL);
            if (sub_1C0573598(v110) == 1)
            {
              sub_1C095E00C();
              goto LABEL_84;
            }

            memcpy(v107, v109, sizeof(v107));
            sub_1C095E00C();
            memcpy(v108, v107, 0x20AuLL);
            v42 = sub_1C057363C(v108);
            if (v42 > 3)
            {
              if (v42 <= 5)
              {
                if (v42 == 4)
                {
                  goto LABEL_117;
                }

                v48 = sub_1C05272F0(v108);
                memcpy(v106, v48, 0x20AuLL);
                sub_1C0575738(v118, v117);
                sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                TerminalElement.DateTimeValue.hash(into:)(v4);
LABEL_85:
                if (v39[71])
                {
                  v40 = v39[69];
                  sub_1C095E00C();
                  sub_1C095E00C();
                  if (v40)
                  {
                    sub_1C095D7BC();
                  }

LABEL_102:
                  sub_1C095D7BC();
                }

                else
                {
                  sub_1C095E00C();
                }

                goto LABEL_103;
              }

              if (v42 != 6)
              {
                if (v42 != 7)
                {
                  v80 = v39;
                  if (*(sub_1C05272F0(v108) + 8))
                  {
                    sub_1C095E00C();
                    sub_1C0575738(v118, v117);
                    sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C095D7BC();
                  }

                  else
                  {
                    sub_1C095E00C();
                    sub_1C0575738(v118, v117);
                    sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  }

                  goto LABEL_165;
                }

LABEL_117:
                sub_1C05272F0(v108);
                sub_1C0575738(v118, v117);
                sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C095D7BC();
                v13 = v86;
                sub_1C05145B4(v109, &qword_1EBE16C70, &unk_1C099BB20);
                goto LABEL_85;
              }

              v80 = v39;
              v47 = *sub_1C05272F0(v108);
              memcpy(v105, v47 + 2, 0x20AuLL);
              memmove(v106, v47 + 2, 0x20AuLL);
              if (sub_1C0573598(v106) == 1)
              {
                sub_1C095E00C();
                goto LABEL_120;
              }

              memcpy(v103, v105, sizeof(v103));
              sub_1C095E00C();
              memcpy(v104, v103, 0x20AuLL);
              v49 = sub_1C057363C(v104);
              if (v49 > 3)
              {
                if (v49 <= 5)
                {
                  if (v49 == 4)
                  {
                    goto LABEL_140;
                  }

                  v55 = sub_1C05272F0(v104);
                  memcpy(v102, v55, 0x20AuLL);
                  sub_1C0575738(v118, v117);
                  sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  TerminalElement.DateTimeValue.hash(into:)(v4);
                  goto LABEL_161;
                }

                if (v49 != 6)
                {
                  if (v49 != 7)
                  {
                    if (*(sub_1C05272F0(v104) + 8))
                    {
                      sub_1C095E00C();
                      sub_1C0575738(v118, v117);
                      sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C095D7BC();
                    }

                    else
                    {
                      sub_1C095E00C();
                      sub_1C0575738(v118, v117);
                      sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    }

                    goto LABEL_159;
                  }

LABEL_140:
                  sub_1C05272F0(v104);
                  sub_1C0575738(v118, v117);
                  sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C095D7BC();
                  v13 = v86;
LABEL_160:
                  sub_1C05145B4(v105, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_161:
                  if (v47[71])
                  {
                    v57 = v47[69];
                    sub_1C095E00C();
                    sub_1C095E00C();
                    if (v57)
                    {
                      sub_1C095D7BC();
                    }

LABEL_165:
                    sub_1C095D7BC();
                  }

                  else
                  {
                    sub_1C095E00C();
                  }

                  sub_1C05145B4(v109, &qword_1EBE16C70, &unk_1C099BB20);
                  v39 = v80;
                  goto LABEL_85;
                }

                v53 = *sub_1C05272F0(v104);
                memcpy(v101, v53 + 2, 0x20AuLL);
                memmove(v102, v53 + 2, 0x20AuLL);
                if (sub_1C0573598(v102) == 1)
                {
                  sub_1C095E00C();
                  goto LABEL_143;
                }

                memcpy(v99, v101, sizeof(v99));
                sub_1C095E00C();
                memcpy(v100, v99, 0x20AuLL);
                v56 = sub_1C057363C(v100);
                if (v56 > 3)
                {
                  if (v56 <= 5)
                  {
                    if (v56 == 4)
                    {
                      goto LABEL_175;
                    }

                    v62 = sub_1C05272F0(v100);
                    memcpy(v98, v62, 0x20AuLL);
                    sub_1C0575738(v118, v117);
                    sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    TerminalElement.DateTimeValue.hash(into:)(v4);
LABEL_144:
                    if (v53[71])
                    {
                      v54 = v53[69];
                      sub_1C095E00C();
                      sub_1C095E00C();
                      if (v54)
                      {
                        sub_1C095D7BC();
                      }

LABEL_159:
                      sub_1C095D7BC();
                    }

                    else
                    {
                      sub_1C095E00C();
                    }

                    goto LABEL_160;
                  }

                  if (v56 != 6)
                  {
                    if (v56 != 7)
                    {
                      v79 = v53;
                      if (*(sub_1C05272F0(v100) + 8))
                      {
                        sub_1C095E00C();
                        sub_1C0575738(v118, v117);
                        sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C095D7BC();
                      }

                      else
                      {
                        sub_1C095E00C();
                        sub_1C0575738(v118, v117);
                        sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      }

                      sub_1C095D7BC();
                      sub_1C05145B4(v101, &qword_1EBE16C70, &unk_1C099BB20);
                      v13 = v86;
                      goto LABEL_250;
                    }

LABEL_175:
                    sub_1C05272F0(v100);
                    sub_1C0575738(v118, v117);
                    sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C095D7BC();
                    v13 = v86;
                    sub_1C05145B4(v101, &qword_1EBE16C70, &unk_1C099BB20);
                    goto LABEL_144;
                  }

                  v61 = *sub_1C05272F0(v100);
                  memcpy(v97, (v61 + 16), 0x20AuLL);
                  v78 = v61;
                  memmove(v98, (v61 + 16), 0x20AuLL);
                  v79 = v53;
                  if (sub_1C0573598(v98) == 1)
                  {
                    sub_1C095E00C();
                    sub_1C0575738(v118, v117);
                    sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    goto LABEL_244;
                  }

                  memcpy(__dst, v97, sizeof(__dst));
                  sub_1C095E00C();
                  memcpy(v96, __dst, 0x20AuLL);
                  v63 = sub_1C057363C(v96);
                  if (v63 > 3)
                  {
                    if (v63 <= 5)
                    {
                      if (v63 == 4)
                      {
                        goto LABEL_196;
                      }

                      v68 = sub_1C05272F0(v96);
                      memcpy(v94, v68, 0x20AuLL);
                      sub_1C0575738(v118, v117);
                      sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      TerminalElement.DateTimeValue.hash(into:)(v4);
                      goto LABEL_243;
                    }

                    if (v63 != 6)
                    {
                      if (v63 != 7)
                      {
                        if (*(sub_1C05272F0(v96) + 8))
                        {
                          sub_1C095E00C();
                          sub_1C0575738(v118, v117);
                          sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v97, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C095D7BC();
                        }

                        else
                        {
                          sub_1C095E00C();
                          sub_1C0575738(v118, v117);
                          sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v97, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        }

                        goto LABEL_241;
                      }

LABEL_196:
                      sub_1C05272F0(v96);
                      sub_1C0575738(v118, v117);
                      sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C05149F8(v97, v117, &qword_1EBE16C70, &unk_1C099BB20);
                      sub_1C095D7BC();
LABEL_242:
                      sub_1C05145B4(v97, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_243:
                      v13 = v86;
LABEL_244:
                      if (*(v78 + 568))
                      {
                        v77 = *(v78 + 552);
                        sub_1C095E00C();
                        sub_1C095E00C();
                        if (v77)
                        {
                          sub_1C095D7BC();
                        }

                        sub_1C095D7BC();
                      }

                      else
                      {
                        sub_1C095E00C();
                      }

                      sub_1C05145B4(v101, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_250:
                      v53 = v79;
                      goto LABEL_144;
                    }

                    v67 = *sub_1C05272F0(v96);
                    memcpy(__src, v67 + 2, 0x20AuLL);
                    memmove(v94, v67 + 2, 0x20AuLL);
                    if (sub_1C0573598(v94) == 1)
                    {
                      sub_1C095E00C();
                      goto LABEL_201;
                    }

                    memcpy(v91, __src, sizeof(v91));
                    sub_1C095E00C();
                    memcpy(v92, v91, 0x20AuLL);
                    v69 = sub_1C057363C(v92);
                    if (v69 > 3)
                    {
                      if (v69 <= 5)
                      {
                        if (v69 == 4)
                        {
                          goto LABEL_220;
                        }

                        v74 = sub_1C05272F0(v92);
                        memcpy(v90, v74, 0x20AuLL);
                        sub_1C0575738(v118, v117);
                        sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        sub_1C05149F8(v97, v117, &qword_1EBE16C70, &unk_1C099BB20);
                        TerminalElement.DateTimeValue.hash(into:)(v4);
                      }

                      else
                      {
                        if (v69 == 6)
                        {
                          v73 = *sub_1C05272F0(v92);
                          memcpy(v89, v73 + 2, 0x20AuLL);
                          memmove(v90, v73 + 2, 0x20AuLL);
                          if (sub_1C0573598(v90) == 1)
                          {
                            sub_1C095E00C();
                            sub_1C0575738(v118, v117);
                            sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v97, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(__src, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          }

                          else
                          {
                            memcpy(v88, v89, sizeof(v88));
                            sub_1C095E00C();
                            sub_1C0575738(v118, v117);
                            sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v97, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(__src, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            sub_1C05149F8(v89, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            TerminalElement.Value.hash(into:)(v4);
                            memcpy(v117, v88, 0x20AuLL);
                            sub_1C05735E4(v117);
                          }

                          if (v73[71])
                          {
                            v75 = v73[69];
                            sub_1C095E00C();
                            sub_1C095E00C();
                            if (v75)
                            {
                              sub_1C095D7BC();
                            }

LABEL_235:
                            sub_1C095D7BC();
                          }

                          else
                          {
                            sub_1C095E00C();
                          }
                        }

                        else
                        {
                          if (v69 != 7)
                          {
                            if (*(sub_1C05272F0(v92) + 8))
                            {
                              sub_1C095E00C();
                              sub_1C0575738(v118, v117);
                              sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v97, v117, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(__src, v117, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C095D7BC();
                            }

                            else
                            {
                              sub_1C095E00C();
                              sub_1C0575738(v118, v117);
                              sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(v97, v117, &qword_1EBE16C70, &unk_1C099BB20);
                              sub_1C05149F8(__src, v117, &qword_1EBE16C70, &unk_1C099BB20);
                            }

                            goto LABEL_235;
                          }

LABEL_220:
                          sub_1C05272F0(v92);
                          sub_1C0575738(v118, v117);
                          sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(v97, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C05149F8(__src, v117, &qword_1EBE16C70, &unk_1C099BB20);
                          sub_1C095D7BC();
                        }

                        sub_1C05145B4(__src, &qword_1EBE16C70, &unk_1C099BB20);
                      }

LABEL_237:
                      if (v67[71])
                      {
                        v76 = v67[69];
                        sub_1C095E00C();
                        sub_1C095E00C();
                        if (v76)
                        {
                          sub_1C095D7BC();
                        }

LABEL_241:
                        sub_1C095D7BC();
                      }

                      else
                      {
                        sub_1C095E00C();
                      }

                      goto LABEL_242;
                    }

                    if (v69 > 1)
                    {
                      if (v69 != 2)
                      {
                        v71 = *sub_1C05272F0(v92);
                        goto LABEL_228;
                      }

                      v72 = sub_1C05272F0(v92);
                      MEMORY[0x1C68DDE90](*v72);
                    }

                    else if (v69)
                    {
                      sub_1C05272F0(v92);
                      sub_1C095E01C();
                    }

                    else
                    {
                      v70 = *sub_1C05272F0(v92);
                      if (v70 == 0.0)
                      {
                        v70 = 0.0;
                      }

                      v71 = v70;
LABEL_228:
                      MEMORY[0x1C68DDEC0](*&v71);
                    }

LABEL_201:
                    sub_1C0575738(v118, v117);
                    sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    sub_1C05149F8(v97, v117, &qword_1EBE16C70, &unk_1C099BB20);
                    goto LABEL_237;
                  }

                  if (v63 > 1)
                  {
                    if (v63 != 2)
                    {
                      v65 = *sub_1C05272F0(v96);
                      goto LABEL_205;
                    }

                    v66 = sub_1C05272F0(v96);
                    MEMORY[0x1C68DDE90](*v66);
                  }

                  else if (v63)
                  {
                    sub_1C05272F0(v96);
                    sub_1C095E01C();
                  }

                  else
                  {
                    v64 = *sub_1C05272F0(v96);
                    if (v64 == 0.0)
                    {
                      v64 = 0.0;
                    }

                    v65 = v64;
LABEL_205:
                    MEMORY[0x1C68DDEC0](*&v65);
                  }

                  sub_1C0575738(v118, v117);
                  sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  sub_1C05149F8(v101, v117, &qword_1EBE16C70, &unk_1C099BB20);
                  goto LABEL_243;
                }

                if (v56 > 1)
                {
                  if (v56 != 2)
                  {
                    v59 = *sub_1C05272F0(v100);
                    goto LABEL_180;
                  }

                  v60 = sub_1C05272F0(v100);
                  MEMORY[0x1C68DDE90](*v60);
                }

                else if (v56)
                {
                  sub_1C05272F0(v100);
                  sub_1C095E01C();
                }

                else
                {
                  v58 = *sub_1C05272F0(v100);
                  if (v58 == 0.0)
                  {
                    v58 = 0.0;
                  }

                  v59 = v58;
LABEL_180:
                  MEMORY[0x1C68DDEC0](*&v59);
                }

LABEL_143:
                sub_1C0575738(v118, v117);
                sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
                sub_1C05149F8(v105, v117, &qword_1EBE16C70, &unk_1C099BB20);
                goto LABEL_144;
              }

              if (v49 > 1)
              {
                if (v49 != 2)
                {
                  v51 = *sub_1C05272F0(v104);
                  goto LABEL_149;
                }

                v52 = sub_1C05272F0(v104);
                MEMORY[0x1C68DDE90](*v52);
              }

              else if (v49)
              {
                sub_1C05272F0(v104);
                sub_1C095E01C();
              }

              else
              {
                v50 = *sub_1C05272F0(v104);
                if (v50 == 0.0)
                {
                  v50 = 0.0;
                }

                v51 = v50;
LABEL_149:
                MEMORY[0x1C68DDEC0](*&v51);
              }

LABEL_120:
              sub_1C0575738(v118, v117);
              sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
              sub_1C05149F8(v109, v117, &qword_1EBE16C70, &unk_1C099BB20);
              goto LABEL_161;
            }

            if (v42 > 1)
            {
              if (v42 != 2)
              {
                v45 = *sub_1C05272F0(v108);
                goto LABEL_123;
              }

              v46 = sub_1C05272F0(v108);
              MEMORY[0x1C68DDE90](*v46);
            }

            else if (v42)
            {
              sub_1C05272F0(v108);
              sub_1C095E01C();
            }

            else
            {
              v44 = *sub_1C05272F0(v108);
              if (v44 == 0.0)
              {
                v44 = 0.0;
              }

              v45 = v44;
LABEL_123:
              MEMORY[0x1C68DDEC0](*&v45);
            }

LABEL_84:
            sub_1C0575738(v118, v117);
            sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
            sub_1C05149F8(v113, v117, &qword_1EBE16C70, &unk_1C099BB20);
            goto LABEL_85;
          }

          if (v31 > 1)
          {
            if (v31 != 2)
            {
              v37 = *sub_1C05272F0(v112);
              goto LABEL_90;
            }

            v38 = sub_1C05272F0(v112);
            MEMORY[0x1C68DDE90](*v38);
          }

          else if (v31)
          {
            sub_1C05272F0(v112);
            sub_1C095E01C();
          }

          else
          {
            v36 = *sub_1C05272F0(v112);
            if (v36 == 0.0)
            {
              v36 = 0.0;
            }

            v37 = v36;
LABEL_90:
            MEMORY[0x1C68DDEC0](*&v37);
          }

          sub_1C0575738(v118, v117);
LABEL_92:
          sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
          goto LABEL_104;
        }

        if (v18 == 7)
        {
          goto LABEL_41;
        }

        if (*(sub_1C05272F0(v115) + 8))
        {
          sub_1C095E00C();
          sub_1C0575738(v118, v117);
          sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
          sub_1C095D7BC();
        }

        else
        {
          sub_1C095E00C();
          sub_1C0575738(v118, v117);
          sub_1C05149F8(v118, v117, &qword_1EBE16C70, &unk_1C099BB20);
        }

        sub_1C095D7BC();
        sub_1C05145B4(v118, &qword_1EBE16C70, &unk_1C099BB20);
        v13 = v86;
      }

LABEL_14:
      v15 = v118[66];
      MEMORY[0x1C68DDE90](*(v118[66] + 16));
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = v15 + 40;
        do
        {

          sub_1C095D7BC();

          v17 += 16;
          --v16;
        }

        while (v16);
      }

      memcpy(v117, &v118[67], 0x309uLL);
      if (sub_1C0573614(v117) == 1)
      {
        sub_1C095E00C();
        if (!v118[167])
        {
          goto LABEL_50;
        }

        goto LABEL_9;
      }

      v19 = LOBYTE(v118[67]);
      memcpy(v116, &v118[67] + 1, sizeof(v116));
      sub_1C095E00C();
      sub_1C095E00C();
      memcpy(v115, &v118[67], 0x309uLL);
      sub_1C05149F8(&v118[67], v114, &qword_1EBE16C78, &qword_1C096E850);
      sub_1C05757A0(v115, v114);
      if (v19 != 9)
      {
        sub_1C095D7BC();
      }

      memcpy(v114, &v116[7], 0x301uLL);
      if (sub_1C05757D8(v114) == 1)
      {
        sub_1C095E00C();
        goto LABEL_49;
      }

      sub_1C095E00C();
      memcpy(v113, &v116[7], 0x301uLL);
      v22 = sub_1C0573F8C(v113);
      v23 = sub_1C0527300(v113);
      if (!v22)
      {
        if (v23[1])
        {
          sub_1C095E00C();
          sub_1C095D7BC();
        }

        else
        {
LABEL_47:
          sub_1C095E00C();
        }

        goto LABEL_48;
      }

      if (v22 == 1)
      {
        memcpy(v115, v23, 0x301uLL);
        TerminalElement.MatchingSpan.hash(into:)(v4);
LABEL_48:
        sub_1C05145B4(&v118[67], &qword_1EBE16C78, &qword_1C096E850);
LABEL_49:
        sub_1C05145B4(&v118[67], &qword_1EBE16C78, &qword_1C096E850);
        if (!v118[167])
        {
          goto LABEL_50;
        }

        goto LABEL_9;
      }

      if (!v23[4])
      {
        goto LABEL_47;
      }

      v26 = *v23;
      v25 = v23[1];
      v27 = v23[2];
      v28 = v23[3];
      sub_1C095E00C();
      if (v25 == 1)
      {
        sub_1C095E00C();
        sub_1C05149F8(&v118[67], v115, &qword_1EBE16C78, &qword_1C096E850);

        goto LABEL_76;
      }

      sub_1C095E00C();
      if (v25)
      {
        sub_1C095E00C();
        sub_1C05149F8(&v118[67], v115, &qword_1EBE16C78, &qword_1C096E850);

        sub_1C0559D40(v26, v25, v27, v28);
        sub_1C095D7BC();
        if (!v28)
        {
          goto LABEL_74;
        }
      }

      else
      {
        sub_1C095E00C();
        sub_1C05149F8(&v118[67], v115, &qword_1EBE16C78, &qword_1C096E850);

        sub_1C0559D40(v26, 0, v27, v28);
        if (!v28)
        {
LABEL_74:
          sub_1C095E00C();
          v32 = v26;
          v33 = v25;
          v34 = v27;
          v35 = 0;
          goto LABEL_75;
        }
      }

      sub_1C095E00C();
      sub_1C095D7BC();
      v32 = v26;
      v33 = v25;
      v34 = v27;
      v35 = v28;
LABEL_75:
      sub_1C05756F0(v32, v33, v34, v35);
LABEL_76:
      sub_1C056DF84(v4);
      sub_1C05145B4(&v118[67], &qword_1EBE16C78, &qword_1C096E850);
      sub_1C05145B4(&v118[67], &qword_1EBE16C78, &qword_1C096E850);

      sub_1C05145B4(&v118[67], &qword_1EBE16C78, &qword_1C096E850);
      if (!v118[167])
      {
LABEL_50:
        sub_1C095E00C();
        goto LABEL_10;
      }

LABEL_9:
      sub_1C095E00C();
      sub_1C095E00C();
      sub_1C095D7BC();
LABEL_10:
      sub_1C0575770(v118);
      if (++v14 == v13)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t sub_1C057106C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = 0;
    v9 = a2 + 32;
    do
    {
      v6 = *(v9 + 16 * v5 + 8);
      sub_1C095E01C();
      result = MEMORY[0x1C68DDE90](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = v6 + 52;
        do
        {
          sub_1C095E01C();
          sub_1C095E01C();
          sub_1C095E01C();
          sub_1C095E01C();
          sub_1C095E01C();
          result = sub_1C095E01C();
          v8 += 24;
          --v7;
        }

        while (v7);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1C0571154(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = (a2 + 120);
    do
    {
      v6 = *(v5 - 6);
      v10 = *(v5 - 5);
      v7 = *(v5 - 32);
      v8 = *(v5 - 31);
      v12 = *(v5 - 24);
      v13 = *(v5 - 16);
      v11 = *(v5 - 1);
      v14 = *v5;

      sub_1C095D7BC();
      sub_1C095D7BC();
      if (v6)
      {
        sub_1C095E00C();
        sub_1C095D7BC();
        if (v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1C095E00C();
        if (v7)
        {
LABEL_7:
          sub_1C095E00C();
          if (v8 == 7)
          {
            goto LABEL_8;
          }

          goto LABEL_17;
        }
      }

      sub_1C095E00C();
      if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v10;
      }

      else
      {
        v9 = 0;
      }

      MEMORY[0x1C68DDEC0](v9);
      if (v8 == 7)
      {
LABEL_8:
        sub_1C095E00C();
        if (v12)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

LABEL_17:
      sub_1C095E00C();
      MEMORY[0x1C68DDE90](v8);
      if (v12)
      {
LABEL_9:
        sub_1C095E00C();
        if (v13)
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }

LABEL_18:
      sub_1C095E00C();
      sub_1C095E01C();
      if (v13)
      {
LABEL_10:
        sub_1C095E00C();
        if (!v14)
        {
          goto LABEL_20;
        }

        goto LABEL_3;
      }

LABEL_19:
      sub_1C095E00C();
      sub_1C095E01C();
      if (!v14)
      {
LABEL_20:
        sub_1C095E00C();
        MEMORY[0x1C68DDE90](v11);
        goto LABEL_4;
      }

LABEL_3:
      sub_1C095E00C();
LABEL_4:

      v5 += 96;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C057134C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = (a2 + 33);
    do
    {
      v6 = *v5;
      if (*(v5 - 1) != 2)
      {
        sub_1C095E00C();
      }

      sub_1C095E00C();
      if (v6 == 53)
      {
        result = sub_1C095E00C();
      }

      else
      {
        sub_1C095E00C();
        result = MEMORY[0x1C68DDE90](v6);
      }

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C05713F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = (a2 + 52);
    do
    {
      v6 = *v5;

      sub_1C095D7BC();
      sub_1C095E00C();
      if (v6 != 1)
      {
        sub_1C095E01C();
      }

      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C05714A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C68DDE90](v3);
  if (v3)
  {
    v5 = (a2 + 76);
    do
    {
      v6 = *(v5 - 20);
      v7 = *(v5 - 8);
      v8 = *v5;

      sub_1C095D7BC();
      if (v6)
      {
        sub_1C095E00C();
        sub_1C095D7BC();
        if (v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1C095E00C();
        if (v7)
        {
LABEL_7:
          sub_1C095E00C();
          if (!v8)
          {
            goto LABEL_11;
          }

          goto LABEL_3;
        }
      }

      sub_1C095E00C();
      sub_1C095E01C();
      if (!v8)
      {
LABEL_11:
        sub_1C095E00C();
        sub_1C095E01C();
        goto LABEL_4;
      }

LABEL_3:
      sub_1C095E00C();
LABEL_4:

      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C05715DC(uint64_t a1, uint64_t a2)
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
  v17 = v6;
  while (v5)
  {
    v19 = v8;
LABEL_12:
    v11 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(a2 + 56) + v11);
    MEMORY[0x1C68DDEC0](*(*(a2 + 48) + v11));
    v13 = *(v12 + 40);
    if (v13 != 255)
    {
      v14 = *(v12 + 24);
      v15 = *(v12 + 32);
      sub_1C095E00C();
      if (v13)
      {
        MEMORY[0x1C68DDE90](1);
        if (v15)
        {
          sub_1C095E00C();

          sub_1C095D7BC();
          goto LABEL_19;
        }
      }

      else
      {
        MEMORY[0x1C68DDE90](0);
        if ((v15 & 1) == 0)
        {
          sub_1C095E00C();
          MEMORY[0x1C68DDEC0](v14);
          goto LABEL_18;
        }
      }
    }

    sub_1C095E00C();
LABEL_18:

LABEL_19:
    MEMORY[0x1C68DDEC0](*(v12 + 56));
    v16 = *(v12 + 96);

    sub_1C095D7BC();
    sub_1C095D7BC();
    if (v16)
    {
      sub_1C095E00C();
      if (*(v16 + 24))
      {
        sub_1C095E00C();
        sub_1C095D7BC();
        sub_1C095D7BC();
        sub_1C095D7BC();
        sub_1C095D7BC();
      }

      else
      {
        sub_1C095E00C();
      }
    }

    else
    {
      sub_1C095E00C();
    }

    v5 &= v5 - 1;
    result = sub_1C095E03C();
    v8 = result ^ v19;
    v6 = v17;
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

      return MEMORY[0x1C68DDE90](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v19 = v8;
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C05718C8(uint64_t a1, uint64_t a2)
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
  while (v5)
  {
LABEL_10:
    v11 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = *(a1 + 48);
    v19[2] = *(a1 + 32);
    v19[3] = v12;
    v20 = *(a1 + 64);
    v13 = *(a1 + 16);
    v19[0] = *a1;
    v19[1] = v13;

    sub_1C095D7BC();

    if (v11 >> 62)
    {
      v16 = sub_1C095DCDC();
      MEMORY[0x1C68DDE90](v16);
      result = sub_1C095DCDC();
      v14 = result;
      if (!result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = MEMORY[0x1C68DDE90](*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_4;
      }
    }

    if (v14 < 1)
    {
      goto LABEL_22;
    }

    for (i = 0; i != v14; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68DDAD0](i, v11);
      }

      else
      {
      }

      Node.hash(into:)(v19);
    }

LABEL_4:
    v5 &= v5 - 1;

    result = sub_1C095E03C();
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

      return MEMORY[0x1C68DDE90](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1C0571AD0(uint64_t a1, uint64_t a2)
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

      return MEMORY[0x1C68DDE90](v8);
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

        sub_1C095D7BC();

        sub_1C095D7BC();

        result = sub_1C095E03C();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0571C3C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v6)) | (v11 << 6)));
    v6 &= v6 - 1;

    sub_1C095D7BC();

    if (v12 == 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v12;
    }

    MEMORY[0x1C68DDEC0](*&v13);
    result = sub_1C095E03C();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1C68DDE90](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL _s12SiriOntology15TerminalElementV11ScalarValueC2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(v32, (v1 + 16), 0x20AuLL);
  memcpy(v33, v3 + 2, 0x20AuLL);
  memcpy(__dst, v4 + 2, 0x20AuLL);
  memcpy(&__dst[528], v3 + 2, 0x20AuLL);
  memcpy(v34, v4 + 2, 0x20AuLL);
  if (sub_1C0573598(v34) == 1)
  {
    memcpy(v29, &__dst[528], 0x20AuLL);
    if (sub_1C0573598(v29) == 1)
    {
      memcpy(v30, __dst, 0x20AuLL);
      sub_1C05149F8(v32, v28, &qword_1EBE16C70, &unk_1C099BB20);
      sub_1C05149F8(v33, v28, &qword_1EBE16C70, &unk_1C099BB20);
      sub_1C05145B4(v30, &qword_1EBE16C70, &unk_1C099BB20);
      goto LABEL_9;
    }

    sub_1C05149F8(v32, v30, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v33, v30, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_7:
    memcpy(v29, __dst, 0x41AuLL);
    sub_1C05145B4(v29, &qword_1EBE16C88, &qword_1C096E860);
    return 0;
  }

  memcpy(v30, __dst, 0x20AuLL);
  memcpy(v28, __dst, 0x20AuLL);
  memcpy(v29, &__dst[528], 0x20AuLL);
  if (sub_1C0573598(v29) == 1)
  {
    memcpy(__src, __dst, 0x20AuLL);
    sub_1C05149F8(v32, v26, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v33, v26, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v30, v26, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05735E4(__src);
    goto LABEL_7;
  }

  memcpy(__src, &__dst[528], 0x20AuLL);
  sub_1C05149F8(v32, v26, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C05149F8(v33, v26, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C05149F8(v30, v26, &qword_1EBE16C70, &unk_1C099BB20);
  v5 = _s12SiriOntology15TerminalElementV5ValueO2eeoiySbAE_AEtFZ_0(v28);
  memcpy(v25, __src, 0x20AuLL);
  sub_1C05735E4(v25);
  memcpy(v26, v28, 0x20AuLL);
  sub_1C05735E4(v26);
  memcpy(__src, __dst, 0x20AuLL);
  sub_1C05145B4(__src, &qword_1EBE16C70, &unk_1C099BB20);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v6 = v4[68];
  v7 = v4[69];
  v8 = v4[70];
  v9 = v4[71];
  v10 = v3[68];
  v11 = v3[69];
  v12 = v3[70];
  v13 = v3[71];
  if (!v9)
  {
    sub_1C0558910(v6, v7, v8, 0);
    if (!v13)
    {
      sub_1C0558910(v10, v11, v12, 0);
      v20 = v6;
      v21 = v7;
      v22 = v8;
      v23 = 0;
      goto LABEL_31;
    }

    sub_1C0558910(v10, v11, v12, v13);
LABEL_20:
    sub_1C0558A50(v6, v7, v8, v9);
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v18 = v13;
LABEL_24:
    sub_1C0558A50(v15, v16, v17, v18);
    return 0;
  }

  if (!v13)
  {
    sub_1C0558910(v6, v7, v8, v9);
    sub_1C0558910(v10, v11, v12, 0);
    sub_1C0558910(v6, v7, v8, v9);

    goto LABEL_20;
  }

  if (v7)
  {
    if (!v11 || (v6 != v10 || v7 != v11) && (sub_1C095DF3C() & 1) == 0)
    {
      v14 = v7;
LABEL_23:
      sub_1C0558910(v6, v14, v8, v9);
      sub_1C0558910(v10, v11, v12, v13);
      sub_1C0558910(v6, v14, v8, v9);
      sub_1C0558A50(v10, v11, v12, v13);

      v15 = v6;
      v16 = v7;
      v17 = v8;
      v18 = v9;
      goto LABEL_24;
    }
  }

  else if (v11)
  {
    v14 = 0;
    goto LABEL_23;
  }

  if (v8 == v12 && v9 == v13)
  {
    sub_1C0558910(v6, v7, v8, v9);
    sub_1C0558910(v10, v11, v8, v9);
    sub_1C0558910(v6, v7, v8, v9);
    sub_1C0558A50(v10, v11, v8, v9);

    v20 = v6;
    v21 = v7;
    v22 = v8;
    v23 = v9;
LABEL_31:
    sub_1C0558A50(v20, v21, v22, v23);
    return 1;
  }

  v24 = sub_1C095DF3C();
  sub_1C0558910(v6, v7, v8, v9);
  sub_1C0558910(v10, v11, v12, v13);
  sub_1C0558910(v6, v7, v8, v9);
  sub_1C0558A50(v10, v11, v12, v13);

  sub_1C0558A50(v6, v7, v8, v9);
  return (v24 & 1) != 0;
}

uint64_t _s12SiriOntology15TerminalElementV5ValueO2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x20AuLL);
  memcpy(__src, v3, 0x20AuLL);
  memcpy(v38, v4, 0x20AuLL);
  memcpy(v39, v3, sizeof(v39));
  memcpy(v40, v4, 0x20AuLL);
  v5 = sub_1C057363C(v40);
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v13 = *sub_1C05272F0(v40);
        memcpy(v35, __src, 0x20AuLL);
        if (sub_1C057363C(v35) != 2)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v13 = *sub_1C05272F0(v40);
        memcpy(v35, __src, 0x20AuLL);
        if (sub_1C057363C(v35) != 3)
        {
          goto LABEL_41;
        }
      }

      v18 = *sub_1C05272F0(v35);
      sub_1C05145B4(v38, &qword_1EBE16E30, &qword_1C0970508);
      v10 = v13 == v18;
      return v10 & 1;
    }

    if (v5)
    {
      v16 = *sub_1C05272F0(v40);
      memcpy(v35, __src, 0x20AuLL);
      if (sub_1C057363C(v35) == 1)
      {
        v17 = *sub_1C05272F0(v35);
        sub_1C05145B4(v38, &qword_1EBE16E30, &qword_1C0970508);
        v10 = v16 == v17;
        return v10 & 1;
      }
    }

    else
    {
      v11 = *sub_1C05272F0(v40);
      memcpy(v35, __src, 0x20AuLL);
      if (!sub_1C057363C(v35))
      {
        v12 = *sub_1C05272F0(v35);
        sub_1C05145B4(v38, &qword_1EBE16E30, &qword_1C0970508);
        v10 = v11 == v12;
        return v10 & 1;
      }
    }

LABEL_41:
    sub_1C05735AC(__src, v35);
    sub_1C05145B4(v38, &qword_1EBE16E30, &qword_1C0970508);
    v10 = 0;
    return v10 & 1;
  }

  if (v5 <= 5)
  {
    if (v5 == 4)
    {
      v14 = sub_1C05272F0(v40);
      v7 = *v14;
      v8 = v14[1];
      memcpy(v35, __src, 0x20AuLL);
      if (sub_1C057363C(v35) == 4)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

    v28 = sub_1C05272F0(v40);
    memcpy(v35, __src, 0x20AuLL);
    if (sub_1C057363C(v35) == 5)
    {
      v29 = sub_1C05272F0(v35);
      memcpy(v34, v28, 0x20AuLL);
      memcpy(v33, v29, 0x20AuLL);
      sub_1C05735AC(__src, &v32);
      sub_1C05735AC(__dst, &v32);
      sub_1C05735AC(__src, &v32);
      sub_1C05735AC(__dst, &v32);
      v10 = _s12SiriOntology15TerminalElementV13DateTimeValueV2eeoiySbAE_AEtFZ_0(v34, v33);
      sub_1C05145B4(v38, &qword_1EBE16E30, &qword_1C0970508);
      sub_1C05735E4(__src);
      sub_1C05735E4(__dst);
      return v10 & 1;
    }

    memcpy(v34, __dst, 0x20AuLL);
    v30 = sub_1C05272F0(v34);
    sub_1C0573648(v30, v33);
    goto LABEL_41;
  }

  if (v5 == 6)
  {
    v15 = *sub_1C05272F0(v40);
    memcpy(v35, __src, 0x20AuLL);
    if (sub_1C057363C(v35) == 6)
    {
      sub_1C05272F0(v35);
      sub_1C05735AC(__src, v34);
      sub_1C05735AC(__dst, v34);
      v10 = _s12SiriOntology15TerminalElementV11ScalarValueC2eeoiySbAE_AEtFZ_0(v15);
      goto LABEL_44;
    }

    memcpy(v34, __dst, 0x20AuLL);
    sub_1C05272F0(v34);

    goto LABEL_41;
  }

  if (v5 != 7)
  {
    v19 = sub_1C05272F0(v40);
    v21 = *v19;
    v20 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    memcpy(v35, __src, 0x20AuLL);
    if (sub_1C057363C(v35) != 8)
    {
      memcpy(v34, __dst, 0x20AuLL);
      sub_1C05272F0(v34);

      goto LABEL_39;
    }

    v24 = sub_1C05272F0(v35);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    if (v20)
    {
      if (v25 && (v21 == *v24 && v20 == v25 || (sub_1C095DF3C() & 1) != 0))
      {
        goto LABEL_31;
      }
    }

    else if (!v25)
    {
LABEL_31:
      if (v22 != v26 || v23 != v27)
      {
        goto LABEL_37;
      }

      sub_1C05735AC(__src, v34);
      sub_1C05735AC(__dst, v34);
      v10 = 1;
LABEL_44:
      sub_1C05145B4(v38, &qword_1EBE16E30, &qword_1C0970508);
      return v10 & 1;
    }

    sub_1C05735AC(__src, v34);
    sub_1C05735AC(__dst, v34);
    v10 = 0;
    goto LABEL_44;
  }

  v6 = sub_1C05272F0(v40);
  v7 = *v6;
  v8 = v6[1];
  memcpy(v35, __src, 0x20AuLL);
  if (sub_1C057363C(v35) != 7)
  {
LABEL_18:
    memcpy(v34, __dst, 0x20AuLL);
    sub_1C05272F0(v34);
LABEL_39:

    goto LABEL_41;
  }

LABEL_6:
  v9 = sub_1C05272F0(v35);
  if (v7 != *v9 || v8 != v9[1])
  {
LABEL_37:
    v10 = sub_1C095DF3C();
    sub_1C05735AC(__src, v34);
    sub_1C05735AC(__dst, v34);
    goto LABEL_44;
  }

  sub_1C05735AC(__src, v34);
  sub_1C05735AC(__dst, v34);
  sub_1C05145B4(v38, &qword_1EBE16E30, &qword_1C0970508);
  v10 = 1;
  return v10 & 1;
}