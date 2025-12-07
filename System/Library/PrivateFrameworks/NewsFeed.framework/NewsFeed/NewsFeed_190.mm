unint64_t sub_1D6C94F50(uint64_t a1)
{
  result = sub_1D5C10AB0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GroupLayoutBindingContext(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for GroupLayoutContext(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D6C95024(uint64_t a1)
{
  if (!qword_1EDF05400)
  {
    sub_1D72585BC();
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF05400);
    }
  }
}

double sub_1D6C9507C(uint64_t a1)
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v6 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = (*(v8 + 64) + 32) & ~*(v8 + 64);
    v15[1] = v6;
    v12 = v6 + v11;
    v13 = *(v8 + 56);
    do
    {
      v9(v5, v12, v1);
      sub_1D5B6D0FC(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1D7261E8C();
      (*(v8 - 8))(v5, v1);
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1D6C9525C()
{
  v0 = sub_1D72585BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v5 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = *(v1 + 16);
    v7 = v1 + 16;
    v8 = v9;
    v10 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v14 = v5;
    v11 = v5 + v10;
    v12 = *(v7 + 56);
    do
    {
      v8(v4, v11, v0);
      sub_1D5B6D0FC(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1D7261E8C();
      (*(v7 - 8))(v4, v0);
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6C95424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = WebEmbedDataVisualization.identifier.getter();
  v8 = v7;
  if (v6 == WebEmbedDataVisualization.identifier.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_1D72646CC();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a3 + 20);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1D5D61944(v12, v13);
}

uint64_t sub_1D6C95508(uint64_t a1)
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v6 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = (*(v8 + 64) + 32) & ~*(v8 + 64);
    v15 = v6;
    v12 = v6 + v11;
    v13 = *(v8 + 56);
    do
    {
      v9(v5, v12, v1);
      sub_1D5B6D0FC(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1D7261E8C();
      (*(v8 - 8))(v5, v1);
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6C956D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D6C9C9F4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v54 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v53 = &v50[-v11];
  sub_1D6C9C9F4(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v50[-v18];
  v20 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v55 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v50[-v25];
  v28 = v27;
  sub_1D5CDE454(a1, v19, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  v29 = *(v28 + 48);
  if (v29(v19, 1, v20) == 1)
  {
    sub_1D6C9C930(v19, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    return sub_1D5CDE454(a2, a3, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  }

  sub_1D6C9C76C(v19, v26, type metadata accessor for FormatSlotDefinitionItemSet);
  sub_1D5CDE454(a2, v15, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  if (v29(v15, 1, v20) == 1)
  {
    sub_1D6C9C930(v15, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    sub_1D6C9C76C(v26, a3, type metadata accessor for FormatSlotDefinitionItemSet);
    return (*(v28 + 56))(a3, 0, 1, v20);
  }

  v31 = v55;
  sub_1D6C9C76C(v15, v55, type metadata accessor for FormatSlotDefinitionItemSet);
  v32 = *(v26 + 1);
  if ((sub_1D5E1EFE4(v32, *(v31 + 1)) & 1) == 0)
  {
    goto LABEL_16;
  }

  result = sub_1D5EECE54(v33, v32);
  v34 = *v26;
  v35 = *v31;
  v36 = 0x7FFFFFFF;
  v37 = *v26 == 0x7FFFFFFF || v35 == 0x7FFFFFFF;
  v38 = 0x7FFFFFFF;
  if (!v37)
  {
    v38 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      __break(1u);
      return result;
    }
  }

  v39 = *(v26 + 1);
  if (v39 == 0x7FFFFFFF)
  {
    v41 = v54;
    goto LABEL_18;
  }

  v40 = *(v31 + 1);
  v41 = v54;
  if (v40 != 0x7FFFFFFF)
  {
    v36 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      __break(1u);
LABEL_16:
      type metadata accessor for FormatDerivedDataError(0);
      sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      swift_allocError();
      *v42 = 0xD000000000000028;
      v42[1] = 0x80000001D73B7940;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6C9C70C(v31, type metadata accessor for FormatSlotDefinitionItemSet);
      return sub_1D6C9C70C(v26, type metadata accessor for FormatSlotDefinitionItemSet);
    }
  }

LABEL_18:
  v51 = v38;
  v52 = result;
  v54 = v28;
  sub_1D5CDE454(&v26[*(v20 + 36)], v41, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v43 = sub_1D725B76C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  if (v45(v41, 1, v43) == 1)
  {
    v46 = v53;
    sub_1D5CDE454(&v55[*(v20 + 36)], v53, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    v47 = v45(v41, 1, v43);
    v48 = v46;
    if (v47 != 1)
    {
      sub_1D6C9C930(v41, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    }
  }

  else
  {
    v48 = v53;
    (*(v44 + 32))(v53, v41, v43);
    (*(v44 + 56))(v48, 0, 1, v43);
  }

  sub_1D6C9C70C(v55, type metadata accessor for FormatSlotDefinitionItemSet);
  sub_1D6C9C70C(v26, type metadata accessor for FormatSlotDefinitionItemSet);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *a3 = v51;
  *(a3 + 4) = v36;
  v49 = MEMORY[0x1E69E7CC0];
  *(a3 + 8) = v52;
  *(a3 + 16) = v49;
  sub_1D5CDE22C(0, 0);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  sub_1D5FC55FC(v48, a3 + *(v20 + 36));
  return (*(v54 + 7))(a3, 0, 1, v20);
}

void sub_1D6C95D8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for FormatDerivedDataBindingSlotResult(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v83 - v15;
  v17 = type metadata accessor for FormatCompilingSlotDefinition(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v97 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FormatSlotDefinition(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v96 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v98 = &v83 - v26;
  sub_1D6C9C9F4(0, &qword_1EC8946F8, type metadata accessor for FormatDerivedDataBindingSlotResult);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v99 = &v83 - v29;
  v107 = *(a2 + 40);
  v30 = sub_1D6C9BDF8(v107);
  if (!v30)
  {
    goto LABEL_20;
  }

  v95 = v18;
  v31 = *(v30 + 30);
  if (v31 >> 13 || (v32 = v30[4], (v30[4] & 0xC0) != 0x80) || *(v30 + 1) != 0 || v30[4] != 128)
  {
LABEL_19:

LABEL_20:
    type metadata accessor for FormatDerivedDataError(0);
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
    swift_allocError();
    *v37 = 0xD000000000000027;
    v37[1] = 0x80000001D73EF800;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v90 = v9;
  v93 = v8;
  v86 = a1;
  v33 = v30[5];
  v91 = v30[6];
  v92 = v33;
  v34 = *(v30 + 14) | (v31 << 32);
  v102 = MEMORY[0x1E69E7CC8];
  v94 = v30;
  swift_beginAccess();
  v35 = v94[8];
  if (v35 >> 62)
  {
    goto LABEL_54;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v85 = v16;
  v88 = v12;
  v89 = a2;
  v87 = a3;
  sub_1D67084A4(0, 0, v32, v92, v91, v34);

  if (v36)
  {
    v34 = 0;
    a3 = v35 & 0xC000000000000001;
    v16 = v35 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (a3)
      {
        a2 = MEMORY[0x1DA6FB460](v34, v35);
        v12 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {
        if (v34 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_53:
          __break(1u);
LABEL_54:
          v36 = sub_1D7263BFC();
          goto LABEL_8;
        }

        a2 = *(v35 + 8 * v34 + 32);

        v12 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
          goto LABEL_18;
        }
      }

      LOBYTE(v32) = v100;
      sub_1D6C9683C(a2, &v102);
      if (v4)
      {

        return;
      }

      ++v34;
    }

    while (v12 != v36);
  }

  v12 = *(v89 + 8);
  v38 = v12 + 56;
  v39 = 1 << v12[32];
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  a3 = v40 & *(v12 + 7);
  v34 = (v39 + 63) >> 6;
  v91 = (v90 + 56);

  a2 = 0;
  while (a3)
  {
LABEL_30:
    v44 = __clz(__rbit64(a3));
    a3 &= a3 - 1;
    v16 = v12;
    v45 = (*(v12 + 6) + ((a2 << 10) | (16 * v44)));
    v46 = *v45;
    v35 = v45[1];
    v47 = v102;
    v48 = *(v102 + 16);

    if (v48 && (v49 = sub_1D5B69D90(v46, v35), (v50 & 1) != 0))
    {
      v41 = *(v47 + 56);
      v32 = v90;
      v42 = v99;
      sub_1D6C9C6A4(v41 + *(v90 + 72) * v49, v99, type metadata accessor for FormatDerivedDataBindingSlotResult);
      (*(v32 + 56))(v42, 0, 1, v93);

      sub_1D6C9C930(v42, &qword_1EC8946F8, type metadata accessor for FormatDerivedDataBindingSlotResult);
      v12 = v16;
    }

    else
    {
      v92 = v46;
      v51 = v99;
      (*v91)(v99, 1, 1, v93);
      sub_1D6C9C930(v51, &qword_1EC8946F8, type metadata accessor for FormatDerivedDataBindingSlotResult);
      v32 = *(v100 + 16);
      if (*(v32 + 16))
      {
        v52 = sub_1D5B69D90(v92, v35);
        v12 = v16;
        if (v53)
        {
          v83 = v16;
          v54 = v97;
          sub_1D6C9C6A4(*(v32 + 56) + *(v95 + 72) * v52, v97, type metadata accessor for FormatCompilingSlotDefinition);
          v55 = v96;
          sub_1D6C9C6A4(v54, v96, type metadata accessor for FormatSlotDefinition);
          sub_1D6C9C70C(v54, type metadata accessor for FormatCompilingSlotDefinition);
          v56 = v98;
          sub_1D6C9C76C(v55, v98, type metadata accessor for FormatSlotDefinition);
          v57 = v56;
          v58 = v85;
          sub_1D6C9C6A4(v57, v85, type metadata accessor for FormatSlotDefinition);
          sub_1D6C9C76C(v58, v88, type metadata accessor for FormatDerivedDataBindingSlotResult);
          v59 = v102;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v101 = v59;
          v60 = v92;
          v61 = sub_1D5B69D90(v92, v35);
          v63 = *(v59 + 16);
          v64 = (v62 & 1) == 0;
          v65 = __OFADD__(v63, v64);
          v66 = v63 + v64;
          if (v65)
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            sub_1D726493C();
            __break(1u);
            return;
          }

          v16 = v62;
          if (*(v59 + 24) < v66)
          {
            sub_1D6D6CFD0(v66, isUniquelyReferenced_nonNull_native);
            v61 = sub_1D5B69D90(v60, v35);
            if ((v16 & 1) != (v67 & 1))
            {
              goto LABEL_57;
            }

LABEL_41:
            if (v16)
            {
              goto LABEL_42;
            }

            goto LABEL_44;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_41;
          }

          v69 = v61;
          sub_1D6D81FDC();
          v61 = v69;
          v60 = v92;
          if (v16)
          {
LABEL_42:
            v68 = v61;

            v32 = v101;
            sub_1D6C9C98C(v88, *(v101 + 56) + *(v90 + 72) * v68, type metadata accessor for FormatDerivedDataBindingSlotResult);
            sub_1D6C9C70C(v98, type metadata accessor for FormatSlotDefinition);
            goto LABEL_46;
          }

LABEL_44:
          v32 = v101;
          *(v101 + 8 * (v61 >> 6) + 64) |= 1 << v61;
          v70 = (*(v32 + 48) + 16 * v61);
          *v70 = v60;
          v70[1] = v35;
          sub_1D6C9C76C(v88, *(v32 + 56) + *(v90 + 72) * v61, type metadata accessor for FormatDerivedDataBindingSlotResult);
          sub_1D6C9C70C(v98, type metadata accessor for FormatSlotDefinition);
          v71 = *(v32 + 16);
          v65 = __OFADD__(v71, 1);
          v72 = v71 + 1;
          if (v65)
          {
            goto LABEL_56;
          }

          *(v32 + 16) = v72;
LABEL_46:
          v12 = v83;
          v102 = v32;
        }

        else
        {
        }
      }

      else
      {

        v12 = v16;
      }
    }
  }

  while (1)
  {
    v43 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v43 >= v34)
    {
      break;
    }

    a3 = *&v38[8 * v43];
    ++a2;
    if (a3)
    {
      a2 = v43;
      goto LABEL_30;
    }
  }

  v73 = sub_1D5C44E90();
  if (*(v12 + 2) <= *(v73 + 16) >> 3)
  {
    v101 = v73;
    sub_1D6836478(v12);

    v74 = v101;
  }

  else
  {
    v74 = sub_1D6E14F70(v12, v73);
  }

  v75 = v87;
  v76 = v89;
  sub_1D6C9C7D4(v86, v87, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  v77 = *v76;
  v78 = v76[3];
  v105 = v76[2];
  v106 = v77;
  v103 = v76[4];
  v104 = v78;
  v79 = v102;
  v80 = type metadata accessor for FormatDerivedDataBinderResult(0);
  v81 = (v75 + v80[5]);
  v82 = *(v76 + 1);
  *v81 = *v76;
  v81[1] = v82;
  v81[2] = *(v76 + 2);
  *(v75 + v80[6]) = v79;
  *(v75 + v80[7]) = v74;

  sub_1D6C9C6A4(&v106, &v102, sub_1D5B81B04);
  sub_1D6C9C7D4(&v105, &v102, &qword_1EC883D60, sub_1D6007784, &type metadata for FormatDerivedDataFileReference, MEMORY[0x1E69E64E8]);
  sub_1D6C9C8B0(&v104, &v102, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
  sub_1D6C9C6A4(&v103, &v102, sub_1D6107594);
  sub_1D6C9C8B0(&v107, &v102, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
}

void sub_1D6C9683C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v87 = a2;
  sub_1D6C9C9F4(0, &qword_1EC8946F8, type metadata accessor for FormatDerivedDataBindingSlotResult);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v72 - v7;
  v9 = type metadata accessor for FormatDerivedDataBindingSlotResult(0);
  v86 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v72 - v19;
  v21 = type metadata accessor for FormatCompilingSlotDefinition(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = *(a1 + 60);
  if ((v29 >> 13) - 1 < 3)
  {
    goto LABEL_2;
  }

  if (!(v29 >> 13))
  {
    v31 = *(a1 + 32);
    if (v31 > 0x3Fu)
    {
LABEL_2:
      type metadata accessor for FormatDerivedDataError(0);
      sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      swift_allocError();
      *v30 = 0xD00000000000004DLL;
      v30[1] = 0x80000001D73EF830;
LABEL_3:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }

    v74 = v9;
    v75 = v8;
    v33 = *(a1 + 16);
    v32 = *(a1 + 24);
    v34 = *(v89 + 16);
    v35 = *(v34 + 16);
    v84 = v32;
    v85 = v20;
    v82 = &v72 - v28;
    v83 = v33;
    if (v35)
    {
      v36 = *(a1 + 40);
      v80 = *(a1 + 48);
      v81 = v36;
      v37 = *(a1 + 56) | (v29 << 32);
      v78 = v31;
      v79 = v37;
      v77 = v34;
      v38 = v31;
      v39 = v32;
      sub_1D67084A4(v33, v32, v31, v36, v80, v37);
      sub_1D6007830(v33, v39, v38);
      v34 = v77;
      v73 = sub_1D5B69D90(v33, v39);
      v76 = v40;
      sub_1D67084F4(v33, v39, v78, v81, v80, v79);
      if (v76)
      {
        sub_1D6C9C6A4(*(v34 + 56) + *(v22 + 72) * v73, v25, type metadata accessor for FormatCompilingSlotDefinition);
        v41 = v25;
        v42 = v82;
        sub_1D6C9C76C(v41, v82, type metadata accessor for FormatCompilingSlotDefinition);
        v43 = *v87;
        if (*(*v87 + 16))
        {
          v44 = v84;

          v45 = v83;
          v46 = sub_1D5B69D90(v83, v44);
          if (v47)
          {
            sub_1D6C9C6A4(*(v43 + 56) + *(v86 + 72) * v46, v12, type metadata accessor for FormatDerivedDataBindingSlotResult);
            sub_1D6C9C76C(v12, v16, type metadata accessor for FormatDerivedDataBindingSlotResult);
            if ((v78 & 1) == 0)
            {
              v68 = v78;
              type metadata accessor for FormatDerivedDataError(0);
              sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
              swift_allocError();
              v70 = v83;
              v69 = v84;
              *v71 = v83;
              v71[1] = v69;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              sub_1D6C9C70C(v16, type metadata accessor for FormatDerivedDataBindingSlotResult);
              sub_1D6C9C70C(v42, type metadata accessor for FormatCompilingSlotDefinition);
              sub_1D67084F4(v70, v69, v68, v81, v80, v79);
              return;
            }

            sub_1D67084F4(v83, v84, v78, v81, v80, v79);
            sub_1D6C9C76C(v16, v85, type metadata accessor for FormatDerivedDataBindingSlotResult);
LABEL_34:
            swift_beginAccess();
            v48 = *(a1 + 64);
            if (!(v48 >> 62))
            {
              v61 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:

              if (v61)
              {
                v62 = 0;
                while (1)
                {
                  if ((v48 & 0xC000000000000001) != 0)
                  {
                    v63 = MEMORY[0x1DA6FB460](v62, v48);
                    v64 = v62 + 1;
                    if (__OFADD__(v62, 1))
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if (v62 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_52;
                    }

                    v63 = *(v48 + 8 * v62 + 32);

                    v64 = v62 + 1;
                    if (__OFADD__(v62, 1))
                    {
LABEL_46:
                      __break(1u);
                      goto LABEL_47;
                    }
                  }

                  sub_1D6C97118(v63, v85);

                  if (v3)
                  {
                    break;
                  }

                  ++v62;
                  if (v64 == v61)
                  {
                    goto LABEL_47;
                  }
                }

                sub_1D67084F4(v83, v84, v78, v81, v80, v79);
                v67 = v85;
              }

              else
              {
LABEL_47:

                v65 = v85;
                v66 = v75;
                sub_1D6C9C6A4(v85, v75, type metadata accessor for FormatDerivedDataBindingSlotResult);
                (*(v86 + 56))(v66, 0, 1, v74);
                sub_1D6D6104C(v66, v83, v84);
                v67 = v65;
              }

              sub_1D6C9C70C(v67, type metadata accessor for FormatDerivedDataBindingSlotResult);
              sub_1D6C9C70C(v82, type metadata accessor for FormatCompilingSlotDefinition);
              return;
            }

LABEL_55:
            v61 = sub_1D7263BFC();
            goto LABEL_36;
          }

          sub_1D67084F4(v45, v44, v78, v81, v80, v79);
        }

        sub_1D6C9C6A4(v42, v85, type metadata accessor for FormatSlotDefinition);
        goto LABEL_34;
      }
    }

    else
    {
      sub_1D6007830(v33, v32, v31);
    }

    v53 = type metadata accessor for FormatDerivedDataError(0);
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
    v3 = swift_allocError();
    v55 = v54;
    v56 = *(v34 + 16);
    if (v56)
    {
      v89 = v53;
      v48 = sub_1D5B9A6D8(v56, 0);
      v57 = sub_1D5E2A8BC();
      v58 = v88;

      sub_1D5B87E38(v58);
      if (v57 != v56)
      {
        __break(1u);
        goto LABEL_55;
      }

      v60 = v83;
      v59 = v84;
    }

    else
    {
      v48 = MEMORY[0x1E69E7CC0];
      v60 = v83;
      v59 = v84;
    }

    *v55 = 0;
    v55[1] = 0xE000000000000000;
    v55[2] = v60;
    v55[3] = v59;
    v55[4] = v48;
    goto LABEL_3;
  }

  swift_beginAccess();
  v48 = *(a1 + 64);
  if (v48 >> 62)
  {
    goto LABEL_53;
  }

  v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:

  if (v49)
  {
    v50 = 0;
    while (1)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x1DA6FB460](v50, v48);
        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
LABEL_24:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          v49 = sub_1D7263BFC();
          goto LABEL_14;
        }

        v51 = *(v48 + 8 * v50 + 32);

        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_24;
        }
      }

      sub_1D6C9683C(v51, v87);

      if (!v3)
      {
        ++v50;
        if (v52 != v49)
        {
          continue;
        }
      }

      break;
    }
  }
}

void sub_1D6C97118(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v4 = type metadata accessor for FormatDerivedDataBindingRepeatResult(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v96 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatSlotDefinition(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C9C9F4(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v82 - v13;
  v15 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v88 = *(v15 - 8);
  v89 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FormatDerivedDataBindingSwitchResult(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FormatDerivedDataBindingItemResult(0);
  v26 = MEMORY[0x1EEE9AC00](v23, v24);
  v28 = (&v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = a1;
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v31 = a1 + 16;
  v91 = v29;
  v92 = v30;
  v33 = *(v31 + 16);
  v32 = *(v31 + 24);
  v34 = *(v31 + 32);
  v35 = *(v31 + 40) | (*(v31 + 44) << 32);
  v36 = *(v31 + 44) >> 13;
  if (v36 <= 1)
  {
LABEL_17:
    v94 = v18;
    v96 = v22;
    v85 = v14;
    if (v36)
    {
LABEL_46:
      v86 = v35;
      v87 = v34;
      v58 = v32;
      v93 = v10;
      v59 = *(v88 + 56);
      v22 = v96;
      v84 = *(v19 + 20);
      v60 = v33;
      v61 = v89;
      v59(v96 + v84, 1, 1, v89);
      v83 = *(v19 + 24);
      v59(&v22[v83], 1, 1, v61);
      v62 = v91;
      *v22 = v92;
      *(v22 + 1) = v62;
      v63 = v60;
      v22[16] = v60 & 1;
      v64 = v90;
      swift_beginAccess();
      v65 = *(v64 + 64);
      if (v65 >> 62)
      {
        v66 = sub_1D7263BFC();
      }

      else
      {
        v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v67 = v94;
      sub_1D67084A4(v92, v91, v63, v58, v87, v86);

      v10 = v93;
      if (v66)
      {
        v68 = 0;
        v31 = v65 & 0xC000000000000001;
        LOBYTE(v28) = v65 & 0xF8;
        while (1)
        {
          if (v31)
          {
            v69 = MEMORY[0x1DA6FB460](v68, v65);
            v70 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              goto LABEL_59;
            }
          }

          else
          {
            if (v68 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_76;
            }

            v69 = *(v65 + 8 * v68 + 32);

            v70 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }
          }

          v22 = v101;
          sub_1D6C98774(v69, v96);
          if (v2)
          {
            break;
          }

          ++v68;
          v71 = v70 == v66;
          v10 = v93;
          v67 = v94;
          if (v71)
          {
            goto LABEL_61;
          }
        }

        sub_1D6C9C70C(v96, type metadata accessor for FormatDerivedDataBindingSwitchResult);
      }

      else
      {
LABEL_61:

        v75 = v96;
        v76 = v85;
        sub_1D5CDE454(v96 + v84, v85, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
        if ((*(v88 + 48))(v76, 1, v89) == 1)
        {
          sub_1D6C9C70C(v75, type metadata accessor for FormatDerivedDataBindingSwitchResult);
          sub_1D6C9C930(v76, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
        }

        else
        {
          sub_1D6C9C76C(v76, v67, type metadata accessor for FormatSlotDefinitionItemSet);
          v81 = v95;
          sub_1D6F13C80(v67, v75 + v83, v10);
          sub_1D6C9C70C(v67, type metadata accessor for FormatSlotDefinitionItemSet);
          sub_1D6C9C70C(v75, type metadata accessor for FormatDerivedDataBindingSwitchResult);
          sub_1D6C9C98C(v10, v81, type metadata accessor for FormatSlotDefinition);
        }
      }

      return;
    }

    if ((v33 & 0xC0) == 0x40)
    {
      v45 = v34;
      v86 = v35;
      v93 = v33;
      v94 = v32;
      (*(v88 + 56))(v28 + *(v25 + 20), 1, 1, v89);
      v46 = v91;
      *v28 = v92;
      v28[1] = v46;
      v47 = v90;
      swift_beginAccess();
      v48 = *(v47 + 64);
      if (v48 >> 62)
      {
        v90 = sub_1D7263BFC();
      }

      else
      {
        v90 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v92;
      v10 = v93;
      v22 = v94;
      v50 = v86;
      sub_1D67084A4(v92, v46, v93, v94, v45, v86);
      v87 = v45;
      sub_1D67084A4(v49, v46, v10, v22, v45, v50);

      v51 = v48;
      v31 = v90;
      if (v90)
      {
        v52 = 0;
        v96 = v51 & 0xC000000000000001;
        while (1)
        {
          if (v96)
          {
            v53 = MEMORY[0x1DA6FB460](v52, v51);
            v10 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v52 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_77;
            }

            v53 = *(v51 + 8 * v52 + 32);

            v10 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }
          }

          v22 = v101;
          sub_1D6C97C78(v53, v28);

          if (v2)
          {
            break;
          }

          ++v52;
          if (v10 == v31)
          {
            goto LABEL_65;
          }
        }
      }

      else
      {
LABEL_65:

        sub_1D6A90E90(v28);
      }

      sub_1D67084F4(v92, v91, v93, v94, v87, v86);
      v73 = type metadata accessor for FormatDerivedDataBindingItemResult;
      v74 = v28;
      goto LABEL_73;
    }

    type metadata accessor for FormatDerivedDataError(0);
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
    swift_allocError();
    v78 = v77;
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73EF8B0);
    v79 = *(v31 + 16);
    v99 = *v31;
    v100[0] = v79;
    *(v100 + 14) = *(v31 + 30);
    sub_1D609CE14(&v99);
    v80 = v98;
    *v78 = v97;
    v78[1] = v80;
LABEL_64:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  if (v36 == 2)
  {
LABEL_32:
    type metadata accessor for FormatDerivedDataError(0);
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
    swift_allocError();
    *v54 = 0xD000000000000024;
    v54[1] = 0x80000001D73EF880;
    goto LABEL_64;
  }

  if (v36 == 3)
  {
    v37 = *(v4 + 20);
    v38 = v96;
    v39 = *(v31 + 24);
    v40 = *(v31 + 16);
    v41 = *(v31 + 40) | (*(v31 + 44) << 32);
    v42 = *(v31 + 32);
    (*(v88 + 56))(v96 + v37, 1, 1, v89, v26);
    v31 = v91;
    *v38 = v92;
    *(v38 + 8) = v31;
    LOBYTE(v28) = v40;
    *(v38 + 16) = v40;
    *(v38 + 24) = v39;
    v94 = v39;
    v87 = v42;
    *(v38 + 32) = v42;
    *(v38 + 44) = BYTE4(v41);
    *(v38 + 40) = v41;
    v22 = v41;
    *(v38 + 45) = BYTE5(v41) & 1;
    v43 = v90;
    swift_beginAccess();
    v10 = *(v43 + 64);
    if (v10 >> 62)
    {
      goto LABEL_78;
    }

    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  v55 = v90;
  swift_beginAccess();
  v10 = *(v55 + 64);
  if (v10 >> 62)
  {
    v56 = sub_1D7263BFC();
  }

  else
  {
    v56 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v56)
  {
LABEL_69:

    return;
  }

  v57 = 0;
  LOBYTE(v28) = v10 & 0xF8;
  while ((v10 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1DA6FB460](v57, v10);
    v31 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_40:
    v22 = v101;
    sub_1D6C97118(v19, v95);
    if (v2)
    {

      goto LABEL_69;
    }

    ++v57;
    if (v31 == v56)
    {
      goto LABEL_69;
    }
  }

  if (v57 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v10 + 8 * v57 + 32);

    v31 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  v19 = sub_1D7263BFC();
LABEL_6:
  sub_1D67084A4(v92, v31, v28, v94, v87, v22);

  if (v19)
  {
    v18 = 0;
    v28 = (v10 & 0xC000000000000001);
    v31 = v10 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v28)
      {
        v25 = MEMORY[0x1DA6FB460](v18, v10);
        v44 = v25;
        v14 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v18 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_75;
        }

        v44 = *(v10 + 8 * v18 + 32);

        v14 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
          goto LABEL_16;
        }
      }

      v22 = v101;
      sub_1D6C98BF4(v44, v96);
      if (v2)
      {
        sub_1D6C9C70C(v96, type metadata accessor for FormatDerivedDataBindingRepeatResult);

        return;
      }

      ++v18;
    }

    while (v14 != v19);
  }

LABEL_60:

  v72 = v96;
  sub_1D6A9106C();
  v73 = type metadata accessor for FormatDerivedDataBindingRepeatResult;
  v74 = v72;
LABEL_73:
  sub_1D6C9C70C(v74, v73);
}

void sub_1D6C97C78(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v4 = type metadata accessor for FormatDerivedDataBindingRepeatResult(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v80 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for FormatDerivedDataBindingSwitchResult(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C9C9F4(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v78 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v72 - v16;
  v18 = type metadata accessor for FormatDerivedDataBindingAuxiliaryResult(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = (a1 + 16);
  v26 = *(a1 + 32);
  v25 = *(a1 + 40);
  v27 = *(a1 + 48);
  v28 = *(a1 + 56) | (*(a1 + 60) << 32);
  v29 = *(a1 + 60) >> 13;
  if (v29 > 1)
  {
    if (v29 != 2)
    {
      if (v29 == 3)
      {
        v30 = *(v4 + 20);
        v31 = *(a1 + 16);
        v32 = *(a1 + 40);
        v75 = *(a1 + 56) | (*(a1 + 60) << 32);
        v33 = v26;
        v34 = v27;
        v35 = type metadata accessor for FormatSlotDefinitionItemSet(0);
        v72 = *(v35 - 8);
        v36 = *(v72 + 56);
        v37 = v80;
        v73 = v35;
        v36(v80 + v30, 1, 1);
        v79 = v31;
        *v37 = v31;
        v37[1] = v23;
        v17 = v23;
        v74 = v33;
        v37[2] = v33;
        v37[3] = v32;
        v28 = v75;
        v76 = v34;
        v77 = v32;
        v37[4] = v34;
        *(v37 + 44) = BYTE4(v28);
        *(v37 + 10) = v28;
        *(v37 + 45) = BYTE5(v28) & 1;
        swift_beginAccess();
        v23 = *(a1 + 64);
        if (v23 >> 62)
        {
          goto LABEL_83;
        }

        v38 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      swift_beginAccess();
      v49 = *(a1 + 64);
      if (v49 >> 62)
      {
        v28 = sub_1D7263BFC();
      }

      else
      {
        v28 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v28)
      {
LABEL_68:

        return;
      }

      v7 = 0;
      v23 = v49 & 0xC000000000000001;
      v10 = (v49 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v23)
        {
          v17 = MEMORY[0x1DA6FB460](v7, v49);
          v50 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        else
        {
          if (v7 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            v38 = sub_1D7263BFC();
LABEL_6:
            sub_1D67084A4(v79, v17, v74, v77, v76, v28);

            if (v38)
            {
              v28 = 0;
              v24 = (v23 & 0xC000000000000001);
              v17 = v23 & 0xFFFFFFFFFFFFFF8;
              do
              {
                if (v24)
                {
                  v7 = MEMORY[0x1DA6FB460](v28, v23);
                  v10 = (v28 + 1);
                  if (__OFADD__(v28, 1))
                  {
LABEL_16:
                    __break(1u);
                    goto LABEL_17;
                  }
                }

                else
                {
                  if (v28 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_80;
                  }

                  v7 = *(v23 + 8 * v28 + 32);

                  v10 = (v28 + 1);
                  if (__OFADD__(v28, 1))
                  {
                    goto LABEL_16;
                  }
                }

                a1 = v85;
                sub_1D6C98BF4(v7, v80);
                if (v2)
                {
                  v64 = type metadata accessor for FormatDerivedDataBindingRepeatResult;
                  goto LABEL_70;
                }

                ++v28;
              }

              while (v10 != v38);
            }

LABEL_62:

            v61 = v78;
            v62 = v80;
            sub_1D70A54E4(v78);
            if (!v2)
            {
              if ((*(v72 + 48))(v61, 1, v73) == 1)
              {
                sub_1D6C9C70C(v62, type metadata accessor for FormatDerivedDataBindingRepeatResult);
                sub_1D6C9C930(v61, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
                return;
              }

              sub_1D6C9C930(v61, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
              type metadata accessor for FormatDerivedDataError(0);
              sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
              swift_allocError();
              *v69 = 6;
              *(v69 + 8) = 0xD00000000000002FLL;
              *(v69 + 16) = 0x80000001D73EF910;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
            }

            v63 = type metadata accessor for FormatDerivedDataBindingRepeatResult;
LABEL_75:
            v70 = v63;
            v71 = v62;
LABEL_76:
            sub_1D6C9C70C(v71, v70);
            return;
          }

          v17 = *(v49 + 8 * v7 + 32);

          v50 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_48;
          }
        }

        a1 = v85;
        sub_1D6C97C78(v17, v79);
        if (v2)
        {

          goto LABEL_68;
        }

        ++v7;
        if (v50 == v28)
        {
          goto LABEL_68;
        }
      }
    }

LABEL_35:
    type metadata accessor for FormatDerivedDataError(0);
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
    swift_allocError();
    v46 = v45;
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000029, 0x80000001D73EF8E0);
    v47 = v24[1];
    v83 = *v24;
    v84[0] = v47;
    *(v84 + 14) = *(v24 + 30);
    sub_1D609CE14(&v83);
    v48 = v82;
    *v46 = v81;
    v46[1] = v48;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

LABEL_17:
  v75 = v17;
  if (v29)
  {
LABEL_49:
    v75 = v28;
    v76 = v27;
    v51 = *(v7 + 20);
    v77 = v25;
    v78 = v51;
    v52 = v22;
    v53 = v26;
    v54 = type metadata accessor for FormatSlotDefinitionItemSet(0);
    v55 = *(v54 - 8);
    v80 = v10;
    v56 = *(v55 + 56);
    v56(v80 + v78, 1, 1, v54);
    v56(v80 + *(v7 + 24), 1, 1, v54);
    v57 = v80;
    v58 = v52;
    *v80 = v52;
    v57[1] = v23;
    v17 = v23;
    *(v57 + 16) = v53 & 1;
    swift_beginAccess();
    v23 = *(a1 + 64);
    if (v23 >> 62)
    {
      v59 = sub_1D7263BFC();
    }

    else
    {
      v59 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1D67084A4(v58, v17, v53, v77, v76, v75);

    if (!v59)
    {
LABEL_65:

      v62 = v80;
      sub_1D607446C(v80);
      v63 = type metadata accessor for FormatDerivedDataBindingSwitchResult;
      goto LABEL_75;
    }

    v28 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x1DA6FB460](v28, v23);
        v17 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v28 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v60 = *(v23 + 8 * v28 + 32);

        v17 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }
      }

      a1 = v85;
      sub_1D6C98774(v60, v80);
      if (v2)
      {
        break;
      }

      ++v28;
      if (v17 == v59)
      {
        goto LABEL_65;
      }
    }

    v64 = type metadata accessor for FormatDerivedDataBindingSwitchResult;
LABEL_70:
    sub_1D6C9C70C(v80, v64);

    return;
  }

  if ((v26 & 0xC0) != 0x80 || v22 != 4 || v23 || v26 != 128)
  {
    goto LABEL_35;
  }

  v39 = v27;
  v74 = v26;
  v77 = v25;
  v40 = v21;
  v41 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v42 = *(*(v41 - 8) + 56);
  v80 = v40;
  v42(v40, 1, 1, v41);
  swift_beginAccess();
  v23 = *(a1 + 64);
  if (v23 >> 62)
  {
    a1 = sub_1D7263BFC();
  }

  else
  {
    a1 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v39;
  sub_1D67084A4(4, 0, v74, v77, v39, v28);

  if (a1)
  {
    v17 = 0;
    v78 = v23 & 0xC000000000000001;
    v24 = (v23 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v78)
      {
        v43 = MEMORY[0x1DA6FB460](v17, v23);
        v44 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v17 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v43 = *(v23 + 8 * v17 + 32);

        v44 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      sub_1D6C999C8(v43, v80);

      if (v2)
      {
        break;
      }

      ++v17;
      if (v44 == a1)
      {
        goto LABEL_71;
      }
    }

    sub_1D67084F4(4, 0, v74, v77, v76, v28);
    v70 = type metadata accessor for FormatDerivedDataBindingAuxiliaryResult;
    v71 = v80;
    goto LABEL_76;
  }

LABEL_71:

  v65 = *(type metadata accessor for FormatDerivedDataBindingItemResult(0) + 20);
  v66 = v79;
  v67 = v80;
  v68 = v75;
  sub_1D6C956D4(v79 + v65, v80, v75);
  sub_1D67084F4(4, 0, v74, v77, v76, v28);
  sub_1D6C9C70C(v67, type metadata accessor for FormatDerivedDataBindingAuxiliaryResult);
  if (!v2)
  {
    sub_1D60749B4(v68, v66 + v65);
  }
}

void sub_1D6C98774(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v5 = type metadata accessor for FormatDerivedDataBindingSwitchCaseResult(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + 16);
  v10 = *(a1 + 16);
  v12 = *(a1 + 60);
  v13 = v12 >> 13;
  if (v12 >> 13 > 2)
  {
LABEL_16:
    if (v13 != 3)
    {
      swift_beginAccess();
      v9 = *(a1 + 64);
      if (v9 >> 62)
      {
        v28 = sub_1D7263BFC();
      }

      else
      {
        v28 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v28)
      {
        v10 = 0;
        v22 = v9 & 0xC000000000000001;
        v20 = v9 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v22)
          {
            v29 = MEMORY[0x1DA6FB460](v10, v9);
            v3 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v29 = *(v9 + 8 * v10 + 32);

            v3 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_30:
              __break(1u);
              break;
            }
          }

          sub_1D6C98774(v29, v41);

          if (!v2)
          {
            ++v10;
            if (v3 != v28)
            {
              continue;
            }
          }

          break;
        }
      }

      return;
    }

LABEL_17:
    type metadata accessor for FormatDerivedDataError(0);
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
    swift_allocError();
    v25 = v24;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000002FLL, 0x80000001D73EF940);
    v26 = v11[1];
    v39 = *v11;
    v40[0] = v26;
    *(v40 + 14) = *(v11 + 30);
    sub_1D609CE14(&v39);
    v27 = v38;
    *v25 = v37;
    v25[1] = v27;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  if (v13 < 2)
  {
    goto LABEL_17;
  }

  v14 = *(a1 + 32);
  v32 = *(a1 + 24);
  v33 = v14;
  v15 = *(a1 + 40);
  v35 = *(a1 + 48);
  v36 = v15;
  v34 = *(a1 + 56) | (v12 << 32);
  v16 = *(v7 + 20);
  v31 = v7;
  v17 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = v9 + v16;
  v20 = v32;
  v18(v19, 1, 1, v17);
  v18(v9 + *(v31 + 24), 1, 1, v17);
  v3 = v33;
  *v9 = v10;
  *(v9 + 8) = v20 & 1;
  *(v9 + 9) = BYTE1(v20) & 1;
  v21 = v36;
  *(v9 + 16) = v3;
  *(v9 + 24) = v21;
  swift_beginAccess();
  v22 = *(a1 + 64);
  if (v22 >> 62)
  {
    goto LABEL_36;
  }

  a1 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  sub_1D67084A4(v10, v20, v3, v36, v35, v34);

  if (a1)
  {
    v10 = 0;
    v36 = v22 & 0xC000000000000001;
    v20 = v22 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v36)
      {
        v3 = v22;
        v23 = MEMORY[0x1DA6FB460](v10, v22);
        v11 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      else
      {
        if (v10 >= *(v20 + 16))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          a1 = sub_1D7263BFC();
          goto LABEL_5;
        }

        v3 = v22;
        v23 = *(v22 + 8 * v10 + 32);

        v11 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1D6C9A614(v23, v9);
      if (v2)
      {
        sub_1D6C9C70C(v9, type metadata accessor for FormatDerivedDataBindingSwitchCaseResult);

        return;
      }

      ++v10;
      v22 = v3;
    }

    while (v11 != a1);
  }

  sub_1D69D9FA4(v9);
  sub_1D6C9C70C(v9, type metadata accessor for FormatDerivedDataBindingSwitchCaseResult);
}

void sub_1D6C98BF4(char *a1, uint64_t a2)
{
  v111 = a2;
  v108 = type metadata accessor for FormatDerivedDataBindingRepeatResult(0);
  MEMORY[0x1EEE9AC00](v108, v4);
  v112 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatDerivedDataBindingSwitchResult(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C9C9F4(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v106 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v107 = &v98 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v105 = &v98 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v98 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v98 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v98 - v29;
  v31 = type metadata accessor for FormatDerivedDataBindingItemResult(0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v35 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a1;
  v36 = *(a1 + 2);
  v37 = *(a1 + 3);
  v38 = a1 + 16;
  v110 = v36;
  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  v41 = *(v38 + 4);
  v42 = *(v38 + 10) | (*(v38 + 22) << 32);
  v43 = *(v38 + 22) >> 13;
  if (v43 <= 1)
  {
LABEL_17:
    v104 = v22;
    v112 = v9;
    v102 = v26;
    v103 = v30;
    if (v43)
    {
LABEL_45:
      v105 = v39;
      v106 = v41;
      v107 = v42;
      v70 = *(v6 + 20);
      v71 = v37;
      v72 = type metadata accessor for FormatSlotDefinitionItemSet(0);
      v73 = v40;
      v40 = *(*(v72 - 8) + 56);
      v74 = v112;
      v103 = v70;
      (v40)(v112 + v70, 1, 1, v72);
      (v40)(v74 + *(v6 + 24), 1, 1, v72);
      *v74 = v110;
      v74[1] = v71;
      *(v74 + 16) = v73 & 1;
      v9 = v109;
      swift_beginAccess();
      v42 = *(v9 + 8);
      if (v42 >> 62)
      {
        v6 = sub_1D7263BFC();
      }

      else
      {
        v6 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1D67084A4(v110, v71, v73, v105, v106, v107);

      if (v6)
      {
        v22 = 0;
        v30 = (v42 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v75 = MEMORY[0x1DA6FB460](v22, v42);
            v40 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_57;
            }
          }

          else
          {
            if (v22 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_74;
            }

            v75 = *(v42 + 8 * v22 + 32);

            v40 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
LABEL_57:
              __break(1u);
              goto LABEL_58;
            }
          }

          v9 = v117;
          sub_1D6C98774(v75, v112);
          if (v2)
          {
            break;
          }

          ++v22;
          if (v40 == v6)
          {
            goto LABEL_61;
          }
        }

        sub_1D6C9C70C(v112, type metadata accessor for FormatDerivedDataBindingSwitchResult);
      }

      else
      {
LABEL_61:

        v81 = *(v108 + 20);
        v82 = v111;
        v83 = v112;
        v84 = v104;
        sub_1D6C956D4(v111 + v81, &v103[v112], v104);
        sub_1D6C9C70C(v83, type metadata accessor for FormatDerivedDataBindingSwitchResult);
        if (!v2)
        {
          sub_1D60749B4(v84, v82 + v81);
        }
      }

      return;
    }

    if ((v40 & 0xC0) == 0x40)
    {
      v101 = v40;
      v105 = v39;
      v106 = v41;
      v107 = v42;
      v50 = *(v33 + 20);
      v51 = v35;
      v52 = v37;
      v53 = type metadata accessor for FormatSlotDefinitionItemSet(0);
      v54 = *(v53 - 8);
      v55 = *(v54 + 56);
      v56 = v54 + 56;
      v55(&v51[v50], 1, 1, v53);
      *v51 = v110;
      *(v51 + 1) = v52;
      v112 = v51;
      v57 = v52;
      v58 = v109;
      swift_beginAccess();
      v42 = *(v58 + 8);
      v100 = v53;
      v99 = v55;
      v98 = v56;
      if (v42 >> 62)
      {
        v9 = sub_1D7263BFC();
      }

      else
      {
        v9 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = v101;
      v59 = v110;
      v60 = v105;
      v61 = v106;
      v62 = v107;
      sub_1D67084A4(v110, v57, v101, v105, v106, v107);
      v104 = v57;
      sub_1D67084A4(v59, v57, v30, v60, v61, v62);

      if (v9)
      {
        v6 = 0;
        v40 = v42 & 0xC000000000000001;
        LOBYTE(v22) = v42 & 0xF8;
        do
        {
          if (v40)
          {
            v63 = MEMORY[0x1DA6FB460](v6, v42);
          }

          else
          {
            if (v6 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_76;
            }

            v63 = *(v42 + 8 * v6 + 32);
          }

          v64 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            goto LABEL_75;
          }

          v30 = v9;
          sub_1D6C97C78(v63, v112);
          if (v2)
          {

            sub_1D67084F4(v110, v104, v101, v105, v106, v107);
            v80 = type metadata accessor for FormatDerivedDataBindingItemResult;
            goto LABEL_70;
          }

          ++v6;
        }

        while (v64 != v9);
      }

      v85 = *(v108 + 20);
      sub_1D5B49760(0, &qword_1EDF198D8, &type metadata for FormatItemKind, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v87 = v112;
      v88 = *v112;
      v89 = *(v112 + 8);
      *(inited + 32) = *v112;
      *(inited + 40) = v89;
      sub_1D5CBA110(v88, v89);
      v90 = sub_1D5E2755C(inited);
      swift_setDeallocating();
      sub_1D6875B30(inited + 32);
      v91 = v100;
      v92 = *(v100 + 36);
      v93 = sub_1D725B76C();
      v94 = v102;
      (*(*(v93 - 8) + 56))(&v102[v92], 1, 1, v93);
      *(v94 + 24) = 0u;
      *v94 = 0x100000001;
      v95 = MEMORY[0x1E69E7CC0];
      *(v94 + 8) = v90;
      *(v94 + 16) = v95;
      sub_1D5CDE22C(0, 0);
      *(v94 + 24) = 0;
      *(v94 + 32) = 0;
      v99(v94, 0, 1, v91);
      v96 = v111;
      v97 = v103;
      sub_1D6C956D4(v111 + v85, v94, v103);
      sub_1D67084F4(v110, v104, v101, v105, v106, v107);
      sub_1D6C9C70C(v87, type metadata accessor for FormatDerivedDataBindingItemResult);
      sub_1D6C9C930(v94, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
      if (!v2)
      {
        sub_1D60749B4(v97, v96 + v85);
      }

      return;
    }

LABEL_31:
    type metadata accessor for FormatDerivedDataError(0);
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
    swift_allocError();
    v66 = v65;
    v113 = 0;
    v114 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000002FLL, 0x80000001D73EF940);
    v67 = *(v38 + 1);
    v115 = *v38;
    v116[0] = v67;
    *(v116 + 14) = *(v38 + 30);
    sub_1D609CE14(&v115);
    v68 = v114;
    *v66 = v113;
    v66[1] = v68;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  if (v43 == 2)
  {
    goto LABEL_31;
  }

  if (v43 == 3)
  {
    v44 = *(v38 + 2);
    v22 = *(v108 + 20);
    v45 = *(v38 + 4);
    v46 = v39;
    v47 = v37;
    v48 = type metadata accessor for FormatSlotDefinitionItemSet(0);
    v49 = v112;
    (*(*(v48 - 8) + 56))(v112 + v22, 1, 1, v48);
    *v49 = v110;
    v49[1] = v47;
    v104 = v47;
    LOBYTE(v22) = v44;
    v49[2] = v44;
    v49[3] = v46;
    v30 = v46;
    v6 = v45;
    v49[4] = v45;
    *(v49 + 44) = BYTE4(v42);
    *(v49 + 10) = v42;
    *(v49 + 45) = BYTE5(v42) & 1;
    v9 = v109;
    swift_beginAccess();
    v40 = *(v9 + 8);
    if (v40 >> 62)
    {
      goto LABEL_77;
    }

    v26 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  v9 = v109;
  swift_beginAccess();
  v40 = *(v9 + 8);
  if (v40 >> 62)
  {
    v42 = sub_1D7263BFC();
  }

  else
  {
    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v42)
  {
LABEL_67:

    return;
  }

  v22 = 0;
  v6 = v40 & 0xC000000000000001;
  while (v6)
  {
    v69 = MEMORY[0x1DA6FB460](v22, v40);
    v30 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_39:
    v9 = v117;
    sub_1D6C98BF4(v69, v111);
    if (v2)
    {

      goto LABEL_67;
    }

    ++v22;
    if (v30 == v42)
    {
      goto LABEL_67;
    }
  }

  if (v22 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v69 = *(v40 + 8 * v22 + 32);

    v30 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  v26 = sub_1D7263BFC();
LABEL_6:
  sub_1D67084A4(v110, v104, v22, v30, v6, v42);

  if (v26)
  {
    v22 = 0;
    v38 = (v40 & 0xC000000000000001);
    v30 = (v40 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (v38)
      {
        v33 = MEMORY[0x1DA6FB460](v22, v40);
        v6 = v33;
        v42 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v22 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_73;
        }

        v6 = *(v40 + 8 * v22 + 32);

        v42 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_16;
        }
      }

      v9 = v117;
      sub_1D6C98BF4(v6, v112);
      if (v2)
      {
        sub_1D6C9C70C(v112, type metadata accessor for FormatDerivedDataBindingRepeatResult);

        return;
      }

      ++v22;
    }

    while (v42 != v26);
  }

LABEL_58:

  v76 = *(v108 + 20);
  v77 = v107;
  sub_1D5CDE454(v111 + v76, v107, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  v78 = v106;
  sub_1D70A54E4(v106);
  if (v2)
  {
    sub_1D6C9C930(v77, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    v80 = type metadata accessor for FormatDerivedDataBindingRepeatResult;
LABEL_70:
    sub_1D6C9C70C(v112, v80);
  }

  else
  {
    v79 = v105;
    sub_1D6C956D4(v77, v78, v105);
    sub_1D6C9C930(v78, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    sub_1D6C9C930(v77, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    sub_1D6C9C70C(v112, type metadata accessor for FormatDerivedDataBindingRepeatResult);
    sub_1D60749B4(v79, v111 + v76);
  }
}

void sub_1D6C999C8(char *a1, uint64_t a2)
{
  v94 = a2;
  v4 = type metadata accessor for FormatDerivedDataBindingRepeatResult(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v95 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C9C9F4(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v89 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v93 = &v83 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v88 = &v83 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v83 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v83 - v22);
  v24 = type metadata accessor for FormatDerivedDataBindingSwitchResult(0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for FormatDerivedDataBindingItemResult(0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v32 = (&v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = a1;
  v34 = *(a1 + 2);
  v33 = *(a1 + 3);
  v35 = (a1 + 16);
  v91 = v33;
  v92 = v34;
  v36 = *(v35 + 16);
  v37 = *(v35 + 24);
  v38 = *(v35 + 32);
  v39 = *(v35 + 40) | (*(v35 + 44) << 32);
  v40 = *(v35 + 44) >> 13;
  if (v40 <= 1)
  {
LABEL_17:
    v93 = v23;
    v87 = v19;
    v95 = v27;
    if (v40)
    {
LABEL_46:
      v88 = v37;
      v89 = v38;
      v63 = *(v24 + 20);
      v64 = v36;
      v65 = type metadata accessor for FormatSlotDefinitionItemSet(0);
      v85 = *(v65 - 8);
      v66 = *(v85 + 56);
      v67 = v95;
      v83 = v63;
      v66(v95 + v63, 1, 1, v65);
      v84 = *(v24 + 24);
      v86 = v65;
      v66(v67 + v84, 1, 1, v65);
      v68 = v91;
      *v67 = v92;
      *(v67 + 8) = v68;
      v69 = v64;
      *(v67 + 16) = v64 & 1;
      v19 = v90;
      swift_beginAccess();
      v35 = *(v19 + 8);
      if (v35 >> 62)
      {
        v70 = sub_1D7263BFC();
      }

      else
      {
        v70 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = v93;
      sub_1D67084A4(v92, v91, v69, v88, v89, v39);

      if (v70)
      {
        v71 = 0;
        v4 = v35 & 0xC000000000000001;
        while (1)
        {
          if (v4)
          {
            v72 = MEMORY[0x1DA6FB460](v71, v35);
            v39 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              goto LABEL_58;
            }
          }

          else
          {
            if (v71 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_77;
            }

            v72 = *(v35 + 8 * v71 + 32);

            v39 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }
          }

          v19 = v100;
          sub_1D6C98774(v72, v95);
          if (v2)
          {
            break;
          }

          ++v71;
          v24 = v93;
          if (v39 == v70)
          {
            goto LABEL_62;
          }
        }

        sub_1D6C9C70C(v95, type metadata accessor for FormatDerivedDataBindingSwitchResult);
      }

      else
      {
LABEL_62:

        v79 = v95;
        sub_1D5CDE454(v95 + v84, v24, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
        v80 = (*(v85 + 48))(v24, 1, v86);
        sub_1D6C9C930(v24, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
        if (v80 != 1)
        {
          type metadata accessor for FormatDerivedDataError(0);
          sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v77 = type metadata accessor for FormatDerivedDataBindingSwitchResult;
          v78 = v79;
          goto LABEL_73;
        }

        v81 = v87;
        v82 = v94;
        sub_1D6C956D4(v94, v79 + v83, v87);
        sub_1D6C9C70C(v79, type metadata accessor for FormatDerivedDataBindingSwitchResult);
        if (!v2)
        {
          sub_1D60749B4(v81, v82);
        }
      }

      return;
    }

    if ((v36 & 0xC0) == 0x40)
    {
      v48 = v37;
      v87 = v36;
      v89 = v38;
      v49 = *(v30 + 20);
      v50 = type metadata accessor for FormatSlotDefinitionItemSet(0);
      (*(*(v50 - 8) + 56))(v32 + v49, 1, 1, v50);
      v51 = v91;
      *v32 = v92;
      v32[1] = v51;
      v52 = v90;
      swift_beginAccess();
      v35 = *(v52 + 8);
      if (v35 >> 62)
      {
        v19 = sub_1D7263BFC();
      }

      else
      {
        v19 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v53 = v91;
      v24 = v87;
      v54 = v89;
      sub_1D67084A4(v92, v91, v87, v48, v89, v39);
      v88 = v48;
      v93 = v39;
      sub_1D67084A4(v92, v53, v24, v48, v54, v39);

      if (v19)
      {
        v39 = 0;
        v95 = v35 & 0xC000000000000001;
        v4 = v35 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v95)
          {
            v24 = MEMORY[0x1DA6FB460](v39, v35);
            v55 = (v39 + 1);
            if (__OFADD__(v39, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v39 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_78;
            }

            v24 = *(v35 + 8 * v39 + 32);

            v55 = (v39 + 1);
            if (__OFADD__(v39, 1))
            {
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }
          }

          sub_1D6C97C78(v24, v32);

          if (v2)
          {
            break;
          }

          ++v39;
          if (v55 == v19)
          {
            goto LABEL_65;
          }
        }
      }

      else
      {
LABEL_65:

        sub_1D68757D0(v32);
      }

      sub_1D67084F4(v92, v91, v87, v88, v89, v93);
      v77 = type metadata accessor for FormatDerivedDataBindingItemResult;
      v78 = v32;
      goto LABEL_73;
    }

LABEL_32:
    type metadata accessor for FormatDerivedDataError(0);
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
    swift_allocError();
    v57 = v56;
    v96 = 0;
    v97 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000002FLL, 0x80000001D73EF940);
    v58 = *(v35 + 16);
    v98 = *v35;
    v99[0] = v58;
    *(v99 + 14) = *(v35 + 30);
    sub_1D609CE14(&v98);
    v59 = v97;
    *v57 = v96;
    v57[1] = v59;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  if (v40 == 2)
  {
    goto LABEL_32;
  }

  if (v40 == 3)
  {
    v41 = *(v4 + 20);
    v42 = v38;
    v43 = v36;
    v44 = v37;
    v45 = type metadata accessor for FormatSlotDefinitionItemSet(0);
    v46 = v95;
    (*(*(v45 - 8) + 56))(v95 + v41, 1, 1, v45);
    v47 = v91;
    *v46 = v92;
    *(v46 + 8) = v47;
    v87 = v43;
    *(v46 + 16) = v43;
    *(v46 + 24) = v44;
    v4 = v44;
    v24 = v42;
    *(v46 + 32) = v42;
    *(v46 + 44) = BYTE4(v39);
    *(v46 + 40) = v39;
    *(v46 + 45) = BYTE5(v39) & 1;
    v19 = v90;
    swift_beginAccess();
    v35 = *(v19 + 8);
    if (v35 >> 62)
    {
      goto LABEL_79;
    }

    v32 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  v19 = v90;
  swift_beginAccess();
  v35 = *(v19 + 8);
  if (v35 >> 62)
  {
    v60 = sub_1D7263BFC();
  }

  else
  {
    v60 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v60)
  {
LABEL_69:

    return;
  }

  v61 = 0;
  v39 = v35 & 0xC000000000000001;
  v24 = v35 & 0xFFFFFFFFFFFFFF8;
  while (v39)
  {
    v62 = MEMORY[0x1DA6FB460](v61, v35);
    v4 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_40:
    v19 = v100;
    sub_1D6C999C8(v62, v94);
    if (v2)
    {

      goto LABEL_69;
    }

    ++v61;
    if (v4 == v60)
    {
      goto LABEL_69;
    }
  }

  if (v61 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v62 = *(v35 + 8 * v61 + 32);

    v4 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  v32 = sub_1D7263BFC();
LABEL_6:
  sub_1D67084A4(v92, v91, v87, v4, v24, v39);

  if (v32)
  {
    v27 = 0;
    v24 = v35 & 0xC000000000000001;
    v4 = v35 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v24)
      {
        v30 = MEMORY[0x1DA6FB460](v27, v35);
        v39 = v30;
        v23 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v27 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_76;
        }

        v39 = *(v35 + 8 * v27 + 32);

        v23 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
          goto LABEL_16;
        }
      }

      v19 = v100;
      sub_1D6C98BF4(v39, v95);
      if (v2)
      {
        sub_1D6C9C70C(v95, type metadata accessor for FormatDerivedDataBindingRepeatResult);

        return;
      }

      ++v27;
    }

    while (v23 != v32);
  }

LABEL_59:

  v74 = v93;
  v73 = v94;
  sub_1D5CDE454(v94, v93, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  v75 = v89;
  sub_1D70A54E4(v89);
  if (!v2)
  {
    v76 = v88;
    sub_1D6C956D4(v74, v75, v88);
    sub_1D6C9C930(v75, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    sub_1D6C9C930(v74, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    sub_1D6C9C70C(v95, type metadata accessor for FormatDerivedDataBindingRepeatResult);
    sub_1D60749B4(v76, v73);
    return;
  }

  sub_1D6C9C930(v74, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  v77 = type metadata accessor for FormatDerivedDataBindingRepeatResult;
  v78 = v95;
LABEL_73:
  sub_1D6C9C70C(v78, v77);
}

void sub_1D6C9A614(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatDerivedDataBindingRepeatResult(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatDerivedDataBindingSwitchResult(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v108 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatDerivedDataBindingAuxiliaryResult(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C9C9F4(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v103 = v95 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v105 = v95 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v104 = v95 - v28;
  v29 = type metadata accessor for FormatDerivedDataBindingItemResult(0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v33 = (v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a2 + 9) != 1)
  {
LABEL_18:
    type metadata accessor for FormatDerivedDataError(0);
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
    swift_allocError();
    *v51 = 5;
    *(v51 + 8) = 0xD00000000000007ALL;
    *(v51 + 16) = 0x80000001D73DC7E0;
LABEL_39:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v107 = a2;
  v34 = *(a1 + 16);
  v35 = a1 + 16;
  v106 = *(a1 + 24);
  v37 = *(a1 + 32);
  v36 = *(a1 + 40);
  v38 = *(a1 + 48);
  v39 = *(a1 + 56) | (*(a1 + 60) << 32);
  v40 = *(a1 + 60) >> 13;
  if (v40 > 1)
  {
    if (v40 != 2)
    {
      if (v40 == 3)
      {
        v41 = *(v5 + 20);
        v42 = *(a1 + 56) | (*(a1 + 60) << 32);
        v43 = *(a1 + 48);
        v44 = *(a1 + 40);
        v45 = *(a1 + 32);
        v9 = v34;
        v46 = type metadata accessor for FormatSlotDefinitionItemSet(0);
        (*(*(v46 - 8) + 56))(v8 + v41, 1, 1, v46);
        v99 = v9;
        v47 = v106;
        *v8 = v9;
        *(v8 + 8) = v47;
        LOBYTE(v9) = v45;
        *(v8 + 16) = v45;
        *(v8 + 24) = v44;
        v19 = v44;
        v5 = v43;
        *(v8 + 32) = v43;
        *(v8 + 44) = BYTE4(v42);
        *(v8 + 40) = v42;
        v48 = v42;
        *(v8 + 45) = BYTE5(v42) & 1;
        swift_beginAccess();
        v15 = *(a1 + 64);
        if (v15 >> 62)
        {
          goto LABEL_100;
        }

        v49 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
        sub_1D67084A4(v99, v106, v9, v19, v5, v48);

        if (v49)
        {
          v50 = 0;
          v108 = v15 & 0xC000000000000001;
          LOBYTE(v9) = v15 & 0xF8;
          do
          {
            if (v108)
            {
              v5 = MEMORY[0x1DA6FB460](v50, v15);
              v48 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
LABEL_17:
                __break(1u);
                goto LABEL_18;
              }
            }

            else
            {
              if (v50 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_95:
                __break(1u);
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
LABEL_98:
                __break(1u);
LABEL_99:
                __break(1u);
LABEL_100:
                v49 = sub_1D7263BFC();
                goto LABEL_7;
              }

              v5 = *(v15 + 8 * v50 + 32);

              v48 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
                goto LABEL_17;
              }
            }

            v19 = v15;
            sub_1D6C98BF4(v5, v8);
            if (v2)
            {
              sub_1D6C9C70C(v8, type metadata accessor for FormatDerivedDataBindingRepeatResult);
              goto LABEL_86;
            }

            ++v50;
          }

          while (v48 != v49);
        }

LABEL_67:

        sub_1D693FA48();
        v65 = type metadata accessor for FormatDerivedDataBindingRepeatResult;
        goto LABEL_69;
      }

      swift_beginAccess();
      v8 = *(a1 + 64);
      if (v8 >> 62)
      {
        v15 = sub_1D7263BFC();
      }

      else
      {
        v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v15)
      {
        v48 = 0;
        v5 = v8 & 0xC000000000000001;
        v19 = (v8 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v5)
          {
            v58 = MEMORY[0x1DA6FB460](v48, v8);
            v9 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_53;
            }
          }

          else
          {
            if (v48 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_95;
            }

            v58 = *(v8 + 8 * v48 + 32);

            v9 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }
          }

          a1 = v113;
          sub_1D6C9A614(v58, v107);
          if (v2)
          {
            break;
          }

          ++v48;
          if (v9 == v15)
          {
            goto LABEL_84;
          }
        }
      }

LABEL_84:

      return;
    }

    goto LABEL_38;
  }

  if (!v40)
  {
    v52 = v37 >> 6;
    if (v52 == 1)
    {
      v98 = *(a1 + 32);
      v100 = v36;
      v101 = v38;
      v102 = v39;
      v66 = *(v31 + 20);
      v67 = v34;
      v68 = v33;
      v69 = type metadata accessor for FormatSlotDefinitionItemSet(0);
      v70 = *(v69 - 8);
      v71 = *(v70 + 56);
      v95[0] = v66;
      v97 = v69;
      v96 = v71;
      v95[1] = v70 + 56;
      (v71)(v68 + v66, 1, 1);
      v99 = v67;
      v72 = v106;
      v108 = v68;
      *v68 = v67;
      v68[1] = v72;
      swift_beginAccess();
      v15 = *(a1 + 64);
      if (v15 >> 62)
      {
        v48 = sub_1D7263BFC();
      }

      else
      {
        v48 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v73 = v99;
      v19 = v106;
      v74 = v98;
      v75 = v100;
      v8 = v101;
      v76 = v102;
      sub_1D67084A4(v99, v106, v98, v100, v101, v102);
      sub_1D67084A4(v73, v19, v74, v75, v8, v76);

      if (v48)
      {
        v5 = 0;
        LOBYTE(v9) = v15 & 0xF8;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1DA6FB460](v5, v15);
          }

          else
          {
            if (v5 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_98;
            }

            v19 = *(v15 + 8 * v5 + 32);
          }

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_97;
          }

          sub_1D6C97C78(v19, v108);
          if (v2)
          {
            break;
          }

          ++v5;
          if (v8 == v48)
          {
            goto LABEL_87;
          }
        }

        sub_1D67084F4(v99, v106, v98, v100, v101, v102);
        sub_1D6C9C70C(v108, type metadata accessor for FormatDerivedDataBindingItemResult);
      }

      else
      {
LABEL_87:

        v77 = type metadata accessor for FormatDerivedDataBindingSwitchCaseResult(0);
        v78 = *(v77 + 20);
        sub_1D5B49760(0, &qword_1EDF198D8, &type metadata for FormatItemKind, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7273AE0;
        v80 = v108;
        v81 = *v108;
        v82 = *(v108 + 8);
        *(inited + 32) = *v108;
        *(inited + 40) = v82;
        sub_1D5CBA110(v81, v82);
        v83 = sub_1D5E2755C(inited);
        swift_setDeallocating();
        sub_1D6875B30(inited + 32);
        v84 = v97;
        v85 = *(v97 + 36);
        v86 = sub_1D725B76C();
        v87 = v105;
        (*(*(v86 - 8) + 56))(v105 + v85, 1, 1, v86);
        *(v87 + 24) = 0u;
        *v87 = 0x100000001;
        v88 = MEMORY[0x1E69E7CC0];
        *(v87 + 8) = v83;
        *(v87 + 16) = v88;
        sub_1D5CDE22C(0, 0);
        *(v87 + 24) = 0;
        *(v87 + 32) = 0;
        v96(v87, 0, 1, v84);
        v89 = v107;
        v90 = v104;
        sub_1D6C956D4(v107 + v78, v87, v104);
        if (v2)
        {
          sub_1D67084F4(v99, v106, v98, v100, v101, v102);
          sub_1D6C9C70C(v80, type metadata accessor for FormatDerivedDataBindingItemResult);
          sub_1D6C9C930(v87, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
        }

        else
        {
          sub_1D6C9C930(v87, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
          sub_1D60749B4(v90, v89 + v78);
          v93 = *(v77 + 24);
          v94 = v103;
          sub_1D6C956D4(v89 + v93, v80 + v95[0], v103);
          sub_1D67084F4(v99, v106, v98, v100, v101, v102);
          sub_1D6C9C70C(v80, type metadata accessor for FormatDerivedDataBindingItemResult);
          sub_1D60749B4(v94, v89 + v93);
        }
      }

      return;
    }

    if (v52 == 2 && v34 == 4 && !v106 && *(a1 + 32) == 128)
    {
      v98 = *(a1 + 32);
      v100 = v36;
      v101 = v38;
      v102 = v39;
      v53 = type metadata accessor for FormatSlotDefinitionItemSet(0);
      (*(*(v53 - 8) + 56))(v15, 1, 1, v53);
      swift_beginAccess();
      v9 = *(a1 + 64);
      if (v9 >> 62)
      {
        v8 = sub_1D7263BFC();
      }

      else
      {
        v8 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1D67084A4(4, 0, v98, v100, v101, v102);

      if (v8)
      {
        v35 = 0;
        v108 = v9 & 0xC000000000000001;
        v48 = v9 & 0xFFFFFFFFFFFFFF8;
        v106 = v8;
        while (1)
        {
          if (v108)
          {
            v5 = MEMORY[0x1DA6FB460](v35, v9);
            v8 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              goto LABEL_37;
            }
          }

          else
          {
            if (v35 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v5 = *(v9 + 8 * v35 + 32);

            v8 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          sub_1D6C999C8(v5, v15);
          if (v2)
          {
            break;
          }

          ++v35;
          if (v8 == v106)
          {
            goto LABEL_89;
          }
        }

        sub_1D67084F4(4, 0, v98, v100, v101, v102);
        sub_1D6C9C70C(v15, type metadata accessor for FormatDerivedDataBindingAuxiliaryResult);
      }

      else
      {
LABEL_89:

        v91 = *(type metadata accessor for FormatDerivedDataBindingSwitchCaseResult(0) + 24);
        v92 = v107;
        sub_1D6C956D4(v107 + v91, v15, v19);
        sub_1D67084F4(4, 0, v98, v100, v101, v102);
        sub_1D6C9C70C(v15, type metadata accessor for FormatDerivedDataBindingAuxiliaryResult);
        if (!v2)
        {
          sub_1D60749B4(v19, v92 + v91);
        }
      }

      return;
    }

LABEL_38:
    type metadata accessor for FormatDerivedDataError(0);
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
    swift_allocError();
    v55 = v54;
    v109 = 0;
    v110 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000002FLL, 0x80000001D73EF940);
    v56 = *(v35 + 16);
    v111 = *v35;
    v112[0] = v56;
    *(v112 + 14) = *(v35 + 30);
    sub_1D609CE14(&v111);
    v57 = v110;
    *v55 = v109;
    v55[1] = v57;
    goto LABEL_39;
  }

LABEL_54:
  v100 = v36;
  v101 = v38;
  v102 = v39;
  v105 = *(v9 + 20);
  v15 = v37;
  v59 = v34;
  v8 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v60 = *(*(v8 - 8) + 56);
  v61 = v108;
  v60(v108 + v105, 1, 1, v8);
  v60(v61 + *(v9 + 24), 1, 1, v8);
  v5 = v59;
  v62 = v106;
  *v61 = v59;
  v61[1] = v62;
  *(v61 + 16) = v15 & 1;
  swift_beginAccess();
  v48 = *(a1 + 64);
  if (v48 >> 62)
  {
    v63 = sub_1D7263BFC();
  }

  else
  {
    v63 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D67084A4(v59, v106, v15, v100, v101, v102);

  if (!v63)
  {
LABEL_68:

    v8 = v108;
    sub_1D693F680(v108);
    v65 = type metadata accessor for FormatDerivedDataBindingSwitchResult;
LABEL_69:
    sub_1D6C9C70C(v8, v65);
    return;
  }

  v64 = 0;
  v19 = (v48 & 0xC000000000000001);
  LOBYTE(v9) = v48 & 0xF8;
  while (1)
  {
    if (v19)
    {
      v5 = MEMORY[0x1DA6FB460](v64, v48);
      v15 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v64 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_96;
      }

      v5 = *(v48 + 8 * v64 + 32);

      v15 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v8 = v63;
    sub_1D6C98774(v5, v108);
    if (v2)
    {
      break;
    }

    ++v64;
    if (v15 == v63)
    {
      goto LABEL_68;
    }
  }

  sub_1D6C9C70C(v108, type metadata accessor for FormatDerivedDataBindingSwitchResult);
LABEL_86:
}

uint64_t sub_1D6C9B650()
{

  return swift_deallocClassInstance();
}

void sub_1D6C9B6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v76 = a3;
  sub_1D6107408(0);
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v70 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v69 = &v63 - v14;
  v15 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v75 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  v74 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v18);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v73 = &v63 - v23;
  if (*(a2 + 16))
  {
    swift_beginAccess();

    sub_1D6E463A0(v24);
    swift_endAccess();
  }

  if (*(a1 + 16))
  {
    swift_beginAccess();

    sub_1D5B886D0(v25);
    swift_endAccess();
  }

  v26 = v76 + 56;
  v27 = 1 << *(v76 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v76 + 56);
  v30 = (v27 + 63) >> 6;

  v31 = 0;
  v64 = v30;
  v65 = v26;
  v66 = v3;
  v67 = v20;
  while (v29)
  {
LABEL_13:
    v33 = v73;
    sub_1D6C9C6A4(*(v76 + 48) + *(v74 + 72) * (__clz(__rbit64(v29)) | (v31 << 6)), v73, type metadata accessor for FormatDerivedDataResultOptionReference);
    sub_1D6C9C76C(v33, v20, type metadata accessor for FormatDerivedDataResultOptionReference);

    v35 = sub_1D69BA6AC(v34);
    if (v5)
    {
      sub_1D6C9C70C(v20, type metadata accessor for FormatDerivedDataResultOptionReference);
LABEL_30:

      return;
    }

    v38 = v35;
    v39 = v36;
    v40 = v37;
    v41 = v6;
    v43 = *(v20 + 1);
    v42 = *(v20 + 2);
    swift_beginAccess();
    v44 = *(v41[3] + 16);

    v77 = v43;
    v78 = 0;
    if (v44 && (sub_1D5B69D90(v43, v42), (v45 & 1) != 0))
    {
    }

    else
    {
      v46 = MEMORY[0x1E69E7CD0];
    }

    v29 &= v29 - 1;
    v82 = v46;
    swift_endAccess();
    sub_1D6007700(v38, v39, v40);
    sub_1D5FEE050(v80, v38, v39, v40);
    sub_1D6007718(v80[0], v80[1], v81);
    v47 = v82;
    v6 = v66;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v6[3];
    v6[3] = 0x8000000000000000;
    sub_1D6D79E00(v47, v77, v42, isUniquelyReferenced_nonNull_native);

    v6[3] = v79;
    swift_endAccess();
    v20 = v67;
    v49 = v75;
    sub_1D6C9C6A4(&v67[*(v68 + 28)], v75, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
    sub_1D5EA24BC();
    v51 = (*(*(v50 - 8) + 48))(v49, 1, v50);
    v52 = *(v72 + 48);
    if (v51 == 1)
    {
      v53 = v69 + v52;
      sub_1D6C9C6A4(v20, v69, type metadata accessor for FormatDerivedDataResultOptionReference);
      *v53 = v38;
      *(v53 + 8) = v39;
      *(v53 + 16) = v40;
      swift_beginAccess();
      v54 = v6[4];
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v6[4] = v54;
      if ((v55 & 1) == 0)
      {
        v54 = sub_1D6992704(0, v54[2] + 1, 1, v54);
        v6[4] = v54;
      }

      v30 = v64;
      v26 = v65;
      v57 = v54[2];
      v56 = v54[3];
      if (v57 >= v56 >> 1)
      {
        v54 = sub_1D6992704((v56 > 1), v57 + 1, 1, v54);
      }

      v54[2] = v57 + 1;
      sub_1D6C9C76C(v69, v54 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v57, sub_1D6107408);
      v6[4] = v54;
      swift_endAccess();
      sub_1D6C9C70C(v20, type metadata accessor for FormatDerivedDataResultOptionReference);
      v5 = v78;
    }

    else
    {
      v58 = v70 + v52;
      sub_1D6C9C6A4(v20, v70, type metadata accessor for FormatDerivedDataResultOptionReference);
      *v58 = v38;
      *(v58 + 8) = v39;
      *(v58 + 16) = v40;
      swift_beginAccess();
      v59 = v6[5];
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v6[5] = v59;
      if ((v60 & 1) == 0)
      {
        v59 = sub_1D6992704(0, v59[2] + 1, 1, v59);
        v6[5] = v59;
      }

      v30 = v64;
      v26 = v65;
      v62 = v59[2];
      v61 = v59[3];
      if (v62 >= v61 >> 1)
      {
        v59 = sub_1D6992704((v61 > 1), v62 + 1, 1, v59);
      }

      v59[2] = v62 + 1;
      sub_1D6C9C76C(v70, v59 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v62, sub_1D6107408);
      v6[5] = v59;
      swift_endAccess();
      sub_1D6C9C70C(v20, type metadata accessor for FormatDerivedDataResultOptionReference);
      sub_1D6C9C930(v75, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
      v5 = v78;
    }
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v30)
    {
      goto LABEL_30;
    }

    v29 = *(v26 + 8 * v32);
    ++v31;
    if (v29)
    {
      v31 = v32;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_1D6C9BDF8(uint64_t a1)
{
  v42 = *(a1 + 16);
  if (!v42)
  {
    type metadata accessor for FormatDerivedDataBindingNode();
    result = swift_allocObject();
    result[2] = 0;
    result[3] = 0;
    result[5] = 0;
    result[6] = 0;
    result[4] = 128;
    *(result + 54) = 0;
    result[8] = MEMORY[0x1E69E7CC0];
    return result;
  }

  v45 = 0;
  v1 = 0;
  v41 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v3 = *(v41 + 32 * v1 + 8);
    v46 = *(v3 + 16);
    if (v46)
    {
      break;
    }

LABEL_4:
    if (++v1 == v42)
    {

      return v45;
    }
  }

  v43 = v1;

  v4 = 0;
  v5 = 0;
  v6 = (v3 + 72);
  v44 = v3;
  while (v4 < *(v3 + 16))
  {
    v8 = *(v6 - 5);
    v7 = *(v6 - 4);
    v9 = *(v6 - 3);
    v10 = *v6 | (*(v6 + 2) << 32);
    v11 = *(v6 + 2) >> 13;
    v47 = v5;
    v48 = v9;
    v49 = *(v6 - 2);
    v50 = *(v6 - 1);
    if (v11 <= 1)
    {
      if (v11)
      {
LABEL_18:
        sub_1D67084A4(v8, v7, v9, *(v6 - 2), *(v6 - 1), v10);

        v14 = v8;
        v15 = v8;
        v16 = v7;
        goto LABEL_59;
      }

      if (!(v9 >> 6))
      {
        v51 = 0x28746F6C73;
        sub_1D6007830(v8, v7, v9);
        v14 = v8;
        MEMORY[0x1DA6F9910](v8, v7);
        goto LABEL_23;
      }

      if (v9 >> 6 == 1)
      {
        v12 = 0xE500000000000000;
        v13 = 0x6575737369;
        switch(v7)
        {
          case 0uLL:
            v12 = 0xE700000000000000;
            v13 = 0x656C6369747261;
            break;
          case 1uLL:
            break;
          case 2uLL:
            v12 = 0xE800000000000000;
            v13 = 0x6465626D45626577;
            break;
          case 3uLL:
            v12 = 0xEA00000000006B63;
            v13 = 0x6172546F69647561;
            break;
          case 4uLL:
            v12 = 0xE300000000000000;
            v13 = 6775156;
            break;
          case 5uLL:
            v13 = 0x65726F6373;
            break;
          case 6uLL:
            v12 = 0xE800000000000000;
            v13 = 0x676E69646E617473;
            break;
          case 7uLL:
            v12 = 0xE700000000000000;
            v13 = 0x74656B63617262;
            break;
          case 8uLL:
            v12 = 0xE800000000000000;
            v13 = 0x65726F6353786F62;
            break;
          case 9uLL:
            v13 = 0x726F6353656E696CLL;
            v12 = 0xE900000000000065;
            break;
          case 0xAuLL:
            v13 = 0x65527972756A6E69;
            v12 = 0xEC00000074726F70;
            break;
          case 0xBuLL:
            v12 = 0xE900000000000072;
            v13 = 0x6579616C5079656BLL;
            break;
          case 0xCuLL:
            v12 = 0xE600000000000000;
            v13 = 0x656C7A7A7570;
            break;
          case 0xDuLL:
            v13 = 0x7954656C7A7A7570;
            v12 = 0xEA00000000006570;
            break;
          case 0xEuLL:
            v13 = 0x7453656C7A7A7570;
            v12 = 0xEF63697473697461;
            break;
          case 0xFuLL:
            v12 = 0xE600000000000000;
            v13 = 0x657069636572;
            break;
          default:
            v13 = *(v6 - 5);
            v12 = *(v6 - 4);
            break;
        }

        v18 = v9;
        sub_1D6007830(v8, v7, v9);
        v14 = v8;
        sub_1D6007830(v8, v7, v18);
        MEMORY[0x1DA6F9910](v13, v12);

        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        v15 = 0x286D657469;
        v16 = 0xE500000000000000;
        v3 = v44;
      }

      else if (v7 | v8 || v9 != 128)
      {
        if (v8 == 1 && !v7 && v9 == 128)
        {
          v14 = 1;
          v15 = 0x656D656C70707573;
          v16 = 0xED0000797261746ELL;
        }

        else if (v8 == 2 && !v7 && v9 == 128)
        {
          v14 = 2;
          v16 = 0xE500000000000000;
          v15 = 0x656C797473;
        }

        else if (v8 == 3 && !v7 && v9 == 128)
        {
          v14 = 3;
          v16 = 0xEA00000000006E6FLL;
          v15 = 0x697461726F636564;
        }

        else if (v8 == 4 && !v7 && v9 == 128)
        {
          v14 = 4;
          v16 = 0xE900000000000079;
          v15 = 0x7261696C69787561;
        }

        else
        {
          v32 = v9 == 128;
          v14 = *(v6 - 5);
          v34 = v8 == 5 && v7 == 0;
          if (v34 && v32)
          {
            v15 = 0x6E6F6974706FLL;
          }

          else
          {
            v15 = 0x646E69426D657469;
          }

          if (v34 && v32)
          {
            v16 = 0xE600000000000000;
          }

          else
          {
            v16 = 0xEC00000073676E69;
          }
        }
      }

      else
      {
        v14 = *(v6 - 5);
        v16 = 0xE500000000000000;
        v15 = 0x70756F7267;
      }
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_18;
      }

      if ((v7 & 1) == 0)
      {
        v51 = 0x2865736163;
        v14 = *(v6 - 5);

        v17 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v17);

LABEL_23:
        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        v15 = v51;
        v16 = 0xE500000000000000;
        goto LABEL_59;
      }

      v14 = *(v6 - 5);

      v16 = 0xE700000000000000;
      v15 = 0x746C7561666564;
    }

LABEL_59:
    MEMORY[0x1DA6F9910](v15, v16);

    MEMORY[0x1DA6F9910](47, 0xE100000000000000);

    if (!v2[2] || (v19 = sub_1D5B69D90(0, 0xE000000000000000), (v20 & 1) == 0))
    {
      type metadata accessor for FormatDerivedDataBindingNode();
      v22 = swift_allocObject();
      *(v22 + 16) = v14;
      *(v22 + 24) = v7;
      *(v22 + 32) = v48;
      *(v22 + 40) = v49;
      *(v22 + 48) = v50;
      *(v22 + 60) = WORD2(v10);
      *(v22 + 56) = v10;
      *(v22 + 64) = MEMORY[0x1E69E7CC0];
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v2;
      v24 = sub_1D5B69D90(0, 0xE000000000000000);
      v26 = v2[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_93;
      }

      v30 = v25;
      if (v2[3] >= v29)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_67;
        }

        v35 = v24;
        sub_1D6D81FC4();
        v24 = v35;
        v2 = v52;
        if ((v30 & 1) == 0)
        {
          goto LABEL_82;
        }

LABEL_68:
        *(v2[7] + 8 * v24) = v22;
      }

      else
      {
        sub_1D6D6CFB8(v29, isUniquelyReferenced_nonNull_native);
        v24 = sub_1D5B69D90(0, 0xE000000000000000);
        if ((v30 & 1) != (v31 & 1))
        {
          goto LABEL_95;
        }

LABEL_67:
        if (v30)
        {
          goto LABEL_68;
        }

LABEL_82:
        v2[(v24 >> 6) + 8] |= 1 << v24;
        v36 = (v2[6] + 16 * v24);
        *v36 = 0;
        v36[1] = 0xE000000000000000;
        *(v2[7] + 8 * v24) = v22;
        v37 = v2[2];
        v28 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v28)
        {
          goto LABEL_94;
        }

        v2[2] = v38;
      }

      if (v47)
      {
        v39 = swift_beginAccess();
        MEMORY[0x1DA6F9CE0](v39);
        if (*((*(v47 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v47 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();
      }

      if (!v45)
      {

        v45 = v22;
      }

      v5 = v22;
      v3 = v44;
      goto LABEL_8;
    }

    v21 = v19;
    sub_1D67084F4(v14, v7, v48, v49, v50, v10);
    v5 = *(v2[7] + 8 * v21);

LABEL_8:
    ++v4;
    v6 += 12;
    if (v46 == v4)
    {

      v1 = v43;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D6C9C6A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C9C70C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C9C76C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C9C7D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6C9C848(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D6C9C848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6C9C8B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5B49760(0, a3, a4, MEMORY[0x1E69E62F8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6C9C930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6C9C9F4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6C9C98C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1D6C9C9F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6C9CB8C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed10FormatView_identifier);

  return v1;
}

void sub_1D6C9CBCC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v31 = v32;
    v3 = v1 + 64;
    v4 = sub_1D7263B7C();
    v5 = 0;
    v6 = *(v1 + 36);
    v29 = v1 + 64;
    v26 = v1 + 72;
    v27 = v2;
    v28 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v30 = v5;
      v9 = *(v1 + 56);
      v10 = (*(v1 + 48) + 16 * v4);
      v11 = v1;
      v13 = *v10;
      v12 = v10[1];
      v14 = *(v9 + 8 * v4);

      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](v13, v12);
      MEMORY[0x1DA6F9910](0x726F6C6F632DLL, 0xE600000000000000);

      v15 = v31;
      v17 = *(v31 + 16);
      v16 = *(v31 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D5BFC364((v16 > 1), v17 + 1, 1);
        v15 = v31;
      }

      *(v15 + 16) = v17 + 1;
      v18 = v15 + 16 * v17;
      *(v18 + 32) = 0xD000000000000015;
      *(v18 + 40) = 0x80000001D73EF990;
      v7 = 1 << *(v11 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v1 = v11;
      v3 = v29;
      v19 = *(v29 + 8 * v8);
      if ((v19 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v31 = v15;
      v6 = v28;
      if (v28 != *(v1 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v4 & 0x3F));
      if (v20)
      {
        v7 = __clz(__rbit64(v20)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v8 << 6;
        v22 = v8 + 1;
        v23 = (v26 + 8 * v8);
        while (v22 < (v7 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1D5C25E1C(v4, v28, 0);
            v7 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_1D5C25E1C(v4, v28, 0);
      }

LABEL_4:
      v5 = v30 + 1;
      v4 = v7;
      if (v30 + 1 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t FeedRecipe.debugIdentifier.getter()
{
  v1 = [*(v0 + 56) identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedRecipe.debugSourceName.getter()
{
  v1 = [objc_msgSend(*(v0 + 56) sourceChannel)];
  swift_unknownObjectRelease();
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedRecipe.debugTitle.getter()
{
  v1 = [*(v0 + 56) title];
  v2 = sub_1D726207C();

  return v2;
}

id FeedRecipe.debugAssetHandle.getter()
{
  v1 = [*(v0 + 56) thumbnailMedium];
  v2 = [v1 thumbnailAssetHandle];

  return v2;
}

id FeedRecipe.debugScoreProfile.getter()
{
  v1 = [*(v0 + 56) scoreProfile];

  return v1;
}

__n128 FeedRecipe.init(identifier:recipe:state:imageShareAttributeProvider:premiumBadge:externalRecipeFactory:featureAvailability:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a6;
  *(a9 + 16) = 0;
  *(a9 + 24) = 1;
  *(a9 + 32) = xmmword_1D727C320;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 56) = a3;
  v16 = type metadata accessor for FeedRecipe(0);
  sub_1D6C9E938(a4, a9 + v16[9], type metadata accessor for FeedRecipe.State);
  sub_1D6C9E8B4(a5, a9 + v16[10], &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType);
  *(a9 + v16[11]) = v15;
  if (*(a4 + *(type metadata accessor for FeedRecipe.State(0) + 24)) == 1)
  {
    v17 = [a3 sourceChannel];
  }

  else
  {
    v17 = 2;
  }

  sub_1D6C9D1C4(a5);
  sub_1D6C9F2E4(a4, type metadata accessor for FeedRecipe.State);
  *(a9 + 48) = v17;
  v18 = a9 + v16[12];
  v19 = *(a7 + 16);
  *v18 = *a7;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(a7 + 32);
  v20 = a9 + v16[13];
  *(v20 + 32) = *(a8 + 32);
  result = *(a8 + 16);
  *v20 = *a8;
  *(v20 + 16) = result;
  return result;
}

uint64_t sub_1D6C9D1C4(uint64_t a1)
{
  sub_1D6C9E36C(0, &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FeedRecipe.traits.getter@<X0>(uint64_t *a1@<X8>)
{
  FCRecipe.traits.getter(&v6);
  v3 = (v1 + *(type metadata accessor for FeedRecipe(0) + 36));
  if (*v3 - 1 <= 1 && (v6 & 0x1000) == 0)
  {
    v6 |= 0x1000uLL;
  }

  result = type metadata accessor for FeedRecipe.State(0);
  v5 = 0x80000000;
  if (!v3[*(result + 24)])
  {
    v5 = 0x100000000;
  }

  if ((v6 & v5) != 0)
  {
    v5 = 0;
  }

  *a1 = v6 | v5;
  return result;
}

uint64_t FeedRecipe.additionalFormatFeedItems.getter()
{
  sub_1D6C9E36C(0, &qword_1EDF199E0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D7273AE0;
  v2 = [*(v0 + 56) sourceChannel];
  *(v1 + 56) = &type metadata for FeedTag;
  *(v1 + 64) = sub_1D5EE5BA8();
  v3 = swift_allocObject();
  *(v1 + 32) = v3;
  v4 = [v2 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  *(v3 + 96) = xmmword_1D7279980;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0;
  *(v3 + 16) = v5;
  *(v3 + 24) = v7;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0xE000000000000000;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  v8 = MEMORY[0x1E69E7CD0];
  *(v3 + 80) = 0;
  *(v3 + 88) = v8;
  return v1;
}

uint64_t FeedRecipe.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void FeedRecipe.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t FeedRecipe.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

uint64_t FeedRecipe.visibility.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5C00308(v2);
}

uint64_t FeedRecipe.premiumBadge.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedRecipe(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t sub_1D6C9D654@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5C00308(v2);
}

uint64_t sub_1D6C9D664()
{
  v1 = [*(v0 + 56) identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t sub_1D6C9D6BC()
{
  v1 = [objc_msgSend(*(v0 + 56) sourceChannel)];
  swift_unknownObjectRelease();
  v2 = sub_1D726207C();

  return v2;
}

uint64_t sub_1D6C9D738()
{
  v1 = [*(v0 + 56) title];
  v2 = sub_1D726207C();

  return v2;
}

id sub_1D6C9D790()
{
  v1 = [*(v0 + 56) thumbnailMedium];
  v2 = [v1 thumbnailAssetHandle];

  return v2;
}

id sub_1D6C9D7E8()
{
  v1 = [*(v0 + 56) scoreProfile];

  return v1;
}

uint64_t FeedRecipe.stateSelectors.getter()
{
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D7270C10;
  v2 = (v0 + *(type metadata accessor for FeedRecipe(0) + 36));
  v3 = *v2;
  v4 = "access-level-no-bundle-access";
  v5 = "deleted-state-none";
  v6 = 0xD00000000000001DLL;
  if (v3 != 1)
  {
    v6 = 0xD000000000000020;
    v5 = "offensive-state-none";
  }

  v7 = v3 == 0;
  if (*v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (!v7)
  {
    v4 = v5;
  }

  *(v1 + 32) = v8;
  *(v1 + 40) = v4 | 0x8000000000000000;
  v9 = type metadata accessor for FeedRecipe.State(0);
  v10 = "deleted-state-deleted";
  if (v2[*(v9 + 24)])
  {
    v11 = 0xD000000000000015;
  }

  else
  {
    v11 = 0xD000000000000012;
  }

  if (!v2[*(v9 + 24)])
  {
    v10 = "blocked-state-blocked";
  }

  *(v1 + 48) = v11;
  *(v1 + 56) = v10 | 0x8000000000000000;
  return v1;
}

char *sub_1D6C9D930()
{
  sub_1D6C9F0B8(0, &unk_1EDF19568, sub_1D6C9F344, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 32) = 0x7972616D697270;
  *(inited + 16) = xmmword_1D7274590;
  *(inited + 40) = 0xE700000000000000;
  v2 = *(v0 + 56);
  *(inited + 48) = [v2 thumbnailPrimaryColor];
  *(inited + 56) = 0x756F72676B636162;
  *(inited + 64) = 0xEA0000000000646ELL;
  *(inited + 72) = [v2 thumbnailBackgroundColor];
  *(inited + 80) = 1954047348;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = [v2 thumbnailTextColor];
  *(inited + 104) = 0x746E65636361;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = [v2 thumbnailAccentColor];
  v3 = sub_1D605AE4C(inited);
  swift_setDeallocating();
  sub_1D6C9F344(0);
  swift_arrayDestroy();
  v4 = sub_1D6C9E44C(v3);

  sub_1D6C9CBCC(v4);
  v6 = v5;

  if (*(v0 + *(type metadata accessor for FeedRecipe(0) + 44)))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D5B858EC(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1D5B858EC((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = 0x6D75696D657270;
    *(v9 + 5) = 0xE700000000000000;
  }

  sub_1D7263D4C();

  v10 = [objc_msgSend(v2 sourceChannel)];
  swift_unknownObjectRelease();
  v11 = sub_1D726207C();
  v13 = v12;

  MEMORY[0x1DA6F9910](v11, v13);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1D5B858EC(0, *(v6 + 2) + 1, 1, v6);
  }

  v15 = *(v6 + 2);
  v14 = *(v6 + 3);
  if (v15 >= v14 >> 1)
  {
    v6 = sub_1D5B858EC((v14 > 1), v15 + 1, 1, v6);
  }

  *(v6 + 2) = v15 + 1;
  v16 = &v6[16 * v15];
  *(v16 + 4) = 0xD000000000000012;
  *(v16 + 5) = 0x80000001D73C1100;
  return v6;
}

uint64_t sub_1D6C9DC80()
{
  v0 = sub_1D6C9D930();
  v1 = *(v0 + 2);
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      MEMORY[0x1DA6F9910](v4, v5);

      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D5BFC364((v6 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = 0x2D70756F7267;
      *(v8 + 40) = 0xE600000000000000;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1D6C9DDAC()
{
  v1 = (v0 + *(type metadata accessor for FeedRecipe(0) + 36));
  v2 = "deleted-state-none";
  v3 = 0xD00000000000001DLL;
  if (*v1 != 1)
  {
    v3 = 0xD000000000000020;
    v2 = "offensive-state-none";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (*v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = "access-level-no-bundle-access";
  }

  v6 = v5 | 0x8000000000000000;
  v25 = v4;
  v26 = v5 | 0x8000000000000000;
  v7 = type metadata accessor for FeedRecipe.State(0);
  if (v1[*(v7 + 24)])
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (v1[*(v7 + 24)])
  {
    v9 = "deleted-state-deleted";
  }

  else
  {
    v9 = "blocked-state-blocked";
  }

  v10 = v9 | 0x8000000000000000;
  v27 = v8;
  v28 = v9 | 0x8000000000000000;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 2, 0);
  v11 = v24;
  strcpy(v23, "group-recipe-");
  HIWORD(v23[1]) = -4864;

  MEMORY[0x1DA6F9910](v4, v6);

  v12 = v23[0];
  v13 = v23[1];
  v15 = *(v24 + 16);
  v14 = *(v24 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_1D5BFC364((v14 > 1), v15 + 1, 1);
    v11 = v24;
  }

  *(v11 + 16) = v15 + 1;
  v16 = v11 + 16 * v15;
  *(v16 + 32) = v12;
  *(v16 + 40) = v13;
  strcpy(v23, "group-recipe-");
  HIWORD(v23[1]) = -4864;

  MEMORY[0x1DA6F9910](v8, v10);

  v17 = v23[0];
  v18 = v23[1];
  v24 = v11;
  v20 = *(v11 + 16);
  v19 = *(v11 + 24);
  if (v20 >= v19 >> 1)
  {
    sub_1D5BFC364((v19 > 1), v20 + 1, 1);
    v11 = v24;
  }

  *(v11 + 16) = v20 + 1;
  v21 = v11 + 16 * v20;
  *(v21 + 32) = v17;
  *(v21 + 40) = v18;
  swift_arrayDestroy();
  return v11;
}

double FeedRecipe.groupItem.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D6C9E938(v1, a1, type metadata accessor for FeedRecipe);
  type metadata accessor for FeedGroupItem(0);

  swift_storeEnumTagMultiPayload();
  return result;
}

double sub_1D6C9E03C@<D0>(uint64_t a1@<X8>)
{
  sub_1D6C9E938(v1, a1, type metadata accessor for FeedRecipe);
  type metadata accessor for FeedGroupItem(0);

  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t FeedRecipe.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 56);
  v10 = [v9 identifier];
  if (!v10)
  {
    sub_1D726207C();
    v10 = sub_1D726203C();
  }

  v11 = [v9 articles];
  sub_1D5B5D6A0();
  v12 = sub_1D726267C();

  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1DA6FB460](0, v12);
    goto LABEL_8;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 32);
    swift_unknownObjectRetain();
LABEL_8:

    v15 = [v14 identifier];
    swift_unknownObjectRelease();
    if (v15)
    {
LABEL_13:
      v16 = [objc_opt_self() nss:v10 NewsURLForRecipeID:v15 articleID:?];

      sub_1D72584EC();
      sub_1D725844C();
      v17 = [v9 title];
      sub_1D726207C();

      sub_1D725F83C();
      (*(v4 + 8))(v8, v3);
      v18 = sub_1D725F84C();
      return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
    }

    sub_1D726207C();
    v15 = sub_1D726203C();
LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1D6C9E36C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t *sub_1D6C9E3D4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D6C9E5AC(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1D6C9E44C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1D6C9E5AC(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_1D6C9E3D4(v13, v7, v3);
  result = MEMORY[0x1DA6FD500](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

unint64_t *sub_1D6C9E5AC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1D62CF078(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1D62CF078(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s8NewsFeed0B6RecipeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = a1[7];
  v6 = [v5 identifier];
  v7 = sub_1D726207C();
  v9 = v8;

  v10 = a2[7];
  v11 = [v10 identifier];
  v12 = sub_1D726207C();
  v14 = v13;

  if (v7 == v12 && v9 == v14)
  {
  }

  else
  {
    v16 = sub_1D72646CC();

    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v17 = [v5 title];
  v18 = sub_1D726207C();
  v20 = v19;

  v21 = [v10 title];
  v22 = sub_1D726207C();
  v24 = v23;

  if (v18 == v22 && v20 == v24)
  {
  }

  else
  {
    v25 = sub_1D72646CC();

    if ((v25 & 1) == 0)
    {
LABEL_20:
      v30 = 0;
      return v30 & 1;
    }
  }

  v26 = *(type metadata accessor for FeedRecipe(0) + 36);
  v27 = a1 + v26;
  v28 = a2 + v26;
  if (*v27 != *(a2 + v26))
  {
    goto LABEL_20;
  }

  v29 = type metadata accessor for FeedRecipe.State(0);
  if ((_s8NewsFeed0B4ItemO11SharedStateO2eeoiySbAE_AEtFZ_0(&v27[*(v29 + 20)], &v28[*(v29 + 20)]) & 1) == 0)
  {
    goto LABEL_20;
  }

  v30 = v27[*(v29 + 24)] ^ v28[*(v29 + 24)] ^ 1;
  return v30 & 1;
}

uint64_t sub_1D6C9E8B4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D6C9E36C(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D6C9E938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C9E9A0(uint64_t a1)
{
  result = sub_1D6C9F2A0(&qword_1EDF12E10, &protocol conformance descriptor for FeedRecipe);
  *(a1 + 16) = result;
  return result;
}

void *sub_1D6C9EA0C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1D6C9F0B8(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v60 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v57 - v7);
  sub_1D6C9F0B8(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, v4);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v57 - v11;
  v13 = type metadata accessor for FeedRecipe(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C9F11C(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D6C9F1B0(v12);
    return sub_1D7073500(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1D6C9F23C(v12, v17);
    v19 = *(a1 + 112);
    v64[6] = *(a1 + 96);
    v64[7] = v19;
    v64[8] = *(a1 + 128);
    v65 = *(a1 + 144);
    v20 = *(a1 + 48);
    v64[2] = *(a1 + 32);
    v64[3] = v20;
    v21 = *(a1 + 80);
    v64[4] = *(a1 + 64);
    v64[5] = v21;
    v22 = *(a1 + 16);
    v64[0] = *a1;
    v64[1] = v22;
    sub_1D5EF032C(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(&v67 + 1) = v13;
    v68 = sub_1D6C9F2A0(&qword_1EDF12E00, &protocol conformance descriptor for FeedRecipe);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
    v59 = v17;
    sub_1D6C9E938(v17, boxed_opaque_existential_1, type metadata accessor for FeedRecipe);
    sub_1D713A66C(&v66, v63);
    __swift_destroy_boxed_opaque_existential_1(&v66);
    v24 = v63[0];
    v63[0] = MEMORY[0x1E69E7CC0];
    sub_1D69972A4(0, 0, 0);
    v25 = v63[0];
    if (v24)
    {
      while (1)
      {
        v26 = v24 & -v24;
        *&v66 = 91;
        *(&v66 + 1) = 0xE100000000000000;
        v62 = v26;
        v61 = sub_1D713AFE4();
        sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
        sub_1D5BB0AB8();
        v27 = sub_1D7261F3C();
        v29 = v28;

        MEMORY[0x1DA6F9910](v27, v29);

        MEMORY[0x1DA6F9910](93, 0xE100000000000000);
        v30 = sub_1D5FD24A4(1uLL, v66, *(&v66 + 1));
        v32 = v31;

        result = sub_1D726398C();
        if (__OFSUB__(result, 1))
        {
          break;
        }

        result = sub_1D726396C();
        if (v33)
        {
          v34 = v32;
        }

        else
        {
          v34 = result;
        }

        if (v34 >> 14 < v30 >> 14)
        {
          goto LABEL_15;
        }

        v35 = sub_1D72639BC();
        v37 = v36;
        v39 = v38;
        v41 = v40;

        v42 = MEMORY[0x1DA6F97E0](v35, v37, v39, v41);
        v44 = v43;

        v45 = type metadata accessor for FormatInspectionItem(0);
        v46 = (v8 + *(v45 + 24));
        *v46 = 0;
        v46[1] = 0xE000000000000000;
        v47 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
        *v8 = v42;
        v8[1] = v44;
        v8[2] = 0;
        v8[3] = 0;
        v48 = v8 + *(v45 + 28);
        *v48 = 0;
        *(v48 + 1) = 0;
        v48[16] = -1;
        (*(*(v45 - 8) + 56))(v8, 0, 1, v45);
        v63[0] = v25;
        v50 = *(v25 + 16);
        v49 = *(v25 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1D69972A4((v49 > 1), v50 + 1, 1);
          v25 = v63[0];
        }

        *(v25 + 16) = v50 + 1;
        sub_1D5E4F52C(v8, v25 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v50);
        v51 = v26 == v24;
        v24 ^= v26;
        if (v51)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_13:
      sub_1D6795150(0x737469617254, 0xE600000000000000, 0, 0, v25, &v66);

      v52 = inited;
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(v52 + 64) = &off_1F518B2C0;
      v53 = swift_allocObject();
      *(v52 + 32) = v53;
      *(v53 + 48) = v68;
      v54 = v67;
      *(v53 + 16) = v66;
      *(v53 + 32) = v54;
      v55 = v59;
      v56 = sub_1D61A7618(v64, v59);
      swift_setDeallocating();
      sub_1D6C9E36C(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      sub_1D6C9F2E4(v55, type metadata accessor for FeedRecipe);
      return v56;
    }
  }

  return result;
}

void sub_1D6C9F0B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6C9F11C(uint64_t a1, uint64_t a2)
{
  sub_1D6C9F0B8(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C9F1B0(uint64_t a1)
{
  sub_1D6C9F0B8(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6C9F23C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C9F2A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeedRecipe(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6C9F2E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6C9F344(uint64_t a1)
{
  if (!qword_1EDF1B610)
  {
    sub_1D5EE6520(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B610);
    }
  }
}

BOOL static FormatSwitchListValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a2[1];
  type metadata accessor for FormatSwitchListValue.CaseValue(0, a3, a4, a4);
  swift_getWitnessTable();
  if ((sub_1D726280C() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v5)
    {
      swift_bridgeObjectRetain_n();

      v6 = sub_1D726280C();
      swift_bridgeObjectRelease_n();

      return (v6 & 1) != 0;
    }

    goto LABEL_7;
  }

  if (v5)
  {
LABEL_7:

    return 0;
  }

  return 1;
}

void FormatSwitchListValue.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v21 = a1;
  v20 = sub_1D725BC7C();
  v6 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  type metadata accessor for FormatSwitchListValue.CaseValue(0, *(a3 + 16), *(a3 + 24), v11);
  v19 = (v6 + 8);

  v12 = 0;
  v13 = (v10 + 40);
  while (1)
  {
    if (v12 == sub_1D726279C())
    {
LABEL_9:

      return;
    }

    v15 = sub_1D726277C();
    sub_1D726271C();
    if ((v15 & 1) == 0)
    {
      break;
    }

    if (__OFADD__(v12, 1))
    {
      goto LABEL_12;
    }

    v16 = *(v13 - 1);
    v17 = *v13;
    v22 = v16;
    swift_retain_n();

    sub_1D71C3968(v21, v24, v9);
    if (v4)
    {

      return;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v22 = v16;
      v23 = v17;
      sub_1D6261F40(v21, v24);
    }

    v14 = sub_1D725BC5C();

    (*v19)(v9, v20);
    ++v12;
    v13 += 2;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  sub_1D7263DBC();
  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_1D6C9F750(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v6 = *a2;
  v7 = v4;

  LOBYTE(v4) = static FormatExpression.== infix(_:_:)(&v7, &v6);

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return sub_1D726280C();
}

uint64_t sub_1D6C9F8AC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C9F928(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C9F9E4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 FormatGroup.init(identifier:name:description:priority:columns:columnSystem:children:styles:sortBy:selectors:options:types:contentSizeCategory:requirements:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16)
{
  v22 = *a7;
  v23 = *a10;
  v24 = a10[1];
  v25 = *a15;
  *a9 = a1;
  *(a9 + 8) = a2;

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v22;
  *(a9 + 56) = a8;
  sub_1D5C5D428(0, 2uLL);
  *(a9 + 64) = v23;
  *(a9 + 72) = v24;
  result = a12;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  *(a9 + 128) = v25;
  *(a9 + 136) = a16;
  return result;
}

uint64_t FormatGroup.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatGroup.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatGroup.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void FormatGroup.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void FormatGroup.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t FormatGroup.columnSystem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5D5FDA4(v2, v3);
}

uint64_t FormatGroup.columnSystem.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1D5C5D428(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

BOOL _s8NewsFeed11FormatGroupV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v41 = a1[7];
  v39 = a1[8];
  v38 = a1[9];
  v35 = a1[10];
  v33 = a1[11];
  v31 = a1[12];
  v29 = a1[13];
  v27 = a1[14];
  v25 = a1[15];
  v23 = *(a1 + 128);
  v21 = a1[17];
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v40 = *(a2 + 56);
  v36 = *(a2 + 72);
  v37 = *(a2 + 64);
  v34 = *(a2 + 80);
  v32 = *(a2 + 88);
  v30 = *(a2 + 96);
  v28 = *(a2 + 104);
  v26 = *(a2 + 112);
  v24 = *(a2 + 120);
  v22 = *(a2 + 128);
  v20 = *(a2 + 136);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v9 || (v3 != v10 || v5 != v9) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if ((sub_1D6DDEB30(v6, v11) & 1) == 0 || (sub_1D5E21790(v41, v40) & 1) == 0)
  {
    return 0;
  }

  v12 = v38;
  if (v38 != 2)
  {
    v13 = v36;
    v14 = v39;
    if (v36 == 2)
    {
      goto LABEL_24;
    }

    if (v38)
    {
      if (v38 == 1)
      {
        if (v36 != 1)
        {
          goto LABEL_32;
        }

LABEL_30:
        sub_1D5D5FDA4(v39, v38);
        sub_1D5D5FDA4(v37, v38);
        sub_1D5F33294(v39, v38);
        sub_1D5F33294(v37, v38);
        sub_1D5C5D428(v37, v38);
        sub_1D5C5D428(v39, v38);
        goto LABEL_35;
      }

      if (v36 >= 2)
      {
        sub_1D5D5FDA4(v39, v38);
        sub_1D5D5FDA4(v39, v38);
        sub_1D5D5FDA4(v37, v36);
        sub_1D5D5FDA4(v39, v38);
        sub_1D5D5FDA4(v37, v36);
        sub_1D5D5FDA4(v39, v38);
        sub_1D5D5FDA4(v37, v36);
        sub_1D6366584(v39 & 1, v38, v37 & 1, v36);
        v16 = v15;
        sub_1D5F33294(v39, v38);
        sub_1D5F33294(v37, v36);
        sub_1D5C5D428(v37, v36);
        sub_1D5C5D428(v39, v38);
        sub_1D5C5D428(v37, v36);
        sub_1D5C5D428(v39, v38);
        if (v16)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    else if (!v36)
    {
      goto LABEL_30;
    }

LABEL_32:
    sub_1D5D5FDA4(v39, v38);
    sub_1D5D5FDA4(v37, v36);
    sub_1D5D5FDA4(v39, v38);
    sub_1D5F33294(v39, v38);
    sub_1D5F33294(v37, v36);
LABEL_33:
    sub_1D5C5D428(v39, v38);
    return 0;
  }

  v13 = v36;
  v14 = v39;
  if (v36 != 2)
  {
LABEL_24:
    sub_1D5D5FDA4(v14, v38);
    sub_1D5D5FDA4(v37, v13);
    sub_1D5C5D428(v14, v38);
    sub_1D5C5D428(v37, v13);
    return 0;
  }

  v12 = 2;
  sub_1D5D5FDA4(v39, 2uLL);
  sub_1D5D5FDA4(v37, 2uLL);
LABEL_35:
  sub_1D5C5D428(v14, v12);
  if ((sub_1D633E44C(v35, v34) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D633E5BC(v33, v32) & 1) == 0)
  {
    return 0;
  }

  sub_1D634F2BC(v31, v30);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D5BFC390(v29, v28) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D633BCCC(v27, v26) & 1) == 0)
  {
    return 0;
  }

  sub_1D63491BC(v25, v24);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v43[0] = v23;
  v42 = v22;
  if ((_s8NewsFeed25FormatContentSizeCategoryO2eeoiySbAC_ACtFZ_0(v43, &v42) & 1) == 0)
  {
    return 0;
  }

  return sub_1D635A518(v21, v20);
}

unint64_t sub_1D6CA0438(uint64_t a1)
{
  result = sub_1D5B4A54C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CA0470()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D6CA04CC(uint64_t a1, void *a2, uint64_t a3)
{
  result = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  v55 = *(a3 + 16);
  if (!v55)
  {
    return result;
  }

  v5 = 0;
  v54 = a3 + 32;
  v6 = a1 + 56;
  v7 = *MEMORY[0x1E69DB648];
  v8 = *MEMORY[0x1E69DB978];
  v9 = *MEMORY[0x1E69DB650];
  v52 = *MEMORY[0x1E69DB600];
  while (1)
  {
    v10 = (v54 + 32 * v5);
    v11 = *v10;
    v12 = v10[1];
    v14 = v10[2];
    v13 = v10[3];
    if (*(a1 + 16))
    {
      v15 = sub_1D72649FC();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if ((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (*(*(a1 + 48) + 8 * v17) != v5)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        MEMORY[0x1DA6F97E0](v11, v12, v14, v13);

        sub_1D6CA158C(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7279970;
        *(inited + 32) = v7;
        v39 = objc_opt_self();
        v40 = v7;
        v41 = [v39 monospacedSystemFontOfSize:12.0 weight:v8];
        v42 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
        *(inited + 40) = v41;
        *(inited + 64) = v42;
        *(inited + 72) = v9;
        v43 = objc_opt_self();
        v44 = v9;
        v45 = [v43 labelColor];
        v46 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
        *(inited + 80) = v45;
        *(inited + 104) = v46;
        *(inited + 112) = v52;
        *(inited + 144) = v46;
        *(inited + 120) = a2;
        v47 = v52;
        v48 = a2;
        sub_1D5C09CEC(inited);
        swift_setDeallocating();
        sub_1D5C09DD4(0);
        swift_arrayDestroy();
        v49 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v50 = sub_1D726203C();

        type metadata accessor for Key(0);
        sub_1D5C09E68();
        v51 = sub_1D7261D2C();

        [v49 initWithString:v50 attributes:v51];

        goto LABEL_13;
      }
    }

LABEL_8:

    MEMORY[0x1DA6F97E0](v11, v12, v14, v13);

    v58[0] = v7;
    v19 = objc_opt_self();
    v20 = v7;
    v21 = [v19 monospacedSystemFontOfSize:12.0 weight:v8];
    v58[4] = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
    v59[0] = v9;
    v58[1] = v21;
    v22 = objc_opt_self();
    v23 = v9;
    v24 = [v22 labelColor];
    v59[4] = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
    v59[1] = v24;
    sub_1D5C09D34(0);
    v25 = sub_1D726412C();
    sub_1D6CA15F0(v58, &v56);
    v26 = v56;
    result = sub_1D5BAA7D4(v56);
    if (v27)
    {
      break;
    }

    *(v25 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v25[6] + 8 * result) = v26;
    result = sub_1D5B7C390(v57, (v25[7] + 32 * result));
    v28 = v25[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_20;
    }

    v25[2] = v30;
    sub_1D6CA15F0(v59, &v56);
    v31 = v56;
    result = sub_1D5BAA7D4(v56);
    if (v32)
    {
      break;
    }

    *(v25 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v25[6] + 8 * result) = v31;
    result = sub_1D5B7C390(v57, (v25[7] + 32 * result));
    v33 = v25[2];
    v29 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v29)
    {
      goto LABEL_20;
    }

    v25[2] = v34;
    sub_1D5C09DD4(0);
    swift_arrayDestroy();
    v35 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v36 = sub_1D726203C();

    type metadata accessor for Key(0);
    sub_1D5C09E68();
    v37 = sub_1D7261D2C();

    [v35 initWithString:v36 attributes:v37];

LABEL_13:
    MEMORY[0x1DA6F9CE0]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    if (++v5 == v55)
    {
      return v60;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D6CA0ABC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6CA0B50(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_71;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v5 = *(a1 + 16);
      result = MEMORY[0x1E69E7CC0];
      if (!v5)
      {
        return result;
      }

      v35 = MEMORY[0x1E69E7CC0];
      sub_1D7263ECC();
      if (v4)
      {
        v7 = sub_1D7263BFC();
      }

      else
      {
        v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
        __break(1u);
LABEL_75:
        result = swift_unknownObjectRelease();
        __break(1u);
        return result;
      }

      v8 = 0;
      v33 = a1 + 32;
      v31 = v5;
      v30 = v4;
      while (v8 != v5)
      {
        v12 = (v33 + 16 * v8);
        a1 = *v12 - 5;
        if (__OFSUB__(*v12, 5))
        {
          goto LABEL_60;
        }

        v13 = v12[1];
        v14 = __OFADD__(v13, 5);
        v15 = v13 + 5;
        if (v14)
        {
          goto LABEL_61;
        }

        v16 = a1 & ~(a1 >> 63);
        if (v32 >= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v32;
        }

        if (v17 < v16)
        {
          goto LABEL_62;
        }

        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_63;
        }

        if (v4)
        {
          if (sub_1D7263BFC() < v16)
          {
            goto LABEL_64;
          }

          v19 = sub_1D7263BFC();
        }

        else
        {
          v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 > v19)
          {
            goto LABEL_64;
          }
        }

        if (v19 < v18)
        {
          goto LABEL_65;
        }

        if (v18 < 0)
        {
          goto LABEL_66;
        }

        if ((a2 & 0xC000000000000001) == 0)
        {
          goto LABEL_31;
        }

        if (a1 > v18)
        {
          goto LABEL_67;
        }

        if (v16 != v18)
        {
          if (v16 >= v18)
          {
            goto LABEL_70;
          }

          sub_1D5B5A498(0, &qword_1EDF3C730, 0x1E696AAB0);

          v20 = a1 & ~(a1 >> 63);
          do
          {
            v21 = v20 + 1;
            sub_1D7263DAC();
            v20 = v21;
          }

          while (v18 != v21);
        }

        else
        {
LABEL_31:
        }

        if (v4)
        {

          sub_1D72640EC();
          a1 = v27;
          v34 = v17;
          if ((v27 & 1) == 0)
          {
            v25 = v27 >> 1;
            v23 = v22;
            v26 = (v27 >> 1) - v22;
            a1 = __OFSUB__(v27 >> 1, v22);
            swift_unknownObjectRetain();
            if (a1)
            {
              goto LABEL_68;
            }

            if (v26)
            {
              goto LABEL_49;
            }

LABEL_9:
            swift_unknownObjectRelease();
            v9 = MEMORY[0x1E69E7CC0];
LABEL_10:
            v5 = v31;
            v10 = v34;
            goto LABEL_11;
          }
        }

        else
        {
          v22 = a1 & ~(a1 >> 63);
          a1 = (2 * v18) | 1;
          v34 = v17;
        }

        v23 = v22;
        sub_1D72647AC();
        swift_unknownObjectRetain_n();
        v24 = swift_dynamicCastClass();
        if (!v24)
        {
          swift_unknownObjectRelease();
          v24 = MEMORY[0x1E69E7CC0];
        }

        v4 = *(v24 + 16);

        v25 = a1 >> 1;
        v26 = (a1 >> 1) - v23;
        if (__OFSUB__(a1 >> 1, v23))
        {
          goto LABEL_69;
        }

        if (v4 != v26)
        {
          swift_unknownObjectRelease();
          v4 = v30;
          if (!v26)
          {
            goto LABEL_9;
          }

LABEL_49:
          if (v26 < 1)
          {
            v9 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            sub_1D5E42B34();
            v9 = swift_allocObject();
            v28 = _swift_stdlib_malloc_size(v9);
            v29 = v28 - 32;
            if (v28 < 32)
            {
              v29 = v28 - 25;
            }

            v9[2] = v26;
            v9[3] = (2 * (v29 >> 3)) | 1;
          }

          swift_unknownObjectRelease();
          if (v23 == v25)
          {
            goto LABEL_75;
          }

          sub_1D5B5A498(0, &qword_1EDF3C730, 0x1E696AAB0);
          swift_arrayInitWithCopy();
          goto LABEL_10;
        }

        v9 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v4 = v30;
        v5 = v31;
        v10 = v34;
        if (v9)
        {
          goto LABEL_12;
        }

        v9 = MEMORY[0x1E69E7CC0];
LABEL_11:
        swift_unknownObjectRelease();
LABEL_12:
        ++v8;
        type metadata accessor for DebugFormatUploadDiffHunk();
        v11 = swift_allocObject();
        v11[3] = v16;
        v11[4] = v10;
        v11[2] = v9;
        sub_1D7263E9C();
        a1 = *(v35 + 16);
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
        if (v8 == v5)
        {
          return v35;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      ;
    }

    while (sub_1D7263BFC());
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D6CA0F94(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1D5E3E824(v5, v4);
  v6 = sub_1D60DA9EC(v5, v4);
  if (!v7)
  {
    v38 = v5;
    v39 = v4;
    sub_1D5E3E824(v5, v4);
    sub_1D6CA149C();
    if (swift_dynamicCast())
    {
      sub_1D5B7DDE8(&v35, &v40);
      __swift_project_boxed_opaque_existential_1(&v40, v42);
      if (sub_1D726415C())
      {
        sub_1D5B952F8(v5, v4);
        __swift_project_boxed_opaque_existential_1(&v40, v42);
        sub_1D726414C();
        v8 = *(&v35 + 1);
        v9 = v35;
        __swift_destroy_boxed_opaque_existential_1(&v40);
        goto LABEL_9;
      }

      __swift_destroy_boxed_opaque_existential_1(&v40);
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      sub_1D6CA1500(&v35, 0);
    }

    v6 = sub_1D60DA7C8(v5, v4);
  }

  v9 = v6;
  v8 = v7;
  sub_1D5B952F8(v5, v4);
LABEL_9:
  v10 = (a1 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteData);
  v11 = *(a1 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteData + 8);
  if (v11 >> 60 != 15)
  {
    v14 = *v10;
    sub_1D5E3E824(*v10, *(a1 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteData + 8));
    sub_1D5E3E824(v14, v11);
    v15 = sub_1D60DA9EC(v14, v11);
    if (v16)
    {
      v12 = v15;
      v13 = v16;
      sub_1D5B952E4(v14, v11);
    }

    else
    {
      v38 = v14;
      v39 = v11;
      sub_1D5E3E824(v14, v11);
      sub_1D6CA149C();
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(&v35, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, v42);
        v17 = sub_1D726415C();
        sub_1D5B952E4(v14, v11);
        if (v17)
        {
          __swift_project_boxed_opaque_existential_1(&v40, v42);
          sub_1D726414C();
          sub_1D5B952E4(v14, v11);
          v13 = *(&v35 + 1);
          v12 = v35;
          __swift_destroy_boxed_opaque_existential_1(&v40);
          goto LABEL_20;
        }

        __swift_destroy_boxed_opaque_existential_1(&v40);
      }

      else
      {
        sub_1D5B952E4(v14, v11);
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        sub_1D6CA1500(&v35, 0);
      }

      v12 = sub_1D60DA7C8(v14, v11);
      v13 = v18;
    }

    sub_1D5B952E4(v14, v11);
    goto LABEL_20;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
LABEL_20:
  v40 = v9;
  v41 = v8;
  sub_1D5BF4D9C();
  v19 = sub_1D7263ACC();

  v40 = v12;
  v41 = v13;
  v20 = sub_1D7263ACC();

  v21 = objc_opt_self();
  v22 = [v21 systemGreenColor];
  v23 = [v22 colorWithAlphaComponent_];

  v24 = [v21 systemRedColor];
  v25 = [v24 colorWithAlphaComponent_];

  v27 = sub_1D6CA04CC(v26, v23, v19);

  v29 = sub_1D6CA04CC(v28, v25, v20);

  v2[2] = a1;

  v31 = sub_1D6CA0B50(v30, v27);

  v2[3] = v31;

  v33 = sub_1D6CA0B50(v32, v29);

  v2[4] = v33;
  return v2;
}

unint64_t sub_1D6CA149C()
{
  result = qword_1EC883708;
  if (!qword_1EC883708)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC883708);
  }

  return result;
}

uint64_t sub_1D6CA1500(uint64_t a1, __n128 a2)
{
  sub_1D6CA158C(0, &qword_1EC89A1E0, sub_1D6CA149C, MEMORY[0x1E69E6720]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6CA158C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6CA15F0(uint64_t a1, uint64_t a2)
{
  sub_1D5C09DD4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SportsEventStatusResponseEmbed(uint64_t a1)
{
  result = qword_1EDF099D8;
  if (!qword_1EDF099D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CA16C8(uint64_t a1)
{
  result = type metadata accessor for SportsDataVisualizationResponseEventStatus(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D6CA1744(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CA1EBC(0, &qword_1EDF03930, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for SportsEventStatusResponseEmbed(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA1D44();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = v21;
    v17 = v23;
    LOBYTE(v22[0]) = 0;
    *v15 = sub_1D72642BC();
    v15[1] = v18;
    v19 = v18;
    sub_1D5B68374(a1, v22);
    SportsDataVisualizationResponseEventStatus.init(from:)(v22, v17);
    (*(v16 + 8))(v11, v8);
    sub_1D6CA1D98(v17, v15 + *(v12 + 20));
    sub_1D6CA1DFC(v15, v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D6CA1E60(v15);
  }
}

uint64_t sub_1D6CA19E8(void *a1, __n128 a2)
{
  sub_1D6CA1EBC(0, &qword_1EC894708, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA1D44();
  sub_1D7264B5C();
  v11[15] = 0;
  sub_1D72643FC();
  if (!v2)
  {
    type metadata accessor for SportsEventStatusResponseEmbed(0);
    v11[14] = 1;
    type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
    sub_1D6CA1F20();
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D6CA1B80()
{
  if (*v0)
  {
    return 0x737574617473;
  }

  else
  {
    return 0x6163696E6F6E6163;
  }
}

void sub_1D6CA1BC0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D6CA1C9C(uint64_t a1)
{
  v2 = sub_1D6CA1D44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CA1CD8(uint64_t a1)
{
  v2 = sub_1D6CA1D44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6CA1D44()
{
  result = qword_1EDF09A00;
  if (!qword_1EDF09A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09A00);
  }

  return result;
}

uint64_t sub_1D6CA1D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CA1DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventStatusResponseEmbed(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CA1E60(uint64_t a1)
{
  v2 = type metadata accessor for SportsEventStatusResponseEmbed(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6CA1EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CA1D44();
    v7 = a3(a1, &type metadata for SportsEventStatusResponseEmbed.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6CA1F20()
{
  result = qword_1EDF06230;
  if (!qword_1EDF06230)
  {
    type metadata accessor for SportsDataVisualizationResponseEventStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06230);
  }

  return result;
}

unint64_t sub_1D6CA1F8C()
{
  result = qword_1EC894710;
  if (!qword_1EC894710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894710);
  }

  return result;
}

unint64_t sub_1D6CA1FE4()
{
  result = qword_1EDF099F0;
  if (!qword_1EDF099F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF099F0);
  }

  return result;
}

unint64_t sub_1D6CA203C()
{
  result = qword_1EDF099F8;
  if (!qword_1EDF099F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF099F8);
  }

  return result;
}

uint64_t SportsRecord.wins.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SportsRecord.losses.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SportsRecord.ties.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SportsRecord.rank.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
}

uint64_t SportsRecord.recordDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v6)
  {
    v8 = objc_opt_self();

    v9 = [v8 bundleForClass_];
    sub_1D725811C();

    sub_1D5C384A0(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7279970;
    v11 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1D5B7E2C0();
    *(v10 + 32) = v2;
    *(v10 + 40) = v1;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    *(v10 + 72) = v4;
    *(v10 + 80) = v3;
    *(v10 + 136) = v11;
    *(v10 + 144) = v12;
    *(v10 + 112) = v5;
    *(v10 + 120) = v6;
  }

  else
  {
    v13 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    sub_1D5C384A0(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7270C10;
    v15 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1D5B7E2C0();
    *(v14 + 32) = v2;
    *(v14 + 40) = v1;
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 64) = v16;
    *(v14 + 72) = v4;
    *(v14 + 80) = v3;
  }

  v17 = sub_1D72620BC();

  return v17;
}

uint64_t sub_1D6CA2394()
{
  v1 = 1936615799;
  v2 = 1936025972;
  if (*v0 != 2)
  {
    v2 = 1802396018;
  }

  if (*v0)
  {
    v1 = 0x736573736F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6CA23F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6CA2ECC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6CA241C(uint64_t a1)
{
  v2 = sub_1D6CA2BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CA2458(uint64_t a1)
{
  v2 = sub_1D6CA2BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsRecord.encode(to:)(void *a1)
{
  sub_1D6CA2C94(0, &qword_1EC894718, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17 - v7;
  v9 = v1[2];
  v23 = v1[3];
  v24 = v9;
  v10 = v1[4];
  v21 = v1[5];
  v22 = v10;
  v11 = v1[6];
  v19 = v1[7];
  v20 = v11;
  v18 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA2BEC();
  sub_1D7264B5C();
  LOBYTE(v26) = 0;
  v12 = v25;
  sub_1D72643FC();
  if (!v12)
  {
    v14 = v19;
    v13 = v20;
    v15 = v18;
    LOBYTE(v26) = 1;
    sub_1D72643FC();
    LOBYTE(v26) = 2;
    sub_1D726437C();
    v26 = v13;
    v27 = v14;
    v28 = v15;
    v29 = 3;
    sub_1D6CA2C40();

    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

void SportsRecord.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6CA2C94(0, &qword_1EC894730, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA2BEC();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    v11 = sub_1D72642BC();
    v30 = v12;
    LOBYTE(v36[0]) = 1;
    v13 = sub_1D72642BC();
    v29 = v14;
    v27 = v13;
    LOBYTE(v36[0]) = 2;
    v26 = sub_1D726422C();
    v28 = v15;
    v39 = 3;
    sub_1D6CA2CF8();
    sub_1D726427C();
    (*(v7 + 8))(v10, v6);
    v25 = v37;
    v16 = v38;
    v24 = *(&v37 + 1);
    v17 = v30;
    *&v31 = v11;
    *(&v31 + 1) = v30;
    v18 = v27;
    v19 = v29;
    *&v32 = v27;
    *(&v32 + 1) = v29;
    v20 = v28;
    *&v33 = v26;
    *(&v33 + 1) = v28;
    v34 = v37;
    v35 = v38;
    *(a2 + 64) = v38;
    v21 = v32;
    *a2 = v31;
    *(a2 + 16) = v21;
    v22 = v34;
    *(a2 + 32) = v33;
    *(a2 + 48) = v22;
    sub_1D6CA2D4C(&v31, v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36[0] = v11;
    v36[1] = v17;
    v36[2] = v18;
    v36[3] = v19;
    v36[4] = v26;
    v36[5] = v20;
    v36[6] = v25;
    v36[7] = v24;
    v36[8] = v16;
    sub_1D6CA2D84(v36);
  }
}

BOOL _s8NewsFeed12SportsRecordV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[8];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v15 = a2[6];
  v16 = a1[6];
  v11 = a2[8];
  v13 = a2[7];
  v14 = a1[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v11)
    {
      return v16 == v15 && (v14 == v13 && v6 == v11 || (sub_1D72646CC() & 1) != 0);
    }

    goto LABEL_22;
  }

  if (v11)
  {
LABEL_22:

    return 0;
  }

  return 1;
}

unint64_t sub_1D6CA2BEC()
{
  result = qword_1EC894720;
  if (!qword_1EC894720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894720);
  }

  return result;
}

unint64_t sub_1D6CA2C40()
{
  result = qword_1EC894728;
  if (!qword_1EC894728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894728);
  }

  return result;
}

void sub_1D6CA2C94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CA2BEC();
    v7 = a3(a1, &type metadata for SportsRecord.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6CA2CF8()
{
  result = qword_1EC894738;
  if (!qword_1EC894738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894738);
  }

  return result;
}

unint64_t sub_1D6CA2DC8()
{
  result = qword_1EC894740;
  if (!qword_1EC894740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894740);
  }

  return result;
}

unint64_t sub_1D6CA2E20()
{
  result = qword_1EC894748;
  if (!qword_1EC894748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894748);
  }

  return result;
}

unint64_t sub_1D6CA2E78()
{
  result = qword_1EC894750;
  if (!qword_1EC894750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894750);
  }

  return result;
}

uint64_t sub_1D6CA2ECC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936615799 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736573736F6CLL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1936025972 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id sub_1D6CA302C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_1EDF145B0 = v0;
  return result;
}

id sub_1D6CA30B4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  result = [v0 setUnitsStyle_];
  qword_1EDF14598 = v0;
  return result;
}

void sub_1D6CA3194(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726579616C70 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6CA321C(uint64_t a1)
{
  v2 = sub_1D6CA341C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CA3258(uint64_t a1)
{
  v2 = sub_1D6CA341C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsRoster.encode(to:)(void *a1)
{
  sub_1D6CA371C(0, &qword_1EC894758, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA341C();
  sub_1D7264B5C();
  sub_1D61B90AC(0);
  sub_1D6CA37CC(&qword_1EC894760, sub_1D61B90AC, MEMORY[0x1E69D6558]);
  sub_1D726443C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6CA341C()
{
  result = qword_1EDF11FC0;
  if (!qword_1EDF11FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11FC0);
  }

  return result;
}

uint64_t SportsRoster.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D61B90AC(0);
  v5 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CA371C(0, &qword_1EDF03AC8, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for SportsRoster(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA341C();
  sub_1D7264B0C();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_1D6CA37CC(&qword_1EDF17C38, sub_1D61B90AC, MEMORY[0x1E69D6560]);
    sub_1D726431C();
    (*(v17 + 8))(v12, v9);
    (*(v18 + 32))(v16, v24, v5);
    sub_1D6CA3814(v16, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6CA371C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CA341C();
    v7 = a3(a1, &type metadata for SportsRoster.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for SportsRoster(uint64_t a1)
{
  result = qword_1EDF11F68;
  if (!qword_1EDF11F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CA37CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6CA3814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsRoster(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CA3890(void *a1)
{
  sub_1D6CA371C(0, &qword_1EC894758, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA341C();
  sub_1D7264B5C();
  sub_1D61B90AC(0);
  sub_1D6CA37CC(&qword_1EC894760, sub_1D61B90AC, MEMORY[0x1E69D6558]);
  sub_1D726443C();
  return (*(v4 + 8))(v7, v3);
}

void sub_1D6CA3A40(uint64_t a1)
{
  sub_1D61B90AC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1D6CA3AC0()
{
  result = qword_1EC894768;
  if (!qword_1EC894768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894768);
  }

  return result;
}

unint64_t sub_1D6CA3B18()
{
  result = qword_1EDF11FB0;
  if (!qword_1EDF11FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11FB0);
  }

  return result;
}

unint64_t sub_1D6CA3B70()
{
  result = qword_1EDF11FB8;
  if (!qword_1EDF11FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11FB8);
  }

  return result;
}

Swift::Bool __swiftcall IssueCoverView.prepareForReuse(identifier:)(Swift::String_optional identifier)
{
  object = identifier.value._object;
  countAndFlagsBits = identifier.value._countAndFlagsBits;
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier];
  v5 = *&v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier + 8];
  if (v5)
  {
    if (!object || (*v4 == identifier.value._countAndFlagsBits ? (v6 = v5 == object) : (v6 = 0), !v6 && (sub_1D72646CC() & 1) == 0))
    {
LABEL_13:
      *v4 = countAndFlagsBits;
      v4[1] = object;

      v12 = &v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_lastPreparedBounds];
      *v12 = 0u;
      *(v12 + 1) = 0u;
      v12[32] = 1;
      if (v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] != 1)
      {
        v21 = sub_1D6CA3F00();
        sub_1D725FBBC();

LABEL_25:
        LOBYTE(v11) = 1;
        return v11;
      }

      v13 = *&v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView];
      *&v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView] = 0;

      v14 = sub_1D6CA3F84();
      v15 = [v14 subviews];

      sub_1D5E2B010();
      v16 = sub_1D726267C();

      if (v16 >> 62)
      {
        v11 = sub_1D7263BFC();
        v17 = v11;
        if (v11)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
LABEL_16:
          if (v17 < 1)
          {
            __break(1u);
            return v11;
          }

          for (i = 0; i != v17; ++i)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1DA6FB460](i, v16);
            }

            else
            {
              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            [v19 removeFromSuperview];
          }
        }
      }

      goto LABEL_25;
    }
  }

  else if (object)
  {
    goto LABEL_13;
  }

  [v1 bounds];
  if ((v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_lastPreparedBounds + 32] & 1) != 0 || !CGRectEqualToRect(*&v7, *&v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_lastPreparedBounds]))
  {
    goto LABEL_13;
  }

  LOBYTE(v11) = 0;
  return v11;
}

id IssueCoverView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

Swift::Void __swiftcall IssueCoverView.setMultiSelectionEditing(_:selected:)(Swift::Bool _, Swift::Bool selected)
{
  v4 = [v2 layer];
  v5 = [v2 traitCollection];
  [v5 displayScale];
  v7 = v6;

  [v4 setRasterizationScale_];
  v8 = [v2 layer];
  [v8 setShouldRasterize_];
}

id sub_1D6CA3F00()
{
  v1 = OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D6CA3F84()
{
  v1 = OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D6CA4008(char a1, char a2)
{
  if (a1 == a2)
  {
    return;
  }

  if (!a1)
  {
    v3 = a2;
    v4 = sub_1D6CA3F00();
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v3 = a2;
    v4 = sub_1D6CA3F84();
LABEL_6:
    v5 = v4;
    [v4 removeFromSuperview];

    a2 = v3;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      return;
    }

    v6 = sub_1D6CA3F84();
    [v2 bounds];
    [v6 setFrame_];

    v7 = &v2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView];
  }

  else
  {
    v8 = sub_1D6CA3F00();
    [v2 bounds];
    [v8 setFrame_];

    v7 = &v2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView];
    [*&v2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView] setContentMode_];
  }

  v9 = *v7;

  [v2 addSubview_];
}

id IssueCoverView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView] = 0;
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_lastPreparedBounds];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v4[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] = 2;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setAccessibilityIgnoresInvertColors_];
  return v12;
}

id IssueCoverView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall IssueCoverView.layoutSubviews()()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  if (!v0[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content])
  {
    v4 = sub_1D6CA3F00();
    [v1 bounds];
    goto LABEL_6;
  }

  if (v0[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] == 1)
  {
    v2 = sub_1D6CA3F84();
    [v1 bounds];
    sub_1D726344C();

    v3 = *&v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView];
    if (v3)
    {
      v4 = v3;
      [v1 bounds];
LABEL_6:
      sub_1D726344C();
    }
  }
}

id IssueCoverView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D6CA44F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  return sub_1D725F07C();
}

void sub_1D6CA4578(char a1)
{
  v3 = *v1;
  v4 = [v3 layer];
  v5 = [v3 traitCollection];
  [v5 displayScale];
  v7 = v6;

  [v4 setRasterizationScale_];
  v8 = [v3 layer];
  [v8 setShouldRasterize_];
}

void sub_1D6CA465C()
{
  sub_1D6CA4934(&qword_1EC8947B0, &protocol conformance descriptor for IssueCoverView);

  JUMPOUT(0x1DA6F6FC0);
}

void _s8NewsFeed14IssueCoverViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView_lastPreparedBounds;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content) = 2;
  sub_1D726402C();
  __break(1u);
}

double sub_1D6CA4770()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView);
  if (v1)
  {
    v2 = *(v1 + qword_1EDF11060);
    swift_beginAccess();
    v4 = *(v2 + 17);
    *(v2 + 17) = 1;
    if (v4 > 0x3F || (v4 & 1) == 0)
    {

      LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
    }
  }

  return result;
}

double sub_1D6CA47F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView);
  if (v1)
  {
    v2 = *(v1 + qword_1EDF11060);
    swift_beginAccess();
    v4 = *(v2 + 17);
    *(v2 + 17) = 0;
    if (v4 > 0x3F || (v4 & 1) != 0)
    {

      LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
    }
  }

  return result;
}

unint64_t sub_1D6CA48E0()
{
  result = qword_1EC8947A8;
  if (!qword_1EC8947A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8947A8);
  }

  return result;
}

uint64_t sub_1D6CA4934(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IssueCoverView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6CA4984()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_1D725811C();
  v5 = v4;

  v6 = [v1 bundleForClass_];
  v7 = sub_1D725811C();
  v9 = v8;

  qword_1EDFFC5B8 = 0xD000000000000013;
  unk_1EDFFC5C0 = 0x80000001D73EFFD0;
  qword_1EDFFC5C8 = v3;
  unk_1EDFFC5D0 = v5;
  qword_1EDFFC5D8 = v7;
  unk_1EDFFC5E0 = v9;
  qword_1EDFFC5E8 = MEMORY[0x1E69E7CC0];
}

void sub_1D6CA4B08()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_1D725811C();
  v5 = v4;

  v6 = [v1 bundleForClass_];
  v7 = sub_1D725811C();
  v9 = v8;

  qword_1EC9BABA8 = 0xD000000000000013;
  unk_1EC9BABB0 = 0x80000001D73EFF00;
  qword_1EC9BABB8 = v3;
  unk_1EC9BABC0 = v5;
  qword_1EC9BABC8 = v7;
  unk_1EC9BABD0 = v9;
  qword_1EC9BABD8 = MEMORY[0x1E69E7CC0];
}

void sub_1D6CA4C88()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_1D725811C();
  v5 = v4;

  v6 = [v1 bundleForClass_];
  v7 = sub_1D725811C();
  v9 = v8;

  qword_1EC9BABE0 = 0xD000000000000014;
  *algn_1EC9BABE8 = 0x80000001D73EFDD0;
  qword_1EC9BABF0 = v3;
  unk_1EC9BABF8 = v5;
  qword_1EC9BAC00 = v7;
  unk_1EC9BAC08 = v9;
  qword_1EC9BAC10 = MEMORY[0x1E69E7CC0];
}

void sub_1D6CA4E08()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_1D725811C();
  v5 = v4;

  v6 = [v1 bundleForClass_];
  v7 = sub_1D725811C();
  v9 = v8;

  qword_1EC9BAC18 = 0xD000000000000016;
  unk_1EC9BAC20 = 0x80000001D73EFCD0;
  qword_1EC9BAC28 = v3;
  unk_1EC9BAC30 = v5;
  qword_1EC9BAC38 = v7;
  unk_1EC9BAC40 = v9;
  qword_1EC9BAC48 = MEMORY[0x1E69E7CC0];
}

void sub_1D6CA4F88()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_1D725811C();
  v5 = v4;

  v6 = [v1 bundleForClass_];
  v7 = sub_1D725811C();
  v9 = v8;

  qword_1EC9BAC50 = 0xD000000000000017;
  *algn_1EC9BAC58 = 0x80000001D73EFBB0;
  qword_1EC9BAC60 = v3;
  unk_1EC9BAC68 = v5;
  qword_1EC9BAC70 = v7;
  unk_1EC9BAC78 = v9;
  qword_1EC9BAC80 = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6CA5108@<X0>(void *a1@<X8>)
{
  if (qword_1EC87DA60 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = unk_1EC9BABB0;
  v2 = qword_1EC9BABB8;
  v3 = unk_1EC9BABC0;
  v4 = qword_1EC9BABC8;
  v5 = unk_1EC9BABD0;
  v6 = qword_1EC9BABD8;
  *a1 = qword_1EC9BABA8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t sub_1D6CA51B4@<X0>(void *a1@<X8>)
{
  if (qword_1EC87DA68 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = *algn_1EC9BABE8;
  v2 = qword_1EC9BABF0;
  v3 = unk_1EC9BABF8;
  v4 = qword_1EC9BAC00;
  v5 = unk_1EC9BAC08;
  v6 = qword_1EC9BAC10;
  *a1 = qword_1EC9BABE0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t sub_1D6CA5260@<X0>(void *a1@<X8>)
{
  if (qword_1EC87DA70 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = unk_1EC9BAC20;
  v2 = qword_1EC9BAC28;
  v3 = unk_1EC9BAC30;
  v4 = qword_1EC9BAC38;
  v5 = unk_1EC9BAC40;
  v6 = qword_1EC9BAC48;
  *a1 = qword_1EC9BAC18;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t sub_1D6CA530C@<X0>(void *a1@<X8>)
{
  if (qword_1EC87DA78 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = *algn_1EC9BAC58;
  v2 = qword_1EC9BAC60;
  v3 = unk_1EC9BAC68;
  v4 = qword_1EC9BAC70;
  v5 = unk_1EC9BAC78;
  v6 = qword_1EC9BAC80;
  *a1 = qword_1EC9BAC50;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t FeedModel<>.init(model:context:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v19[0] = a5;
  v19[1] = MEMORY[0x1E69E7CA8] + 8;
  v19[2] = a6;
  v19[3] = a7;
  v15 = type metadata accessor for FeedModel(0, v19);
  result = sub_1D5C25D20(a2, a8 + v15[13]);
  v17 = (a8 + v15[14]);
  *v17 = a3;
  v17[1] = a4;
  v18 = (a8 + v15[16]);
  *v18 = sub_1D5C00104;
  v18[1] = 0;
  return result;
}

uint64_t FeedModel.namespace.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t (*FeedModel<>.copy(withNew:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>))(uint64_t a1, uint64_t a2)
{
  v28 = a4;
  v29 = a3;
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, a1, v15, v18);
  sub_1D5BE6814(v4 + *(a2 + 52), v14);
  v22 = (v4 + *(a2 + 56));
  v24 = *v22;
  v23 = v22[1];
  (*(v8 + 16))(v10, v4 + *(a2 + 60), v7);
  v25 = *(a2 + 32);
  v26 = *(a2 + 40);

  return FeedModel<>.init(model:context:namespace:metadata:)(v20, v14, v24, v23, v10, v15, v7, v25, v28, v26, v29);
}

uint64_t FeedModel<>.copy(withNew:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1, v11, v14);
  sub_1D5BE6814(v3 + *(a2 + 52), v10);
  FeedModel<>.init(model:context:namespace:)(v16, v10, *(v3 + *(a2 + 56)), *(v3 + *(a2 + 56) + 8), v11, *(a2 + 32), *(a2 + 40), a3);
}

uint64_t sub_1D6CA5848(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v46 = v7;
  v8 = *(v7 + 84);
  v9 = *(sub_1D725891C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = v12 - 1;
  if ((v12 - 1) <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v12 - 1;
  }

  if (v14 <= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(*(a3 + 24) - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  v20 = *(v16 + 80);
  if (v15 <= v17)
  {
    v21 = *(v16 + 84);
  }

  else
  {
    v21 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v18 | 7;
  v24 = v19 + 9;
  v25 = (v18 | 7) + *(v7 + 64);
  v26 = ((((((((((v18 + 8) & ~(v18 | 7)) + ((((v19 + 9 + ((v18 + 8) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v27 = *(v16 + 64) + 7;
  if (v21 < a2)
  {
    v28 = ((v27 + ((v20 + (v25 & ~v22) + v26 + 16) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v29 = a2 - v21;
    v30 = v28 & 0xFFFFFFF8;
    if ((v28 & 0xFFFFFFF8) != 0)
    {
      v31 = 2;
    }

    else
    {
      v31 = v29 + 1;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v34 = *(a1 + v28);
        if (!v34)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v34 = *(a1 + v28);
        if (!v34)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      if (!v33)
      {
        goto LABEL_36;
      }

      v34 = *(a1 + v28);
      if (!v34)
      {
        goto LABEL_36;
      }
    }

    v36 = v34 - 1;
    if (v30)
    {
      v36 = 0;
      v37 = *a1;
    }

    else
    {
      v37 = 0;
    }

    return v21 + (v37 | v36) + 1;
  }

LABEL_36:
  if (v8 == v21)
  {
    v38 = *(v46 + 48);

    return v38(a1, v8, v6);
  }

  v39 = ~v22;
  v40 = ((a1 + v25) & ~v22);
  if (v14 == v21)
  {
    if (v13 < 0)
    {
      v23 = v18 + 8;
      if (v11 < 0x7FFFFFFF)
      {
        v45 = *((v24 + ((v23 + ((v40 + v23) & v39)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) >> 1;
        if (v45 > 0x80000000)
        {
          v44 = -v45;
        }

        else
        {
          v44 = 0;
        }
      }

      else
      {
        v44 = (*(v10 + 48))((v23 + ((v40 + v23) & v39)) & ~v18);
      }

      if (v44 >= 2)
      {
        return v44 - 1;
      }

      else
      {
        return 0;
      }
    }

    v41 = *v40;
    goto LABEL_45;
  }

  v42 = (v40 + v20 + v26 + 16) & ~v20;
  if (v17 < v15)
  {
    v41 = *((v27 + v42) & 0xFFFFFFFFFFFFFFF8);
LABEL_45:
    if (v41 >= 0xFFFFFFFF)
    {
      LODWORD(v41) = -1;
    }

    return (v41 + 1);
  }

  v43 = *(v16 + 48);

  return v43(v42, v17);
}

void sub_1D6CA5C04(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v57 = v9;
  v10 = *(v9 + 84);
  v11 = *(sub_1D725891C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = v14 - 1;
  if (v14 - 1 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v14 - 1;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(a4 + 24);
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  v21 = *(v9 + 64);
  v22 = *(v11 + 80);
  v23 = *(v11 + 64);
  v24 = *(v19 + 80);
  v25 = *(v19 + 64);
  if (v17 <= v20)
  {
    v26 = *(v19 + 84);
  }

  else
  {
    v26 = v17;
  }

  v27 = v22 | 7;
  v28 = v22 + 8;
  v29 = v23 + 9;
  v30 = ((((v29 + ((v22 + 8) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10;
  v31 = (v22 | 7) + v21;
  v32 = ((((((((v30 + ((v22 + 8) & ~(v22 | 7)) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v33 = v25 + 7;
  v34 = ((v25 + 7 + ((v24 + (v31 & ~(v22 | 7)) + v32 + 16) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v26 >= a3)
  {
    v38 = 0;
    v39 = a2 - v26;
    if (a2 <= v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v35 = a3 - v26;
    if (v34)
    {
      v36 = 2;
    }

    else
    {
      v36 = v35 + 1;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 >= 2)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = a2 - v26;
    if (a2 <= v26)
    {
LABEL_26:
      if (v38 > 1)
      {
        if (v38 != 2)
        {
          *(a1 + v34) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_42;
        }

        *(a1 + v34) = 0;
      }

      else if (v38)
      {
        *(a1 + v34) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_42;
      }

      if (!a2)
      {
        return;
      }

LABEL_42:
      if (v10 == v26)
      {
        v42 = *(v57 + 56);
        v43 = a1;
        v44 = a2;
        v45 = v10;
        v18 = v8;
LABEL_44:

        v42(v43, v44, v45, v18);
        return;
      }

      v46 = ~v27;
      v47 = ((a1 + v31) & ~v27);
      if (v16 == v26)
      {
        if ((v15 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v48 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v48 = (a2 - 1);
          }

          *v47 = v48;
          return;
        }

        v50 = ((v47 + v28) & v46);
        if (v15 < a2)
        {
          v51 = a2 - v14;
          bzero(((v47 + v28) & v46), ((((v29 + ((v22 + 8) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10);
          if (v30 <= 3)
          {
            *v50 = v51;
          }

          else
          {
            *v50 = v51;
          }

          return;
        }

        v53 = a2 - v14;
        if (a2 >= v14)
        {
          bzero(v50, ((((v29 + ((v22 + 8) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10);
          if (v30 <= 3)
          {
            *v50 = v53;
          }

          else
          {
            *v50 = v53;
          }

          return;
        }

        v54 = (a2 + 1);
        v55 = (v50 + v28) & ~v22;
        if (v13 >= 0x7FFFFFFF)
        {
          v56 = *(v12 + 56);

          v56(v55, v54);
          return;
        }

        v49 = ((v29 + v55) & 0xFFFFFFFFFFFFFFF8);
        if ((v54 & 0x80000000) == 0)
        {
          *v49 = 2 * ~a2;
          v49[1] = 0;
          return;
        }

        v52 = (a2 - 0x7FFFFFFF);
      }

      else
      {
        v43 = ((v47 + v24 + v32 + 16) & ~v24);
        if (v20 >= v17)
        {
          v42 = *(v19 + 56);
          v44 = a2;
          v45 = v20;
          goto LABEL_44;
        }

        v49 = ((v43 + v33) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) == 0)
        {
          *v49 = (a2 - 1);
          return;
        }

        v52 = a2 & 0x7FFFFFFF;
      }

      *v49 = v52;
      v49[1] = 0;
      return;
    }
  }

  if (v34)
  {
    v40 = 1;
  }

  else
  {
    v40 = v39;
  }

  if (v34)
  {
    v41 = ~v26 + a2;
    bzero(a1, v34);
    *a1 = v41;
  }

  if (v38 > 1)
  {
    if (v38 == 2)
    {
      *(a1 + v34) = v40;
    }

    else
    {
      *(a1 + v34) = v40;
    }
  }

  else if (v38)
  {
    *(a1 + v34) = v40;
  }
}

void sub_1D6CA6110()
{
  v0 = sub_1D725F64C();
}

void sub_1D6CA6150()
{
  sub_1D6CA63D8(&qword_1EC8947C8, &unk_1D7344F00);

  JUMPOUT(0x1DA6F6FC0);
}

void __swiftcall UIView.moveDebugButton(to:)(UIButton_optional *__return_ptr retstr, UIView *to)
{
  v3 = sub_1D6CA61F4();
  if (v3)
  {
    [(UIView *)to addSubview:v3];
  }
}

void *sub_1D6CA61F4()
{
  v1 = [v0 subviews];
  sub_1D5E2B010();
  v2 = sub_1D726267C();

  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (!__OFSUB__(v3--, 1))
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6FB460](v3, v2);
LABEL_8:
        v6 = v5;
        type metadata accessor for DebugButton();
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          v11 = v7;

          return v11;
        }

        v8 = [v6 subviews];
        v9 = sub_1D726267C();

        if (v9 >> 62)
        {
          v10 = sub_1D7263BFC();
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v10)
        {

          v13 = sub_1D6CA61F4();

          return v13;
        }

        if (!v3)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }

        if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v5 = *(v2 + 32 + 8 * v3);
          goto LABEL_8;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        v3 = sub_1D7263BFC();
        if (!v3)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_22:

  return 0;
}

uint64_t sub_1D6CA63D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugButton();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6CA6418()
{
  result = qword_1EC8947D0;
  if (!qword_1EC8947D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8947D0);
  }

  return result;
}

uint64_t sub_1D6CA646C(char a1)
{
  if (a1)
  {
    return 0x676E696E726157;
  }

  else
  {
    return 0x726F727245;
  }
}

id sub_1D6CA64A0(char a1)
{
  if (a1)
  {
    v1 = objc_allocWithZone(MEMORY[0x1E69DC888]);

    return [v1 initWithRed:0.988235294 green:0.729411765 blue:0.0117647059 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() systemRedColor];

    return v3;
  }
}

uint64_t sub_1D6CA657C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_1D72646CC();
}

unint64_t sub_1D6CA6634()
{
  result = qword_1EC8947D8;
  if (!qword_1EC8947D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8947D8);
  }

  return result;
}

uint64_t sub_1D6CA6688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6CA66D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static FeedPlatform.current.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDF34A20 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1EDF34A28;
  v3 = unk_1EDF34A30;
  *a1 = qword_1EDF34A28;
  a1[1] = v3;

  return sub_1D5B7CD94(v2, v3);
}

uint64_t FeedPlatform.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v8 = sub_1D72646FC();
    v9 = v11;
    v12 = sub_1D726210C();
    v14 = v13;
    v15 = v12 == 0x656E6F6870 && v13 == 0xE500000000000000;
    if (v15 || (v16 = v12, (sub_1D72646CC() & 1) != 0))
    {

      v8 = 0;
      v9 = 1;
    }

    else
    {
      v17 = v16 == 6578544 && v14 == 0xE300000000000000;
      if (v17 || (sub_1D72646CC() & 1) != 0)
      {

        v8 = 0;
        v9 = 2;
      }

      else
      {
        if (v16 == 6513005 && v14 == 0xE300000000000000)
        {
        }

        else
        {
          v18 = sub_1D72646CC();

          if ((v18 & 1) == 0)
          {
            if (qword_1EDF32A58 != -1)
            {
              swift_once();
            }

            v19 = qword_1EDFFCEB0;
            sub_1D5C384A0(0);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_1D7273AE0;
            *(v20 + 56) = MEMORY[0x1E69E6158];
            *(v20 + 64) = sub_1D5B7E2C0();
            *(v20 + 32) = v8;
            *(v20 + 40) = v9;

            v21 = sub_1D7262EDC();
            sub_1D725C30C("Ignoring unknown feed platform with value=%{public}@", 52, 2, &dword_1D5B42000, v19, v21, v20);

            goto LABEL_13;
          }
        }

        v8 = 0;
        v9 = 3;
      }
    }

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v22);
    goto LABEL_6;
  }

  if (qword_1EDF32A58 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDFFCEB0;
  v6 = sub_1D7262EBC();
  sub_1D5C384A0(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  v22[6] = v2;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D5B7E2C0();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_1D725C30C("Failed to decode feed platform due to error=%{public}@", 54, 2, &dword_1D5B42000, v5, v6, v7);

  v8 = 0;
  v9 = 0;
LABEL_6:
  *a2 = v8;
  a2[1] = v9;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *FeedPlatform.encode(to:)(void *result)
{
  if (*(v1 + 8))
  {
    __swift_project_boxed_opaque_existential_1(result, result[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_1D726473C();
    return __swift_destroy_boxed_opaque_existential_1(v2);
  }

  return result;
}

uint64_t FeedPlatform.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 1:
      v3 = 1;
      return MEMORY[0x1DA6FC0B0](v3);
    case 2:
      v3 = 2;
      return MEMORY[0x1DA6FC0B0](v3);
    case 3:
      v3 = 3;
      return MEMORY[0x1DA6FC0B0](v3);
  }

  MEMORY[0x1DA6FC0B0](0);
  if (!v2)
  {
    return sub_1D7264A2C();
  }

  sub_1D7264A2C();

  return sub_1D72621EC();
}

uint64_t FeedPlatform.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D7264A0C();
  switch(v1)
  {
    case 1:
      MEMORY[0x1DA6FC0B0](1);
      break;
    case 2:
      MEMORY[0x1DA6FC0B0](2);
      break;
    case 3:
      MEMORY[0x1DA6FC0B0](3);
      break;
    default:
      MEMORY[0x1DA6FC0B0](0);
      sub_1D7264A2C();
      if (v1)
      {
        sub_1D72621EC();
      }

      break;
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6CA6EA4(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 1:
      v3 = 1;
      return MEMORY[0x1DA6FC0B0](v3);
    case 2:
      v3 = 2;
      return MEMORY[0x1DA6FC0B0](v3);
    case 3:
      v3 = 3;
      return MEMORY[0x1DA6FC0B0](v3);
  }

  MEMORY[0x1DA6FC0B0](0);
  if (!v2)
  {
    return sub_1D7264A2C();
  }

  sub_1D7264A2C();

  return sub_1D72621EC();
}

uint64_t sub_1D6CA6F54(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1D7264A0C();
  switch(v2)
  {
    case 1:
      MEMORY[0x1DA6FC0B0](1);
      break;
    case 2:
      MEMORY[0x1DA6FC0B0](2);
      break;
    case 3:
      MEMORY[0x1DA6FC0B0](3);
      break;
    default:
      MEMORY[0x1DA6FC0B0](0);
      sub_1D7264A2C();
      if (v2)
      {
        sub_1D72621EC();
      }

      break;
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6CA700C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

void *sub_1D6CA7068(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

NewsFeed::FeedOptionList __swiftcall FeedOptionList.init(contentOptions:contentGroupOptions:)(Swift::OpaquePointer contentOptions, Swift::OpaquePointer contentGroupOptions)
{
  v2->_rawValue = contentOptions._rawValue;
  v2[1]._rawValue = contentGroupOptions._rawValue;
  result.contentGroupOptions = contentGroupOptions;
  result.contentOptions = contentOptions;
  return result;
}

uint64_t FeedOptionList.groupItem.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v3;
  a1[1] = v2;
  type metadata accessor for FeedGroupItem(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6CA7124@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v3;
  a1[1] = v2;
  type metadata accessor for FeedGroupItem(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6CA7188(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void _s8NewsFeed20FormatWorkspaceGroupV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1D72646CC() & 1) != 0)
    {
      v6 = *(type metadata accessor for FormatWorkspaceGroup(0) + 24);

      _s8NewsFeed21FormatContentSubgroupV2eeoiySbAC_ACtFZ_0((a1 + v6), (a2 + v6));
    }
  }
}

uint64_t sub_1D6CA7298(uint64_t a1)
{
  result = sub_1D6CA73B4(&qword_1EC8947E0, &protocol conformance descriptor for FormatWorkspaceGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for FormatWorkspaceGroup(uint64_t a1)
{
  result = qword_1EC8947F0;
  if (!qword_1EC8947F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CA7328(void *a1)
{
  a1[1] = sub_1D6CA73B4(&qword_1EC885FB0, &protocol conformance descriptor for FormatWorkspaceGroup);
  a1[2] = sub_1D6CA73B4(&qword_1EC886000, &protocol conformance descriptor for FormatWorkspaceGroup);
  result = sub_1D6CA73B4(&qword_1EC8947E8, &protocol conformance descriptor for FormatWorkspaceGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6CA73B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatWorkspaceGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6CA7420(uint64_t a1)
{
  result = type metadata accessor for FormatContentSubgroup(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *Commands.RemoveIssues.Prompt.__allocating_init(issues:actions:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t Commands.RemoveIssues.Prompt.completion.getter()
{
  v1 = *(v0 + 32);
  sub_1D5DEA510(v1, *(v0 + 40));
  return v1;
}

void *Commands.RemoveIssues.Prompt.init(issues:actions:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t Commands.RemoveIssues.Prompt.Action.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

char *Commands.RemoveIssues.Prompt.description.getter()
{
  v1 = v0;
  sub_1D7263D4C();

  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
    v3 = sub_1D7263BFC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
LABEL_13:
    sub_1D5B58150(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();
    v15 = sub_1D7261F3C();
    v17 = v16;

    MEMORY[0x1DA6F9910](v15, v17);

    MEMORY[0x1DA6F9910](0x6E6F69746361202CLL, 0xEA00000000003D73);
    v18 = MEMORY[0x1DA6F9D20](*(v1 + 24), &type metadata for Commands.RemoveIssues.Prompt.Action);
    MEMORY[0x1DA6F9910](v18);

    MEMORY[0x1DA6F9910](125, 0xE100000000000000);
    return 0x3D7365757373697BLL;
  }

  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1D5BFC364(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v19 = v0;
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6FB460](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 identifier];
      v9 = sub_1D726207C();
      v11 = v10;

      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D5BFC364((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v20 + 16) = v13 + 1;
      v14 = v20 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v3 != v5);
    v1 = v19;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t Commands.RemoveIssues.Prompt.deinit()
{

  sub_1D5B74328(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t Commands.RemoveIssues.Prompt.__deallocating_deinit()
{

  sub_1D5B74328(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6CA7918(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = sub_1D725DC6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v11 = *a2;
  v12 = a1;
  if (v11 != -1)
  {
    swift_once();
  }

  sub_1D5B58150(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D72816C0;
  *(v13 + 32) = v12;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v21[0] = v12;

  v16 = [v15 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05C08 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDF05C10;
  (*(v7 + 104))(v10, *MEMORY[0x1E69D7B40], v6);
  v21[1] = v13;
  swift_allocObject();
  v18 = v17;
  v19 = sub_1D725D3AC();

  return v19;
}

uint64_t static SharingActivity.removeIssuePrompt(issue:actions:)(void *a1, uint64_t a2)
{
  v4 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1D5B58150(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D72816C0;
  *(v6 + 32) = a1;
  type metadata accessor for Commands.RemoveIssues.Prompt();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a2;
  v7[4] = 0;
  v7[5] = 0;
  v8 = qword_1EDF16C58;
  v9 = a1;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05C08 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDF05C10;
  sub_1D725DFDC();
  swift_allocObject();
  v13 = sub_1D725D5CC();

  return v13;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE17removeIssuePrompt5issue7actionsACSgSo7FCIssueCSg_SayAA8CommandsCADE12RemoveIssuesV0J0C6ActionOGtFZ_0(void *a1, uint64_t a2)
{
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  sub_1D5B58150(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D72816C0;
  *(v9 + 32) = a1;
  type metadata accessor for Commands.RemoveIssues.Prompt();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = 0;
  v10[5] = 0;
  v11 = qword_1EDF16C58;
  v12 = a1;

  if (v11 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();

  v15 = [v14 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05C08 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDF05C10;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7B40], v4);
  v20[1] = v10;
  sub_1D725D3DC();
  swift_allocObject();
  v17 = v16;
  v18 = sub_1D725D3AC();

  return v18;
}

unint64_t sub_1D6CA8158()
{
  result = qword_1EC894800;
  if (!qword_1EC894800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894800);
  }

  return result;
}

void sub_1D6CA81F8(double a1)
{
  ObjectType = swift_getObjectType();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_setContentScaleFactor_, a1);
  v4 = [v1 subviews];
  sub_1D5E2B010();
  v5 = sub_1D726267C();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v6 = sub_1D7263BFC();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA6FB460](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v11.receiver = v1;
      v11.super_class = ObjectType;
      objc_msgSendSuper2(&v11, sel_contentScaleFactor);
      sub_1D6CA87B0(v9, v10);
    }

    while (v6 != v7);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1D6CA8338()
{
  v1 = &v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v2 = [v0 subviews];
  sub_1D5E2B010();
  v3 = sub_1D726267C();

  if (v3 >> 62)
  {
    v4 = sub_1D7263BFC();
    if (v4)
    {
LABEL_3:
      if (v4 < 1)
      {
        __break(1u);
      }

      else
      {
        v5 = 0;
        v6 = *&v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_bezelView];
        v7 = &off_1E84D3000;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1DA6FB460](v5, v3);
          }

          else
          {
            v8 = *(v3 + 8 * v5 + 32);
          }

          v9 = v8;
          if (v8 != v6)
          {
            v13 = v8;
            sub_1D690218C();
            v10 = v9;
            if (swift_dynamicCast())
            {
              sub_1D5B63F14(v11, v14);
              __swift_project_boxed_opaque_existential_1(v14, v14[3]);
              v7 = &off_1E84D3000;
              sub_1D725F91C();
              __swift_destroy_boxed_opaque_existential_1(v14);
            }

            else
            {
              v12 = 0;
              memset(v11, 0, sizeof(v11));
              sub_1D69021F0(v11);
            }

            [v10 v7[237]];
          }

          ++v5;
        }

        while (v4 != v5);
      }

      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }
}

id sub_1D6CA8558(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame];
  v3 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame];
  v4 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame + 8];
  v5 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame + 16];
  v6 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame + 24];
  v7 = *(a1 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView);
  [v7 frame];
  v28.origin.x = v8;
  v28.origin.y = v9;
  v28.size.width = v10;
  v28.size.height = v11;
  v25.origin.x = v3;
  v25.origin.y = v4;
  v25.size.width = v5;
  v25.size.height = v6;
  *v2 = CGRectUnion(v25, v28);
  [v1 addSubview_];
  [v1 setFrame_];
  v26 = *v2;
  *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_contentFrame] = *v2;
  CGRectGetHeight(v26);
  v12 = [v1 superview];
  if (v12)
  {
    v13 = v12;
    [v12 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v27.origin.x = v15;
    v27.origin.y = v17;
    v27.size.width = v19;
    v27.size.height = v21;
    CGRectGetHeight(v27);
  }

  v22 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_bezelView];
  sub_1D726329C();
  sub_1D72632BC();

  return [v22 setFrame_];
}

void sub_1D6CA87B0(void *a1, double a2)
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    [a1 setContentScaleFactor_];
  }

  v4 = [a1 subviews];
  sub_1D5E2B010();
  v5 = sub_1D726267C();

  if (v5 >> 62)
  {
    v6 = sub_1D7263BFC();
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA6FB460](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    sub_1D6CA87B0(v8, a2);
  }

LABEL_12:
}