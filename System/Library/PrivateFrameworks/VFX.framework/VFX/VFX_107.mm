uint64_t sub_1AF940354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = a2;

  a1[2] = a3;

  v9 = *(a5 + 24);
  v11 = a1[3];
  v10 = a1[4];
  a1[3] = a4;
  a1[4] = v9;

  return sub_1AF919DAC(v11, v10);
}

uint64_t sub_1AF9403F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v10);
  v74 = (&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = sub_1AFDFC318();
  v12 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v74 - v18;
  v82 = a2;
  v78 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
  v19 = *(a2 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
  v81 = a1;
  v83 = *(*(v19 + 16 * a1 + 32) + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);

  v75 = v4;
  v84 = sub_1AF93FA18(a4, a3);
  if ((~v84 & 0xF000000000000007) == 0)
  {
    (*(**(v82 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(&v89);
    v105 = v89;
    v20 = *(v89 + 8 * v81 + 32);
    if (v20 >> 61 == 2)
    {
      v21 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v99 = v91;
      v20 = *(v91 + 8 * v21 + 32);
      sub_1AF4410A8(v20);
      sub_1AF949D48(&v105, &qword_1EB638968, &type metadata for TypeConstraint);
      v98 = v90;
      sub_1AF949D48(&v98, &qword_1EB638968, &type metadata for TypeConstraint);
      sub_1AF949D48(&v99, &qword_1EB638968, &type metadata for TypeConstraint);
      v97 = v92;
      sub_1AF91219C(&v97);
      v96 = v93;
      sub_1AF91219C(&v96);
      v95 = v94;
      v22 = &v95;
    }

    else
    {
      sub_1AF4410A8(v20);
      sub_1AF949D48(&v105, &qword_1EB638968, &type metadata for TypeConstraint);
      v104 = v90;
      sub_1AF949D48(&v104, &qword_1EB638968, &type metadata for TypeConstraint);
      v103 = v91;
      sub_1AF949D48(&v103, &qword_1EB638968, &type metadata for TypeConstraint);
      v102 = v92;
      sub_1AF91219C(&v102);
      v101 = v93;
      sub_1AF91219C(&v101);
      v100 = v94;
      v22 = &v100;
    }

    v84 = 0xC000000000000030;
    sub_1AF949D48(v22, &qword_1EB638978, &type metadata for AnyValue);
    if (v20 >> 61 != 5)
    {
      goto LABEL_9;
    }

    if (v20 == 0xA000000000000010)
    {
      goto LABEL_11;
    }

    if (v20 == 0xA000000000000028)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AFE4C430;
      v24 = v23 | 0x2000000000000000;
    }

    else
    {
LABEL_9:
      sub_1AF441114(v20);
      v24 = 0xC000000000000058;
    }

    v84 = v24;
  }

LABEL_11:
  if (sub_1AF9C4C80(v84, 0xA000000000000008))
  {
    v75 = v14;
    v80 = v5;
    sub_1AF0D5A54(v83 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, &v86);
    v25 = v84;
    sub_1AF442064(v84);
    swift_dynamicCast();
    sub_1AF90EDE8(v25, v88, v85[0]);
    sub_1AF0D5A54(v88, v87);
    v86 = v25;
    type metadata accessor for ImplicitConstantNode(0);
    v26 = swift_allocObject();
    sub_1AF914FF0(&v86, v85);
    v27 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
    sub_1AF914FF0(v85, &v26[OBJC_IVAR____TtC3VFX12ConstantNode_holder]);
    *&v26[v27] = xmmword_1AFE22A20;
    v28 = MEMORY[0x1E69E7CC0];
    *(v26 + 2) = MEMORY[0x1E69E7CC0];
    *(v26 + 3) = 0;
    *(v26 + 4) = 0;
    v29 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    sub_1AFDFC308();
    sub_1AF9151B0(&v86);
    sub_1AF9151B0(v85);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v88);
    v30 = v76;
    v31 = v79;
    (*(v12 + 56))(v76, 1, 1, v79);
    type metadata accessor for AuthoringNode(0);
    v32 = swift_allocObject();
    v33 = v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 1;
    v34 = v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 1;
    v35 = v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v35 = 0;
    *(v35 + 8) = 1;
    v36 = (v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v36 = 0;
    v36[1] = 0;
    *(v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v26;
    *(v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v28;
    v37 = v77;
    sub_1AF487314(v30, v77);
    v38 = *(v12 + 48);
    v39 = v38(v37, 1, v31);

    if (v39 == 1)
    {
      v74 = v29;
      v40 = v30;
      v41 = v75;
      sub_1AFDFC308();
      v42 = v40;
      v29 = v74;
      sub_1AF949E6C(v42, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v38(v37, 1, v31) != 1)
      {
        sub_1AF949E6C(v37, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF949E6C(v30, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      v41 = v75;
      (*(v12 + 32))(v75, v37, v31);
    }

    (*(v12 + 32))(v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v41, v31);
    (*(v12 + 24))(&v26[v29], v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v31);

    v64 = v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v64 = 0;
    *(v64 + 8) = 0;
    *(v64 + 16) = 1;
    v65 = v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v65 = 0;
    *(v65 + 8) = 0;
    *(v65 + 16) = 1;
    v66 = v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v66 = 0;
    *(v66 + 8) = 1;
    v67 = (v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v67 = 0;
    v67[1] = 0;

    v68 = v82;
    v69 = v78;
    v70 = *(v82 + v78);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v68 + v69) = v70;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      *(v68 + v69) = sub_1AFC0DA6C(v70);
    }

    sub_1AF445BE4(v84);
    v72 = *(v68 + v69) + 16 * v81;
    *(v72 + 32) = v32;
    *(v72 + 40) = 0;
  }

  else
  {
    v86 = 0;
    v87[0] = 0xE000000000000000;
    sub_1AFDFE218();

    v86 = 0xD000000000000023;
    v87[0] = 0x80000001AFF3B580;
    v43 = sub_1AF90D394(v84);
    MEMORY[0x1B2718AE0](v43);

    v44 = v86;
    v45 = v87[0];
    sub_1AF9371BC();
    v80 = swift_allocError();
    v47 = v46;
    v48 = v74;
    *(v74 + v10[8]) = 0;
    v49 = v82;
    *v48 = v82;
    v50 = v10[5];
    v51 = v12;
    v52 = *(v12 + 16);
    v53 = v79;
    v52(v48 + v50, v49 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v79);
    (*(v51 + 56))(v48 + v50, 0, 1, v53);
    v54 = v48 + v10[6];
    *v54 = v81;
    v54[8] = 96;
    v55 = (v48 + v10[7]);
    *v55 = v44;
    v55[1] = v45;
    sub_1AF94A0F8(v48, v47, type metadata accessor for GraphError);
    v56 = *(v75 + 3);
    v57 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v58 = *(v56 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

    v59 = swift_isUniquelyReferenced_nonNull_native();
    *(v56 + v57) = v58;
    if ((v59 & 1) == 0)
    {
      v58 = sub_1AF420408(0, v58[2] + 1, 1, v58);
      *(v56 + v57) = v58;
    }

    v61 = v58[2];
    v60 = v58[3];
    v62 = v80;
    if (v61 >= v60 >> 1)
    {
      v58 = sub_1AF420408(v60 > 1, v61 + 1, 1, v58);
    }

    v58[2] = v61 + 1;
    v58[v61 + 4] = v62;
    *(v56 + v57) = v58;
    swift_willThrow();
    v63 = v62;
    sub_1AF445BE4(v84);
  }
}

uint64_t sub_1AF940EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = (*(*a1 + 296))(1);
  v7 = *(**(v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);

  v7(v24, v8);

  v9 = v24[0];
  v30 = v24[0];
  v29 = v24[1];
  sub_1AF949D48(&v29, &qword_1EB638968, &type metadata for TypeConstraint);
  v28 = v24[2];
  sub_1AF949D48(&v28, &qword_1EB638968, &type metadata for TypeConstraint);
  v27 = v24[3];
  sub_1AF91219C(&v27);
  v26 = v24[4];
  sub_1AF91219C(&v26);
  v25 = v24[5];
  sub_1AF949D48(&v25, &qword_1EB638978, &type metadata for AnyValue);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = v9 + 32;
LABEL_3:
    v22 = v12;
    v14 = v11;
    while (v14 != *(a2 + 16))
    {
      v15 = *(v13 + 8 * v14);
      v16 = *(a2 + 32 + 8 * v14);
      sub_1AF4410A8(v15);
      sub_1AF442064(v16);
      if (sub_1AF90F890(v16, 0xC000000000000068))
      {
        sub_1AF9403F8(v14, v23, a3, v15);
        if (v4)
        {
          sub_1AF949D48(&v30, &qword_1EB638968, &type metadata for TypeConstraint);
          sub_1AF445BE4(v16);
          sub_1AF441114(v15);
        }

LABEL_18:
        sub_1AF445BE4(v16);
        sub_1AF441114(v15);
LABEL_23:
        v11 = v14 + 1;
        v12 = 1;
        if (v10 - 1 != v14)
        {
          goto LABEL_3;
        }

        sub_1AF949D48(&v30, &qword_1EB638968, &type metadata for TypeConstraint);
        return v23;
      }

      if (v15 >> 61 == 2)
      {
        if (*(a3 + 16) && (v17 = sub_1AF449CB8(*((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10)), (v18 & 1) != 0))
        {
          v19 = *(*(a3 + 56) + 8 * v17);
          sub_1AF442064(v19);
        }

        else
        {
          v19 = 0xF000000000000007;
        }

        if ((sub_1AF90F890(v19, v16) & 1) == 0)
        {
          sub_1AF948E48(v14, v23, v19);
          sub_1AF914F8C(v19);
          goto LABEL_18;
        }

        sub_1AF914F8C(v19);
      }

      else if ((sub_1AF9C4C80(v16, v15) & 1) == 0)
      {
        if (v15 >> 61 == 4)
        {
          v20 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_1AF442064(v20);
        }

        else
        {
          v20 = 0xF000000000000007;
        }

        sub_1AF948E48(v14, v23, v20);
        sub_1AF914F8C(v20);
        sub_1AF441114(v15);
        sub_1AF445BE4(v16);
        goto LABEL_23;
      }

      ++v14;
      sub_1AF445BE4(v16);
      sub_1AF441114(v15);
      if (v10 == v14)
      {
        break;
      }
    }

    sub_1AF949D48(&v30, &qword_1EB638968, &type metadata for TypeConstraint);
    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }

    return v23;
  }

  else
  {
    sub_1AF949D48(&v30, &qword_1EB638968, &type metadata for TypeConstraint);
LABEL_28:

    return 0;
  }
}

void *sub_1AF941248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v165) = a3;
  v166 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v166);
  v9 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1AF42C370(MEMORY[0x1E69E7CC0]);
  v10 = *(a1 + 16);
  if (!v10)
  {
    goto LABEL_40;
  }

  v161 = v9;
  v162 = v4;
  v11 = 0;
  v12 = a1 + 32;
  v13 = a2 + 32;
  v163 = a4;
  v164 = v10 - 1;
  v169 = a1 + 32;
  v170 = a2 + 32;
  v168 = v10;
  while (2)
  {
    v14 = v11;
    while (1)
    {
      if (v14 == *(a2 + 16))
      {
        goto LABEL_40;
      }

      v15 = *(v12 + 8 * v14);
      v16 = *(v13 + 8 * v14);
      sub_1AF442064(v15);
      sub_1AF4410A8(v16);
      sub_1AF9C503C(v16);
      if ((v17 & 1) == 0)
      {
        v18 = sub_1AF9C503C(v16);
        if ((sub_1AF90F890(v15, 0xC000000000000068) & 1) == 0)
        {
          break;
        }
      }

      sub_1AF441114(v16);
LABEL_5:
      ++v14;
      sub_1AF445BE4(v15);
      if (v10 == v14)
      {
        goto LABEL_40;
      }
    }

    v19 = sub_1AF9C4C80(v15, v16);
    v172 = v15;
    if ((v19 & 1) == 0)
    {
      v75 = sub_1AF9C5BB8(v18);
      v169 = v76;
      v170 = v75;
      v77 = v163;
      (*(**(v163 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v187);
      v214 = v188;
      v78 = sub_1AF970A64(v14, v188);
      v80 = v79;
      v213 = v187[0];
      sub_1AF949D48(&v213, &qword_1EB638968, &type metadata for TypeConstraint);
      v212 = v187[1];
      sub_1AF949D48(&v212, &qword_1EB638968, &type metadata for TypeConstraint);
      v211 = v187[2];
      sub_1AF949D48(&v211, &qword_1EB638968, &type metadata for TypeConstraint);
      sub_1AF91219C(&v214);
      v210 = v189;
      sub_1AF91219C(&v210);
      v209 = v190;
      sub_1AF949D48(&v209, &qword_1EB638978, &type metadata for AnyValue);
      v173 = 0;
      v174 = 0xE000000000000000;
      sub_1AFDFE218();

      v173 = 0x207475706E49;
      v174 = 0xE600000000000000;
      MEMORY[0x1B2718AE0](v78, v80);

      MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
      v81 = sub_1AF90D394(v15);
      MEMORY[0x1B2718AE0](v81);

      MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF3B540);
      MEMORY[0x1B2718AE0](v170, v169);

      MEMORY[0x1B2718AE0](61, 0xE100000000000000);
      v82 = sub_1AF9C50D4(v16);
      MEMORY[0x1B2718AE0](v82);

      v168 = v173;
      v170 = v174;
      sub_1AF9371BC();
      v83 = v166;
      v167 = swift_allocError();
      v169 = v84;
      v85 = v161;
      v161[v83[8]] = 0;
      v86 = v77;
      *v85 = v77;
      v87 = v83[5];
      v165 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v88 = sub_1AFDFC318();
      v89 = *(v88 - 8);
      (*(v89 + 16))(&v85[v87], v86 + v165, v88);
      (*(v89 + 56))(&v85[v87], 0, 1, v88);
      v90 = &v85[v83[6]];
      *v90 = v14;
      v90[8] = 32;
      v91 = &v85[v83[7]];
      v92 = v169;
      v93 = v170;
      *v91 = v168;
      v91[1] = v93;
      sub_1AF94A0F8(v85, v92, type metadata accessor for GraphError);
      v94 = *(v162 + 24);
      v95 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
      v59 = *(v94 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v94 + v95) = v59;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v59 = sub_1AF420408(0, v59[2] + 1, 1, v59);
        *(v94 + v95) = v59;
      }

      v98 = v59[2];
      v97 = v59[3];
      if (v98 >= v97 >> 1)
      {
        v59 = sub_1AF420408(v97 > 1, v98 + 1, 1, v59);
      }

      v59[2] = v98 + 1;
      v99 = v167;
      v59[v98 + 4] = v167;
      *(v94 + v95) = v59;
      swift_willThrow();
      v100 = v99;
      v101 = v99;
      sub_1AF441114(v16);
      sub_1AF445BE4(v172);

      return v59;
    }

    v20 = a2;
    sub_1AF9C52FC(v15, v16);
    v22 = v21;
    v23 = v171;
    if (v171[2])
    {
      v24 = sub_1AF449CB8(v18);
      if (v25)
      {
        v26 = (v23[7] + 16 * v24);
        v27 = *v26;
        v15 = v26[1];
        sub_1AF442064(v15);
        sub_1AF442064(v15);
        v28 = sub_1AF90F890(v22, v15);
        sub_1AF445BE4(v15);
        if (v28)
        {
          sub_1AF445BE4(v22);
          sub_1AF441114(v16);
          sub_1AF445BE4(v172);
          a2 = v20;
          v10 = v168;
          v12 = v169;
          v13 = v170;
          goto LABEL_5;
        }

        v159 = v27;
        v160 = v22;
        if (v165)
        {
          type metadata accessor for CastNode(0);
          v41 = v160;
          if (sub_1AF98750C(v160, v15) == 1)
          {
            if (!sub_1AF9863CC(v41, v15) && sub_1AF9863CC(v15, v41))
            {
              sub_1AF445BE4(v15);
              sub_1AF442064(v41);
              v159 = v14;
              v15 = v41;
            }

            sub_1AF442064(v15);
            v42 = v171;
            v43 = swift_isUniquelyReferenced_nonNull_native();
            v173 = v42;
            v45 = sub_1AF449CB8(v18);
            v46 = v42[2] + ((v44 & 1) == 0);
            if (v42[3] >= v46)
            {
              v13 = v170;
              if (v43)
              {
                goto LABEL_33;
              }

              v48 = v44;
              sub_1AF84E8F8();
            }

            else
            {
              v47 = v43;
              v48 = v44;
              sub_1AF83F674(v46, v47);
              v49 = sub_1AF449CB8(v18);
              if ((v48 & 1) != (v50 & 1))
              {
LABEL_68:
                result = sub_1AFDFF1A8();
                __break(1u);
                return result;
              }

              v45 = v49;
            }

            v44 = v48;
            v13 = v170;
LABEL_33:
            v51 = v159;
            v52 = v173;
            v171 = v173;
            if (v44)
            {
              v53 = (*(v173 + 56) + 16 * v45);
              v54 = v53[1];
              *v53 = v159;
              v53[1] = v15;
              sub_1AF445BE4(v54);
              sub_1AF441114(v16);
              sub_1AF445BE4(v172);
              sub_1AF445BE4(v15);
              sub_1AF445BE4(v160);
            }

            else
            {
              *(v173 + 8 * (v45 >> 6) + 64) |= 1 << v45;
              *(v52[6] + 8 * v45) = v18;
              v55 = (v52[7] + 16 * v45);
              *v55 = v51;
              v55[1] = v15;
              sub_1AF441114(v16);
              sub_1AF445BE4(v172);
              sub_1AF445BE4(v15);
              sub_1AF445BE4(v160);
              ++v52[2];
            }

            a2 = v20;
            v10 = v168;
            v12 = v169;
            goto LABEL_37;
          }

          v112 = *(**(v163 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);
          v112(v179);
          v202 = v180;
          v170 = sub_1AF970A64(v14, v180);
          v168 = v113;
          v201 = v179[0];
          sub_1AF949D48(&v201, &qword_1EB638968, &type metadata for TypeConstraint);
          v200 = v179[1];
          sub_1AF949D48(&v200, &qword_1EB638968, &type metadata for TypeConstraint);
          v199 = v179[2];
          sub_1AF949D48(&v199, &qword_1EB638968, &type metadata for TypeConstraint);
          sub_1AF91219C(&v202);
          v198 = v181;
          sub_1AF91219C(&v198);
          v197 = v182;
          v114 = sub_1AF949D48(&v197, &qword_1EB638978, &type metadata for AnyValue);
          (v112)(v183, v114);
          v196 = v184;
          v169 = sub_1AF970A64(v159, v184);
          v116 = v115;
          v195 = v183[0];
          sub_1AF949D48(&v195, &qword_1EB638968, &type metadata for TypeConstraint);
          v194 = v183[1];
          sub_1AF949D48(&v194, &qword_1EB638968, &type metadata for TypeConstraint);
          v193 = v183[2];
          sub_1AF949D48(&v193, &qword_1EB638968, &type metadata for TypeConstraint);
          sub_1AF91219C(&v196);
          v192 = v185;
          sub_1AF91219C(&v192);
          v191 = v186;
          sub_1AF949D48(&v191, &qword_1EB638978, &type metadata for AnyValue);
          v173 = 0;
          v174 = 0xE000000000000000;
          sub_1AFDFE218();

          v173 = 0x207475706E49;
          v174 = 0xE600000000000000;
          MEMORY[0x1B2718AE0](v170, v168);

          MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
          v117 = sub_1AF90D394(v160);
          MEMORY[0x1B2718AE0](v117);

          MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF3B560);
          MEMORY[0x1B2718AE0](v169, v116);

          MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
          v118 = sub_1AF90D394(v15);
          MEMORY[0x1B2718AE0](v118);

          MEMORY[0x1B2718AE0](41, 0xE100000000000000);
          v168 = v173;
          v170 = v174;
          sub_1AF9371BC();
          v119 = v166;
          v167 = swift_allocError();
          v169 = v120;
          v121 = v161;
          v161[*(v119 + 32)] = 0;
          v122 = v163;
          *v121 = v163;
          v123 = *(v119 + 20);
          v165 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v124 = sub_1AFDFC318();
          v125 = *(v124 - 8);
          (*(v125 + 16))(v121 + v123, v122 + v165, v124);
          (*(v125 + 56))(v121 + v123, 0, 1, v124);
          v126 = v166;
          v127 = v121 + *(v166 + 24);
          *v127 = v14;
          v127[8] = 32;
          v128 = (v121 + *(v126 + 28));
          v129 = v169;
          v130 = v170;
          *v128 = v168;
          v128[1] = v130;
          sub_1AF94A0F8(v121, v129, type metadata accessor for GraphError);
          v131 = *(v162 + 24);
          v132 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v59 = *(v131 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
        }

        else
        {
          v102 = sub_1AF9C5BB8(v18);
          v104 = v103;
          v105 = v171;
          v106 = v171[2];
          v170 = v102;
          if (v106 && (v107 = sub_1AF449CB8(v18), (v108 & 1) != 0))
          {
            v109 = (v105[7] + 16 * v107);
            v110 = *v109;
            v111 = v109[1];
            sub_1AF442064(v111);
          }

          else
          {
            v110 = 0;
            v111 = 0xF000000000000007;
          }

          v133 = sub_1AF90D394(v111);
          v168 = v134;
          v169 = v133;
          v135 = sub_1AF949EC8(v110, v111);
          v136 = v163;
          (*(**(v163 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v175, v135);
          v208 = v176;
          v167 = sub_1AF970A64(v14, v176);
          v138 = v137;
          v207 = v175[0];
          sub_1AF949D48(&v207, &qword_1EB638968, &type metadata for TypeConstraint);
          v206 = v175[1];
          sub_1AF949D48(&v206, &qword_1EB638968, &type metadata for TypeConstraint);
          v205 = v175[2];
          sub_1AF949D48(&v205, &qword_1EB638968, &type metadata for TypeConstraint);
          sub_1AF91219C(&v208);
          v204 = v177;
          sub_1AF91219C(&v204);
          v203 = v178;
          sub_1AF949D48(&v203, &qword_1EB638978, &type metadata for AnyValue);
          v173 = 0;
          v174 = 0xE000000000000000;
          sub_1AFDFE218();

          v173 = 0x207475706E49;
          v174 = 0xE600000000000000;
          MEMORY[0x1B2718AE0](v167, v138);

          MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
          v139 = sub_1AF90D394(v172);
          MEMORY[0x1B2718AE0](v139);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF3B540);
          MEMORY[0x1B2718AE0](v170, v104);

          MEMORY[0x1B2718AE0](61, 0xE100000000000000);
          MEMORY[0x1B2718AE0](v169, v168);

          v168 = v173;
          v170 = v174;
          sub_1AF9371BC();
          v140 = v166;
          v167 = swift_allocError();
          v169 = v141;
          v142 = v161;
          v161[*(v140 + 32)] = 0;
          v143 = v136;
          *v142 = v136;
          v144 = *(v140 + 20);
          v165 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v145 = sub_1AFDFC318();
          v146 = *(v145 - 8);
          (*(v146 + 16))(&v142[v144], v143 + v165, v145);
          (*(v146 + 56))(&v142[v144], 0, 1, v145);
          v147 = v166;
          v148 = &v142[*(v166 + 24)];
          *v148 = v14;
          v148[8] = 32;
          v149 = &v142[*(v147 + 28)];
          v150 = v169;
          v151 = v170;
          *v149 = v168;
          v149[1] = v151;
          sub_1AF94A0F8(v142, v150, type metadata accessor for GraphError);
          v131 = *(v162 + 24);
          v132 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v59 = *(v131 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
        }

        v152 = swift_isUniquelyReferenced_nonNull_native();
        *(v131 + v132) = v59;
        if ((v152 & 1) == 0)
        {
          v59 = sub_1AF420408(0, v59[2] + 1, 1, v59);
          *(v131 + v132) = v59;
        }

        v154 = v59[2];
        v153 = v59[3];
        if (v154 >= v153 >> 1)
        {
          v59 = sub_1AF420408(v153 > 1, v154 + 1, 1, v59);
        }

        v59[2] = v154 + 1;
        v155 = &v59[v154];
        v156 = v167;
        v155[4] = v167;
        *(v131 + v132) = v59;
        swift_willThrow();
        v157 = v156;
        v158 = v156;
        sub_1AF445BE4(v160);
        sub_1AF441114(v16);
        sub_1AF445BE4(v172);
        sub_1AF445BE4(v15);

        return v59;
      }
    }

    v160 = v22;
    sub_1AF442064(v22);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v23;
    v30 = sub_1AF449CB8(v18);
    v32 = v31;
    v33 = v23[2] + ((v31 & 1) == 0);
    if (v23[3] >= v33)
    {
      if ((v29 & 1) == 0)
      {
        v56 = v30;
        sub_1AF84E8F8();
        v30 = v56;
      }
    }

    else
    {
      sub_1AF83F674(v33, v29);
      v30 = sub_1AF449CB8(v18);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_68;
      }
    }

    a2 = v20;
    v35 = v173;
    v10 = v168;
    v12 = v169;
    v171 = v173;
    if (v32)
    {
      v36 = (*(v173 + 56) + 16 * v30);
      v37 = v36[1];
      v38 = v160;
      *v36 = v14;
      v36[1] = v38;
      sub_1AF445BE4(v37);
      sub_1AF441114(v16);
      sub_1AF445BE4(v172);
      sub_1AF445BE4(v38);
    }

    else
    {
      *(v173 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      *(v35[6] + 8 * v30) = v18;
      v39 = (v35[7] + 16 * v30);
      v40 = v160;
      *v39 = v14;
      v39[1] = v40;
      sub_1AF441114(v16);
      sub_1AF445BE4(v172);
      sub_1AF445BE4(v40);
      ++v35[2];
    }

    v13 = v170;
LABEL_37:
    v11 = v14 + 1;
    if (v164 != v14)
    {
      continue;
    }

    break;
  }

LABEL_40:
  sub_1AF949EE0();
  v57 = v171;
  v58 = sub_1AFDFE598();
  v59 = v58;
  v60 = 0;
  v61 = 1 << *(v57 + 32);
  v62 = v57[8];
  v63 = -1;
  if (v61 < 64)
  {
    v63 = ~(-1 << v61);
  }

  v64 = v63 & v62;
  v65 = (v61 + 63) >> 6;
  v66 = v58 + 64;
  if ((v63 & v62) != 0)
  {
    do
    {
      v67 = __clz(__rbit64(v64));
      v64 &= v64 - 1;
      v68 = v67 | (v60 << 6);
LABEL_48:
      v72 = *(v57[6] + 8 * v68);
      v73 = *(v57[7] + 16 * v68 + 8);
      *(v66 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
      *(v59[6] + 8 * v68) = v72;
      *(v59[7] + 8 * v68) = v73;
      ++v59[2];
      sub_1AF442064(v73);
    }

    while (v64);
  }

  v69 = v60 << 6;
  while (1)
  {
    v70 = v60 + 1;
    if (v60 + 1 >= v65)
    {
      break;
    }

    v71 = v57[v60 + 9];
    v69 += 64;
    ++v60;
    if (v71)
    {
      v64 = (v71 - 1) & v71;
      v68 = __clz(__rbit64(v71)) + v69;
      v60 = v70;
      goto LABEL_48;
    }
  }

  return v59;
}

uint64_t sub_1AF9423CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  result = 0;
  if (*(v2 + 64) == 1)
  {
    v77 = v12;
    v78 = &v61 - v11;
    v15 = (*(*a1 + 296))(1, v13);
    v16 = *(**(v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);

    v16(&v80, v17);

    v91[0] = v80;
    v18 = *(v80 + 16);
    if (!v18)
    {

      sub_1AF949D48(v91, &qword_1EB638968, &type metadata for TypeConstraint);
      v90 = v81;
      sub_1AF949D48(&v90, &qword_1EB638968, &type metadata for TypeConstraint);
      v89 = v82;
      sub_1AF949D48(&v89, &qword_1EB638968, &type metadata for TypeConstraint);
      v88 = v83;
      sub_1AF91219C(&v88);
      v87 = v84;
      sub_1AF91219C(&v87);
      v86 = v85;
      sub_1AF949D48(&v86, &qword_1EB638978, &type metadata for AnyValue);
      return 0;
    }

    v72 = v8;
    v76 = v5;
    v19 = 0;
    v20 = 0;
    v21 = a2 + 32;
    v22 = v80 + 32;
    v71 = (v6 + 56);
    v70 = (v6 + 48);
    v73 = (v6 + 32);
    v69 = (v6 + 24);
    v68 = v18 - 1;
    v79 = v15;
    v74 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
LABEL_4:
    LODWORD(v75) = v19;
    v23 = 16 * v20;
    v24 = v20;
    do
    {
      v28 = *(v22 + 8 * v24);
      if (v28 >> 61 == 2)
      {
        v28 = *(v82 + 8 * *((v28 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 32);
      }

      v25 = *(v21 + 8 * v24);
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      sub_1AF442064(v25);
      sub_1AF442064(v25);
      sub_1AF4410A8(v28);
      v27 = sub_1AF9C4A68(v26 | 0x8000000000000000, v28);

      if (((v27 >> 57) & 0xF8 | v27 & 7 | 0x10) != 0x7F)
      {
        type metadata accessor for CastNode(0);
        if (sub_1AF98750C(v25, v27) == 1)
        {
          type metadata accessor for AutoCastNode(0);
          v29 = swift_allocObject();
          v75 = v29;
          *&v29[OBJC_IVAR____TtC3VFX8CastNode_dstType] = v27;
          *(v29 + 4) = 0;
          *(v29 + 2) = MEMORY[0x1E69E7CC0];
          *(v29 + 3) = 0;
          v30 = OBJC_IVAR____TtC3VFX4Node_authoringID;
          sub_1AF442064(v27);
          v64 = v30;
          sub_1AFDFC308();
          v31 = *(v79 + v74) + v23;
          v33 = *(v31 + 32);
          v32 = *(v31 + 40);
          v66 = v33;
          v63 = v32;
          (*v71)(v78, 1, 1, v76);
          type metadata accessor for AuthoringNode(0);
          v34 = swift_allocObject();
          v35 = v34 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
          *v35 = 0;
          *(v35 + 8) = 0;
          *(v35 + 16) = 1;
          v36 = v34 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
          *v36 = 0;
          *(v36 + 8) = 0;
          *(v36 + 16) = 1;
          v37 = v34 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
          *v37 = 0;
          *(v37 + 8) = 1;
          v38 = (v34 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
          *v38 = 0;
          v38[1] = 0;
          v67 = v34;
          *(v34 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v75;
          v90 = MEMORY[0x1E69E7CC0];

          sub_1AFC05D04(0, 1, 0);
          v39 = v90;
          v40 = *(v90 + 16);
          v62 = *(v90 + 24);
          v65 = v40 + 1;

          if (v40 >= v62 >> 1)
          {
            sub_1AFC05D04(v62 > 1, v65, 1);
            v39 = v90;
          }

          *(v39 + 16) = v65;
          v41 = v39 + 16 * v40;
          v42 = v63;
          *(v41 + 32) = v66;
          *(v41 + 40) = v42;

          *(v67 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v39;
          v43 = v77;
          sub_1AF487314(v78, v77);
          v66 = *v70;
          if (v66(v43, 1, v76) == 1)
          {
            v44 = v72;
            sub_1AFDFC308();
            sub_1AF949E6C(v78, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            if (v66(v77, 1, v76) != 1)
            {
              sub_1AF949E6C(v77, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            }
          }

          else
          {
            sub_1AF949E6C(v78, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            v44 = v72;
            (*v73)(v72, v77, v76);
          }

          v45 = v67;
          v46 = v44;
          v47 = v76;
          (*v73)((v67 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID), v46, v76);
          (*v69)(&v75[v64], v45 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v47);

          v48 = v45 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
          *v48 = 0;
          *(v48 + 8) = 0;
          *(v48 + 16) = 1;
          v49 = v45 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
          *v49 = 0;
          *(v49 + 8) = 0;
          *(v49 + 16) = 1;
          v50 = v45 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
          *v50 = 0;
          *(v50 + 8) = 1;
          v51 = (v45 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
          *v51 = 0;
          v51[1] = 0;

          v52 = v79;
          v75 = *(v79 + v74);

          v53 = v75;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v74;
          *(v52 + v74) = v53;
          v56 = v55;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v60 = sub_1AFC0DA6C(v53);
            *(v79 + v56) = v60;
          }

          v20 = v24 + 1;
          sub_1AF441114(v28);
          v57 = v67;

          sub_1AF91504C(v27);
          sub_1AF445BE4(v25);
          v58 = v79;
          v59 = *(v79 + v56) + v23;
          *(v59 + 32) = v57;
          *(v59 + 40) = 0;

          v19 = 1;
          if (v68 == v24)
          {
            sub_1AF949D48(v91, &qword_1EB638968, &type metadata for TypeConstraint);
            v90 = v81;
            sub_1AF949D48(&v90, &qword_1EB638968, &type metadata for TypeConstraint);
            v89 = v82;
            sub_1AF949D48(&v89, &qword_1EB638968, &type metadata for TypeConstraint);
            v88 = v83;
            sub_1AF91219C(&v88);
            v87 = v84;
            sub_1AF91219C(&v87);
            v86 = v85;
            sub_1AF949D48(&v86, &qword_1EB638978, &type metadata for AnyValue);
            return v58;
          }

          goto LABEL_4;
        }
      }

      ++v24;
      sub_1AF91504C(v27);
      sub_1AF441114(v28);
      sub_1AF445BE4(v25);
      v23 += 16;
    }

    while (v18 != v24);
    sub_1AF949D48(v91, &qword_1EB638968, &type metadata for TypeConstraint);
    v90 = v81;
    sub_1AF949D48(&v90, &qword_1EB638968, &type metadata for TypeConstraint);
    v89 = v82;
    sub_1AF949D48(&v89, &qword_1EB638968, &type metadata for TypeConstraint);
    v88 = v83;
    sub_1AF91219C(&v88);
    v87 = v84;
    sub_1AF91219C(&v87);
    v86 = v85;
    sub_1AF949D48(&v86, &qword_1EB638978, &type metadata for AnyValue);
    result = v79;
    if ((v75 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_1AF942D74(unint64_t a1, uint64_t a2)
{
  *&v194 = a2;
  v192 = sub_1AFDFC318();
  v193 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v5 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v174 - v7;
  sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v174 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v174 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v174 - v19;
  v191 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v191);
  v190 = &v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DeclareVariableNode(0);
  if (swift_dynamicCastClass())
  {
    v22 = v195;
    v23 = sub_1AF9443F0(1, a1, v2);
    if (!v22)
    {
      v25 = v23;
      v26 = v24;
      v27 = *(v194 + 48);
      v28 = *(v2 + 56);
      v29 = *(v28 + 16);
      sub_1AF442064(v27);
      if (!v29)
      {
LABEL_38:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v196 = *(v2 + 56);
        *(v2 + 56) = 0x8000000000000000;
        sub_1AF8586B0(v27, v25, v26, isUniquelyReferenced_nonNull_native);

        a1 = 0;
        *(v2 + 56) = v196;
        return a1;
      }

      v30 = v2;

      v31 = sub_1AF419914(v25, v26);
      if ((v32 & 1) == 0)
      {

        goto LABEL_38;
      }

      v33 = *(*(v28 + 56) + 8 * v31);
      sub_1AF442064(v33);

      if (sub_1AF90F890(v33, v27))
      {
        sub_1AF445BE4(v33);
        goto LABEL_38;
      }

      v196 = 0;
      v197 = 0xE000000000000000;
      sub_1AFDFE218();

      v196 = 0xD000000000000018;
      v197 = 0x80000001AFF3B520;
      MEMORY[0x1B2718AE0](v25, v26);

      MEMORY[0x1B2718AE0](2629671, 0xE300000000000000);
      *&v194 = v27;
      v96 = sub_1AF90D394(v27);
      MEMORY[0x1B2718AE0](v96);

      MEMORY[0x1B2718AE0](0x202E737620, 0xE500000000000000);
      v189 = v33;
      v97 = sub_1AF90D394(v33);
      MEMORY[0x1B2718AE0](v97);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      v188 = v196;
      v98 = v197;
      sub_1AF9371BC();
      v99 = v191;
      *&v195 = swift_allocError();
      v101 = v100;
      v102 = v190;
      v190[v99[8]] = 0;
      *v102 = a1;
      v103 = v99[5];
      v104 = v193;
      v105 = v192;
      (*(v193 + 16))(&v102[v103], a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v192);
      (*(v104 + 56))(&v102[v103], 0, 1, v105);
      v106 = &v102[v99[6]];
      *v106 = 2;
      v106[8] = 96;
      v107 = &v102[v99[7]];
      *v107 = v188;
      *(v107 + 1) = v98;
      sub_1AF94A0F8(v102, v101, type metadata accessor for GraphError);
      v108 = *(v30 + 24);
      v109 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
      v110 = *(v108 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

      v111 = swift_isUniquelyReferenced_nonNull_native();
      *(v108 + v109) = v110;
      if ((v111 & 1) == 0)
      {
        v110 = sub_1AF420408(0, v110[2] + 1, 1, v110);
        *(v108 + v109) = v110;
      }

      v113 = v110[2];
      v112 = v110[3];
      v114 = v194;
      v115 = v189;
      if (v113 >= v112 >> 1)
      {
        v110 = sub_1AF420408(v112 > 1, v113 + 1, 1, v110);
      }

      v110[2] = v113 + 1;
      a1 = v195;
      v110[v113 + 4] = v195;
      *(v108 + v109) = v110;
      swift_willThrow();
      v116 = a1;
      sub_1AF445BE4(v115);
      sub_1AF445BE4(v114);
    }
  }

  else
  {
    v189 = v20;
    *&v194 = v14;
    v187 = v17;
    v185 = v11;
    v188 = v8;
    v186 = v5;
    v34 = v195;
    type metadata accessor for SetVariableValueNode(0);
    if (swift_dynamicCastClass())
    {
      v35 = sub_1AF9443F0(1, a1, v2);
      if (v34)
      {
        return a1;
      }

      *&v195 = 0;
      v37 = *(v2 + 56);
      if (*(v37 + 16))
      {
        *&v194 = v2;
        v38 = v35;
        v39 = v36;

        v40 = sub_1AF419914(v38, v39);
        v42 = v41;

        if (v42)
        {
          v43 = *(*(v37 + 56) + 8 * v40);
          sub_1AF442064(v43);

          type metadata accessor for SetResolvedVariableValueNode(0);
          v44 = swift_allocObject();
          *(v44 + OBJC_IVAR____TtC3VFX21_ResolvedVariableNode_type) = v43;
          v45 = MEMORY[0x1E69E7CC0];
          v44[3] = 0;
          v44[4] = 0;
          v44[2] = v45;
          v46 = OBJC_IVAR____TtC3VFX4Node_authoringID;
          v176 = v43;
          sub_1AF442064(v43);
          v190 = v46;
          sub_1AFDFC308();
          v47 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
          v48 = v193;
          v49 = v189;
          v50 = v192;
          (*(v193 + 16))(v189, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v192);
          (*(v48 + 56))(v49, 0, 1, v50);
          v51 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 8);
          v186 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position);
          v185 = v51;
          LODWORD(v184) = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 16);
          v52 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 8);
          v183 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size);
          v182 = v52;
          LODWORD(v181) = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 16);
          v180 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex);
          LODWORD(v179) = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex + 8);
          v53 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName + 8);
          v177 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
          type metadata accessor for AuthoringNode(0);
          a1 = swift_allocObject();
          *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v44;
          v54 = *(v47 + 16);
          sub_1AF97C5BC(v198);
          v55 = v198[0];
          v204 = v198[1];
          v205 = v198[0];
          v178 = v53;

          v191 = v44;

          sub_1AF949D48(&v204, &qword_1EB638968, &type metadata for TypeConstraint);
          v203 = v198[2];
          sub_1AF949D48(&v203, &qword_1EB638968, &type metadata for TypeConstraint);
          v202 = v198[3];
          sub_1AF91219C(&v202);
          v201 = v198[4];
          sub_1AF91219C(&v201);
          v200 = v198[5];
          sub_1AF949D48(&v200, &qword_1EB638978, &type metadata for AnyValue);
          v56 = *(v55 + 16);
          sub_1AF949D48(&v205, &qword_1EB638968, &type metadata for TypeConstraint);
          if (v56 <= v54)
          {
            v57 = v54;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            v196 = MEMORY[0x1E69E7CC0];
            sub_1AFC05D04(0, v57, 0);
            v58 = 0;
            v59 = v196;
            v60 = v188;
            v61 = v187;
            v62 = v47;
            do
            {
              v63 = 0uLL;
              if (v58 < v54)
              {
                v194 = *(v62 + 16 * v58 + 32);

                v63 = v194;
              }

              v196 = v59;
              v65 = *(v59 + 16);
              v64 = *(v59 + 24);
              if (v65 >= v64 >> 1)
              {
                v175 = v62;
                v194 = v63;
                sub_1AFC05D04(v64 > 1, v65 + 1, 1);
                v63 = v194;
                v62 = v175;
                v59 = v196;
              }

              ++v58;
              *(v59 + 16) = v65 + 1;
              *(v59 + 16 * v65 + 32) = v63;
            }

            while (v57 != v58);

            v50 = v192;
          }

          else
          {

            v59 = MEMORY[0x1E69E7CC0];
            v60 = v188;
            v61 = v187;
          }

          v133 = v189;
          *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v59;
          sub_1AF487314(v133, v61);
          v134 = v193;
          v135 = *(v193 + 48);
          if (v135(v61, 1, v50) == 1)
          {
            sub_1AFDFC308();
            sub_1AF445BE4(v176);
            sub_1AF949E6C(v133, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            if (v135(v61, 1, v50) != 1)
            {
              sub_1AF949E6C(v61, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            }
          }

          else
          {
            sub_1AF445BE4(v176);
            sub_1AF949E6C(v133, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            (*(v134 + 32))(v60, v61, v50);
          }

          (*(v134 + 32))(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v60, v50);
          (*(v134 + 24))(&v190[v191], a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v50);

          v136 = a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
          v137 = v185;
          *v136 = v186;
          *(v136 + 8) = v137;
          *(v136 + 16) = v184;
          v138 = a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
          v139 = v182;
          *v138 = v183;
          *(v138 + 8) = v139;
          *(v138 + 16) = v181;
          v140 = a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
          *v140 = v180;
          *(v140 + 8) = v179;
          v141 = (a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
          v142 = v178;
          *v141 = v177;
          v141[1] = v142;
          return a1;
        }

        v2 = v194;
      }

      else
      {
      }

      *&v194 = 0x80000001AFF3B500;
      sub_1AF9371BC();
      v117 = v191;
      *&v195 = swift_allocError();
      v119 = v118;
      v120 = v190;
      v190[v117[8]] = 0;
      *v120 = a1;
      v121 = v117[5];
      v122 = v193;
      v123 = v192;
      (*(v193 + 16))(&v120[v121], a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v192);
      (*(v122 + 56))(&v120[v121], 0, 1, v123);
      v124 = &v120[v117[6]];
      *v124 = 1;
      v124[8] = 96;
      v125 = &v120[v117[7]];
      *v125 = 0xD00000000000001CLL;
      *(v125 + 1) = v194;
      sub_1AF94A0F8(v120, v119, type metadata accessor for GraphError);
      v126 = *(v2 + 24);
      v127 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
      v128 = *(v126 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

      v129 = swift_isUniquelyReferenced_nonNull_native();
      *(v126 + v127) = v128;
      if ((v129 & 1) == 0)
      {
        v128 = sub_1AF420408(0, v128[2] + 1, 1, v128);
        *(v126 + v127) = v128;
      }

      a1 = v128[2];
      v130 = v128[3];
      if (a1 >= v130 >> 1)
      {
        v128 = sub_1AF420408(v130 > 1, a1 + 1, 1, v128);
      }

      v128[2] = a1 + 1;
      v131 = v195;
      v128[a1 + 4] = v195;
      *(v126 + v127) = v128;
      swift_willThrow();
      v132 = v131;
    }

    else
    {
      type metadata accessor for GetVariableValueNode(0);
      if (!swift_dynamicCastClass())
      {
        return 0;
      }

      v66 = sub_1AF9443F0(0, a1, v2);
      if (!v34)
      {
        v68 = *(v2 + 56);
        if (*(v68 + 16))
        {
          v69 = v2;
          v70 = v66;
          v71 = v67;

          v72 = sub_1AF419914(v70, v71);
          v74 = v73;

          if (v74)
          {
            v75 = *(*(v68 + 56) + 8 * v72);
            sub_1AF442064(v75);

            type metadata accessor for GetResolvedVariableValueNode(0);
            v76 = swift_allocObject();
            *(v76 + OBJC_IVAR____TtC3VFX21_ResolvedVariableNode_type) = v75;
            v77 = MEMORY[0x1E69E7CC0];
            v76[3] = 0;
            v76[4] = 0;
            v76[2] = v77;
            v78 = OBJC_IVAR____TtC3VFX4Node_authoringID;
            v177 = v75;
            sub_1AF442064(v75);
            v190 = v78;
            sub_1AFDFC308();
            v79 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
            v80 = v193;
            v81 = v194;
            v82 = v192;
            (*(v193 + 16))(v194, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v192);
            (*(v80 + 56))(v81, 0, 1, v82);
            v83 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 8);
            v189 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position);
            v188 = v83;
            LODWORD(v187) = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 16);
            v84 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 8);
            v184 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size);
            v183 = v84;
            LODWORD(v182) = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 16);
            v181 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex);
            LODWORD(v180) = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex + 8);
            v85 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName + 8);
            v178 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
            type metadata accessor for AuthoringNode(0);
            a1 = swift_allocObject();
            *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v76;
            v86 = *(v79 + 16);
            sub_1AF97C7FC(v199);
            v87 = v199[0];
            v211 = v199[0];
            v210 = v199[1];
            v179 = v85;

            v191 = v76;

            sub_1AF949D48(&v210, &qword_1EB638968, &type metadata for TypeConstraint);
            v209 = v199[2];
            sub_1AF949D48(&v209, &qword_1EB638968, &type metadata for TypeConstraint);
            v208 = v199[3];
            sub_1AF91219C(&v208);
            v207 = v199[4];
            sub_1AF91219C(&v207);
            v206 = v199[5];
            sub_1AF949D48(&v206, &qword_1EB638978, &type metadata for AnyValue);
            v88 = *(v87 + 16);
            sub_1AF949D48(&v211, &qword_1EB638968, &type metadata for TypeConstraint);
            if (v88 <= v86)
            {
              v89 = v86;
            }

            else
            {
              v89 = v88;
            }

            if (v89)
            {
              v196 = MEMORY[0x1E69E7CC0];
              sub_1AFC05D04(0, v89, 0);
              v90 = 0;
              v91 = v196;
              do
              {
                v92 = 0uLL;
                if (v90 < v86)
                {
                  v195 = *(v79 + 16 * v90 + 32);

                  v92 = v195;
                }

                v196 = v91;
                v94 = *(v91 + 16);
                v93 = *(v91 + 24);
                if (v94 >= v93 >> 1)
                {
                  v195 = v92;
                  sub_1AFC05D04(v93 > 1, v94 + 1, 1);
                  v92 = v195;
                  v91 = v196;
                }

                ++v90;
                *(v91 + 16) = v94 + 1;
                *(v91 + 16 * v94 + 32) = v92;
              }

              while (v89 != v90);
            }

            else
            {

              v91 = MEMORY[0x1E69E7CC0];
            }

            *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v91;
            v160 = v194;
            v161 = v185;
            sub_1AF487314(v194, v185);
            v162 = v193;
            v163 = *(v193 + 48);
            v164 = v192;
            v165 = v163(v161, 1, v192);
            v166 = v186;
            if (v165 == 1)
            {
              sub_1AFDFC308();
              sub_1AF445BE4(v177);
              sub_1AF949E6C(v160, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
              if (v163(v161, 1, v164) != 1)
              {
                sub_1AF949E6C(v161, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
              }
            }

            else
            {
              sub_1AF445BE4(v177);
              sub_1AF949E6C(v160, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
              (*(v162 + 32))(v166, v161, v164);
            }

            (*(v162 + 32))(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v166, v164);
            (*(v162 + 24))(&v190[v191], a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v164);

            v167 = a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
            v168 = v188;
            *v167 = v189;
            *(v167 + 8) = v168;
            *(v167 + 16) = v187;
            v169 = a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
            v170 = v183;
            *v169 = v184;
            *(v169 + 8) = v170;
            *(v169 + 16) = v182;
            v171 = a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
            *v171 = v181;
            *(v171 + 8) = v180;
            v172 = (a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
            v173 = v179;
            *v172 = v178;
            v172[1] = v173;
            return a1;
          }

          v2 = v69;
        }

        else
        {
        }

        sub_1AF9371BC();
        v143 = v191;
        *&v195 = swift_allocError();
        v145 = v144;
        v146 = v190;
        v190[v143[8]] = 0;
        *v146 = a1;
        v147 = v143[5];
        v148 = v193;
        v149 = v192;
        (*(v193 + 16))(&v146[v147], a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v192);
        (*(v148 + 56))(&v146[v147], 0, 1, v149);
        v150 = &v146[v143[6]];
        *v150 = 0;
        v150[8] = 96;
        v151 = &v146[v143[7]];
        *v151 = 0xD00000000000001CLL;
        *(v151 + 1) = 0x80000001AFF3B500;
        sub_1AF94A0F8(v146, v145, type metadata accessor for GraphError);
        v152 = *(v2 + 24);
        v153 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
        v154 = *(v152 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

        v155 = swift_isUniquelyReferenced_nonNull_native();
        *(v152 + v153) = v154;
        if ((v155 & 1) == 0)
        {
          v154 = sub_1AF420408(0, v154[2] + 1, 1, v154);
          *(v152 + v153) = v154;
        }

        a1 = v154[2];
        v156 = v154[3];
        if (a1 >= v156 >> 1)
        {
          v154 = sub_1AF420408(v156 > 1, a1 + 1, 1, v154);
        }

        v154[2] = a1 + 1;
        v157 = v195;
        v154[a1 + 4] = v195;
        *(v152 + v153) = v154;
        swift_willThrow();
        v158 = v157;
      }
    }
  }

  return a1;
}

void *sub_1AF9443F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*(*(a2 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) + 16 * a1 + 32) || (, v9 = sub_1AF9A1B58(1, 0), v11 = v10, , !v11))
  {
    sub_1AF9371BC();
    v12 = swift_allocError();
    v28 = v13;
    *(v8 + v6[8]) = 0;
    *v8 = a2;
    v14 = v6[5];
    v15 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v16 = sub_1AFDFC318();
    v17 = a3;
    v18 = *(v16 - 8);
    (*(v18 + 16))(v8 + v14, a2 + v15, v16);
    (*(v18 + 56))(v8 + v14, 0, 1, v16);
    v19 = v8 + v6[6];
    *v19 = 2;
    v19[8] = -64;
    *(v8 + v6[7]) = xmmword_1AFE86250;
    sub_1AF94A0F8(v8, v28, type metadata accessor for GraphError);
    v20 = *(v17 + 24);
    v21 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v9 = *(v20 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + v21) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1AF420408(0, v9[2] + 1, 1, v9);
      *(v20 + v21) = v9;
    }

    v24 = v9[2];
    v23 = v9[3];
    if (v24 >= v23 >> 1)
    {
      v9 = sub_1AF420408(v23 > 1, v24 + 1, 1, v9);
    }

    v9[2] = v24 + 1;
    v9[v24 + 4] = v12;
    *(v20 + v21) = v9;
    swift_willThrow();
    v25 = v12;
  }

  return v9;
}

unint64_t *sub_1AF94468C(__objc2_class **a1)
{
  v2 = v1;
  v236 = *v1;
  sub_1AF949DCC(0, &qword_1EB632708, type metadata accessor for GraphError);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v226 - v5);
  v7 = type metadata accessor for GraphError(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v226 - v12;
  v14 = type metadata accessor for AuthoringGraph(0);
  sub_1AF922E30(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_1AF94A0F8(v6, v13, type metadata accessor for GraphError);
    sub_1AF9371BC();
    swift_allocError();
    sub_1AF92385C(v13, v23);
    swift_willThrow();
    sub_1AF94A160(v13, type metadata accessor for GraphError);
    return v14;
  }

  v234 = v7;
  v235 = v10;
  v15 = sub_1AF949E6C(v6, &qword_1EB632708, type metadata accessor for GraphError);
  v16 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
  v17 = *(*v16 + 152);
  v18 = *v16 + 152;
  v17(&v244, v15);
  v19 = v239;
  v20 = sub_1AF93EFD4(a1);
  v21 = v19;
  if (v19)
  {
    v351 = v244;
    v14 = &qword_1EB638968;
    sub_1AF949D48(&v351, &qword_1EB638968, &type metadata for TypeConstraint);
    v350 = v245;
    sub_1AF949D48(&v350, &qword_1EB638968, &type metadata for TypeConstraint);
    v349 = v246;
    sub_1AF949D48(&v349, &qword_1EB638968, &type metadata for TypeConstraint);
    v348 = v247;
    sub_1AF91219C(&v348);
    v347 = v248;
    sub_1AF91219C(&v347);
    v346 = v249;
    v22 = &v346;
LABEL_4:
    sub_1AF949D48(v22, &qword_1EB638978, &type metadata for AnyValue);
    return v14;
  }

  v228 = v18;
  v229 = v17;
  v237 = v2;
  v25 = v20[2];
  v26 = MEMORY[0x1E69E7CC0];
  v233 = v20;
  if (v25)
  {
    v27 = v20;
    v230 = v16;
    v231 = a1;
    v232 = 0;
    v241 = MEMORY[0x1E69E7CC0];
    sub_1AFC078EC(0, v25, 0);
    v26 = v241;
    v345 = v244;
    v28 = (v244 + 32);
    v29 = v27 + 5;
    while (1)
    {
      v239 = v26;
      v30 = *(v29 - 1);
      v31 = *v29;
      v32 = *v28;
      v238 = v28 + 1;
      v33 = swift_allocObject();
      *(v33 + 16) = 0xC000000000000008;

      sub_1AF4410A8(v32);
      v34 = sub_1AF9C5694(v32, v33 | 0x8000000000000000);

      sub_1AF441114(v32);
      if (v34)
      {

        v35 = 0xC000000000000008;
      }

      else
      {
        v36 = sub_1AF93F510(v30);
        v37 = v36;
        if (v38)
        {
          v243 = v36;
          sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
          swift_willThrowTypedImpl();
          goto LABEL_34;
        }

        (*(**(v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(&v250);
        v39 = v251;
        v343 = v250;
        v344 = v251;
        sub_1AF949D48(&v343, &qword_1EB638968, &type metadata for TypeConstraint);
        v342 = v252;
        sub_1AF949D48(&v342, &qword_1EB638968, &type metadata for TypeConstraint);
        v341 = v253;
        sub_1AF91219C(&v341);
        v340 = v254;
        sub_1AF91219C(&v340);
        v339 = v255;
        sub_1AF949D48(&v339, &qword_1EB638978, &type metadata for AnyValue);
        v40 = *(v39 + 16);
        sub_1AF949D48(&v344, &qword_1EB638968, &type metadata for TypeConstraint);
        if (v31 >= v40)
        {
          v238 = v37;
          sub_1AF9371BC();
          v54 = v234;
          v55 = swift_allocError();
          v236 = v56;
          v57 = v235;
          v235[v54[8]] = 0;
          v58 = v231;
          *v57 = v231;
          v59 = v54[5];
          v232 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v60 = sub_1AFDFC318();
          v61 = *(v60 - 8);
          (*(v61 + 16))(&v57[v59], v232 + v58, v60);
          (*(v61 + 56))(&v57[v59], 0, 1, v60);
          v62 = &v57[v54[6]];
          *v62 = 3;
          v62[8] = -64;
          *&v57[v54[7]] = xmmword_1AFE86260;
          sub_1AF94A0F8(v57, v236, type metadata accessor for GraphError);
          v63 = *(v237 + 24);
          v64 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v65 = *(v63 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v63 + v64) = v65;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v65 = sub_1AF420408(0, v65[2] + 1, 1, v65);
            *(v63 + v64) = v65;
          }

          v68 = v65[2];
          v67 = v65[3];
          if (v68 >= v67 >> 1)
          {
            v65 = sub_1AF420408(v67 > 1, v68 + 1, 1, v65);
          }

          v65[2] = v68 + 1;
          v65[v68 + 4] = v55;
          *(v63 + v64) = v65;
          swift_willThrow();
          v69 = v55;
          sub_1AF85AA70(v238, 0);
LABEL_34:

          sub_1AF949D48(&v345, &qword_1EB638968, &type metadata for TypeConstraint);
          v338 = v245;
          v14 = &qword_1EB638968;
          sub_1AF949D48(&v338, &qword_1EB638968, &type metadata for TypeConstraint);
          v337 = v246;
          sub_1AF949D48(&v337, &qword_1EB638968, &type metadata for TypeConstraint);
          v336 = v247;
          sub_1AF91219C(&v336);
          v335 = v248;
          sub_1AF91219C(&v335);
          v334 = v249;
          sub_1AF949D48(&v334, &qword_1EB638978, &type metadata for AnyValue);

LABEL_35:

          return v14;
        }

        v41 = v37[3];
        v42 = v37[4];
        v43 = v42 + 8 * v31;
        v44 = v37;
        v35 = *(v43 + 32);
        sub_1AF448650(v41, v42);
        sub_1AF442064(v35);

        sub_1AF85AA70(v44, 0);
      }

      v26 = v239;
      v241 = v239;
      v46 = *(v239 + 16);
      v45 = *(v239 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1AFC078EC(v45 > 1, v46 + 1, 1);
        v26 = v241;
      }

      v29 += 2;
      *(v26 + 16) = v46 + 1;
      *(v26 + 8 * v46 + 32) = v35;
      --v25;
      v28 = v238;
      if (!v25)
      {
        a1 = v231;
        v21 = v232;
        v16 = v230;
        break;
      }
    }
  }

  type metadata accessor for _VariableNode(0);
  if (swift_dynamicCastClass())
  {
    v47 = sub_1AF942D74(a1, v26);
    if (v21)
    {

      v333 = v244;
      v14 = &qword_1EB638968;
      sub_1AF949D48(&v333, &qword_1EB638968, &type metadata for TypeConstraint);
      v332 = v245;
      sub_1AF949D48(&v332, &qword_1EB638968, &type metadata for TypeConstraint);
      v331 = v246;
      sub_1AF949D48(&v331, &qword_1EB638968, &type metadata for TypeConstraint);
      v330 = v247;
      sub_1AF91219C(&v330);
      v329 = v248;
      sub_1AF91219C(&v329);
      v328 = v249;
      v22 = &v328;
      goto LABEL_4;
    }

    v48 = v47;
    if (v47)
    {

      v265 = v244;
      sub_1AF949D48(&v265, &qword_1EB638968, &type metadata for TypeConstraint);
      v264 = v245;
      sub_1AF949D48(&v264, &qword_1EB638968, &type metadata for TypeConstraint);
      v263 = v246;
      sub_1AF949D48(&v263, &qword_1EB638968, &type metadata for TypeConstraint);
      v262 = v247;
      sub_1AF91219C(&v262);
      v261 = v248;
      sub_1AF91219C(&v261);
      v260 = v249;
      v49 = &v260;
LABEL_23:
      sub_1AF949D48(v49, &qword_1EB638978, &type metadata for AnyValue);

      v50 = v48;
      v14 = v237;
LABEL_26:
      v53 = sub_1AF94468C(v50);
      if (v21)
      {
        goto LABEL_35;
      }

      v14 = v53;

      return v14;
    }
  }

  v14 = v237;
  v51 = sub_1AF9423CC(a1, v26);
  if (v51)
  {
    v52 = v51;

    v271 = v244;
    sub_1AF949D48(&v271, &qword_1EB638968, &type metadata for TypeConstraint);
    v270 = v245;
    sub_1AF949D48(&v270, &qword_1EB638968, &type metadata for TypeConstraint);
    v269 = v246;
    sub_1AF949D48(&v269, &qword_1EB638968, &type metadata for TypeConstraint);
    v268 = v247;
    sub_1AF91219C(&v268);
    v267 = v248;
    sub_1AF91219C(&v267);
    v266 = v249;
    sub_1AF949D48(&v266, &qword_1EB638978, &type metadata for AnyValue);

    v50 = v52;
    goto LABEL_26;
  }

  v230 = v16;
  v231 = a1;
  v70 = v244;
  v71 = *(v26 + 16);

  if (v71)
  {
    for (i = 4; i - v71 != 4; ++i)
    {
      v73 = i - 4;
      if (i - 4 == *(v70 + 16))
      {
        break;
      }

      v74 = *(v26 + 8 * i);
      v75 = *(v70 + 8 * i);
      sub_1AF442064(v74);
      sub_1AF4410A8(v75);
      if ((sub_1AF9C4C80(v74, v75) & 1) == 0)
      {
        v76 = *(v237 + 64);
        v238 = v74;
        v227 = v75;
        if (v76 != 1)
        {
          swift_bridgeObjectRelease_n();

          v327 = v245;
          sub_1AF949D48(&v327, &qword_1EB638968, &type metadata for TypeConstraint);
          v326 = v246;
          sub_1AF949D48(&v326, &qword_1EB638968, &type metadata for TypeConstraint);
          v325 = v247;
          sub_1AF91219C(&v325);
          v324 = v248;
          sub_1AF91219C(&v324);
          v323 = v249;
          v83 = &v323;
          goto LABEL_52;
        }

        if (v75 >> 61 != 4)
        {
          swift_bridgeObjectRelease_n();

          v322 = v245;
          sub_1AF949D48(&v322, &qword_1EB638968, &type metadata for TypeConstraint);
          v321 = v246;
          sub_1AF949D48(&v321, &qword_1EB638968, &type metadata for TypeConstraint);
          v320 = v247;
          sub_1AF91219C(&v320);
          v319 = v248;
          sub_1AF91219C(&v319);
          v318 = v249;
          v83 = &v318;
          goto LABEL_52;
        }

        v77 = *((v75 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        type metadata accessor for CastNode(0);
        sub_1AF442064(v77);
        v232 = v21;
        v78 = v70;
        v79 = v238;
        v80 = sub_1AF98750C(v238, v77);
        v81 = v77;
        v74 = v79;
        v70 = v78;
        v73 = i - 4;
        v21 = v232;
        sub_1AF445BE4(v81);
        v82 = v80 == 1;
        v75 = v227;
        if (!v82)
        {
          swift_bridgeObjectRelease_n();

          v317 = v245;
          sub_1AF949D48(&v317, &qword_1EB638968, &type metadata for TypeConstraint);
          v316 = v246;
          sub_1AF949D48(&v316, &qword_1EB638968, &type metadata for TypeConstraint);
          v315 = v247;
          sub_1AF91219C(&v315);
          v314 = v248;
          sub_1AF91219C(&v314);
          v313 = v249;
          v83 = &v313;
LABEL_52:
          sub_1AF949D48(v83, &qword_1EB638978, &type metadata for AnyValue);
          v241 = 0;
          v242 = 0xE000000000000000;
          sub_1AFDFE218();

          v241 = 0x207475706E49;
          v242 = 0xE600000000000000;
          (v229)(v256, v87);
          v312 = v257;
          v88 = sub_1AF970A64(v73, v257);
          v90 = v89;
          v311 = v256[0];
          sub_1AF949D48(&v311, &qword_1EB638968, &type metadata for TypeConstraint);
          v310 = v256[1];
          sub_1AF949D48(&v310, &qword_1EB638968, &type metadata for TypeConstraint);
          v309 = v256[2];
          sub_1AF949D48(&v309, &qword_1EB638968, &type metadata for TypeConstraint);
          sub_1AF91219C(&v312);
          v308 = v258;
          sub_1AF91219C(&v308);
          v307 = v259;
          sub_1AF949D48(&v307, &qword_1EB638978, &type metadata for AnyValue);
          MEMORY[0x1B2718AE0](v88, v90);

          MEMORY[0x1B2718AE0](0x7374636570786520, 0xEE00206570797420);
          v91 = sub_1AF9C50D4(v227);
          MEMORY[0x1B2718AE0](v91);

          MEMORY[0x1B2718AE0](0x20746F6E202CLL, 0xE600000000000000);
          v92 = sub_1AF90D394(v238);
          MEMORY[0x1B2718AE0](v92);

          v239 = v241;
          v236 = v242;
          sub_1AF9371BC();
          v93 = v234;
          v232 = swift_allocError();
          v233 = v94;
          v95 = v235;
          v235[v93[8]] = 0;
          v96 = v231;
          *v95 = v231;
          v97 = v93[5];
          v230 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v98 = sub_1AFDFC318();
          v99 = *(v98 - 8);
          (*(v99 + 16))(&v95[v97], v230 + v96, v98);
          (*(v99 + 56))(&v95[v97], 0, 1, v98);
          v100 = &v95[v93[6]];
          *v100 = v73;
          v100[8] = 32;
          v101 = &v95[v93[7]];
          v102 = v236;
          *v101 = v239;
          v101[1] = v102;
          sub_1AF94A0F8(v95, v233, type metadata accessor for GraphError);
          v103 = *(v237 + 24);
          v104 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v14 = *(v103 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

          v105 = swift_isUniquelyReferenced_nonNull_native();
          *(v103 + v104) = v14;
          if ((v105 & 1) == 0)
          {
            v14 = sub_1AF420408(0, v14[2] + 1, 1, v14);
            *(v103 + v104) = v14;
          }

          v107 = v14[2];
          v106 = v14[3];
          v108 = v232;
          if (v107 >= v106 >> 1)
          {
            v14 = sub_1AF420408(v106 > 1, v107 + 1, 1, v14);
          }

          v14[2] = v107 + 1;
          v14[v107 + 4] = v108;
          *(v103 + v104) = v14;
          swift_willThrow();
          v109 = v108;
          v110 = v108;
          sub_1AF445BE4(v238);
          sub_1AF441114(v227);
          goto LABEL_57;
        }
      }

      sub_1AF445BE4(v74);
      sub_1AF441114(v75);
    }
  }

  v84 = v231;
  v85 = sub_1AF941248(v26, v70, *(v237 + 64), v231);
  if (v21)
  {

    v306 = v245;
    v14 = &qword_1EB638968;
    sub_1AF949D48(&v306, &qword_1EB638968, &type metadata for TypeConstraint);
    v305 = v246;
    sub_1AF949D48(&v305, &qword_1EB638968, &type metadata for TypeConstraint);
    v304 = v247;
    sub_1AF91219C(&v304);
    v303 = v248;
    sub_1AF91219C(&v303);
    v302 = v249;
    v22 = &v302;
    goto LABEL_4;
  }

  v86 = v85;
  v21 = 0;
  v48 = sub_1AF940EA8(v84, v26, v85);
  v229 = v86;
  if (v48)
  {

    v276 = v245;
    sub_1AF949D48(&v276, &qword_1EB638968, &type metadata for TypeConstraint);
    v275 = v246;
    sub_1AF949D48(&v275, &qword_1EB638968, &type metadata for TypeConstraint);
    v274 = v247;
    sub_1AF91219C(&v274);
    v273 = v248;
    sub_1AF91219C(&v273);
    v272 = v249;
    v49 = &v272;
    goto LABEL_23;
  }

  v111 = 1 << v229[32];
  v112 = -1;
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  v113 = v112 & *(v229 + 8);
  v114 = (v111 + 63) >> 6;

  v115 = 0;
  if (v113)
  {
    while (1)
    {
      v116 = v115;
      v117 = v229;
LABEL_65:
      v118 = (v116 << 9) | (8 * __clz(__rbit64(v113)));
      v119 = *(*(v117 + 48) + v118);
      v120 = *(*(v117 + 56) + v118);
      v281 = v246;
      v232 = v119;
      v121 = *(v246 + 8 * v119 + 32);
      sub_1AF442064(v120);
      sub_1AF4410A8(v121);
      v238 = v120;
      v228 = v121;
      if ((sub_1AF9C4C80(v120, v121) & 1) == 0)
      {
        break;
      }

      v113 &= v113 - 1;
      sub_1AF441114(v228);
      sub_1AF445BE4(v238);
      v115 = v116;
      v84 = v231;
      if (!v113)
      {
        goto LABEL_62;
      }
    }

    v280 = v245;
    sub_1AF949D48(&v280, &qword_1EB638968, &type metadata for TypeConstraint);
    sub_1AF949D48(&v281, &qword_1EB638968, &type metadata for TypeConstraint);
    v279 = v247;
    sub_1AF91219C(&v279);
    v278 = v248;
    sub_1AF91219C(&v278);
    v277 = v249;
    sub_1AF949D48(&v277, &qword_1EB638978, &type metadata for AnyValue);

    v170 = sub_1AF9C5BB8(v232);
    v172 = v171;
    v241 = 0;
    v242 = 0xE000000000000000;
    sub_1AFDFE218();

    v241 = 0x6465766C6F736552;
    v242 = 0xE900000000000020;
    MEMORY[0x1B2718AE0](v170, v172);

    MEMORY[0x1B2718AE0](61, 0xE100000000000000);
    v173 = sub_1AF90D394(v238);
    MEMORY[0x1B2718AE0](v173);

    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF3B4A0);
    v174 = v228;
    v175 = sub_1AF9C50D4(v228);
    MEMORY[0x1B2718AE0](v175);

    v239 = v241;
    v236 = v242;
    sub_1AF9371BC();
    v176 = v234;
    v232 = swift_allocError();
    v233 = v177;
    v178 = v235;
    v235[v176[8]] = 0;
    v179 = v231;
    *v178 = v231;
    v180 = v179;
    v181 = v176[5];
    v182 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v183 = sub_1AFDFC318();
    v184 = *(v183 - 8);
    (*(v184 + 16))(&v178[v181], v180 + v182, v183);
    (*(v184 + 56))(&v178[v181], 0, 1, v183);
    v185 = &v178[v176[6]];
    *v185 = 0;
    v185[8] = 33;
    v186 = &v178[v176[7]];
    v187 = v236;
    *v186 = v239;
    v186[1] = v187;
    sub_1AF94A0F8(v178, v233, type metadata accessor for GraphError);
    v188 = *(v237 + 24);
    v189 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v14 = *(v188 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

    v190 = swift_isUniquelyReferenced_nonNull_native();
    *(v188 + v189) = v14;
    if ((v190 & 1) == 0)
    {
      v14 = sub_1AF420408(0, v14[2] + 1, 1, v14);
      *(v188 + v189) = v14;
    }

    v192 = v14[2];
    v191 = v14[3];
    if (v192 >= v191 >> 1)
    {
      v14 = sub_1AF420408(v191 > 1, v192 + 1, 1, v14);
    }

    v14[2] = v192 + 1;
    v108 = v232;
    v14[v192 + 4] = v232;
    *(v188 + v189) = v14;
    swift_willThrow();
    v193 = v108;

    v194 = v108;
    sub_1AF441114(v174);
    sub_1AF445BE4(v238);
LABEL_57:
  }

  else
  {
LABEL_62:
    v117 = v229;
    while (1)
    {
      v116 = v115 + 1;
      if (v115 + 1 >= v114)
      {
        break;
      }

      v113 = *&v229[8 * v115++ + 72];
      if (v113)
      {
        goto LABEL_65;
      }
    }

    v122 = v233[2];
    if (v122)
    {
      v232 = v70;
      v241 = MEMORY[0x1E69E7CC0];
      v123 = v233;
      sub_1AFC05E7C(0, v122, 0);
      v124 = 0;
      v238 = v241;
      v239 = v26;
      v125 = (v123 + 40);
      v228 = v122;
      do
      {
        v126 = *(v125 - 1);
        v127 = *v125;

        v128 = sub_1AF9498E8(v124, v126, v127, v237, v232);
        v130 = v129;

        v131 = v238;
        v241 = v238;
        v133 = v238[2];
        v132 = v238[3];
        if (v133 >= v132 >> 1)
        {
          sub_1AFC05E7C(v132 > 1, v133 + 1, 1);
          v131 = v241;
        }

        v125 += 2;
        ++v124;
        v131[2] = v133 + 1;
        v238 = v131;
        v134 = &v131[2 * v133];
        v134[4] = v128;
        v134[5] = v130;
        v84 = v231;
        v26 = v239;
      }

      while (v228 != v124);

      v135 = v237;
    }

    else
    {

      v238 = MEMORY[0x1E69E7CC0];
      v135 = v237;
    }

    v136 = v230;
    if (*v84 == _TtC3VFX21AuthoringSubGraphNode)
    {

      v286 = v245;
      sub_1AF949D48(&v286, &qword_1EB638968, &type metadata for TypeConstraint);
      v285 = v246;
      sub_1AF949D48(&v285, &qword_1EB638968, &type metadata for TypeConstraint);
      v284 = v247;
      sub_1AF91219C(&v284);
      v283 = v248;
      sub_1AF91219C(&v283);
      v282 = v249;
      sub_1AF949D48(&v282, &qword_1EB638978, &type metadata for AnyValue);
      v14 = sub_1AF93FB3C(v84, v26, v238);
    }

    else
    {
      type metadata accessor for CastNode(0);
      v137 = swift_dynamicCastClass();
      if (v137)
      {
        v138 = *(v26 + 32);
        v139 = OBJC_IVAR____TtC3VFX8CastNode_dstType;
        v233 = v137;
        v140 = *(v137 + OBJC_IVAR____TtC3VFX8CastNode_dstType);

        sub_1AF442064(v138);
        sub_1AF442064(v140);
        v141 = sub_1AF98750C(v138, v140);
        sub_1AF445BE4(v140);
        sub_1AF445BE4(v138);
        if (v141 == 2)
        {

          v291 = v245;
          sub_1AF949D48(&v291, &qword_1EB638968, &type metadata for TypeConstraint);
          v290 = v246;
          sub_1AF949D48(&v290, &qword_1EB638968, &type metadata for TypeConstraint);
          v289 = v247;
          sub_1AF91219C(&v289);
          v288 = v248;
          sub_1AF91219C(&v288);
          v287 = v249;
          sub_1AF949D48(&v287, &qword_1EB638978, &type metadata for AnyValue);

          v241 = 0;
          v242 = 0xE000000000000000;
          sub_1AFDFE218();

          v241 = 0xD000000000000014;
          v242 = 0x80000001AFF3B4E0;
          v142 = *(v26 + 32);
          sub_1AF442064(v142);

          v143 = sub_1AF90D394(v142);
          v145 = v144;
          sub_1AF445BE4(v142);
          MEMORY[0x1B2718AE0](v143, v145);

          MEMORY[0x1B2718AE0](0x209286E220, 0xA500000000000000);
          v146 = *(v233 + v139);
          sub_1AF442064(v146);
          v147 = sub_1AF90D394(v146);
          v149 = v148;
          sub_1AF445BE4(v146);
          MEMORY[0x1B2718AE0](v147, v149);

          MEMORY[0x1B2718AE0](41, 0xE100000000000000);
          v150 = v241;
          v239 = v242;
          sub_1AF9371BC();
          v151 = v234;
          v232 = swift_allocError();
          v238 = v152;
          v153 = v235;
          v235[v151[8]] = 0;
          v154 = v231;
          *v153 = v231;
          v155 = v151[5];
          v156 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v157 = sub_1AFDFC318();
          v158 = *(v157 - 8);
          (*(v158 + 16))(&v153[v155], v154 + v156, v157);
          (*(v158 + 56))(&v153[v155], 0, 1, v157);
          v159 = &v153[v151[6]];
          *v159 = 1;
          v159[8] = -64;
          v160 = &v153[v151[7]];
          v161 = v238;
          v162 = v239;
          *v160 = v150;
          v160[1] = v162;
          sub_1AF94A0F8(v153, v161, type metadata accessor for GraphError);
          v163 = *(v237 + 24);
          v164 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v14 = *(v163 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

          v165 = swift_isUniquelyReferenced_nonNull_native();
          *(v163 + v164) = v14;
          if ((v165 & 1) == 0)
          {
            v14 = sub_1AF420408(0, v14[2] + 1, 1, v14);
            *(v163 + v164) = v14;
          }

          v167 = v14[2];
          v166 = v14[3];
          if (v167 >= v166 >> 1)
          {
            v14 = sub_1AF420408(v166 > 1, v167 + 1, 1, v14);
          }

          v14[2] = v167 + 1;
          v168 = v232;
          v14[v167 + 4] = v232;
          *(v163 + v164) = v14;
          swift_willThrow();
          v169 = v168;
          goto LABEL_35;
        }

        v136 = v230;

        v84 = v231;
        v135 = v237;
      }

      if (*v136 == _TtC3VFX17SubGraphEnterNode)
      {
        v195 = v84;

        v296 = v245;
        sub_1AF949D48(&v296, &qword_1EB638968, &type metadata for TypeConstraint);
        v295 = v246;
        sub_1AF949D48(&v295, &qword_1EB638968, &type metadata for TypeConstraint);
        v294 = v247;
        sub_1AF91219C(&v294);
        v293 = v248;
        sub_1AF91219C(&v293);
        v292 = v249;
        sub_1AF949D48(&v292, &qword_1EB638978, &type metadata for AnyValue);

        v196 = *(v135 + 48);
      }

      else
      {
        v239 = v26;

        v198 = v245;
        v301[0] = v245;
        v300 = v246;
        sub_1AF949D48(&v300, &qword_1EB638968, &type metadata for TypeConstraint);
        v299 = v247;
        sub_1AF91219C(&v299);
        v298 = v248;
        sub_1AF91219C(&v298);
        v297 = v249;
        sub_1AF949D48(&v297, &qword_1EB638978, &type metadata for AnyValue);
        v199 = *(v198 + 16);
        if (v199)
        {
          v232 = 0;
          v243 = MEMORY[0x1E69E7CC0];
          sub_1AFC078EC(0, v199, 0);
          v200 = 0;
          v196 = v243;
          v201 = v198 + 32;
          while (1)
          {
            v202 = *(v201 + 8 * v200);
            sub_1AF4410A8(v202);
            v203 = sub_1AF93FA18(v202, v229);
            if ((~v203 & 0xF000000000000007) == 0)
            {
              break;
            }

            v204 = v203;
            sub_1AF441114(v202);
            v243 = v196;
            v206 = v196[2];
            v205 = v196[3];
            if (v206 >= v205 >> 1)
            {
              sub_1AFC078EC(v205 > 1, v206 + 1, 1);
              v196 = v243;
            }

            ++v200;
            v196[2] = v206 + 1;
            v196[v206 + 4] = v204;
            if (v199 == v200)
            {
              sub_1AF949D48(v301, &qword_1EB638968, &type metadata for TypeConstraint);

              goto LABEL_105;
            }
          }

          v241 = 0;
          v242 = 0xE000000000000000;
          sub_1AFDFE218();

          v241 = 0x2074757074754FLL;
          v242 = 0xE700000000000000;
          v240 = v200;
          v207 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v207);

          MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF3B4C0);
          v236 = v241;
          v233 = v242;
          sub_1AF9371BC();
          v208 = v234;
          v232 = swift_allocError();
          v230 = v209;
          v210 = v235;
          v235[v208[8]] = 0;
          v211 = v231;
          *v210 = v231;
          v212 = v208[5];
          v228 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v213 = sub_1AFDFC318();
          v214 = *(v213 - 8);
          (*(v214 + 16))(&v210[v212], v211 + v228, v213);
          (*(v214 + 56))(&v210[v212], 0, 1, v213);
          v215 = &v210[v208[6]];
          *v215 = 5;
          v215[8] = -64;
          v216 = &v210[v208[7]];
          v217 = v233;
          *v216 = v236;
          *(v216 + 1) = v217;
          sub_1AF94A0F8(v210, v230, type metadata accessor for GraphError);
          v218 = *(v237 + 24);
          v219 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v14 = *(v218 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

          v220 = swift_isUniquelyReferenced_nonNull_native();
          *(v218 + v219) = v14;
          if ((v220 & 1) == 0)
          {
            v14 = sub_1AF420408(0, v14[2] + 1, 1, v14);
            *(v218 + v219) = v14;
          }

          v222 = v14[2];
          v221 = v14[3];
          if (v222 >= v221 >> 1)
          {
            v14 = sub_1AF420408(v221 > 1, v222 + 1, 1, v14);
          }

          v14[2] = v222 + 1;
          v223 = v232;
          v14[v222 + 4] = v232;
          *(v218 + v219) = v14;
          swift_willThrow();
          v224 = v223;

          sub_1AF949D48(v301, &qword_1EB638968, &type metadata for TypeConstraint);

          sub_1AF441114(v202);
          goto LABEL_35;
        }

        sub_1AF949D48(v301, &qword_1EB638968, &type metadata for TypeConstraint);

        v196 = MEMORY[0x1E69E7CC0];
LABEL_105:
        v195 = v231;
        v26 = v239;
      }

      MEMORY[0x1EEE9AC00](v197);
      *(&v226 - 6) = v195;
      *(&v226 - 5) = v238;
      *(&v226 - 4) = v26;
      v225 = v236;
      *(&v226 - 3) = v196;
      *(&v226 - 2) = v225;
      v14 = sub_1AF96FE5C(sub_1AF949E40);
    }
  }

  return v14;
}

uint64_t sub_1AF9469F4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
  v11 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v12 = sub_1AFDFC318();
  v13 = *(*(v12 - 8) + 24);

  v13(&a1[v11], a2 + v10, v12);
  *(a1 + 2) = a3;

  v14 = *(a1 + 3);
  v15 = *(a1 + 4);
  *(a1 + 3) = a4;
  *(a1 + 4) = a5;

  return sub_1AF919DAC(v14, v15);
}

uint64_t sub_1AF946AE0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF946B64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  (*(**(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(&v28);
  v39 = v28;
  if (*(v28 + 16) <= a2)
  {
    goto LABEL_6;
  }

  v6 = *(v28 + 8 * a2 + 32);
  if (v6 >> 61 == 4)
  {

    sub_1AF949D48(&v39, &qword_1EB638968, &type metadata for TypeConstraint);
    v38 = v29;
    sub_1AF949D48(&v38, &qword_1EB638968, &type metadata for TypeConstraint);
    v37 = v30;
    sub_1AF949D48(&v37, &qword_1EB638968, &type metadata for TypeConstraint);
    v36 = v31;
    sub_1AF91219C(&v36);
    v35 = v32;
    sub_1AF91219C(&v35);
    v34 = v33;
    sub_1AF949D48(&v34, &qword_1EB638978, &type metadata for AnyValue);
    v7 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AF442064(v7);
    sub_1AF441114(v6);
    return v7;
  }

  sub_1AF4410A8(v6);
  v9 = sub_1AF9C503C(v6);
  if (v10)
  {
    sub_1AF441114(v6);
LABEL_6:
    sub_1AF949D48(&v39, &qword_1EB638968, &type metadata for TypeConstraint);
    v38 = v29;
    sub_1AF949D48(&v38, &qword_1EB638968, &type metadata for TypeConstraint);
    v37 = v30;
    sub_1AF949D48(&v37, &qword_1EB638968, &type metadata for TypeConstraint);
    v36 = v31;
    sub_1AF91219C(&v36);
    v35 = v32;
    sub_1AF91219C(&v35);
    v34 = v33;
    sub_1AF949D48(&v34, &qword_1EB638978, &type metadata for AnyValue);
    return 0xF000000000000007;
  }

  v11 = v9;
  v38 = v30;
  v12 = *(v30 + 8 * v9 + 32);
  if (v12 >> 61 != 4)
  {
    sub_1AF949D48(&v39, &qword_1EB638968, &type metadata for TypeConstraint);
    sub_1AF949D48(&v38, &qword_1EB638968, &type metadata for TypeConstraint);
    v16 = v29;
    v36 = v31;
    v37 = v29;
    sub_1AF91219C(&v36);
    v35 = v32;
    sub_1AF91219C(&v35);
    v34 = v33;
    sub_1AF949D48(&v34, &qword_1EB638978, &type metadata for AnyValue);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = v16 + 32;
      do
      {
        v20 = *(v19 + 8 * v18);
        sub_1AF4410A8(v20);
        v21 = sub_1AF9C503C(v20);
        if ((v22 & 1) == 0 && v21 == v11 && (v23 = *(v3 + 48), *(v23 + 16)))
        {

          v24 = sub_1AF41B134(a1, v18);
          if (v25)
          {
            v26 = v24;
            sub_1AF949D48(&v37, &qword_1EB638968, &type metadata for TypeConstraint);
            v27 = *(*(v23 + 56) + 8 * v26);
            sub_1AF442064(v27);
            sub_1AF441114(v20);

            sub_1AF441114(v6);

            return v27;
          }

          sub_1AF441114(v20);
        }

        else
        {
          sub_1AF441114(v20);
        }

        ++v18;
      }

      while (v17 != v18);
    }

    sub_1AF949D48(&v37, &qword_1EB638968, &type metadata for TypeConstraint);
    sub_1AF441114(v6);
    return 0xF000000000000007;
  }

  sub_1AF441114(v6);
  sub_1AF949D48(&v39, &qword_1EB638968, &type metadata for TypeConstraint);
  v37 = v29;
  sub_1AF949D48(&v37, &qword_1EB638968, &type metadata for TypeConstraint);
  sub_1AF949D48(&v38, &qword_1EB638968, &type metadata for TypeConstraint);
  v36 = v31;
  sub_1AF91219C(&v36);
  v35 = v32;
  sub_1AF91219C(&v35);
  v34 = v33;
  sub_1AF949D48(&v34, &qword_1EB638978, &type metadata for AnyValue);
  v13 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_1AF442064(v13);
  sub_1AF441114(v12);
  result = v13;
  if (!(v13 >> 61))
  {
    v14 = *(v13 + 16);
    v15 = result;
    sub_1AF442064(*(result + 16));
    sub_1AF445BE4(v15);
    return v14;
  }

  return result;
}

uint64_t sub_1AF946FF4(uint64_t a1)
{
  v2 = v1;

  MEMORY[0x1B2718E00](v3);
  if (*((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  sub_1AFDFD4B8();
  v4 = v1[3];
  if (v4 >> 62)
  {
    result = sub_1AFDFE108();
    if (result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      while (1)
      {
LABEL_5:
        v6 = v2[3];
        if (v6 >> 62 && (sub_1AFDFE108(), v6 = v2[3], v6 >> 62))
        {
          if (sub_1AFDFE108())
          {
LABEL_7:
            if ((v6 & 0xC000000000000001) != 0)
            {
              v7 = MEMORY[0x1B2719C70](0, v6);
            }

            else
            {
              v7 = *(v6 + 32);
            }

            goto LABEL_12;
          }
        }

        else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_7;
        }

        v7 = 0;
LABEL_12:
        v8 = v2[3];
        if (v8 >> 62)
        {
          v9 = sub_1AFDFE108();
          v8 = v2[3];
        }

        else
        {
          v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v8 >> 62)
        {
          sub_1AFDFE108();
          v10 = sub_1AFDFE108();
          v8 = v2[3];
        }

        else
        {
          v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v11 = v10 - (v9 != 0);
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v2[3] = v8;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
          if ((v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
          {
LABEL_23:
            sub_1AFDFE108();
          }

LABEL_24:
          v2[3] = sub_1AFDFE268();
          goto LABEL_25;
        }

        if ((v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
        {
          goto LABEL_23;
        }

        if (v11 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }

LABEL_25:
        sub_1AF64E7C4(0, v9 != 0, 0);
        v13 = v2[4];
        if (*(v13 + 16))
        {
          v14 = sub_1AFDFF278();
          v15 = -1 << *(v13 + 32);
          v16 = v14 & ~v15;
          if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            v17 = ~v15;
            while (*(*(v13 + 48) + 8 * v16) != v7)
            {
              v16 = (v16 + 1) & v17;
              if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_81;
          }
        }

LABEL_30:
        sub_1AF70E5AC(&v88, v7);
        v79 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
        v18 = *(*(v7 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) + 16);
        v84 = OBJC_IVAR____TtC3VFX13AuthoringNode_raw;
        v80 = *(v7 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);

        v83 = v7;
        v85 = v18;
        if (v18)
        {
          v19 = 0;
          while (1)
          {
            v20 = (v80 + 32 + 16 * v19);
            v21 = *v20;
            v87 = v20[1];
            v22 = *(**(v7 + v84) + 152);

            v22(&v89, v23);
            v119[0] = v89;
            if (v19 >= *(v89 + 16))
            {
              sub_1AF949D48(v119, &qword_1EB638968, &type metadata for TypeConstraint);
              v118 = v90;
              sub_1AF949D48(&v118, &qword_1EB638968, &type metadata for TypeConstraint);
              v117 = v91;
              sub_1AF949D48(&v117, &qword_1EB638968, &type metadata for TypeConstraint);
              v116 = v92;
              sub_1AF91219C(&v116);
              v115 = v93;
              sub_1AF91219C(&v115);
              v114 = v94;
              sub_1AF949D48(&v114, &qword_1EB638978, &type metadata for AnyValue);

              goto LABEL_33;
            }

            v86 = v21;
            v24 = *(v89 + 8 * v19 + 32);
            if (v24 >> 61 == 4)
            {

              sub_1AF949D48(v119, &qword_1EB638968, &type metadata for TypeConstraint);
              v99 = v90;
              sub_1AF949D48(&v99, &qword_1EB638968, &type metadata for TypeConstraint);
              v98 = v91;
              sub_1AF949D48(&v98, &qword_1EB638968, &type metadata for TypeConstraint);
              v97 = v92;
              sub_1AF91219C(&v97);
              v96 = v93;
              sub_1AF91219C(&v96);
              v95 = v94;
              sub_1AF949D48(&v95, &qword_1EB638978, &type metadata for AnyValue);
              v25 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              sub_1AF442064(v25);
              sub_1AF441114(v24);
LABEL_37:
              v7 = v83;
              goto LABEL_38;
            }

            sub_1AF4410A8(*(v89 + 8 * v19 + 32));
            v34 = sub_1AF9C503C(v24);
            if (v35)
            {
              sub_1AF441114(v24);
              sub_1AF949D48(v119, &qword_1EB638968, &type metadata for TypeConstraint);
              v113 = v90;
              sub_1AF949D48(&v113, &qword_1EB638968, &type metadata for TypeConstraint);
              v112 = v91;
              sub_1AF949D48(&v112, &qword_1EB638968, &type metadata for TypeConstraint);
              v111 = v92;
              sub_1AF91219C(&v111);
              v110 = v93;
              sub_1AF91219C(&v110);
              v109 = v94;
              sub_1AF949D48(&v109, &qword_1EB638978, &type metadata for AnyValue);

              v7 = v83;
              goto LABEL_33;
            }

            v39 = v34;
            v82 = v24;
            v108 = v91;
            v40 = *(v91 + 8 * v34 + 32);
            if (v40 >> 61 == 4)
            {

              sub_1AF441114(v24);
              sub_1AF949D48(v119, &qword_1EB638968, &type metadata for TypeConstraint);
              v103 = v90;
              sub_1AF949D48(&v103, &qword_1EB638968, &type metadata for TypeConstraint);
              sub_1AF949D48(&v108, &qword_1EB638968, &type metadata for TypeConstraint);
              v102 = v92;
              sub_1AF91219C(&v102);
              v101 = v93;
              sub_1AF91219C(&v101);
              v100 = v94;
              sub_1AF949D48(&v100, &qword_1EB638978, &type metadata for AnyValue);
              v25 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              sub_1AF442064(v25);
              sub_1AF441114(v40);
              if (!(v25 >> 61))
              {
                v41 = *(v25 + 16);
                sub_1AF442064(v41);
                sub_1AF445BE4(v25);
                v25 = v41;
              }

              goto LABEL_37;
            }

            sub_1AF949D48(v119, &qword_1EB638968, &type metadata for TypeConstraint);
            sub_1AF949D48(&v108, &qword_1EB638968, &type metadata for TypeConstraint);
            v42 = v90;
            v106 = v92;
            v107 = v90;
            sub_1AF91219C(&v106);
            v105 = v93;
            sub_1AF91219C(&v105);
            v104 = v94;
            sub_1AF949D48(&v104, &qword_1EB638978, &type metadata for AnyValue);
            v43 = *(v42 + 16);
            if (!v43)
            {
LABEL_58:
              sub_1AF949D48(&v107, &qword_1EB638968, &type metadata for TypeConstraint);
              sub_1AF441114(v82);

              v7 = v83;
              goto LABEL_33;
            }

            v44 = 0;
            v45 = v42 + 32;
            v81 = *(v42 + 16);
            while (1)
            {
              v46 = *(v45 + 8 * v44);
              sub_1AF4410A8(v46);
              v47 = sub_1AF9C503C(v46);
              if ((v48 & 1) == 0 && v47 == v39)
              {
                v49 = v2[6];
                if (*(v49 + 16))
                {
                  break;
                }
              }

              sub_1AF441114(v46);
LABEL_52:
              if (v43 == ++v44)
              {
                goto LABEL_58;
              }
            }

            v50 = v45;
            v51 = v39;
            v52 = v2;
            v7 = v83;

            v53 = sub_1AF41B134(v83, v44);
            if ((v54 & 1) == 0)
            {
              break;
            }

            v55 = v53;
            sub_1AF949D48(&v107, &qword_1EB638968, &type metadata for TypeConstraint);
            v25 = *(*(v49 + 56) + 8 * v55);
            sub_1AF442064(v25);
            sub_1AF441114(v46);

            sub_1AF441114(v82);

            v2 = v52;
LABEL_38:

            sub_1AF442064(v25);
            sub_1AF949DB8(v25);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v88 = v2[5];
            v27 = v88;
            v2[5] = 0x8000000000000000;
            v28 = sub_1AF41B134(v7, v19);
            v31 = v30;
            v32 = *(v27 + 16) + ((v30 & 1) == 0);
            if (*(v27 + 24) >= v32)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_44;
              }

              v56 = v28;
              sub_1AF84EA54(v29);
              v28 = v56;
              v36 = v88;
              if ((v31 & 1) == 0)
              {
                goto LABEL_61;
              }

LABEL_45:
              v37 = v36[7];
              v38 = *(v37 + 8 * v28);
              *(v37 + 8 * v28) = v25;
              sub_1AF445BE4(v38);
            }

            else
            {
              sub_1AF83F8C4(v32, isUniquelyReferenced_nonNull_native);
              v28 = sub_1AF41B134(v7, v19);
              if ((v31 & 1) != (v33 & 1))
              {
                goto LABEL_91;
              }

LABEL_44:
              v36 = v88;
              if (v31)
              {
                goto LABEL_45;
              }

LABEL_61:
              v36[(v28 >> 6) + 8] |= 1 << v28;
              v57 = (v36[6] + 16 * v28);
              *v57 = v7;
              v57[1] = v19;
              *(v36[7] + 8 * v28) = v25;
              ++v36[2];
            }

            v2[5] = v36;

            if (v86)
            {
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v88 = v2[6];
              v59 = v88;
              v2[6] = 0x8000000000000000;
              v60 = sub_1AF41B134(v86, v87);
              v63 = v62;
              v64 = *(v59 + 16) + ((v62 & 1) == 0);
              if (*(v59 + 24) >= v64)
              {
                if ((v58 & 1) == 0)
                {
                  v70 = v60;
                  sub_1AF84EA54(v61);
                  v60 = v70;
                }
              }

              else
              {
                sub_1AF83F8C4(v64, v58);
                v60 = sub_1AF41B134(v86, v87);
                if ((v63 & 1) != (v65 & 1))
                {
LABEL_91:
                  result = sub_1AFDFF1A8();
                  __break(1u);
                  return result;
                }
              }

              v66 = v88;
              if (v63)
              {
                v67 = *(v88 + 56);
                v68 = *(v67 + 8 * v60);
                *(v67 + 8 * v60) = v25;
                sub_1AF445BE4(v68);

                sub_1AF445BE4(v25);
              }

              else
              {
                *(v88 + 8 * (v60 >> 6) + 64) |= 1 << v60;
                v69 = (v66[6] + 16 * v60);
                *v69 = v86;
                v69[1] = v87;
                *(v66[7] + 8 * v60) = v25;
                sub_1AF445BE4(v25);
                ++v66[2];
              }

              v2[6] = v66;
            }

            else
            {
              sub_1AF914F8C(v25);
              sub_1AF445BE4(v25);
            }

LABEL_33:
            if (++v19 == v85)
            {
              goto LABEL_73;
            }
          }

          sub_1AF441114(v46);

          v39 = v51;
          v45 = v50;
          v43 = v81;
          goto LABEL_52;
        }

LABEL_73:

        v71 = *(v7 + v79);
        v72 = MEMORY[0x1E69E7CC0];
        v88 = MEMORY[0x1E69E7CC0];
        v73 = *(v71 + 16);

        v74 = 0;
LABEL_74:
        v75 = 16 * v74 + 32;
        while (v73 + 1 != ++v74)
        {
          v76 = *(v71 + v75);
          v75 += 16;
          if (v76)
          {

            MEMORY[0x1B2718E00](v77);
            if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1AFDFD458();
            }

            sub_1AFDFD4B8();
            v72 = v88;
            goto LABEL_74;
          }
        }

        sub_1AF48F6CC(v72);
LABEL_81:

        v78 = v2[3];
        if (v78 >> 62)
        {
          result = sub_1AFDFE108();
          if (!result)
          {
            return result;
          }
        }

        else if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF947BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF947CA0();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_1AFDFE108();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2719C70](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    sub_1AF946FF4(v8);
  }

LABEL_10:

  return sub_1AF946B64(a1, a2);
}

uint64_t sub_1AF947CA0()
{
  v1 = MEMORY[0x1E69E7CC0];
  v17 = sub_1AF42B0C8(MEMORY[0x1E69E7CC0]);
  v14 = 0x1000000000000000;
  v15 = &v17;
  v12[2] = sub_1AF949CAC;
  v12[3] = &v13;
  v16[0] = sub_1AF42B0F4(v1);
  v16[1] = v2;
  sub_1AF412AA8(sub_1AF439EA4, v12, 1, 0x1000000000000000uLL, 0, v1, v16);

  v3 = sub_1AF3D9910(v17);

  v4 = *(v0 + 24);
  v16[0] = v1;
  if (v4 >> 62)
  {
    v5 = sub_1AFDFE108();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B2719C70](i, v4);
      if (!*(v3 + 16))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);

      if (!*(v3 + 16))
      {
        goto LABEL_5;
      }
    }

    v8 = sub_1AF0D3F10(v7);
    if ((v9 & 1) == 0 || !*(*(*(v3 + 56) + 8 * v8) + 16))
    {
LABEL_5:
      sub_1AFDFE328();
      sub_1AFDFE398();
      sub_1AFDFE3A8();
      sub_1AFDFE348();
      continue;
    }
  }

  v10 = v16[0];
LABEL_16:

  return v10;
}

uint64_t sub_1AF947E8C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF947F08(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = a1;
  (*(**(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v35);
  v5 = sub_1AF97228C();
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_34:
    v41 = v35[0];
    sub_1AF949D48(&v41, &qword_1EB638968, &type metadata for TypeConstraint);
    v40 = v35[1];
    sub_1AF949D48(&v40, &qword_1EB638968, &type metadata for TypeConstraint);
    v39 = v35[2];
    sub_1AF949D48(&v39, &qword_1EB638968, &type metadata for TypeConstraint);
    v38 = v35[3];
    sub_1AF91219C(&v38);
    v37 = v35[4];
    sub_1AF91219C(&v37);
    v36 = v35[5];
    sub_1AF949D48(&v36, &qword_1EB638978, &type metadata for AnyValue);
  }

  v7 = 0;
  v8 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
  v9 = (v5 + 40);
  v32 = *(v5 + 16);
  v33 = v4;
  while (1)
  {
    v10 = *(v9 - 1);
    if (!v10)
    {
      goto LABEL_4;
    }

    v11 = *v9;
    if (v7 >= *(v35[0] + 16))
    {
      v12 = 0xA000000000000000;
    }

    else
    {
      v12 = *(v35[0] + 8 * v7 + 32);
      sub_1AF4410A8(v12);
    }

    if (!v8)
    {
      v14 = sub_1AF9C5694(v12, a2);
      sub_1AF441114(v12);
      if (v14)
      {
        goto LABEL_16;
      }

      goto LABEL_3;
    }

    if (v8 != 1)
    {
      break;
    }

    v13 = sub_1AF9C5694(v12, a2 & 0xEFFFFFFFFFFFFFFBLL);
    sub_1AF441114(v12);
    if (!v13)
    {
      goto LABEL_16;
    }

LABEL_3:

    v8 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
LABEL_4:
    ++v7;
    v9 += 2;
    if (v6 == v7)
    {
      goto LABEL_34;
    }
  }

  sub_1AF441114(v12);
LABEL_16:
  v15 = *a3;
  if (*(*a3 + 16) && (v16 = sub_1AF0D3F10(v10), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1AF41FB68(0, v18[2] + 1, 1, v18);
  }

  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1AF41FB68(v19 > 1, v20 + 1, 1, v18);
  }

  v18[2] = v20 + 1;
  v21 = &v18[3 * v20];
  v21[4] = v4;
  v21[5] = v11;
  v21[6] = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *a3;
  v23 = v41;
  *a3 = 0x8000000000000000;
  v25 = sub_1AF0D3F10(v10);
  v26 = v24;
  v27 = v23[2] + ((v24 & 1) == 0);
  if (v23[3] >= v27)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v41;
      if (v24)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_1AF843FA0();
      v30 = v41;
      if (v26)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v30[(v25 >> 6) + 8] |= 1 << v25;
    *(v30[6] + 8 * v25) = v10;
    *(v30[7] + 8 * v25) = v18;

    ++v30[2];
LABEL_31:
    v8 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
    *a3 = v30;

    v6 = v32;
    v4 = v33;
    goto LABEL_4;
  }

  sub_1AF82BEA8(v27, isUniquelyReferenced_nonNull_native);
  v28 = sub_1AF0D3F10(v10);
  if ((v26 & 1) == (v29 & 1))
  {
    v25 = v28;
    v30 = v41;
    if ((v26 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    *(v30[7] + 8 * v25) = v18;

    goto LABEL_31;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF9482F8(void *a1, unint64_t a2, void *a3)
{
  (*(*a1 + 152))(v45);
  v44 = a1;
  v5 = a1[2];
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v43 = a3;
  if (v6)
  {
    v51 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v6, 0);
    v8 = 0;
    v7 = v51;
    v9 = v51[2];
    v10 = 2 * v9;
    do
    {
      v12 = *(v5 + v8 * 8 + 32);
      v11 = *(v5 + v8 * 8 + 40);
      v51 = v7;
      v13 = v7[3];

      if (v9 >= v13 >> 1)
      {
        sub_1AFC05E2C(v13 > 1, v9 + 1, 1);
        v7 = v51;
      }

      v7[2] = v9 + 1;
      v14 = &v7[v10 + v8];
      v14[4] = v12;
      v14[5] = v11;
      v8 += 2;
      ++v9;
      --v6;
    }

    while (v6);

    a3 = v43;
  }

  v15 = v7[2];
  if (!v15)
  {
LABEL_40:
    v51 = v45[0];
    sub_1AF949D48(&v51, &qword_1EB638968, &type metadata for TypeConstraint);
    v50 = v45[1];
    sub_1AF949D48(&v50, &qword_1EB638968, &type metadata for TypeConstraint);
    v49 = v45[2];
    sub_1AF949D48(&v49, &qword_1EB638968, &type metadata for TypeConstraint);
    v48 = v45[3];
    sub_1AF91219C(&v48);
    v47 = v45[4];
    sub_1AF91219C(&v47);
    v46 = v45[5];
    sub_1AF949D48(&v46, &qword_1EB638978, &type metadata for AnyValue);
  }

  v16 = 0;
  v17 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
  v18 = v7 + 5;
  v41 = v7[2];
  while (1)
  {
    v19 = *(v18 - 1);
    if (!v19)
    {
      goto LABEL_10;
    }

    v20 = *v18;
    if (v16 >= *(v45[0] + 16))
    {
      v21 = 0xA000000000000000;
    }

    else
    {
      v21 = *(v45[0] + 8 * v16 + 32);
      sub_1AF4410A8(v21);
    }

    if (!v17)
    {
      v23 = sub_1AF9C5694(v21, a2);
      sub_1AF441114(v21);
      if (v23)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    if (v17 != 1)
    {
      break;
    }

    v22 = sub_1AF9C5694(v21, a2 & 0xEFFFFFFFFFFFFFFBLL);
    sub_1AF441114(v21);
    if (!v22)
    {
      goto LABEL_22;
    }

LABEL_9:

    v17 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
LABEL_10:
    ++v16;
    v18 += 2;
    if (v15 == v16)
    {
      goto LABEL_40;
    }
  }

  sub_1AF441114(v21);
LABEL_22:
  v24 = *a3;
  if (*(*a3 + 16) && (v25 = sub_1AF0D3F10(v19), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1AF420AC8(0, v27[2] + 1, 1, v27);
  }

  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1AF420AC8(v28 > 1, v29 + 1, 1, v27);
  }

  v27[2] = v29 + 1;
  v30 = &v27[3 * v29];
  v30[4] = v44;
  v30[5] = v20;
  v30[6] = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *a3;
  v32 = v51;
  *a3 = 0x8000000000000000;
  v34 = sub_1AF0D3F10(v19);
  v35 = v33;
  v36 = v32[2] + ((v33 & 1) == 0);
  if (v32[3] >= v36)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v39 = v51;
      if (v33)
      {
        goto LABEL_36;
      }
    }

    else
    {
      sub_1AF844B3C();
      v39 = v51;
      if (v35)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v39[(v34 >> 6) + 8] |= 1 << v34;
    *(v39[6] + 8 * v34) = v19;
    *(v39[7] + 8 * v34) = v27;

    ++v39[2];
LABEL_37:
    v17 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
    a3 = v43;
    *v43 = v39;

    v15 = v41;
    goto LABEL_10;
  }

  sub_1AF82CE5C(v36, isUniquelyReferenced_nonNull_native);
  v37 = sub_1AF0D3F10(v19);
  if ((v35 & 1) == (v38 & 1))
  {
    v34 = v37;
    v39 = v51;
    if ((v35 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_36:
    *(v39[7] + 8 * v34) = v27;

    goto LABEL_37;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

id sub_1AF948790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF92371C(0);
  v5 = a1 + *(v4 + 48);
  sub_1AF94A008(0);
  v7 = a2 + *(v6 + 48);
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = sub_1AFDFC318();
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  *v7 = v8;
  *(v7 + 8) = v9;

  return sub_1AF85AA64(v8, v9);
}

double sub_1AF948848@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v25 = v1[2];
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = v14[1];
    v24 = *v14;
    sub_1AF4455CC(*(v3 + 56) + 88 * v13, &v26);
    v22 = v27;
    v23 = v26;
    v20 = v29;
    v21 = v28;
    v16 = v30;
    v17 = v31;
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v25;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v18 = v1[5];
      *&v26 = v24;
      *(&v26 + 1) = v15;
      v27 = v23;
      v28 = v22;
      v29 = v21;
      v30 = v20;
      v31 = v16;
      v32 = v17;
      v18(&v26);
      sub_1AF94A160(&v26, sub_1AF7711B0);
      return result;
    }
  }

  else
  {
    v6 = v1[2];
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        break;
      }

      v7 = *(v4 + 8 + 8 * v5++);
      if (v7)
      {
        v25 = v1[2];
        goto LABEL_10;
      }
    }

    v1[3] = v11;
    v1[4] = 0;
  }

  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1AF9489BC@<X0>(uint64_t a1@<X8>)
{
  sub_1AF92371C(0);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF949DCC(0, &qword_1EB640728, sub_1AF92371C);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - v13;
  v17 = *v1;
  v16 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v46 = v19;
  v47 = v16;
  if (v20)
  {
    v44 = v11;
    v45 = a1;
    v21 = v18;
LABEL_10:
    v43 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v21 << 6);
    (*(v6 + 16))(v8, *(v17 + 48) + *(v6 + 72) * v26, v5, v14);
    v27 = *(v17 + 56) + 16 * v26;
    v28 = *v27;
    v29 = *(v27 + 8);
    v30 = v5;
    v31 = v49;
    v32 = &v15[*(v49 + 48)];
    (*(v6 + 32))(v15, v8, v30);
    *v32 = v28;
    v32[8] = v29;
    v33 = v48;
    (*(v48 + 56))(v15, 0, 1, v31);
    sub_1AF85AA64(v28, v29);
    v34 = v43;
    v11 = v44;
    v24 = v21;
    a1 = v45;
  }

  else
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = v22;
    }

    v24 = v23 - 1;
    v25 = v16 + 8;
    while (1)
    {
      v21 = v18 + 1;
      if (v18 + 1 >= v22)
      {
        break;
      }

      v20 = *(v25 + 8 * v18++);
      if (v20)
      {
        v44 = v11;
        v45 = a1;
        goto LABEL_10;
      }
    }

    v33 = v48;
    v31 = v49;
    (*(v48 + 56))(&v42 - v13, 1, 1, v49, v14);
    v34 = 0;
  }

  v35 = v46;
  v36 = v47;
  *v1 = v17;
  v1[1] = v36;
  v1[2] = v35;
  v1[3] = v24;
  v1[4] = v34;
  v37 = v1[5];
  sub_1AF94A078(v15, v11);
  v38 = 1;
  if ((*(v33 + 48))(v11, 1, v31) != 1)
  {
    v39 = v42;
    sub_1AF94A0F8(v11, v42, sub_1AF92371C);
    v37(v39);
    sub_1AF94A160(v39, sub_1AF92371C);
    v38 = 0;
  }

  sub_1AF94A008(0);
  return (*(*(v40 - 8) + 56))(a1, v38, 1, v40);
}

uint64_t sub_1AF948DB4(uint64_t result, void *a2, uint64_t (*a3)(uint64_t *))
{
  v6 = *result;
  v3 = *(result + 8);
  v7 = v3;
  v8 = *(result + 24);
  if (!*a2)
  {
    v5 = v3;
    result = a3(&v6);
    if (result)
    {

      *a2 = v5;
    }
  }

  return result;
}

uint64_t sub_1AF948E48(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1AFDFC318();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  v62 = a2;
  v61 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
  v14 = *(a2 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
  v63 = a1;
  v15 = v14 + 16 * a1;
  v17 = *(v15 + 32);
  v16 = *(v15 + 40);
  type metadata accessor for AutoCastNode(0);
  v18 = swift_allocObject();
  *&v18[OBJC_IVAR____TtC3VFX8CastNode_dstType] = a3;
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 3) = 0;
  *(v18 + 4) = 0;
  *(v18 + 2) = v19;
  v20 = OBJC_IVAR____TtC3VFX4Node_authoringID;

  sub_1AF442064(a3);
  v56 = v20;
  sub_1AFDFC308();
  sub_1AF949CCC(0, &qword_1EB630A28, &qword_1EB6323D0, &type metadata for AuthoringNode.Port, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v17;
  *(inited + 40) = v16;
  v22 = *(v7 + 56);
  v55 = v13;
  v60 = v6;
  v22(v13, 1, 1, v6);
  type metadata accessor for AuthoringNode(0);
  v23 = swift_allocObject();
  v24 = v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 1;
  v25 = v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  v26 = v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = (v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v27 = 0;
  v27[1] = 0;
  *(v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v18;
  sub_1AF986554(v65);
  v28 = v65[0];
  v70 = v65[1];
  v71 = v65[0];
  v59 = v17;

  sub_1AF949D48(&v70, &qword_1EB638968, &type metadata for TypeConstraint);
  v69 = v65[2];
  sub_1AF949D48(&v69, &qword_1EB638968, &type metadata for TypeConstraint);
  v68 = v65[3];
  sub_1AF91219C(&v68);
  v67 = v65[4];
  sub_1AF91219C(&v67);
  v66 = v65[5];
  sub_1AF949D48(&v66, &qword_1EB638978, &type metadata for AnyValue);
  v29 = *(v28 + 16);
  sub_1AF949D48(&v71, &qword_1EB638968, &type metadata for TypeConstraint);
  v30 = v29 - 1;
  if (v29 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v29;
  }

  v64 = v19;
  sub_1AFC05D04(0, v31, 0);
  v32 = v64;
  v54 = *(inited + 32);
  v34 = *(v64 + 16);
  v33 = *(v64 + 24);

  if (v34 >= v33 >> 1)
  {
    sub_1AFC05D04(v33 > 1, v34 + 1, 1);
    v32 = v64;
  }

  *(v32 + 16) = v34 + 1;
  *(v32 + 16 * v34 + 32) = v54;
  if (v29 >= 2)
  {
    v40 = 16 * v34 + 48;
    v41 = v34 + 2;
    v35 = v60;
    do
    {
      v64 = v32;
      v42 = *(v32 + 24);
      if (v41 - 1 >= v42 >> 1)
      {
        sub_1AFC05D04(v42 > 1, v41, 1);
        v32 = v64;
      }

      *(v32 + 16) = v41;
      v43 = (v32 + v40);
      *v43 = 0;
      v43[1] = 0;
      v40 += 16;
      ++v41;
      --v30;
    }

    while (v30);
  }

  else
  {
    v35 = v60;
  }

  *(v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v32;
  v36 = v55;
  v37 = v57;
  sub_1AF487314(v55, v57);
  v38 = *(v7 + 48);
  if (v38(v37, 1, v35) == 1)
  {
    v39 = v58;
    sub_1AFDFC308();
    sub_1AF949E6C(v36, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    if (v38(v37, 1, v35) != 1)
    {
      sub_1AF949E6C(v37, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    }
  }

  else
  {
    sub_1AF949E6C(v36, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v39 = v58;
    (*(v7 + 32))(v58, v37, v35);
  }

  (*(v7 + 32))(v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v39, v35);
  (*(v7 + 24))(&v18[v56], v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v35);

  v44 = v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v44 = 0;
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  v45 = v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v45 = 0;
  *(v45 + 8) = 0;
  *(v45 + 16) = 1;
  v46 = v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v46 = 0;
  *(v46 + 8) = 1;
  v47 = (v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v47 = 0;
  v47[1] = 0;

  v48 = v62;
  v49 = v61;
  v50 = *(v62 + v61);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v48 + v49) = v50;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *(v48 + v49) = sub_1AFC0DA6C(v50);
  }

  v52 = *(v48 + v49) + 16 * v63;
  *(v52 + 32) = v23;
  *(v52 + 40) = 0;
}

uint64_t sub_1AF94951C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v61 = sub_1AFDFC318();
  v47 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF949DCC(0, &qword_1EB640720, sub_1AF94A008);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v45 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v54 = a1;
  v55 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v56 = v16;
  v57 = 0;
  v58 = v19 & v17;
  v59 = a2;
  v60 = a3;

  v45[1] = a3;

  sub_1AF9489BC(v14);
  sub_1AF94A008(0);
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 48);
  v49 = v22 + 48;
  v50 = v23;
  if (v23(v14, 1, v20) == 1)
  {
LABEL_5:
    sub_1AF0FBB14(v54);
  }

  v51 = *(v47 + 32);
  v52 = v47 + 32;
  v46 = (v47 + 8);
  v53 = v11;
  v48 = v21;
  while (1)
  {
    v27 = &v14[*(v21 + 48)];
    v51(v11, v14, v61);
    v28 = *v27;
    v29 = v27[8];
    v30 = *a5;
    v31 = sub_1AF419940(v11);
    v33 = v32;
    v34 = *(v30 + 16) + ((v32 & 1) == 0);
    if (*(v30 + 24) >= v34)
    {
      if ((a4 & 1) == 0)
      {
        sub_1AF8443C0();
      }

      goto LABEL_14;
    }

    sub_1AF82C288(v34, a4 & 1);
    v35 = sub_1AF419940(v11);
    if ((v33 & 1) != (v36 & 1))
    {
      break;
    }

    v31 = v35;
LABEL_14:
    v37 = a5;
    v38 = *a5;
    if (v33)
    {
      v39 = v38[7] + 16 * v31;
      v40 = *v39;
      v41 = *(v39 + 8);
      sub_1AF85AA64(*v39, v41);
      sub_1AF85AA70(v28, v29);
      (*v46)(v53, v61);
      v42 = v38[7] + 16 * v31;
      v43 = *v42;
      v44 = *(v42 + 8);
      *v42 = v40;
      *(v42 + 8) = v41;
      sub_1AF85AA70(v43, v44);
    }

    else
    {
      v38[(v31 >> 6) + 8] |= 1 << v31;
      v51((v38[6] + *(v47 + 72) * v31), v53, v61);
      v25 = v38[7] + 16 * v31;
      *v25 = v28;
      *(v25 + 8) = v29;
      ++v38[2];
    }

    sub_1AF9489BC(v14);
    a4 = 1;
    v21 = v48;
    v26 = v50(v14, 1, v48);
    a5 = v37;
    v11 = v53;
    if (v26 == 1)
    {
      goto LABEL_5;
    }
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

void *sub_1AF9498E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v9 = sub_1AFDFC318();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a2 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v9, v11);
  v14 = *(a4 + 40);
  v15 = *(v14 + 16);

  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = sub_1AF419940(v13);
  if ((v17 & 1) == 0)
  {

LABEL_6:
    (*(v10 + 8))(v13, v9);
    goto LABEL_7;
  }

  v18 = *(*(v14 + 56) + v16);
  (*(v10 + 8))(v13, v9);

  if (v18)
  {
    goto LABEL_8;
  }

LABEL_7:
  v19 = *(a5 + 8 * a1 + 32);
  v20 = swift_allocObject();
  *(v20 + 16) = 0xC000000000000008;
  sub_1AF4410A8(v19);
  v21 = sub_1AF9C5694(v19, v20 | 0x8000000000000000);

  sub_1AF441114(v19);
  if (v21)
  {
LABEL_8:
    type metadata accessor for _PlaceholderNode(0);
    v22 = swift_allocObject();
    v28[3] = type metadata accessor for AuthoringNode(0);
    v28[4] = &off_1EE801558;
    v28[0] = a2;
    sub_1AF441194(v28, v22 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
    v23 = MEMORY[0x1E69E7CC0];
    v22[3] = 0;
    v22[4] = 0;
    v22[2] = v23;
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v28);
    return v22;
  }

  v24 = sub_1AF93F510(a2);
  v22 = v24;
  if (v25)
  {
    v28[0] = v24;
    sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
    swift_willThrowTypedImpl();
  }

  return v22;
}

id sub_1AF949B90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_graphID;
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_rawNodesByID;
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[v5] = sub_1AF42B7E0(MEMORY[0x1E69E7CC0]);
  v7 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
  *&v1[OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics] = v6;
  sub_1AF7D5A10(a1 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_graphID, &v1[v3]);
  *&v1[v5] = *(a1 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_rawNodesByID);

  *&v1[v7] = *(a1 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

  v9.receiver = v1;
  v9.super_class = type metadata accessor for GraphDiagnostics(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_1AF949CCC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AF949F40(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF949D48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF949F40(0, a2, a3, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF949DB8(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1AF442064(result);
  }

  return result;
}

void sub_1AF949DCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF949E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF949DCC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF949EC8(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1AF445BE4(a2);
  }

  return result;
}

void sub_1AF949EE0()
{
  if (!qword_1EB630B78)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630B78);
    }
  }
}

void sub_1AF949F40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AF94A008(uint64_t a1)
{
  if (!qword_1EB632740)
  {
    sub_1AFDFC318();
    sub_1AF444718(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB632740);
    }
  }
}

uint64_t sub_1AF94A078(uint64_t a1, uint64_t a2)
{
  sub_1AF949DCC(0, &qword_1EB640728, sub_1AF92371C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF94A0F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF94A160(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphError.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 9))
  {
    return (*a1 + 122);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GraphError.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 8) = 0;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1AF94A284(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= 0xBF)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1AF94A2B0(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 8) = *(result + 8) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = -64;
  }

  return result;
}

char *sub_1AF94A2EC(char *a1, char *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v7 = a1;
    v8 = a3[5];
    v9 = sub_1AFDFC318();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      memcpy(&v7[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v7[v8], &a2[v8], v9);
      (*(v10 + 56))(&v7[v8], 0, 1, v9);
    }

    v13 = a3[6];
    v14 = a3[7];
    v15 = &v7[v13];
    v16 = &a2[v13];
    *v15 = *v16;
    v15[8] = v16[8];
    v17 = &v7[v14];
    v18 = &a2[v14];
    v19 = *(v18 + 1);
    *v17 = *v18;
    *(v17 + 1) = v19;
    v7[a3[8]] = a2[a3[8]];
  }

  return v7;
}

uint64_t sub_1AF94A4C8(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }
}

char *sub_1AF94A594(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(&a2[v6], 1, v7))
  {
    sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v11 = a3[6];
  v12 = a3[7];
  v13 = &a1[v11];
  v14 = &a2[v11];
  *v13 = *v14;
  v13[8] = v14[8];
  v15 = &a1[v12];
  v16 = &a2[v12];
  v17 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 1) = v17;
  a1[a3[8]] = a2[a3[8]];

  return a1;
}

char *sub_1AF94A710(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  v13 = a3[6];
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = *v15;
  v14[8] = v15[8];
  *v14 = v16;
  v17 = a3[7];
  v18 = &a1[v17];
  v19 = &a2[v17];
  *v18 = *v19;
  *(v18 + 1) = *(v19 + 1);

  a1[a3[8]] = a2[a3[8]];
  return a1;
}

char *sub_1AF94A908(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v10 = a3[6];
  v11 = a3[7];
  v12 = &a1[v10];
  v13 = &a2[v10];
  *v12 = *v13;
  v12[8] = v13[8];
  *&a1[v11] = *&a2[v11];
  a1[a3[8]] = a2[a3[8]];
  return a1;
}

char *sub_1AF94AA60(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  v13 = a3[6];
  v14 = a3[7];
  v15 = &a1[v13];
  v16 = &a2[v13];
  *v15 = *v16;
  v15[8] = v16[8];
  v17 = &a1[v14];
  v18 = &a2[v14];
  v20 = *v18;
  v19 = *(v18 + 1);
  *v17 = v20;
  *(v17 + 1) = v19;

  a1[a3[8]] = a2[a3[8]];
  return a1;
}

void sub_1AF94AC64(uint64_t a1)
{
  sub_1AF949DCC(319, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_1AF94AD50(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF624828(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1AF957AB0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF94ADBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a1;
  sub_1AF4471E8(0);
  v66 = v5;
  v60 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = (&v49 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v64 = (&v49 - v12);
  sub_1AF483618(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v63 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AFDFC318();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v62 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 56);
  v51 = v16 + 56;
  v52 = a3;
  v50 = v19;
  result = (v19)(a3, 1, 1, v15, v17);
  v21 = *(a2 + 16);
  if (v21)
  {
    v65 = (v16 + 8);
    v58 = (v16 + 32);
    v61 = (v16 + 48);
    v55 = (v16 + 16);
    v67 = sub_1AF4486E4();
    v22 = (a2 + 48);
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v24 = *(v22 - 2);
      v25 = *v22;
      v70 = *(v22 - 1);
      v71 = v25;
      v68 = 58;
      v69 = 0xE100000000000000;

      v26 = sub_1AFDFDE98();
      v28 = v26[4];
      v27 = v26[5];
      v29 = v28 == 0x5F64695F65646F6ELL && v27 == 0xED00006E69676562;
      if (v29 || (sub_1AFDFEE28() & 1) != 0)
      {
        if (v26[2] <= 1uLL)
        {
        }

        else
        {

          v30 = v63;
          sub_1AFDFC2A8();

          if ((*v61)(v30, 1, v15) == 1)
          {

            sub_1AF95BC54(v30, sub_1AF483618);
          }

          else
          {
            v33 = v62;
            (*v58)(v62, v30, v15);
            v34 = *(v66 + 48);
            v35 = v64;
            *v64 = v24;
            (*v55)(v35 + v34, v33, v15);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1AF426E30(0, v23[2] + 1, 1, v23);
            }

            v37 = v23[2];
            v36 = v23[3];
            if (v37 >= v36 >> 1)
            {
              v23 = sub_1AF426E30(v36 > 1, v37 + 1, 1, v23);
            }

            (*v65)(v62, v15);
            v23[2] = v37 + 1;
            sub_1AF95BCB4(v64, v23 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v37, sub_1AF4471E8);
          }
        }

        goto LABEL_4;
      }

      if (v28 == 0x5F64695F65646F6ELL && v27 == 0xEB00000000646E65)
      {
        break;
      }

      v32 = sub_1AFDFEE28();

      if (v32)
      {
        goto LABEL_25;
      }

LABEL_18:

LABEL_4:
      v22 += 3;
      if (!--v21)
      {
      }
    }

LABEL_25:
    v38 = v23[2];
    if (v38)
    {
      v39 = v59;
      v40 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v57 = *(v60 + 72);
      sub_1AF95BA60(v23 + v40 + v57 * (v38 - 1), v59, sub_1AF4471E8);
      v41 = v56;
      sub_1AF95BA60(v39, v56, sub_1AF4471E8);
      v42 = *v41;
      v43 = *v65;
      (*v65)(v41 + *(v66 + 48), v15);

      if (v42 > v54 || v24 < v54)
      {
        sub_1AF95BC54(v59, sub_1AF4471E8);
      }

      else
      {
        v44 = v52;
        sub_1AF95BC54(v52, sub_1AF483618);
        v45 = v56;
        sub_1AF95BCB4(v59, v56, sub_1AF4471E8);
        (*v58)(v44, v45 + *(v66 + 48), v15);
        v50(v44, 0, 1, v15);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AFC0DC60(v23);
      }

      v46 = v23[2] - 1;
      v47 = v23 + v40 + v46 * v57;
      v23[2] = v46;
      v48 = v53;
      sub_1AF95BCB4(v47, v53, sub_1AF4471E8);
      v43((v48 + *(v66 + 48)), v15);
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1AF94B4E8(uint64_t a1, unint64_t a2)
{
  if (a1 || (a2 & 0xE000000000000000) != 0x2000000000000000)
  {
    return sub_1AF94B594(a1, a2);
  }

  if (*((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 == 1)
  {
    return 0x74616D5F646D6973;
  }

  v3 = sub_1AF94B594(0, a2);
  MEMORY[0x1B2718AE0](v3);

  return 0x5F656B616DLL;
}

uint64_t sub_1AF94B594(uint64_t a1, unint64_t a2)
{
  if (a1 < 2u)
  {
    v3 = a2 >> 61;
    if (a2 >> 61 == 6)
    {
      v4 = __ROR8__(a2 + 0x3FFFFFFFFFFFFFF0, 3);
      if (v4 <= 4)
      {
        switch(v4)
        {
          case 0:
            return 1819242338;
          case 1:
            return 0x2A64696F76;
          case 4:
            return 0x745F3233746E69;
        }
      }

      else
      {
        if (v4 <= 6)
        {
          if (v4 == 5)
          {
            return 0x745F3233746E6975;
          }

          else
          {
            return 0x745F3436746E69;
          }
        }

        if (v4 == 7)
        {
          return 0x745F3436746E6975;
        }

        if (v4 == 9)
        {
          return 0x74616F6C66;
        }
      }
    }

    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1AFE4C420;
    v22 = sub_1AF90F890(v21 | 0x2000000000000000, a2);

    if (v22)
    {
      return 0x3274616F6C66;
    }

    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AFE4C430;
    v24 = sub_1AF90F890(v23 | 0x2000000000000000, a2);

    if (v24)
    {
      return 0x3374616F6C66;
    }

    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1AFE4C440;
    v26 = sub_1AF90F890(v25 | 0x2000000000000000, a2);

    if (v26)
    {
      return 0x3474616F6C66;
    }

    v29 = swift_allocObject();
    *(v29 + 16) = 2;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1AFE4C420;
    *(v29 + 24) = v30 | 0x2000000000000000;
    v31 = sub_1AF90F890(v29 | 0x2000000000000000, a2);

    if (v31)
    {
      return 0x6F6C665F646D6973;
    }

    v32 = swift_allocObject();
    *(v32 + 16) = 3;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1AFE4C430;
    *(v32 + 24) = v33 | 0x2000000000000000;
    v34 = sub_1AF90F890(v32 | 0x2000000000000000, a2);

    if (v34)
    {
      return 0x6F6C665F646D6973;
    }

    v35 = swift_allocObject();
    *(v35 + 16) = 4;
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1AFE4C440;
    *(v35 + 24) = v36 | 0x2000000000000000;
    v37 = sub_1AF90F890(v35 | 0x2000000000000000, a2);

    if (v37)
    {
      return 0x6F6C665F646D6973;
    }

    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1AFE85120;
    v46 = sub_1AF90F890(v45 | 0x2000000000000000, a2);

    if ((v46 & 1) == 0)
    {
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1AFE85130;
      v48 = sub_1AF90F890(v47 | 0x2000000000000000, a2);

      if (v48)
      {
        return 0x33746E6975;
      }

      if (v3 <= 3)
      {
        switch(v3)
        {
          case 2:
            v54 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            sub_1AFDFE218();

            v55 = sub_1AF94B594(a1, v54);
            MEMORY[0x1B2718AE0](v55);

            MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
            goto LABEL_59;
          case 3:
            return 0xD000000000000011;
          case 0:
LABEL_100:
            result = sub_1AFDFE518();
            __break(1u);
            return result;
        }

LABEL_99:
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
        sub_1AFDFE458();
        goto LABEL_100;
      }

      if (v3 != 4)
      {
        if (v3 == 6)
        {
          if (a2 <= 0xC0000000000000B7)
          {
            switch(a2)
            {
              case 0xC000000000000070:
                return 0x68632074736E6F63;
              case 0xC000000000000060:
                goto LABEL_100;
              case 0xC000000000000068:
                sub_1AFDFE218();
                sub_1AFDFE458();
                MEMORY[0x1B2718AE0](0xD00000000000002CLL, 0x80000001AFF3BA40);
                goto LABEL_100;
            }
          }

          else
          {
            if (a2 == 0xC0000000000000B8)
            {
              return 0xD00000000000001BLL;
            }

            if (a2 == 0xC0000000000000F8)
            {
              return 0xD000000000000013;
            }
          }
        }

        goto LABEL_99;
      }

      return 0x2A64696F76;
    }

    return 846491241;
  }

  if (a1 == 2)
  {
    v6 = a2 >> 61;
    if (a2 >> 61 == 6)
    {
      if (a2 == 0xC000000000000018)
      {
        return 0x7620646165726874;
      }

      if (a2 == 0xC000000000000050)
      {
        return 1718378856;
      }
    }

    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AFE85140;
    v8 = sub_1AF90F890(v7 | 0x2000000000000000, a2);

    if (v8)
    {
      return 0x32666C6168;
    }

    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AFE85150;
    v19 = sub_1AF90F890(v18 | 0x2000000000000000, a2);

    if (v19)
    {
      return 0x33666C6168;
    }

    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1AFE85160;
    v28 = sub_1AF90F890(v27 | 0x2000000000000000, a2);

    if (v28)
    {
      return 0x34666C6168;
    }

    if (v6 == 2)
    {
      v42 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1AFDFE218();

      v43 = sub_1AF94B594(2, v42);
      MEMORY[0x1B2718AE0](v43);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
LABEL_59:
      v44 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v44);

      MEMORY[0x1B2718AE0](62, 0xE100000000000000);
      return 0xD000000000000011;
    }

    if (v6 == 4)
    {
      result = 0x706D61735F786676;
      v41 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (v41 && v41 != 2 && v41 != 1)
      {
        goto LABEL_99;
      }
    }

    else if (v6 == 6 && a2 == 0xC0000000000000B0)
    {
      return 0x656C636974726170;
    }

    else
    {
      return sub_1AF94B594(0, a2);
    }
  }

  else
  {
    if (a2 == 0xC000000000000058)
    {
      return 0x74616F6C66;
    }

    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AFE4C420;
    v10 = sub_1AF90F890(v9 | 0x2000000000000000, a2);

    if (v10)
    {
      return 0x3274616F6C66;
    }

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AFE4C430;
    v12 = sub_1AF90F890(v11 | 0x2000000000000000, a2);

    if (v12)
    {
      return 0x3374616F6C66;
    }

    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AFE4C440;
    v14 = sub_1AF90F890(v13 | 0x2000000000000000, a2);

    if (v14)
    {
      return 0x3474616F6C66;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = 2;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1AFE4C420;
    *(v15 + 24) = v16 | 0x2000000000000000;
    v17 = sub_1AF90F890(v15 | 0x2000000000000000, a2);

    if (v17)
    {
      return 0x783278697274616DLL;
    }

    v38 = swift_allocObject();
    *(v38 + 16) = 3;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1AFE4C430;
    *(v38 + 24) = v39 | 0x2000000000000000;
    v40 = sub_1AF90F890(v38 | 0x2000000000000000, a2);

    if (v40)
    {
      return 0x783378697274616DLL;
    }

    v49 = swift_allocObject();
    *(v49 + 16) = 4;
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1AFE4C440;
    *(v49 + 24) = v50 | 0x2000000000000000;
    v51 = sub_1AF90F890(v49 | 0x2000000000000000, a2);

    if (v51)
    {
      return 0x783478697274616DLL;
    }

    if ((a2 & 0xE000000000000000) == 0xC000000000000000 && __ROR8__(a2 + 0x3FFFFFFFFFFFFFD0, 3) < 4uLL)
    {
      return 7630441;
    }

    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1AFE85120;
    v53 = sub_1AF90F890(v52 | 0x2000000000000000, a2);

    if (v53)
    {
      return 846491241;
    }

    if ((a2 & 0xE000000000000000) != 0xC000000000000000 || (result = 7630441, a2 != 0xC000000000000018) && a2 != 0xC0000000000000B8)
    {
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF3B9D0);
      sub_1AFDFE458();
      goto LABEL_100;
    }
  }

  return result;
}

uint64_t sub_1AF94C3BC()
{
}

uint64_t sub_1AF94C3EC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF94C454()
{
}

uint64_t sub_1AF94C484()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF94C4E4(uint64_t a1, char a2, char a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v7 = MEMORY[0x1E69E7CD0];
  *(v3 + 32) = MEMORY[0x1E69E7CD0];
  *(v3 + 40) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v3 + 64) = MEMORY[0x1E69E7CC0];
  *(v3 + 72) = v8;
  *(v3 + 80) = sub_1AF43F3FC(v8);
  *(v3 + 88) = 0;
  *(v3 + 96) = sub_1AF43F52C(v8);
  *(v3 + 104) = v7;
  *(v3 + 112) = sub_1AF43F634(v8);
  *(v3 + 120) = sub_1AF43F7A8(v8);
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 57) = a3;
  return v3;
}

uint64_t sub_1AF94C57C()
{
  v0 = sub_1AFDFBCE8();
  sub_1AF75A958(v0, qword_1EB640730);
  sub_1AF477C68(v0, qword_1EB640730);
  sub_1AFDFBCD8();
  return sub_1AFDFBCA8();
}

uint64_t sub_1AF94C5EC()
{
  result = sub_1AF94C60C();
  qword_1EB640748 = result;
  return result;
}

uint64_t sub_1AF94C60C()
{
  v0 = sub_1AF910F70();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = v0 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = v3;
      while (1)
      {
        v7 = *(v4 + 8 * v6);
        v3 = v6 + 1;
        sub_1AF442064(v7);
        if (sub_1AF90DD74(0, v7))
        {
          break;
        }

        sub_1AF445BE4(v7);
        ++v6;
        if (v1 == v3)
        {
          goto LABEL_14;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC078EC(0, *(v5 + 16) + 1, 1);
      }

      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1AFC078EC(v8 > 1, v9 + 1, 1);
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v7;
    }

    while (v1 - 1 != v6);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_14:

  v10 = *(v5 + 16);
  if (v10)
  {
    sub_1AFC05CE4(0, v10, 0);
    v11 = 32;
    do
    {
      v12 = *(v5 + v11);
      sub_1AF442064(v12);
      v13 = sub_1AF937FF8(0, v12);
      if ((~v13 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(v12);
        v13 = v12;
      }

      v14 = sub_1AF94B594(0, v13);
      v16 = v15;
      sub_1AF445BE4(v13);
      sub_1AF445BE4(v12);
      v18 = *(v2 + 16);
      v17 = *(v2 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AFC05CE4(v17 > 1, v18 + 1, 1);
      }

      *(v2 + 16) = v18 + 1;
      v19 = v2 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v11 += 8;
      --v10;
    }

    while (v10);
  }

  else
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1AF0D20CC(v2);

  return v20;
}

uint64_t sub_1AF94C850(unint64_t a1, __n128 a2)
{
  if (*(v2 + 56) == 3)
  {
    sub_1AFDFE218();

    v70 = 0x617261705F786676;
    v71 = 0xEF5B73726574656DLL;
    v72 = *(v2 + 88);
    v3 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v3);

    MEMORY[0x1B2718AE0](93, 0xE100000000000000);
    return 0x617261705F786676;
  }

  v72 = 0;
  v73 = 0xE000000000000000;
  v5 = 24;
  v6 = 16;
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      v46 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v45 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
      sub_1AF44596C((a1 & 0xFFFFFFFFFFFFFFBLL) + 16, &v70);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v47 = v71;
        ObjectType = swift_getObjectType();
        v49 = *(v47 + 8);

        v50 = v49(ObjectType, v47);
        v52 = v51;
        swift_unknownObjectRelease();
        if (v52)
        {
LABEL_54:
          v55 = sub_1AF95A008(v50, v52);
          v57 = v56;

          v58 = sub_1AFAF7C88(v46, v45);
          v60 = sub_1AF95A008(v58, v59);
          v62 = v61;

          v68 = v55;
          v69 = v57;
          MEMORY[0x1B2718AE0](95, 0xE100000000000000);
          MEMORY[0x1B2718AE0](v60, v62);

          sub_1AF4459C8(&v70);
          v72 = v55;
          v73 = v57;
          goto LABEL_59;
        }
      }

      else
      {
      }

      v50 = 0x7463656A626FLL;

      v52 = 0xE600000000000000;
      goto LABEL_54;
    case 2uLL:
      sub_1AF44596C((a1 & 0xFFFFFFFFFFFFFFBLL) + 16, &v70);
      if (!swift_unknownObjectWeakLoadStrong() || (v37 = v71, v38 = swift_getObjectType(), v39 = (*(v37 + 8))(v38, v37), v41 = v40, swift_unknownObjectRelease(), !v41))
      {
        v39 = 0x7463656A626FLL;

        v41 = 0xE600000000000000;
      }

      v42 = sub_1AF95A008(v39, v41);
      v44 = v43;

      sub_1AF4459C8(&v70);
      v72 = v42;
      v73 = v44;
      goto LABEL_59;
    case 3uLL:
      v33 = 0x797469746E65;
      v34 = 0xE600000000000000;
      goto LABEL_58;
    case 4uLL:
    case 5uLL:
      v5 = 32;
      v6 = 24;
      goto LABEL_5;
    case 6uLL:
      v33 = 7500912;
      v34 = 0xE300000000000000;
      goto LABEL_58;
    case 7uLL:
      v72 = sub_1AF95A008(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18), *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20));
      v73 = v36;
      goto LABEL_59;
    case 8uLL:
      v35 = 0x656C706D6173;
      goto LABEL_47;
    case 9uLL:
      v35 = 0x657474696D65;
LABEL_47:
      v33 = v35 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
      goto LABEL_48;
    case 0xAuLL:
    case 0xBuLL:
LABEL_5:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + v6);
      v8 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + v5);

      sub_1AFDFDFD8();
      v9 = sub_1AFDFF4B8();
      v11 = sub_1AF95A008(v9, v10);
      v13 = v12;

      MEMORY[0x1B2718AE0](v11, v13);
      v14 = sub_1AFDFDFD8();
      v15 = swift_conformsToProtocol2();
      if (v15)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v66 = v11;
        v67 = v7;
        v65[1] = v65;
        v18 = *(v14 - 8);
        MEMORY[0x1EEE9AC00](v15);
        v20 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = *(v21 + 8);
        sub_1AF6461F4(v14, v22);
        v23 = (*(v22 + 24))(v14, v22);
        (*(v18 + 8))(v20, v14);
        if (v23 >> 62)
        {
          v17 = sub_1AFDFE108();
        }

        else
        {
          v17 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v11 = v66;
        v7 = v67;
      }

      v24 = sub_1AFDFDFD8();
      v25 = swift_conformsToProtocol2();
      if (v25)
      {
        v26 = v24 == 0;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        if (v17 == 1)
        {
LABEL_28:

LABEL_36:

          goto LABEL_26;
        }
      }

      else
      {
        v32 = *((*(v25 + 16))(v24, v25) + 16);

        if (v32 + v17 == 1)
        {
          goto LABEL_28;
        }
      }

      v27 = sub_1AF95A008(v7, v8);
      v29 = v28;

      if (v27 == v11 && v29 == v13)
      {
        goto LABEL_36;
      }

      v31 = sub_1AFDFEE28();

      if ((v31 & 1) == 0)
      {
        v70 = 95;
        v71 = 0xE100000000000000;
        MEMORY[0x1B2718AE0](v27, v29);

        MEMORY[0x1B2718AE0](v70, v71);
      }

LABEL_26:

      goto LABEL_59;
    case 0xCuLL:
    case 0xDuLL:
      v33 = 1684366707;
      v34 = 0xE400000000000000;
      goto LABEL_58;
    case 0xEuLL:
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    case 0xFuLL:
      v54 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v53 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v72 = v54;
      v73 = v53;

      goto LABEL_59;
    case 0x10uLL:
      if (a1 == 0x8000000000000000)
      {
        v33 = 0x635F747069726373;
        v63 = 0x747865746E6FLL;
LABEL_57:
        v34 = v63 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        goto LABEL_58;
      }

      if (a1 != 0x8000000000000008)
      {
        v33 = 0x656C636974726170;
        v63 = 0x7865646E695FLL;
        goto LABEL_57;
      }

      v33 = 0x64696C61766E69;
LABEL_48:
      v34 = 0xE700000000000000;
LABEL_58:
      v72 = v33;
      v73 = v34;
LABEL_59:
      v64 = sub_1AF94D4F0(v72, v73);

      return v64;
    default:
      if (*(a1 + 16))
      {
        v33 = 1701669236;
        v34 = 0xE400000000000000;
      }

      else
      {
        v33 = 29796;
        v34 = 0xE200000000000000;
      }

      goto LABEL_58;
  }
}

uint64_t sub_1AF94CFE0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 80);
  v6 = *(v5 + 16);
  sub_1AF443EE0(*a1);
  if (v6)
  {

    v7 = sub_1AF41AF3C(v4);
    if (v8)
    {
      v9 = *(*(v5 + 56) + 32 * v7);

      *a2 = v4;
      *(a2 + 8) = v9;
      *(a2 + 16) = xmmword_1AFE4C460;
      *(a2 + 32) = 1;
      return result;
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF3BC00);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF3BC20);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF94D150(unint64_t a1)
{
  v3 = *(v1 + 80);
  if (*(v3 + 16))
  {

    v4 = sub_1AF41AF3C(a1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 32 * v4 + 8);

      return v6;
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF3BC00);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF3BC20);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

char *sub_1AF94D290(uint64_t a1, uint64_t *a2)
{
  v22 = *(a1 + 16);
  if (v22)
  {
    v2 = 0;
    v21 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v4 = v21 + 40 * v2;
      v5 = *v4;
      v6 = *(v4 + 8);
      v7 = *(v4 + 32);
      v28 = *v4;
      v29 = v6;
      v24 = *(v4 + 16);
      v30 = v24;
      v31 = v7;
      v8 = *a2;
      if (*(*a2 + 16))
      {
        sub_1AFDFF288();
        sub_1AF443EE0(v5);
        sub_1AF444224(v24);
        sub_1AFAA0C08(v25, v5);
        v9 = sub_1AFDFF2F8();
        v10 = -1 << *(v8 + 32);
        v11 = v9 & ~v10;
        if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = *(*(v8 + 48) + 8 * v11);
            sub_1AF443EE0(v13);
            v14 = sub_1AFAB5FF0(v13, v5);
            sub_1AF443F24(v13);
            if (v14)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          sub_1AF443F24(v5);
          sub_1AF444AF4(v24);
          goto LABEL_4;
        }
      }

      else
      {
        sub_1AF443EE0(v5);
        sub_1AF444224(v24);
      }

LABEL_12:
      sub_1AF443EE0(v5);
      sub_1AF70E690(v25, v5);
      sub_1AF443F24(v25[0]);
      sub_1AF94CFE0(&v28, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AF420C34(0, *(v3 + 2) + 1, 1, v3);
      }

      v16 = *(v3 + 2);
      v15 = *(v3 + 3);
      if (v16 >= v15 >> 1)
      {
        v3 = sub_1AF420C34(v15 > 1, v16 + 1, 1, v3);
      }

      sub_1AF443F24(v5);
      sub_1AF444AF4(v24);
      *(v3 + 2) = v16 + 1;
      v17 = &v3[40 * v16];
      v18 = v26[0];
      v19 = v26[1];
      v17[64] = v27;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
LABEL_4:
      if (++v2 == v22)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AF94D4F0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1AF9939C8(a1, a2);
  if (v6 && (v7 = sub_1AFDFCD58(), , (v7 & 1) != 0))
  {
    v8 = 0xE100000000000000;
    v9 = 95;
  }

  else
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  v10 = *(v2 + 120);
  if (!*(v10 + 16))
  {
    goto LABEL_9;
  }

  v11 = sub_1AF419914(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v3 + 120);
    *(v3 + 120) = 0x8000000000000000;
    sub_1AF8578B0(1, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 120) = v20;

    v19 = a1;

    MEMORY[0x1B2718AE0](v9, v8);

    MEMORY[0x1B2718AE0](48, 0xE100000000000000);
    return v19;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  v14 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v3 + 120);
  *(v3 + 120) = 0x8000000000000000;
  sub_1AF8578B0(v13 + 1, a1, a2, v14);
  *(v3 + 120) = v18;

  v19 = a1;

  MEMORY[0x1B2718AE0](v9, v8);

  v15 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v15);

  return v19;
}

uint64_t sub_1AF94D6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {

    v6 = (a3 + 40 * v4 + 8);
    v7 = v4;
    do
    {
      v8 = v7 - 1;

      v9 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v9);

      sub_1AF4486E4();
      v10 = sub_1AFDFDF18();

      if ((v10 & 1) != 0 && v7 <= v4)
      {
        v11 = *(v6 - 2);
        v12 = *v6;
        v15 = *v6;
        sub_1AF443EE0(v11);
        sub_1AF444224(v12);
        sub_1AF94D150(v11);
        v13 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v13);

        a1 = sub_1AFDFDEB8();
        sub_1AF443F24(v11);
        sub_1AF444AF4(v15);
      }

      v6 -= 5;
      --v7;
    }

    while (v8);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1AF94D8F4(uint64_t *a1, uint64_t a2)
{
  sub_1AF458F48(0);
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v71 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AFDFC3F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF95BB40(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v61 - v17;
  sub_1AF0D8108(0, &qword_1EB638FC0, MEMORY[0x1E69E67B0], MEMORY[0x1E69E67B0]);

  sub_1AFDFC408();
  sub_1AFDFC3E8();
  sub_1AFDFC458();
  (*(v8 + 8))(v10, v7);
  v19 = *(v13 + 8);
  v64 = v13 + 8;
  v62 = v19;
  v19(v15, v12);
  v20 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
  v66 = a1;
  v79 = a1;
  v80 = a2;
  sub_1AF770DF0();
  sub_1AF95BBAC(&qword_1EB640798, sub_1AF95BB40, MEMORY[0x1E69E9290]);
  v63 = v18;
  v65 = v12;
  v21 = sub_1AFDFCD78();
  v67 = a2;

  v22 = *(v21 + 16);
  if (v22)
  {
    v70 = *(v73 + 16);
    v23 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v61[1] = v21;
    v24 = v21 + v23;
    v25 = *(v73 + 72);
    v68 = (v73 + 8);
    v69 = v25;
    v73 += 16;
    do
    {
      v29 = v71;
      v28 = v72;
      v70(v71, v24, v72);
      sub_1AFDFC498();
      (*v68)(v29, v28);

      v30 = MEMORY[0x1B27189E0](v81, v82, v83, v84);
      v32 = v31;

      if (v20[2] && (v33 = sub_1AF419914(v30, v32), (v34 & 1) != 0))
      {
        v35 = (v20[7] + 16 * v33);
        v36 = *v35;
        v74 = v35[1];
      }

      else
      {
        v36 = sub_1AF94D4F0(v30, v32);
        v74 = v37;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v20;
      v40 = sub_1AF419914(v30, v32);
      v41 = v39;
      v42 = v20[2] + ((v39 & 1) == 0);
      if (v20[3] >= v42)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v45 = v74;
          if (v39)
          {
            goto LABEL_15;
          }
        }

        else
        {
          sub_1AF849704();
          v45 = v74;
          if (v41)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        sub_1AF8357A0(v42, isUniquelyReferenced_nonNull_native);
        v43 = sub_1AF419914(v30, v32);
        if ((v41 & 1) != (v44 & 1))
        {
          sub_1AFDFF1A8();
          __break(1u);

          __break(1u);
          return result;
        }

        v40 = v43;
        v45 = v74;
        if (v41)
        {
LABEL_15:

          v20 = v79;
          v46 = (v79[7] + 16 * v40);
          *v46 = v36;
          v46[1] = v45;

          goto LABEL_4;
        }
      }

      v20 = v79;
      v79[(v40 >> 6) + 8] |= 1 << v40;
      v26 = (v20[6] + 16 * v40);
      *v26 = v30;
      v26[1] = v32;
      v27 = (v20[7] + 16 * v40);
      *v27 = v36;
      v27[1] = v45;
      ++v20[2];
LABEL_4:
      v24 += v69;
      --v22;
    }

    while (v22);
  }

  v47 = v20[2];
  v48 = v66;
  if (v47)
  {
    v49 = sub_1AFC860F0(v20[2], 0);
    sub_1AFC875DC(&v79, v49 + 4, v47, v20);
    v50 = v79;

    sub_1AF0FBB14(v50);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v79 = v49;
  sub_1AF94AD50(&v79);
  v51 = v79;
  v52 = v79[2];
  if (v52)
  {

    v53 = v67;
    v74 = v51;
    v54 = (v51 + 56);
    do
    {
      v55 = *(v54 - 3);
      v56 = *(v54 - 2);
      v57 = *(v54 - 1);
      v58 = *v54;
      v79 = v48;
      v80 = v53;
      v77 = 36;
      v78 = 0xE100000000000000;

      MEMORY[0x1B2718AE0](v55, v56);

      v75 = v57;
      v76 = v58;
      sub_1AF4486E4();
      v48 = sub_1AFDFDEB8();
      v53 = v59;

      v54 += 4;
      --v52;
    }

    while (v52);
  }

  else
  {
  }

  v62(v63, v65);

  return v48;
}

uint64_t sub_1AF94E038(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v107 = a6;
  v106 = a5;
  v105 = a3;
  v122 = a1;
  v114 = sub_1AFDFC3A8();
  v109 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1AFDFC3B8();
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF95BB0C(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v115 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF95A7B4(0);
  v120 = v12;
  v118 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v117 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v119 = &v105 - v15;
  v116 = a4;
  v121 = a4[2];

  v16 = 0;
  do
  {
    v17 = v16;
    if (v121 == v16)
    {
      break;
    }

    ++v16;
    v127[0] = v122;
    v127[1] = a2;
    v125 = 29221;
    v126 = 0xE200000000000000;
    v123 = v17;

    v18 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v18);

    sub_1AF4486E4();
    v19 = sub_1AFDFDF18();
  }

  while ((v19 & 1) == 0);
  v20 = v121;
  if (v121)
  {
    v21 = 0;
    v22 = 0;
    v23 = v116 + 4;
    do
    {
      v24 = sub_1AF90F890(v23[v22++], 0xC000000000000008);
      v21 += (v24 & 1) == 0;
    }

    while (v20 != v22);
    v25 = v20 == v17;
    v26 = v122;
    v27 = v115;
    v28 = v117;
    if (v25 && v21 == 1)
    {
      v29 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v29 = v122 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        v127[0] = v122;
        v127[1] = a2;
        v125 = 10;
        v126 = 0xE100000000000000;
        sub_1AF4486E4();
        v30 = *(sub_1AFDFDE98() + 16);

        if (v30 == 1)
        {
          v127[0] = v26;
          v127[1] = a2;
          v125 = 35;
          v126 = 0xE100000000000000;
          sub_1AF770DF0();
          sub_1AF770E44();
          if ((sub_1AFDFCD68() & 1) == 0)
          {
            v31 = *v23;
            v32 = *(v108 + 56);
            sub_1AF442064(v31);
            v33 = sub_1AF937FF8(v32, v31);
            if ((~v33 & 0xF000000000000007) == 0)
            {
              sub_1AF442064(v31);
              v33 = v31;
            }

            if (v32 == 3)
            {
              strcpy(v127, "const %r0 = ");
              BYTE5(v127[1]) = 0;
              HIWORD(v127[1]) = -5120;
              MEMORY[0x1B2718AE0](v26, a2);
              MEMORY[0x1B2718AE0](59, 0xE100000000000000);

              sub_1AF445BE4(v33);
              sub_1AF445BE4(v31);
              a2 = v127[1];
              v122 = v127[0];
            }

            else
            {
              v127[0] = 0;
              v127[1] = 0xE000000000000000;
              v37 = sub_1AF937FF8(v32, v33);
              if ((~v37 & 0xF000000000000007) == 0)
              {
                sub_1AF442064(v33);
                v37 = v33;
              }

              v38 = sub_1AF94B594(v32, v37);
              v40 = v39;
              sub_1AF445BE4(v37);
              MEMORY[0x1B2718AE0](v38, v40);

              MEMORY[0x1B2718AE0](32, 0xE100000000000000);
              MEMORY[0x1B2718AE0](3174949, 0xE300000000000000);
              MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
              MEMORY[0x1B2718AE0](v26, a2);
              MEMORY[0x1B2718AE0](59, 0xE100000000000000);

              sub_1AF445BE4(v33);
              sub_1AF445BE4(v31);
              a2 = v127[1];
              v122 = v127[0];
              v20 = v121;
              v28 = v117;
            }
          }
        }
      }
    }

    v116 = sub_1AF42C2A4(MEMORY[0x1E69E7CC0]);
    v41 = 0;
    ++v118;
    ++v109;
    ++v110;
    do
    {
      v127[0] = 0;
      v127[1] = 0xE000000000000000;
      sub_1AFDFE218();

      v127[0] = 29219;
      v127[1] = 0xE200000000000000;
      v125 = v41;
      v42 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v42);

      MEMORY[0x1B2718AE0](0x2A5D6E5C5E5B283DLL, 0xEE003F296E5C2829);
      sub_1AFDFC4A8();
      v43 = v120;
      sub_1AFDFC468();
      v44 = *v118;
      (*v118)(v28, v43);
      sub_1AFDFC418();
      sub_1AF95A804(0);
      v46 = v45;
      v47 = *(v45 - 8);
      if ((*(v47 + 48))(v27, 1, v45) == 1)
      {
        v44(v119, v120);
        sub_1AF95BC54(v27, sub_1AF95BB0C);
        v28 = v117;
      }

      else
      {
        v48 = v111;
        sub_1AFDFC498();
        (*(v47 + 8))(v27, v46);
        v49 = v113;
        sub_1AFDFC3C8();
        (*v110)(v48, v112);
        v50 = sub_1AFDFC398();
        v52 = v51;
        v54 = v53;
        v56 = v55;
        (*v109)(v49, v114);
        if (v56)
        {
          v57 = MEMORY[0x1B27189E0](v50, v52, v54, v56);
          v59 = v58;

          v60 = v116;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v127[0] = v60;
          sub_1AF858818(v57, v59, v41, isUniquelyReferenced_nonNull_native);
          v116 = v127[0];
          v125 = v122;
          v126 = a2;
          v123 = 0;
          v124 = 0xE000000000000000;
          sub_1AF95A690();
          sub_1AF95A6E4();
          sub_1AF95BBAC(&qword_1ED722BD8, sub_1AF95A7B4, MEMORY[0x1E69E9290]);
          v62 = v119;
          v63 = v120;
          sub_1AFDFD978();

          v44(v62, v63);
          a2 = v127[1];
          v122 = v127[0];
        }

        else
        {
          v44(v119, v120);
        }

        v20 = v121;
        v27 = v115;
        v28 = v117;
      }

      ++v41;
    }

    while (v20 != v41);
    v120 = sub_1AF94D4F0(v106, v107);
    v65 = v64;
    v125 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v20, 0);
    v66 = 0;
    v36 = v125;
    v35 = v116;
    do
    {
      if (v35[2] && (v67 = sub_1AF449CB8(v66), (v68 & 1) != 0))
      {
        v69 = (v35[7] + 16 * v67);
        v71 = *v69;
        v70 = v69[1];
      }

      else if (v20 == 1)
      {

        v71 = v120;
        v70 = v65;
      }

      else
      {
        v127[0] = 95;
        v127[1] = 0xE100000000000000;
        v123 = v66;
        v72 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v72);

        v73 = v127[0];
        v74 = v127[1];
        v127[0] = v120;
        v127[1] = v65;

        MEMORY[0x1B2718AE0](v73, v74);

        v71 = v127[0];
        v70 = v127[1];
      }

      v125 = v36;
      v76 = v36[2];
      v75 = v36[3];
      if (v76 >= v75 >> 1)
      {
        sub_1AFC05CE4(v75 > 1, v76 + 1, 1);
        v36 = v125;
      }

      ++v66;
      v36[2] = v76 + 1;
      v77 = &v36[2 * v76];
      v77[4] = v71;
      v77[5] = v70;
      v20 = v121;
    }

    while (v121 != v66);
    v120 = 0;
  }

  else
  {
    v120 = 0;
    v34 = MEMORY[0x1E69E7CC0];
    v35 = sub_1AF42C2A4(MEMORY[0x1E69E7CC0]);
    sub_1AF94D4F0(v106, v107);
    v36 = v34;
  }

  v78 = v36[2];
  v121 = v36;
  if (v78)
  {
    v116 = v35;
    v79 = 0;
    v80 = v36 + 5;
    v81 = v122;
    do
    {
      v82 = *(v80 - 1);
      v83 = *v80;
      v84 = v79 + 1;
      v127[0] = v81;
      v127[1] = a2;
      v125 = 29221;
      v126 = 0xE200000000000000;
      v123 = v79;
      v85 = v78;

      v86 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v86);

      v123 = v82;
      v124 = v83;
      sub_1AF4486E4();
      v81 = sub_1AFDFDEB8();
      v88 = v87;

      swift_bridgeObjectRelease_n();
      v78 = v85;
      a2 = v88;
      v80 += 2;
      v79 = v84;
    }

    while (v85 != v84);
    v89 = 0;
    v90 = v121 + 40;
    v91 = v105;
    v92 = (v105 + 40);
    v93 = (v85 - 1);
    v94 = v81;
    do
    {
      v95 = (v90 + 16 * v89);
      v96 = &v92[16 * v89];
      v97 = v89;
      while (1)
      {
        if (v91)
        {
          if ((v97 & 0x8000000000000000) == 0 && v97 < *(v91 + 16))
          {
            v98 = *v96;
            if (*v96)
            {
              break;
            }
          }
        }

        ++v97;
        v95 += 2;
        v96 += 16;
        if (v78 == v97)
        {
          goto LABEL_56;
        }
      }

      v99 = v94;
      v100 = *(v95 - 1);
      v101 = *v95;
      v117 = *(v96 - 1);
      v118 = v93;
      v127[0] = v99;
      v127[1] = a2;
      v125 = 37;
      v126 = 0xE100000000000000;
      v122 = v90;
      v119 = v92;

      MEMORY[0x1B2718AE0](v117, v98);

      v123 = v100;
      v124 = v101;
      v94 = sub_1AFDFDEB8();
      v103 = v102;

      swift_bridgeObjectRelease_n();
      v93 = v118;
      v92 = v119;
      v90 = v122;
      v78 = v85;
      v89 = v97 + 1;
      a2 = v103;
    }

    while (v118 != v97);
  }

  else
  {
    v94 = v122;
  }

LABEL_56:

  return v94;
}

uint64_t sub_1AF94EDE0(char *a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v5 = *v3;
  v39 = a2;
  v40 = v5;
  v6 = sub_1AFDFC318();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 152))(v48, v7);
  v9 = *(a1 + 3);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v46 = MEMORY[0x1E69E7CC0];

    sub_1AFC078EC(0, v10, 0);
    v12 = 32;
    v11 = v46;
    do
    {
      v13 = *(v9 + v12);
      sub_1AF442064(v13);
      v14 = sub_1AF937FF8(0, v13);
      if ((~v14 & 0xF000000000000007) != 0)
      {
        v15 = v14;
        sub_1AF445BE4(v13);
        v13 = v15;
      }

      v46 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AFC078EC(v16 > 1, v17 + 1, 1);
        v11 = v46;
      }

      *(v11 + 16) = v17 + 1;
      *(v11 + 8 * v17 + 32) = v13;
      v12 += 8;
      --v10;
    }

    while (v10);
  }

  v18 = *(a1 + 4);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v46 = MEMORY[0x1E69E7CC0];

    sub_1AFC078EC(0, v19, 0);
    v21 = 32;
    v20 = v46;
    do
    {
      v22 = *(v18 + v21);
      sub_1AF442064(v22);
      v23 = sub_1AF937FF8(0, v22);
      if ((~v23 & 0xF000000000000007) != 0)
      {
        v24 = v23;
        sub_1AF445BE4(v22);
        v22 = v24;
      }

      v46 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1AFC078EC(v25 > 1, v26 + 1, 1);
        v20 = v46;
      }

      *(v20 + 16) = v26 + 1;
      *(v20 + 8 * v26 + 32) = v22;
      v21 += 8;
      --v19;
    }

    while (v19);
  }

  v27 = v43;
  v28 = v44;
  v29 = (*(v44 + 16))(v43, &a1[OBJC_IVAR____TtC3VFX4Node_authoringID], v45);
  MEMORY[0x1EEE9AC00](v29);
  v30 = v39;
  *(&v39 - 8) = v27;
  *(&v39 - 7) = v30;
  *(&v39 - 6) = v48;
  v31 = v42;
  *(&v39 - 5) = v41;
  *(&v39 - 4) = v11;
  *(&v39 - 3) = v31;
  *(&v39 - 2) = v20;
  *(&v39 - 1) = v40;
  v33 = sub_1AFA55F38(0xD00000000000001ELL, v32 | 0x8000000000000000, 0, sub_1AF95BAF8);
  v35 = v34;
  v54 = v48[0];
  v36 = MEMORY[0x1E69E62F8];
  sub_1AF957840(&v54, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v53 = v48[1];
  sub_1AF957840(&v53, &qword_1EB638968, &type metadata for TypeConstraint, v36);
  v52 = v48[2];
  sub_1AF957840(&v52, &qword_1EB638968, &type metadata for TypeConstraint, v36);
  v51 = v48[3];
  sub_1AF95BC54(&v51, sub_1AF445C2C);
  v50 = v48[4];
  sub_1AF95BC54(&v50, sub_1AF445C2C);
  v49 = v48[5];
  sub_1AF957840(&v49, &qword_1EB638978, &type metadata for AnyValue, v36);

  v46 = v33;
  v47 = v35;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v37 = v46;
  (*(v28 + 8))(v27, v45);
  return v37;
}

uint64_t sub_1AF94F270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1AFDFE218();

  sub_1AF95B98C(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C620;
  v12 = sub_1AFDFC2E8();
  v13 = MEMORY[0x1E69E7360];
  v14 = MEMORY[0x1E69E73D8];
  *(v11 + 56) = MEMORY[0x1E69E7360];
  *(v11 + 64) = v14;
  *(v11 + 32) = v12;
  sub_1AFDFC2E8();
  *(v11 + 96) = v13;
  *(v11 + 104) = v14;
  *(v11 + 72) = v15;
  v16 = sub_1AFDFCF38();
  MEMORY[0x1B2718AE0](v16);

  MEMORY[0x1B2718AE0](32032, 0xE200000000000000);
  sub_1AF95B314(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001AFF3BD80;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v95 = inited;
  v18 = sub_1AFDFEA08();
  v20 = v19;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1AFE431C0;
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  v94 = v21;
  v22 = sub_1AF42A658(a5, a2);
  v23 = sub_1AF3C4820(v22);

  v24 = *(v23 + 16);
  v93 = a4;
  if (v24)
  {
    v101 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v24, 0);
    v25 = 0;
    v26 = *(a3 + 24);
    v97 = *(v26 + 16);
    v99 = v24;
    v96 = *(a4 + 56);
    v27 = (v26 + 40);
    v28 = (v23 + 48);
    do
    {
      v29 = *(v28 - 2);
      v30 = *(v28 - 1);
      v31 = *v28;
      if (v25 < v97 && *v27)
      {
        sub_1AF442064(v29);
        sub_1AF4486E4();

        v32 = sub_1AFDFDF18();
      }

      else
      {
        sub_1AF442064(*(v28 - 2));

        v32 = 0;
      }

      v33 = sub_1AF937FF8(v96, v29);
      if ((~v33 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(v29);
        v33 = v29;
      }

      v34 = sub_1AF90F890(v33, 0xC000000000000018);
      sub_1AF445BE4(v33);
      v35 = (v34 & 1) == 0;
      if (v34)
      {
        v36 = 0;
      }

      else
      {
        v36 = 38;
      }

      if (v35)
      {
        v37 = 0xE100000000000000;
      }

      else
      {
        v37 = 0xE000000000000000;
      }

      if (v32 & 1) != 0 || (sub_1AF90F890(v29, 0xC000000000000008))
      {

        v38 = 0xE400000000000000;
        v39 = 1280070990;
      }

      else
      {
        v103 = v37;
        MEMORY[0x1B2718AE0](v30, v31);
        v39 = v36;
        v38 = v103;
      }

      sub_1AF9102F8(v29);
      v40 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v40);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      MEMORY[0x1B2718AE0](v39, v38);

      MEMORY[0x1B2718AE0](2915616, 0xE300000000000000);
      sub_1AF445BE4(v29);

      v42 = *(v101 + 16);
      v41 = *(v101 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1AFC05CE4(v41 > 1, v42 + 1, 1);
      }

      ++v25;
      *(v101 + 16) = v42 + 1;
      v43 = v101 + 16 * v42;
      *(v43 + 32) = 8315;
      *(v43 + 40) = 0xE200000000000000;
      v27 += 2;
      v28 += 3;
    }

    while (v99 != v25);
  }

  v44 = MEMORY[0x1E69E62F8];
  sub_1AF95B314(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  sub_1AFDFCD98();

  v45 = sub_1AFAF888C(4);
  v47 = v46;

  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_1AFE431C0;
  *(v48 + 32) = v45;
  *(v48 + 40) = v47;
  sub_1AF441DD8(0);
  *(v48 + 48) = 0;
  *(v48 + 56) = 0;
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1AFE4C680;
  *(v49 + 32) = &unk_1F2504E38;
  *(v49 + 40) = v48;
  *(v49 + 48) = &unk_1F2504E78;
  v50 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF95B314(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v44);
  swift_arrayDestroy();
  v51 = sub_1AFA5413C(v50);
  v53 = v52;

  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1AFE431C0;
  *(v54 + 32) = v51;
  *(v54 + 40) = v53;
  *(v54 + 48) = 0;
  *(v54 + 56) = 0;
  v98 = v54;
  v55 = sub_1AFDFEA08();
  v57 = v56;
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1AFE431C0;
  *(v58 + 32) = v55;
  *(v58 + 40) = v57;
  *(v58 + 48) = 0;
  *(v58 + 56) = 0;
  v90 = v58;
  v59 = sub_1AF42A658(a7, a6);
  v60 = sub_1AF3C4820(v59);

  v61 = *(v60 + 16);
  if (v61)
  {
    v100 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v61, 0);
    v62 = *(v93 + 56);
    v63 = (v60 + 48);
    do
    {
      v64 = *(v63 - 2);
      v65 = *(v63 - 1);
      v66 = *v63;

      sub_1AF442064(v64);
      v67 = sub_1AF937FF8(v62, v64);
      if ((~v67 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(v64);
        v67 = v64;
      }

      v68 = sub_1AF90F890(v67, 0xC000000000000018);
      sub_1AF445BE4(v67);
      if (v68)
      {
        v69 = 0xE000000000000000;
      }

      else
      {
        v69 = 0xE100000000000000;
      }

      if (sub_1AF90F890(v64, 0xC000000000000008))
      {

        v70 = 0xE400000000000000;
        v71 = 1280070990;
      }

      else
      {
        v72 = 38;
        if (v68)
        {
          v72 = 0;
        }

        v102 = v72;
        MEMORY[0x1B2718AE0](v65, v66);
        v71 = v102;
        v70 = v69;
      }

      sub_1AF9102F8(v64);
      v73 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v73);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      MEMORY[0x1B2718AE0](v71, v70);

      MEMORY[0x1B2718AE0](2915616, 0xE300000000000000);
      sub_1AF445BE4(v64);

      v75 = *(v100 + 16);
      v74 = *(v100 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_1AFC05CE4(v74 > 1, v75 + 1, 1);
      }

      *(v100 + 16) = v75 + 1;
      v76 = v100 + 16 * v75;
      *(v76 + 32) = 8315;
      *(v76 + 40) = 0xE200000000000000;
      v63 += 3;
      --v61;
    }

    while (v61);
  }

  sub_1AFDFCD98();

  v77 = sub_1AFAF888C(4);
  v79 = v78;

  v80 = swift_initStackObject();
  *(v80 + 16) = xmmword_1AFE431C0;
  *(v80 + 32) = v77;
  *(v80 + 40) = v79;
  *(v80 + 48) = 0;
  *(v80 + 56) = 0;
  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_1AFE4C680;
  *(v81 + 32) = &unk_1F2504EB8;
  *(v81 + 40) = v80;
  *(v81 + 48) = &unk_1F2504EF8;
  v82 = sub_1AFA56CA0();
  swift_setDeallocating();
  swift_arrayDestroy();
  v83 = sub_1AFA5413C(v82);
  v85 = v84;

  v86 = swift_initStackObject();
  *(v86 + 16) = xmmword_1AFE431C0;
  *(v86 + 32) = v83;
  *(v86 + 40) = v85;
  *(v86 + 48) = 0;
  *(v86 + 56) = 0;
  v87 = swift_initStackObject();
  *(v87 + 32) = &unk_1F2504DF8;
  *(v87 + 16) = xmmword_1AFE86410;
  *(v87 + 40) = v95;
  *(v87 + 48) = v94;
  *(v87 + 56) = v98;
  *(v87 + 64) = v90;
  *(v87 + 72) = v86;
  v88 = sub_1AFA56CA0();
  swift_setDeallocating();
  swift_arrayDestroy();
  return v88;
}

void sub_1AF94FCAC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v326 = a4;
  v327 = a1;
  *&v325 = a3;
  v9 = sub_1AFDFC318();
  v323 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v309 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF95B314(0, &qword_1ED722BC8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9288]);
  v13 = v12;
  v14 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v309 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v309 - v18;
  sub_1AF95B958(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v309 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 16);
  v324 = a5;
  if (!v23)
  {
    v328 = v16;
    v320 = v19;
    v322 = v14;
    v330 = v13;
    v316 = v22;
    v24 = v327;
    if (!sub_1AF7025B4(v327, *(v6 + 104)))
    {
      v312 = v11;
      v313 = v9;
      v41 = swift_conformsToProtocol2();
      v42 = v41;
      if (v41)
      {
        v43 = v24;
      }

      else
      {
        v43 = 0;
      }

      v44 = *v43;
      v45 = *(v41 + 8);

      v45(v44, v42);
      v329 = *(v6 + 56);
      v46 = *(v42 + 48);
      v314 = v43;
      v317 = v44;
      v318 = v42;
      v319 = v46(v44, v42);
      v47 = *(v319 + 16);
      v332 = v6;
      v48 = v330;
      if (v47)
      {
        v49 = (v319 + 48);
        while (1)
        {
          v52 = *(v49 - 2);
          LODWORD(v333) = *(v49 - 8);
          v53 = *v49;
          v334 = *v49;
          if (((v52 >> 59) & 0x1E | (v52 >> 2) & 1) == 2)
          {
            sub_1AF95BA60((v52 & 0xFFFFFFFFFFFFFFBLL) + 16, &v344, sub_1AF95BAC8);
            sub_1AF443EE0(v52);
            sub_1AF443EE0(v52);
            sub_1AF444224(v53);
            sub_1AF4459C8(&v344);
          }

          else
          {
            sub_1AF443EE0(v52);
            sub_1AF443EE0(v52);
            sub_1AF444224(v53);
          }

          v55 = *(v6 + 80);
          if (!*(v55 + 16))
          {
            goto LABEL_22;
          }

          v56 = sub_1AF41AF3C(v52);
          if ((v57 & 1) == 0)
          {
            break;
          }

          v58 = *(v55 + 56) + 32 * v56;
          v59 = *v58;
          v61 = *(v58 + 8);
          v60 = *(v58 + 16);
          v331 = *(v58 + 24);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63 = v6;
          v64 = isUniquelyReferenced_nonNull_native;
          v344 = *(v63 + 80);
          v65 = v344;
          *(v63 + 80) = 0x8000000000000000;
          v66 = sub_1AF41AF3C(v52);
          v68 = v67;
          v69 = *(v65 + 16) + ((v67 & 1) == 0);
          if (*(v65 + 24) >= v69)
          {
            if ((v64 & 1) == 0)
            {
              v88 = v66;
              sub_1AF84EBBC();
              v66 = v88;
            }
          }

          else
          {
            sub_1AF83FC34(v69, v64);
            v66 = sub_1AF41AF3C(v52);
            if ((v68 & 1) != (v70 & 1))
            {
              goto LABEL_153;
            }
          }

          v6 = v332;
          v84 = v59 | v333;
          v85 = v344;
          if (v68)
          {
            v86 = *(v344 + 56) + 32 * v66;
            *v86 = v84;
            *(v86 + 8) = v61;
            *(v86 + 16) = v60;
            *(v86 + 24) = v331;

            sub_1AF443F24(v52);
          }

          else
          {
            *(v344 + 8 * (v66 >> 6) + 64) |= 1 << v66;
            *(v85[6] + 8 * v66) = v52;
            v87 = v85[7] + 32 * v66;
            *v87 = v84;
            *(v87 + 8) = v61;
            *(v87 + 16) = v60;
            *(v87 + 24) = v331;
            ++v85[2];
          }

          *(v6 + 80) = v85;
LABEL_12:
          sub_1AF443F24(v52);
          sub_1AF444AF4(v334);
          v48 = v330;
          v49 += 5;
          if (!--v47)
          {
            goto LABEL_37;
          }
        }

LABEL_22:
        v71 = sub_1AF94C850(v52, v54);
        v73 = v72;
        v331 = *(v6 + 88);
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v344 = *(v6 + 80);
        v75 = v344;
        *(v6 + 80) = 0x8000000000000000;
        v77 = sub_1AF41AF3C(v52);
        v78 = v76;
        v79 = *(v75 + 16) + ((v76 & 1) == 0);
        if (*(v75 + 24) < v79)
        {
          sub_1AF83FC34(v79, v74);
          v80 = sub_1AF41AF3C(v52);
          if ((v78 & 1) != (v81 & 1))
          {
LABEL_153:
            sub_1AFDFF1A8();
            __break(1u);
LABEL_154:

LABEL_155:
            v344 = 0;
            v345 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF3BC00);
            v343[0] = v52;
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF3BC20);
            while (1)
            {
              sub_1AFDFE518();
              __break(1u);
LABEL_157:
              v344 = 0;
              v345 = 0xE000000000000000;
              sub_1AFDFE218();
              v306 = sub_1AF9703D8();
              v308 = v307;

              v344 = v306;
              v345 = v308;
              MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF3BD10);
            }
          }

          v77 = v80;
          v82 = v344;
          if (v78)
          {
            goto LABEL_28;
          }

LABEL_10:
          v82[(v77 >> 6) + 8] |= 1 << v77;
          *(v82[6] + 8 * v77) = v52;
          v50 = v82[7] + 32 * v77;
          *v50 = v333;
          *(v50 + 8) = v71;
          *(v50 + 16) = v73;
          *(v50 + 24) = v331;
          ++v82[2];
LABEL_11:
          v6 = v332;
          v51 = *(v332 + 88) + 1;
          *(v332 + 80) = v82;
          *(v6 + 88) = v51;
          goto LABEL_12;
        }

        if (v74)
        {
          v82 = v344;
          if ((v76 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_1AF84EBBC();
          v82 = v344;
          if ((v78 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

LABEL_28:
        v83 = v82[7] + 32 * v77;
        *v83 = v333;
        *(v83 + 8) = v71;
        *(v83 + 16) = v73;
        *(v83 + 24) = v331;

        sub_1AF443F24(v52);
        goto LABEL_11;
      }

LABEL_37:
      v89 = v327;
      v90 = 0;
      v91 = 0;
      v342 = 0;
      v92 = 0;
      v93 = 0;
      if (*v327 == _TtC3VFX12SubGraphNode)
      {
        v94 = v328;
        if (v327)
        {
          v95 = *(v327 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
          if (v95)
          {
            if (*(v6 + 24))
            {
              v96 = *(v6 + 16);
              v97 = *(v6 + 24);
            }

            else
            {
              v96 = 0;
              v97 = 0xE000000000000000;
            }

            v344 = 0x5F6E66627573;
            v345 = 0xE600000000000000;
            v311 = v95;

            MEMORY[0x1B2718AE0](v96, v97);

            v99 = v344;
            v98 = v345;
            type metadata accessor for CastNode(0);
            v100 = swift_dynamicCastClass();
            if (v100)
            {
              v101 = *(v100 + OBJC_IVAR____TtC3VFX8CastNode_dstType);
              v102 = v100;
              sub_1AF442064(v101);
              v103 = sub_1AF90D394(v101);
              v105 = v104;
              sub_1AF445BE4(v101);
              v344 = v103;
              v345 = v105;
              MEMORY[0x1B2718AE0](0x5F6D6F72665FLL, 0xE600000000000000);
              v106 = *(*(v102 + 24) + 32);
              sub_1AF448650(*(v102 + 24), *(v102 + 32));
              sub_1AF442064(v106);

              v107 = sub_1AF90D394(v106);
              v109 = v108;
              sub_1AF445BE4(v106);
              MEMORY[0x1B2718AE0](v107, v109);

              v110 = sub_1AF95A008(v344, v345);
              v112 = v111;
            }

            else
            {
              v113 = (*(*v89 + 128))();
              v115 = v114;
              v344 = v113;
              v345 = v114;
              v348 = 0x746963696C706D49;
              v349 = 0xE800000000000000;
              v116 = sub_1AFDFC328();
              v117 = v316;
              (*(*(v116 - 8) + 56))(v316, 1, 1, v116);
              sub_1AF4486E4();
              v118 = sub_1AFDFDEF8();
              v120 = v119;
              v122 = v121;
              sub_1AF95BC54(v117, sub_1AF95B958);
              if ((v122 & 1) == 0)
              {
                v113 = sub_1AF9AADA8(v118, v120, 0, 0xE000000000000000, v113, v115);
                v124 = v123;

                v115 = v124;
              }

              v110 = sub_1AF95A008(v113, v115);
              v112 = v125;
              v89 = v327;
              v94 = v328;
            }

            v126 = sub_1AF94D4F0(v110, v112);
            v128 = v127;

            v344 = v99;
            v345 = v98;

            MEMORY[0x1B2718AE0](v126, v128);

            v129 = v332;

            v91 = v344;
            v321 = v345;
            v348 = MEMORY[0x1E69E7CD0];
            v130 = sub_1AF94D290(v319, &v348);

            v131 = v130[2];
            if (v131)
            {
              v315 = v91;
              v347[0] = MEMORY[0x1E69E7CC0];
              sub_1AFC079DC(0, v131, 0);
              v132 = v347[0];
              v310 = v130;
              v133 = (v130 + 8);
              do
              {
                v134 = v132;
                v52 = *(v133 - 4);
                v135 = *(v133 - 24);
                v136 = *(v133 - 2);
                v137 = *(v133 - 1);
                LODWORD(v334) = *v133;
                v138 = *(v129 + 80);
                v139 = *(v138 + 16);
                sub_1AF443EE0(v52);
                sub_1AF444224(v136);
                sub_1AF443EE0(v52);
                sub_1AF444224(v136);
                if (!v139)
                {
                  goto LABEL_155;
                }

                v140 = sub_1AF41AF3C(v52);
                if ((v141 & 1) == 0)
                {
                  goto LABEL_154;
                }

                v142 = *(v138 + 56) + 32 * v140;
                v143 = *(v142 + 16);
                v333 = *(v142 + 8);
                v331 = v143;

                sub_1AF443F24(v52);
                sub_1AF444AF4(v136);
                v132 = v134;
                v347[0] = v134;
                v145 = v134[2];
                v144 = v134[3];
                if (v145 >= v144 >> 1)
                {
                  sub_1AFC079DC(v144 > 1, v145 + 1, 1);
                  v132 = v347[0];
                }

                v132[2] = v145 + 1;
                v146 = &v132[7 * v145];
                v146[4] = v52;
                *(v146 + 40) = v135;
                v146[6] = v136;
                v146[7] = v137;
                *(v146 + 64) = v334;
                v129 = v332;
                v147 = v331;
                v146[9] = v333;
                v146[10] = v147;
                v133 += 40;
                --v131;
              }

              while (v131);

              v89 = v327;
              v94 = v328;
              v91 = v315;
              v48 = v330;
            }

            else
            {

              v132 = MEMORY[0x1E69E7CC0];
            }

            v148 = swift_isUniquelyReferenced_nonNull_native();
            v149 = v311;
            if ((v148 & 1) == 0)
            {
              v132 = sub_1AFC0DC88(v132);
            }

            v150 = v132[2];
            v151 = v132;
            v344 = (v132 + 4);
            v345 = v150;
            sub_1AF957B98(&v344);
            sub_1AF952600(v149);
            v153 = v152;

            if (!*(*(v129 + 32) + 16))
            {
              v154 = *(v153 + 16);
              if (!v154)
              {
LABEL_67:

                v90 = 0;
                goto LABEL_68;
              }

              v155 = 128;
              while ((*(v153 + v155) & 1) == 0)
              {
                v155 += 120;
                if (!--v154)
                {
                  goto LABEL_67;
                }
              }
            }

            v90 = 1;
LABEL_68:
            v93 = sub_1AF3C4990(v151);

            v342 = v90;
            v92 = v321;
            goto LABEL_69;
          }

          v91 = 0;
          v92 = 0;
          v93 = 0;
          v90 = 0;
        }
      }

      else
      {
        v94 = v328;
      }

LABEL_69:
      LOBYTE(v371) = v329;
      v372 = v89;
      v373 = v91;
      v374 = v92;
      v375 = v93;
      v376 = v90;
      v156 = v318;
      v157 = *(v318 + 40);
      v158 = v92;

      v315 = v91;
      v321 = v158;
      v311 = v93;
      sub_1AF487F80(v91, v158, v93);
      v348 = v157(&v371, v317, v156);
      v349 = v159;
      sub_1AFDFC408();
      v160 = v94;
      v161 = v320;
      sub_1AFDFC478();
      v162 = *(v322 + 8);
      v162(v160, v48);
      v347[0] = 0;
      v347[1] = 0xE000000000000000;
      sub_1AF95A690();
      sub_1AF95A6E4();
      sub_1AF95A738();
      sub_1AFDFD978();
      v162(v161, v48);
      v163 = v327;

      v310 = v344;
      v320 = v345;
      v348 = 0x5367736D5F786676;
      v349 = 0xEB00000000646E65;
      v164 = sub_1AF4486E4();
      if ((sub_1AFDFDF18() & 1) != 0 && ((*(v318 + 24))(v317) & 1) == 0)
      {
        goto LABEL_157;
      }

      v165 = *(v163 + 16);
      v166 = *(v165 + 16);
      if (v166 >= 2 && (type metadata accessor for PartialComposeNode(0), (v167 = swift_dynamicCastClass()) != 0))
      {
        v168 = v167;
        v165 = *(v167 + 16);
        v166 = *(v165 + 16);
      }

      else
      {
        v168 = v327;
      }

      v322 = v164;
      v331 = v168;
      if (v166)
      {
        v348 = MEMORY[0x1E69E7CC0];

        sub_1AFC05CE4(0, v166, 0);
        v334 = v348;
        v309 = v165;
        v169 = (v165 + 40);
        v170 = (*v168 + 152);
        v330 = *v170;
        v328 = v170;
        v171 = 32;
        do
        {
          v172 = *(v169 - 1);
          v333 = *v169;

          v330(v343, v173);
          v174 = v343[0];
          v369 = v343[1];
          v370 = v343[0];
          v175 = MEMORY[0x1E69E62F8];
          sub_1AF957840(&v369, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
          v368 = v343[2];
          sub_1AF957840(&v368, &qword_1EB638968, &type metadata for TypeConstraint, v175);
          v367 = v343[3];
          sub_1AF95BC54(&v367, sub_1AF445C2C);
          v366 = v343[4];
          sub_1AF95BC54(&v366, sub_1AF445C2C);
          v365 = v343[5];
          sub_1AF957840(&v365, &qword_1EB638978, &type metadata for AnyValue, v175);
          v176 = *(v174 + v171);
          sub_1AF4410A8(v176);
          sub_1AF957840(&v370, &qword_1EB638968, &type metadata for TypeConstraint, v175);
          v177 = swift_allocObject();
          *(v177 + 16) = 0xC000000000000008;
          LOBYTE(v174) = sub_1AF9C5694(v176, v177 | 0x8000000000000000);

          sub_1AF441114(v176);
          if (v174)
          {
            v178 = 0xE600000000000000;
            v179 = 0x3E776F6C663CLL;
          }

          else
          {
            (v325)(&v344, v172);
            if (v344)
            {
              v180 = v346;
              v354 = v346;
              v181 = MEMORY[0x1E69E62F8];
              v182 = MEMORY[0x1E69E6158];
              sub_1AF95B9F0(&v354, v347, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
              sub_1AF957840(&v344, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
              v183 = v180 + 16 * v333;
              v179 = *(v183 + 32);
              v178 = *(v183 + 40);

              sub_1AF957840(&v354, &qword_1ED726C70, v182, v181);
            }

            else
            {
              v179 = 0x736E6972746E693CLL;
              v178 = 0xEB000000003E6369;
            }
          }

          v184 = v334;
          v348 = v334;
          v186 = *(v334 + 16);
          v185 = *(v334 + 24);
          if (v186 >= v185 >> 1)
          {
            sub_1AFC05CE4(v185 > 1, v186 + 1, 1);
            v184 = v348;
          }

          v169 += 2;
          *(v184 + 16) = v186 + 1;
          v334 = v184;
          v187 = v184 + 16 * v186;
          *(v187 + 32) = v179;
          *(v187 + 40) = v178;
          v171 += 8;
          --v166;
        }

        while (v166);
      }

      else
      {

        v334 = MEMORY[0x1E69E7CC0];
      }

      v188 = v327[4];
      v189 = *(v188 + 16);
      v190 = MEMORY[0x1E69E7CC0];
      if (v189)
      {
        v348 = MEMORY[0x1E69E7CC0];

        sub_1AFC078EC(0, v189, 0);
        v191 = 32;
        v190 = v348;
        do
        {
          v192 = *(v188 + v191);
          sub_1AF442064(v192);
          v193 = sub_1AF937FF8(v329, v192);
          if ((~v193 & 0xF000000000000007) != 0)
          {
            v194 = v193;
            sub_1AF445BE4(v192);
            v192 = v194;
          }

          v348 = v190;
          v196 = v190[2];
          v195 = v190[3];
          if (v196 >= v195 >> 1)
          {
            sub_1AFC078EC(v195 > 1, v196 + 1, 1);
            v190 = v348;
          }

          v190[2] = v196 + 1;
          v190[v196 + 4] = v192;
          v191 += 8;
          --v189;
        }

        while (v189);
      }

      v197 = sub_1AF94D8F4(v310, v320);
      v199 = v198;

      v348 = v197;
      v349 = v199;
      strcpy(v347, "%node_id_hash");
      HIWORD(v347[1]) = -4864;
      v200 = sub_1AFDFDF18();
      if (v200)
      {
        v333 = v197;
        v201 = v199;
        v202 = v323;
        v203 = v327;
        v205 = v312;
        v204 = v313;
        (*(v323 + 16))(v312, v327 + OBJC_IVAR____TtC3VFX4Node_authoringID, v313);
        v206 = sub_1AFDFC2F8();
        (*(v202 + 8))(v205, v204);
        sub_1AF95B98C(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
        v207 = swift_allocObject();
        v208 = MEMORY[0x1E69E7668];
        *(v207 + 16) = xmmword_1AFE431C0;
        v209 = MEMORY[0x1E69E76D0];
        *(v207 + 56) = v208;
        *(v207 + 64) = v209;
        *(v207 + 32) = v206;
        v210 = sub_1AFDFCF38();
        v348 = v333;
        v349 = v201;
        strcpy(v347, "%node_id_hash");
        HIWORD(v347[1]) = -4864;
        v340 = v210;
        v341 = v211;
        v212 = sub_1AFDFDEB8();
        v199 = v213;
        v197 = v212;
      }

      else
      {
        v203 = v327;
      }

      v214 = (*v203 + 152);
      v326 = *v214;
      v328 = v214;
      v326(v347, v200);
      v215 = v347[3];
      v364 = v347[0];

      v216 = MEMORY[0x1E69E62F8];
      sub_1AF957840(&v364, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
      v363 = v347[1];
      sub_1AF957840(&v363, &qword_1EB638968, &type metadata for TypeConstraint, v216);
      v362 = v347[2];
      sub_1AF957840(&v362, &qword_1EB638968, &type metadata for TypeConstraint, v216);

      v361 = v347[4];
      sub_1AF95BC54(&v361, sub_1AF445C2C);
      v360 = v347[5];
      sub_1AF957840(&v360, &qword_1EB638978, &type metadata for AnyValue, v216);
      v217 = sub_1AF95A88C(v197, v199, v215, v334);
      v219 = v218;

      v330 = sub_1AF94D6BC(v217, v219, v319);
      v333 = v220;

      v326(&v348, v221);
      v222 = v352;
      v359 = v348;

      sub_1AF957840(&v359, &qword_1EB638968, &type metadata for TypeConstraint, v216);
      v358 = v349;
      sub_1AF957840(&v358, &qword_1EB638968, &type metadata for TypeConstraint, v216);
      v357 = v350;
      sub_1AF957840(&v357, &qword_1EB638968, &type metadata for TypeConstraint, v216);
      v356 = v351;
      sub_1AF95BC54(&v356, sub_1AF445C2C);

      v355 = v353;
      sub_1AF957840(&v355, &qword_1EB638978, &type metadata for AnyValue, v216);
      type metadata accessor for CastNode(0);
      v223 = swift_dynamicCastClass();
      if (v223)
      {
        v224 = *(v223 + OBJC_IVAR____TtC3VFX8CastNode_dstType);
        v225 = v223;
        sub_1AF442064(v224);
        v226 = sub_1AF90D394(v224);
        v228 = v227;
        sub_1AF445BE4(v224);
        v340 = v226;
        v341 = v228;
        MEMORY[0x1B2718AE0](0x5F6D6F72665FLL, 0xE600000000000000);
        v229 = *(*(v225 + 24) + 32);
        sub_1AF448650(*(v225 + 24), *(v225 + 32));
        sub_1AF442064(v229);

        v230 = sub_1AF90D394(v229);
        v232 = v231;
        sub_1AF445BE4(v229);
        MEMORY[0x1B2718AE0](v230, v232);

        v233 = sub_1AF95A008(v340, v341);
        v235 = v234;
        v236 = v333;
      }

      else
      {
        v237 = (*(*v203 + 128))(0);
        v239 = v238;
        v340 = v237;
        v341 = v238;
        v338 = 0x746963696C706D49;
        v339 = 0xE800000000000000;
        v240 = sub_1AFDFC328();
        v241 = v316;
        (*(*(v240 - 8) + 56))(v316, 1, 1, v240);
        v242 = sub_1AFDFDEF8();
        v244 = v243;
        v246 = v245;
        sub_1AF95BC54(v241, sub_1AF95B958);
        if ((v246 & 1) == 0)
        {
          v237 = sub_1AF9AADA8(v242, v244, 0, 0xE000000000000000, v237, v239);
          v248 = v247;

          v239 = v248;
        }

        v236 = v333;
        v233 = sub_1AF95A008(v237, v239);
        v235 = v249;
      }

      v250 = sub_1AF94E038(v330, v236, v222, v190, v233, v235);
      v252 = v251;
      v333 = v253;

      v340 = v250;
      v341 = v252;
      v338 = v250;
      v339 = v252;
      v336 = 0x776F6C6625;
      v337 = 0xE500000000000000;
      if ((sub_1AFDFDF18() & 1) == 0)
      {
        v254 = HIBYTE(v252) & 0xF;
        if ((v252 & 0x2000000000000000) == 0)
        {
          v254 = v250 & 0xFFFFFFFFFFFFLL;
        }

        if (v254)
        {
          v338 = v250;
          v339 = v252;
          v336 = 59;
          v337 = 0xE100000000000000;
          if ((sub_1AFDFDF18() & 1) == 0)
          {
            MEMORY[0x1B2718AE0](59, 0xE100000000000000);
          }
        }
      }

      v255 = v327;
      if (*v327 == _TtC3VFX17SubGraphEnterNode && v327)
      {
        v256 = sub_1AF61FD18(v190, (v190 + 4), v190[2] != 0, (2 * v190[2]) | 1);

        v257 = v256[2];

        v258 = MEMORY[0x1E69E7CC0];
        if (v257)
        {
          v336 = MEMORY[0x1E69E7CC0];
          sub_1AFC05CE4(0, v257, 0);
          v259 = 0;
          v258 = v336;
          do
          {
            v338 = 0x6E69627573;
            v339 = 0xE500000000000000;
            v335[0] = v259;
            v260 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v260);

            v261 = v338;
            v262 = v339;
            v336 = v258;
            v264 = *(v258 + 16);
            v263 = *(v258 + 24);
            if (v264 >= v263 >> 1)
            {
              sub_1AFC05CE4(v263 > 1, v264 + 1, 1);
              v258 = v336;
            }

            ++v259;
            *(v258 + 16) = v264 + 1;
            v265 = v258 + 16 * v264;
            *(v265 + 32) = v261;
            *(v265 + 40) = v262;
          }

          while (v257 != v259);
        }

        v338 = &unk_1F2506650;
        sub_1AF48FAF8(v258);

        v333 = v338;
        v266 = v327;
      }

      else
      {

        v266 = v255;
      }

      v268 = v340;
      v267 = v341;
      v338 = v340;
      v339 = v341;
      v336 = 0x5F74706972637325;
      v337 = 0xEF747865746E6F63;
      LODWORD(v269) = sub_1AFDFDF18();
      if (v269)
      {
        v338 = v268;
        v339 = v267;
        v336 = 0x5F74706972637325;
        v337 = 0xEF747865746E6F63;
        strcpy(v335, "script_context");
        HIBYTE(v335[1]) = -18;
        v268 = sub_1AFDFDEB8();
        v271 = v270;
      }

      else
      {

        v271 = v267;
      }

      v272 = v332;

      v273 = sub_1AF95AAA8(v268, v271);
      v275 = v274;
      v328 = v276;
      v326 = v277;
      swift_bridgeObjectRelease_n();
      v340 = v273;
      v341 = v275;
      v332 = v275;
      v330 = v273;
      if (v329 == 2)
      {
        if (*(v272 + 40) != 1)
        {
          goto LABEL_139;
        }

        v278 = v331;
        if (*(v272 + 41))
        {
LABEL_130:

          goto LABEL_141;
        }

        v279 = 0;
      }

      else
      {
        v280 = *(v272 + 32);
        v281 = v323;
        v283 = v312;
        v282 = v313;
        (*(v323 + 16))(v312, v266 + OBJC_IVAR____TtC3VFX4Node_authoringID, v313);

        v279 = sub_1AF70292C(v283, v280);

        (*(v281 + 8))(v283, v282);
        if ((*(v272 + 40) & 1) == 0)
        {
          v278 = v331;
          if (v279)
          {
            v284 = 0;
            goto LABEL_136;
          }

          goto LABEL_139;
        }

        v278 = v331;
        if (*(v272 + 41))
        {
          goto LABEL_129;
        }
      }

      if ((*(v318 + 16))(v317))
      {
LABEL_129:
        if ((v279 & 1) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_135;
      }

      if (v279)
      {
LABEL_135:
        v284 = 1;
LABEL_136:

        if (v278 == v266)
        {
          sub_1AF95B314(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
          v286 = swift_allocObject();
          v325 = xmmword_1AFE431C0;
          *(v286 + 16) = xmmword_1AFE431C0;
          v329 = v269;
          v269 = v332;
          *(v286 + 32) = v330;
          *(v286 + 40) = v269;
          *(v286 + 48) = 0;
          *(v286 + 56) = 0;

          v287 = sub_1AF94EDE0(v266, v334, v333);
          v289 = v288;

          v290 = swift_allocObject();
          *(v290 + 16) = v325;
          *(v290 + 32) = v287;
          *(v290 + 40) = v289;
          sub_1AF441DD8(0);
          *(v290 + 48) = 0;
          *(v290 + 56) = 0;
          v291 = swift_allocObject();
          *(v291 + 16) = xmmword_1AFE4C620;
          *(v291 + 32) = v286;
          *(v291 + 40) = v290;
          v292 = sub_1AFA56CA0();
          swift_setDeallocating();
          sub_1AF95B314(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v330 = sub_1AFA5413C(v292);
          v294 = v293;
          LOBYTE(v269) = v329;

          v332 = v294;
          if ((v284 & 1) == 0)
          {
            goto LABEL_142;
          }
        }

        else
        {

          if ((v284 & 1) == 0)
          {
LABEL_142:
            v338 = (*(*v266 + 128))(v285);
            v339 = v298;
            v299 = *(v266 + 24);
            v300 = *(v266 + 32);

            v301 = sub_1AF970608(v299, v300);
            v303 = v302;

            v304 = HIBYTE(v303) & 0xF;
            if ((v303 & 0x2000000000000000) == 0)
            {
              v304 = v301 & 0xFFFFFFFFFFFFLL;
            }

            if (v304)
            {
              v336 = 32;
              v337 = 0xE100000000000000;
              MEMORY[0x1B2718AE0](v301, v303);

              MEMORY[0x1B2718AE0](v336, v337);
            }

            if (v269)
            {
              v305 = 1;
            }

            else
            {
              if (!v321)
              {
                v334 = 0;
                goto LABEL_151;
              }

              v305 = v342;
            }

            v334 = v305;
LABEL_151:
            v36 = v338;
            v37 = v339;
            v26 = v371;
            v27 = v372;
            v28 = v373;
            v29 = v374;
            v30 = v375;
            v39 = v376;
            LODWORD(v331) = v342;
            v25 = v327;

            sub_1AF487074(v315, v321, v311);
            v33 = v332;
            v31 = v333;
            v34 = v328;
            v35 = v326;
            v32 = v330;
            v38 = v334;
            goto LABEL_4;
          }
        }

LABEL_141:
        v295 = sub_1AF95ADC4(v266, v330, v332);
        v330 = sub_1AFA5413C(v295);
        v297 = v296;

        v332 = v297;
        goto LABEL_142;
      }

LABEL_139:

      goto LABEL_142;
    }
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
LABEL_4:
  v40 = v324;
  *v324 = v25;
  v40[1] = v26;
  v40[2] = v27;
  v40[3] = v28;
  v40[4] = v29;
  v40[5] = v30;
  v40[6] = v39;
  v40[7] = v31;
  v40[8] = v32;
  v40[9] = v33;
  v40[10] = v34;
  v40[11] = v35;
  v40[12] = v38;
  v40[13] = v36;
  v40[14] = v37;
}

uint64_t sub_1AF951E44()
{
  if (qword_1EB6325E8 != -1)
  {
    swift_once();
  }

  v1 = byte_1EB6C2888;
  v2 = qword_1EB6C2890;
  v3 = byte_1EB6C2898;
  v4 = MEMORY[0x1E69E7CC0];
  v25 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
  v26 = v5;
  sub_1AF414A20(sub_1AF95B364, v0, v1, v2, v3, v4, &v25);
  v6 = v25;

  v7 = sub_1AF932728();
  if (v7 >> 62)
  {
    v8 = sub_1AFDFE108();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = sub_1AF932728();
  v10 = v9;
  v11 = v9 >> 62;
  if (v8 != 1)
  {
    if (v11)
    {
      v17 = sub_1AFDFE108();
      if (v17)
      {
LABEL_16:
        v24 = v4;
        sub_1AFDFE368();
        v18 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1B2719C70](v18, v10);
            if (!v6[2])
            {
              goto LABEL_32;
            }
          }

          else
          {
            v19 = *(v10 + 8 * v18 + 32);

            if (!v6[2])
            {
              goto LABEL_32;
            }
          }

          v20 = sub_1AF0D3F10(v19);
          if ((v21 & 1) == 0 || !*(v6[7] + 8 * v20))
          {
            goto LABEL_32;
          }

          ++v18;

          sub_1AFDFE328();
          sub_1AFDFE398();
          sub_1AFDFE3A8();
          sub_1AFDFE348();
        }

        while (v17 != v18);

        v22 = v24;
        goto LABEL_30;
      }
    }

    else
    {
      v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_16;
      }
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_30:
    type metadata accessor for GraphCodeGen.CFGMultiProcedure();
    result = swift_allocObject();
    *(result + 16) = v22;
    return result;
  }

  if (v11)
  {
    if (sub_1AFDFE108())
    {
      goto LABEL_8;
    }

LABEL_27:

    goto LABEL_33;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

LABEL_8:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B2719C70](0, v10);
  }

  else
  {
    v12 = *(v10 + 32);
  }

  if (!v6[2] || (v13 = sub_1AF0D3F10(v12), (v14 & 1) == 0) || (v15 = *(v6[7] + 8 * v13)) == 0)
  {
    while (1)
    {
LABEL_32:
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x6C616E696D726574, 0xEE002065646F6E20);
      v23 = sub_1AF9703D8();
      MEMORY[0x1B2718AE0](v23);

      MEMORY[0x1B2718AE0](0xD00000000000002CLL, 0x80000001AFF3BC80);
LABEL_33:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  return v15;
}

uint64_t sub_1AF9522D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[3];

  v5 = sub_1AF95B380(v3, v4);

  *a2 = v5;
  return result;
}

uint64_t sub_1AF952338(uint64_t result)
{
  if (!*(*(result + 16) + 16))
  {
    v24[9] = v1;
    v24[10] = v2;
    v3 = *(result + 8);
    (*(*v3 + 152))(&v15);
    v4 = *(v3[2] + 16);
    if (v4)
    {
      v5 = 0;
      v24[0] = v18;
      v6 = *(v18 + 16);
      v7 = (v18 + 40);
      v8 = 32;
      do
      {
        if (v5 < v6)
        {
          v9 = *v7;
          if (*v7)
          {
            v14[0] = *(v7 - 1);
            v14[1] = v9;
            v13[0] = 0x736E6972746E6923;
            v13[1] = 0xEA00000000006369;
            sub_1AF4486E4();
            if (sub_1AFDFDF18())
            {
              sub_1AF70E5AC(v14, *(v3[2] + v8));
            }
          }
        }

        ++v5;
        v7 += 2;
        v8 += 16;
      }

      while (v4 != v5);
      v14[0] = v15;
      v10 = MEMORY[0x1E69E62F8];
      sub_1AF957840(v14, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
      v13[0] = v16;
      sub_1AF957840(v13, &qword_1EB638968, &type metadata for TypeConstraint, v10);
      v23 = v17;
      sub_1AF957840(&v23, &qword_1EB638968, &type metadata for TypeConstraint, v10);
      v11 = v24;
    }

    else
    {
      v14[0] = v15;
      v12 = MEMORY[0x1E69E62F8];
      sub_1AF957840(v14, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
      v13[0] = v16;
      sub_1AF957840(v13, &qword_1EB638968, &type metadata for TypeConstraint, v12);
      v24[0] = v17;
      sub_1AF957840(v24, &qword_1EB638968, &type metadata for TypeConstraint, v12);
      v23 = v18;
      v11 = &v23;
    }

    sub_1AF95BC54(v11, sub_1AF445C2C);
    v22 = v19;
    sub_1AF95BC54(&v22, sub_1AF445C2C);
    v21 = v20;
    return sub_1AF957840(&v21, &qword_1EB638978, &type metadata for AnyValue, MEMORY[0x1E69E62F8]);
  }

  return result;
}

uint64_t sub_1AF952600(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 96);
  if (*(v4 + 16) && (a1 = sub_1AF0D3F10(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 16 * a1);
  }

  else
  {
    v45[0] = MEMORY[0x1E69E7CD0];
    MEMORY[0x1EEE9AC00](a1);
    v41 = v45;
    MEMORY[0x1EEE9AC00](v7);
    v39[2] = sub_1AF95C27C;
    v39[3] = v8;
    v9 = MEMORY[0x1E69E7CC0];
    *&v46 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    *(&v46 + 1) = v10;
    sub_1AF412D4C(sub_1AF449DD8, v39, 1, 0x1000000000000000uLL, 0, v9, &v46);

    sub_1AF967C6C(v45[0]);
    v11 = sub_1AF951E44();
    v43 = v11;
    v54 = v9;
    if (qword_1EB6325F0 != -1)
    {
      v11 = swift_once();
    }

    v12 = byte_1EB6C28A0;
    v13 = qword_1EB6C28A8;
    v14 = byte_1EB6C28B0;
    MEMORY[0x1EEE9AC00](v11);
    v41 = v2;
    v42 = &v54;
    v15 = MEMORY[0x1E69E7CC0];
    *&v46 = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
    *(&v46 + 1) = v16;
    v44 = v3;
    sub_1AF416014(sub_1AF95A870, &v40, v12, v13, v14, v15, &v46);

    v17 = v54;
    v18 = v54[2];
    if (v18)
    {
      v19 = v54 + 4;

      do
      {
        v27 = *(v19 + 2);
        v28 = *(v19 + 3);
        v29 = *(v19 + 1);
        v46 = *v19;
        v48 = v27;
        v49 = v28;
        v47 = v29;
        v30 = *(v19 + 4);
        v31 = *(v19 + 5);
        v32 = *(v19 + 6);
        v53 = v19[14];
        v51 = v31;
        v52 = v32;
        v50 = v30;
        if (*v46 == _TtC3VFX12SubGraphNode)
        {
          v33 = *(v2 + 64);
          sub_1AF95A838(&v46, v45);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 64) = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v33 = sub_1AF426008(0, *(v33 + 2) + 1, 1, v33);
            *(v2 + 64) = v33;
          }

          v36 = *(v33 + 2);
          v35 = *(v33 + 3);
          if (v36 >= v35 >> 1)
          {
            v33 = sub_1AF426008(v35 > 1, v36 + 1, 1, v33);
          }

          *(v33 + 2) = v36 + 1;
          v20 = &v33[120 * v36];
          v21 = v46;
          v22 = v47;
          v23 = v49;
          *(v20 + 4) = v48;
          *(v20 + 5) = v23;
          *(v20 + 2) = v21;
          *(v20 + 3) = v22;
          v24 = v50;
          v25 = v51;
          v26 = v52;
          *(v20 + 18) = v53;
          *(v20 + 7) = v25;
          *(v20 + 8) = v26;
          *(v20 + 6) = v24;
          *(v2 + 64) = v33;
        }

        v19 += 15;
        --v18;
      }

      while (v18);
    }

    else
    {
    }

    v6 = v43;

    v37 = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = *(v2 + 96);
    *(v2 + 96) = 0x8000000000000000;
    sub_1AF8571B0(v6, v17, v44, v37);
    *(v2 + 96) = v46;
  }

  return v6;
}

double sub_1AF9529E4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1[2];
  if (*(v5 + 16))
  {
    *(a4 + 112) = 0;
    result = 0.0;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  else
  {
    v9 = a1[3];
    v10 = a1[4];
    v11 = a1[1];

    sub_1AF95B0CC(v11, v5, a2, v9, v10, v33);

    v12 = *v33;
    if (*v33)
    {
      v38 = *&v33[72];
      v39 = *&v33[88];
      v40 = *&v33[104];
      v34 = *&v33[8];
      v35 = *&v33[24];
      v36 = *&v33[40];
      v37 = *&v33[56];
      v13 = *a3;
      v31[1] = *&v33[16];
      v31[2] = *&v33[32];
      v31[0] = *v33;
      v32 = *&v33[112];
      v31[5] = *&v33[80];
      v31[6] = *&v33[96];
      v31[3] = *&v33[48];
      v31[4] = *&v33[64];
      sub_1AF95A838(v31, &v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_1AF426008(0, *(v13 + 2) + 1, 1, v13);
        *a3 = v13;
      }

      v15 = *(v13 + 2);
      v16 = *(v13 + 3);
      v17 = v15 + 1;
      if (v15 >= v16 >> 1)
      {
        v27 = v13;
        v28 = *(v13 + 2);
        v29 = sub_1AF426008(v16 > 1, v15 + 1, 1, v27);
        v15 = v28;
        v13 = v29;
        *a3 = v29;
      }

      *(v13 + 2) = v17;
      v18 = &v13[120 * v15];
      *(v18 + 4) = v12;
      v19 = v34;
      v20 = v35;
      *(v18 + 72) = v36;
      *(v18 + 56) = v20;
      *(v18 + 40) = v19;
      v21 = v37;
      v22 = v38;
      v23 = v39;
      *(v18 + 136) = v40;
      *(v18 + 120) = v23;
      *(v18 + 104) = v22;
      *(v18 + 88) = v21;
    }

    v24 = *&v33[80];
    *(a4 + 64) = *&v33[64];
    *(a4 + 80) = v24;
    *(a4 + 96) = *&v33[96];
    *(a4 + 112) = *&v33[112];
    v25 = *&v33[16];
    *a4 = *v33;
    *(a4 + 16) = v25;
    result = *&v33[32];
    v26 = *&v33[48];
    *(a4 + 32) = *&v33[32];
    *(a4 + 48) = v26;
  }

  return result;
}

uint64_t sub_1AF952C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(a2 + 56);
    v5 = 0x20646165726874;
    if (v4 != 2)
    {
      v5 = 0;
    }

    v41 = v5;
    v6 = 0xE700000000000000;
    if (v4 != 2)
    {
      v6 = 0xE000000000000000;
    }

    v40 = v6;
    v7 = (a1 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    v45 = *(a2 + 56);
    while (1)
    {
      v48 = v2;
      v49 = v8;
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = v7[1];
      v12 = v7[4];
      v46 = v7[3];
      v47 = v9;
      if (v4 != 3)
      {
        break;
      }

      sub_1AF441DD8(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = v3;
      v14 = inited + 32;
      swift_bridgeObjectRetain_n();
      sub_1AF442064(v9);

      v15 = v11;
      v16 = v10;
      v17 = sub_1AFA56CA0();
      v18 = v12;
      swift_setDeallocating();
      sub_1AF957840(v14, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
LABEL_26:
      sub_1AF95B314(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_1AFE431C0;
      *(v30 + 32) = v16;
      *(v30 + 40) = v15;
      *(v30 + 48) = v46;
      *(v30 + 56) = v18;
      sub_1AF441DD8(0);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_1AFE4C620;
      *(v31 + 32) = v17;
      *(v31 + 40) = v30;

      v32 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AF95B314(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
      v8 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF426BC8(0, v49[2] + 1, 1, v49);
      }

      v34 = v8[2];
      v33 = v8[3];
      if (v34 >= v33 >> 1)
      {
        v8 = sub_1AF426BC8(v33 > 1, v34 + 1, 1, v8);
      }

      v7 += 6;
      sub_1AF445BE4(v47);

      v8[2] = v34 + 1;
      v8[v34 + 4] = v32;
      v2 = v48 - 1;
      v3 = MEMORY[0x1E69E7CC0];
      v4 = v45;
      if (v48 == 1)
      {
        goto LABEL_31;
      }
    }

    v43 = *(v7 + 16);

    sub_1AF442064(v9);

    v19 = sub_1AF937FF8(v4, v9);
    if ((~v19 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v9);
      v19 = v9;
    }

    v44 = v19;
    v20 = sub_1AF94B594(v4, v19);
    v22 = v21;
    if (v10 == 0x635F747069726373 && v11 == 0xEE00747865746E6FLL)
    {
      if (v4 != 2)
      {
LABEL_18:
        v42 = v3;
        v26 = v3;
        goto LABEL_19;
      }
    }

    else
    {
      v23 = sub_1AFDFEE28();
      if (v4 != 2 || (v23 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_1AF441DD8(0);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1AFE431C0;
    *(v24 + 32) = v3;
    v25 = v24 + 32;
    v42 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AF957840(v25, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    v20 = 0x6F635F656D617266;
    v22 = 0xEF73746E6174736ELL;
    v26 = v3;
LABEL_19:
    MEMORY[0x1B2718AE0](v20, v22);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    if (v43)
    {
      v27 = 38;
    }

    else
    {
      v27 = 0;
    }

    if (v43)
    {
      v28 = 0xE100000000000000;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    MEMORY[0x1B2718AE0](v27, v28);

    MEMORY[0x1B2718AE0](v10, v11);

    v16 = v41;
    v15 = v40;
    sub_1AF441DD8(0);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_1AFE4C620;
    *(v29 + 32) = v42;
    *(v29 + 40) = v26;
    v17 = sub_1AFA56CA0();
    sub_1AF445BE4(v44);
    swift_setDeallocating();
    sub_1AF95B314(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    v18 = v12;
    goto LABEL_26;
  }

LABEL_31:
  v35 = sub_1AFA56CA0();

  sub_1AF441DD8(0);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1AFE431C0;
  *(v36 + 32) = v35;
  v37 = v36 + 32;
  v38 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF957840(v37, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  return v38;
}

uint64_t sub_1AF9531DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a1;
  v9 = *(v5 + 57);
  v17 = a1;
  if ((v9 & 1) == 0 || !a4)
  {

    if ((v9 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  sub_1AF4486E4();
  v12 = sub_1AFDFDE98();
  MEMORY[0x1B2718AE0](a3, a4);
  if ((v9 & 2) != 0)
  {
    v13 = *(v12 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v13 >= *(v12 + 24) >> 1)
    {
      sub_1AF420554(isUniquelyReferenced_nonNull_native, v13 + 1, 1, v12);
    }

    sub_1AF64DF78(0, 0, 1, 2109231, 0xE300000000000000);
  }

  else
  {
    MEMORY[0x1B2718AE0](2109231, 0xE300000000000000);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AFC0D97C(v12);
    }

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  }

  sub_1AF95B314(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v8 = sub_1AFDFCD98();
  a2 = v15;

  v17 = v8;
  if ((v9 & 2) != 0)
  {
LABEL_14:
    if ((*a5 & 1) == 0)
    {
      MEMORY[0x1B2718AE0](v8, a2);

      v17 = 10;
    }
  }

LABEL_16:
  *a5 = 0;
  if ((sub_1AFDFD188() & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  }

  return v17;
}

uint64_t sub_1AF953428(uint64_t a1)
{
  v28 = 0;
  v29 = 0xE000000000000000;
  v27 = 0;
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 72);
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      v3 = v2[4];
      if (v3)
      {
        v4 = v2[3];
        v5 = HIBYTE(v3) & 0xF;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v5 = v4 & 0xFFFFFFFFFFFFLL;
        }

        if (v5)
        {
          v6 = *(v2 - 2);
          v7 = v2[6];
          v24 = v2[5];
          v26 = *v2;
          v8 = v2[9];
          v21 = *(v2 - 1);
          v22 = v2[8];

          v9 = v7;
          sub_1AF487F80(v6, v21, v26);

          swift_bridgeObjectRetain_n();

          v10 = sub_1AF9531DC(v4, v3, v22, v8, &v27);
          v12 = v11;

          MEMORY[0x1B2718AE0](v10, v12);

          if (v7)
          {
            v13 = v24;
            swift_bridgeObjectRetain_n();
            v14 = sub_1AFDFD188();

            v15 = v9;
            if ((v14 & 1) == 0)
            {
              MEMORY[0x1B2718AE0](10, 0xE100000000000000);
              v13 = v24;
              v15 = v9;
            }

            v25 = v13;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1AF420554(0, *(v23 + 2) + 1, 1, v23);
            }

            v17 = *(v23 + 2);
            v16 = *(v23 + 3);
            if (v17 >= v16 >> 1)
            {
              v23 = sub_1AF420554(v16 > 1, v17 + 1, 1, v23);
            }

            sub_1AF487074(v6, v21, v26);

            *(v23 + 2) = v17 + 1;
            v18 = &v23[16 * v17];
            *(v18 + 4) = v25;
            *(v18 + 5) = v15;
          }

          else
          {

            sub_1AF487074(v6, v21, v26);
          }
        }
      }

      v2 += 15;
      --v1;
    }

    while (v1);
    v19 = v28;
  }

  else
  {
    v19 = 0;
  }

  sub_1AF95B314(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  sub_1AFDFCD98();

  return v19;
}

uint64_t sub_1AF953774(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = sub_1AF7025B4(a1, *(a2 + 104));
  if ((result & 1) == 0)
  {
    result = sub_1AF7025B4(a1, *a3);
    if ((result & 1) == 0)
    {
      sub_1AF70E5AC(&v34, a1);
      v8 = *(a1[2] + 16);
      v31 = a1[2];

      if (v8)
      {
        v9 = v31 + 32;
        v10 = 32;
        do
        {
          v11 = a1[3];
          v12 = a1[4];
          v13 = *(v11 + v10);

          sub_1AF448650(v11, v12);
          sub_1AF442064(v13);

          LOBYTE(v11) = sub_1AF90F890(v13, 0xC000000000000008);
          sub_1AF445BE4(v13);
          if ((v11 & 1) == 0)
          {

            sub_1AF953774(v14, a2, a3, a4);
          }

          v9 += 16;
          v10 += 8;
          --v8;
        }

        while (v8);
      }

      v15 = *(a2 + 112);
      if (*(v15 + 16) && (result = sub_1AF0D3F10(a1), (v16 & 1) != 0))
      {
        v17 = *(v15 + 56) + 120 * result;
        v18 = *v17;
        v19 = *(v17 + 56);
        v20 = *(v17 + 88);
        v46 = *(v17 + 72);
        v47 = v20;
        v48 = *(v17 + 104);
        v21 = *(v17 + 24);
        v42 = *(v17 + 8);
        v43 = v21;
        v44 = *(v17 + 40);
        v45 = v19;
        v49 = v42;
        v50 = v21;
        v54 = v20;
        v55 = v48;
        v52 = v19;
        v53 = v46;
        v51 = v44;
        if (v18)
        {
          v38 = v45;
          v39 = v46;
          v40 = v47;
          v41 = v48;
          v35 = v42;
          v36 = v43;
          v22 = *(a4 + 16);
          v34 = v18;
          v37 = v44;
          sub_1AF95A838(&v34, v33);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(a4 + 16) = v22;
          if ((result & 1) == 0)
          {
            result = sub_1AF426008(0, *(v22 + 16) + 1, 1, v22);
            v22 = result;
            *(a4 + 16) = result;
          }

          v24 = *(v22 + 16);
          v23 = *(v22 + 24);
          if (v24 >= v23 >> 1)
          {
            result = sub_1AF426008(v23 > 1, v24 + 1, 1, v22);
            v22 = result;
          }

          *(v22 + 16) = v24 + 1;
          v25 = v22 + 120 * v24;
          *(v25 + 32) = v18;
          v26 = v49;
          v27 = v50;
          *(v25 + 72) = v51;
          *(v25 + 56) = v27;
          *(v25 + 40) = v26;
          v28 = v52;
          v29 = v53;
          v30 = v54;
          *(v25 + 136) = v55;
          *(v25 + 120) = v30;
          *(v25 + 104) = v29;
          *(v25 + 88) = v28;
          *(a4 + 16) = v22;
        }
      }

      else
      {
        result = sub_1AFDFE518();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1AF953A58@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v22 = a3;
  v5 = sub_1AFDFC3A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AFDFC3B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HIBYTE(a2) & 0xF;
  v14 = 0;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    sub_1AF95A804(0);
    sub_1AFDFC498();
    sub_1AFDFC3C8();
    (*(v10 + 8))(v12, v9);
    sub_1AFDFC398();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    if (v16)
    {
      v17 = sub_1AFDFDE08();

      v14 = v17;
    }

    else
    {
      v14 = 0;
    }
  }

  result = sub_1AFAF888C(v14);
  v19 = v22;
  *v22 = result;
  v19[1] = v20;
  return result;
}

uint64_t sub_1AF953C6C(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for GraphCodeGen.CFGNoop();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for GraphCodeGen.CFGInvalid();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for GraphCodeGen.CFGProcedure();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + 16);
    v7 = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    sub_1AF953774(v6, v2, a2, v8);
    v9 = *(v8 + 16);

    v10 = sub_1AF953428(v9);
    v12 = v11;

    v80 = v10;
    v81 = v12;
    v13 = *(v7 + 24);
    if (!v13)
    {
      return v10;
    }

    v85[0] = *a2;

    v14 = sub_1AF953C6C(v13, v85);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v86 = v14;
    v87 = v16;

    MEMORY[0x1B2718AE0](v18, v20);

    MEMORY[0x1B2718AE0](v86, v87);

    return v80;
  }

  type metadata accessor for GraphCodeGen.CFGMultiProcedure();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v86 = 0;
    v87 = 0xE000000000000000;
    v85[0] = 0;
    v85[1] = 0xE000000000000000;
    v22 = *(v21 + 16);
    if (v22 >> 62)
    {
      v70 = v21;
      v78 = sub_1AFDFE108();
      v22 = *(v70 + 16);
      if (v22 >> 62)
      {
        v71 = *(v70 + 16);
        v72 = sub_1AFDFE108();
        v22 = v71;
        v23 = v72;
        if (v72)
        {
LABEL_11:
          v24 = 0;
          v25 = *a2;
          v76 = v22 & 0xC000000000000001;
          v77 = v22;
          do
          {
            if (v76)
            {
              v26 = MEMORY[0x1B2719C70](v24);
            }

            else
            {
              v26 = *(v22 + 8 * v24 + 32);
            }

            v84 = v25;

            v27 = v2;
            v28 = sub_1AF953C6C(v26, &v84);
            v30 = v29;
            v32 = v31;
            v34 = v33;

            v80 = v28;
            v81 = v30;
            v82 = v32;
            v83 = v34;
            if (v78 >= 2)
            {
              v28 = sub_1AFA54564(&v80);
              v36 = v35;

              v32 = sub_1AFA54A60(&v80);
              v38 = v37;

              v34 = v38;
              v30 = v36;
            }

            ++v24;
            MEMORY[0x1B2718AE0](v28, v30);
            MEMORY[0x1B2718AE0](v32, v34);

            v2 = v27;
            v22 = v77;
          }

          while (v23 != v24);
          return v86;
        }

        return 0;
      }
    }

    else
    {
      v78 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_11;
    }

    return 0;
  }

  type metadata accessor for GraphCodeGen.CFGCustomFlow();
  v39 = swift_dynamicCastClass();
  if (v39)
  {
    v40 = v39;
    v41 = *(v39 + 16);
    v42 = swift_allocObject();
    v43 = MEMORY[0x1E69E7CC0];
    *(v42 + 16) = MEMORY[0x1E69E7CC0];
    sub_1AF953774(v41, v2, a2, v42);
    v44 = *(v42 + 16);

    v45 = sub_1AF953428(v44);
    v47 = v46;

    v49 = *(v40 + 24);
    v50 = *(v49 + 16);
    if (v50)
    {
      v73 = v45;
      v74 = v47;
      v75 = a2;
      v51 = (v49 + 48);
      v52 = v43;

      do
      {
        v53 = *v51;
        v79 = *(v51 - 1);

        v54 = swift_retain_n();
        v55 = sub_1AF953C6C(v54, &v86);
        v57 = v56;
        v59 = v58;
        v80 = v55;
        v81 = v60;

        MEMORY[0x1B2718AE0](v57, v59);

        v61 = v80;
        v62 = v81;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1AF420554(0, *(v43 + 2) + 1, 1, v43);
        }

        v64 = *(v43 + 2);
        v63 = *(v43 + 3);
        if (v64 >= v63 >> 1)
        {
          v43 = sub_1AF420554(v63 > 1, v64 + 1, 1, v43);
        }

        *(v43 + 2) = v64 + 1;
        v65 = &v43[16 * v64];
        *(v65 + 4) = v61;
        *(v65 + 5) = v62;
        v66 = v86;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1AF426370(0, *(v52 + 2) + 1, 1, v52);
        }

        v68 = *(v52 + 2);
        v67 = *(v52 + 3);
        if (v68 >= v67 >> 1)
        {
          v52 = sub_1AF426370(v67 > 1, v68 + 1, 1, v52);
        }

        *(v52 + 2) = v68 + 1;
        *&v52[8 * v68 + 32] = v66;
        if (v53 < 2 || v79 >= 2)
        {
        }

        else
        {

          *v75 = v66;
        }

        v51 += 24;
        --v50;
      }

      while (v50);

      v45 = v73;
      v47 = v74;
    }

    v69 = sub_1AF959B3C(v45, v47, v43, v48);

    return v69;
  }

  else
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF2E910);
    type metadata accessor for GraphCodeGen.CFGNode();
    sub_1AFDFE458();
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}