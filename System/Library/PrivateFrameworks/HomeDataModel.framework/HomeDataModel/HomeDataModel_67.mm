uint64_t sub_1D1CCB18C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>)
{
  v5 = [*a1 mediaSystems];
  sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
  v6 = sub_1D1E67C1C();

  v9[2] = a3;
  v7 = sub_1D174A6C4(sub_1D1CCEDD4, v9, v6);

  *a2 = v7;
  return result;
}

uint64_t sub_1D1CCB2E8(id *a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_1D1CCB3F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = [MEMORY[0x1EEE9AC00](a1) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v7 = sub_1D1E67C1C();

  sub_1D1CCE58C(v3, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StaticMediaSystem);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_1D1CCECBC(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for StaticMediaSystem);
  v12[1] = v7;
  v12[2] = sub_1D1CCEBCC;
  v12[3] = v9;
  v12[4] = sub_1D1CCEDD0;
  v12[5] = 0;
  v12[6] = sub_1D1A8D27C;
  v12[7] = 0;
  v10 = sub_1D1778964();

  return v10;
}

void *sub_1D1CCB59C(void *a1)
{
  v2 = [a1 mediaSystems];
  sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
  v3 = sub_1D1E67C1C();

  v7 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEDD4, &v6, v3);

  return v4;
}

unint64_t StaticMediaProfile.get(from:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v115 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v7 = MEMORY[0x1EEE9AC00](v123);
  v101 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v95 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v100 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v108 = &v95 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v119 = &v95 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v116 = &v95 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v95 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v95 - v23);
  v25 = type metadata accessor for StaticMediaProfile(0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v102 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v96 = &v95 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v126 = &v95 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v113 = &v95 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v95 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v95 - v37;
  v39 = [a1 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v40 = sub_1D1E67C1C();

  v98 = v38;
  sub_1D1CCE58C(v2, v38, type metadata accessor for StaticMediaProfile);
  v106 = v36;
  sub_1D1CCE58C(v2, v36, type metadata accessor for StaticMediaProfile);
  v97 = v40 >> 62;
  if (v40 >> 62)
  {
    goto LABEL_91;
  }

  v109 = v40 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v41 = 0;
    v105 = v40 & 0xC000000000000001;
    v99 = v40;
    v104 = v40 + 32;
    v121 = (v5 + 16);
    v122 = (v5 + 56);
    v129 = (v5 + 48);
    v114 = (v5 + 32);
    v117 = (v5 + 8);
    v40 = v119;
    v127 = v4;
LABEL_4:
    if (v41 == i)
    {
      v45 = i;
      goto LABEL_45;
    }

    if (v105)
    {
      break;
    }

    if (v41 < *(v109 + 16))
    {
      v42 = *(v104 + 8 * v41);
      goto LABEL_8;
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    v109 = v40 & 0xFFFFFFFFFFFFFF8;
  }

  v42 = MEMORY[0x1D3891EF0](v41, v99);
LABEL_8:
  v110 = v42;
  v43 = [v42 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v36 = sub_1D1E67C1C();

  v44 = v106;
  sub_1D1CCE58C(v106, v113, type metadata accessor for StaticMediaProfile);
  sub_1D1CCE58C(v44, v126, type metadata accessor for StaticMediaProfile);
  v111 = v36 >> 62;
  v112 = v41;
  v125 = v36 & 0xFFFFFFFFFFFFFF8;
  if (v36 >> 62)
  {
    v5 = sub_1D1E6873C();
  }

  else
  {
    v5 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = 0;
  v124 = v36 & 0xC000000000000001;
  v103 = v36 + 32;
  v118 = v36;
  v120 = v5;
  while (1)
  {
    if (v5 == v45)
    {
      goto LABEL_30;
    }

    if (v124)
    {
      v48 = MEMORY[0x1D3891EF0](v45, v36);
    }

    else
    {
      if (v45 >= *(v125 + 16))
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        v22 = v45;
LABEL_77:
        v5 = v99;
        if (v116)
        {
          v90 = sub_1D1E6873C();
        }

        else
        {
          v90 = *(v120 + 16);
        }

        if (v22 == v90)
        {
          goto LABEL_99;
        }

        if (v126)
        {
LABEL_95:
          v91 = MEMORY[0x1D3891EF0](v22, v36);
          goto LABEL_84;
        }

        if (v22 < *(v120 + 16))
        {
          v91 = *(v112 + 8 * v22);
LABEL_84:
          v92 = v91;
          v130 = v91;
          v93 = v96;
          sub_1D1CCD6A0(&v130, v96, &v131);
          sub_1D1CCE610(v93, type metadata accessor for StaticMediaProfile);

          v89 = v131;
          if (!v131)
          {
            goto LABEL_100;
          }

          sub_1D1CCE610(v102, type metadata accessor for StaticMediaProfile);
          sub_1D1CCE610(v98, type metadata accessor for StaticMediaProfile);

          goto LABEL_86;
        }

        __break(1u);
        goto LABEL_97;
      }

      v48 = *(v36 + 8 * v45 + 32);
    }

    v128 = v48;
    v49 = [v48 mediaProfile];
    if (v49)
    {
      v50 = v49;
      v51 = [v49 uniqueIdentifier];

      sub_1D1E66A5C();
      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

    v53 = *v122;
    (*v122)(v24, v52, 1, v4);
    (*v121)(v22, v126, v4);
    v53(v22, 0, 1, v4);
    v54 = *(v123 + 48);
    sub_1D17783E0(v24, v10);
    sub_1D17783E0(v22, &v10[v54]);
    v55 = *v129;
    if ((*v129)(v10, 1, v4) == 1)
    {
      break;
    }

    v57 = v116;
    sub_1D17783E0(v10, v116);
    if (v55(&v10[v54], 1, v4) == 1)
    {
      sub_1D1741A30(v22, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
      (*v117)(v57, v4);
      v36 = v118;
      v46 = v128;
LABEL_12:
      sub_1D1741A30(v10, &qword_1EC642980, &unk_1D1E6E6E0);
      goto LABEL_13;
    }

    v58 = v115;
    (*v114)(v115, &v10[v54], v4);
    sub_1D1797998();
    v59 = sub_1D1E6775C();
    v60 = *v117;
    (*v117)(v58, v127);
    sub_1D1741A30(v22, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
    v60(v57, v127);
    v4 = v127;
    sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
    v36 = v118;
    v46 = v128;
    if (v59)
    {
      goto LABEL_27;
    }

LABEL_13:

LABEL_14:
    v47 = __OFADD__(v45++, 1);
    v40 = v119;
    v5 = v120;
    if (v47)
    {
      goto LABEL_75;
    }
  }

  sub_1D1741A30(v22, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
  v56 = v55(&v10[v54], 1, v4);
  v46 = v128;
  if (v56 != 1)
  {
    goto LABEL_12;
  }

  sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
LABEL_27:
  v61 = [v46 mediaProfile];

  if (!v61)
  {
    goto LABEL_14;
  }

  v5 = v45;
  v40 = v119;
LABEL_30:
  v45 = v112;
  if (v111)
  {
    if (v5 != sub_1D1E6873C())
    {
      goto LABEL_40;
    }

LABEL_34:
    v5 = type metadata accessor for StaticMediaProfile;
    sub_1D1CCE610(v113, type metadata accessor for StaticMediaProfile);

    sub_1D1CCE610(v126, type metadata accessor for StaticMediaProfile);

    v47 = __OFADD__(v45, 1);
    v41 = v45 + 1;
    if (v47)
    {
      goto LABEL_88;
    }

    goto LABEL_4;
  }

  if (v5 == *(v125 + 16))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v124)
  {
LABEL_97:
    v62 = MEMORY[0x1D3891EF0](v5, v36);
LABEL_43:
    v63 = v62;
    v130 = v62;
    v64 = v113;
    sub_1D1CCD6A0(&v130, v113, &v131);
    sub_1D1CCE610(v64, type metadata accessor for StaticMediaProfile);

    v22 = v131;
    if (!v131)
    {
      goto LABEL_101;
    }

    sub_1D1CCE610(v126, type metadata accessor for StaticMediaProfile);

LABEL_45:
    if (v97)
    {
      if (v45 != sub_1D1E6873C())
      {
        goto LABEL_47;
      }
    }

    else if (v45 != *(v109 + 16))
    {
LABEL_47:
      if (v105)
      {
        v65 = MEMORY[0x1D3891EF0](v45, v99);
        goto LABEL_50;
      }

      if (v45 < *(v109 + 16))
      {
        v65 = *(v104 + 8 * v45);
LABEL_50:
        v113 = v65;
        v66 = [v65 accessories];
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        v36 = sub_1D1E67C1C();

        v67 = v98;
        sub_1D1CCE58C(v98, v96, type metadata accessor for StaticMediaProfile);
        sub_1D1CCE58C(v67, v102, type metadata accessor for StaticMediaProfile);
        v116 = v36 >> 62;
        v10 = (v36 & 0xFFFFFFFFFFFFFF8);
        if (v36 >> 62)
        {
          v22 = sub_1D1E6873C();
        }

        else
        {
          v22 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v68 = v108;
        v45 = 0;
        v125 = v22;
        v126 = v36 & 0xC000000000000001;
        v112 = v36 + 32;
        v118 = v36;
        v120 = v36 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v22 == v45)
          {
            goto LABEL_77;
          }

          if (v126)
          {
            v71 = MEMORY[0x1D3891EF0](v45, v36);
          }

          else
          {
            if (v45 >= *(v10 + 2))
            {
              goto LABEL_89;
            }

            v71 = *(v36 + 8 * v45 + 32);
          }

          v72 = v71;
          v73 = [v71 mediaProfile];
          v128 = v72;
          if (v73)
          {
            v74 = v73;
            v75 = [v73 uniqueIdentifier];

            sub_1D1E66A5C();
            v76 = 0;
          }

          else
          {
            v76 = 1;
          }

          v77 = *v122;
          (*v122)(v40, v76, 1, v4);
          (*v121)(v68, v102, v4);
          v77(v68, 0, 1, v4);
          v78 = *(v123 + 48);
          v79 = v40;
          v80 = v40;
          v81 = v68;
          v82 = v101;
          sub_1D17783E0(v79, v101);
          sub_1D17783E0(v81, v82 + v78);
          v24 = *v129;
          if ((*v129)(v82, 1, v4) == 1)
          {
            sub_1D1741A30(v81, &qword_1EC642590, qword_1D1E71260);
            sub_1D1741A30(v80, &qword_1EC642590, qword_1D1E71260);
            v40 = v80;
            if ((v24)(v82 + v78, 1, v4) != 1)
            {
              goto LABEL_54;
            }

            sub_1D1741A30(v82, &qword_1EC642590, qword_1D1E71260);
            v5 = v128;
          }

          else
          {
            v83 = v100;
            sub_1D17783E0(v82, v100);
            if ((v24)(v82 + v78, 1, v4) == 1)
            {
              sub_1D1741A30(v108, &qword_1EC642590, qword_1D1E71260);
              v69 = v119;
              sub_1D1741A30(v119, &qword_1EC642590, qword_1D1E71260);
              v70 = v83;
              v40 = v69;
              (*v117)(v70, v4);
LABEL_54:
              sub_1D1741A30(v82, &qword_1EC642980, &unk_1D1E6E6E0);
              v5 = v128;
LABEL_55:

              goto LABEL_56;
            }

            v84 = v115;
            (*v114)(v115, (v82 + v78), v4);
            sub_1D1797998();
            v85 = sub_1D1E6775C();
            v4 = v127;
            LODWORD(v124) = v85;
            v24 = *v117;
            v10 = v120;
            (*v117)(v84, v127);
            sub_1D1741A30(v108, &qword_1EC642590, qword_1D1E71260);
            v86 = v119;
            sub_1D1741A30(v119, &qword_1EC642590, qword_1D1E71260);
            v87 = v83;
            v40 = v86;
            v24(v87, v4);
            v36 = v118;
            sub_1D1741A30(v82, &qword_1EC642590, qword_1D1E71260);
            v5 = v128;
            if ((v124 & 1) == 0)
            {
              goto LABEL_55;
            }
          }

          v88 = [v5 mediaProfile];

          if (v88)
          {
            goto LABEL_76;
          }

LABEL_56:
          v47 = __OFADD__(v45++, 1);
          v68 = v108;
          v22 = v125;
          if (v47)
          {
            goto LABEL_90;
          }
        }
      }

      __break(1u);
      goto LABEL_95;
    }

    sub_1D1CCE610(v98, type metadata accessor for StaticMediaProfile);

    v89 = 0;
LABEL_86:
    sub_1D1CCE610(v106, type metadata accessor for StaticMediaProfile);
    return v89;
  }

  if (v5 < *(v125 + 16))
  {
    v62 = *(v103 + 8 * v5);
    goto LABEL_43;
  }

  __break(1u);
LABEL_99:
  sub_1D1CCE610(v96, type metadata accessor for StaticMediaProfile);

  sub_1D1CCE610(v102, type metadata accessor for StaticMediaProfile);
  sub_1D1CCE610(v98, type metadata accessor for StaticMediaProfile);

  sub_1D1CCE610(v106, type metadata accessor for StaticMediaProfile);
  __break(1u);
LABEL_100:
  sub_1D1CCE610(v102, type metadata accessor for StaticMediaProfile);
  __break(1u);
LABEL_101:
  result = sub_1D1CCE610(v126, type metadata accessor for StaticMediaProfile);
  __break(1u);
  return result;
}

uint64_t sub_1D1CCC794@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v64);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v68 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v48 - v15;
  v16 = type metadata accessor for StaticMediaProfile(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  v22 = [*a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v23 = sub_1D1E67C1C();

  v51 = v21;
  sub_1D1CCE58C(a2, v21, type metadata accessor for StaticMediaProfile);
  v66 = v19;
  sub_1D1CCE58C(a2, v19, type metadata accessor for StaticMediaProfile);
  v52 = v23 >> 62;
  if (v23 >> 62)
  {
LABEL_35:
    v67 = v23 & 0xFFFFFFFFFFFFFF8;
    v24 = sub_1D1E6873C();
  }

  else
  {
    v67 = v23 & 0xFFFFFFFFFFFFFF8;
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = 0;
  v65 = v23 & 0xC000000000000001;
  v49 = v23 + 32;
  v61 = (v6 + 16);
  v62 = (v6 + 56);
  v59 = v24;
  v60 = (v6 + 48);
  v53 = (v6 + 32);
  v56 = (v6 + 8);
  v26 = v58;
  v63 = v23;
  while (v24 != v25)
  {
    if (v65)
    {
      v28 = MEMORY[0x1D3891EF0](v25, v23);
    }

    else
    {
      if (v25 >= *(v67 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v28 = *(v23 + 8 * v25 + 32);
    }

    v6 = v28;
    v29 = [v28 mediaProfile];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 uniqueIdentifier];

      sub_1D1E66A5C();
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v33 = *v62;
    (*v62)(v26, v32, 1, v5);
    v34 = v68;
    (*v61)(v68, v66, v5);
    v33(v34, 0, 1, v5);
    v35 = *(v64 + 48);
    sub_1D17783E0(v26, v9);
    sub_1D17783E0(v34, &v9[v35]);
    v36 = *v60;
    if ((*v60)(v9, 1, v5) == 1)
    {
      sub_1D1741A30(v68, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v26, &qword_1EC642590, qword_1D1E71260);
      v37 = v36(&v9[v35], 1, v5);
      v23 = v63;
      if (v37 == 1)
      {
        sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
LABEL_20:
        v42 = [v6 mediaProfile];

        if (v42)
        {
          v24 = v25;
          break;
        }

        goto LABEL_7;
      }

      goto LABEL_5;
    }

    v38 = v68;
    v39 = v57;
    sub_1D17783E0(v9, v57);
    if (v36(&v9[v35], 1, v5) == 1)
    {
      sub_1D1741A30(v38, &qword_1EC642590, qword_1D1E71260);
      v26 = v58;
      sub_1D1741A30(v58, &qword_1EC642590, qword_1D1E71260);
      (*v56)(v39, v5);
      v23 = v63;
LABEL_5:
      sub_1D1741A30(v9, &qword_1EC642980, &unk_1D1E6E6E0);
      goto LABEL_6;
    }

    v40 = v54;
    (*v53)(v54, &v9[v35], v5);
    sub_1D1797998();
    v55 = sub_1D1E6775C();
    v41 = *v56;
    (*v56)(v40, v5);
    sub_1D1741A30(v38, &qword_1EC642590, qword_1D1E71260);
    v26 = v58;
    sub_1D1741A30(v58, &qword_1EC642590, qword_1D1E71260);
    v41(v39, v5);
    sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
    v23 = v63;
    if (v55)
    {
      goto LABEL_20;
    }

LABEL_6:

LABEL_7:
    v27 = __OFADD__(v25++, 1);
    v24 = v59;
    if (v27)
    {
      goto LABEL_34;
    }
  }

  if (v52)
  {
    goto LABEL_30;
  }

  for (result = *(v67 + 16); v24 != result; result = sub_1D1E6873C())
  {
    if (v65)
    {
      v44 = MEMORY[0x1D3891EF0](v24, v23);
    }

    else
    {
      if (v24 >= *(v67 + 16))
      {
        __break(1u);
        return result;
      }

      v44 = *(v49 + 8 * v24);
    }

    v45 = v44;
    v69 = v44;
    v46 = v51;
    sub_1D1CCD6A0(&v69, v51, &v70);
    sub_1D1CCE610(v46, type metadata accessor for StaticMediaProfile);

    v47 = v70;
    if (v70)
    {
      goto LABEL_32;
    }

    sub_1D1CCE610(v66, type metadata accessor for StaticMediaProfile);
    __break(1u);
LABEL_30:
    ;
  }

  sub_1D1CCE610(v51, type metadata accessor for StaticMediaProfile);
  v47 = 0;
LABEL_32:

  result = sub_1D1CCE610(v66, type metadata accessor for StaticMediaProfile);
  *v50 = v47;
  return result;
}

uint64_t StaticMediaProfile.get(from:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v60);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - v15;
  v17 = type metadata accessor for StaticMediaProfile(0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v23 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v24 = sub_1D1E67C1C();

  v50 = v22;
  sub_1D1CCE58C(v2, v22, type metadata accessor for StaticMediaProfile);
  v63 = v20;
  sub_1D1CCE58C(v2, v20, type metadata accessor for StaticMediaProfile);
  v65 = v24;
  v51 = v24 >> 62;
  if (v24 >> 62)
  {
LABEL_35:
    v64 = v65 & 0xFFFFFFFFFFFFFF8;
    v25 = sub_1D1E6873C();
  }

  else
  {
    v64 = v65 & 0xFFFFFFFFFFFFFF8;
    v25 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 0;
  v62 = v65 & 0xC000000000000001;
  v49 = v65 + 32;
  v58 = (v5 + 16);
  v59 = (v5 + 56);
  v27 = (v5 + 48);
  v52 = (v5 + 48);
  v53 = (v5 + 32);
  v56 = (v5 + 8);
  v57 = v25;
  v66 = v14;
  while (v25 != v26)
  {
    if (v62)
    {
      v31 = MEMORY[0x1D3891EF0](v26, v65);
    }

    else
    {
      if (v26 >= *(v64 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v31 = *(v65 + 8 * v26 + 32);
    }

    v5 = v31;
    v32 = [v31 mediaProfile];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 uniqueIdentifier];

      sub_1D1E66A5C();
      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v36 = *v59;
    (*v59)(v16, v35, 1, v4);
    v37 = v16;
    v38 = v66;
    (*v58)(v66, v63, v4);
    v36(v38, 0, 1, v4);
    v39 = *(v60 + 48);
    sub_1D17783E0(v37, v8);
    sub_1D17783E0(v38, &v8[v39]);
    v14 = *v27;
    if ((*v27)(v8, 1, v4) == 1)
    {
      sub_1D1741A30(v38, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
      v16 = v37;
      if ((v14)(&v8[v39], 1, v4) == 1)
      {
        sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
LABEL_20:
        v42 = [v5 mediaProfile];

        if (v42)
        {
          v25 = v26;
          break;
        }

        goto LABEL_7;
      }

      goto LABEL_5;
    }

    v40 = v61;
    sub_1D17783E0(v8, v61);
    if ((v14)(&v8[v39], 1, v4) == 1)
    {
      sub_1D1741A30(v66, &qword_1EC642590, qword_1D1E71260);
      v14 = v8;
      v28 = v40;
      v16 = v37;
      sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
      v29 = v28;
      v8 = v14;
      (*v56)(v29, v4);
LABEL_5:
      sub_1D1741A30(v8, &qword_1EC642980, &unk_1D1E6E6E0);
      goto LABEL_6;
    }

    v41 = v54;
    (*v53)(v54, &v8[v39], v4);
    sub_1D1797998();
    v55 = sub_1D1E6775C();
    v14 = *v56;
    (*v56)(v41, v4);
    sub_1D1741A30(v66, &qword_1EC642590, qword_1D1E71260);
    v16 = v37;
    sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
    (v14)(v61, v4);
    v27 = v52;
    sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
    if (v55)
    {
      goto LABEL_20;
    }

LABEL_6:

LABEL_7:
    v30 = __OFADD__(v26++, 1);
    v25 = v57;
    if (v30)
    {
      goto LABEL_34;
    }
  }

  if (v51)
  {
    goto LABEL_30;
  }

  for (result = *(v64 + 16); v25 != result; result = sub_1D1E6873C())
  {
    if (v62)
    {
      v44 = MEMORY[0x1D3891EF0](v25, v65);
    }

    else
    {
      if (v25 >= *(v64 + 16))
      {
        __break(1u);
        return result;
      }

      v44 = *(v49 + 8 * v25);
    }

    v45 = v44;
    v67 = v44;
    v46 = v50;
    sub_1D1CCD6A0(&v67, v50, &v68);
    sub_1D1CCE610(v46, type metadata accessor for StaticMediaProfile);

    v47 = v68;
    if (v68)
    {
      goto LABEL_32;
    }

    sub_1D1CCE610(v63, type metadata accessor for StaticMediaProfile);
    __break(1u);
LABEL_30:
    ;
  }

  sub_1D1CCE610(v50, type metadata accessor for StaticMediaProfile);
  v47 = 0;
LABEL_32:

  sub_1D1CCE610(v63, type metadata accessor for StaticMediaProfile);
  return v47;
}

id sub_1D1CCD6A0@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = a3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v33 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v32 = *a1;
  v19 = [v32 mediaProfile];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 uniqueIdentifier];

    sub_1D1E66A5C();
    v22 = *(v6 + 56);
    v22(v18, 0, 1, v5);
  }

  else
  {
    v22 = *(v6 + 56);
    v22(v18, 1, 1, v5);
  }

  (*(v6 + 16))(v16, a2, v5);
  v22(v16, 0, 1, v5);
  v23 = *(v8 + 48);
  sub_1D17783E0(v18, v10);
  sub_1D17783E0(v16, &v10[v23]);
  v24 = *(v6 + 48);
  if (v24(v10, 1, v5) == 1)
  {
    sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
    if (v24(&v10[v23], 1, v5) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
LABEL_12:
      result = [v32 mediaProfile];
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v25 = v33;
  sub_1D17783E0(v10, v33);
  if (v24(&v10[v23], 1, v5) == 1)
  {
    sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
    (*(v6 + 8))(v25, v5);
LABEL_9:
    sub_1D1741A30(v10, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_10;
  }

  v27 = v31;
  (*(v6 + 32))(v31, &v10[v23], v5);
  sub_1D1797998();
  v28 = v25;
  v29 = sub_1D1E6775C();
  v30 = *(v6 + 8);
  v30(v27, v5);
  sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
  v30(v28, v5);
  sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
  if (v29)
  {
    goto LABEL_12;
  }

LABEL_10:
  result = 0;
LABEL_13:
  *v34 = result;
  return result;
}

uint64_t sub_1D1CCDB40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = [MEMORY[0x1EEE9AC00](a1) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v7 = sub_1D1E67C1C();

  sub_1D1CCE58C(v3, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StaticMediaProfile);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_1D1CCECBC(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for StaticMediaProfile);
  v12[1] = v7;
  v12[2] = sub_1D1CCEBA0;
  v12[3] = v9;
  v12[4] = sub_1D1CCEDD0;
  v12[5] = 0;
  v12[6] = sub_1D1A8D27C;
  v12[7] = 0;
  v10 = sub_1D1778964();

  return v10;
}

uint64_t sub_1D1CCDCE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = [MEMORY[0x1EEE9AC00](a1) accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v7 = sub_1D1E67C1C();

  sub_1D1CCE58C(v3, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StaticMediaProfile);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_1D1CCECBC(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for StaticMediaProfile);
  v12[1] = v7;
  v12[2] = sub_1D1CCE794;
  v12[3] = v9;
  v12[4] = sub_1D1CCEDD0;
  v12[5] = 0;
  v12[6] = sub_1D1A8D27C;
  v12[7] = 0;
  v10 = sub_1D1778964();

  return v10;
}

MTRDevice_optional __swiftcall StaticMatterDevice.get(from:)(HMHomeManager from)
{
  v4 = type metadata accessor for StaticMatterDevice(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = [(objc_class *)from.super.isa homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v11 = sub_1D1E67C1C();

  sub_1D1CCE58C(v1, v9, type metadata accessor for StaticMatterDevice);
  v32 = v7;
  sub_1D1CCE58C(v1, v7, type metadata accessor for StaticMatterDevice);
  v30 = v9;
  v31 = v11 >> 62;
  if (v11 >> 62)
  {
    goto LABEL_28;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v14 = 0;
  v15 = v11 & 0xC000000000000001;
  v29 = v11 + 32;
  while (1)
  {
    if (v13 == v14)
    {
      v14 = v13;
      if (v31)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (v15)
    {
      v17 = MEMORY[0x1D3891EF0](v14, v11);
    }

    else
    {
      if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v17 = *(v11 + 8 * v14 + 32);
    }

    v2 = v17;
    v18 = [v17 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v19 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v20);
    *(&v28 - 2) = v32;
    v21 = sub_1D174A6C4(sub_1D1CCE5F4, (&v28 - 4), v19);

    if (!v21 || (v22 = HMAccessory.matterDevice.getter(), v21, !v22))
    {

      goto LABEL_5;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_5:
    if (__OFADD__(v14++, 1))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      v13 = sub_1D1E6873C();
      goto LABEL_3;
    }
  }

  while (2)
  {
    swift_unknownObjectRelease();

    if (v31)
    {
LABEL_23:
      v23 = sub_1D1E6873C();
      if (v14 == v23)
      {
LABEL_24:
        sub_1D1CCE610(v30, type metadata accessor for StaticMatterDevice);
        v27 = 0;
LABEL_25:

        sub_1D1CCE610(v32, type metadata accessor for StaticMatterDevice);
        v23 = v27;
        goto LABEL_31;
      }
    }

    else
    {
LABEL_16:
      v23 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14 == v23)
      {
        goto LABEL_24;
      }
    }

    if (v15)
    {
      v24 = MEMORY[0x1D3891EF0](v14, v11);
      goto LABEL_20;
    }

    if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(v29 + 8 * v14);
LABEL_20:
      v25 = v24;
      v26 = v30;
      v27 = StaticMatterDevice.get(from:)(v24);
      sub_1D1CCE610(v26, type metadata accessor for StaticMatterDevice);

      if (v27)
      {
        goto LABEL_25;
      }

      sub_1D1CCE610(v32, type metadata accessor for StaticMatterDevice);
      __break(1u);
      continue;
    }

    break;
  }

  __break(1u);
LABEL_31:
  result.value.super.isa = v23;
  result.is_nil = v12;
  return result;
}

MTRDevice_optional __swiftcall StaticMatterDevice.get(from:)(HMHome from)
{
  v2 = [(objc_class *)from.super.isa accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v3 = sub_1D1E67C1C();

  v9 = v1;
  v4 = sub_1D174A6C4(sub_1D1CCEE0C, &v8, v3);

  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = HMAccessory.matterDevice.getter();

  if (!v6)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v7 = 0;
  }

  result.value.super.isa = v7;
  result.is_nil = v5;
  return result;
}

MTRDevice_optional __swiftcall StaticMatterDevice.get(from:)(HMAccessory from)
{
  v1 = HMAccessory.matterDevice.getter();
  if (v1)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {
      swift_unknownObjectRelease();
      v1 = 0;
    }
  }

  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1D1CCE36C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = [MEMORY[0x1EEE9AC00](a1) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v7 = sub_1D1E67C1C();

  sub_1D1CCE58C(v3, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StaticMatterDevice);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_1D1CCECBC(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for StaticMatterDevice);
  v12[1] = v7;
  v12[2] = sub_1D1CCE768;
  v12[3] = v9;
  v12[4] = sub_1D1CCEDD0;
  v12[5] = 0;
  v12[6] = sub_1D1716A30;
  v12[7] = 0;
  v10 = sub_1D1778964();

  return v10;
}

uint64_t sub_1D1CCE518()
{
  result = HMAccessory.matterDevice.getter();
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1CCE58C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CCE610(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1CCE670(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1D1E682DC();
  return (v3 == *(v2 + *(type metadata accessor for StaticMatterDevice(0) + 20))) & ~v4;
}

uint64_t objectdestroy_21Tm_0()
{
  v1 = type metadata accessor for StaticMediaProfile(0);
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v21 = (v2 + 16) & ~v2;
  v22 = v0;
  v3 = v0 + v21;
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);

  v6 = v1[8];
  v7 = sub_1D1E669FC();
  v18 = *(*(v7 - 8) + 48);
  v19 = *(v7 - 8);
  if (!v18(v3 + v6, 1, v7))
  {
    (*(v19 + 8))(v3 + v6, v7);
  }

  v5(v3 + v1[14], v4);

  v8 = v3 + v1[18];
  v9 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5(v8, v4);
    }

    else
    {
    }
  }

  v10 = v3 + v1[23];
  v11 = *(v10 + 8);
  if (v11 != 255)
  {
    sub_1D1771B5C(*v10, v11);
  }

  v12 = v3 + v1[25];
  v13 = type metadata accessor for StaticSoftwareUpdate(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v5(v12, v4);
    v14 = v12 + *(v13 + 20);
    type metadata accessor for StaticSoftwareUpdate.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {

      v16 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
      if (!v18(v14 + v16, 1, v7))
      {
        (*(v19 + 8))(v14 + v16, v7);
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_19;
      }

      v5(v14, v4);
      if (*(v14 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_19:

  return MEMORY[0x1EEE6BDD0](v22, v21 + v20, v2 | 7);
}

uint64_t sub_1D1CCEC24(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_1D1CCECBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CCED50@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  a2(0);
  result = a3(*a1);
  *a4 = result;
  return result;
}

uint64_t StateSnapshot.tileInfoBearerCollection(nativeMatterDevices:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for StateSnapshot(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D18CE730(v2, v7);

  return TileInfoBearerCollection.init(from:nativeMatterDevices:)(v7, a1, a2);
}

uint64_t StaticAccessory.showAsInteractiveWidget.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v45 - v5;
  v6 = type metadata accessor for StaticService(0);
  v50 = *(v6 - 1);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - v9;
  v11 = type metadata accessor for StaticAccessory(0);
  v12 = 0;
  v13 = (v0 + *(v11 + 92));
  v14 = *(v13 + 8);
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      return v12;
    }
  }

  else
  {
    if (v14 < 2)
    {
      return v12;
    }

    v12 = 0;
    v15 = *v13;
    if ((v15 & 0x100) != 0 || (v15 & 1) == 0)
    {
      return v12;
    }
  }

  v16 = v11;
  StaticAccessory.staticServicesExcludingComponents.getter();
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643218, &qword_1D1E71670);
  result = swift_initStackObject();
  v20 = result;
  *(result + 16) = xmmword_1D1E74700;
  v21 = 1;
  *(result + 32) = (*(v0 + v16[37]) & 1) == 0;
  *(result + 33) = (*(v0 + v16[15]) & 1) == 0;
  *(result + 34) = (*(v0 + v16[26]) & 1) == 0;
  if (*(v0 + v16[19]) == 1)
  {
    StaticAccessory.staticServicesExcludingComponents.getter();
    v23 = *(v22 + 16);

    v21 = v23 < 2 || *(v18 + 16) == 0;
  }

  v45 = v20;
  *(v20 + 35) = v21;
  v49 = *(v18 + 16);
  if (!v49)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_30:

    v42 = *(v25 + 16);

    v43 = v45;
    v45[36] = v42 == 0;
    if ((v43[32] & 1) != 0 && v43[33] == 1 && v43[34] == 1)
    {
      if (v42)
      {
        v44 = 0;
      }

      else
      {
        v44 = v43[35];
      }
    }

    else
    {
      v44 = 0;
    }

    return v44;
  }

  v46 = v4;
  v24 = 0;
  v51 = 0x80000001D1EB3580;
  v25 = MEMORY[0x1E69E7CC0];
  v47 = v18;
  while (v24 < *(v18 + 16))
  {
    v26 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v27 = *(v50 + 72);
    sub_1D1CD1AA4(v18 + v26 + v27 * v24, v10, type metadata accessor for StaticService);
    v54 = v10[v6[26]];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v51 == v28)
    {
    }

    else
    {
      v29 = sub_1D1E6904C();

      if ((v29 & 1) == 0)
      {
        result = sub_1D1CD1B0C(v10, type metadata accessor for StaticService);
        goto LABEL_14;
      }
    }

    v53 = v26;
    v30 = &v10[v6[29]];
    v31 = v10;
    v32 = v48;
    sub_1D17783E0(v30, v48);
    v33 = sub_1D1E66A7C();
    v34 = *(*(v33 - 8) + 48);
    v35 = v34(v32, 1, v33);
    v36 = v32;
    v10 = v31;
    sub_1D1741A30(v36, &qword_1EC642590, qword_1D1E71260);
    if (v35 != 1)
    {
      goto LABEL_24;
    }

    v37 = v46;
    sub_1D17783E0(v31 + v6[37], v46);
    if (v34(v37, 1, v33) != 1)
    {
      sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
LABEL_24:
      sub_1D17978CC(v31, v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D17915E0(0, *(v25 + 16) + 1, 1);
        v25 = v55;
      }

      v18 = v47;
      v40 = *(v25 + 16);
      v39 = *(v25 + 24);
      v41 = v53;
      if (v40 >= v39 >> 1)
      {
        sub_1D17915E0(v39 > 1, v40 + 1, 1);
        v25 = v55;
      }

      *(v25 + 16) = v40 + 1;
      result = sub_1D17978CC(v52, v25 + v41 + v40 * v27);
      goto LABEL_14;
    }

    sub_1D1CD1B0C(v31, type metadata accessor for StaticService);
    result = sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
    v18 = v47;
LABEL_14:
    if (v49 == ++v24)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

void *Set<>.interactiveWidgets.getter(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticAccessory(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *(a1 + 32);
  v6 = v4 & 0x3F;
  v7 = ((1 << v4) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  do
  {
    v23[1] = v23;
    v24 = v7;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v7 = v23 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v8);
    v25 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v8 = v15 | (v10 << 6);
      sub_1D1CD1AA4(*(a1 + 48) + *(v3 + 72) * v8, v5, type metadata accessor for StaticAccessory);
      v18 = StaticAccessory.showAsInteractiveWidget.getter();
      sub_1D1CD1B0C(v5, type metadata accessor for StaticAccessory);
      if (v18)
      {
        *(v7 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
          return sub_1D19E073C(v7, v24, v25, a1);
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        return sub_1D19E073C(v7, v24, v25, a1);
      }

      v17 = *(a1 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v21 = swift_slowAlloc();
  v22 = sub_1D1BCEE08(v21, v7, a1, sub_1D1CCF6F0, 0);
  MEMORY[0x1D3893640](v21, -1, -1);
  return v22;
}

{
  v48 = *MEMORY[0x1E69E9840];
  v38 = type metadata accessor for StaticService(0);
  v42 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v45 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v2) = *(a1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = (8 * v4);

  if (v3 > 0xD)
  {
    goto LABEL_33;
  }

  do
  {
    v36 = v4;
    v35 = &v35;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v37 = &v35 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v5);
    v4 = 0;
    v7 = a1 + 56;
    v8 = 1 << *(a1 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a1 + 56);
    v11 = (v8 + 63) >> 6;
    v39 = 0;
    v40 = v11;
    v41 = a1;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v44 = (v10 - 1) & v10;
LABEL_14:
      v15 = v12 | (v4 << 6);
      v16 = *(a1 + 48);
      v17 = *(v42 + 72);
      v43 = v15;
      sub_1D1CD1AA4(v16 + v17 * v15, v45, type metadata accessor for StaticService);
      if (qword_1EC6423A0 != -1)
      {
        swift_once();
      }

      v18 = qword_1EC6BE1B8;
      if (*(qword_1EC6BE1B8 + 16) && (v19 = *(v45 + *(v38 + 104)), sub_1D1E6920C(), v46 = v19, ServiceKind.rawValue.getter(), sub_1D1E678EC(), , v5 = &v47, v20 = sub_1D1E6926C(), v21 = -1 << *(v18 + 32), v22 = v20 & ~v21, ((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
      {
        v23 = ~v21;
        while (1)
        {
          v47 = *(*(v18 + 48) + v22);
          v46 = v19;
          v24 = ServiceKind.rawValue.getter();
          v26 = v25;
          v27 = ServiceKind.rawValue.getter();
          v5 = v28;
          if (v24 == v27 && v26 == v28)
          {
            break;
          }

          v30 = sub_1D1E6904C();

          if (v30)
          {
            goto LABEL_27;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

LABEL_27:
        sub_1D1CD1B0C(v45, type metadata accessor for StaticService);
        *&v37[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
        v11 = v40;
        v31 = __OFADD__(v39++, 1);
        a1 = v41;
        v10 = v44;
        if (v31)
        {
          goto LABEL_32;
        }
      }

      else
      {
LABEL_6:
        sub_1D1CD1B0C(v45, type metadata accessor for StaticService);
        v11 = v40;
        a1 = v41;
        v10 = v44;
      }
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return sub_1D19E0ED0(v37, v36, v39, a1);
      }

      v14 = *(v7 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v44 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v33 = swift_slowAlloc();
  v34 = sub_1D1CD1A04(v33, v4, a1, sub_1D1CCFE30, 0, sub_1D19FAD04);
  MEMORY[0x1D3893640](v33, -1, -1);
  return v34;
}

{
  v2 = 0;
  v45[5] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for StaticServiceGroup(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v44 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v31 - v7;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
LABEL_32:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v29 = swift_slowAlloc();
      v30 = sub_1D1CD1A04(v29, v10, a1, sub_1D1CD037C, 0, sub_1D19FACB0);
      MEMORY[0x1D3893640](v29, -1, -1);
      return v30;
    }
  }

  v32 = v10;
  v31[1] = v2;
  v31[2] = v31;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v33 = v31 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v33, v11);
  v34 = 0;
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v10 = (v14 + 63) >> 6;
  v2 = v43;
  v42 = v4;
  while (1)
  {
    while (1)
    {
      if (!v16)
      {
        v18 = v13;
        while (1)
        {
          v13 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v13 >= v10)
          {
            return sub_1D19E0C6C(v33, v32, v34, a1);
          }

          v19 = *(a1 + 56 + 8 * v13);
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v16 = (v19 - 1) & v19;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      v20 = v17 | (v13 << 6);
      sub_1D1CD1AA4(*(a1 + 48) + v4[9] * v20, v2, type metadata accessor for StaticServiceGroup);
      v11 = v2;
      if (StaticServiceGroup.canBeToggled.getter())
      {
        break;
      }

      sub_1D1CD1B0C(v2, type metadata accessor for StaticServiceGroup);
    }

    v35 = v20;
    v21 = v44;
    sub_1D1CD1AA4(v2, v44, type metadata accessor for StaticServiceGroup);
    v2 = *(*(v21 + *(v3 + 56)) + 16);
    if (v2)
    {
      v41 = *(v21 + *(v3 + 56));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643258, &qword_1D1E716B0);
      v22 = *(type metadata accessor for StaticService(0) - 8);
      v11 = *(v22 + 72);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v4 = swift_allocObject();
      v24 = _swift_stdlib_malloc_size(v4);
      if (!v11)
      {
        goto LABEL_30;
      }

      if (v24 - v23 == 0x8000000000000000 && v11 == -1)
      {
        __break(1u);
      }

      v4[2] = v2;
      v4[3] = 2 * ((v24 - v23) / v11);
      v26 = sub_1D1804A58(v45, v4 + v23, v2, v41);
      v11 = v45[0];
      v39 = v45[1];
      v40 = v26;
      v37 = v45[3];
      v38 = v45[2];
      v36 = v45[4];

      sub_1D1716918(v11);
      if (v40 != v2)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D1CD1B0C(v44, type metadata accessor for StaticServiceGroup);
    v11 = v4[2];

    v2 = v43;
    sub_1D1CD1B0C(v43, type metadata accessor for StaticServiceGroup);
    v4 = v42;
    if (v11)
    {
      *&v33[(v35 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v35;
      if (__OFADD__(v34++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
  return sub_1D19E0C6C(v33, v32, v34, a1);
}

uint64_t StaticMatterDevice.showAsInteractiveWidget.getter()
{
  if (qword_1EC642270 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + *(type metadata accessor for StaticMatterDevice(0) + 32));
  if (*(v1 + 16))
  {
    v2 = sub_1D1A46E30(qword_1EC648718, v1) ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1D1CCF798(uint64_t a1)
{
  if (qword_1EC642270 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = *(v1 + *(a1 + 32));
  if (*(v2 + 16))
  {
    v3 = sub_1D1A46E30(qword_1EC648718, v2) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t Collection<>.interactiveWidgets.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  return sub_1D1E67A8C();
}

uint64_t sub_1D1CCF904(uint64_t a1)
{
  if (qword_1EC642270 != -1)
  {
    swift_once();
  }

  v2 = *(a1 + *(type metadata accessor for StaticMatterDevice(0) + 32));
  if (*(v2 + 16))
  {
    v3 = sub_1D1A46E30(qword_1EC648718, v2) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1D1CCFE30(uint64_t a1)
{
  if (qword_1EC6423A0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC6BE1B8;
  v3 = type metadata accessor for StaticService(0);
  return sub_1D171951C(*(a1 + *(v3 + 104)), v2) & 1;
}

uint64_t sub_1D1CD037C(uint64_t a1)
{
  v3 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((StaticServiceGroup.canBeToggled.getter() & 1) == 0)
  {
    return 0;
  }

  sub_1D1CD1AA4(a1, v5, type metadata accessor for StaticServiceGroup);
  v6 = *&v5[*(v3 + 56)];
  v7 = v6[2];
  if (!v7)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    sub_1D1CD1B0C(v5, type metadata accessor for StaticServiceGroup);
    v13 = v8[2];

    return v13 != 0;
  }

  v15[6] = v1;
  v8 = sub_1D18042C8(v7, 0);
  v9 = *(type metadata accessor for StaticService(0) - 8);
  v10 = sub_1D1804A58(v15, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v6);
  v11 = v15[0];

  result = sub_1D1716918(v11);
  if (v10 == v7)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

BOOL sub_1D1CD0534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  v43 = type metadata accessor for StaticService(0);
  v5 = MEMORY[0x1EEE9AC00](v43);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v46 = *(a1 + 16);
  if (v46)
  {
    v40 = v4;
    v10 = 0;
    v11 = *(v7 + 80);
    v45 = *(v7 + 72);
    v35 = (v11 + 32) & ~v11;
    v44 = a1 + v35;
    v39 = "00-8000-0026BB765291";
    v38 = 0x80000001D1EB3130;
    v37 = MEMORY[0x1E69E7CC0];
    v41 = &v35 - v8;
    while (1)
    {
      sub_1D1CD1AA4(v44 + v45 * v10, v9, type metadata accessor for StaticService);
      if (qword_1EC642398 != -1)
      {
        swift_once();
      }

      v12 = qword_1EC6BE1B0;
      if (*(qword_1EC6BE1B0 + 16))
      {
        v42 = *(v43 + 104);
        v13 = v9[v42];
        sub_1D1E6920C();
        v47 = v13;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v14 = sub_1D1E6926C();
        v15 = -1 << *(v12 + 32);
        v16 = v14 & ~v15;
        if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (1)
          {
            v18 = "takeSnaphotsWhenBusy";
            switch(*(*(v12 + 48) + v16))
            {
              case 1:
                v19 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 2:
                v19 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 3:
                v19 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 4:
                v19 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 5:
                v19 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 6:
                v19 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 7:
                v19 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 8:
                v19 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 9:
                v19 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xA:
                v19 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xB:
                v19 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xC:
                v19 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xD:
                v19 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xE:
                v19 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0xF:
                v19 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x10:
                v19 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x11:
                v19 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x12:
                v19 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x13:
                v19 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x14:
                v19 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x15:
                v19 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x16:
                v19 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x17:
                v19 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x18:
                v18 = v39;
                break;
              case 0x19:
                v19 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1A:
                v19 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1B:
                v19 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1C:
                v19 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1D:
                v19 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1E:
                v19 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x1F:
                v19 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x20:
                v19 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x21:
                v19 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x22:
                v19 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x23:
                v19 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x24:
                v19 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x25:
                v19 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x26:
                v19 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x27:
                v19 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x28:
                v19 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x29:
                v19 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2A:
                v19 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2B:
                v19 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2C:
                v19 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2D:
                v19 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2E:
                v19 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x2F:
                v19 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x30:
                v19 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x31:
                v19 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x32:
                v19 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x33:
                v19 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_64;
              case 0x34:
                v19 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_64:
                v18 = (v19 - 32);
                break;
              default:
                break;
            }

            v20 = v18 | 0x8000000000000000;
            v21 = "takeSnaphotsWhenBusy";
            switch(v13)
            {
              case 1:
                v22 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 2:
                v22 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 3:
                v22 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 4:
                v22 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 5:
                v22 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 6:
                v22 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 7:
                v22 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 8:
                v22 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 9:
                v22 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 10:
                v22 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 11:
                v22 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 12:
                v22 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 13:
                v22 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 14:
                v22 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 15:
                v22 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 16:
                v22 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 17:
                v22 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 18:
                v22 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 19:
                v22 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 20:
                v22 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 21:
                v22 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 22:
                v22 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 23:
                v22 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 24:
                v21 = v39;
                break;
              case 25:
                v22 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 26:
                v22 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 27:
                v22 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 28:
                v22 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 29:
                v22 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 30:
                v22 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 31:
                v22 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 32:
                v22 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 33:
                v22 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 34:
                v22 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 35:
                v22 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 36:
                v22 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 37:
                v22 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 38:
                v22 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 39:
                v22 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 40:
                v22 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 41:
                v22 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 42:
                v22 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 43:
                v22 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 44:
                v22 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 45:
                v22 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 46:
                v22 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 47:
                v22 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 48:
                v22 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 49:
                v22 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 50:
                v22 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 51:
                v22 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_118;
              case 52:
                v22 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_118:
                v21 = (v22 - 32);
                break;
              default:
                break;
            }

            if (v20 == (v21 | 0x8000000000000000))
            {
              break;
            }

            v23 = sub_1D1E6904C();

            if (v23)
            {
              goto LABEL_124;
            }

            v16 = (v16 + 1) & v17;
            if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_122;
            }
          }

LABEL_124:
          v24 = v40;
          v9 = v41;
          sub_1D17783E0(&v41[*(v43 + 116)], v40);
          v25 = sub_1D1E66A7C();
          if ((*(*(v25 - 8) + 48))(v24, 1, v25) != 1)
          {
            sub_1D1CD1B0C(v9, type metadata accessor for StaticService);
            sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
            goto LABEL_5;
          }

          sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
          if (StaticService.canBeToggled.getter())
          {
            LOBYTE(v48[0]) = v9[v42];
            if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v38 == v26)
            {
            }

            else
            {
              v27 = sub_1D1E6904C();

              if ((v27 & 1) == 0)
              {
                sub_1D17978CC(v9, v36);
                v28 = v37;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v30 = v28;
                v49 = v28;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1D17915E0(0, *(v28 + 16) + 1, 1);
                  v30 = v49;
                }

                v32 = *(v30 + 16);
                v31 = *(v30 + 24);
                if (v32 >= v31 >> 1)
                {
                  sub_1D17915E0(v31 > 1, v32 + 1, 1);
                  v30 = v49;
                }

                *(v30 + 16) = v32 + 1;
                v37 = v30;
                sub_1D17978CC(v36, v30 + v35 + v32 * v45);
                goto LABEL_5;
              }
            }
          }
        }

        else
        {
LABEL_122:
          v9 = v41;
        }
      }

      sub_1D1CD1B0C(v9, type metadata accessor for StaticService);
LABEL_5:
      if (++v10 == v46)
      {
        v33 = *(v37 + 16);

        return v33 == 0;
      }
    }
  }

  return 1;
}

BOOL Collection<>.widgetBehavior.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D1E6827C())
  {
    return 1;
  }

  (*(v4 + 16))(v6, v2, a1);
  v8 = *(sub_1D1E67A8C() + 16);

  return v8 == 0;
}

{
  return (sub_1D1E67A3C() & 1) == 0;
}

{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D1E6827C())
  {
    return 1;
  }

  (*(v4 + 16))(v6, v2, a1);
  v8 = sub_1D1E67A8C();
  if (v8 >> 62)
  {
    v9 = sub_1D1E6873C();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v9 == 0;
}

uint64_t sub_1D1CD1084(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14[-v3];
  if (qword_1EC642398 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC6BE1B0;
  v6 = type metadata accessor for StaticService(0);
  v7 = *(v6 + 104);
  if (sub_1D171951C(*(a1 + v7), v5))
  {
    sub_1D17783E0(a1 + *(v6 + 116), v4);
    v8 = sub_1D1E66A7C();
    v9 = (*(*(v8 - 8) + 48))(v4, 1, v8);
    sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
    if (v9 == 1 && StaticService.canBeToggled.getter())
    {
      v14[15] = *(a1 + v7);
      if (ServiceKind.rawValue.getter() != 0xD000000000000024 || 0x80000001D1EB3130 != v10)
      {
        v13 = sub_1D1E6904C();

        v11 = v13 ^ 1;
        return v11 & 1;
      }
    }
  }

  v11 = 0;
  return v11 & 1;
}

BOOL StaticAccessory.isTelevision.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticAccessory(0) + 96));
  v2 = v1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *v1;

  v4 = _s13HomeDataModel12CategoryKindO8rawValueACSgSS_tcfC_0(v3, v2);
  if (v4 == 36)
  {
    return 0;
  }

  return sub_1D17C5F88(v4, &unk_1F4D64DD8);
}

uint64_t StaticAccessory.widgetBehavior.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24[-v2];
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for StaticAccessory(0);
  v9 = v8;
  v10 = (v0 + *(v8 + 92));
  v11 = *(v10 + 8);
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (*(v0 + *(v8 + 76)))
      {
        goto LABEL_18;
      }

      v13 = 1;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v11 < 2 || (v12 = *v10, (v12 & 1) == 0))
  {
LABEL_7:
    if (*(v0 + *(v8 + 76)))
    {
      goto LABEL_15;
    }

    v13 = 0;
LABEL_11:
    if (!StaticAccessory.hasVisibleServices(minCount:)(2))
    {
      goto LABEL_17;
    }

    v14 = (v0 + *(v9 + 96));
    v15 = v14[1];
    if (v15)
    {
      v16 = *v14;

      v17 = _s13HomeDataModel12CategoryKindO8rawValueACSgSS_tcfC_0(v16, v15);
      if (v17 != 36 && (v13 & sub_1D17C5F88(v17, &unk_1F4D64DD8) & 1) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_15:
    v18 = 1;
    return v18 & 1;
  }

  v13 = (v12 & 0x100) == 0;
  if ((*(v0 + *(v8 + 76)) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_18:
  StaticAccessory.primaryStaticService.getter(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v20 = sub_1D1741A30(v3, &qword_1EC6436F0, &qword_1D1E99BC0);
    MEMORY[0x1EEE9AC00](v20);
    *&v24[-16] = v0;
    v22 = sub_1D17868B8(sub_1D1820ECC, &v24[-32], v21);
    v18 = sub_1D1CD0534(v22);
  }

  else
  {
    sub_1D17978CC(v3, v7);
    v23 = StaticService.canBeToggled.getter();
    sub_1D1CD1B0C(v7, type metadata accessor for StaticService);
    v18 = !v23;
  }

  return v18 & 1;
}

uint64_t StateSnapshot.WidgetTileBehavior.hashValue.getter(char a1)
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a1 & 1);
  return sub_1D1E6926C();
}

uint64_t StateSnapshot.allWidgetTileInfos(nativeMatterDevices:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StateSnapshot(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TileInfoBearerCollection(0);
  v8 = v7 - 8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  sub_1D1CD1AA4(v2, v6, type metadata accessor for StateSnapshot);

  TileInfoBearerCollection.init(from:nativeMatterDevices:)(v6, a1, v13);
  *&v13[*(v8 + 44)] = 86;
  v34 = MEMORY[0x1E69E7CC0];
  sub_1D178DCC4(0, 0, 0);
  v14 = v34;
  sub_1D1CD1AA4(v13, v11, type metadata accessor for TileInfoBearerCollection);
  v15 = sub_1D1C6406C();
  result = sub_1D1CD1B0C(v11, type metadata accessor for TileInfoBearerCollection);
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = v15 + 32;
    while (v18 < *(v15 + 16))
    {
      sub_1D17419CC(v19, v31);
      v20 = v32;
      v21 = v33;
      v22 = __swift_project_boxed_opaque_existential_1(v31, v32);
      MEMORY[0x1EEE9AC00](v22);
      v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v24);
      AnyTileInfoBearer.init<A>(_:)(v24, v20, v21, &v30);
      result = __swift_destroy_boxed_opaque_existential_1(v31);
      v26 = v30;
      v34 = v14;
      v28 = *(v14 + 16);
      v27 = *(v14 + 24);
      if (v28 >= v27 >> 1)
      {
        v29 = v30;
        result = sub_1D178DCC4((v27 > 1), v28 + 1, 1);
        v26 = v29;
        v14 = v34;
      }

      ++v18;
      *(v14 + 16) = v28 + 1;
      *(v14 + 16 * v28 + 32) = v26;
      v19 += 40;
      if (v17 == v18)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1D1CD1B0C(v13, type metadata accessor for TileInfoBearerCollection);

    return v14;
  }

  return result;
}

void *sub_1D1CD1A04(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

uint64_t sub_1D1CD1AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CD1B0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1CD1B70()
{
  result = qword_1EC64D008;
  if (!qword_1EC64D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D008);
  }

  return result;
}

uint64_t StaticCharacteristic.BOOLValue.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticCharacteristic(0) + 24));
  v2 = *v1;
  v3 = *(v1 + 16);
  result = 2;
  if (v3 <= 2)
  {
    goto LABEL_6;
  }

  if (v3 > 4)
  {
    if (v3 != 5 && v3 != 6)
    {
      return result;
    }

    v2 = v2;
  }

  else if (v3 == 3)
  {
    v2 = v2;
  }

  else if (v2 < 0)
  {
    __break(1u);
LABEL_6:
    switch(v3)
    {
      case 0:
        return v2 & 1;
      case 1:
        v2 = v2;
        break;
      case 2:
        v2 = v2;
        break;
      default:
        return result;
    }
  }

  if (v2 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t StaticCharacteristic.intValue.getter()
{
  v1 = v0 + *(type metadata accessor for StaticCharacteristic(0) + 24);
  result = *v1;
  v3 = *(v1 + 16);
  if (v3 <= 3)
  {
    v4 = result;
    v5 = result;
    v6 = result;
    if (v3 != 3)
    {
      v6 = 0;
    }

    if (v3 != 2)
    {
      v5 = v6;
    }

    v7 = v3 == 1;
    goto LABEL_12;
  }

  if (v3 != 4)
  {
    v4 = result;
    if (v3 == 5)
    {
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    v7 = v3 == 6;
LABEL_12:
    if (v7)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t StaticCharacteristic.floatValue.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticCharacteristic(0) + 24));
  if (v1[16] == 7)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

HomeDataModel::StaticCharacteristic::LoadingState::Error __swiftcall StaticCharacteristic.LoadingState.Error.init(code:domain:)(Swift::Int code, Swift::String domain)
{
  *v2 = code;
  *(v2 + 8) = domain;
  result.domain = domain;
  result.code = code;
  return result;
}

uint64_t StaticCharacteristic.init(from:value:loadingState:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v120 = a4;
  v119 = sub_1D1E669FC();
  v116 = *(v119 - 8);
  v7 = MEMORY[0x1EEE9AC00](v119);
  v9 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v101 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v100 - v12;
  v14 = sub_1D1E66A7C();
  *&v118 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v117 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v100 - v17;
  v19 = *a3;
  v20 = *(a3 + 8);
  v21 = *(a3 + 16);
  v22 = *(a3 + 24);
  v23 = [a1 service];
  if (v23)
  {
    v100 = v9;
    v106 = v23;
    v113 = v19;
    v114 = v20;
    v112 = v14;
    *&v115 = a2;
    static CharacteristicKind.Value.typedValue(for:value:)(a1, a2, &v121);
    v24 = v22;
    v25 = v18;
    v105 = v121;
    if (v122 == 255)
    {
      v26 = 0;
    }

    else
    {
      v26 = v121;
    }

    v104 = *(&v121 + 1);
    if (v122 == 255)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(&v121 + 1);
    }

    v28 = v21;
    v103 = v122;
    if (v122 == 255)
    {
      v29 = 11;
    }

    else
    {
      v29 = v122;
    }

    v30 = [a1 uniqueIdentifier];
    v108 = v25;
    sub_1D1E66A5C();

    v31 = [a1 characteristicType];
    v32 = sub_1D1E6781C();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    CharacteristicKind.init(rawValue:)(v35);
    v36 = v121;
    if (v121 == 174)
    {
      v36 = 0;
    }

    v102 = v36;
    v110 = v26;
    v109 = v27;
    v37 = v27;
    v38 = v28;
    v107 = v29;
    sub_1D1778244(v26, v37, v29);
    v39 = [a1 valueUpdatedTime];
    sub_1D1E669BC();

    v111 = v13;
    v40 = v120;
    v41 = v116;
    if (v24 == 255)
    {
      v42 = [a1 valueUpdatedTime];
      v43 = v101;
      sub_1D1E669BC();

      v44 = [a1 notificationEnabledTime];
      v45 = v100;
      sub_1D1E669BC();

      LOBYTE(v44) = sub_1D1E6695C();
      v46 = *(v41 + 8);
      v47 = v45;
      v48 = v119;
      v46(v47, v119);
      v46(v43, v48);
      v38 = 0;
      v113 = v44 & 1;
      v114 = 0;
      v24 = 3;
    }

    LODWORD(v116) = v24;
    v49 = [a1 properties];
    v50 = sub_1D1E67C1C();

    v124[0] = 0;
    v51 = *(v50 + 16);
    if (!v51)
    {
LABEL_20:

      v53 = v106;
      v54 = [v106 uniqueIdentifier];
      v55 = v117;
      sub_1D1E66A5C();

      v56 = [a1 metadata];
      LOBYTE(v124[0]) = 11;
      sub_1D1CDADF0(v56, v124, &v121);

      sub_1D1778270(v105, v104, v103);
      sub_1D1741A30(v115, &qword_1EC649700, &qword_1D1E6E910);
      v57 = v123;
      v58 = *(v118 + 32);
      v118 = v121;
      v115 = v122;
      v59 = v112;
      v58(v40, v108, v112);
      v60 = type metadata accessor for StaticCharacteristic(0);
      *(v40 + v60[5]) = v102;
      v61 = v40 + v60[6];
      v62 = v109;
      *v61 = v110;
      *(v61 + 8) = v62;
      *(v61 + 16) = v107;
      (*(v41 + 32))(v40 + v60[7], v111, v119);
      v63 = v40 + v60[8];
      v64 = v114;
      *v63 = v113;
      *(v63 + 8) = v64;
      *(v63 + 16) = v38;
      *(v63 + 24) = v116;
      *(v40 + v60[9]) = v51;
      v58(v40 + v60[10], v55, v59);
      v65 = v40 + v60[11];
      v66 = v115;
      *v65 = v118;
      *(v65 + 16) = v66;
      *(v65 + 32) = v57;
      return (*(*(v60 - 1) + 56))(v40, 0, 1, v60);
    }

    v14 = 0;
    a2 = (v50 + 40);
    while (v14 < *(v50 + 16))
    {
      ++v14;
      v52 = *a2;
      *&v121 = *(a2 - 1);
      *(&v121 + 1) = v52;
      sub_1D18C99CC(v124, &v121);
      a2 += 2;
      if (v51 == v14)
      {
        v51 = v124[0];
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_1D1B0C0CC(v19, v20, v21, v22);
  if (qword_1EE07B5D0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v68 = sub_1D1E6709C();
  __swift_project_value_buffer(v68, qword_1EE07B5D8);
  sub_1D1741C08(a2, &v121, &qword_1EC649700, &qword_1D1E6E910);
  v69 = a1;
  v70 = sub_1D1E6707C();
  v71 = sub_1D1E6833C();

  v72 = os_log_type_enabled(v70, v71);
  v73 = v120;
  if (v72)
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v115 = a2;
    v76 = v75;
    v125 = v75;
    *v74 = 136315906;
    *(v74 + 4) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EC8240, &v125);
    *(v74 + 12) = 2080;
    sub_1D1741C08(&v121, v124, &qword_1EC649700, &qword_1D1E6E910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
    v77 = sub_1D1E6789C();
    v79 = v78;
    sub_1D1741A30(&v121, &qword_1EC649700, &qword_1D1E6E910);
    v80 = sub_1D1B1312C(v77, v79, &v125);

    *(v74 + 14) = v80;
    *(v74 + 22) = 2080;
    v81 = [v69 characteristicType];
    v82 = sub_1D1E6781C();
    v83 = v14;
    v85 = v84;

    v86._countAndFlagsBits = v82;
    v86._object = v85;
    CharacteristicKind.init(rawValue:)(v86);
    v87 = v124[0];
    if (LOBYTE(v124[0]) == 174)
    {
      v87 = 0;
    }

    LOBYTE(v124[0]) = v87;
    v88 = sub_1D1E6789C();
    v90 = sub_1D1B1312C(v88, v89, &v125);

    *(v74 + 24) = v90;
    *(v74 + 32) = 2080;
    v91 = [v69 uniqueIdentifier];
    v92 = v117;
    sub_1D1E66A5C();

    sub_1D1CD94A0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v93 = sub_1D1E68FAC();
    v95 = v94;
    (*(v118 + 8))(v92, v83);
    v96 = sub_1D1B1312C(v93, v95, &v125);

    *(v74 + 34) = v96;
    _os_log_impl(&dword_1D16EC000, v70, v71, "%s unable to slurp value %s (missing service) for characteristic %s (%s)", v74, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v76, -1, -1);
    v97 = v74;
    v73 = v120;
    MEMORY[0x1D3893640](v97, -1, -1);

    v98 = v115;
  }

  else
  {

    sub_1D1741A30(a2, &qword_1EC649700, &qword_1D1E6E910);
    v98 = &v121;
  }

  sub_1D1741A30(v98, &qword_1EC649700, &qword_1D1E6E910);
  v99 = type metadata accessor for StaticCharacteristic(0);
  return (*(*(v99 - 8) + 56))(v73, 1, 1, v99);
}

uint64_t StaticCharacteristic.copyReplacing(id:characteristicKind:typedValue:lastValueUpdate:loadingState:properties:serviceId:metadata:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v95 = a4;
  v90 = a7;
  v91 = a1;
  v93 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v79[-v15];
  v17 = sub_1D1E669FC();
  v106 = *(v17 - 8);
  v107 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v79[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v89 = &v79[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v79[-v22];
  v24 = sub_1D1E66A7C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v104 = &v79[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v79[-v28];
  v30 = *a2;
  v31 = *(a3 + 8);
  v97 = *a3;
  v98 = v31;
  v32 = *(a3 + 16);
  v33 = *(a5 + 8);
  v85 = *a5;
  v86 = v33;
  v87 = *(a5 + 16);
  v88 = *(a5 + 24);
  v96 = *a6;
  v80 = *(a6 + 8);
  v34 = *a8;
  v102 = a8[1];
  v103 = v34;
  v35 = a8[2];
  v100 = a8[3];
  v101 = v35;
  v99 = a8[4];
  sub_1D1741C08(v91, v23, &qword_1EC642590, qword_1D1E71260);
  v36 = *(v25 + 48);
  v37 = v36(v23, 1, v24);
  v92 = v29;
  v81 = v36;
  if (v37 == 1)
  {
    v38 = v29;
    v39 = v94;
    (*(v25 + 16))(v38, v94, v24);
    if (v36(v23, 1, v24) != 1)
    {
      sub_1D1741A30(v23, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v25 + 32))(v29, v23, v24);
    v39 = v94;
  }

  if (v30 == 174)
  {
    v30 = *(v39 + *(type metadata accessor for StaticCharacteristic(0) + 20));
  }

  LODWORD(v91) = v30;
  v40 = v97;
  v41 = v98;
  v42 = v32;
  v43 = v106;
  if (v32 == 255)
  {
    v44 = v39 + *(type metadata accessor for StaticCharacteristic(0) + 24);
    v40 = *v44;
    v41 = *(v44 + 8);
    v42 = *(v44 + 16);
    sub_1D1778244(*v44, v41, *(v44 + 16));
  }

  v82 = v42;
  v83 = v41;
  v84 = v40;
  sub_1D1741C08(v95, v16, &qword_1EC642570, &qword_1D1E6C6A0);
  v45 = *(v43 + 48);
  v46 = v107;
  if (v45(v16, 1, v107) == 1)
  {
    v47 = type metadata accessor for StaticCharacteristic(0);
    v48 = *(v43 + 16);
    v49 = v39;
    v48(v105, v39 + *(v47 + 28), v46);
    v50 = v45(v16, 1, v46);
    sub_1D1CD8B4C(v97, v98, v32);
    v51 = v50 == 1;
    v52 = v81;
    if (!v51)
    {
      sub_1D1741A30(v16, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    (*(v43 + 32))(v105, v16, v46);
    sub_1D1CD8B4C(v97, v98, v32);
    v49 = v39;
    v52 = v81;
  }

  v53 = v85;
  v98 = v85;
  v54 = v86;
  v97 = v86;
  v55 = v87;
  v95 = v87;
  v56 = v88;
  LODWORD(v94) = v88;
  v57 = v89;
  if (v88 == 255)
  {
    v58 = v49 + *(type metadata accessor for StaticCharacteristic(0) + 32);
    v59 = *v58;
    v60 = *(v58 + 16);
    v61 = *(v58 + 24);
    v97 = *(v58 + 8);
    v98 = v59;
    v95 = v60;
    LODWORD(v94) = v61;
    sub_1D17418FC(v59, v97, v60, v61);
  }

  if (v80)
  {
    v96 = *(v49 + *(type metadata accessor for StaticCharacteristic(0) + 36));
  }

  sub_1D1741C08(v90, v57, &qword_1EC642590, qword_1D1E71260);
  if (v52(v57, 1, v24) == 1)
  {
    v62 = type metadata accessor for StaticCharacteristic(0);
    (*(v25 + 16))(v104, v49 + *(v62 + 40), v24);
    v63 = v52(v57, 1, v24);
    sub_1D1CD8B60(v53, v54, v55, v56);
    if (v63 != 1)
    {
      sub_1D1741A30(v57, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v25 + 32))(v104, v57, v24);
    sub_1D1CD8B60(v53, v54, v55, v56);
  }

  v65 = v100;
  v64 = v101;
  v67 = v102;
  v66 = v103;
  v68 = v99;
  if (v100 >> 8 == 0xFFFFFFFF)
  {
    v69 = (v49 + *(type metadata accessor for StaticCharacteristic(0) + 44));
    v66 = *v69;
    v67 = v69[1];
    v64 = v69[2];
    v65 = v69[3];
    v68 = v69[4];
    sub_1D18F323C(*v69, v67, v64, v65, v68);
  }

  v70 = *(v25 + 32);
  v71 = v93;
  v70(v93, v92, v24);
  v72 = type metadata accessor for StaticCharacteristic(0);
  *(v71 + v72[5]) = v91;
  v73 = v71 + v72[6];
  v74 = v83;
  *v73 = v84;
  *(v73 + 8) = v74;
  *(v73 + 16) = v82;
  (*(v106 + 32))(v71 + v72[7], v105, v107);
  v75 = v71 + v72[8];
  v76 = v97;
  *v75 = v98;
  *(v75 + 8) = v76;
  *(v75 + 16) = v95;
  *(v75 + 24) = v94;
  *(v71 + v72[9]) = v96;
  v70(v71 + v72[10], v104, v24);
  v77 = (v71 + v72[11]);
  *v77 = v66;
  v77[1] = v67;
  v77[2] = v64;
  v77[3] = v65;
  v77[4] = v68;
  return sub_1D18F323C(v103, v102, v101, v100, v99);
}

uint64_t StaticCharacteristic.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticCharacteristic.characteristicKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticCharacteristic(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t StaticCharacteristic.typedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticCharacteristic(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1D1778244(v4, v5, v6);
}

uint64_t StaticCharacteristic.lastValueUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticCharacteristic(0) + 28);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticCharacteristic.loadingState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticCharacteristic(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(v3 + 24);
  *(a1 + 24) = v7;

  return sub_1D17418FC(v4, v5, v6, v7);
}

uint64_t StaticCharacteristic.properties.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for StaticCharacteristic(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t StaticCharacteristic.serviceId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticCharacteristic(0) + 40);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticCharacteristic.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StaticCharacteristic(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1D18F323C(v4, v5, v6, v7, v8);
}

unint64_t sub_1D1CD31D8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4965636976726573;
  if (v1 != 6)
  {
    v3 = 0x617461646174656DLL;
  }

  v4 = 0x53676E6964616F6CLL;
  if (v1 != 4)
  {
    v4 = 0x69747265706F7270;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C61566465707974;
  if (v1 != 2)
  {
    v5 = 0x756C61567473616CLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1CD32F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1CDA34C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1CD3318(uint64_t a1)
{
  v2 = sub_1D1CD8B74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD3354(uint64_t a1)
{
  v2 = sub_1D1CD8B74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristic.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D028, &qword_1D1EA3998);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CD8B74();
  sub_1D1E6930C();
  LOBYTE(v24) = 0;
  sub_1D1E66A7C();
  sub_1D1CD94A0(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticCharacteristic(0);
    LOBYTE(v24) = *(v3 + v9[5]);
    v29 = 1;
    sub_1D1CD8BC8();
    sub_1D1E68F1C();
    v10 = v3 + v9[6];
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v24 = *v10;
    v25 = v11;
    LOBYTE(v26) = v12;
    v29 = 2;
    sub_1D1778244(v24, v11, v12);
    sub_1D1CD8C1C();
    sub_1D1E68F1C();
    sub_1D1778284(v24, v25, v26);
    v23 = v9[7];
    LOBYTE(v24) = 3;
    sub_1D1E669FC();
    sub_1D1CD94A0(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68F1C();
    v13 = v3 + v9[8];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v24 = *v13;
    v25 = v14;
    v26 = v15;
    LOBYTE(v27) = v16;
    v29 = 4;
    sub_1D17418FC(v24, v14, v15, v16);
    sub_1D1CD8C70();
    sub_1D1E68F1C();
    sub_1D1757A60(v24, v25, v26, v27);
    v24 = *(v3 + v9[9]);
    v29 = 5;
    sub_1D1CD8CC4();
    sub_1D1E68F1C();
    LOBYTE(v24) = 6;
    sub_1D1E68F1C();
    v17 = (v3 + v9[11]);
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v21 = v17[4];
    v24 = *v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = 7;
    sub_1D18F323C(v24, v18, v19, v20, v21);
    sub_1D1CD8D18();
    sub_1D1E68E5C();
    sub_1D18F3260(v24, v25, v26, v27, v28);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticCharacteristic.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1CD94A0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for StaticCharacteristic(0);
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  CharacteristicKind.Value.hash(into:)(a1);
  sub_1D1E669FC();
  sub_1D1CD94A0(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  v4 = (v1 + v3[8]);
  v5 = *v4;
  if (*(v4 + 24) > 1u)
  {
    v7 = v4[1];
    v8 = v4[2];
    if (*(v4 + 24) == 2)
    {
      MEMORY[0x1D3892850](3);
      MEMORY[0x1D3892850](v5);
      sub_1D1E678EC();
      goto LABEL_15;
    }

    if (v8 | v7 | v5)
    {
      if (v5 != 1 || v8 | v7)
      {
        v9 = 5;
      }

      else
      {
        v9 = 4;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (*(v4 + 24))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    MEMORY[0x1D3892850](v6);
    v9 = v5 & 1;
  }

  MEMORY[0x1D3892850](v9);
LABEL_15:
  MEMORY[0x1D3892850](*(v1 + v3[9]));
  sub_1D1E676EC();
  v10 = (v1 + v3[11]);
  v11 = v10[3];
  if (v11 >> 8 == 0xFFFFFFFF)
  {
    return sub_1D1E6922C();
  }

  v13 = *v10;
  sub_1D1E6922C();
  v14 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v14 == 2)
    {
      MEMORY[0x1D3892850](2);
      v15 = v13;
    }

    else
    {
      v15 = 3;
    }

    return MEMORY[0x1D3892850](v15);
  }

  else if (v14)
  {
    MEMORY[0x1D3892850](1);
    return StaticCharacteristicMetadata.FloatMetadata.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    return StaticCharacteristicMetadata.IntMetadata.hash(into:)(a1);
  }
}

uint64_t StaticCharacteristic.hashValue.getter()
{
  sub_1D1E6920C();
  StaticCharacteristic.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristic.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1D1E669FC();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E66A7C();
  v47 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = v40 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D060, &qword_1D1EA39A0);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v11 = v40 - v10;
  v12 = type metadata accessor for StaticCharacteristic(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CD8B74();
  v50 = v11;
  v15 = v52;
  sub_1D1E692FC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v52 = v8;
  v16 = v12;
  v42 = v14;
  v17 = v47;
  LOBYTE(v53) = 0;
  v18 = sub_1D1CD94A0(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D1E68D7C();
  v19 = v5;
  v20 = *(v17 + 32);
  v21 = v42;
  v22 = v49;
  v49 = v19;
  v20(v42, v22);
  v56 = 1;
  sub_1D1CD8D6C();
  sub_1D1E68D7C();
  v21[v16[5]] = v53;
  v56 = 2;
  sub_1D1CD8DC0();
  sub_1D1E68D7C();
  v40[1] = v18;
  v41 = a1;
  v23 = v54;
  v24 = &v21[v16[6]];
  *v24 = v53;
  v24[16] = v23;
  LOBYTE(v53) = 3;
  sub_1D1CD94A0(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v25 = v44;
  v26 = v46;
  sub_1D1E68D7C();
  (*(v45 + 32))(&v42[v16[7]], v25, v26);
  v56 = 4;
  sub_1D1CD8E14();
  sub_1D1E68D7C();
  v27 = v54;
  v28 = BYTE8(v54);
  v29 = v42;
  v30 = &v42[v16[8]];
  *v30 = v53;
  *(v30 + 2) = v27;
  v30[24] = v28;
  v56 = 5;
  sub_1D1CD8E68();
  sub_1D1E68D7C();
  v31 = v48;
  v32 = v52;
  *&v29[v16[9]] = v53;
  LOBYTE(v53) = 6;
  v33 = v49;
  sub_1D1E68D7C();
  (v20)(&v42[v16[10]], v32, v33);
  v56 = 7;
  sub_1D1CD8EBC();
  sub_1D1E68CBC();
  (*(v31 + 8))(v50, v51);
  v34 = v55;
  v36 = v42;
  v35 = v43;
  v37 = &v42[v16[11]];
  v38 = v54;
  *v37 = v53;
  *(v37 + 1) = v38;
  *(v37 + 4) = v34;
  sub_1D18F3284(v36, v35);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1D1CD8F10(v36);
}

uint64_t sub_1D1CD42B8()
{
  sub_1D1E6920C();
  StaticCharacteristic.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CD42FC(uint64_t a1)
{
  sub_1D1E6920C();
  StaticCharacteristic.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristic.LoadingState.error.getter()
{
  if (*(v0 + 24) != 2)
  {
    return 0;
  }

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v1 == sub_1D1E6781C() && v2 == v3)
  {
  }

  else
  {
    v5 = sub_1D1E6904C();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for HMError(0);
  sub_1D1CD8538(MEMORY[0x1E69E7CC0]);
  sub_1D1CD94A0(&qword_1EC6428A0, type metadata accessor for HMError, &unk_1D1E6E3FC);
  sub_1D1E6654C();
  return v7;
}

uint64_t sub_1D1CD44B0()
{
  if (*v0)
  {
    return 0x6D617246656D6F68;
  }

  else
  {
    return 0x65646F4D61746164;
  }
}

uint64_t sub_1D1CD44FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65646F4D61746164 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617246656D6F68 && a2 == 0xED00006B726F7765)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D1CD45E8(uint64_t a1)
{
  v2 = sub_1D1CD8F6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD4624(uint64_t a1)
{
  v2 = sub_1D1CD8F6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD4660(uint64_t a1)
{
  v2 = sub_1D1CD9014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD469C(uint64_t a1)
{
  v2 = sub_1D1CD9014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD46D8(uint64_t a1)
{
  v2 = sub_1D1CD8FC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD4714(uint64_t a1)
{
  v2 = sub_1D1CD8FC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristic.LoadingState.Source.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D090, &qword_1D1EA39A8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D098, &qword_1D1EA39B0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0A0, &qword_1D1EA39B8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CD8F6C();
  sub_1D1E6930C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D1CD8FC0();
    v14 = v18;
    sub_1D1E68DFC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D1CD9014();
    sub_1D1E68DFC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t StaticCharacteristic.LoadingState.Source.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristic.LoadingState.Source.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0C0, &qword_1D1EA39C0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0C8, &qword_1D1EA39C8);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0D0, &unk_1D1EA39D0);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CD8F6C();
  v12 = v31;
  sub_1D1E692FC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D1E68DDC();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D18085D0();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D1E688EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v22 = &type metadata for StaticCharacteristic.LoadingState.Source;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D1CD8FC0();
        sub_1D1E68C4C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D1CD9014();
        sub_1D1E68C4C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static StaticCharacteristic.LoadingState.Error.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1CD4FA8()
{
  if (*v0)
  {
    return 0x6E69616D6F64;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_1D1CD4FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D1CD50B0(uint64_t a1)
{
  v2 = sub_1D1CD9068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD50EC(uint64_t a1)
{
  v2 = sub_1D1CD9068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristic.LoadingState.Error.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0D8, &qword_1D1EA39E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CD9068();
  sub_1D1E6930C();
  v12 = 0;
  sub_1D1E68EFC();
  if (!v2)
  {
    v11 = 1;
    sub_1D1E68ECC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StaticCharacteristic.LoadingState.Error.hash(into:)(uint64_t a1)
{
  MEMORY[0x1D3892850](*v1);

  return sub_1D1E678EC();
}

uint64_t StaticCharacteristic.LoadingState.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristic.LoadingState.Error.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0E8, &qword_1D1EA39E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CD9068();
  sub_1D1E692FC();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_1D1E68D5C();
    v15 = 1;
    v11 = sub_1D1E68D2C();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1CD5518(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1CD5560()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1CD55C4(uint64_t a1)
{
  MEMORY[0x1D3892850](*v1);

  return sub_1D1E678EC();
}

uint64_t sub_1D1CD5618(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v2);
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1CD56A8()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 0x726F727265;
  v4 = 0x7964616572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72506E4964616572;
  if (v1 != 1)
  {
    v5 = 0x506E496574697277;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1CD5778@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1CDA600(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1CD57A0(uint64_t a1)
{
  v2 = sub_1D1CD90BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD57DC(uint64_t a1)
{
  v2 = sub_1D1CD90BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD5818(uint64_t a1)
{
  v2 = sub_1D1CD91B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD5854(uint64_t a1)
{
  v2 = sub_1D1CD91B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD5890(uint64_t a1)
{
  v2 = sub_1D1CD935C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD58CC(uint64_t a1)
{
  v2 = sub_1D1CD935C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD5908(uint64_t a1)
{
  v2 = sub_1D1CD9308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD5944(uint64_t a1)
{
  v2 = sub_1D1CD9308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD5980(uint64_t a1)
{
  v2 = sub_1D1CD9164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD59BC(uint64_t a1)
{
  v2 = sub_1D1CD9164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD59F8(uint64_t a1)
{
  v2 = sub_1D1CD9110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD5A34(uint64_t a1)
{
  v2 = sub_1D1CD9110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CD5A70(uint64_t a1)
{
  v2 = sub_1D1CD9260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CD5AAC(uint64_t a1)
{
  v2 = sub_1D1CD9260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristic.LoadingState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0F0, &qword_1D1EA39F0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D0F8, &qword_1D1EA39F8);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D100, &qword_1D1EA3A00);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D108, &qword_1D1EA3A08);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D110, &qword_1D1EA3A10);
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D118, &qword_1D1EA3A18);
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D120, &qword_1D1EA3A20);
  v55 = *(v17 - 8);
  v56 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v18 = v1[1];
  v54 = *v1;
  v19 = v1[2];
  v20 = *(v1 + 24);
  v21 = a1[3];
  v22 = a1;
  v24 = &v37 - v23;
  __swift_project_boxed_opaque_existential_1(v22, v21);
  sub_1D1CD90BC();
  sub_1D1E6930C();
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      LOBYTE(v57) = 3;
      sub_1D1CD91B8();
      v27 = v51;
      v28 = v24;
      v29 = v56;
      sub_1D1E68DFC();
      v57 = v54;
      v58 = v18;
      v59 = v19;
      sub_1D1CD920C();
      v30 = v53;
      sub_1D1E68F1C();
      (*(v52 + 8))(v27, v30);
      return (*(v55 + 8))(v28, v29);
    }

    if (v19 | v18 | v54)
    {
      if (v54 != 1 || v19 | v18)
      {
        LOBYTE(v57) = 5;
        sub_1D1CD9110();
        v34 = v41;
        v25 = v56;
        sub_1D1E68DFC();
        v36 = v42;
        v35 = v43;
      }

      else
      {
        LOBYTE(v57) = 4;
        sub_1D1CD9164();
        v34 = v38;
        v25 = v56;
        sub_1D1E68DFC();
        v36 = v39;
        v35 = v40;
      }

      (*(v36 + 8))(v34, v35);
    }

    else
    {
      LOBYTE(v57) = 0;
      sub_1D1CD935C();
      v25 = v56;
      sub_1D1E68DFC();
      (*(v44 + 8))(v16, v45);
    }
  }

  else if (v20)
  {
    LOBYTE(v57) = 2;
    sub_1D1CD9260();
    v32 = v48;
    v25 = v56;
    sub_1D1E68DFC();
    LOBYTE(v57) = v54 & 1;
    sub_1D1CD92B4();
    v33 = v50;
    sub_1D1E68F1C();
    (*(v49 + 8))(v32, v33);
  }

  else
  {
    LOBYTE(v57) = 1;
    sub_1D1CD9308();
    v25 = v56;
    sub_1D1E68DFC();
    LOBYTE(v57) = v54 & 1;
    sub_1D1CD92B4();
    v26 = v47;
    sub_1D1E68F1C();
    (*(v46 + 8))(v13, v26);
  }

  return (*(v55 + 8))(v24, v25);
}

uint64_t StaticCharacteristic.LoadingState.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 24) <= 1u)
  {
    if (*(v1 + 24))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    MEMORY[0x1D3892850](v3);
    v7 = v2 & 1;
    return MEMORY[0x1D3892850](v7);
  }

  v4 = v1[1];
  v5 = v1[2];
  if (*(v1 + 24) != 2)
  {
    if (v5 | v4 | v2)
    {
      if (v2 == 1 && (v5 | v4) == 0)
      {
        v7 = 4;
      }

      else
      {
        v7 = 5;
      }
    }

    else
    {
      v7 = 0;
    }

    return MEMORY[0x1D3892850](v7);
  }

  MEMORY[0x1D3892850](3);
  MEMORY[0x1D3892850](v2);

  return sub_1D1E678EC();
}

uint64_t StaticCharacteristic.LoadingState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1D1E6920C();
  if (v4 <= 1)
  {
    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    MEMORY[0x1D3892850](v5);
    v6 = v1 & 1;
LABEL_8:
    MEMORY[0x1D3892850](v6);
    return sub_1D1E6926C();
  }

  if (v4 != 2)
  {
    if (v3 | v2 | v1)
    {
      if (v1 != 1 || v3 | v2)
      {
        v6 = 5;
      }

      else
      {
        v6 = 4;
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_8;
  }

  MEMORY[0x1D3892850](3);
  MEMORY[0x1D3892850](v1);
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristic.LoadingState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D170, &qword_1D1EA3A28);
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v47 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D178, &qword_1D1EA3A30);
  v58 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v64 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D180, &qword_1D1EA3A38);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D188, &qword_1D1EA3A40);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v47 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D190, &qword_1D1EA3A48);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D198, &qword_1D1EA3A50);
  v50 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D1A0, &qword_1D1EA3A58);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - v18;
  v20 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D1CD90BC();
  v21 = v66;
  sub_1D1E692FC();
  if (!v21)
  {
    v22 = v15;
    v48 = v13;
    v49 = v12;
    v24 = v63;
    v23 = v64;
    v25 = v65;
    v66 = v17;
    v26 = v19;
    v27 = sub_1D1E68DDC();
    v28 = (2 * *(v27 + 16)) | 1;
    v70 = v27;
    v71 = v27 + 32;
    v72 = 0;
    v73 = v28;
    v29 = sub_1D18085D8();
    if (v29 == 6 || v72 != v73 >> 1)
    {
      v32 = sub_1D1E688EC();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v34 = &type metadata for StaticCharacteristic.LoadingState;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v66 + 8))(v19, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29 > 2u)
      {
        if (v29 == 3)
        {
          LOBYTE(v67) = 3;
          sub_1D1CD91B8();
          v36 = v19;
          sub_1D1E68C4C();
          v46 = v62;
          sub_1D1CD93B0();
          v37 = v56;
          sub_1D1E68D7C();
          (*(v57 + 8))(v24, v37);
          (*(v66 + 8))(v36, v16);
          swift_unknownObjectRelease();
          v45 = v67;
          v42 = v68;
          v44 = 2;
          v43 = v69;
        }

        else
        {
          v46 = v62;
          if (v29 == 4)
          {
            LOBYTE(v67) = 4;
            sub_1D1CD9164();
            sub_1D1E68C4C();
            (*(v58 + 8))(v23, v53);
            (*(v66 + 8))(v26, v16);
            swift_unknownObjectRelease();
            v42 = 0;
            v43 = 0;
            v44 = 3;
            v45 = 1;
          }

          else
          {
            LOBYTE(v67) = 5;
            sub_1D1CD9110();
            sub_1D1E68C4C();
            (*(v59 + 8))(v25, v60);
            (*(v66 + 8))(v26, v16);
            swift_unknownObjectRelease();
            v42 = 0;
            v43 = 0;
            v44 = 3;
            v45 = 2;
          }
        }
      }

      else if (v29)
      {
        if (v29 == 1)
        {
          LOBYTE(v67) = 1;
          sub_1D1CD9308();
          v30 = v49;
          sub_1D1E68C4C();
          v31 = v66;
          sub_1D1CD9404();
          v41 = v52;
          sub_1D1E68D7C();
          (*(v51 + 8))(v30, v41);
          (*(v31 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = v67;
          v46 = v62;
        }

        else
        {
          LOBYTE(v67) = 2;
          sub_1D1CD9260();
          v38 = v61;
          v39 = v19;
          sub_1D1E68C4C();
          v46 = v62;
          sub_1D1CD9404();
          v40 = v55;
          sub_1D1E68D7C();
          (*(v54 + 8))(v38, v40);
          (*(v66 + 8))(v39, v16);
          swift_unknownObjectRelease();
          v42 = 0;
          v43 = 0;
          v45 = v67;
          v44 = 1;
        }
      }

      else
      {
        LOBYTE(v67) = 0;
        sub_1D1CD935C();
        sub_1D1E68C4C();
        (*(v50 + 8))(v22, v48);
        (*(v66 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v45 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 3;
        v46 = v62;
      }

      *v46 = v45;
      *(v46 + 8) = v42;
      *(v46 + 16) = v43;
      *(v46 + 24) = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_1D1CD6DC8(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1D1E6920C();
  StaticCharacteristic.LoadingState.hash(into:)(v5);
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristic.characteristic.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1CD6F1C, 0, 0);
}

uint64_t sub_1D1CD6F1C()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[10] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1CD700C;
    v4 = 0;
  }

  else
  {
    v0[12] = sub_1D1E67E1C();
    v0[13] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1CD7330;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1CD700C()
{
  v33 = v0;
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1821898();
    sub_1D1E67C1C();

    v32[0] = sub_1D1749970(v4);
    sub_1D1747DDC(v32);

    v5 = v32[0];
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[5];
  v9 = *(v0[7] + 16);
  v9(v0[9], v8, v7);
  v9(v6, v8, v7);
  if (v5 >> 62)
  {
LABEL_31:
    v10 = sub_1D1E6873C();
  }

  else
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = v5 & 0xC000000000000001;
  v13 = (v5 + 32);
  while (v10 != v11)
  {
    if (v12)
    {
      v14 = MEMORY[0x1D3891EF0](v11, v5);
    }

    else
    {
      if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v14 = *(v5 + 8 * v11 + 32);
    }

    v15 = v14;
    v16 = v0[8];
    v32[0] = v14;
    sub_1D1A8A054(v16, &v31);

    v17 = v31;
    if (v17)
    {
      v10 = v11;
      break;
    }

    if (__OFADD__(v11++, 1))
    {
      goto LABEL_30;
    }
  }

  if (!(v5 >> 62))
  {
    if (v10 != *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v13 = *(v0[7] + 8);
    (v13)(v0[9], v0[6]);
    v24 = 0;
    goto LABEL_26;
  }

  if (v10 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v12)
  {
    v19 = MEMORY[0x1D3891EF0](v10, v5);
  }

  else
  {
    if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v19 = v13[v10];
  }

  v20 = v19;
  v21 = v0[9];
  v22 = v0[6];
  v23 = v0[7];
  v32[0] = v19;
  sub_1D1A8A054(v21, &v31);
  v13 = *(v23 + 8);
  (v13)(v21, v22);

  v24 = v31;
  if (!v31)
  {
LABEL_34:
    v27 = (v13)(v0[8], v0[6]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v27, v28, v29);
  }

LABEL_26:
  v0[11] = v24;
  v25 = v0[8];
  v26 = v0[6];

  (v13)(v25, v26);
  v27 = sub_1D1B9A998;
  v28 = 0;
  v29 = 0;

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1D1CD7330()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1CD73C8, 0, 0);
}

uint64_t sub_1D1CD73C8(uint64_t a1)
{
  *(v1 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1CD7454, v3, v2);
}

uint64_t sub_1D1CD7454()
{

  *(v0 + 120) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1CD74C8, 0, 0);
}

uint64_t sub_1D1CD74C8(uint64_t a1)
{
  *(v1 + 128) = sub_1D1E66A2C();
  *(v1 + 136) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1CD7560, v3, v2);
}

uint64_t sub_1D1CD7560()
{
  v1 = v0[16];
  v2 = v0[15];

  v3 = [v2 characteristicFor_];

  v4 = v0[1];

  return v4(v3);
}

uint64_t StaticCharacteristic.stringValue.getter()
{
  v1 = 0;
  v2 = (v0 + *(type metadata accessor for StaticCharacteristic(0) + 24));
  if (*(v2 + 16) == 8)
  {
    v1 = *v2;
  }

  return v1;
}

uint64_t StaticCharacteristic.dataValue.getter()
{
  v1 = v0 + *(type metadata accessor for StaticCharacteristic(0) + 24);
  if (*(v1 + 16) != 10)
  {
    return 0;
  }

  v2 = *v1;
  sub_1D1741854(*v1, *(v1 + 8));
  return v2;
}

uint64_t StaticCharacteristic.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](656434281, 0xE400000000000000);
  sub_1D1E66A7C();
  sub_1D1CD94A0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v0 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v0);

  MEMORY[0x1D3890F70](0xD000000000000018, 0x80000001D1EC8260);
  type metadata accessor for StaticCharacteristic(0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC8280);
  v1 = CharacteristicKind.Value.description.getter();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](39, 0xE100000000000000);
  return 0;
}

uint64_t StaticCharacteristic.debugDescription.getter()
{
  v1 = sub_1D1E6929C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v25 + 1) = type metadata accessor for StaticCharacteristic(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  sub_1D18F3284(v0, boxed_opaque_existential_1);
  sub_1D1E6927C();
  v6 = sub_1D1E6928C();
  (*(v2 + 8))(v4, v1);
  v17[1] = v6;
  sub_1D1E68A9C();
  sub_1D1E68BFC();
  if (*(&v26 + 1))
  {
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v23[0] = v24;
      v23[1] = v25;
      v23[2] = v26;
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_1D1741C08(v23, &v18, &qword_1EC64C4A8, &qword_1D1EA3A70);
      if (v19)
      {
        v8 = v18;
      }

      else
      {
        v8 = 0x206E776F6E6B6E55;
      }

      if (v19)
      {
        v9 = v19;
      }

      else
      {
        v9 = 0xED00006C6562614CLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D3890F70](v8, v9);

      MEMORY[0x1D3890F70](8250, 0xE200000000000000);
      sub_1D1E68ABC();
      v10 = v21;
      v11 = v22;
      sub_1D1741A30(v23, &qword_1EC64C4A8, &qword_1D1EA3A70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D177CF00(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_1D177CF00((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v14 = &v7[16 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v11;
      sub_1D1E68BFC();
    }

    while (*(&v26 + 1));
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  *&v24 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v15 = sub_1D1E6770C();

  return v15;
}

uint64_t sub_1D1CD7B54()
{
  v0 = sub_1D1E669FC();
  v19 = *(v0 - 8);
  v20 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = type metadata accessor for StaticCharacteristic(0);
  __swift_allocate_value_buffer(v9, qword_1EC64D010);
  v10 = __swift_project_value_buffer(v9, qword_1EC64D010);
  sub_1D1E66A0C();
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  result = v13(v8, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1D1E6698C();
    sub_1D1E66A0C();
    result = v13(v6, 1, v11);
    if (result != 1)
    {
      v15 = *(v12 + 32);
      v15(v10, v8, v11);
      *(v10 + v9[5]) = 105;
      v16 = v10 + v9[6];
      *v16 = xmmword_1D1E85870;
      *(v16 + 16) = 0;
      (*(v19 + 32))(v10 + v9[7], v2, v20);
      v17 = v10 + v9[8];
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      *v17 = 1;
      *(v17 + 24) = 3;
      *(v10 + v9[9]) = 7;
      result = (v15)(v10 + v9[10], v6, v11);
      v18 = v10 + v9[11];
      *v18 = 0;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *(v18 + 24) = xmmword_1D1EA3980;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t static StaticCharacteristic.sample.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6423D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StaticCharacteristic(0);
  v3 = __swift_project_value_buffer(v2, qword_1EC64D010);

  return sub_1D18F3284(v3, a1);
}

BOOL _s13HomeDataModel20StaticCharacteristicV12LoadingStateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v19[0] = *a1;
  v19[1] = v4;
  v19[2] = v5;
  v20 = v6;
  v21 = v8;
  v22 = v7;
  v23 = v9;
  v24 = v10;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v10 == 1)
      {
LABEL_12:
        sub_1D1741A30(v19, &qword_1EC6454D8, &qword_1D1E79A70);
        return ((v8 ^ v3) & 1) == 0;
      }
    }

    else if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  if (v6 != 2)
  {
    if (v5 | v4 | v3)
    {
      if (v3 != 1 || v5 | v4)
      {
        if (v10 != 3 || v8 != 2)
        {
          goto LABEL_27;
        }
      }

      else if (v10 != 3 || v8 != 1)
      {
        goto LABEL_27;
      }

      if (!(v9 | v7))
      {
        goto LABEL_26;
      }
    }

    else if (v10 == 3 && !(v9 | v7 | v8))
    {
      goto LABEL_26;
    }

LABEL_27:
    v15 = v8;
LABEL_28:
    sub_1D17418FC(v15, v7, v9, v10);
    sub_1D1741A30(v19, &qword_1EC6454D8, &qword_1D1E79A70);
    return 0;
  }

  if (v10 != 2)
  {
    v12 = v9;
    v13 = v7;
    v14 = v10;

    LOBYTE(v10) = v14;
    v7 = v13;
    v9 = v12;
    goto LABEL_27;
  }

  if (v3 != v8)
  {
    sub_1D17418FC(v8, v7, v9, 2);
    v15 = v3;
    v7 = v4;
    v9 = v5;
    LOBYTE(v10) = 2;
    goto LABEL_28;
  }

  if (v4 == v7 && v5 == v9)
  {
    sub_1D17418FC(v3, v4, v5, 2);
    sub_1D17418FC(v3, v4, v5, 2);
LABEL_26:
    sub_1D1741A30(v19, &qword_1EC6454D8, &qword_1D1E79A70);
    return 1;
  }

  v16 = v7;
  v17 = v9;
  v18 = sub_1D1E6904C();
  sub_1D17418FC(v3, v16, v17, 2);
  sub_1D17418FC(v3, v4, v5, 2);
  sub_1D1741A30(v19, &qword_1EC6454D8, &qword_1D1E79A70);
  return (v18 & 1) != 0;
}

BOOL _s13HomeDataModel20StaticCharacteristicV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticCharacteristic(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  LOBYTE(v5) = *(a2 + v5);
  LOBYTE(v48) = v6;
  LOBYTE(v43) = v5;
  v7 = CharacteristicKind.rawValue.getter();
  v9 = v8;
  if (v7 == CharacteristicKind.rawValue.getter() && v9 == v10)
  {
  }

  else
  {
    v11 = sub_1D1E6904C();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v13 = *(a1 + v12 + 8);
  v14 = *(a1 + v12 + 16);
  v48 = *(a1 + v12);
  v49 = v13;
  LOBYTE(v50) = v14;
  v15 = a2 + v12;
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  v43 = *v15;
  v44 = v16;
  LOBYTE(v45) = v17;
  sub_1D1778244(v48, v13, v14);
  sub_1D1778244(v43, v16, v17);
  v18 = _s13HomeDataModel18CharacteristicKindO5ValueO2eeoiySbAE_AEtFZ_0(&v48, &v43);
  sub_1D1778284(v43, v44, v45);
  sub_1D1778284(v48, v49, v50);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D1E669AC() & 1) == 0)
  {
    return 0;
  }

  v19 = v4[8];
  v20 = *(a1 + v19 + 8);
  v21 = *(a1 + v19 + 16);
  v22 = *(a1 + v19 + 24);
  v48 = *(a1 + v19);
  v49 = v20;
  v50 = v21;
  LOBYTE(v51) = v22;
  v23 = a2 + v19;
  v25 = *(v23 + 8);
  v26 = *(v23 + 16);
  v27 = *(v23 + 24);
  v43 = *v23;
  v24 = v43;
  v44 = v25;
  v45 = v26;
  LOBYTE(v46) = v27;
  sub_1D17418FC(v48, v20, v21, v22);
  sub_1D17418FC(v24, v25, v26, v27);
  LOBYTE(v24) = _s13HomeDataModel20StaticCharacteristicV12LoadingStateO2eeoiySbAE_AEtFZ_0(&v48, &v43);
  sub_1D1757A60(v43, v44, v45, v46);
  sub_1D1757A60(v48, v49, v50, v51);
  if ((v24 & 1) == 0 || *(a1 + v4[9]) != *(a2 + v4[9]) || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v28 = v4[11];
  v29 = a1 + v28;
  v31 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v33 = *(a1 + v28 + 16);
  v32 = *(a1 + v28 + 24);
  v34 = *(v29 + 32);
  v35 = (a2 + v28);
  v37 = *v35;
  v36 = v35[1];
  v39 = v35[2];
  v38 = v35[3];
  v40 = v35[4];
  if (v32 >> 8 == 0xFFFFFFFF)
  {
    sub_1D18F323C(v31, v30, v33, v32, *(v29 + 32));
    sub_1D18F323C(v37, v36, v39, v38, v40);
    if (v38 >> 8 == 0xFFFFFFFF)
    {
      sub_1D18F3260(v31, v30, v33, v32, v34);
      return 1;
    }

    goto LABEL_16;
  }

  v48 = v31;
  v49 = v30;
  v50 = v33;
  v51 = v32;
  v52 = v34;
  if (v38 >> 8 == 0xFFFFFFFF)
  {
    sub_1D18F323C(v31, v30, v33, v32, v34);
    sub_1D18F323C(v37, v36, v39, v38, v40);
    sub_1D18F323C(v31, v30, v33, v32, v34);
    sub_1D18F3274(v31, v30, v33, v32, v34);
LABEL_16:
    sub_1D18F3260(v31, v30, v33, v32, v34);
    sub_1D18F3260(v37, v36, v39, v38, v40);
    return 0;
  }

  v43 = v37;
  v44 = v36;
  v45 = v39;
  v46 = v38;
  v47 = v40;
  sub_1D18F323C(v31, v30, v33, v32, v34);
  sub_1D18F323C(v37, v36, v39, v38, v40);
  sub_1D18F323C(v31, v30, v33, v32, v34);
  v42 = _s13HomeDataModel28StaticCharacteristicMetadataO2eeoiySbAC_ACtFZ_0(&v48, &v43);
  sub_1D18F3274(v43, v44, v45, v46, v47);
  sub_1D18F3274(v48, v49, v50, v51, v52);
  sub_1D18F3260(v31, v30, v33, v32, v34);
  return v42;
}

uint64_t type metadata accessor for StaticCharacteristic(uint64_t a1)
{
  result = qword_1EE07A678;
  if (!qword_1EE07A678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1CD8538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, &v13, &qword_1EC646238, &qword_1D1E7E8D0);
      v5 = v13;
      v6 = v14;
      result = sub_1D171D2F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D1742194(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t _s13HomeDataModel20StaticCharacteristicV026typedValueIsRoughlyEqualToG0ySbAA0E4KindO0G0O_So8NSObjectCtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (v3 > 5)
  {
    v6 = *(a1 + 8);
    if (*(a1 + 16) <= 8u)
    {
      if (v3 != 6)
      {
        if (v3 == 7)
        {
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          if (v7)
          {
            [v7 doubleValue];
            if (v8 + -2.0 < *&v2)
            {
              v5 = v8 + 2.0 > *&v2;
              return v5 & 1;
            }
          }
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            sub_1D1E6780C();
          }
        }

LABEL_43:
        v5 = 0;
        return v5 & 1;
      }

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
        goto LABEL_43;
      }

      v12 = [v11 intValue];
LABEL_27:
      v5 = v12 == v2;
      return v5 & 1;
    }

    if (v3 == 9)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1D1741854(v2, v6);
        sub_1D1E668AC();
      }

      else
      {
        sub_1D1741854(v2, v6);
      }

      if (v6 >> 60 == 15)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v3 != 10)
      {
        goto LABEL_43;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1D1741854(v2, v6);
        sub_1D1E668AC();
      }

      else
      {
        sub_1D1741854(v2, v6);
      }

      if (v6 >> 60 == 15)
      {
LABEL_41:
        sub_1D1716AA4(v2, v6);
        v5 = 1;
        return v5 & 1;
      }
    }

    sub_1D1716AA4(v2, v6);
    sub_1D1716AA4(0, 0xF000000000000000);
    goto LABEL_43;
  }

  if (*(a1 + 16) > 2u)
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          v5 = v2 == [v9 unsignedLongLongValue];
          return v5 & 1;
        }
      }

      else
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v5 = [v15 integerValue] == v2;
          return v5 & 1;
        }
      }

      goto LABEL_43;
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
      goto LABEL_43;
    }

    v12 = [v13 unsignedIntValue];
    goto LABEL_27;
  }

  if (!*(a1 + 16))
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v5 = [v10 BOOLValue] ^ v2 ^ 1;
      return v5 & 1;
    }

    goto LABEL_43;
  }

  if (v3 != 1)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v5 = [v14 unsignedShortValue] == v2;
      return v5 & 1;
    }

    goto LABEL_43;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_43;
  }

  v5 = [v4 unsignedCharValue] == v2;
  return v5 & 1;
}

uint64_t sub_1D1CD8B4C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D1778244(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D1CD8B60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D17418FC(a1, a2, a3, a4);
  }

  return a1;
}

unint64_t sub_1D1CD8B74()
{
  result = qword_1EC64D030;
  if (!qword_1EC64D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D030);
  }

  return result;
}

unint64_t sub_1D1CD8BC8()
{
  result = qword_1EC64D038;
  if (!qword_1EC64D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D038);
  }

  return result;
}

unint64_t sub_1D1CD8C1C()
{
  result = qword_1EC64D040;
  if (!qword_1EC64D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D040);
  }

  return result;
}

unint64_t sub_1D1CD8C70()
{
  result = qword_1EC64D048;
  if (!qword_1EC64D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D048);
  }

  return result;
}

unint64_t sub_1D1CD8CC4()
{
  result = qword_1EC64D050;
  if (!qword_1EC64D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D050);
  }

  return result;
}

unint64_t sub_1D1CD8D18()
{
  result = qword_1EC64D058;
  if (!qword_1EC64D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D058);
  }

  return result;
}

unint64_t sub_1D1CD8D6C()
{
  result = qword_1EC64D068;
  if (!qword_1EC64D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D068);
  }

  return result;
}

unint64_t sub_1D1CD8DC0()
{
  result = qword_1EC64D070;
  if (!qword_1EC64D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D070);
  }

  return result;
}

unint64_t sub_1D1CD8E14()
{
  result = qword_1EC64D078;
  if (!qword_1EC64D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D078);
  }

  return result;
}

unint64_t sub_1D1CD8E68()
{
  result = qword_1EC64D080;
  if (!qword_1EC64D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D080);
  }

  return result;
}

unint64_t sub_1D1CD8EBC()
{
  result = qword_1EC64D088;
  if (!qword_1EC64D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D088);
  }

  return result;
}

uint64_t sub_1D1CD8F10(uint64_t a1)
{
  v2 = type metadata accessor for StaticCharacteristic(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D1CD8F6C()
{
  result = qword_1EC64D0A8;
  if (!qword_1EC64D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D0A8);
  }

  return result;
}

unint64_t sub_1D1CD8FC0()
{
  result = qword_1EC64D0B0;
  if (!qword_1EC64D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D0B0);
  }

  return result;
}

unint64_t sub_1D1CD9014()
{
  result = qword_1EC64D0B8;
  if (!qword_1EC64D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D0B8);
  }

  return result;
}

unint64_t sub_1D1CD9068()
{
  result = qword_1EC64D0E0;
  if (!qword_1EC64D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D0E0);
  }

  return result;
}

unint64_t sub_1D1CD90BC()
{
  result = qword_1EC64D128;
  if (!qword_1EC64D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D128);
  }

  return result;
}

unint64_t sub_1D1CD9110()
{
  result = qword_1EC64D130;
  if (!qword_1EC64D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D130);
  }

  return result;
}

unint64_t sub_1D1CD9164()
{
  result = qword_1EC64D138;
  if (!qword_1EC64D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D138);
  }

  return result;
}

unint64_t sub_1D1CD91B8()
{
  result = qword_1EC64D140;
  if (!qword_1EC64D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D140);
  }

  return result;
}

unint64_t sub_1D1CD920C()
{
  result = qword_1EC64D148;
  if (!qword_1EC64D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D148);
  }

  return result;
}

unint64_t sub_1D1CD9260()
{
  result = qword_1EC64D150;
  if (!qword_1EC64D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D150);
  }

  return result;
}

unint64_t sub_1D1CD92B4()
{
  result = qword_1EC64D158;
  if (!qword_1EC64D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D158);
  }

  return result;
}

unint64_t sub_1D1CD9308()
{
  result = qword_1EC64D160;
  if (!qword_1EC64D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D160);
  }

  return result;
}

unint64_t sub_1D1CD935C()
{
  result = qword_1EC64D168;
  if (!qword_1EC64D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D168);
  }

  return result;
}

unint64_t sub_1D1CD93B0()
{
  result = qword_1EC64D1A8;
  if (!qword_1EC64D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1A8);
  }

  return result;
}

unint64_t sub_1D1CD9404()
{
  result = qword_1EC64D1B0;
  if (!qword_1EC64D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1B0);
  }

  return result;
}

uint64_t sub_1D1CD94A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1CD9534()
{
  result = qword_1EC64D1C0;
  if (!qword_1EC64D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1C0);
  }

  return result;
}

unint64_t sub_1D1CD958C()
{
  result = qword_1EC64D1C8;
  if (!qword_1EC64D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1C8);
  }

  return result;
}

unint64_t sub_1D1CD95E4()
{
  result = qword_1EC64D1D0;
  if (!qword_1EC64D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1D0);
  }

  return result;
}

void sub_1D1CD9660(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1E669FC();
    if (v2 <= 0x3F)
    {
      sub_1D1CD972C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D1CD972C()
{
  if (!qword_1EE07A0E8)
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07A0E8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel20StaticCharacteristicV12LoadingStateO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1D1CD9798(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1D1CD98A8()
{
  result = qword_1EC64D1D8;
  if (!qword_1EC64D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1D8);
  }

  return result;
}

unint64_t sub_1D1CD9900()
{
  result = qword_1EC64D1E0;
  if (!qword_1EC64D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1E0);
  }

  return result;
}

unint64_t sub_1D1CD9958()
{
  result = qword_1EC64D1E8;
  if (!qword_1EC64D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1E8);
  }

  return result;
}

unint64_t sub_1D1CD99B0()
{
  result = qword_1EC64D1F0;
  if (!qword_1EC64D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1F0);
  }

  return result;
}

unint64_t sub_1D1CD9A08()
{
  result = qword_1EC64D1F8;
  if (!qword_1EC64D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D1F8);
  }

  return result;
}

unint64_t sub_1D1CD9A60()
{
  result = qword_1EC64D200;
  if (!qword_1EC64D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D200);
  }

  return result;
}

unint64_t sub_1D1CD9AB8()
{
  result = qword_1EC64D208;
  if (!qword_1EC64D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D208);
  }

  return result;
}

unint64_t sub_1D1CD9B10()
{
  result = qword_1EC64D210;
  if (!qword_1EC64D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D210);
  }

  return result;
}

unint64_t sub_1D1CD9B68()
{
  result = qword_1EC64D218;
  if (!qword_1EC64D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D218);
  }

  return result;
}

unint64_t sub_1D1CD9BC0()
{
  result = qword_1EC64D220;
  if (!qword_1EC64D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D220);
  }

  return result;
}

unint64_t sub_1D1CD9C18()
{
  result = qword_1EC64D228;
  if (!qword_1EC64D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D228);
  }

  return result;
}

unint64_t sub_1D1CD9C70()
{
  result = qword_1EC64D230;
  if (!qword_1EC64D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D230);
  }

  return result;
}

unint64_t sub_1D1CD9CC8()
{
  result = qword_1EC64D238;
  if (!qword_1EC64D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D238);
  }

  return result;
}

unint64_t sub_1D1CD9D20()
{
  result = qword_1EC64D240;
  if (!qword_1EC64D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D240);
  }

  return result;
}

unint64_t sub_1D1CD9D78()
{
  result = qword_1EC64D248;
  if (!qword_1EC64D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D248);
  }

  return result;
}

unint64_t sub_1D1CD9DD0()
{
  result = qword_1EC64D250;
  if (!qword_1EC64D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D250);
  }

  return result;
}

unint64_t sub_1D1CD9E28()
{
  result = qword_1EC64D258;
  if (!qword_1EC64D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D258);
  }

  return result;
}

unint64_t sub_1D1CD9E80()
{
  result = qword_1EC64D260;
  if (!qword_1EC64D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D260);
  }

  return result;
}

unint64_t sub_1D1CD9ED8()
{
  result = qword_1EC64D268;
  if (!qword_1EC64D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D268);
  }

  return result;
}

unint64_t sub_1D1CD9F30()
{
  result = qword_1EC64D270;
  if (!qword_1EC64D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D270);
  }

  return result;
}

unint64_t sub_1D1CD9F88()
{
  result = qword_1EC64D278;
  if (!qword_1EC64D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D278);
  }

  return result;
}

unint64_t sub_1D1CD9FE0()
{
  result = qword_1EC64D280;
  if (!qword_1EC64D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D280);
  }

  return result;
}

unint64_t sub_1D1CDA038()
{
  result = qword_1EC64D288;
  if (!qword_1EC64D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D288);
  }

  return result;
}

unint64_t sub_1D1CDA090()
{
  result = qword_1EC64D290;
  if (!qword_1EC64D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D290);
  }

  return result;
}

unint64_t sub_1D1CDA0E8()
{
  result = qword_1EC64D298;
  if (!qword_1EC64D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D298);
  }

  return result;
}

unint64_t sub_1D1CDA140()
{
  result = qword_1EC64D2A0;
  if (!qword_1EC64D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2A0);
  }

  return result;
}

unint64_t sub_1D1CDA198()
{
  result = qword_1EC64D2A8;
  if (!qword_1EC64D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2A8);
  }

  return result;
}

unint64_t sub_1D1CDA1F0()
{
  result = qword_1EC64D2B0;
  if (!qword_1EC64D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2B0);
  }

  return result;
}

unint64_t sub_1D1CDA248()
{
  result = qword_1EC64D2B8;
  if (!qword_1EC64D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2B8);
  }

  return result;
}

unint64_t sub_1D1CDA2A0()
{
  result = qword_1EC64D2C0;
  if (!qword_1EC64D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2C0);
  }

  return result;
}

unint64_t sub_1D1CDA2F8()
{
  result = qword_1EC64D2C8;
  if (!qword_1EC64D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2C8);
  }

  return result;
}

uint64_t sub_1D1CDA34C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC82A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61566465707974 && a2 == 0xEA00000000006575 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756C61567473616CLL && a2 == 0xEF65746164705565 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53676E6964616F6CLL && a2 == 0xEC00000065746174 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4965636976726573 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D1CDA600(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C61766E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506E4964616572 && a2 == 0xEE0073736572676FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x506E496574697277 && a2 == 0xEF73736572676F72 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7964616572 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC82C0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D1CDA80C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1CDA8FC(uint64_t a1, unsigned __int8 a2)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1CDAA00(uint64_t a1, unsigned __int8 a2)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1CDAB44(uint64_t a1, unsigned __int8 a2)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1CDAC6C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

void *StaticCharacteristicMetadata.IntMetadata.validValues.getter()
{
  if (v0[4])
  {
    v1 = v0[4];
  }

  else
  {
    if (v0[2] <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v0[2];
    }

    v1 = sub_1D1C279CC(v0[1], *v0, v2);
  }

  return v1;
}

void sub_1D1CDADF0(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_16;
  }

  v4 = *a2;
  v5 = a1;
  v6 = [v5 format];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = sub_1D1E6781C();
  v10 = v9;

  if (v4 == 11)
  {
    v11._countAndFlagsBits = v8;
    v11._object = v10;
    CharacteristicKind.Format.init(rawValue:)(v11);
    v4 = v19;
    if (v19 > 6u)
    {
LABEL_5:
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v12 = [v5 maxLength];
          if (v12)
          {
            v13 = v12;
            v14 = [v12 integerValue];
          }

          else
          {
            v14 = 0x7FFFFFFFFFFFFFFFLL;
          }

          a3[1] = 0;
          a3[2] = 0;
          *a3 = v14;
          v18 = xmmword_1D1EA4A70;
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      sub_1D1CDAF88(v5, &v19);
      v15 = v20;
      v17 = v22;
      v16 = v21 | 0x4000000000000000;
LABEL_12:
      *a3 = v19;
      a3[2] = v15;
      a3[3] = v16;
      a3[4] = v17;
      return;
    }
  }

  else
  {

    if (v4 > 6)
    {
      goto LABEL_5;
    }
  }

  if ((v4 - 1) < 6)
  {
    sub_1D1CDB250(v5, &v19);
    v15 = v20;
    v16 = v21;
    v17 = v22;
    goto LABEL_12;
  }

  if (v4)
  {
LABEL_15:

LABEL_16:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v18 = xmmword_1D1EA3980;
    goto LABEL_17;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v18 = xmmword_1D1EA4A60;
LABEL_17:
  *(a3 + 3) = v18;
}

void sub_1D1CDAF88(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 maximumValue];
  if (v4)
  {
    v5 = v4;
    [v4 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 0x7FEFFFFFFFFFFFFFLL;
  }

  v8 = [a1 minimumValue];
  if (v8)
  {
    v9 = v8;
    [v8 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0x10000000000000;
  }

  v12 = [a1 stepValue];
  if (v12)
  {
    v13 = v12;
    [v12 doubleValue];
    v15 = v14;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = [a1 units];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1D1E6781C();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    StaticCharacteristicMetadata.Unit.init(rawValue:)(v21);
    v22 = v37;
  }

  else
  {
    v22 = 8;
  }

  v23 = [a1 validValues];
  if (!v23)
  {

    v28 = 0;
LABEL_28:
    *a2 = v7;
    *(a2 + 8) = v11;
    *(a2 + 16) = v15;
    *(a2 + 24) = v22;
    *(a2 + 32) = v28;
    return;
  }

  v24 = v23;
  sub_1D197CCD0();
  v25 = sub_1D1E67C1C();

  if (!(v25 >> 62))
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  v26 = sub_1D1E6873C();
  if (!v26)
  {
LABEL_27:

    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

LABEL_16:
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D178D49C(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v35 = v22;
    v36 = a2;
    v27 = 0;
    v28 = v38;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1D3891EF0](v27, v25);
      }

      else
      {
        v29 = *(v25 + 8 * v27 + 32);
      }

      v30 = v29;
      [v29 doubleValue];
      v32 = v31;

      v34 = *(v38 + 16);
      v33 = *(v38 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D178D49C((v33 > 1), v34 + 1, 1);
      }

      ++v27;
      *(v38 + 16) = v34 + 1;
      *(v38 + 8 * v34 + 32) = v32;
    }

    while (v26 != v27);

    a2 = v36;
    v22 = v35;
    goto LABEL_28;
  }

  __break(1u);
}

void sub_1D1CDB250(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 maximumValue];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = [a1 minimumValue];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 integerValue];
  }

  else
  {
    v9 = 0x8000000000000000;
  }

  v10 = [a1 stepValue];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 integerValue];
  }

  else
  {
    v12 = 1;
  }

  v13 = [a1 units];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D1E6781C();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    StaticCharacteristicMetadata.Unit.init(rawValue:)(v18);
    v19 = v36;
  }

  else
  {
    v19 = 8;
  }

  v20 = [a1 validValues];
  if (v20)
  {
    v21 = v20;
    v35 = v12;
    sub_1D197CCD0();
    v22 = sub_1D1E67C1C();

    if (v22 >> 62)
    {
      v23 = sub_1D1E6873C();
      if (v23)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
LABEL_16:
        v37 = MEMORY[0x1E69E7CC0];
        sub_1D178D4BC(0, v23 & ~(v23 >> 63), 0);
        if (v23 < 0)
        {
          __break(1u);
          return;
        }

        v32 = v9;
        v33 = a1;
        v34 = v6;
        v24 = 0;
        v25 = v37;
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x1D3891EF0](v24, v22);
          }

          else
          {
            v26 = *(v22 + 8 * v24 + 32);
          }

          v27 = v26;
          v28 = [v26 integerValue];

          v30 = *(v37 + 16);
          v29 = *(v37 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1D178D4BC((v29 > 1), v30 + 1, 1);
          }

          ++v24;
          *(v37 + 16) = v30 + 1;
          *(v37 + 8 * v30 + 32) = v28;
        }

        while (v23 != v24);

        v6 = v34;
        v9 = v32;
        goto LABEL_28;
      }
    }

    v25 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v12 = v35;
    goto LABEL_29;
  }

  v25 = 0;
LABEL_29:
  if (v12 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v12;
  }

  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v31;
  *(a2 + 24) = v19;
  *(a2 + 32) = v25;
}

double *StaticCharacteristicMetadata.FloatMetadata.validValues.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 8);
    if (v2 <= *v0)
    {
      v3 = *(v0 + 16);
      if (v3 <= 0.0)
      {
        v3 = 1.0;
      }

      v1 = sub_1D1C27CF0(v2, *v0, v3);
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
    }
  }

  return v1;
}

void __swiftcall StaticCharacteristicMetadata.FloatMetadata.init(max:min:stepValue:unit:)(HomeDataModel::StaticCharacteristicMetadata::FloatMetadata *__return_ptr retstr, Swift::Double max, Swift::Double min, Swift::Double stepValue, HomeDataModel::StaticCharacteristicMetadata::Unit_optional unit)
{
  v5 = *unit.value;
  retstr->max = max;
  retstr->min = min;
  retstr->stepValue = stepValue;
  retstr->unit.value = v5;
  *(&retstr->optionalValidValues.value._rawValue + 7) = 0;
}

uint64_t sub_1D1CDB5BC(uint64_t a1)
{
  v2 = sub_1D1CDE4B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDB5F8(uint64_t a1)
{
  v2 = sub_1D1CDE4B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristicMetadata.FloatMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D2D0, &unk_1D1EA4A80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v13 = *(v1 + 24);
  v8 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CDE4B0();
  v9 = v4;
  sub_1D1E6930C();
  v20 = 0;
  sub_1D1E68EEC();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = v13;
  v19 = 1;
  sub_1D1E68EEC();
  v18 = 2;
  sub_1D1E68EEC();
  v17 = v10;
  v16 = 3;
  sub_1D1CDE504();
  sub_1D1E68E5C();
  v15 = v8;
  v14 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644F48, &qword_1D1E78420);
  sub_1D1CDE5AC(&qword_1EC64D2E8, MEMORY[0x1E69E63C0], MEMORY[0x1E69E6300]);
  sub_1D1E68E5C();
  return (*(v5 + 8))(v7, v9);
}

uint64_t StaticCharacteristicMetadata.FloatMetadata.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1D3892890](*&v4);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x1D3892890](*&v9);
  if (v6 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v6;
  }

  MEMORY[0x1D3892890](*&v10);
  if (v7 == 8)
  {
    sub_1D1E6922C();
    if (!v8)
    {
      return sub_1D1E6922C();
    }
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();

    if (!v8)
    {
      return sub_1D1E6922C();
    }
  }

  sub_1D1E6922C();

  return sub_1D176F87C(a1, v8);
}

uint64_t StaticCharacteristicMetadata.FloatMetadata.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v3 = *(v0 + 4);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_1D1E6920C();
  StaticCharacteristicMetadata.FloatMetadata.hash(into:)(v5);
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristicMetadata.FloatMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D2F0, &qword_1D1EA4A90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CDE4B0();
  sub_1D1E692FC();
  if (!v2)
  {
    v24 = 0;
    sub_1D1E68D4C();
    v10 = v9;
    v23 = 1;
    sub_1D1E68D4C();
    v13 = v12;
    v22 = 2;
    sub_1D1E68D4C();
    v15 = v14;
    v20 = 3;
    sub_1D1CDE558();
    sub_1D1E68CBC();
    v16 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644F48, &qword_1D1E78420);
    v18[15] = 4;
    sub_1D1CDE5AC(&qword_1EC64D300, MEMORY[0x1E69E63E8], MEMORY[0x1E69E6330]);
    sub_1D1E68CBC();
    (*(v6 + 8))(v8, v5);
    v17 = v19;
    *a2 = v10;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1CDBDBC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v3 = *(v0 + 4);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_1D1E6920C();
  StaticCharacteristicMetadata.FloatMetadata.hash(into:)(v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CDBE24(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v4 = *(v1 + 4);
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_1D1E6920C();
  StaticCharacteristicMetadata.FloatMetadata.hash(into:)(v6);
  return sub_1D1E6926C();
}

void __swiftcall StaticCharacteristicMetadata.IntMetadata.init(max:min:stepValue:unit:validValues:)(HomeDataModel::StaticCharacteristicMetadata::IntMetadata *__return_ptr retstr, Swift::Int max, Swift::Int min, Swift::Int stepValue, HomeDataModel::StaticCharacteristicMetadata::Unit_optional unit, Swift::OpaquePointer_optional validValues)
{
  v6 = *unit.value;
  retstr->max = max;
  retstr->min = min;
  if (stepValue <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = stepValue;
  }

  retstr->stepValue = v7;
  retstr->unit.value = v6;
  *(&retstr->optionalValidValues.value._rawValue + 7) = validValues.value._rawValue;
}

uint64_t sub_1D1CDBEFC(uint64_t a1)
{
  v2 = sub_1D1CDE618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDBF38(uint64_t a1)
{
  v2 = sub_1D1CDE618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristicMetadata.IntMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D308, &qword_1D1EA4A98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = v8;
  HIDWORD(v16) = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1D1CDE618();
  sub_1D1E6930C();
  v25 = 0;
  sub_1D1E68EFC();
  if (!v2)
  {
    v14 = BYTE4(v16);
    v24 = 1;
    sub_1D1E68EFC();
    v23 = 2;
    sub_1D1E68EFC();
    v22 = v14;
    v21 = 3;
    sub_1D1CDE504();
    sub_1D1E68E5C();
    v19 = v9;
    v20 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BF58, &qword_1D1EA4AA0);
    sub_1D1BA3DAC(&qword_1EC64BF60, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1D1E68E5C();
  }

  return (*(v5 + 8))(v7, v13);
}

uint64_t StaticCharacteristicMetadata.IntMetadata.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  MEMORY[0x1D3892850](*v1);
  MEMORY[0x1D3892850](v2);
  MEMORY[0x1D3892850](v3);
  if (v4 == 8)
  {
    sub_1D1E6922C();
    if (!v5)
    {
      return sub_1D1E6922C();
    }
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();

    if (!v5)
    {
      return sub_1D1E6922C();
    }
  }

  sub_1D1E6922C();
  result = MEMORY[0x1D3892850](*(v5 + 16));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = (v5 + 32);
    do
    {
      v9 = *v8++;
      result = MEMORY[0x1D3892850](v9);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t StaticCharacteristicMetadata.IntMetadata.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v3 = *(v0 + 4);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_1D1E6920C();
  StaticCharacteristicMetadata.IntMetadata.hash(into:)(v5);
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristicMetadata.IntMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D318, &qword_1D1EA4AA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CDE618();
  sub_1D1E692FC();
  if (!v2)
  {
    v23 = 0;
    v9 = sub_1D1E68D5C();
    v22 = 1;
    v11 = sub_1D1E68D5C();
    v21 = 2;
    v16 = sub_1D1E68D5C();
    v19 = 3;
    sub_1D1CDE558();
    sub_1D1E68CBC();
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BF58, &qword_1D1EA4AA0);
    v18 = 4;
    sub_1D1BA3DAC(&qword_1EC64BF70, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
    sub_1D1E68CBC();
    (*(v6 + 8))(v8, v5);
    v12 = v16;
    v13 = v17;
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v15;
    *(a2 + 32) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1CDC6B8()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v3 = *(v0 + 4);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_1D1E6920C();
  StaticCharacteristicMetadata.IntMetadata.hash(into:)(v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CDC720(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v4 = *(v1 + 4);
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_1D1E6920C();
  StaticCharacteristicMetadata.IntMetadata.hash(into:)(v6);
  return sub_1D1E6926C();
}

HomeDataModel::StaticCharacteristicMetadata::Unit_optional __swiftcall StaticCharacteristicMetadata.Unit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StaticCharacteristicMetadata.Unit.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x737569736C6563;
  v3 = 7172208;
  if (v1 != 6)
  {
    v3 = 0x6172676F7263696DLL;
  }

  v4 = 0x73646E6F636573;
  if (v1 != 4)
  {
    v4 = 7894380;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x61746E6563726570;
  if (v1 != 2)
  {
    v5 = 0x6572676564637261;
  }

  if (*v0)
  {
    v2 = 0x65686E6572686166;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1D1CDC914(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x737569736C6563;
  v5 = 0xE300000000000000;
  v6 = 7172208;
  if (v2 != 6)
  {
    v6 = 0x6172676F7263696DLL;
    v5 = 0xEE00335E6D2F736DLL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73646E6F636573;
  if (v2 != 4)
  {
    v8 = 7894380;
    v7 = 0xE300000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x61746E6563726570;
  v10 = 0xEA00000000007365;
  if (v2 == 2)
  {
    v10 = 0xEA00000000006567;
  }

  else
  {
    v9 = 0x6572676564637261;
  }

  if (*v1)
  {
    v4 = 0x65686E6572686166;
    v3 = 0xEA00000000007469;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1D1CDCAF0(uint64_t a1)
{
  v2 = sub_1D1CDE9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDCB2C(uint64_t a1)
{
  v2 = sub_1D1CDE9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CDCB68()
{
  v1 = 7630441;
  v2 = 0x676E69727473;
  if (*v0 != 2)
  {
    v2 = 1819242338;
  }

  if (*v0)
  {
    v1 = 0x74616F6C66;
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

uint64_t sub_1D1CDCBCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1CDF900(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1CDCBF4(uint64_t a1)
{
  v2 = sub_1D1CDE978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDCC30(uint64_t a1)
{
  v2 = sub_1D1CDE978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CDCC6C(uint64_t a1)
{
  v2 = sub_1D1CDEA74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDCCA8(uint64_t a1)
{
  v2 = sub_1D1CDEA74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CDCCE4(uint64_t a1)
{
  v2 = sub_1D1CDEB1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDCD20(uint64_t a1)
{
  v2 = sub_1D1CDEB1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CDCD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74676E654C78616DLL && a2 == 0xE900000000000068)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D1E6904C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1CDCE08(uint64_t a1)
{
  v2 = sub_1D1CDEA20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CDCE44(uint64_t a1)
{
  v2 = sub_1D1CDEA20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristicMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D320, &qword_1D1EA4AB0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v26 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D328, &qword_1D1EA4AB8);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v29 = &v26 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D330, &qword_1D1EA4AC0);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D338, &qword_1D1EA4AC8);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D340, &qword_1D1EA4AD0);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = *v1;
  v15 = v1[2];
  v16 = v1[3];
  v36 = v1[1];
  v37 = v15;
  v38 = v1[4];
  v39 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CDE978();
  sub_1D1E6930C();
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 == 2)
    {
      LOBYTE(v42) = 2;
      sub_1D1CDEA20();
      v19 = v29;
      v18 = v41;
      sub_1D1E68DFC();
      v20 = v33;
      sub_1D1E68EFC();
      (*(v31 + 8))(v19, v20);
      return (*(v40 + 8))(v13, v18);
    }

    LOBYTE(v42) = 3;
    sub_1D1CDE9CC();
    v24 = v32;
    v25 = v41;
    sub_1D1E68DFC();
    (*(v34 + 8))(v24, v35);
    return (*(v40 + 8))(v13, v25);
  }

  else
  {
    if (!v17)
    {
      LOBYTE(v42) = 0;
      sub_1D1CDEB1C();
      v18 = v41;
      sub_1D1E68DFC();
      v42 = v39;
      v43 = v36;
      v44 = v37;
      v45 = v16;
      v46 = v38;
      sub_1D1CDEB70();
      sub_1D1E68F1C();
      (*(v27 + 8))(v10, v8);
      return (*(v40 + 8))(v13, v18);
    }

    LOBYTE(v42) = 1;
    sub_1D1CDEA74();
    v22 = v41;
    sub_1D1E68DFC();
    v42 = v39;
    v43 = v36;
    v44 = v37;
    v45 = v16;
    v46 = v38;
    sub_1D1CDEAC8();
    v23 = v30;
    sub_1D1E68F1C();
    (*(v28 + 8))(v7, v23);
    return (*(v40 + 8))(v13, v22);
  }
}

uint64_t StaticCharacteristicMetadata.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3] >> 62;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      MEMORY[0x1D3892850](2);
      v6 = v3;
    }

    else
    {
      v6 = 3;
    }

    return MEMORY[0x1D3892850](v6);
  }

  else if (v4)
  {
    MEMORY[0x1D3892850](1);
    return StaticCharacteristicMetadata.FloatMetadata.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    return StaticCharacteristicMetadata.IntMetadata.hash(into:)(a1);
  }
}

uint64_t StaticCharacteristicMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[3];
  sub_1D1E6920C();
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x1D3892850](2);
      v4 = v1;
    }

    else
    {
      v4 = 3;
    }

    MEMORY[0x1D3892850](v4);
  }

  else if (v3)
  {
    MEMORY[0x1D3892850](1);
    StaticCharacteristicMetadata.FloatMetadata.hash(into:)(v6);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    StaticCharacteristicMetadata.IntMetadata.hash(into:)(v6);
  }

  return sub_1D1E6926C();
}

uint64_t StaticCharacteristicMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D380, &qword_1D1EA4AD8);
  v55 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v44 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D388, &qword_1D1EA4AE0);
  v52 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v53 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D390, &qword_1D1EA4AE8);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D398, &qword_1D1EA4AF0);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D3A0, &unk_1D1EA4AF8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  v15 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D1CDE978();
  v16 = v57;
  sub_1D1E692FC();
  if (!v16)
  {
    v17 = v10;
    v45 = v8;
    v19 = v53;
    v18 = v54;
    v46 = 0;
    v57 = v12;
    v21 = v55;
    v20 = v56;
    v22 = sub_1D1E68DDC();
    v23 = (2 * *(v22 + 16)) | 1;
    v62 = v22;
    v63 = v22 + 32;
    v64 = 0;
    v65 = v23;
    v24 = sub_1D18085BC();
    if (v24 == 4 || v64 != v65 >> 1)
    {
      v32 = v11;
      v33 = sub_1D1E688EC();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v35 = &type metadata for StaticCharacteristicMetadata;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v57 + 8))(v14, v32);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v66);
    }

    if (v24 <= 1u)
    {
      if (v24)
      {
        LOBYTE(v58) = 1;
        sub_1D1CDEA74();
        v40 = v46;
        sub_1D1E68C4C();
        v26 = v57;
        if (!v40)
        {
          sub_1D1CDEBC4();
          v41 = v51;
          sub_1D1E68D7C();
          (*(v50 + 8))(v7, v41);
          (*(v26 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v28 = v58;
          v29 = v59;
          v31 = v61;
          v30 = v60 | 0x4000000000000000;
          goto LABEL_20;
        }
      }

      else
      {
        LOBYTE(v58) = 0;
        sub_1D1CDEB1C();
        v25 = v46;
        sub_1D1E68C4C();
        v26 = v57;
        if (!v25)
        {
          sub_1D1CDEC18();
          v27 = v45;
          sub_1D1E68D7C();
          (*(v48 + 8))(v17, v27);
          (*(v26 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v28 = v58;
          v29 = v59;
          v30 = v60;
          v31 = v61;
LABEL_20:
          v38 = v20;
          goto LABEL_21;
        }
      }

      goto LABEL_18;
    }

    if (v24 == 2)
    {
      LOBYTE(v58) = 2;
      sub_1D1CDEA20();
      v37 = v46;
      sub_1D1E68C4C();
      if (!v37)
      {
        v38 = v20;
        v39 = v47;
        v43 = sub_1D1E68D5C();
        (*(v52 + 8))(v19, v39);
        (*(v57 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v29 = 0;
        v31 = 0;
        v28 = v43;
        v30 = 0x8000000000000000;
LABEL_21:
        *v38 = v28;
        *(v38 + 16) = v29;
        *(v38 + 24) = v30;
        *(v38 + 32) = v31;
        return __swift_destroy_boxed_opaque_existential_1(v66);
      }
    }

    else
    {
      LOBYTE(v58) = 3;
      sub_1D1CDE9CC();
      v42 = v46;
      sub_1D1E68C4C();
      if (!v42)
      {
        v38 = v20;
        (*(v21 + 8))(v18, v49);
        (*(v57 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v29 = 0;
        v31 = 0;
        v28 = 0uLL;
        v30 = 0xC000000000000000;
        goto LABEL_21;
      }
    }

    v26 = v57;
LABEL_18:
    (*(v26 + 8))(v14, v11);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_1D1CDDDA4(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_1D1E6920C();
  StaticCharacteristicMetadata.hash(into:)(v5);
  return sub_1D1E6926C();
}

void StaticCharacteristicMetadata.validated(value:)(__int128 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 16);
  v5 = v2[3];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      goto LABEL_31;
    }

    if (*(result + 16) <= 2u)
    {
      if (*(result + 16))
      {
        if (v4 == 1)
        {
          v17 = v3;
          goto LABEL_40;
        }

        if (!v3)
        {
          goto LABEL_37;
        }
      }

      else if ((v3 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_41;
    }

LABEL_26:
    if ((v4 - 5) >= 2)
    {
      if (v4 == 3)
      {
        if (v3)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v4 == 4)
      {
        v17 = v3;
        if ((v3 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_31;
        }

LABEL_40:
        if (v17 > 0)
        {
          goto LABEL_41;
        }

LABEL_37:
        v18 = 0;
LABEL_42:
        *a2 = v18;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        return;
      }

LABEL_31:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = -1;
      return;
    }

    if (v3 <= 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    v18 = 1;
    goto LABEL_42;
  }

  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[4];
  if (!v6)
  {
    v25 = *v2;
    v26 = v7;
    v27 = v8;
    v28 = v5;
    v29 = v9;
    if (v4 <= 2)
    {
      if (v4)
      {
        v10 = a2;
        if (v4 == 1)
        {
          v11 = v3;
        }

        else
        {
          v11 = v3;
        }
      }

      else
      {
        v10 = a2;
        v11 = v3 & 1;
      }

LABEL_44:
      v19 = sub_1D1CDE084(v11);
      if (v20)
      {
        v21 = 0uLL;
        v22 = -1;
      }

      else
      {
        sub_1D1CDE1F4(v19, &v23);
        v21 = v23;
        v22 = v24;
      }

      *v10 = v21;
      *(v10 + 16) = v22;
      return;
    }

    if ((v4 - 5) < 2)
    {
      v10 = a2;
      v11 = v3;
      goto LABEL_44;
    }

    if (v4 == 3)
    {
      v10 = a2;
      v11 = v3;
      goto LABEL_44;
    }

    if (v4 != 4)
    {
      goto LABEL_31;
    }

    v10 = a2;
    v11 = v3;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_26;
  }

  v25 = *v2;
  v26 = v7;
  v27 = v8;
  v28 = v5;
  v29 = v9;
  if (v4 != 7)
  {
    goto LABEL_31;
  }

  sub_1D1CDE14C(*&v3);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  if (v14)
  {
    v16 = -1;
  }

  else
  {
    v16 = 7;
  }

  *a2 = v15;
  *(a2 + 8) = 0;
  *(a2 + 16) = v16;
}

uint64_t sub_1D1CDE084(uint64_t result)
{
  if (v1[2] <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1[2];
  }

  v3 = round(result / v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3 * v2;
  if ((v3 * v2) >> 64 != v4 >> 63)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v5 = v1[4];
  if (v5)
  {
    return sub_1D1CDE2CC(v4, v5);
  }

  result = *v1;
  if (*v1 >= v4)
  {
    if (v4 <= v1[1])
    {
      return v1[1];
    }

    else
    {
      return v3 * v2;
    }
  }

  return result;
}

double sub_1D1CDE14C(double a1)
{
  v2 = *(v1 + 16);
  if (v2 <= 0.0)
  {
    v2 = 1.0;
  }

  else
  {
    a1 = a1 / v2;
  }

  result = v2 * round(a1);
  v4 = *(v1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v8 = *(v4 + 32);
      v7 = v4 + 32;
      v6 = v8;
      v9 = 1;
LABEL_7:
      v10 = vabdd_f64(v6, result);
      while (v5 != v9)
      {
        v11 = *(v7 + 8 * v9++);
        if (vabdd_f64(v11, result) < v10)
        {
          v6 = v11;
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D1CDE1F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  if (v3 > 2)
  {
    v12 = v3 - 5;
    v13 = 0x7FFFFFFFLL;
    if (result < 0x7FFFFFFF)
    {
      v13 = result;
    }

    if (v13 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v13) = 0x80000000;
    }

    v14 = 0xFFFFFFFFLL;
    if (result < 0xFFFFFFFFLL)
    {
      v14 = result;
    }

    v15 = v14 & ~(v14 >> 63);
    v16 = result & ~(result >> 63);
    if (v3 == 4)
    {
      v17 = 4;
    }

    else
    {
      v16 = 0;
      v17 = -1;
    }

    v18 = v3 == 3;
    if (v3 == 3)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }

    if (v18)
    {
      v20 = 3;
    }

    else
    {
      v20 = v17;
    }

    if (v12 >= 2)
    {
      v10 = v19;
    }

    else
    {
      v10 = v13;
    }

    if (v12 >= 2)
    {
      v11 = v20;
    }

    else
    {
      v11 = 5;
    }
  }

  else
  {
    v4 = 255;
    if (result < 255)
    {
      v4 = result;
    }

    v5 = v4 & ~(v4 >> 63);
    v6 = 0xFFFFLL;
    if (result < 0xFFFF)
    {
      v6 = result;
    }

    v7 = v6 & ~(v6 >> 63);
    if (v3 == 2)
    {
      v8 = 2;
    }

    else
    {
      v7 = 0;
      v8 = -1;
    }

    if (v3 == 1)
    {
      v9 = 1;
    }

    else
    {
      v5 = v7;
      v9 = v8;
    }

    if (*(v2 + 16))
    {
      v10 = v5;
    }

    else
    {
      v10 = result > 0;
    }

    if (*(v2 + 16))
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_1D1CDE2CC(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (!v2)
  {
    return 0;
  }

  result = a2[4];
  v5 = v2 - 1;
  if (v2 != 1)
  {
    v6 = a2 + 5;
    while (1)
    {
      v7 = result - a1;
      if (__OFSUB__(result, a1))
      {
        break;
      }

      v9 = *v6++;
      v8 = v9;
      if (v7 < 0)
      {
        v11 = __OFSUB__(0, v7);
        v7 = a1 - result;
        if (v11)
        {
          goto LABEL_22;
        }

        v10 = v8 - a1;
        if (__OFSUB__(v8, a1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        v10 = v8 - a1;
        if (__OFSUB__(v8, a1))
        {
          goto LABEL_21;
        }
      }

      if (v10 < 0)
      {
        v11 = __OFSUB__(0, v10);
        v10 = -v10;
        if (v11)
        {
          __break(1u);
          return 0;
        }
      }

      if (v10 < v7)
      {
        result = v8;
      }

      if (!--v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

BOOL _s13HomeDataModel28StaticCharacteristicMetadataO03IntF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (v6 == 8)
  {
    if (v8 != 8)
    {
      return 0;
    }
  }

  else if (v8 == 8 || (sub_1D179F7D4(v6, *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    return v9 && (sub_1D177A0E4(v7, v9) & 1) != 0;
  }

  return !v9;
}

BOOL _s13HomeDataModel28StaticCharacteristicMetadataO05FloatF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (v6 == 8)
  {
    if (v8 != 8)
    {
      return 0;
    }
  }

  else if (v8 == 8 || (sub_1D179F7D4(v6, *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    return v9 && (sub_1D177A200(v7, v9) & 1) != 0;
  }

  return !v9;
}

unint64_t sub_1D1CDE4B0()
{
  result = qword_1EC64D2D8;
  if (!qword_1EC64D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2D8);
  }

  return result;
}

unint64_t sub_1D1CDE504()
{
  result = qword_1EC64D2E0;
  if (!qword_1EC64D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2E0);
  }

  return result;
}

unint64_t sub_1D1CDE558()
{
  result = qword_1EC64D2F8;
  if (!qword_1EC64D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D2F8);
  }

  return result;
}

uint64_t sub_1D1CDE5AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644F48, &qword_1D1E78420);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1CDE618()
{
  result = qword_1EC64D310;
  if (!qword_1EC64D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D310);
  }

  return result;
}

BOOL _s13HomeDataModel28StaticCharacteristicMetadataO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v12 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v12)
    {
      if (v9 >> 62 == 1)
      {
        v25 = *a1;
        v26 = v3;
        v27 = v5;
        v28 = v4;
        v29 = v6;
        v20 = v7;
        v21 = v8;
        v22 = v10;
        v23 = v9;
        v24 = v11;
        sub_1D18F3250(v7, v8, v10, v9, v11);
        sub_1D18F3250(v2, v3, v5, v4, v6);
        sub_1D18F3250(v2, v3, v5, v4, v6);
        sub_1D18F3250(v7, v8, v10, v9, v11);
        v13 = _s13HomeDataModel28StaticCharacteristicMetadataO05FloatF0V2eeoiySbAE_AEtFZ_0(&v25, &v20);
        goto LABEL_10;
      }
    }

    else if (!(v9 >> 62))
    {
      v25 = *a1;
      v26 = v3;
      v27 = v5;
      v28 = v4;
      v29 = v6;
      v20 = v7;
      v21 = v8;
      v22 = v10;
      v23 = v9;
      v24 = v11;
      sub_1D18F3250(v7, v8, v10, v9, v11);
      sub_1D18F3250(v2, v3, v5, v4, v6);
      sub_1D18F3250(v2, v3, v5, v4, v6);
      sub_1D18F3250(v7, v8, v10, v9, v11);
      v13 = _s13HomeDataModel28StaticCharacteristicMetadataO03IntF0V2eeoiySbAE_AEtFZ_0(&v25, &v20);
LABEL_10:
      v15 = v5;
      v19 = v5;
      v14 = v13;
      sub_1D18F3274(v2, v3, v15, v4, v6);
      sub_1D18F3274(v7, v8, v10, v9, v11);
      sub_1D18F3274(v7, v8, v10, v9, v11);
      sub_1D18F3274(v2, v3, v19, v4, v6);
      return v14;
    }

LABEL_21:
    sub_1D18F3250(v7, v8, v10, v9, v11);
    sub_1D18F3274(v2, v3, v5, v4, v6);
    sub_1D18F3274(v7, v8, v10, v9, v11);
    return 0;
  }

  if (v12 != 2)
  {
    if (v9 >> 62 == 3 && v9 == 0xC000000000000000 && (v8 | v7 | v10 | v11) == 0)
    {
      sub_1D18F3274(*a1, v3, v5, v4, v6);
      sub_1D18F3274(0, 0, 0, 0xC000000000000000, v11);
      return 1;
    }

    goto LABEL_21;
  }

  if (v9 >> 62 != 2)
  {
    goto LABEL_21;
  }

  sub_1D18F3274(*a1, v3, v5, v4, v6);
  sub_1D18F3274(v7, v8, v10, v9, v11);
  return v2 == v7;
}

unint64_t sub_1D1CDE978()
{
  result = qword_1EC64D348;
  if (!qword_1EC64D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D348);
  }

  return result;
}

unint64_t sub_1D1CDE9CC()
{
  result = qword_1EC64D350;
  if (!qword_1EC64D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D350);
  }

  return result;
}

unint64_t sub_1D1CDEA20()
{
  result = qword_1EC64D358;
  if (!qword_1EC64D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D358);
  }

  return result;
}

unint64_t sub_1D1CDEA74()
{
  result = qword_1EC64D360;
  if (!qword_1EC64D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D360);
  }

  return result;
}

unint64_t sub_1D1CDEAC8()
{
  result = qword_1EC64D368;
  if (!qword_1EC64D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D368);
  }

  return result;
}

unint64_t sub_1D1CDEB1C()
{
  result = qword_1EC64D370;
  if (!qword_1EC64D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D370);
  }

  return result;
}

unint64_t sub_1D1CDEB70()
{
  result = qword_1EC64D378;
  if (!qword_1EC64D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D378);
  }

  return result;
}

unint64_t sub_1D1CDEBC4()
{
  result = qword_1EC64D3A8;
  if (!qword_1EC64D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3A8);
  }

  return result;
}

unint64_t sub_1D1CDEC18()
{
  result = qword_1EC64D3B0;
  if (!qword_1EC64D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3B0);
  }

  return result;
}

unint64_t sub_1D1CDEC70()
{
  result = qword_1EC64D3B8;
  if (!qword_1EC64D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3B8);
  }

  return result;
}

unint64_t sub_1D1CDECC8()
{
  result = qword_1EC64D3C0;
  if (!qword_1EC64D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3C0);
  }

  return result;
}

unint64_t sub_1D1CDED20()
{
  result = qword_1EC64D3C8;
  if (!qword_1EC64D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3C8);
  }

  return result;
}

unint64_t sub_1D1CDED78()
{
  result = qword_1EC64D3D0;
  if (!qword_1EC64D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel28StaticCharacteristicMetadataO(uint64_t a1)
{
  v1 = *(a1 + 24) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D1CDEE18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 25);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D1CDEE64(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = -a2 << 8;
      *(result + 32) = 0;
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

void *sub_1D1CDEEC8(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[3] = *(result + 24) | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (a2 - 3);
    *(result + 3) = xmmword_1D1EA4A60;
  }

  return result;
}

uint64_t sub_1D1CDEF18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D1CDEF74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1D1CDF064()
{
  result = qword_1EC64D3D8;
  if (!qword_1EC64D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3D8);
  }

  return result;
}

unint64_t sub_1D1CDF0BC()
{
  result = qword_1EC64D3E0;
  if (!qword_1EC64D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3E0);
  }

  return result;
}

unint64_t sub_1D1CDF114()
{
  result = qword_1EC64D3E8;
  if (!qword_1EC64D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3E8);
  }

  return result;
}

unint64_t sub_1D1CDF16C()
{
  result = qword_1EC64D3F0;
  if (!qword_1EC64D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3F0);
  }

  return result;
}

unint64_t sub_1D1CDF1C4()
{
  result = qword_1EC64D3F8;
  if (!qword_1EC64D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D3F8);
  }

  return result;
}

unint64_t sub_1D1CDF21C()
{
  result = qword_1EC64D400;
  if (!qword_1EC64D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D400);
  }

  return result;
}

unint64_t sub_1D1CDF274()
{
  result = qword_1EC64D408;
  if (!qword_1EC64D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D408);
  }

  return result;
}

unint64_t sub_1D1CDF2CC()
{
  result = qword_1EC64D410;
  if (!qword_1EC64D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D410);
  }

  return result;
}

unint64_t sub_1D1CDF324()
{
  result = qword_1EC64D418;
  if (!qword_1EC64D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D418);
  }

  return result;
}

unint64_t sub_1D1CDF37C()
{
  result = qword_1EC64D420;
  if (!qword_1EC64D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D420);
  }

  return result;
}

unint64_t sub_1D1CDF3D4()
{
  result = qword_1EC64D428;
  if (!qword_1EC64D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D428);
  }

  return result;
}

unint64_t sub_1D1CDF42C()
{
  result = qword_1EC64D430;
  if (!qword_1EC64D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D430);
  }

  return result;
}

unint64_t sub_1D1CDF484()
{
  result = qword_1EC64D438;
  if (!qword_1EC64D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D438);
  }

  return result;
}

unint64_t sub_1D1CDF4DC()
{
  result = qword_1EC64D440;
  if (!qword_1EC64D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D440);
  }

  return result;
}

unint64_t sub_1D1CDF534()
{
  result = qword_1EC64D448;
  if (!qword_1EC64D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D448);
  }

  return result;
}

unint64_t sub_1D1CDF58C()
{
  result = qword_1EC64D450;
  if (!qword_1EC64D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D450);
  }

  return result;
}