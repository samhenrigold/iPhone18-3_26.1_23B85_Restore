void sub_1BA11B40C(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v58 = *v2;
  v4 = sub_1BA4A3EA8();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v59 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v55 = &v55 - v9;
  v10 = a1[3];
  v72 = a1[2];
  v73 = v10;
  v74 = a1[4];
  v11 = a1[1];
  v70 = *a1;
  v71 = v11;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
  swift_beginAccess();
  v56 = v12;
  v57 = v2;
  v13 = *(v2 + v12);
  v14 = *(v13 + 16);

  if (v14)
  {
    v17 = -v14;
    v18 = 4;
    while (1)
    {
      v19 = v18 - 4;
      if ((v18 - 4) >= *(v13 + 16))
      {
        break;
      }

      v20 = *(v13 + 8 * v18);
      v67 = v72;
      v68 = v73;
      v69 = v74;
      v65 = v70;
      v66 = v71;
      MEMORY[0x1EEE9AC00](v15, v16);
      *(&v55 - 2) = &v65;

      v21 = sub_1BA011920(sub_1BA120C84, (&v55 - 4), v20);

      if (v21)
      {

        v36 = *(v57 + v56);
        if (v19 < *(v36 + 16))
        {
          v37 = *(v36 + 8 * v18);

          v38 = sub_1B9FEE580(&v70, v37);
          v40 = v39;

          if ((v40 & 1) == 0)
          {
            v34 = v62;
            MEMORY[0x1BFAEC360](v38, v18 - 4);
            v33 = 0;
            goto LABEL_10;
          }

          v41 = v55;
          sub_1BA4A3DD8();
          sub_1B9FF3650(&v70, &v65);
          v42 = sub_1BA4A3E88();
          v43 = sub_1BA4A6FA8();
          sub_1B9FF3768(&v70);
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v64[0] = v45;
            *v44 = 136446978;
            v46 = sub_1BA4A85D8();
            v48 = sub_1B9F0B82C(v46, v47, v64);

            *(v44 + 4) = v48;
            *(v44 + 12) = 2082;
            *(v44 + 14) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4EC200, v64);
            *(v44 + 22) = 2080;
            v67 = v72;
            v68 = v73;
            v69 = v74;
            v65 = v70;
            v66 = v71;
            sub_1B9FF3650(&v70, v63);
            v49 = sub_1BA4A6808();
            v51 = sub_1B9F0B82C(v49, v50, v64);

            *(v44 + 24) = v51;
            *(v44 + 32) = 2080;
            *&v65 = v19;
            v52 = sub_1BA4A82D8();
            v54 = sub_1B9F0B82C(v52, v53, v64);

            *(v44 + 34) = v54;
            _os_log_impl(&dword_1B9F07000, v42, v43, "[%{public}s.%{public}s]: No row %s in section %s", v44, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v45, -1, -1);
            MEMORY[0x1BFAF43A0](v44, -1, -1);
          }

          (*(v60 + 8))(v41, v61);
          goto LABEL_9;
        }

LABEL_18:
        __break(1u);
        return;
      }

      ++v18;
      if (v17 + v18 == 4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_6:

  v22 = v59;
  sub_1BA4A3DD8();
  sub_1B9FF3650(&v70, &v65);
  v23 = sub_1BA4A3E88();
  v24 = sub_1BA4A6FA8();
  sub_1B9FF3768(&v70);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v64[0] = v26;
    *v25 = 136446722;
    v27 = sub_1BA4A85D8();
    v29 = sub_1B9F0B82C(v27, v28, v64);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4EC200, v64);
    *(v25 + 22) = 2080;
    v67 = v72;
    v68 = v73;
    v69 = v74;
    v65 = v70;
    v66 = v71;
    sub_1B9FF3650(&v70, v63);
    v30 = sub_1BA4A6808();
    v32 = sub_1B9F0B82C(v30, v31, v64);

    *(v25 + 24) = v32;
    _os_log_impl(&dword_1B9F07000, v23, v24, "[%{public}s.%{public}s]: No section with row %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v25, -1, -1);
  }

  (*(v60 + 8))(v22, v61);
LABEL_9:
  v33 = 1;
  v34 = v62;
LABEL_10:
  v35 = sub_1BA4A1998();
  (*(*(v35 - 8) + 56))(v34, v33, 1, v35);
}

void sub_1BA11BA3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v112 = a2;
  v118 = *v3;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v113 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v120 = *(v8 - 8);
  v121 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v123 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = *(a1 + 8);
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = *(a1 + 57);
  v15 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  swift_beginAccess();
  v16 = *(v3 + v15);
  v17 = *(v16 + 16);
  v122 = v11;
  if (v17)
  {

    v18 = v13;
    v19 = sub_1B9F24A34(v11, v13);
    if (v20)
    {
      v21 = *(*(v16 + 56) + v19);

      v115 = v21;
      v117 = v21 ^ 1;
      if (((v21 ^ 1 | v14) & 1) == 0)
      {
LABEL_69:
        v101 = v113;
        sub_1BA120D48(v112, v113, type metadata accessor for ConfirmDetailsProvider.Details);
        v102 = type metadata accessor for ConfirmDetailsProvider.Details(0);
        (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
        v103 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
        v104 = swift_beginAccess();
        v105 = *(v3 + v103);
        MEMORY[0x1EEE9AC00](v104, v106);
        *(&v112 - 2) = v3;
        *(&v112 - 1) = v101;

        sub_1BA24A778(sub_1BA120C6C, (&v112 - 4), v105);
        v108 = v107;

        sub_1BA11FEE8(v101, sub_1BA11E7F8);
        v109 = v3 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v110 = *(v109 + 1);
          ObjectType = swift_getObjectType();
          (*(v110 + 24))(v108, ObjectType, v110);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v18 = v13;
  }

  v115 = 0;
  v117 = 1;
LABEL_8:
  v22 = v123;
  sub_1BA4A3DD8();

  v23 = v18;

  v24 = sub_1BA4A3E88();
  v25 = v12;
  v26 = sub_1BA4A6FC8();
  v27 = v23;

  v116 = v25;

  if (os_log_type_enabled(v24, v26))
  {
    v28 = swift_slowAlloc();
    v114 = v24;
    v29 = v28;
    v119 = swift_slowAlloc();
    v126[0] = v119;
    *v29 = 136315906;
    v30 = sub_1BA4A85D8();
    v32 = sub_1B9F0B82C(v30, v31, v126);

    *(v29 + 4) = v32;
    v33 = v26;
    v34 = v122;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_1B9F0B82C(0xD000000000000021, 0x80000001BA4EC1D0, v126);
    *(v29 + 22) = 2080;
    v35 = v117;
    if (v117)
    {
      v36 = 0x6E697463656C6553;
    }

    else
    {
      v36 = 0x7463656C65736E75;
    }

    if (v117)
    {
      v37 = 0xE900000000000067;
    }

    else
    {
      v37 = 0xEB00000000676E69;
    }

    v38 = sub_1B9F0B82C(v36, v37, v126);

    *(v29 + 24) = v38;
    v27 = v23;
    *(v29 + 32) = 2080;
    *(v29 + 34) = sub_1B9F0B82C(v34, v23, v126);
    v39 = v114;
    _os_log_impl(&dword_1B9F07000, v114, v33, "[%s.%s]: %s multiselect with key %s", v29, 0x2Au);
    v40 = v119;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v40, -1, -1);
    MEMORY[0x1BFAF43A0](v29, -1, -1);

    (*(v120 + 8))(v123, v121);
  }

  else
  {

    (*(v120 + 8))(v22, v121);
    v35 = v117;
    v34 = v122;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v125 = *(v3 + v15);
  *(v3 + v15) = 0x8000000000000000;
  sub_1B9FF1860(v35, v34, v27, isUniquelyReferenced_nonNull_native);
  *(v3 + v15) = v125;
  swift_endAccess();
  v42 = v116;
  v43 = *(v116 + 16);
  if (!v43)
  {
    goto LABEL_69;
  }

  v118 = v116 + 32;
  v119 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_correlatedItemsMapping;
  swift_beginAccess();
  v44 = 0;
  v114 = v43;
  while (v44 < *(v42 + 16))
  {
    v121 = v44;
    v47 = v118 + 24 * v44;
    v48 = *v47;
    v49 = *(v47 + 8);
    LODWORD(v120) = *(v47 + 16);
    v50 = *(v3 + v119);
    v51 = *(v50 + 16);

    v122 = v49;
    v123 = v48;
    if (v51)
    {

      v52 = sub_1B9F24A34(v48, v49);
      v54 = v53;

      v55 = MEMORY[0x1E69E7CC0];
      if (v54)
      {
        v55 = *(*(v50 + 56) + 8 * v52);
      }
    }

    else
    {

      v55 = MEMORY[0x1E69E7CC0];
    }

    v56 = *(v55 + 16);
    if (v56 < 2)
    {

      if (v120)
      {
        v67 = v115;
      }

      else
      {
        v67 = v117;
      }

      swift_beginAccess();
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v124 = *(v3 + v15);
      v69 = v124;
      *(v3 + v15) = 0x8000000000000000;
      v70 = v122;
      v71 = sub_1B9F24A34(v123, v122);
      v73 = v69[2];
      v74 = (v72 & 1) == 0;
      v75 = __OFADD__(v73, v74);
      v76 = v73 + v74;
      if (v75)
      {
        goto LABEL_74;
      }

      v77 = v72;
      if (v69[3] >= v76)
      {
        if ((v68 & 1) == 0)
        {
          v99 = v71;
          sub_1BA0F1B08();
          v71 = v99;
        }

        v78 = v123;
        if ((v77 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_1BA0F3C84(v76, v68);
        v78 = v123;
        v71 = sub_1B9F24A34(v123, v70);
        if ((v77 & 1) != (v79 & 1))
        {
          goto LABEL_77;
        }

        if ((v77 & 1) == 0)
        {
LABEL_54:
          v46 = v124;
          v124[(v71 >> 6) + 8] |= 1 << v71;
          v85 = (v46[6] + 16 * v71);
          *v85 = v78;
          v85[1] = v70;
          *(v46[7] + v71) = v67;
          v86 = v46[2];
          v75 = __OFADD__(v86, 1);
          v87 = v86 + 1;
          if (v75)
          {
            goto LABEL_76;
          }

LABEL_68:
          v46[2] = v87;
          goto LABEL_20;
        }
      }
    }

    else
    {
      v125 = MEMORY[0x1E69E7CC0];
      sub_1BA066FE8(0, v56, 0);
      v57 = v125;
      v58 = (v55 + 40);
      do
      {
        v59 = *(v3 + v15);
        if (*(v59 + 16))
        {
          v60 = *(v58 - 1);
          v61 = *v58;

          v62 = sub_1B9F24A34(v60, v61);
          if (v63)
          {
            v64 = *(*(v59 + 56) + v62);
          }

          else
          {
            v64 = 0;
          }
        }

        else
        {
          v64 = 0;
        }

        v125 = v57;
        v66 = *(v57 + 16);
        v65 = *(v57 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_1BA066FE8((v65 > 1), v66 + 1, 1);
          v57 = v125;
        }

        *(v57 + 16) = v66 + 1;
        *(v57 + v66 + 32) = v64;
        v58 += 3;
        --v56;
      }

      while (v56);

      v80 = *(v57 + 16);
      if (v80)
      {
        v81 = (v57 + 32);
        v82 = *(v57 + 32);
        v42 = v116;
        v43 = v114;
        v83 = v122;
        while (v80)
        {
          v84 = *v81++;
          --v80;
          if (v82 != v84)
          {

            v67 = 0;
            goto LABEL_59;
          }
        }

        v67 = v120 ^ v82;
      }

      else
      {

        v67 = 0;
        v42 = v116;
        v43 = v114;
        v83 = v122;
      }

LABEL_59:
      swift_beginAccess();
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v124 = *(v3 + v15);
      v89 = v124;
      *(v3 + v15) = 0x8000000000000000;
      v71 = sub_1B9F24A34(v123, v83);
      v91 = v89[2];
      v92 = (v90 & 1) == 0;
      v75 = __OFADD__(v91, v92);
      v93 = v91 + v92;
      if (v75)
      {
        goto LABEL_73;
      }

      v94 = v90;
      if (v89[3] >= v93)
      {
        if ((v88 & 1) == 0)
        {
          v100 = v71;
          sub_1BA0F1B08();
          v71 = v100;
        }

        v95 = v123;
        if ((v94 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        sub_1BA0F3C84(v93, v88);
        v95 = v123;
        v71 = sub_1B9F24A34(v123, v83);
        if ((v94 & 1) != (v96 & 1))
        {
          goto LABEL_77;
        }

        if ((v94 & 1) == 0)
        {
LABEL_67:
          v46 = v124;
          v124[(v71 >> 6) + 8] |= 1 << v71;
          v97 = (v46[6] + 16 * v71);
          *v97 = v95;
          v97[1] = v83;
          *(v46[7] + v71) = v67;
          v98 = v46[2];
          v75 = __OFADD__(v98, 1);
          v87 = v98 + 1;
          if (v75)
          {
            goto LABEL_75;
          }

          goto LABEL_68;
        }
      }
    }

    v45 = v71;

    v46 = v124;
    *(v124[7] + v45) = v67;
LABEL_20:
    *(v3 + v15) = v46;
    swift_endAccess();
    v44 = v121 + 1;
    if ((v121 + 1) == v43)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  sub_1BA4A83B8();
  __break(1u);
}

uint64_t sub_1BA11C4D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v51 - v9;
  sub_1BA11FF48(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v51 - v16;
  v18 = sub_1BA4A1148();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v55 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v56 = &v51 - v28;
  sub_1BA119590(&v51 - v28);
  v52 = a1;
  sub_1BA120D48(a1, v10, sub_1BA11E7F8);
  v29 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v30 = *(*(v29 - 8) + 48);
  if (v30(v10, 1, v29) == 1)
  {
    sub_1BA11FEE8(v10, sub_1BA11E7F8);
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_4:
    sub_1BA11FEE8(v17, sub_1BA11FF48);
    goto LABEL_6;
  }

  sub_1BA120D48(&v10[*(v29 + 20)], v17, sub_1BA11FF48);
  sub_1BA11FEE8(v10, type metadata accessor for ConfirmDetailsProvider.Details);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_4;
  }

  (*(v19 + 32))(v22, v17, v18);
  v31 = v55;
  sub_1BA4A1838();
  (*(v19 + 8))(v22, v18);
  v32 = v56;
  sub_1BA11FEE8(v56, sub_1B9F7B6A0);
  sub_1BA120E18(v31, v32, sub_1B9F7B6A0);
LABEL_6:
  v33 = v53;
  sub_1BA120D48(v52, v6, sub_1BA11E7F8);
  if (v30(v6, 1, v29) == 1)
  {
    sub_1BA11FEE8(v6, sub_1BA11E7F8);
    (*(v19 + 56))(v33, 1, 1, v18);
  }

  else
  {
    sub_1BA120D48(&v6[*(v29 + 20)], v33, sub_1BA11FF48);
    sub_1BA11FEE8(v6, type metadata accessor for ConfirmDetailsProvider.Details);
    if ((*(v19 + 48))(v33, 1, v18) != 1)
    {
      sub_1BA11FEE8(v33, sub_1BA11FF48);
      v34 = 0;
      v36 = 0;
      goto LABEL_13;
    }
  }

  sub_1BA11FEE8(v33, sub_1BA11FF48);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v34 = sub_1BA4A1318();
  v36 = v35;
LABEL_13:
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v37 = sub_1BA4A1318();
  v39 = v38;
  v40 = v55;
  sub_1BA120D48(v56, v55, sub_1B9F7B6A0);
  v41 = type metadata accessor for CompactDatePickerItem(0);
  v42 = v41[5];
  v43 = sub_1BA4A1728();
  v44 = v54;
  (*(*(v43 - 8) + 56))(v54 + v42, 1, 1, v43);
  v45 = (v44 + v41[6]);
  v46 = (v44 + v41[7]);
  *(v44 + v41[8] + 8) = 0;
  swift_unknownObjectWeakInit();
  *v44 = v37;
  v44[1] = v39;
  sub_1BA120C08(v40, v44 + v42);
  *v45 = v34;
  v45[1] = v36;
  v57 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v58 = v47;

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);

  MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4EC1B0);

  v48 = v57;
  v49 = v58;
  sub_1BA11FEE8(v40, sub_1B9F7B6A0);
  result = sub_1BA11FEE8(v56, sub_1B9F7B6A0);
  *v46 = v48;
  v46[1] = v49;
  return result;
}

void sub_1BA11CC0C(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v204 = a2;
  v205 = a3;
  sub_1BA11FF48(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v203 = &v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v202 = &v191 - v9;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v191 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v191 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v191 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v191 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v191 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v191 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v191 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v191 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v48 = &v191 - v46;
  v49 = *a1;
  v50 = *(a1 + 7) >> 62;
  if (v50 > 1)
  {
    if (v50 == 2)
    {
      if (*a1 > 2u)
      {
        if (v49 == 3)
        {
          sub_1BA120D48(v204, v19, sub_1BA11E7F8);
          v73 = type metadata accessor for ConfirmDetailsProvider.Details(0);
          v74 = (*(*(v73 - 8) + 48))(v19, 1, v73);
          v75 = sub_1BA11E7F8;
          if (v74 == 1)
          {
            v76 = 0;
          }

          else
          {
            v76 = *&v19[*(v73 + 24)];
            v159 = v76;
            v75 = type metadata accessor for ConfirmDetailsProvider.Details;
          }

          sub_1BA11FEE8(v19, v75);
          sub_1B9F0A534(v206 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_valueFormatter, &v216);
          v160 = type metadata accessor for WeightPickerItem();
          v161 = objc_allocWithZone(v160);
          v162 = WeightPickerItem.init(initialValue:valueFormatter:)(v76, &v216);
          v163 = &v162[OBJC_IVAR____TtC18HealthExperienceUI16WeightPickerItem_delegate];
          swift_beginAccess();
          *(v163 + 1) = &off_1F3807858;
          swift_unknownObjectWeakAssign();
          v164 = v205;
          v205[3] = v160;
          v164[4] = sub_1BA120E80(&qword_1EBBEC268, type metadata accessor for WeightPickerItem, &protocol conformance descriptor for WeightPickerItem);
          *v164 = v162;
          return;
        }

        sub_1BA120D48(v204, v15, sub_1BA11E7F8);
        v130 = type metadata accessor for ConfirmDetailsProvider.Details(0);
        v131 = (*(*(v130 - 8) + 48))(v15, 1, v130);
        v132 = sub_1BA11E7F8;
        if (v131 == 1)
        {
          v133 = 0;
        }

        else
        {
          v133 = *&v15[*(v130 + 28)];
          v165 = v133;
          v132 = type metadata accessor for ConfirmDetailsProvider.Details;
        }

        sub_1BA11FEE8(v15, v132);
        sub_1B9F0A534(v206 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_valueFormatter, &v216);
        v166 = type metadata accessor for HeightPickerItem();
        v167 = objc_allocWithZone(v166);
        *&v167[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v168 = OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight;
        *&v167[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_currentHeight] = 0;
        v167[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem____lazy_storage___usesImperialUnits] = 2;
        *&v167[v168] = v133;
        sub_1B9F0A534(&v216, &v167[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_valueFormatter]);
        v226.receiver = v167;
        v226.super_class = v166;
        v153 = objc_msgSendSuper2(&v226, sel_init);
        __swift_destroy_boxed_opaque_existential_1(&v216);
        v169 = &v153[OBJC_IVAR____TtC18HealthExperienceUI16HeightPickerItem_delegate];
        swift_beginAccess();
        *(v169 + 1) = &off_1F3807848;
        swift_unknownObjectWeakAssign();
        v155 = v205;
        v205[3] = v166;
        v156 = &unk_1EBBEC260;
        v157 = type metadata accessor for HeightPickerItem;
        v158 = &protocol conformance descriptor for HeightPickerItem;
      }

      else
      {
        if (*a1)
        {
          if (v49 == 2)
          {
            v120 = v47;
            sub_1BA120D48(v204, v47, sub_1BA11E7F8);
            v121 = type metadata accessor for ConfirmDetailsProvider.Details(0);
            v122 = (*(*(v121 - 8) + 48))(v120, 1, v121);
            v123 = v203;
            if (v122 == 1)
            {
              sub_1BA11FEE8(v120, sub_1BA11E7F8);
              v124 = sub_1BA4A1148();
              (*(*(v124 - 8) + 56))(v123, 1, 1, v124);
            }

            else
            {
              sub_1BA120D48(v120 + *(v121 + 20), v203, sub_1BA11FF48);
              sub_1BA11FEE8(v120, type metadata accessor for ConfirmDetailsProvider.Details);
            }

            v170 = *(v206 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_defaultAge);
            v171 = type metadata accessor for BirthdayPickerItem(0);
            v172 = swift_allocObject();
            *(v172 + 24) = 0;
            swift_unknownObjectWeakInit();
            v173 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem____lazy_storage___calendar;
            v174 = sub_1BA4A18A8();
            (*(*(v174 - 8) + 56))(v172 + v173, 1, 1, v174);
            v175 = OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_currentValue;
            v176 = sub_1BA4A1148();
            (*(*(v176 - 8) + 56))(v172 + v175, 1, 1, v176);
            swift_beginAccess();
            sub_1BA120DB0(v123, v172 + v175, sub_1BA11FF48);
            swift_endAccess();
            *(v172 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_defaultAge) = v170;
            v177 = (v172 + OBJC_IVAR____TtC18HealthExperienceUI18BirthdayPickerItem_dateGenerator);
            *v177 = sub_1BA0198D0;
            v177[1] = 0;
            swift_beginAccess();
            *(v172 + 24) = &off_1F3807878;
            swift_unknownObjectWeakAssign();
            v178 = v205;
            v205[3] = v171;
            v178[4] = sub_1BA120E80(&qword_1EBBEC258, type metadata accessor for BirthdayPickerItem, &protocol conformance descriptor for BirthdayPickerItem);
            *v178 = v172;
          }

          else
          {
            sub_1BA4A8018();
            __break(1u);
          }

          return;
        }

        sub_1BA120D48(v204, v23, sub_1BA11E7F8);
        v55 = type metadata accessor for ConfirmDetailsProvider.Details(0);
        v56 = 1;
        v57 = (*(*(v55 - 8) + 48))(v23, 1, v55);
        v58 = sub_1BA11E7F8;
        if (v57 == 1)
        {
          v59 = 0;
        }

        else
        {
          v59 = *v23;
          v56 = v23[8];
          v58 = type metadata accessor for ConfirmDetailsProvider.Details;
        }

        sub_1BA11FEE8(v23, v58);
        v150 = type metadata accessor for BiologicalSexPickerItem();
        v151 = objc_allocWithZone(v150);
        *&v151[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v152 = &v151[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue];
        *v152 = v59;
        v152[8] = v56;
        v225.receiver = v151;
        v225.super_class = v150;
        v153 = objc_msgSendSuper2(&v225, sel_init);
        v154 = &v153[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate];
        swift_beginAccess();
        *(v154 + 1) = &off_1F3807888;
        swift_unknownObjectWeakAssign();
        v155 = v205;
        v205[3] = v150;
        v156 = &unk_1EBBEC270;
        v157 = type metadata accessor for BiologicalSexPickerItem;
        v158 = &protocol conformance descriptor for BiologicalSexPickerItem;
      }

      v155[4] = sub_1BA120E80(v156, v157, v158);
      *v155 = v153;
      return;
    }

    v204 = *a1;
    v201 = a1[7];
    v200 = *(a1 + 5);
    v202 = *(a1 + 1);
    v62 = *(a1 + 2);
    v199 = *(a1 + 1);
    v63 = *(a1 + 4);
    v197 = *(a1 + 3);
    v64 = *(a1 + 8);
    v198 = *(a1 + 9);
    v65 = *(a1 + 5);
    v66 = *(a1 + 6);
    v67 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
    v68 = v206;
    swift_beginAccess();
    v69 = *(v68 + v67);
    if (*(v69 + 16))
    {

      v70 = sub_1B9F24A34(v63, v65);
      if (v71)
      {
        LOBYTE(v72) = *(*(v69 + 56) + v70);
        goto LABEL_51;
      }
    }

    v195 = v65;
    v196 = v63;
    v84 = *(v66 + 16);
    if (!v84)
    {
      v203 = MEMORY[0x1E69E7CC0];
LABEL_45:
      v97 = *(v203 + 2);
      if (v97)
      {
        v98 = v203 + 32;
        v72 = v203[32];
        v63 = v196;
        v65 = v195;
        v99 = v202;
        v100 = v201;
        v101 = v200;
        while (v97)
        {
          v102 = *v98++;
          --v97;
          if (v72 != v102)
          {
            LOBYTE(v72) = 0;
            goto LABEL_52;
          }
        }

        goto LABEL_52;
      }

      LOBYTE(v72) = 0;
      v63 = v196;
      v65 = v195;
LABEL_51:
      v99 = v202;
      v100 = v201;
      v101 = v200;
LABEL_52:
      v103 = v99 | ((v101 | (v100 << 16)) << 32);

      LOBYTE(v207) = v204;
      if (v197)
      {
        v104 = v62;
      }

      else
      {
        v104 = 0;
      }

      v206 = v104;
      v105 = 0xE000000000000000;
      HIBYTE(v207) = BYTE6(v103);
      *(&v207 + 5) = WORD2(v103);
      if (v197)
      {
        v105 = v197;
      }

      v203 = v105;
      *(&v207 + 1) = v103;
      v106 = v199;
      v208 = v199;
      v107 = v198;

      swift_bridgeObjectRetain_n();

      MEMORY[0x1BFAF1350](95, 0xE100000000000000);

      MEMORY[0x1BFAF1350](v63, v65);

      v202 = v207;
      v108 = v208;
      v109 = v205;
      v205[3] = &type metadata for MultiselectItem;
      v109[4] = sub_1BA120A24();
      v110 = swift_allocObject();
      *v109 = v110;
      v207 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v208 = v111;

      MEMORY[0x1BFAF1350](46, 0xE100000000000000);

      if (!v107)
      {
        v64 = 0x6C657369746C754DLL;
        v107 = 0xEF6D657449746365;
      }

      MEMORY[0x1BFAF1350](v64, v107);

      v112 = v207;
      v113 = v208;
      v114 = v72 & 1;
      if (v114)
      {
        v115 = 0x44455443454C4553;
      }

      else
      {
        v115 = 0x5443454C45534E55;
      }

      if (v114)
      {
        v116 = 0xE800000000000000;
      }

      else
      {
        v116 = 0xEA00000000004445;
      }

      v207 = v202;
      v208 = v108;

      MEMORY[0x1BFAF1350](v115, v116);

      v117 = v208;
      v118 = v204 | (v103 << 8);
      *(v110 + 16) = v207;
      *(v110 + 24) = v117;
      *(v110 + 32) = v118;
      *(v110 + 40) = v106;
      v119 = v203;
      *(v110 + 48) = v206;
      *(v110 + 56) = v119;
      *(v110 + 64) = v112;
      *(v110 + 72) = v113;
      *(v110 + 80) = v114;
      return;
    }

    v85 = 0;
    v192 = v84 - 1;
    v203 = MEMORY[0x1E69E7CC0];
    v194 = v64;
    v193 = v62;
LABEL_30:
    v86 = (v66 + 48 + 24 * v85);
    v60 = v85;
    while (1)
    {
      if (v60 >= *(v66 + 16))
      {
        __break(1u);
        goto LABEL_104;
      }

      v87 = *(v206 + v67);
      if (*(v87 + 16))
      {
        LOBYTE(v43) = *v86;
        v89 = *(v86 - 2);
        v88 = *(v86 - 1);

        v90 = sub_1B9F24A34(v89, v88);
        if (v91)
        {
          v92 = *(*(v87 + 56) + v90);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v203 = sub_1BA27F96C(0, *(v203 + 2) + 1, 1, v203);
          }

          v62 = v193;
          v94 = *(v203 + 2);
          v93 = *(v203 + 3);
          if (v94 >= v93 >> 1)
          {
            v203 = sub_1BA27F96C((v93 > 1), v94 + 1, 1, v203);
          }

          v85 = v60 + 1;
          v95 = v203;
          *(v203 + 2) = v94 + 1;
          v95[v94 + 32] = (v43 ^ v92) & 1;
          v96 = v192 == v60;
          v64 = v194;
          if (v96)
          {
            goto LABEL_45;
          }

          goto LABEL_30;
        }
      }

      ++v60;
      v86 += 24;
      if (v84 == v60)
      {
        v64 = v194;
        v62 = v193;
        goto LABEL_45;
      }
    }
  }

  if (v50)
  {
    v60 = v204;
    if (v49)
    {
      sub_1BA120D48(v204, v31, sub_1BA11E7F8);
      v61 = type metadata accessor for ConfirmDetailsProvider.Details(0);
      if ((*(*(v61 - 8) + 48))(v31, 1, v61) == 1)
      {
        sub_1BA11FEE8(v31, sub_1BA11E7F8);
        LOBYTE(v43) = 2;
      }

      else
      {
        LOBYTE(v43) = v31[*(v61 + 36)];
        sub_1BA11FEE8(v31, type metadata accessor for ConfirmDetailsProvider.Details);
      }

      if (qword_1EDC5E100 != -1)
      {
LABEL_104:
        swift_once();
      }

      v125 = sub_1BA4A1318();
      v127 = v126;
      v128 = sub_1BA4A1318();
      v216 = v125;
      v217 = v127;
      v218 = v128;
      v219 = v129;
      strcpy(v220, "betaBlockers");
      BYTE5(v220[1]) = 0;
      HIWORD(v220[1]) = -5120;
      v221 = MEMORY[0x1E69E7CC0];
      LOBYTE(v222) = v43;
      BYTE1(v222) = 1;
      v223 = 0;
      v224 = 0;
      v207 = v125;
      v208 = v127;
      v209 = v128;
      v210 = v129;
      v211 = xmmword_1BA4BF5C0;
      v212 = MEMORY[0x1E69E7CC0];
      v213 = v222 & 0x1FF | 0xC000000000000000;
    }

    else
    {
      sub_1BA120D48(v204, v27, sub_1BA11E7F8);
      v77 = type metadata accessor for ConfirmDetailsProvider.Details(0);
      if ((*(*(v77 - 8) + 48))(v27, 1, v77) == 1)
      {
        sub_1BA11FEE8(v27, sub_1BA11E7F8);
        v78 = 2;
      }

      else
      {
        v78 = v27[*(v77 + 32)];
        sub_1BA11FEE8(v27, type metadata accessor for ConfirmDetailsProvider.Details);
      }

      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v134 = sub_1BA4A1318();
      v136 = v135;
      v137 = sub_1BA4A1318();
      v216 = v134;
      v217 = v136;
      v218 = v137;
      v219 = v138;
      v220[0] = 0xD000000000000016;
      v220[1] = 0x80000001BA4E14F0;
      v221 = MEMORY[0x1E69E7CC0];
      LOBYTE(v222) = v78;
      BYTE1(v222) = 1;
      v223 = 0;
      v224 = 0;
      v207 = v134;
      v208 = v136;
      v209 = v137;
      v210 = v138;
      *&v211 = 0xD000000000000016;
      *(&v211 + 1) = 0x80000001BA4E14F0;
      v212 = MEMORY[0x1E69E7CC0];
      v213 = v222 & 0x1FF | 0xC000000000000000;
    }

    v214 = 0;
    v215 = 0;
    sub_1BA11CC0C(&v207, v60, v205);
    sub_1BA120A78(&v216);
  }

  else if (*a1 <= 1u)
  {
    if (*a1)
    {
      v146 = v204;
      v147 = type metadata accessor for CompactDatePickerItem(0);
      v148 = v205;
      v205[3] = v147;
      v148[4] = sub_1BA120E80(&qword_1EBBEC278, type metadata accessor for CompactDatePickerItem, &protocol conformance descriptor for CompactDatePickerItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v148);
      sub_1BA11C4D8(v146, boxed_opaque_existential_1);
      *(boxed_opaque_existential_1 + *(v147 + 32) + 8) = &off_1F3807868;

      swift_unknownObjectWeakAssign();
    }

    else
    {
      sub_1BA120D48(v204, &v191 - v46, sub_1BA11E7F8);
      v79 = type metadata accessor for ConfirmDetailsProvider.Details(0);
      v80 = 1;
      v81 = (*(*(v79 - 8) + 48))(v48, 1, v79);
      v82 = sub_1BA11E7F8;
      if (v81 == 1)
      {
        v83 = 0;
      }

      else
      {
        v83 = *v48;
        v80 = v48[8];
        v82 = type metadata accessor for ConfirmDetailsProvider.Details;
      }

      sub_1BA11FEE8(v48, v82);
      v190 = v205;
      v205[3] = &type metadata for BiologicalSexItem;
      v190[4] = sub_1BA120BB4();
      *v190 = v83;
      *(v190 + 8) = v80;
    }
  }

  else if (v49 == 2)
  {
    sub_1BA120D48(v204, v43, sub_1BA11E7F8);
    v139 = type metadata accessor for ConfirmDetailsProvider.Details(0);
    if ((*(*(v139 - 8) + 48))(v43, 1, v139) == 1)
    {
      sub_1BA11FEE8(v43, sub_1BA11E7F8);
      v140 = sub_1BA4A1148();
      v141 = v202;
      (*(*(v140 - 8) + 56))(v202, 1, 1, v140);
    }

    else
    {
      v141 = v202;
      sub_1BA120D48(v43 + *(v139 + 20), v202, sub_1BA11FF48);
      sub_1BA11FEE8(v43, type metadata accessor for ConfirmDetailsProvider.Details);
    }

    v179 = type metadata accessor for DateOfBirthItem(0);
    v180 = v205;
    v205[3] = v179;
    v180[4] = sub_1BA120E80(&qword_1EBBEC290, type metadata accessor for DateOfBirthItem, &protocol conformance descriptor for DateOfBirthItem);
    v181 = __swift_allocate_boxed_opaque_existential_1(v180);
    DateOfBirthItem.init(dateOfBirthComponents:dateGenerator:)(v141, sub_1BA0198D0, 0, v181);
  }

  else if (v49 == 3)
  {
    sub_1BA120D48(v204, v39, sub_1BA11E7F8);
    v51 = type metadata accessor for ConfirmDetailsProvider.Details(0);
    v52 = (*(*(v51 - 8) + 48))(v39, 1, v51);
    v53 = sub_1BA11E7F8;
    if (v52 == 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = *&v39[*(v51 + 24)];
      v182 = v54;
      v53 = type metadata accessor for ConfirmDetailsProvider.Details;
    }

    sub_1BA11FEE8(v39, v53);
    v183 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_valueFormatter;
    v184 = v205;
    v205[3] = &type metadata for WeightItem;
    v184[4] = sub_1BA120B20();
    v185 = swift_allocObject();
    *v184 = v185;
    sub_1B9F0A534(v206 + v183, v185 + 24);
    *(v185 + 16) = v54;
  }

  else
  {
    sub_1BA120D48(v204, v35, sub_1BA11E7F8);
    v142 = type metadata accessor for ConfirmDetailsProvider.Details(0);
    v143 = (*(*(v142 - 8) + 48))(v35, 1, v142);
    v144 = sub_1BA11E7F8;
    if (v143 == 1)
    {
      v145 = 0;
    }

    else
    {
      v145 = *&v35[*(v142 + 28)];
      v186 = v145;
      v144 = type metadata accessor for ConfirmDetailsProvider.Details;
    }

    sub_1BA11FEE8(v35, v144);
    v187 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_valueFormatter;
    v188 = v205;
    v205[3] = &type metadata for HeightItem;
    v188[4] = sub_1BA120ACC();
    v189 = swift_allocObject();
    *v188 = v189;
    sub_1B9F0A534(v206 + v187, v189 + 24);
    *(v189 + 16) = v145;
  }
}

uint64_t sub_1BA11E53C()
{
  sub_1BA11FEE8(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails, sub_1BA11E7F8);

  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_valueFormatter));
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_calendar;
  v2 = sub_1BA4A18A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BA11FEE8(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel____lazy_storage___defaultDateOfBirth, sub_1BA11E82C);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfirmDetailsModel(uint64_t a1)
{
  result = qword_1EBBEC230;
  if (!qword_1EBBEC230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA11E6C4(uint64_t a1)
{
  sub_1BA11E7F8(319);
  if (v1 <= 0x3F)
  {
    sub_1BA4A18A8();
    if (v2 <= 0x3F)
    {
      sub_1BA11E82C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BA11E860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA11E8D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v54[1] = *v2;
  v56 = sub_1BA4A3EA8();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v4);
  v64 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11FEB4(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v61 = (v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_1BA4A1998();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v9);
  v65 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1BA4A1148();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v15);
  v17 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_calendar;
  sub_1BA11E860(0, &qword_1EBBEC248, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v18 = sub_1BA4A1898();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B9FD0;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, *MEMORY[0x1E6969A48], v18);
  v24(v23 + v20, *MEMORY[0x1E6969A78], v18);
  v24(v23 + 2 * v20, *MEMORY[0x1E6969A68], v18);
  v25 = v17;
  sub_1B9FF6D00(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1BA4A1808();

  v26 = sub_1BA119530(v66);
  v28 = v27;
  v29 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    (v26)(v66, 0);
    v30 = v59;
    v31 = v58;
  }

  else
  {
    v32 = *(v29 + 20);
    sub_1BA11FEE8(v28 + v32, sub_1BA11FF48);
    v31 = v58;
    v30 = v59;
    (*(v58 + 16))(v28 + v32, v25, v59);
    (*(v31 + 56))(v28 + v32, 0, 1, v30);
    (v26)(v66, 0);
  }

  *&v66[0] = 1;
  v67 = 0;
  v33 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120D48(v3 + v33, v14, sub_1BA11E7F8);
  sub_1BA11CC0C(v66, v14, v68);
  sub_1BA11FEE8(v14, sub_1BA11E7F8);
  *&v66[0] = 1;
  v67 = 0;
  v34 = v61;
  sub_1BA11B40C(v66, v61);
  v35 = v62;
  v36 = v63;
  v37 = (*(v62 + 48))(v34, 1, v63) == 1;
  v38 = v64;
  if (v37)
  {
    __swift_destroy_boxed_opaque_existential_1(v68);
    (*(v31 + 8))(v25, v30);
    return sub_1BA11FEE8(v34, sub_1BA11FEB4);
  }

  else
  {
    (*(v35 + 32))(v65, v34, v36);
    sub_1BA4A3DD8();
    v40 = sub_1BA4A3E88();
    v41 = sub_1BA4A6FC8();
    v61 = v40;
    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v66[0] = v60;
      *v43 = 136446466;
      v44 = sub_1BA4A85D8();
      v46 = sub_1B9F0B82C(v44, v45, v66);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      *(v43 + 14) = sub_1B9F0B82C(0xD00000000000002ALL, 0x80000001BA4EC050, v66);
      v47 = v61;
      _os_log_impl(&dword_1B9F07000, v61, v41, "[%{public}s.%{public}s]: updating date of birth value", v43, 0x16u);
      v48 = v60;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v48, -1, -1);
      MEMORY[0x1BFAF43A0](v43, -1, -1);

      (*(v55 + 8))(v64, v56);
    }

    else
    {

      (*(v55 + 8))(v38, v56);
    }

    v49 = v3 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v51 = v65;
    if (Strong)
    {
      v52 = *(v49 + 1);
      ObjectType = swift_getObjectType();
      (*(v52 + 8))(v51, v68, ObjectType, v52);
      swift_unknownObjectRelease();
    }

    (*(v35 + 8))(v51, v36);
    __swift_destroy_boxed_opaque_existential_1(v68);
    return (*(v31 + 8))(v25, v30);
  }
}

uint64_t sub_1BA11F15C()
{
  v1 = v0;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120D48(v1 + v10, v9, sub_1BA11E7F8);
  v11 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11))
  {
    v13 = 2;
  }

  else
  {
    v13 = v9[*(v11 + 36)];
  }

  sub_1BA11FEE8(v9, sub_1BA11E7F8);
  swift_beginAccess();
  sub_1B9FEF394(v13, 0x636F6C4261746562, 0xEC0000007372656BLL);
  swift_endAccess();
  sub_1BA120D48(v1 + v10, v5, sub_1BA11E7F8);
  if (v12(v5, 1, v11))
  {
    v14 = 2;
  }

  else
  {
    v14 = v5[*(v11 + 32)];
  }

  sub_1BA11FEE8(v5, sub_1BA11E7F8);
  swift_beginAccess();
  sub_1B9FEF394(v14, 0xD000000000000016, 0x80000001BA4E14F0);
  return swift_endAccess();
}

uint64_t sub_1BA11F3A8(char *a1)
{
  v2 = v1;
  v49 = a1;
  v3 = *v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11FEB4(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1BA4A1998();
  v13 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v14);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA119530(v53);
  v23 = v22;
  v24 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    v48 = v13;
    v25 = *(v24 + 20);
    sub_1BA11FEE8(v23 + v25, sub_1BA11FF48);
    v26 = sub_1BA4A1148();
    v27 = *(v26 - 8);
    v47[1] = v3;
    v28 = v8;
    v29 = v16;
    v30 = v27;
    (*(v27 + 16))(v23 + v25, v49, v26);
    v31 = v23 + v25;
    v13 = v48;
    (*(v30 + 56))(v31, 0, 1, v26);
    v16 = v29;
    v8 = v28;
  }

  (v21)(v53, 0);
  *&v53[0] = 2;
  v54 = 0;
  v32 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120D48(v2 + v32, v20, sub_1BA11E7F8);
  sub_1BA11CC0C(v53, v20, v55);
  sub_1BA11FEE8(v20, sub_1BA11E7F8);
  *&v53[0] = 2;
  v54 = 0;
  sub_1BA11B40C(v53, v12);
  if ((*(v13 + 48))(v12, 1, v52) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_1BA11FEE8(v12, sub_1BA11FEB4);
  }

  else
  {
    v34 = *(v13 + 32);
    v49 = v16;
    v34(v16, v12, v52);
    sub_1BA4A3DD8();
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v53[0] = v38;
      *v37 = 136446466;
      v39 = sub_1BA4A85D8();
      v41 = sub_1B9F0B82C(v39, v40, v53);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      *(v37 + 14) = sub_1B9F0B82C(0xD000000000000032, 0x80000001BA4EC010, v53);
      _os_log_impl(&dword_1B9F07000, v35, v36, "[%{public}s.%{public}s]: updating date of birth value", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    (*(v51 + 8))(v8, v50);
    v42 = v2 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v44 = v49;
    if (Strong)
    {
      v45 = *(v42 + 1);
      ObjectType = swift_getObjectType();
      (*(v45 + 8))(v44, v55, ObjectType, v45);
      swift_unknownObjectRelease();
    }

    (*(v13 + 8))(v44, v52);
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }
}

uint64_t sub_1BA11F96C(uint64_t a1)
{
  v2 = v1;
  v44 = *v1;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11FEB4(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A1998();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v47[0] = 0;
  v48 = 0;
  sub_1BA11B40C(v47, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_1BA11FEE8(v15, sub_1BA11FEB4);
  }

  (*(v17 + 32))(v20, v15, v16);
  sub_1BA4A3DD8();
  v22 = sub_1BA4A3E88();
  v23 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v43 = a1;
    v25 = v24;
    v42 = swift_slowAlloc();
    *&v47[0] = v42;
    *v25 = 136446466;
    v26 = sub_1BA4A85D8();
    v41 = v22;
    v28 = sub_1B9F0B82C(v26, v27, v47);
    v44 = v8;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1B9F0B82C(0xD000000000000032, 0x80000001BA4EBFD0, v47);
    v30 = v41;
    _os_log_impl(&dword_1B9F07000, v41, v23, "[%{public}s.%{public}s]: updating biological sex value", v25, 0x16u);
    v31 = v42;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v31, -1, -1);
    v32 = v25;
    a1 = v43;
    MEMORY[0x1BFAF43A0](v32, -1, -1);

    (*(v45 + 8))(v11, v44);
  }

  else
  {

    (*(v45 + 8))(v11, v8);
  }

  v33 = sub_1BA119530(v47);
  v35 = v34;
  v36 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    *v35 = a1;
    *(v35 + 8) = 0;
  }

  (v33)(v47, 0);
  *&v47[0] = 0;
  v48 = 0;
  v37 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120D48(v2 + v37, v7, sub_1BA11E7F8);
  sub_1BA11CC0C(v47, v7, v46);
  sub_1BA11FEE8(v7, sub_1BA11E7F8);
  v38 = v2 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(v38 + 1);
    ObjectType = swift_getObjectType();
    (*(v39 + 8))(v20, v46, ObjectType, v39);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v46);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1BA11FEE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA11FF7C(void *a1)
{
  v2 = v1;
  v50 = *v1;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11FEB4(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A1998();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v53[0] = 3;
  v54 = 0;
  sub_1BA11B40C(v53, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_1BA11FEE8(v15, sub_1BA11FEB4);
  }

  (*(v17 + 32))(v20, v15, v16);
  sub_1BA4A3DD8();
  v22 = sub_1BA4A3E88();
  v23 = sub_1BA4A6FC8();
  v24 = os_log_type_enabled(v22, v23);
  v49 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v47 = v16;
    v26 = v25;
    v27 = swift_slowAlloc();
    v48 = v7;
    v28 = v27;
    *&v53[0] = v27;
    *v26 = 136446466;
    v29 = sub_1BA4A85D8();
    v50 = v8;
    v31 = sub_1B9F0B82C(v29, v30, v53);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1B9F0B82C(0xD000000000000024, 0x80000001BA4EC080, v53);
    _os_log_impl(&dword_1B9F07000, v22, v23, "[%{public}s.%{public}s]: updating weight value", v26, 0x16u);
    swift_arrayDestroy();
    v32 = v28;
    v7 = v48;
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    v33 = v26;
    v16 = v47;
    MEMORY[0x1BFAF43A0](v33, -1, -1);

    (*(v51 + 8))(v11, v50);
  }

  else
  {

    (*(v51 + 8))(v11, v8);
  }

  v34 = sub_1BA119530(v53);
  v36 = v35;
  v37 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    v38 = *(v37 + 24);
    v39 = v20;
    v40 = *(v36 + v38);
    v41 = v49;
    *(v36 + v38) = v49;
    v42 = v41;

    v20 = v39;
  }

  (v34)(v53, 0);
  *&v53[0] = 3;
  v54 = 0;
  v43 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120D48(v2 + v43, v7, sub_1BA11E7F8);
  sub_1BA11CC0C(v53, v7, v52);
  sub_1BA11FEE8(v7, sub_1BA11E7F8);
  v44 = v2 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *(v44 + 1);
    ObjectType = swift_getObjectType();
    (*(v45 + 8))(v20, v52, ObjectType, v45);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1BA1204D0(void *a1)
{
  v2 = v1;
  v50 = *v1;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11FEB4(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A1998();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v53[0] = 4;
  v54 = 0;
  sub_1BA11B40C(v53, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_1BA11FEE8(v15, sub_1BA11FEB4);
  }

  (*(v17 + 32))(v20, v15, v16);
  sub_1BA4A3DD8();
  v22 = sub_1BA4A3E88();
  v23 = sub_1BA4A6FC8();
  v24 = os_log_type_enabled(v22, v23);
  v49 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v47 = v16;
    v26 = v25;
    v27 = swift_slowAlloc();
    v48 = v7;
    v28 = v27;
    *&v53[0] = v27;
    *v26 = 136446466;
    v29 = sub_1BA4A85D8();
    v50 = v8;
    v31 = sub_1B9F0B82C(v29, v30, v53);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_1B9F0B82C(0xD000000000000024, 0x80000001BA4EC0B0, v53);
    _os_log_impl(&dword_1B9F07000, v22, v23, "[%{public}s.%{public}s]: updating height value", v26, 0x16u);
    swift_arrayDestroy();
    v32 = v28;
    v7 = v48;
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    v33 = v26;
    v16 = v47;
    MEMORY[0x1BFAF43A0](v33, -1, -1);

    (*(v51 + 8))(v11, v50);
  }

  else
  {

    (*(v51 + 8))(v11, v8);
  }

  v34 = sub_1BA119530(v53);
  v36 = v35;
  v37 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    v38 = *(v37 + 28);
    v39 = v20;
    v40 = *(v36 + v38);
    v41 = v49;
    *(v36 + v38) = v49;
    v42 = v41;

    v20 = v39;
  }

  (v34)(v53, 0);
  *&v53[0] = 4;
  v54 = 0;
  v43 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120D48(v2 + v43, v7, sub_1BA11E7F8);
  sub_1BA11CC0C(v53, v7, v52);
  sub_1BA11FEE8(v7, sub_1BA11E7F8);
  v44 = v2 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *(v44 + 1);
    ObjectType = swift_getObjectType();
    (*(v45 + 8))(v20, v52, ObjectType, v45);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  return (*(v17 + 8))(v20, v16);
}

unint64_t sub_1BA120A24()
{
  result = qword_1EBBEC250;
  if (!qword_1EBBEC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC250);
  }

  return result;
}

unint64_t sub_1BA120ACC()
{
  result = qword_1EBBEC280;
  if (!qword_1EBBEC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC280);
  }

  return result;
}

unint64_t sub_1BA120B20()
{
  result = qword_1EBBEC288;
  if (!qword_1EBBEC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC288);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_1BA120BB4()
{
  result = qword_1EBBEC298;
  if (!qword_1EBBEC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC298);
  }

  return result;
}

uint64_t sub_1BA120C08(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6A0(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA120C84(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v9[2] = a1[2];
  v9[3] = v3;
  v9[4] = a1[4];
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = v2[3];
  v8[2] = v2[2];
  v8[3] = v5;
  v8[4] = v2[4];
  v6 = v2[1];
  v8[0] = *v2;
  v8[1] = v6;
  return _s18HealthExperienceUI21ConfirmDetailsSectionV3RowO2eeoiySbAE_AEtFZ_0(v9, v8) & 1;
}

void sub_1BA120CF4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6[1] = *(v2 + 16);
  sub_1BA24AAD8(sub_1BA120EC8, v6, v4);
  *a2 = v5;
}

uint64_t sub_1BA120D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA120DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA120E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA120E80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *BasicPromotionDismissalStateManager.__allocating_init(healthStore:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  sub_1BA4A2438();
  swift_allocObject();
  v5[2] = sub_1BA4A2408();
  v5[3] = a2;
  v5[4] = a3;
  return v5;
}

void *BasicPromotionDismissalStateManager.init(healthStore:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA4A2438();
  swift_allocObject();
  v3[2] = sub_1BA4A2408();
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_1BA12102C(char a1)
{
  sub_1BA4A2428();
  sub_1BA1210D4(0);
  sub_1BA121400(&qword_1EBBEC2A8, sub_1BA1210D4, MEMORY[0x1E695C038]);
  v1 = sub_1BA4A4F98();

  return v1;
}

void sub_1BA1210D4(uint64_t a1)
{
  if (!qword_1EBBEC2A0)
  {
    sub_1B9FED358();
    v1 = sub_1BA4A4E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC2A0);
    }
  }
}

uint64_t sub_1BA121140()
{
  sub_1BA1212E4(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_1BA4A2418();
  sub_1BA121380(0);
  sub_1BA121400(&qword_1EDC5F3E8, sub_1BA121380, MEMORY[0x1E695C038]);
  sub_1BA4A4FE8();

  sub_1BA121400(&qword_1EDC5F668, sub_1BA1212E4, MEMORY[0x1E695BD60]);
  v6 = sub_1BA4A4F98();
  (*(v2 + 8))(v5, v1);
  return v6;
}

void sub_1BA1212E4(uint64_t a1)
{
  if (!qword_1EDC5F660)
  {
    sub_1BA121380(255);
    sub_1BA121400(&qword_1EDC5F3E8, sub_1BA121380, MEMORY[0x1E695C038]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F660);
    }
  }
}

void sub_1BA121380(uint64_t a1)
{
  if (!qword_1EDC5F3E0)
  {
    sub_1B9F1174C();
    sub_1B9FED358();
    v1 = sub_1BA4A4E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F3E0);
    }
  }
}

uint64_t sub_1BA121400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t BasicPromotionDismissalStateManager.deinit()
{

  return v0;
}

uint64_t BasicPromotionDismissalStateManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1214B0(char a1)
{
  sub_1BA4A2428();
  sub_1BA1210D4(0);
  sub_1BA121400(&qword_1EBBEC2A8, sub_1BA1210D4, MEMORY[0x1E695C038]);
  v1 = sub_1BA4A4F98();

  return v1;
}

uint64_t sub_1BA121558()
{
  sub_1BA1212E4(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_1BA4A2418();
  sub_1BA121380(0);
  sub_1BA121400(&qword_1EDC5F3E8, sub_1BA121380, MEMORY[0x1E695C038]);
  sub_1BA4A4FE8();

  sub_1BA121400(&qword_1EDC5F668, sub_1BA1212E4, MEMORY[0x1E695BD60]);
  v6 = sub_1BA4A4F98();
  (*(v2 + 8))(v5, v1);
  return v6;
}

void *ProfileSharingShareAccessViewController.init(healthExperienceStore:healthStore:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI39ProfileSharingShareAccessViewController_profileSharingDescription;
  if (qword_1EBBE81F8 != -1)
  {
    swift_once();
  }

  v7 = &v3[v6];
  v8 = *algn_1EBC092E8;
  *v7 = qword_1EBC092E0;
  *(v7 + 1) = v8;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI39ProfileSharingShareAccessViewController_profileBeingShared;
  v10 = sub_1BA4A2888();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v11 = sub_1BA4A1B68();
  v12 = [a2 profileIdentifier];
  type metadata accessor for HealthKitProfileInformationDataSource(0);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI39ProfileSharingShareAccessViewController_dataSource] = sub_1BA2B8F0C(v11, v12, 0, 0, sub_1BA121AB8, 0);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;

  v13 = sub_1BA4A6758();
  v14 = sub_1BA4A6758();

  v20.receiver = v3;
  v20.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  v15 = objc_msgSendSuper2(&v20, sel_initWithTitle_detailText_icon_contentLayout_, v13, v14, 0, 3);

  v16 = v15;
  v17 = [v16 headerView];
  LODWORD(v18) = 1036831949;
  [v17 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v16) + 0xB8))(0);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

id sub_1BA121AB8()
{
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  v3[4] = xmmword_1EDC6D2B0;
  v3[5] = *&qword_1EDC6D2C0;
  v3[6] = xmmword_1EDC6D2D0;
  v3[7] = unk_1EDC6D2E0;
  v3[0] = xmmword_1EDC6D270;
  v3[1] = *&qword_1EDC6D280;
  v3[2] = xmmword_1EDC6D290;
  v3[3] = *&qword_1EDC6D2A0;
  sub_1BA0117AC();
  v2[4] = xmmword_1EDC6D2B0;
  v2[5] = *&qword_1EDC6D2C0;
  v2[6] = xmmword_1EDC6D2D0;
  v2[7] = unk_1EDC6D2E0;
  v2[0] = xmmword_1EDC6D270;
  v2[1] = *&qword_1EDC6D280;
  v2[2] = xmmword_1EDC6D290;
  v2[3] = *&qword_1EDC6D2A0;
  sub_1B9F1D9A4(v3, &v1);
  return sub_1B9F293A8(v2);
}

void sub_1BA121B7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1BA121ED8(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = UIViewController.resolvedHealthStore.getter();
  if (v7)
  {
    v8 = v7;
    UIViewController.resolvedHealthExperienceStore.getter(&v16);
    sub_1BA06FE18(v0 + OBJC_IVAR____TtC18HealthExperienceUI39ProfileSharingShareAccessViewController_profileBeingShared, v6);
    v9 = sub_1BA4A2888();
    if ((*(*(v9 - 8) + 48))(v6, 1, v9) != 1)
    {
      v10 = objc_allocWithZone(type metadata accessor for ProfileSharingYouShouldKnowViewController(0));
      v11 = sub_1BA31C950(&v16, v6);
      [v1 showViewController:v11 sender:0];

      return;
    }

    __break(1u);
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v16 = ObjectType;
  swift_getMetatypeMetadata();
  v12 = sub_1BA4A6808();
  v14 = v13;

  v16 = v12;
  v17 = v14;
  MEMORY[0x1BFAF1350](0xD000000000000020, 0x80000001BA4EC310);
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA121DEC()
{

  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI39ProfileSharingShareAccessViewController_profileBeingShared;

  return sub_1BA06F9D0(v1);
}

id ProfileSharingShareAccessViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileSharingShareAccessViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA121ED8(uint64_t a1)
{
  if (!qword_1EDC6E200)
  {
    sub_1BA4A2888();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6E200);
    }
  }
}

uint64_t type metadata accessor for ProfileSharingShareAccessViewController(uint64_t a1)
{
  result = qword_1EBBEC2C0;
  if (!qword_1EBBEC2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA121F84(uint64_t a1)
{
  sub_1BA121ED8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id PDFCollectionViewLayout.__allocating_init(pageSize:horizontalInset:)(double a1, double a2, double a3)
{
  v9.receiver = objc_allocWithZone(v3);
  v9.super_class = v3;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v7 setScrollDirection_];
  [v7 setMinimumLineSpacing_];
  [v7 setItemSize_];
  [v7 setSectionInset_];

  return v7;
}

id PDFCollectionViewLayout.init(pageSize:horizontalInset:)(double a1, double a2, double a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for PDFCollectionViewLayout();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v7 setScrollDirection_];
  [v7 setMinimumLineSpacing_];
  [v7 setItemSize_];
  [v7 setSectionInset_];

  return v7;
}

id PDFCollectionViewLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PDFCollectionViewLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PDFCollectionViewLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SearchDataSource.EmptyStateDataSource.deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t SearchDataSource.EmptyStateDataSource.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t SearchDataSource.CompactEmptyStateDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t SearchDataSource.CompactEmptyStateDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return swift_deallocClassInstance();
}

id SearchDataSource.RegularEmptyStateDataSource.layout(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  v5 = qword_1EDC68DF0[0];
  v6 = sub_1B9F58798(&unk_1F37FC1F8);
  if (v5 <= 0.0)
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
    v7 = v6;
    sub_1B9F0ADF8(0, &qword_1EDC5E2F0, 0x1E6995590);
    *&v19 = v5;
    *(&v19 + 1) = v7;
    v20 = 0uLL;
    *&v21 = 0x4049000000000000;
    v22 = 0uLL;
    *(&v21 + 1) = sub_1BA4A7648();
    *&v23 = sub_1B9F58BC4;
    *(&v23 + 1) = 0;
    v18[0] = v2;
    v18[1] = v3;
    v18[2] = v4;
    v8 = GridLayoutEngine.layout(for:)(v18);
    if (v1)
    {
      v15 = v21;
      v16 = v22;
      v17 = v23;
      v13 = v19;
      v14 = v20;
      return sub_1B9F5A690(&v13);
    }

    else
    {
      v10 = v8;
      v15 = v21;
      v16 = v22;
      v17 = v23;
      v13 = v19;
      v14 = v20;
      sub_1B9F5A690(&v13);
      v11 = [objc_opt_self() estimatedDimension_];
      v12 = sub_1B9F5CA58(v11, 2);

      return v12;
    }
  }

  return result;
}

uint64_t SearchDataSource.RegularEmptyStateDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SearchDataSource.RegularEmptyStateDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id PresentationBasedCollectionViewListCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PresentationBasedCollectionViewListCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PresentationBasedCollectionViewListCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id PresentationBasedCollectionViewListCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PresentationBasedCollectionViewListCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PresentationBasedCollectionViewListCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PresentationBasedCollectionViewListCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentationBasedCollectionViewListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 static ProfileNameCell.layoutConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v2 = unk_1EDC6D3D8;
  v18[4] = xmmword_1EDC6D3C8;
  v18[5] = unk_1EDC6D3D8;
  v3 = xmmword_1EDC6D3E8;
  v4 = unk_1EDC6D3F8;
  v18[6] = xmmword_1EDC6D3E8;
  v18[7] = unk_1EDC6D3F8;
  v5 = xmmword_1EDC6D388;
  v6 = xmmword_1EDC6D398;
  v18[0] = xmmword_1EDC6D388;
  v18[1] = xmmword_1EDC6D398;
  v7 = xmmword_1EDC6D3A8;
  v8 = xmmword_1EDC6D3B8;
  v18[2] = xmmword_1EDC6D3A8;
  v18[3] = xmmword_1EDC6D3B8;
  v9 = *(&xmmword_1EDC6D388 + 1);
  *(a1 + 64) = xmmword_1EDC6D3C8;
  *(a1 + 80) = v2;
  *(a1 + 96) = v3;
  *(a1 + 112) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  sub_1B9F1D9A4(v18, &v17);
  sub_1B9F1DA18(v10, v11, v12, v13);
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  v14 = [objc_opt_self() estimatedDimension_];

  *(a1 + 8) = v14;
  result = *MEMORY[0x1E69DC5C0];
  v16 = *(MEMORY[0x1E69DC5C0] + 16);
  *(a1 + 96) = *MEMORY[0x1E69DC5C0];
  *(a1 + 112) = v16;
  return result;
}

void sub_1BA122E54(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_1BA4A2C18();
  sub_1BA150394(v3 & 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A2C28();
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label);
    v6 = sub_1BA4A6758();
    [v5 setAccessibilityLabel_];

    v8 = sub_1BA4A6758();

    [v5 setText_];
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label);

    [v7 setText_];
  }
}

double sub_1BA122FA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel);
  [v1 bounds];
  [v1 convertRect:0 toView:?];
  v3 = v2;
  [v1 _lastLineBaseline];
  return v3 + v4;
}

uint64_t sub_1BA12302C(char *a1, uint64_t a2)
{
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B8B60;
  v5 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView];
  v6 = [v5 centerXAnchor];
  v7 = [a1 centerXAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [v5 leadingAnchor];
  v10 = [a1 leadingAnchor];
  v11 = (*(a2 + 392))();
  v12 = [v9 constraintGreaterThanOrEqualToAnchor:v10 constant:?];

  *(v4 + 40) = v12;
  v13 = [v5 trailingAnchor];
  v14 = [a1 trailingAnchor];
  v15 = [v13 constraintLessThanOrEqualToAnchor:v14 constant:-v11];

  *(v4 + 48) = v15;
  return v4;
}

uint64_t sub_1BA123214(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = a2(v2, ObjectType);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_1BA12328C(char *a1, uint64_t a2)
{
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B7510;
  v5 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView];
  v6 = [v5 leadingAnchor];
  v7 = [a1 leadingAnchor];
  v8 = (*(a2 + 392))();
  v9 = [v6 constraintEqualToAnchor:v7 constant:?];

  *(v4 + 32) = v9;
  v10 = [a1 trailingAnchor];
  v11 = [v5 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:v8];

  *(v4 + 40) = v12;
  return v4;
}

char *ProfileNameView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView;
  v12 = [objc_opt_self() effectWithStyle_];
  v13 = [objc_opt_self() effectForBlurEffect:v12 style:4];

  v14 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v15 = v14;
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setUserInteractionEnabled_];

  *&v5[v11] = v15;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewTopSpaceConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView____lazy_storage___compactHorizontalSizeConstraints] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView____lazy_storage___regularHorizontalSizeConstraints] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint] = 0;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_currentSyncStatus;
  sub_1BA126AA0(0);
  memset(&v26[1], 0, 32);
  v27 = 0;
  swift_allocObject();
  *&v5[v16] = sub_1BA4A4DF8();
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_syncStatusCancellable] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel] = (*(ObjectType + 440))();
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView] = (*(ObjectType + 456))();
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton] = sub_1BA126B34();
  v26[0].receiver = v5;
  v26[0].super_class = type metadata accessor for ProfileNameView();
  v17 = [(objc_super *)v26 initWithFrame:a1, a2, a3, a4];
  sub_1BA1240AC();
  sub_1BA12417C();
  sub_1BA124DCC();
  v18 = *&v17[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView];
  v19 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner;
  v20 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_spinner];
  v21 = v18;
  [v20 stopAnimating];
  [*&v18[v19] setHidden_];
  v22 = objc_opt_self();
  sub_1BA14F69C();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v23 = sub_1BA4A6AE8();

  [v22 deactivateConstraints_];

  sub_1BA14F79C();
  v24 = sub_1BA4A6AE8();

  [v22 activateConstraints_];

  return v17;
}

id ProfileNameView.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView;
  v6 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_opt_self() effectForBlurEffect:v6 style:4];

  v8 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v9 = v8;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setUserInteractionEnabled_];

  *&v2[v5] = v9;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewTopSpaceConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView____lazy_storage___compactHorizontalSizeConstraints] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView____lazy_storage___regularHorizontalSizeConstraints] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint] = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_currentSyncStatus;
  sub_1BA126AA0(0);
  memset(&v13[1], 0, 32);
  v14 = 0;
  swift_allocObject();
  *&v2[v10] = sub_1BA4A4DF8();
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_syncStatusCancellable] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel] = (*(ObjectType + 440))();
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView] = (*(ObjectType + 456))();
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton] = sub_1BA126B34();
  v13[0].receiver = v2;
  v13[0].super_class = type metadata accessor for ProfileNameView();
  v11 = [(objc_super *)v13 initWithCoder:a1];

  if (v11)
  {
  }

  return v11;
}

id sub_1BA123998()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setNumberOfLines_];
  v3 = (*(v0 + 472))([v1 setLineBreakMode_]);
  [v1 setFont_];

  [v1 setAdjustsFontForContentSizeCategory_];
  [v1 setTextAlignment_];
  return v1;
}

char *sub_1BA123AB0()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(type metadata accessor for LabelWithSpinner()) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label;
  v7 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 secondaryLabelColor];
  [v9 setTextColor_];

  [*&v5[v6] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v5[v6] setNumberOfLines_];
  v11 = *&v5[v6];
  v12 = *MEMORY[0x1E69DDD80];
  v13 = objc_opt_self();
  v14 = v11;
  v15 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v18 = v12;
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v44 = v1;
      v22 = v21;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48 = v43;
      *v22 = 136315906;
      v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      HIDWORD(v41) = v20;
      v25 = sub_1B9F0B82C(v23, v24, &v48);
      v45 = v18;
      v26 = v25;

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v46 = 0;
      v47 = 1;
      sub_1BA127200(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v27 = sub_1BA4A6808();
      v29 = sub_1B9F0B82C(v27, v28, &v48);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2080;
      LODWORD(v46) = 0;
      type metadata accessor for SymbolicTraits(0);
      v30 = sub_1BA4A6808();
      v32 = sub_1B9F0B82C(v30, v31, &v48);
      v18 = v45;

      *(v22 + 24) = v32;
      *(v22 + 32) = 2112;
      v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v22 + 34) = v33;
      v34 = v42;
      *v42 = v33;
      _os_log_impl(&dword_1B9F07000, v19, BYTE4(v41), "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v22, 0x2Au);
      sub_1BA127500(v34, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      v35 = v43;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      MEMORY[0x1BFAF43A0](v22, -1, -1);

      (*(v44 + 8))(v4, v0);
    }

    else
    {

      (*(v1 + 8))(v4, v0);
    }

    v36 = [v13 preferredFontDescriptorWithTextStyle_];
    v17 = [objc_opt_self() fontWithDescriptor:v36 size:0.0];
  }

  [v14 setFont_];

  [*&v5[v6] setMaximumContentSizeCategory_];
  [*&v5[v6] setAdjustsFontForContentSizeCategory_];
  [*&v5[v6] setTextAlignment_];
  LODWORD(v37) = 1148846080;
  [*&v5[v6] setContentCompressionResistancePriority:0 forAxis:v37];
  LODWORD(v38) = 1148846080;
  [*&v5[v6] setContentCompressionResistancePriority:1 forAxis:v38];
  LODWORD(v39) = 1148846080;
  [*&v5[v6] setContentHuggingPriority:1 forAxis:v39];
  [*&v5[v6] setIsAccessibilityElement_];
  return v5;
}

id sub_1BA1240AC()
{
  [v0 addSubview_];
  v1 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView;
  v2 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView] contentView];
  [v2 addSubview_];

  v3 = [*&v0[v1] contentView];
  [v3 addSubview_];

  v4 = *&v0[v1];

  return [v0 addSubview_];
}

void sub_1BA12417C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView;
  v77 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView;
  v4 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView] heightAnchor];
  v5 = [v4 constraintEqualToConstant_];

  v76 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint;
  v6 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint] = v5;

  v7 = [*&v1[v3] topAnchor];
  v8 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton;
  v75 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton;
  v9 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton] bottomAnchor];
  v10 = ObjectType[48]();
  v11 = [v7 constraintEqualToAnchor:v9 constant:?];

  v12 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewTopSpaceConstraint];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewTopSpaceConstraint] = v11;

  v13 = [*&v1[v8] heightAnchor];
  v14 = [v13 constraintEqualToConstant_];

  v15 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint] = v14;

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4BF880;
  v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
  v18 = [v17 topAnchor];
  v19 = [v1 topAnchor];
  v20 = [v18 &selRef:v19 objectAtIndex:8.0 + 6];

  *(v16 + 32) = v20;
  v21 = [v17 leadingAnchor];
  v22 = [v1 layoutMarginsGuide];
  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v16 + 40) = v24;
  v25 = [v17 trailingAnchor];
  v26 = [v1 &selRef__createTableFooterView + 1];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v16 + 48) = v28;
  v29 = [*&v1[v75] topAnchor];
  v30 = [v17 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v16 + 56) = v31;
  v32 = [*&v1[v75] leadingAnchor];
  v33 = [v17 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v16 + 64) = v34;
  v35 = [v1 layoutMarginsGuide];
  v36 = [v35 trailingAnchor];

  v37 = [*&v1[v75] trailingAnchor];
  v38 = [v36 constraintGreaterThanOrEqualToAnchor_];

  *(v16 + 72) = v38;
  v39 = [*&v1[v77] centerXAnchor];
  v40 = [v1 centerXAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v16 + 80) = v41;
  v42 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView];
  v43 = [v42 topAnchor];
  v44 = [*&v1[v75] bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:v10];

  *(v16 + 88) = v45;
  v46 = [v1 bottomAnchor];
  v47 = [v42 bottomAnchor];
  v48 = ObjectType[50]();
  v49 = [v46 constraintEqualToAnchor:v47 constant:?];

  *(v16 + 96) = v49;
  v50 = *&v1[v76];
  if (v50)
  {
    *(v16 + 104) = v50;
    v51 = *&v1[v77];
    v52 = v50;
    v53 = [v51 topAnchor];
    v54 = [v17 bottomAnchor];
    v55 = [v53 &selRef:v54 objectAtIndex:v10 + 6];

    *(v16 + 112) = v55;
    v56 = [*&v1[v77] leadingAnchor];
    v57 = [v1 leadingAnchor];
    v58 = ObjectType[49]();
    v59 = [v56 &selRef:v57 objectAtIndex:? + 6];

    *(v16 + 120) = v59;
    v60 = [v1 trailingAnchor];
    v61 = [*&v1[v77] trailingAnchor];
    v62 = [v60 &selRef:v61 objectAtIndex:v58 + 6];

    *(v16 + 128) = v62;
    v63 = [v1 bottomAnchor];
    v64 = [*&v1[v77] bottomAnchor];
    v65 = [v63 &selRef:v64 objectAtIndex:v48 + 6];

    *(v16 + 136) = v65;
    v66 = [v1 traitCollection];
    v67 = [v66 horizontalSizeClass];

    if (v67 == 1)
    {
      v68 = sub_1BA12300C();
    }

    else
    {
      v68 = sub_1BA1231F4();
    }

    v69 = v68;
    v70 = objc_opt_self();
    sub_1B9F73B50(v69);
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v71 = sub_1BA4A6AE8();

    [v70 activateConstraints_];

    sub_1BA127200(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1BA4B5480;
    v73 = sub_1BA4A4438();
    v74 = MEMORY[0x1E69DC130];
    *(v72 + 32) = v73;
    *(v72 + 40) = v74;
    MEMORY[0x1BFAF2130](v72, sel_traitWidthDesignationDidChange);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA124A50()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%s] Updating the constraints based on traitWidthDesignation changes", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = [v1 traitCollection];
  v15 = [v14 horizontalSizeClass];

  sub_1BA124C88(v15);
}

void sub_1BA124C88(uint64_t a1)
{
  v2 = objc_opt_self();
  if (a1 == 1)
  {
    sub_1BA1231F4();
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v3 = sub_1BA4A6AE8();

    [v2 deactivateConstraints_];

    sub_1BA12300C();
  }

  else
  {
    sub_1BA12300C();
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v4 = sub_1BA4A6AE8();

    [v2 deactivateConstraints_];

    sub_1BA1231F4();
  }

  v5 = sub_1BA4A6AE8();

  [v2 activateConstraints_];
}

double sub_1BA124DCC()
{
  v1 = v0;
  v16 = sub_1BA4A72D8();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA12755C(0);
  v7 = *(v6 - 8);
  v17 = v6;
  v18 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_currentSyncStatus);

  sub_1BA4A72B8();
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v11 = sub_1BA4A7308();
  v19 = v11;
  sub_1BA126AA0(0);
  sub_1BA127630(&qword_1EBBEC360, sub_1BA126AA0, MEMORY[0x1E695BFB0]);
  sub_1B9F3DC80();
  sub_1BA4A50E8();

  (*(v2 + 8))(v5, v16);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BA127630(&qword_1EBBEC368, sub_1BA12755C, MEMORY[0x1E695BE68]);
  v12 = v17;
  v13 = sub_1BA4A5148();

  (*(v18 + 8))(v10, v12);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_syncStatusCancellable) = v13;

  return result;
}

void sub_1BA1250A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BA127678(a1, &v7, &qword_1EBBEC320, &qword_1EBBEC328, MEMORY[0x1E69A32C8]);
    if (v8)
    {
      sub_1B9F1134C(&v7, v9);
      [*&v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView] setHidden_];
      v5 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint];
      if (v5)
      {
        [v5 setActive_];
        sub_1BA122E54(v9);
        __swift_destroy_boxed_opaque_existential_1(v9);
LABEL_7:

        return;
      }

      __break(1u);
    }

    else
    {
      sub_1BA127500(&v7, &qword_1EBBEC320, &qword_1EBBEC328, MEMORY[0x1E69A32C8], sub_1B9F0D950);
      [*(*&v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView] + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label) setText_];
      v6 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint];
      if (v6)
      {
        [v6 setActive_];
        [*&v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView] setHidden_];
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1BA125230(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x1E69E6720];
  sub_1BA127200(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v36 = &v35 - v8;
  sub_1BA127200(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], v5);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - v11;
  v13 = sub_1BA4A33C8();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x220))(a1, v16);
  v37 = a1;
  sub_1B9F0A534(a1, v38);
  v35 = sub_1B9F0D950(0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
  if (swift_dynamicCast())
  {

    (*(v14 + 56))(v12, 0, 1, v13);
    (*(v14 + 32))(v18, v12, v13);
    sub_1BA4A3328();
    v19 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel);
    v20 = (*(ObjectType + 464))([v19 setNumberOfLines_]);
    [v19 setFont_];

    (*(v14 + 8))(v18, v13);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    sub_1BA127490(v12, &qword_1EBBEA318, MEMORY[0x1E69A3430]);
    v19 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel);
    v21 = (*(ObjectType + 472))([v19 setNumberOfLines_]);
    [v19 setFont_];
  }

  v22 = sub_1BA4A6758();

  [v19 setText_];

  v23 = MEMORY[0x1E69E7D40];
  v24 = v37;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x230))(v38, v37);
  sub_1BA4A4DA8();
  sub_1BA127500(v38, &qword_1EBBEC320, &qword_1EBBEC328, MEMORY[0x1E69A32C8], sub_1B9F0D950);
  v25 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v26 = [v25 aa_primaryAppleAccount];
  v27 = v36;
  if (v26)
  {
    v28 = v26;
    if ([v26 aa_isManagedAppleID])
    {
      [*(*(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView) + OBJC_IVAR____TtC18HealthExperienceUI16LabelWithSpinner_label) setText_];
      v29 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleViewHeightConstraint);
      if (!v29)
      {
        __break(1u);
        return;
      }

      [v29 setActive_];
      [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleVibrancyView) setHidden_];
    }
  }

  sub_1B9F0A534(v24, v38);
  v30 = sub_1BA4A2888();
  v31 = swift_dynamicCast();
  v32 = *(*(v30 - 8) + 56);
  if (v31)
  {
    v33 = *(v30 - 8);
    v32(v27, 0, 1, v30);
    v34 = sub_1BA4A2838();
    (*(v33 + 8))(v27, v30);
  }

  else
  {
    v32(v27, 1, 1, v30);
    sub_1BA127490(v27, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    v34 = 0;
  }

  (*((*v23 & *v2) + 0x228))(v34);
}

id sub_1BA1258E0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton;
  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton) setHidden_];
  result = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButtonHeightConstraint);
  if (result)
  {
    [result setActive_];
    v3 = *(v0 + v1);

    return [v3 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA12595C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA127200(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v20 - v7;
  v9 = sub_1BA4A2888();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v22);
  sub_1B9F0D950(0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
  sub_1B9F0D950(0, &qword_1EBBEC328, MEMORY[0x1E69A32C8]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    result = sub_1BA127500(v20, &qword_1EBBEC320, &qword_1EBBEC328, MEMORY[0x1E69A32C8], sub_1B9F0D950);
LABEL_8:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  sub_1B9F1134C(v20, v23);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_1BA4A2C28();
  if (!v14)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    goto LABEL_8;
  }

  sub_1B9F0A534(a1, v22);
  v15 = swift_dynamicCast();
  v16 = *(v10 + 56);
  if ((v15 & 1) == 0)
  {
    v16(v8, 1, 1, v9);
    sub_1BA127490(v8, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    goto LABEL_10;
  }

  v16(v8, 0, 1, v9);
  (*(v10 + 32))(v13, v8, v9);
  v17 = sub_1BA4A2838();
  v18 = [v17 type];

  (*(v10 + 8))(v13, v9);
  if (v18 != 1)
  {
LABEL_10:
    sub_1B9F0A534(v23, a2);
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

void sub_1BA125C90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel);
    sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BA4B5460;
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    *(v6 + 48) = 1701667150;
    *(v6 + 56) = 0xE400000000000000;
    swift_bridgeObjectRetain_n();
    v7 = sub_1BA4A6AE8();

    v8 = HKUIJoinStringsForAutomationIdentifier();

    [v5 setAccessibilityIdentifier_];
    v9 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BA4B5460;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    *(v10 + 48) = 0x656C746974627553;
    *(v10 + 56) = 0xE800000000000000;

    v11 = sub_1BA4A6AE8();

    v12 = HKUIJoinStringsForAutomationIdentifier();

    [v9 setAccessibilityIdentifier_];
    v13 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_profileButton);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BA4B5460;
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;
    *(v14 + 48) = 0x6E6F74747542;
    *(v14 + 56) = 0xE600000000000000;
    v15 = v13;
    v16 = sub_1BA4A6AE8();

    v18 = HKUIJoinStringsForAutomationIdentifier();

    [v15 setAccessibilityIdentifier_];
  }

  else
  {
    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel) setAccessibilityIdentifier_];
    v17 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_subtitleView);

    [v17 setAccessibilityIdentifier_];
  }
}

void sub_1BA126028()
{
  v0 = sub_1BA4A6AE8();
  v1 = HKUIJoinStringsForAutomationIdentifier();

  if (v1)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA12609C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_item;
  swift_beginAccess();
  return sub_1BA127678(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA12610C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v2 + v5);
  swift_endAccess();
  v6 = sub_1BA126660();
  v7 = (*(ObjectType + 96))(v6);
  v9 = v8;
  v10 = sub_1BA4A6758();
  [v2 setAccessibilityIdentifier_];

  sub_1BA125C90(v7, v9);

  return sub_1BA127500(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

uint64_t (*sub_1BA126220(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  *(v3 + 32) = swift_getObjectType();
  swift_beginAccess();
  return sub_1BA1262B8;
}

void sub_1BA1262B8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = sub_1BA126660();
    v7 = (*(v4 + 96))(v6);
    v9 = v8;
    v10 = sub_1BA4A6758();
    [v5 setAccessibilityIdentifier_];

    sub_1BA125C90(v7, v9);
  }

  free(v3);
}

char *ProfileNameCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView] = (*(ObjectType + 128))();
  v17.receiver = v4;
  v17.super_class = type metadata accessor for ProfileNameCell();
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView;
  [v12 addSubview_];

  v14 = *&v11[v13];
  v15 = [v11 contentView];

  [v14 hk:v15 alignConstraintsWithView:?];
  return v11;
}

id ProfileNameCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ProfileNameCell.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1BA4A8018();
  __break(1u);
}

id sub_1BA126614()
{
  type metadata accessor for ProfileNameView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_1BA126660()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_item;
  swift_beginAccess();
  sub_1BA127678(v0 + v1, v3, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (v4)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
    if (swift_dynamicCast())
    {
      if (*(&v6 + 1))
      {
        sub_1B9F1134C(&v5, v8);
        (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView)) + 0x208))(v8);
        return __swift_destroy_boxed_opaque_existential_1(v8);
      }
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
    }
  }

  else
  {
    sub_1BA127500(v3, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v5 = 0u;
    v6 = 0u;
    v7 = 0;
  }

  sub_1BA127500(&v5, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], sub_1B9F0D950);
  return [*(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView) + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel) setText_];
}

void sub_1BA126840(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_1BA4A6758();
  }

  else
  {
    v5 = 0;
  }

  [v2 setAccessibilityIdentifier_];

  sub_1BA125C90(a1, a2);
}

id sub_1BA1268DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA126980(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  [v5 setAccessibilityIdentifier_];

  sub_1BA125C90(a1, a2);
}

void (*sub_1BA126A08(uint64_t *a1))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  *(v3 + 32) = swift_getObjectType();
  swift_beginAccess();
  return sub_1BA1262B8;
}

void sub_1BA126AA0(uint64_t a1)
{
  if (!qword_1EBBEC318)
  {
    sub_1BA127264(255, &qword_1EBBEC320, &qword_1EBBEC328, MEMORY[0x1E69A32C8], sub_1B9F0D950);
    v1 = sub_1BA4A4DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC318);
    }
  }
}

id sub_1BA126B34()
{
  v0 = sub_1BA4A3EA8();
  v48 = *(v0 - 8);
  v49 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = objc_opt_self();
  v6 = [v5 secondaryLabelColor];
  [v4 setTextColor_];

  v7 = v4;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v8) = 1148846080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [v7 setContentHuggingPriority:1 forAxis:v9];
  v10 = qword_1EDC5E100;
  v11 = v7;
  if (v10 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v12 = sub_1BA4A6758();

  [v11 setAccessibilityLabel_];

  [v11 setIsAccessibilityElement_];
  [v11 setAdjustsFontForContentSizeCategory_];
  [v11 setMaximumContentSizeCategory_];

  v13 = sub_1BA4A1318();
  v15 = v14;
  v16 = [v5 secondaryLabelColor];
  v17 = sub_1BA4A6758();
  v18 = [objc_opt_self() systemImageNamed_];

  v19 = sub_1BA0BA314(v13, v15, v16, v18, 1);

  v20 = *MEMORY[0x1E69DB648];
  v21 = *MEMORY[0x1E69DDCF8];
  v22 = objc_opt_self();
  v23 = [v22 preferredFontDescriptorWithTextStyle:v21 compatibleWithTraitCollection:0];
  if (v23)
  {
    v24 = v23;
    v25 = [objc_opt_self() fontWithDescriptor:v23 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v26 = v21;
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v52 = v46;
      *v29 = 136315906;
      v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v47 = v26;
      v32 = sub_1B9F0B82C(v30, v31, &v52);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      v50 = 0;
      v51 = 1;
      sub_1BA127200(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, &v52);

      *(v29 + 14) = v35;
      *(v29 + 22) = 2080;
      LODWORD(v50) = 0;
      type metadata accessor for SymbolicTraits(0);
      v36 = sub_1BA4A6808();
      v38 = sub_1B9F0B82C(v36, v37, &v52);
      v26 = v47;

      *(v29 + 24) = v38;
      *(v29 + 32) = 2112;
      v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v29 + 34) = v39;
      v40 = v45;
      *v45 = v39;
      _os_log_impl(&dword_1B9F07000, v27, v28, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v29, 0x2Au);
      sub_1BA127500(v40, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      v41 = v46;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    (*(v48 + 8))(v3, v49);
    v42 = [v22 preferredFontDescriptorWithTextStyle_];
    v25 = [objc_opt_self() fontWithDescriptor:v42 size:0.0];
  }

  v43 = v19;
  [v43 addAttribute:v20 value:v25 range:{0, objc_msgSend(v43, sel_length)}];

  [v11 setAttributedText_];
  return v11;
}

void sub_1BA127200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA127264(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA127490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA127200(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA127500(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1BA127264(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1BA12755C(uint64_t a1)
{
  if (!qword_1EBBEC358)
  {
    sub_1BA126AA0(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1BA127630(&qword_1EBBEC360, sub_1BA126AA0, MEMORY[0x1E695BFB0]);
    sub_1B9F3DC80();
    v1 = sub_1BA4A4CA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC358);
    }
  }
}

uint64_t sub_1BA127630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA127678(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1BA127264(0, a3, a4, a5, sub_1B9F0D950);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t static UIButton.Configuration.bezeledButton()()
{
  sub_1BA127894(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A7938();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A7998();
  (*(v5 + 104))(v8, *MEMORY[0x1E69DC560], v4);
  sub_1BA4A7828();
  sub_1BA4A4898();
  v9 = sub_1BA4A4888();
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  sub_1BA4A7928();
  return sub_1BA4A7918();
}

void sub_1BA127894(uint64_t a1)
{
  if (!qword_1EDC5F868)
  {
    sub_1BA4A4888();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F868);
    }
  }
}

uint64_t sub_1BA1278EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A1338();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB970], 0, 0, 0, 0, 1);
  sub_1B9F4DAC8();
  return sub_1BA4A1348();
}

uint64_t static NotificationGenerating.createContactPhotoNotificationAttachment(for:)(void *a1, uint64_t a2)
{
  v66[1] = a2;
  v69 = sub_1BA4A1798();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v3);
  v67 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A3EA8();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v71 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA128470(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v66 - v10;
  v12 = sub_1BA4A15D8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v66 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v66 - v23;
  v25 = sub_1BA4A2F88();
  v74 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  sub_1BA4A2F68();
  sub_1BA4A2F78();
  v30 = *(v13 + 48);
  v76 = v12;
  if (v30(v11, 1, v12) == 1)
  {
    sub_1BA0B17A4(v11);
    v31 = sub_1BA4A2F58();
    sub_1BA12825C();
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x1E69A3380], v31);
    swift_willThrow();
  }

  else
  {
    v66[0] = v25;
    (*(v13 + 32))(v24, v11, v76);
    v33 = [objc_opt_self() defaultManager];
    sub_1BA4A15B8();
    v34 = sub_1BA4A6758();

    v35 = [v33 fileExistsAtPath_];

    if (v35)
    {
      sub_1BA128470(0, &qword_1EDC6B418, sub_1BA1284D4, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B5480;
      v75[0] = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v75[1] = v37;
      sub_1BA4A7D58();
      v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(inited + 96) = sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
      *(inited + 72) = v38;
      v39 = sub_1B9FDB524(inited);
      swift_setDeallocating();
      sub_1BA128538(inited + 32);
      v40 = v67;
      sub_1BA4A1788();
      v41 = sub_1BA4A1748();
      v43 = v42;
      (*(v68 + 8))(v40, v69);
      v44 = sub_1B9F0ADF8(0, &qword_1EBBEC378, 0x1E6983268);
      (*(v13 + 16))(v16, v24, v76);
      v45 = v41;
      v31 = v44;
      v46 = v70;
      v47 = sub_1BA1282B4(v45, v43, v16, v39);
      if (!v46)
      {
        v31 = v47;
        (*(v13 + 8))(v24, v76);
        (*(v74 + 8))(v28, v66[0]);
        return v31;
      }

      (*(v13 + 8))(v24, v76);
      v25 = v66[0];
    }

    else
    {
      v69 = v28;
      v48 = v71;
      sub_1BA4A3E78();
      v49 = *(v13 + 16);
      v70 = v24;
      v50 = v24;
      v51 = v48;
      v49(v20, v50, v76);
      v52 = sub_1BA4A3E88();
      v53 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v75[0] = v68;
        *v54 = 136315650;
        v55 = sub_1BA4A85D8();
        LODWORD(v67) = v53;
        v57 = sub_1B9F0B82C(v55, v56, v75);

        *(v54 + 4) = v57;
        *(v54 + 12) = 2080;
        *(v54 + 14) = sub_1B9F0B82C(0xD00000000000002ELL, 0x80000001BA4EC940, v75);
        *(v54 + 22) = 2080;
        v58 = sub_1BA4A15B8();
        v60 = v59;
        v61 = *(v13 + 8);
        v61(v20, v76);
        v62 = sub_1B9F0B82C(v58, v60, v75);

        *(v54 + 24) = v62;
        _os_log_impl(&dword_1B9F07000, v52, v67, "%s %s [Contact Photo] file may not exist: %s", v54, 0x20u);
        v63 = v68;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v63, -1, -1);
        MEMORY[0x1BFAF43A0](v54, -1, -1);
      }

      else
      {

        v61 = *(v13 + 8);
        v61(v20, v76);
      }

      (*(v72 + 8))(v51, v73);
      v25 = v66[0];
      v31 = sub_1BA4A2F58();
      sub_1BA12825C();
      swift_allocError();
      (*(*(v31 - 8) + 104))(v64, *MEMORY[0x1E69A3378], v31);
      swift_willThrow();
      v61(v70, v76);
      v28 = v69;
    }
  }

  (*(v74 + 8))(v28, v25);
  return v31;
}

unint64_t sub_1BA12825C()
{
  result = qword_1EBBEC370;
  if (!qword_1EBBEC370)
  {
    sub_1BA4A2F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC370);
  }

  return result;
}

id sub_1BA1282B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BA4A6758();

  v7 = sub_1BA4A1548();
  if (a4)
  {
    v8 = sub_1BA4A6618();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v6 URL:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1BA4A15D8();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a3, v11);
  }

  else
  {
    v14 = v17[0];
    sub_1BA4A1488();

    swift_willThrow();
    v15 = sub_1BA4A15D8();
    (*(*(v15 - 8) + 8))(a3, v15);
  }

  return v9;
}

void sub_1BA128470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA1284D4()
{
  if (!qword_1EDC6B480)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6B480);
    }
  }
}

uint64_t sub_1BA128538(uint64_t a1)
{
  sub_1BA1284D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA128594()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC380 = result;
  *algn_1EBBEC388 = v1;
  return result;
}

uint64_t sub_1BA128640()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC390 = result;
  *algn_1EBBEC398 = v1;
  return result;
}

uint64_t sub_1BA1286EC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC3A0 = result;
  *algn_1EBBEC3A8 = v1;
  return result;
}

uint64_t sub_1BA128798()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC3B0 = result;
  *algn_1EBBEC3B8 = v1;
  return result;
}

uint64_t sub_1BA128844()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC3C0 = result;
  *algn_1EBBEC3C8 = v1;
  return result;
}

uint64_t sub_1BA1288F0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC3D0 = result;
  *algn_1EBBEC3D8 = v1;
  return result;
}

uint64_t sub_1BA12899C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC3E0 = result;
  *algn_1EBBEC3E8 = v1;
  return result;
}

uint64_t sub_1BA128A48()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC3F0 = result;
  *algn_1EBBEC3F8 = v1;
  return result;
}

uint64_t sub_1BA128AF4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC400 = result;
  *algn_1EBBEC408 = v1;
  return result;
}

id sub_1BA128BA0()
{
  v24 = sub_1BA4A23F8();
  MEMORY[0x1EEE9AC00](v24, v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 0;
  v16 = v0;
  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationSettingsManager];
  v6 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_lock;
  v22 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore;
  v23 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults;
  v17 = *MEMORY[0x1E69A3D90];
  v21 = (v7 + 104);
  v18 = *MEMORY[0x1E69A3D88];
  v20 = *MEMORY[0x1E69A3D80];
  v19 = (v7 + 8);
  do
  {
    v12 = byte_1F37FC858[v4 + 32];
    v13 = v6;
    sub_1BA4A1BE8();
    v8 = v24;
    v9 = *(v5 + v23);
    (*v21)(v3);
    ++v4;
    v10 = [*(v5 + v22) profileIdentifier];
    sub_1BA4A23E8();

    (*v19)(v3, v8);
    v11 = sub_1BA4A6758();

    [v9 setBool:0 forKey:v11];

    v6 = v13;
    sub_1BA4A1BF8();
    v25 = v12;
    sub_1BA3E7154(0, &v25, 1);
  }

  while (v4 != 3);
  return [v16 dismissViewControllerAnimated:1 completion:0];
}

void sub_1BA128E40()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationStatus + 8))
  {
    sub_1BA4A3DD8();
    v6 = sub_1BA4A3E88();
    v7 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      v10 = sub_1BA4A85D8();
      v12 = sub_1B9F0B82C(v10, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B9F07000, v6, v7, "%s No notification authorization status available! Cannot proceed.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1BFAF43A0](v9, -1, -1);
      MEMORY[0x1BFAF43A0](v8, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  else if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationStatus) == 1)
  {

    sub_1BA129358();
  }

  else
  {
    sub_1BA12988C(1);
    v13 = type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent();
    v14 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_healthStore);
    HIBYTE(v15) = 1;
    *(&v15 + 5) = 769;
    static SummarySharingInviteToReceiveAnalyticsEvent.submitAnalytics(healthStore:location:version:stepDetails:)(v14, &v15 + 7, v13, (&v15 + 5));
  }
}

uint64_t sub_1BA1290D0()
{
  sub_1BA12988C(0);
  v1 = type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent();
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_healthStore);
  v5 = 1;
  v4 = 1025;
  return static SummarySharingInviteToReceiveAnalyticsEvent.submitAnalytics(healthStore:location:version:stepDetails:)(v2, &v5, v1, &v4);
}

double sub_1BA12917C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationCancellable;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationCancellable))
  {

    sub_1BA4A4D48();
  }

  sub_1BA4A1B98();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BA12AC6C(0, &qword_1EBBEC448, &qword_1EBBEC450, 0x1E69832B0, MEMORY[0x1E695C028]);
  sub_1BA12ACE4();
  v3 = sub_1BA4A5148();

  *(v1 + v2) = v3;

  return result;
}

void sub_1BA129298(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v2 authorizationStatus];
    v6 = &v4[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationStatus];
    *v6 = v5;
    v6[8] = 0;
  }
}

void sub_1BA129358()
{
  if (qword_1EBBE83B0 != -1)
  {
    swift_once();
  }

  if (qword_1EBBE83B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1BA4A6758();
  v2 = sub_1BA4A6758();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  if (qword_1EBBE83C0 != -1)
  {
    swift_once();
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_1BA4A6758();
  v17 = sub_1BA12ABAC;
  v18 = v4;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BA0B06D4;
  v16 = &block_descriptor_28;
  v6 = _Block_copy(&v13);

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:1 handler:v6];
  _Block_release(v6);

  if (qword_1EBBE83C8 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v10 = sub_1BA4A6758();
  v17 = sub_1BA12ABB4;
  v18 = v9;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BA0B06D4;
  v16 = &block_descriptor_25;
  v11 = _Block_copy(&v13);

  v12 = [v7 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v3 addAction_];
  [v3 addAction_];
  [v3 setPreferredAction_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

void sub_1BA129718(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BA12A944(0);
  }
}

uint64_t sub_1BA129770(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A2A48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1BA12A944(1);
  }

  (*(v3 + 104))(v6, *MEMORY[0x1E69A31A0], v2);
  sub_1BA4A2A38();
  return (*(v3 + 8))(v6, v2);
}

void sub_1BA12988C(int a1)
{
  v2 = v1;
  v44 = a1;
  v43 = sub_1BA4A23F8();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v4);
  v42 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A33C8();
  v31 = *(v6 - 8);
  v32 = v6;
  *&v8 = MEMORY[0x1EEE9AC00](v6, v7).n128_u64[0];
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 buttonTray];
  [v10 showButtonsBusy];

  v11 = 0;
  v34 = v2;
  v12 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationSettingsManager];
  v13 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_lock;
  v40 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore;
  v41 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults;
  v35 = *MEMORY[0x1E69A3D90];
  v39 = (v3 + 104);
  v36 = *MEMORY[0x1E69A3D88];
  v38 = *MEMORY[0x1E69A3D80];
  v37 = (v3 + 8);
  do
  {
    v20 = byte_1F37FC8A8[v11 + 32];
    v21 = v13;
    sub_1BA4A1BE8();
    v14 = v42;
    v15 = *(v12 + v41);
    v16 = v43;
    (*v39)(v42);
    ++v11;
    v17 = [*(v12 + v40) profileIdentifier];
    sub_1BA4A23E8();

    (*v37)(v14, v16);
    v18 = sub_1BA4A6758();

    v19 = v44;
    [v15 setBool:v44 & 1 forKey:v18];

    v13 = v21;
    sub_1BA4A1BF8();
    v45 = v20;
    sub_1BA3E7154(v19 & 1, &v45, 1);
  }

  while (v11 != 3);
  v23 = v33;
  v22 = v34;
  (*(v31 + 16))(v33, &v34[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_profileInformation], v32);
  v24 = *&v22[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_selectedContactPhotoPublisher];
  v25 = *&v22[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_healthStore];
  v26 = objc_allocWithZone(type metadata accessor for SummarySharingInvitationAcceptedViewController());

  v27 = v25;
  v28 = sub_1BA2BF670(v23, v24, v27);

  [v22 showViewController:v28 sender:0];
  v29 = [v22 buttonTray];
  [v29 showButtonsAvailable];
}

id sub_1BA129CA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingInvitationEnableUpdatesViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SummarySharingInvitationEnableUpdatesViewController(uint64_t a1)
{
  result = qword_1EBBEC428;
  if (!qword_1EBBEC428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA129E00(uint64_t a1)
{
  result = sub_1BA4A33C8();
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

uint64_t sub_1BA129EC8()
{
  sub_1BA4A33C8();
  v0 = sub_1BA4A2AF8();
  v2 = v1;
  if ((sub_1BA4A33B8() & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    if (qword_1EBBE8388 != -1)
    {
      swift_once();
    }

    sub_1BA12A8D4(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5480;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B9F1BE20();
    *(v4 + 32) = v0;
    *(v4 + 40) = v2;
    v5 = sub_1BA4A6768();
  }

  else
  {
LABEL_8:

    if (qword_1EBBE8390 != -1)
    {
      swift_once();
    }

    v5 = qword_1EBBEC390;
  }

  return v5;
}

char *sub_1BA12A050(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v65 = a3;
  v66 = a2;
  sub_1BA12A8D4(0, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  v61 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v60 - v11;
  v13 = sub_1BA4A1798();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v4[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationStatus];
  *v18 = 0;
  v18[8] = 1;
  v19 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_healthAppNotificationManager;
  sub_1BA4A1BC8();
  *&v4[v19] = sub_1BA4A1BB8();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationAuthorizationCancellable] = 0;
  v20 = [objc_allocWithZone(MEMORY[0x1E696C4F0]) initWithHealthStore_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_sharingEntryStore] = v20;
  v21 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_profileInformation;
  v22 = sub_1BA4A33C8();
  v63 = *(v22 - 8);
  v64 = v22;
  v23 = *(v63 + 16);
  v60 = a1;
  v23(&v5[v21], a1);
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_healthStore] = a4;
  v24 = objc_allocWithZone(MEMORY[0x1E696C1C0]);
  v25 = a4;
  v26 = [v24 init];
  v27 = objc_opt_self();
  sub_1BA4A3358();
  v28 = sub_1BA4A1758();
  (*(v14 + 8))(v17, v13);
  v29 = [v27 _profileWithUUID_type_];

  [v26 setProfileIdentifier_];
  [v26 resume];
  v30 = objc_opt_self();
  v31 = v26;
  v62 = v30;
  v32 = [v30 defaultCenter];
  sub_1B9F0ADF8(0, &qword_1EDC6B610, 0x1E695E000);
  v33 = sub_1BA4A70E8();
  v34 = type metadata accessor for SharedProfileNotificationSettingsManager(0);
  v35 = objc_allocWithZone(v34);
  v36 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_lock;
  sub_1BA4A1C18();
  swift_allocObject();
  *&v35[v36] = sub_1BA4A1C08();
  v37 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager__currentValues;
  v69 = sub_1B9FDB444(MEMORY[0x1E69E7CC0]);
  sub_1BA078F34(0);
  sub_1BA4A4EE8();
  (*(v9 + 32))(&v35[v37], v12, v61);
  *&v35[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore] = v31;
  v38 = *MEMORY[0x1E696C890];
  v39 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v40 = v31;
  v41 = [v39 initWithCategory:1 domainName:v38 healthStore:v40];
  *&v35[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_legacyKeyValueDomain] = v41;
  *&v35[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_notificationCenter] = v32;
  v42 = v60;
  *&v35[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults] = v33;
  v68.receiver = v35;
  v68.super_class = v34;
  v43 = objc_msgSendSuper2(&v68, sel_init);

  *&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_notificationSettingsManager] = v43;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_selectedContactPhotoPublisher] = v66;

  sub_1BA129EC8();
  v44 = sub_1BA4A6758();

  v45 = sub_1BA4A3348();
  v47 = v46;
  if (qword_1EBBE8398 != -1)
  {
    swift_once();
  }

  sub_1BA12A8D4(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1BA4B5480;
  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = sub_1B9F1BE20();
  *(v48 + 32) = v45;
  *(v48 + 40) = v47;
  sub_1BA4A6768();

  v49 = sub_1BA4A6758();

  v50 = type metadata accessor for SummarySharingInvitationEnableUpdatesViewController(0);
  v67.receiver = v5;
  v67.super_class = v50;
  v51 = objc_msgSendSuper2(&v67, sel_initWithTitle_detailText_icon_contentLayout_, v44, v49, 0, 3);

  v69 = *&v51[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingInvitationEnableUpdatesViewController_selectedContactPhotoPublisher];
  *(swift_allocObject() + 16) = v51;
  sub_1BA12AC6C(0, &qword_1EBBEC120, &qword_1EDC6E370, 0x1E69DCAB8, MEMORY[0x1E695BED0]);
  sub_1BA11085C();
  v52 = v51;

  sub_1BA4A4F88();

  v53 = [v62 defaultCenter];
  [v53 addObserver:v52 selector:sel_fetchNotificationAuthorizationStatus name:*MEMORY[0x1E69DDBC0] object:0];

  if (qword_1EBBE83A0 != -1)
  {
    swift_once();
  }

  v54 = sub_1BA4A6758();
  v55 = sub_1BA4A6758();

  if (qword_1EBBE83A8 != -1)
  {
    swift_once();
  }

  v56 = sub_1BA4A6758();
  v57 = sub_1BA4A6758();

  v58 = [v52 navigationItem];
  [v58 setHidesBackButton_];

  __swift_destroy_boxed_opaque_existential_1(v65);
  (*(v63 + 8))(v42, v64);
  return v52;
}

void sub_1BA12A8D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA12A944(char a1)
{
  sub_1BA4A2F48();
  sub_1BA4A2F38();
  sub_1BA12ABBC();
  sub_1BA4A2CB8();
  if (sub_1BA4A2F28())
  {

    v13 = MEMORY[0x1E69E6158];
    v10 = 0x20676E6972616853;
    v11 = 0xEF73657461647055;
    sub_1BA4A2CC8();
    sub_1B9F23224(&v10);
  }

  sub_1BA4A2CE8();
  v1 = sub_1BA4A6758();
  v2 = sub_1BA4A6758();
  v3 = sub_1BA4A6758();
  v4 = sub_1BA4A6758();

  v5 = sub_1BA4A6758();

  v6 = sub_1BA4A6758();

  v10 = v1;
  v11 = v3;
  v12 = v4;
  v13 = v2;
  v14 = v5;
  v15 = v6;
  v7 = sub_1BA4A29B8();
  v8 = sub_1BA4A29A8();
  v9[3] = v7;
  v9[4] = MEMORY[0x1E69A3198];
  v9[0] = v8;
  sub_1BA12AC10();
  sub_1BA4A2B58();
  __swift_destroy_boxed_opaque_existential_1(v9);
}

unint64_t sub_1BA12ABBC()
{
  result = qword_1EBBEC438;
  if (!qword_1EBBEC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC438);
  }

  return result;
}

unint64_t sub_1BA12AC10()
{
  result = qword_1EBBEC440;
  if (!qword_1EBBEC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC440);
  }

  return result;
}

void sub_1BA12AC6C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v8 = sub_1B9F0ADF8(255, a3, a4);
    v9 = a5(a1, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA12ACE4()
{
  result = qword_1EBBEC458[0];
  if (!qword_1EBBEC458[0])
  {
    sub_1BA12AC6C(255, &qword_1EBBEC448, &qword_1EBBEC450, 0x1E69832B0, MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBBEC458);
  }

  return result;
}

uint64_t AdditionalItemsDataSource.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA12AE08(uint64_t a1)
{
  sub_1BA4A8488();
  AdditionalItemsDataSource.Mode.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t AdditionalItemsDataSource.identifier.getter()
{
  v0 = sub_1B9F25DF0();

  return v0;
}

uint64_t AdditionalItemsDataSource.wrappedDataSource.getter()
{
  sub_1B9F264D0();

  return swift_unknownObjectRetain();
}

uint64_t *AdditionalItemsDataSource.__allocating_init(_:additionalItems:mode:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v4 = sub_1BA12B940(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t *AdditionalItemsDataSource.init(_:additionalItems:mode:)(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = sub_1BA12B890(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

double sub_1BA12AF0C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1BA4A1798();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v8 = v7;
  v59 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v54 - v15;
  v17 = *(v3 + 88);
  v18 = *(v17 + 16);
  v19 = *(v3 + 80);
  v58 = a1;
  v20 = v1;
  v18(v19, v17, v14);
  if ((v1[7] & 1) == 0)
  {
    (v18)(v19, v17);
    v21 = sub_1BA4A4538();
    v22 = *(v59 + 8);
    v54 = v8;
    v22(v16, v8);
    if (v21[2])
    {
      v23 = v20;
      v25 = v21[4];
      v24 = v21[5];

      v26 = v23[5];
      v27 = *(v26 + 16);
      if (v27)
      {
        v63 = MEMORY[0x1E69E7CC0];
        sub_1B9F1C360(0, v27, 0);
        v28 = v63;
        v29 = v26 + 32;
        do
        {
          sub_1B9F0A534(v29, &v60);
          __swift_project_boxed_opaque_existential_1(&v60, v62);
          v30 = sub_1BA4A2D58();
          v32 = v31;
          __swift_destroy_boxed_opaque_existential_1(&v60);
          v63 = v28;
          v34 = *(v28 + 16);
          v33 = *(v28 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_1B9F1C360((v33 > 1), v34 + 1, 1);
            v28 = v63;
          }

          *(v28 + 16) = v34 + 1;
          v35 = v28 + 16 * v34;
          *(v35 + 32) = v30;
          *(v35 + 40) = v32;
          v29 += 40;
          --v27;
        }

        while (v27);
      }

      v60 = v25;
      v61 = v24;
      sub_1BA4A4478();

      goto LABEL_18;
    }

    v8 = v54;
  }

  (v18)(v19, v17);
  v36 = sub_1BA4A4578();
  (*(v59 + 8))(v11, v8);
  v37 = *(v36 + 16);

  if (!v37)
  {
    sub_1B9F25350();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1BA4B5480;
    v39 = v55;
    sub_1BA4A1788();
    v40 = sub_1BA4A1748();
    v42 = v41;
    (*(v56 + 8))(v39, v57);
    *(v38 + 32) = v40;
    *(v38 + 40) = v42;
    sub_1BA4A44C8();
  }

  v43 = v20[5];
  v44 = *(v43 + 16);
  if (v44)
  {
    v63 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v44, 0);
    v45 = v63;
    v46 = v43 + 32;
    do
    {
      sub_1B9F0A534(v46, &v60);
      __swift_project_boxed_opaque_existential_1(&v60, v62);
      v47 = sub_1BA4A2D58();
      v49 = v48;
      __swift_destroy_boxed_opaque_existential_1(&v60);
      v63 = v45;
      v51 = *(v45 + 16);
      v50 = *(v45 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1B9F1C360((v50 > 1), v51 + 1, 1);
        v45 = v63;
      }

      *(v45 + 16) = v51 + 1;
      v52 = v45 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v49;
      v46 += 40;
      --v44;
    }

    while (v44);
  }

  v60 = 0;
  v61 = 0;
  sub_1BA4A4448();
LABEL_18:

  return result;
}

uint64_t sub_1BA12B3D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = *v3;
  v6 = v3[6];
  if (!*(v6 + 16))
  {
    return (*(*(v5 + 88) + 24))(result, a2, *(v5 + 80));
  }

  v7 = result;
  v8 = a2;
  v10 = sub_1B9F24A34(result, a2);
  result = v7;
  v12 = v11;
  a2 = v8;
  if ((v12 & 1) == 0)
  {
    return (*(*(v5 + 88) + 24))(result, a2, *(v5 + 80));
  }

  v13 = *(*(v6 + 56) + 8 * v10);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v4[5];
  if (v13 >= *(v14 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return sub_1B9F0A534(v14 + 40 * v13 + 32, a3);
}

void *AdditionalItemsDataSource.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t AdditionalItemsDataSource.__deallocating_deinit()
{
  AdditionalItemsDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t AdditionalItemsDataSource<>.supplementaryItem(ofKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v10 = *(*v4 + 80);
  swift_unknownObjectRetain();
  v9(a1, a2, a3, v10, a4);
  return swift_unknownObjectRelease();
}

uint64_t AdditionalItemsDataSource<>.layout(for:)(__int128 *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *a1;
  v5 = *(a1 + 2);
  v9 = v2[4];
  v7 = v4;
  v8 = v5;
  return (*(a2 + 8))(&v7, *(v3 + 80), a2);
}

uint64_t AdditionalItemsDataSource<>.registerCells(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, a2);
  return swift_unknownObjectRelease();
}

uint64_t *sub_1BA12B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = v4;
  type metadata accessor for AdditionalItemsDataSource(0, a2, a3, a4);
  v11 = v5;
  swift_unknownObjectRetain();

  v9 = sub_1BA12B940(v6, a1, &v11, v8);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t *sub_1BA12B890(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *v3;
  v5 = *a3;
  v3[4] = a1;
  v3[5] = a2;
  swift_unknownObjectRetain();

  v7 = Array<A>.identifierToIndexDict()(v6);

  v3[6] = v7;
  *(v3 + 56) = v5;
  v3[2] = (*(*(v4 + 88) + 8))(*(v4 + 80));
  v3[3] = v8;
  return v3;
}

uint64_t *sub_1BA12B940(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  type metadata accessor for AdditionalItemsDataSource(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_1BA12B890(a1, a2, a3);
}

uint64_t FeatureStatusActionHandlerUserData.featureStatusKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind;
  v4 = sub_1BA4A2A88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeatureStatusActionHandlerUserData.__allocating_init(featureStatusKind:actionURL:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind;
  v6 = sub_1BA4A2A88();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  sub_1BA12BCA4(a2, v4 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_actionURL);
  return v4;
}

uint64_t FeatureStatusActionHandlerUserData.init(featureStatusKind:actionURL:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind;
  v6 = sub_1BA4A2A88();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  sub_1BA12BCA4(a2, v2 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_actionURL);
  return v2;
}

uint64_t sub_1BA12BCA4(uint64_t a1, uint64_t a2)
{
  sub_1BA12D6EC(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA12BD24()
{
  if (*v0)
  {
    return 0x52556E6F69746361;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_1BA12BD68(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001BA4ECD60 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x52556E6F69746361 && a2 == 0xE90000000000004CLL)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1BA4A8338();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1BA12BE58(uint64_t a1)
{
  v2 = sub_1BA12C238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA12BE94(uint64_t a1)
{
  v2 = sub_1BA12C238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureStatusActionHandlerUserData.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind;
  v2 = sub_1BA4A2A88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BA12D7AC(v0 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_actionURL, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  return v0;
}

uint64_t FeatureStatusActionHandlerUserData.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind;
  v2 = sub_1BA4A2A88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BA12D7AC(v0 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_actionURL, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA12C024(void *a1)
{
  sub_1BA12C6C4(0, &qword_1EBBEC4E0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA12C238();
  sub_1BA4A8548();
  v10[15] = 0;
  sub_1BA4A2A88();
  sub_1BA12D808(&qword_1EBBEC4F0, MEMORY[0x1E69A31E0], MEMORY[0x1E69A31E8]);
  sub_1BA4A8288();
  if (!v1)
  {
    v10[14] = 1;
    sub_1BA4A15D8();
    sub_1BA12D808(&qword_1EBBEC4F8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1BA4A8238();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1BA12C238()
{
  result = qword_1EBBEC4E8;
  if (!qword_1EBBEC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC4E8);
  }

  return result;
}

uint64_t FeatureStatusActionHandlerUserData.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FeatureStatusActionHandlerUserData.init(from:)(a1);
  return v2;
}

uint64_t FeatureStatusActionHandlerUserData.init(from:)(void *a1)
{
  sub_1BA12D6EC(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v20 - v5;
  v7 = sub_1BA4A2A88();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA12C6C4(0, &qword_1EBBEC500, MEMORY[0x1E69E6F48]);
  v24 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA12C238();
  sub_1BA4A8528();
  if (v1)
  {
    v16 = v25;
    type metadata accessor for FeatureStatusActionHandlerUserData(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v12;
    v17 = v22;
    v27 = 0;
    sub_1BA12D808(&qword_1EBBEC508, MEMORY[0x1E69A31E0], MEMORY[0x1E69A3200]);
    sub_1BA4A81C8();
    v18 = *(v17 + 32);
    v16 = v25;
    v20 = OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind;
    v18(v25 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind, v10, v23);
    sub_1BA4A15D8();
    v26 = 1;
    sub_1BA12D808(&qword_1EBBEC510, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1BA4A8178();
    (*(v21 + 8))(v15, v24);
    sub_1BA12BCA4(v6, v16 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_actionURL);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

void sub_1BA12C6C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA12C238();
    v7 = a3(a1, &type metadata for FeatureStatusActionHandlerUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for FeatureStatusActionHandlerUserData(uint64_t a1)
{
  result = qword_1EBBEC528;
  if (!qword_1EBBEC528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA12C774@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BA12C814()
{
  v0 = *MEMORY[0x1E696B7E0];
  v1 = *MEMORY[0x1E696B7E0];
  return v0;
}

uint64_t HealthChecklistFeatureStatusFeedItemProvider.onboardingPromotionAvailabilityContext.getter()
{
  v0 = *MEMORY[0x1E696B7E0];
  v1 = *MEMORY[0x1E696B7E0];
  return v0;
}

uint64_t HealthChecklistFeatureStatusFeedItemProvider.makeUpgradeConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BA4A30B8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t HealthChecklistFeatureStatusFeedItemProvider.makeActionHandlerUserData(for:featureStatus:)(uint64_t a1)
{
  v2 = sub_1BA4A2A88();
  v110 = *(v2 - 8);
  v111 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v108 = v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A15D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v96 = v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1BA4A1268();
  v95 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v9);
  v116 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1BA4A1248();
  v94 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v11);
  v114 = v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F427F8(0);
  v93[1] = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1BA4A1278();
  v104 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v17);
  v93[0] = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v103 = v93 - v21;
  v100 = sub_1BA4A11D8();
  v22 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v23);
  v99 = v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1BA4A11E8();
  v25 = *(v98 - 1);
  MEMORY[0x1EEE9AC00](v98, v26);
  v97 = v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BA4A1208();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  sub_1BA12D6EC(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v105 = v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v113 = v93 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v106 = v93 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = v93 - v41;
  sub_1BA12D6EC(0, &unk_1EDC6E290, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v112 = (v93 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = v93 - v48;
  v107 = a1;
  sub_1BA4A3038();
  v109 = v6;
  v50 = *(v6 + 56);
  v119 = v5;
  v51 = v5;
  v52 = v49;
  v102 = v6 + 56;
  v101 = v50;
  v50(v42, 1, 1, v51);
  (*(v25 + 104))(v97, *MEMORY[0x1E6968750], v98);
  (*(v22 + 104))(v99, *MEMORY[0x1E6968728], v100);
  sub_1BA4A11F8();
  sub_1BA4A12A8();
  v53 = 0;
  v54 = sub_1BA4A12C8();
  v55 = *(v54 - 8);
  (*(v55 + 56))(v49, 0, 1, v54);
  v56 = v112;
  sub_1BA12D740(v49, v112, &unk_1EDC6E290, MEMORY[0x1E6968848]);
  v57 = (*(v55 + 48))(v56, 1, v54);
  v58 = v118;
  v60 = v110;
  v59 = v111;
  if (v57 == 1)
  {
    sub_1BA12D7AC(v56, &unk_1EDC6E290, MEMORY[0x1E6968848]);
    v61 = v106;
    v101(v106, 1, 1, v119);
    v62 = v105;
  }

  else
  {
    v97 = v52;
    v63 = v103;
    sub_1BA4A1288();
    (*(v55 + 8))(v56, v54);
    (*(v104 + 16))(v93[0], v63, v58);
    v64 = MEMORY[0x1E69687C8];
    sub_1BA12D808(&qword_1EDC6AED0, MEMORY[0x1E69687C8], MEMORY[0x1E69687D8]);
    sub_1BA4A69F8();
    sub_1BA12D808(&qword_1EDC6AEC8, v64, MEMORY[0x1E69687E0]);
    v65 = (v95 + 8);
    v112 = (v94 + 16);
    v66 = (v94 + 8);
    v67 = (v109 + 48);
    v99 = MEMORY[0x1E69E7CC0];
    v98 = (v109 + 32);
LABEL_4:
    v100 = v53;
    while (1)
    {
      v68 = v116;
      v69 = v118;
      sub_1BA4A6E38();
      sub_1BA12D808(&qword_1EDC6AED8, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
      v70 = v117;
      v71 = sub_1BA4A6728();
      (*v65)(v68, v70);
      if (v71)
      {
        break;
      }

      v72 = sub_1BA4A6E88();
      v74 = v114;
      v73 = v115;
      (*v112)(v114);
      v72(v120, 0);
      sub_1BA4A6E48();
      sub_1BA12D850();
      v75 = v113;
      sub_1BA4A1258();
      (*v66)(v74, v73);
      if ((*v67)(v75, 1, v119) != 1)
      {
        v76 = v75;
        v77 = *v98;
        (*v98)(v96, v76, v119);
        v78 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_1BA27FFA4(0, *(v78 + 2) + 1, 1, v78);
        }

        v53 = v100;
        v80 = *(v78 + 2);
        v79 = *(v78 + 3);
        v81 = v80 + 1;
        if (v80 >= v79 >> 1)
        {
          v100 = v80 + 1;
          v83 = sub_1BA27FFA4((v79 > 1), v80 + 1, 1, v78);
          v81 = v100;
          v78 = v83;
        }

        *(v78 + 2) = v81;
        v82 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v99 = v78;
        v77(&v78[v82 + *(v109 + 72) * v80], v96, v119);
        goto LABEL_4;
      }

      sub_1BA12D7AC(v75, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
    }

    sub_1BA12E418(v16);
    (*(v104 + 8))(v103, v69);
    if (*(v99 + 2))
    {
      v61 = v106;
      v84 = v119;
      (*(v109 + 16))(v106, &v99[(*(v109 + 80) + 32) & ~*(v109 + 80)], v119);

      v85 = v61;
      v86 = 0;
      v87 = v84;
    }

    else
    {

      v61 = v106;
      v85 = v106;
      v86 = 1;
      v87 = v119;
    }

    v101(v85, v86, 1, v87);
    v60 = v110;
    v59 = v111;
    v52 = v97;
    v62 = v105;
    v53 = v100;
  }

  v88 = v108;
  sub_1BA4A3018();
  sub_1BA12D740(v61, v62, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  type metadata accessor for FeatureStatusActionHandlerUserData(0);
  v89 = swift_allocObject();
  (*(v60 + 32))(v89 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_featureStatusKind, v88, v59);
  sub_1BA12BCA4(v62, v89 + OBJC_IVAR____TtC18HealthExperienceUI34FeatureStatusActionHandlerUserData_actionURL);
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  v120[0] = v89;
  sub_1BA12D808(&qword_1EBBEC518, type metadata accessor for FeatureStatusActionHandlerUserData, &protocol conformance descriptor for FeatureStatusActionHandlerUserData);
  v90 = sub_1BA4A0EC8();
  if (v53)
  {

    v91 = 0;
  }

  else
  {
    v91 = v90;
  }

  sub_1BA12D7AC(v61, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  sub_1BA12D7AC(v52, &unk_1EDC6E290, MEMORY[0x1E6968848]);

  return v91;
}

void sub_1BA12D6EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA12D740(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA12D6EC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA12D7AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA12D6EC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA12D808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BA12D850()
{
  result = qword_1EBBEC520;
  if (!qword_1EBBEC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC520);
  }

  return result;
}

uint64_t HealthChecklistFeatureStatusFeedItemProvider.makeConfiguration(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v74 = a2;
  v75 = a4;
  v5 = sub_1BA4A3EA8();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v71 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3908();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v65 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1BA4A38B8();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v11);
  v63 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A38E8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A3938();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v62 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v61 - v24;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v61 - v29;
  v31 = a1;
  v32 = a1;
  v33 = *(v19 + 16);
  v33(&v61 - v29, v32, v18, v28);
  v34 = (*(v19 + 88))(v30, v18);
  if (v34 == *MEMORY[0x1E69A3888])
  {
    (*(v19 + 96))(v30, v18);
    (*(v14 + 32))(v17, v30, v13);
    sub_1BA12DF48(v17, v31, v74, v72, v75);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    v36 = v72;
    v37 = v31;
    if (v34 == *MEMORY[0x1E69A3880])
    {
      (*(v19 + 96))(v30, v18);
      v39 = v63;
      v38 = v64;
      v40 = v66;
      (*(v64 + 32))(v63, v30, v66);
      v41 = v65;
      sub_1BA4A38A8();
      sub_1BA12E2B4(v37, v74, v36, v75);
      (*(v67 + 8))(v41, v68);
      return (*(v38 + 8))(v39, v40);
    }

    else
    {
      v42 = v71;
      _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
      v43 = v25;
      (v33)(v25, v37, v18);
      v44 = sub_1BA4A3E88();
      v45 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        LODWORD(v72) = v45;
        v47 = v43;
        v48 = v46;
        v73 = swift_slowAlloc();
        v76 = v73;
        *v48 = 136446466;
        v49 = sub_1BA4A85D8();
        v51 = sub_1B9F0B82C(v49, v50, &v76);

        *(v48 + 4) = v51;
        *(v48 + 12) = 2080;
        (v33)(v62, v47, v18);
        v52 = sub_1BA4A6808();
        v54 = v53;
        v55 = v47;
        v56 = *(v19 + 8);
        v56(v55, v18);
        v57 = sub_1B9F0B82C(v52, v54, &v76);

        *(v48 + 14) = v57;
        _os_log_impl(&dword_1B9F07000, v44, v72, "[%{public}s] Unknown feature status received: %s", v48, 0x16u);
        v58 = v73;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v58, -1, -1);
        MEMORY[0x1BFAF43A0](v48, -1, -1);

        (*(v69 + 8))(v71, v70);
      }

      else
      {

        v56 = *(v19 + 8);
        v56(v43, v18);
        (*(v69 + 8))(v42, v70);
      }

      v59 = v75;
      v60 = sub_1BA4A30B8();
      (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
      return (v56)(v30, v18);
    }
  }
}

void sub_1BA12DF48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a2;
  v10 = sub_1BA4A3908();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 + 32);
  v39 = v5;
  v17 = v16(a3, a4, v13);
  v38 = a1;
  if (v17)
  {
    v18 = v17;
    sub_1BA4A38A8();
    v19 = sub_1BA4A3918();
    (*(v11 + 8))(v15, v10);
    v20 = [v19 areAllRequirementsSatisfied];

    if (v20)
    {
      (*(a4 + 48))(a3, a4);

      return;
    }
  }

  v36 = a5;
  sub_1BA4A38A8();
  v34 = *(a4 + 16);
  v21 = v34(a3, a4);
  v22 = sub_1BA4A3918();

  v23 = *(v11 + 8);
  v35 = v10;
  v24 = v10;
  v25 = v23;
  v23(v15, v24);
  LODWORD(v21) = [v22 areAllRequirementsSatisfied];

  if (v21)
  {
    (*(a4 + 40))(v37, a3, a4);
    return;
  }

  v26 = (*(a4 + 24))(a3, a4);
  v27 = v25;
  v28 = v35;
  if (v26)
  {
    v29 = v26;
    sub_1BA4A38A8();
    v30 = sub_1BA4A3918();
    v27(v15, v28);
    v31 = [v30 areAllRequirementsSatisfied];

    if (v31)
    {
      (*(a4 + 56))(1, v37, a3, a4);

      return;
    }
  }

  sub_1BA4A38A8();
  v32 = v34(a3, a4);
  v33 = sub_1BA4A3918();

  v27(v15, v28);
  (*(a4 + 64))(1, v33, a3, a4);
}

void sub_1BA12E2B4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = (*(a3 + 24))(a2, a3);
  if (v8)
  {
    v9 = v8;
    v13 = sub_1BA4A3918();
    v10 = [v13 areAllRequirementsSatisfied];
    if (v10)
    {
      (*(a3 + 56))(0, a1, a2, a3);
    }

    else
    {
      (*(a3 + 64))(v10, v13, a2, a3);
    }
  }

  else
  {
    v11 = sub_1BA4A30B8();
    v12 = *(*(v11 - 8) + 56);

    v12(a4, 1, 1, v11);
  }
}

uint64_t sub_1BA12E418(uint64_t a1)
{
  sub_1B9F427F8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA12E47C(uint64_t a1)
{
  sub_1BA4A2A88();
  if (v1 <= 0x3F)
  {
    sub_1BA12D6EC(319, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1BA12E690()
{
  result = qword_1EBBEC538;
  if (!qword_1EBBEC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC538);
  }

  return result;
}

unint64_t sub_1BA12E6E8()
{
  result = qword_1EBBEC540;
  if (!qword_1EBBEC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC540);
  }

  return result;
}

unint64_t sub_1BA12E740()
{
  result = qword_1EBBEC548;
  if (!qword_1EBBEC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC548);
  }

  return result;
}

uint64_t UserInterface.reuseIdentifierComponent.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    type metadata accessor for ContentConfigurationHostCell();
    v3 = &qword_1EDC646E8;
    v4 = type metadata accessor for ContentConfigurationHostCell;
    goto LABEL_6;
  }

  if (a3 == 4)
  {
    type metadata accessor for ListContentConfigurationHostCell();
    v3 = &qword_1EDC62898;
    v4 = type metadata accessor for ListContentConfigurationHostCell;
  }

  else
  {
LABEL_5:
    type metadata accessor for ChromeHostViewCell(0);
    v3 = qword_1EDC6D7F8;
    v4 = type metadata accessor for ChromeHostViewCell;
  }

LABEL_6:
  sub_1BA12E858(0, v3, v4);
  return sub_1BA4A6808();
}

uint64_t sub_1BA12E858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t MostRecentSamplesQueryError.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

void sub_1BA12E930()
{
  sub_1BA130AB0(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130CC4(0);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130E08(0);
  v32 = v11;
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v28 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130FF8(0);
  v33 = v14;
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v29 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult))
  {
    v35 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult);
    v34 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult);
    sub_1BA130B98(0);
    sub_1BA130C48(0);
    v17 = MEMORY[0x1E695C038];
    sub_1BA13C020(&qword_1EDC5F3F8, sub_1BA130B98, MEMORY[0x1E695C038]);
    sub_1BA13C020(&unk_1EDC5F3C0, sub_1BA130C48, v17);
    sub_1BA4A4FF8();
    sub_1BA130D70(0);
    v18 = MEMORY[0x1E695BD68];
    sub_1BA13C020(&qword_1EDC5F5E8, sub_1BA130AB0, MEMORY[0x1E695BD68]);
    sub_1BA4A4FE8();
    (*(v3 + 8))(v6, v2);
    v19 = MEMORY[0x1E695BD60];
    sub_1BA13C020(&qword_1EDC5F638, sub_1BA130CC4, MEMORY[0x1E695BD60]);
    v20 = v27;
    v21 = sub_1BA4A4F98();
    (*(v26 + 8))(v10, v20);
    v34 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI47ElectrocardiogramDataTypeMostRecentSamplesQuery_activeAlgorithmVersionResult);
    v35 = v21;
    sub_1BA132AB4(0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA130F00(0);
    sub_1BA130FA8(&unk_1EDC5F4D0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA13C020(&qword_1EDC5F3D8, sub_1BA130F00, v17);
    v22 = v28;
    sub_1BA4A4FF8();

    sub_1BA1310A4(0);
    sub_1BA13C020(&qword_1EDC5F600, sub_1BA130E08, v18);
    v23 = v29;
    v24 = v32;
    sub_1BA4A4FE8();
    (*(v30 + 8))(v22, v24);
    sub_1BA13C020(&qword_1EDC5F648, sub_1BA130FF8, v19);
    v25 = v33;
    sub_1BA4A4F98();
    (*(v31 + 8))(v23, v25);
  }

  else
  {
    __break(1u);
  }
}

double sub_1BA12EEA8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 24) = v2;

  return result;
}

void *ElectrocardiogramDataTypeMostRecentSamplesQuery.init(sampleType:healthStore:unitController:sampleQueryLimit:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v40 = a3;
  v9 = *v4;
  v38 = a4;
  v39 = v9;
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  v11 = *(Limit - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Limit - 8, v13);
  v14 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v34 - v17;
  *(swift_allocObject() + 16) = a2;
  sub_1BA130F00(0);
  swift_allocObject();
  v19 = a2;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47ElectrocardiogramDataTypeMostRecentSamplesQuery_activeAlgorithmVersionResult) = sub_1BA4A4EA8();
  sub_1BA13B644(a4, v18, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_cancellables;
  sub_1BA4A2AA8();
  swift_allocObject();
  *(v4 + v20) = sub_1BA4A2A98();
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery____lazy_storage___allowedMetadataKeys) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_healthStore) = v19;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleType) = a1;
  v41 = v18;
  v37 = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit;
  sub_1BA13B644(v18, v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  sub_1BA13B644(v18, v14, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v36 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1BA132190(v14, v23 + v21);
  *(v23 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  *(v23 + v22) = v19;
  sub_1BA130C48(0);
  swift_allocObject();
  v24 = v19;
  v25 = a1;
  v35 = v24;
  v34 = v25;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult) = sub_1BA4A4EA8();
  v26 = v37;
  sub_1BA13B644(v41, v14, v37);
  v27 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_1BA132190(v14, v29 + v21);
  v30 = v35;
  *(v29 + v36) = v34;
  *(v29 + v22) = v30;
  v31 = v39;
  *(v29 + v27) = v40;
  *(v29 + v28) = v5;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;
  sub_1BA130B98(0);
  swift_allocObject();

  v32 = sub_1BA4A4EA8();
  sub_1BA13B6AC(v38, v26);
  sub_1BA13B6AC(v41, v26);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult) = v32;

  return v5;
}

void sub_1BA12F2A4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v34 = 0;
  v12 = [v11 versionWithHealthStore:a3 error:&v34];
  v13 = v12;
  v14 = v34;
  if (v34)
  {
    v15 = v34;

    swift_willThrow();
    sub_1BA4A3D88();
    v16 = v15;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v32 = a1;
      v20 = v19;
      v21 = swift_slowAlloc();
      v31[1] = a2;
      v22 = v21;
      v34 = v21;
      *v20 = 136446210;
      v33[0] = v16;
      sub_1B9F0D9AC(0, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
      v23 = v16;
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v34);
      v31[0] = v6;
      v27 = v26;

      *(v20 + 4) = v27;
      _os_log_impl(&dword_1B9F07000, v17, v18, "Error fetching active ECG version %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      v28 = v20;
      a1 = v32;
      MEMORY[0x1BFAF43A0](v28, -1, -1);

      (*(v7 + 8))(v10, v31[0]);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    v34 = v14;
    v35 = 256;
    v30 = v16;
    a1(&v34);
  }

  else
  {
    if (v12)
    {
      v29 = [v12 integerValue];
    }

    else
    {
      v29 = 0;
    }

    v34 = v29;
    v35 = v13 == 0;
    a1(&v34);
  }
}

void *DataTypeMostRecentSamplesQuery.init(sampleType:healthStore:unitController:sampleQueryLimit:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a2;
  v36 = *v4;
  v37 = a3;
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  v10 = *(Limit - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Limit - 8, v12);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_cancellables;
  sub_1BA4A2AA8();
  swift_allocObject();
  *(v4 + v14) = sub_1BA4A2A98();
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery____lazy_storage___allowedMetadataKeys) = 0;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_healthStore) = a2;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleType) = a1;
  v35 = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit;
  v15 = a4;
  sub_1BA13B644(a4, v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  v33 = a4;
  sub_1BA13B644(a4, v13, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v17;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_1BA132190(v13, v19 + v16);
  v20 = a1;
  *(v19 + v17) = a1;
  v21 = v32;
  *(v19 + v18) = v32;
  sub_1BA130C48(0);
  swift_allocObject();
  v22 = v21;
  v32 = v20;
  v31 = v22;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult) = sub_1BA4A4EA8();
  v23 = v35;
  sub_1BA13B644(v15, v13, v35);
  v24 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_1BA132190(v13, v26 + v16);
  *(v26 + v34) = v32;
  *(v26 + v18) = v31;
  v27 = v36;
  *(v26 + v24) = v37;
  *(v26 + v25) = v5;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  sub_1BA130B98(0);
  swift_allocObject();

  v28 = sub_1BA4A4EA8();
  sub_1BA13B6AC(v33, v23);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult) = v28;

  return v5;
}

void sub_1BA12F8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  sub_1BA130AB0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130CC4(0);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130E08(0);
  v44 = v15;
  v42 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v40 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130FF8(0);
  v45 = v18;
  v43 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v41 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult))
  {
    v49 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult);
    v48 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult);
    sub_1BA130B98(0);
    sub_1BA130C48(0);
    v21 = MEMORY[0x1E695C038];
    sub_1BA13C020(&qword_1EDC5F3F8, sub_1BA130B98, MEMORY[0x1E695C038]);
    sub_1BA13C020(&unk_1EDC5F3C0, sub_1BA130C48, v21);
    v22 = v4;
    sub_1BA4A4FF8();
    sub_1BA130D70(0);
    v23 = MEMORY[0x1E695BD68];
    sub_1BA13C020(&qword_1EDC5F5E8, sub_1BA130AB0, MEMORY[0x1E695BD68]);
    sub_1BA4A4FE8();
    (*(v7 + 8))(v10, v6);
    v24 = MEMORY[0x1E695BD60];
    sub_1BA13C020(&qword_1EDC5F638, sub_1BA130CC4, MEMORY[0x1E695BD60]);
    v25 = v39;
    v26 = sub_1BA4A4F98();
    (*(v38 + 8))(v14, v25);
    v48 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI47ElectrocardiogramDataTypeMostRecentSamplesQuery_activeAlgorithmVersionResult);
    v49 = v26;
    sub_1BA132AB4(0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA130F00(0);
    sub_1BA130FA8(&unk_1EDC5F4D0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA13C020(&qword_1EDC5F3D8, sub_1BA130F00, v21);
    v27 = v40;
    sub_1BA4A4FF8();

    sub_1BA1310A4(0);
    sub_1BA13C020(&qword_1EDC5F600, sub_1BA130E08, v23);
    v28 = v41;
    v29 = v44;
    sub_1BA4A4FE8();
    (*(v42 + 8))(v27, v29);
    sub_1BA13C020(&qword_1EDC5F648, sub_1BA130FF8, v24);
    v30 = v45;
    v31 = sub_1BA4A4F98();
    (*(v43 + 8))(v28, v30);
    v49 = v31;
    v32 = swift_allocObject();
    v33 = v46;
    v34 = v47;
    *(v32 + 16) = v46;
    *(v32 + 24) = v34;
    v35 = swift_allocObject();
    v35[2] = v33;
    v35[3] = v34;
    v35[4] = v22;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1BA132A6C;
    *(v36 + 24) = v35;
    sub_1BA132AB4(0, &qword_1EDC5F4E0, sub_1BA1310A4);
    sub_1BA130FA8(&qword_1EDC5F4E8, &qword_1EDC5F4E0, sub_1BA1310A4);
    swift_retain_n();

    v37 = sub_1BA4A5008();

    v49 = v37;
    sub_1BA4A4D58();
    sub_1BA4A4CE8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA12FF94(unint64_t a1, uint64_t a2, id a3, void *a4, void (*a5)(void *, void), uint64_t a6, uint64_t a7)
{
  v58 = a7;
  v60 = a6;
  v61 = a5;
  v10 = sub_1BA4A3EA8();
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A1728();
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  v19 = Limit;
  MEMORY[0x1EEE9AC00](Limit, v20);
  v22 = (&v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_1BA4A0FA8();
  v53 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_allocWithZone(MEMORY[0x1E69A4190]) init];
  if (!v26)
  {
    goto LABEL_15;
  }

  v27 = v26;
  v28 = [objc_allocWithZone(MEMORY[0x1E69A4180]) init];
  if (!v28)
  {

LABEL_15:
    v61(0, 0);
    return;
  }

  v29 = v28;
  if (a4)
  {
    if (a1 >> 62)
    {
      v30 = sub_1BA4A7CC8();
      if (!v30)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        goto LABEL_22;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1BFAF2860](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_34;
      }

      v31 = *(a1 + 32);
    }

    v32 = v31;
    objc_opt_self();
    v52 = v32;
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = [v33 _algorithmVersion];
      if (v34)
      {
        v35 = v34;
        a3 = [v34 integerValue];

        goto LABEL_12;
      }
    }

LABEL_22:
    sub_1BA4A3D88();

    v22 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FA8();

    if (!os_log_type_enabled(v22, v19))
    {
LABEL_29:

      (*(v56 + 8))(v13, v57);
      v61(0, 0);

      return;
    }

    a4 = v29;
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v17 = 138412290;
    if (!v30)
    {
      v51 = 0;
LABEL_28:
      *(v17 + 4) = v51;
      *v29 = v51;
      _os_log_impl(&dword_1B9F07000, v22, v19, "Unable to resolve ECG version from sample %@", v17, 0xCu);
      sub_1B9F8C6C8(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      v29 = a4;
      goto LABEL_29;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v51 = *(a1 + 32);
      goto LABEL_28;
    }

LABEL_34:
    v51 = MEMORY[0x1BFAF2860](0, a1);
    goto LABEL_28;
  }

LABEL_12:
  v36 = sub_1BA13AC4C(a1, a3);
  if (v37 >> 60 == 15)
  {
    v38 = 0;
  }

  else
  {
    v39 = v36;
    v40 = v37;
    v38 = sub_1BA4A15F8();
    sub_1B9F6AC8C(v39, v40);
  }

  [v29 setQueryDataObject_];

  [v29 setType_];
  sub_1BA13B644(v58 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, v22, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v53;
    (*(v53 + 32))(v25, v22, v59);
    v42 = sub_1BA4A0F28();
    v43 = [v42 hk_codableDateInterval];

    [v27 setSixMonthDateInterval_];
    sub_1BA4A0F88();
    v44 = sub_1BA4A16B8();
    v45 = v55;
    v46 = *(v54 + 8);
    v46(v17, v55);
    v47 = MEMORY[0x1BFAF3470](v44);

    [v29 setStartDate_];
    sub_1BA4A0F58();
    v48 = sub_1BA4A16B8();
    v46(v17, v45);
    v49 = MEMORY[0x1BFAF3470](v48);

    [v29 setEndDate_];
    (*(v41 + 8))(v25, v59);
  }

  else
  {
    sub_1BA13B6AC(v22, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  }

  [v27 setSixMonthData_];
  v50 = v27;
  v61(v27, 0);
}

uint64_t ElectrocardiogramDataTypeMostRecentSamplesQuery.deinit()
{
  sub_1BA13B6AC(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);

  return v0;
}

uint64_t DataTypeMostRecentSamplesQuery.deinit()
{
  sub_1BA13B6AC(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);

  return v0;
}

uint64_t ElectrocardiogramDataTypeMostRecentSamplesQuery.__deallocating_deinit()
{
  ElectrocardiogramDataTypeMostRecentSamplesQuery.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA1307D0()
{
  sub_1BA130AB0(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130CC4(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult))
  {
    v14[1] = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult);
    v14[0] = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult);
    sub_1BA130B98(0);
    sub_1BA130C48(0);
    v13 = MEMORY[0x1E695C038];
    sub_1BA13C020(&qword_1EDC5F3F8, sub_1BA130B98, MEMORY[0x1E695C038]);
    sub_1BA13C020(&unk_1EDC5F3C0, sub_1BA130C48, v13);
    sub_1BA4A4FF8();
    sub_1BA130D70(0);
    sub_1BA13C020(&qword_1EDC5F5E8, sub_1BA130AB0, MEMORY[0x1E695BD68]);
    sub_1BA4A4FE8();
    (*(v3 + 8))(v6, v2);
    sub_1BA13C020(&qword_1EDC5F638, sub_1BA130CC4, MEMORY[0x1E695BD60]);
    sub_1BA4A4F98();
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA130AB0(uint64_t a1)
{
  if (!qword_1EDC5F5D8)
  {
    sub_1BA130B98(255);
    sub_1BA130C48(255);
    v1 = MEMORY[0x1E695C038];
    sub_1BA13C020(&qword_1EDC5F3F8, sub_1BA130B98, MEMORY[0x1E695C038]);
    sub_1BA13C020(&unk_1EDC5F3C0, sub_1BA130C48, v1);
    v2 = sub_1BA4A4B88();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC5F5D8);
    }
  }
}

void sub_1BA130B98(uint64_t a1)
{
  if (!qword_1EDC5F3F0)
  {
    sub_1BA13B7A8(255, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
    sub_1B9F0D9AC(255, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
    v1 = sub_1BA4A4E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F3F0);
    }
  }
}

void sub_1BA130C48(uint64_t a1)
{
  if (!qword_1EDC5F3B0)
  {
    sub_1B9F0D9AC(255, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
    v1 = sub_1BA4A4E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F3B0);
    }
  }
}

void sub_1BA130CC4(uint64_t a1)
{
  if (!qword_1EDC5F628)
  {
    sub_1BA130AB0(255);
    sub_1BA130D70(255);
    sub_1BA13C020(&qword_1EDC5F5E8, sub_1BA130AB0, MEMORY[0x1E695BD68]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F628);
    }
  }
}

void sub_1BA130D70(uint64_t a1)
{
  if (!qword_1EDC5E630)
  {
    sub_1BA13B7A8(255, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E630);
    }
  }
}

void sub_1BA130E08(uint64_t a1)
{
  if (!qword_1EDC5F5F0)
  {
    sub_1BA132AB4(255, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA130F00(255);
    sub_1BA130FA8(&unk_1EDC5F4D0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA13C020(&qword_1EDC5F3D8, sub_1BA130F00, MEMORY[0x1E695C038]);
    v1 = sub_1BA4A4B88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F5F0);
    }
  }
}

void sub_1BA130F00(uint64_t a1)
{
  if (!qword_1EDC5F3D0)
  {
    sub_1BA13BAA0(255, &qword_1EDC6B640, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1B9F0D9AC(255, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
    v1 = sub_1BA4A4E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F3D0);
    }
  }
}

uint64_t sub_1BA130FA8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BA132AB4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA130FF8(uint64_t a1)
{
  if (!qword_1EDC5F640)
  {
    sub_1BA130E08(255);
    sub_1BA1310A4(255);
    sub_1BA13C020(&qword_1EDC5F600, sub_1BA130E08, MEMORY[0x1E695BD68]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F640);
    }
  }
}

void sub_1BA1310A4(uint64_t a1)
{
  if (!qword_1EDC5E638)
  {
    sub_1BA13B7A8(255, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
    sub_1BA13BAA0(255, &qword_1EDC6B640, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC5E638);
    }
  }
}

char *sub_1BA131178()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery____lazy_storage___allowedMetadataKeys;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery____lazy_storage___allowedMetadataKeys))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery____lazy_storage___allowedMetadataKeys);
  }

  else
  {
    v2 = sub_1BA131A58(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_1BA1311E0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery____lazy_storage___allowedMetadataKeys) = a1;

  return result;
}

double (*sub_1BA1311F8(char **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA131178();
  return sub_1BA131240;
}

double sub_1BA131240(uint64_t *a1)
{
  *(a1[1] + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery____lazy_storage___allowedMetadataKeys) = *a1;

  return result;
}

id sub_1BA131258(unint64_t a1, void *a2)
{
  v52 = a2;
  v3 = sub_1BA4A2338();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
  {
    v8 = MEMORY[0x1E69E7CC0];
    v45 = v6;
    if (!i)
    {
      goto LABEL_32;
    }

    v64 = MEMORY[0x1E69E7CC0];
    result = sub_1BA4A7F08();
    if (i < 0)
    {
      break;
    }

    v10 = 0;
    v11 = a1;
    a1 = 0;
    v50 = v11 & 0xC000000000000001;
    v47 = v11 & 0xFFFFFFFFFFFFFF8;
    v48 = v11;
    v46 = v11 + 32;
    v49 = i;
    while (1)
    {
      v6 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v50)
      {
        v12 = MEMORY[0x1BFAF2860]();
      }

      else
      {
        if (v10 >= *(v47 + 16))
        {
          goto LABEL_38;
        }

        v12 = *(v46 + 8 * v10);
      }

      v13 = v12;
      v14 = sub_1BA13AF24(v12, v52);
      v15 = [v13 metadata];
      v55 = v6;
      v54 = v14;
      v53 = v13;
      if (v15)
      {
        v16 = v15;
        v17 = sub_1BA4A6628();
      }

      else
      {
        v17 = sub_1B9FDB798(v8);
      }

      v18 = v51;

      v6 = sub_1BA13B484(v19, v18);
      v56 = a1;
      a1 = v17;

      v63 = v8;
      v20 = 1 << *(v6 + 32);
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v22 = v21 & v6[8];
      v23 = (v20 + 63) >> 6;

      for (j = 0; v22; v8 = v63)
      {
LABEL_22:
        v26 = __clz(__rbit64(v22)) | (j << 6);
        v27 = (v6[6] + 16 * v26);
        v29 = *v27;
        v28 = v27[1];
        sub_1B9F0AD9C(v6[7] + 32 * v26, &v62);
        v61[0] = v29;
        v61[1] = v28;
        sub_1BA13B644(v61, v59, sub_1BA0009D8);
        v31 = v59[0];
        v30 = v59[1];
        sub_1BA13B644(v61, v58, sub_1BA0009D8);

        sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
        if (swift_dynamicCast())
        {
          v32 = v57;
        }

        else
        {
          v32 = 0;
        }

        sub_1B9F0ADF8(0, &qword_1EDC5E270, 0x1E69A41F8);
        HKCodableMetadataKeyValuePair.init(pair:)(v31, v30, v32);
        v33 = __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x1BFAF1510](v33);
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        v22 &= v22 - 1;
        sub_1BA4A6BB8();
        sub_1BA13B6AC(v61, sub_1BA0009D8);
      }

      while (1)
      {
        v25 = j + 1;
        if (__OFADD__(j, 1))
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v25 >= v23)
        {
          break;
        }

        v22 = v6[v25 + 8];
        ++j;
        if (v22)
        {
          j = v25;
          goto LABEL_22;
        }
      }

      result = [objc_allocWithZone(MEMORY[0x1E69A41F0]) init];
      if (!result)
      {
        goto LABEL_41;
      }

      v34 = result;

      sub_1B9FE5EE8(v8);

      v35 = objc_allocWithZone(MEMORY[0x1E695DF70]);
      v36 = sub_1BA4A6AE8();

      v37 = [v35 initWithArray_];

      [v34 setKeyValuePairs_];
      [v54 setMetadataDictionary_];

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      v10 = v55;
      v8 = MEMORY[0x1E69E7CC0];
      a1 = v56;
      if (v55 == v49)
      {
        v8 = v64;
LABEL_32:
        sub_1B9F0ADF8(0, &qword_1EDC5E5A8, 0x1E69A4200);
        v38 = v52;
        v39 = v45;
        sub_1BA4A2308();
        v40 = sub_1BA0813C0(v8, v38, v39);

        v41 = [v40 data];
        if (v41)
        {
          v42 = v41;
          v43 = sub_1BA4A1608();
        }

        else
        {

          return 0;
        }

        return v43;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

double sub_1BA1318A0@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;

  return result;
}

void sub_1BA1318D8()
{
  sub_1BA13BAA0(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B7510;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  swift_getKeyPath();
  *(v0 + 32) = sub_1BA4A71B8();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = sub_1BA4A6758();

  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 40) = v3;
  qword_1EDC63890 = v0;
}

void sub_1BA1319E8(id *a1)
{
  v1 = [*a1 endDate];
  sub_1BA4A16F8();
}

char *sub_1BA131A58(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleType);
  v2 = [v1 hk_primaryMetadataKey];
  if (v2)
  {
    v3 = v2;
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v41[0] = v5;
  v6 = [v1 hk_secondaryMetadataKey];
  if (v6)
  {
    v7 = v6;
    v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = 0;
  v41[1] = v8;
  v41[2] = v10;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v13 = &v41[2 * v11];
  while (++v11 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1BA27EE34(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_1BA27EE34((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_8;
    }
  }

  sub_1BA13BAA0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v22 = v1;
    v23 = [v21 identifier];
    if (!v23)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v23 = sub_1BA4A6758();
    }

    v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v26 = v25;
    if (v24 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v26 == v27)
    {
    }

    else
    {
      v29 = sub_1BA4A8338();
      v30 = v23;

      if (v29)
      {

LABEL_27:
        sub_1BA13BAA0(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BA4B5480;
        *(inited + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        *(inited + 40) = v32;
        sub_1B9FE271C(inited);

        return v12;
      }

      v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v36 = v35;
      v37 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v39 = v38;

      if (v34 != v37 || v36 != v39)
      {
        v40 = sub_1BA4A8338();

        if ((v40 & 1) == 0)
        {

          return v12;
        }

        goto LABEL_27;
      }
    }

    goto LABEL_27;
  }

  return v12;
}

uint64_t sub_1BA131E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = swift_allocObject();
  a5(a1, a2, a3, a4);
  return v10;
}

void sub_1BA131E84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v28 = a5;
  v9 = sub_1BA4A0FA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  MEMORY[0x1EEE9AC00](Limit, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_1BA13B644(a3, v17, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_1B9F0ADF8(0, &qword_1EDC5E548, 0x1E696C3C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v20 = sub_1BA4A0F28();
    v21 = [ObjCClassFromMetadata predicateForSamplesWithinDateInterval:v20 options:0];

    (*(v10 + 8))(v13, v9);
    v22 = v21;
  }

  else
  {

    v22 = 0;
  }

  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = sub_1BA13C168;
  v23[4] = v18;
  v24 = objc_allocWithZone(MEMORY[0x1E696C3B0]);
  aBlock[4] = sub_1BA13C128;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA139CB4;
  aBlock[3] = &block_descriptor_174;
  v25 = _Block_copy(aBlock);
  v26 = [v24 initWithSampleType:a4 predicate:v22 resultsHandler:v25];

  _Block_release(v25);

  [v28 executeQuery_];
}

uint64_t sub_1BA132190(uint64_t a1, uint64_t a2)
{
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  (*(*(Limit - 8) + 32))(a2, a1, Limit);
  return a2;
}

void sub_1BA1321F8(int a1, uint64_t a2, id a3, void *a4, void (*a5)(id, uint64_t))
{
  if (a2 && (v7 = sub_1BA03E8A0(a4, a2)) != 0)
  {
    v12 = v7;
    a5([v7 integerValue], 0);
    v8 = v12;
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      sub_1BA13BB28();
      v9 = swift_allocError();
      *v10 = 0;
    }

    v11 = a3;
    a5(v9, 1);
    v8 = v9;
  }
}

void sub_1BA1322E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v38 = a8;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v12 = sub_1BA4A0FA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  MEMORY[0x1EEE9AC00](Limit, v18);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  sub_1BA13B644(a3, v20, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v16, v20, v12);
    sub_1B9F0ADF8(0, &qword_1EDC5E548, 0x1E696C3C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v23 = sub_1BA4A0F28();
    v24 = [ObjCClassFromMetadata predicateForSamplesWithinDateInterval:v23 options:0];

    (*(v13 + 8))(v16, v12);
    v25 = v24;
    v26 = 0;
  }

  else
  {
    v26 = *v20;

    v25 = 0;
  }

  if (qword_1EDC63880 != -1)
  {
    swift_once();
  }

  v27 = swift_allocObject();
  v27[2] = sub_1BA13BAF0;
  v27[3] = v21;
  v28 = v39;
  v29 = v40;
  v27[4] = a4;
  v27[5] = v28;
  v30 = v41;
  v27[6] = v29;
  v27[7] = v30;
  v27[8] = v38;
  v31 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v32 = a4;
  v33 = v28;
  v34 = v29;

  v35 = sub_1BA4A6AE8();
  aBlock[4] = sub_1BA13BAF4;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA139DD4;
  aBlock[3] = &block_descriptor_138;
  v36 = _Block_copy(aBlock);
  v37 = [v31 initWithSampleType:v32 predicate:v25 limit:v26 sortDescriptors:v35 resultsHandler:v36];

  _Block_release(v36);

  [v33 executeQuery_];
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1BA4A0FA8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  v6 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v2 | 7);
}

void sub_1BA1327A0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA131E84(a1, a2, v2 + v6, v8, v9);
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1BA4A0FA8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  v6 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_1BA132990(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v7);
  v12 = *(v2 + v8);
  v13 = *(v2 + v9);
  v14 = *(v2 + v10);
  v15 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA1322E0(a1, a2, v2 + v6, v11, v12, v13, v14, v15);
}

void sub_1BA132AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1B9F0D9AC(255, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
    v4 = sub_1BA4A4D18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA132B3C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t), uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v16 = sub_1BA4A3EA8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v21 = swift_allocObject();
    v21[2] = a4;
    v21[3] = a5;
    v21[4] = a9;

    v22 = sub_1BA133000(a2, a6, a7, a8, sub_1BA13BB7C, v21);

    v38 = v22;
    sub_1BA4A4D58();
    sub_1BA4A4CE8();
  }

  else
  {
    sub_1BA4A3D88();
    v23 = a3;
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = a3;
      v38 = v36;
      *v26 = 136446210;
      v27 = a3;
      sub_1B9F224CC(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v28 = sub_1BA4A6808();
      HIDWORD(v35) = v25;
      v30 = sub_1B9F0B82C(v28, v29, &v38);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1B9F07000, v24, BYTE4(v35), "Error fetching most recent samples %{public}s", v26, 0xCu);
      v31 = v36;
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    (*(v17 + 8))(v20, v16);
    v32 = a3;
    if (!a3)
    {
      sub_1BA13BB28();
      v32 = swift_allocError();
      *v33 = 1;
    }

    v34 = a3;
    a4(v32, 1);
  }
}

void sub_1BA132E64(uint64_t a1, id a2, void (*a3)(void))
{
  if (a1)
  {
    swift_getKeyPath();
    sub_1BA13B7A8(0, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
    sub_1BA13BC34();
    sub_1BA13C020(&qword_1EDC6E260, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v4 = sub_1BA4A6A08();

    sub_1BA326750(v4);
    a3();
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_1BA13BB28();
      v5 = swift_allocError();
      v7 = v6;
      a2 = 0;
      *v7 = 1;
    }

    v8 = a2;
    (a3)(v5, 1);
  }
}

uint64_t sub_1BA133000(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v46 = a5;
  v47 = a6;
  sub_1BA13BB88(0);
  v41 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA13BCB8(0);
  v18 = *(v17 - 8);
  v42 = v17;
  v43 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA13BF30(0);
  v23 = *(v22 - 8);
  v44 = v22;
  v45 = v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  sub_1BA13B7A8(0, &unk_1EDC5E620, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E69E62F8]);
  sub_1BA13BC34();
  sub_1BA4A6A18();
  v27 = swift_allocObject();
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = v7;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  sub_1BA4A4D08();
  v31 = MEMORY[0x1E695BED0];
  sub_1BA13BDC4(0, &qword_1EDC5F480, MEMORY[0x1E695BED0]);
  sub_1BA13C020(&qword_1EDC5F570, sub_1BA13BB88, MEMORY[0x1E695BE60]);
  sub_1BA13C0C8(&qword_1EDC5F488, &qword_1EDC5F480, v31, MEMORY[0x1E695BED8]);
  v32 = v41;
  sub_1BA4A5168();

  (*(v13 + 8))(v16, v32);
  sub_1BA13C020(&qword_1EDC5F5A0, sub_1BA13BCB8, MEMORY[0x1E695BE40]);
  v33 = v42;
  sub_1BA4A5068();
  (*(v43 + 8))(v21, v33);
  v34 = swift_allocObject();
  v35 = v46;
  v36 = v47;
  *(v34 + 16) = v46;
  *(v34 + 24) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 24) = v36;
  sub_1BA13C020(&qword_1EDC5F5B8, sub_1BA13BF30, MEMORY[0x1E695BE38]);
  swift_retain_n();
  v38 = v44;
  v39 = sub_1BA4A5008();

  (*(v45 + 8))(v26, v38);
  return v39;
}

void sub_1BA133490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  sub_1BA130AB0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130CC4(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult);
  if (v17)
  {
    v29 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleType);
    v33 = v17;
    v32 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult);
    sub_1BA130B98(0);
    sub_1BA130C48(0);
    v28 = v4;
    v18 = MEMORY[0x1E695C038];
    sub_1BA13C020(&qword_1EDC5F3F8, sub_1BA130B98, MEMORY[0x1E695C038]);
    sub_1BA13C020(&unk_1EDC5F3C0, sub_1BA130C48, v18);
    sub_1BA4A4FF8();
    sub_1BA130D70(0);
    sub_1BA13C020(&qword_1EDC5F5E8, sub_1BA130AB0, MEMORY[0x1E695BD68]);
    sub_1BA4A4FE8();
    (*(v7 + 8))(v10, v6);
    sub_1BA13C020(&qword_1EDC5F638, sub_1BA130CC4, MEMORY[0x1E695BD60]);
    v19 = sub_1BA4A4F98();
    (*(v13 + 8))(v16, v12);
    v33 = v19;
    v20 = swift_allocObject();
    v22 = v30;
    v21 = v31;
    *(v20 + 16) = v30;
    *(v20 + 24) = v21;
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v21;
    v24 = v29;
    v23[4] = v28;
    v23[5] = v24;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1BA133D30;
    *(v25 + 24) = v23;
    sub_1BA132AB4(0, &qword_1EDC5F4C8, sub_1BA130D70);
    sub_1BA130FA8(&unk_1EDC5F4D0, &qword_1EDC5F4C8, sub_1BA130D70);
    swift_retain_n();

    v26 = v24;
    v27 = sub_1BA4A5008();

    v33 = v27;
    sub_1BA4A4D58();
    sub_1BA4A4CE8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA13390C(unint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, void *a6)
{
  v46 = a4;
  v10 = sub_1BA4A1728();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  MEMORY[0x1EEE9AC00](Limit, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BA4A0FA8();
  v45 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_allocWithZone(MEMORY[0x1E69A4190]) init];
  if (!v21)
  {
    goto LABEL_6;
  }

  v22 = v21;
  v44 = a3;
  v23 = [objc_allocWithZone(MEMORY[0x1E69A4180]) init];
  if (!v23)
  {

    a3 = v44;
LABEL_6:
    a3(0, 0);
    return;
  }

  v24 = v23;
  v25 = sub_1BA131258(a1, a6);
  if (v26 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    v28 = v25;
    v29 = v26;
    v27 = sub_1BA4A15F8();
    sub_1B9F6AC8C(v28, v29);
  }

  [v24 setQueryDataObject_];

  [v24 setType_];
  sub_1BA13B644(a5 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, v17, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = v17;
    v31 = v41;
    (*(v45 + 32))(v20, v30, v41);
    v32 = sub_1BA4A0F28();
    v33 = [v32 hk_codableDateInterval];

    [v22 setSixMonthDateInterval_];
    sub_1BA4A0F88();
    v34 = sub_1BA4A16B8();
    v35 = v43;
    v36 = *(v42 + 8);
    v36(v13, v43);
    v37 = MEMORY[0x1BFAF3470](v34);

    [v24 setStartDate_];
    sub_1BA4A0F58();
    v38 = sub_1BA4A16B8();
    v36(v13, v35);
    v39 = MEMORY[0x1BFAF3470](v38);

    [v24 setEndDate_];
    (*(v45 + 8))(v20, v31);
  }

  else
  {
    sub_1BA13B6AC(v17, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);
  }

  [v22 setSixMonthData_];
  v40 = v22;
  v44(v22, 0);
}

void sub_1BA133D6C(void **a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v45 = a4;
  v46 = a5;
  sub_1BA13B7A8(0, &qword_1EDC5F420, &qword_1EDC5E1C0, 0x1E696C3A8, MEMORY[0x1E695C000]);
  v9 = v8;
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v42 - v11;
  sub_1BA13BDC4(0, &qword_1EDC5DB58, MEMORY[0x1E695C0C0]);
  v14 = v13;
  v44 = *(v13 - 8);
  *&v16 = MEMORY[0x1EEE9AC00](v13, v15).n128_u64[0];
  v18 = &v42 - v17;
  v19 = *a1;
  v20 = [a2 identifier];
  if (!v20)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v20 = sub_1BA4A6758();
  }

  v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v23 = v22;
  if (v21 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v23 == v24)
  {

LABEL_10:

    goto LABEL_11;
  }

  v42 = v14;
  v26 = sub_1BA4A8338();
  v27 = v20;

  if (v26)
  {

    goto LABEL_11;
  }

  v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v37 = v36;
  if (v35 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v37 == v38)
  {

    goto LABEL_10;
  }

  v39 = sub_1BA4A8338();

  if ((v39 & 1) == 0)
  {
    v47 = v19;
    sub_1B9F0ADF8(0, &qword_1EDC5E1C0, 0x1E696C3A8);
    v40 = v19;
    sub_1BA4A4E78();
    sub_1B9F0D9AC(0, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
    sub_1BA4A4E48();
    (*(v43 + 8))(v12, v9);
    sub_1BA13C0C8(&qword_1EDC5DB60, &qword_1EDC5DB58, MEMORY[0x1E695C0C0], MEMORY[0x1E695C0C8]);
    v41 = v42;
    v34 = sub_1BA4A4F98();

    (*(v44 + 8))(v18, v41);
    goto LABEL_12;
  }

LABEL_11:
  v28 = swift_allocObject();
  v28[2] = v19;
  v28[3] = a3;
  v29 = v45;
  v28[4] = v45;
  v30 = MEMORY[0x1E695C028];
  sub_1BA13BDC4(0, &qword_1EBBEC6C8, MEMORY[0x1E695C028]);
  swift_allocObject();
  v31 = v19;
  v32 = a3;
  v33 = v29;
  v47 = sub_1BA4A4EA8();
  sub_1BA13C0C8(&qword_1EBBEC6D0, &qword_1EBBEC6C8, v30, MEMORY[0x1E695C038]);
  v34 = sub_1BA4A4F98();

LABEL_12:
  *v46 = v34;
}

void sub_1BA134214(void **a1, void (*a2)(void, void *))
{
  v2 = *a1;
  if (*a1)
  {
    v4 = v2;
    a2(0, v2);
  }
}

void sub_1BA134284(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v35 = a4;
  v9 = sub_1BA4A1728();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = objc_opt_self();

  v16 = [a3 startDate];
  sub_1BA4A16F8();

  v17 = sub_1BA4A16B8();
  v18 = *(v10 + 8);
  v18(v13, v9);
  v19 = [a3 endDate];
  sub_1BA4A16F8();

  v20 = sub_1BA4A16B8();
  v18(v13, v9);
  v21 = [v15 predicateForSamplesWithStartDate:v17 endDate:v20 inclusiveEndDates:1 options:3];

  v22 = [objc_opt_self() quantityTypeForIdentifier_];
  if (v22)
  {
    v23 = v22;
    v24 = v35;
    v25 = [v35 displayTypeController];
    if (v25)
    {
      v26 = v25;
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = a5;
      v27[4] = a3;
      v27[5] = sub_1BA13C168;
      v27[6] = v14;
      v28 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
      aBlock[4] = sub_1BA13C10C;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BA139DD4;
      aBlock[3] = &block_descriptor_162;
      v29 = _Block_copy(aBlock);
      v30 = v26;
      v31 = a5;
      v32 = a3;
      v33 = [v28 initWithSampleType:v23 predicate:v21 limit:0 sortDescriptors:0 resultsHandler:v29];
      _Block_release(v29);

      [v24 executeQuery_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA1345BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(void *, void))
{
  if (a2)
  {
    if (sub_1BA1FAD58(a2))
    {
      v11 = objc_opt_self();
      sub_1B9F0ADF8(0, &qword_1EBBEC6D8, 0x1E696C358);
      v12 = sub_1BA4A6AE8();

      v13 = [v11 minMaxStringForHeartRates:v12 displayTypeController:a4 unitController:a5];

      if (v13)
      {
        v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v16 = v15;

        v17 = [a6 metadata];
        v18 = MEMORY[0x1E69E6158];
        if (v17)
        {
          v19 = v17;
          sub_1BA4A6628();
        }

        else
        {
          sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
        }

        v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v22 = v21;
        v28 = v18;
        *&v27 = v14;
        *(&v27 + 1) = v16;
        sub_1B9F46920(&v27, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1B9FF1994(v26, v20, v22, isUniquelyReferenced_nonNull_native);

        v24 = sub_1BA4A6618();

        [a6 _setMetadata_];
      }
    }
  }

  return (a7)(a6, 0, a3, a4, a5);
}

uint64_t DataTypeMostRecentSamplesQuery.__deallocating_deinit()
{
  sub_1BA13B6AC(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_queryLimit, type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA134894()
{
  v2 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_healthStore) displayTypeController];
  if (v2)
  {
    v3 = v2;
    v0 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleType);
    v4 = [v2 displayTypeForObjectType_];

    if (v4)
    {
      v5 = [v4 localization];

      v6 = [v5 shortenedDisplayName];
      v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1BA4A7DF8();

  v9 = [v0 description];
  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v12 = v11;

  MEMORY[0x1BFAF1350](v10, v12);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

void sub_1BA134A2C(void *a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v26 = a4;
  sub_1BA130AB0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA130CC4(0);
  v25 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Limit = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(0);
  MEMORY[0x1EEE9AC00](Limit, Limit);
  v20 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v20 = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DataTypeMostRecentSamplesQuery(0);
  v21 = swift_allocObject();
  DataTypeMostRecentSamplesQuery.init(sampleType:healthStore:unitController:sampleQueryLimit:)(a1, a2, a3, v20);
  if (*(v21 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult))
  {
    v28 = *(v21 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_sampleResult);
    v27 = *(v21 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery_countResult);
    sub_1BA130B98(0);
    sub_1BA130C48(0);
    v22 = MEMORY[0x1E695C038];
    sub_1BA13C020(&qword_1EDC5F3F8, sub_1BA130B98, MEMORY[0x1E695C038]);
    sub_1BA13C020(&unk_1EDC5F3C0, sub_1BA130C48, v22);
    sub_1BA4A4FF8();
    sub_1BA130D70(0);
    sub_1BA13C020(&qword_1EDC5F5E8, sub_1BA130AB0, MEMORY[0x1E695BD68]);
    sub_1BA4A4FE8();
    (*(v9 + 8))(v12, v8);
    sub_1BA13C020(&qword_1EDC5F638, sub_1BA130CC4, MEMORY[0x1E695BD60]);
    v23 = v25;
    v24 = sub_1BA4A4F98();
    (*(v14 + 8))(v17, v23);

    *v26 = v24;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA134DD0(void **a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v11 = *a1;
  if (*a1)
  {
    sub_1BA4A3D88();
    v12 = v11;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v11;
      v26 = v16;
      *v15 = 136315138;
      v17 = v11;
      sub_1B9F0D9AC(0, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
      v18 = sub_1BA4A6808();
      v20 = sub_1B9F0B82C(v18, v19, &v26);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1B9F07000, v13, v14, "Encountered error in DataTypeMostRecentSamplesQuery: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    return (*(v3 + 8))(v10, v2);
  }

  else
  {
    sub_1BA4A3D88();
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B9F07000, v22, v23, "DataTypeMostRecentSamplesQuery succeeded", v24, 2u);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

double sub_1BA135058(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = sub_1B9FE6028(a1);
    sub_1BA137810(a2, 0, v6);
  }

  return result;
}

uint64_t sub_1BA1350E4(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v47 = a4;
  v48 = a3;
  v45 = a1;
  v46 = MEMORY[0x1E6968130];
  sub_1B9F3D5A4(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v42 - v13;
  type metadata accessor for DataTypeMostRecentSamplesDisclosureItemsDataSource(0);
  swift_allocObject();
  v15 = sub_1BA13A0B8(a1, a2, a3, v7);
  v16 = type metadata accessor for SampleMetadataViewControllerProvider();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v17 + 16) = a2;
  swift_unknownObjectWeakAssign();
  v50 = v16;
  v51 = &off_1F381AEB8;
  aBlock[0] = v17;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleMetadataViewControllerProvider;
  swift_beginAccess();
  v43 = a2;

  sub_1BA13B70C(aBlock, v15 + v18, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
  swift_endAccess();
  sub_1BA1356D4();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v6;
  v44 = v19;
  sub_1BA4A27B8();
  sub_1B9F3D5A4(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v21 = sub_1BA4A1C68();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v42 = xmmword_1BA4B5480;
  *(v24 + 16) = xmmword_1BA4B5480;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69A3B98], v21);
  v25 = MEMORY[0x1E69E6F90];
  sub_1BA13BAA0(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B5470;
  v27 = v45;
  *(v26 + 32) = v45;
  v28 = sub_1BA4A0FA8();
  (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
  sub_1BA13BAA0(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], v25);
  v29 = swift_allocObject();
  *(v29 + 16) = v42;
  v30 = v27;

  v31 = v43;
  *(v29 + 32) = sub_1BA4A6F38();
  v32 = MEMORY[0x1BFAED020](v24, v26, v14, v29);

  sub_1B9F829D4(v14, &qword_1EDC6E2A0, v46);
  v33 = v32;
  v34 = sub_1BA4A26C8();

  v35 = v47;
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  v36 = sub_1BA4A1B68();
  sub_1B9F0A534(v35, v53);
  v37 = swift_allocObject();
  sub_1B9F1134C(v53, (v37 + 2));
  v37[7] = v34;
  v37[8] = v30;
  v37[9] = sub_1BA13B790;
  v37[10] = v20;
  v51 = sub_1BA13B798;
  v52 = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  v50 = &block_descriptor_29;
  v38 = _Block_copy(aBlock);
  v39 = v30;
  v40 = v34;

  [v36 performBlock_];
  _Block_release(v38);

  __swift_destroy_boxed_opaque_existential_1(v35);

  return v15;
}

double sub_1BA13566C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BA137810(*(a1 + 16), 0, a1);
  }

  return result;
}

uint64_t sub_1BA1356D4()
{
  v0 = sub_1BA4A1798();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v5 = sub_1BA4A1318();
  v7 = v6;
  sub_1B9F224CC(0, &qword_1EDC6B448, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v19 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 56) = &type metadata for TitleEmptyStateCollectionViewCellItem;
  *(inited + 64) = sub_1BA139F30();
  v9 = swift_allocObject();
  *(inited + 32) = v9;
  v20 = type metadata accessor for TitleEmptyStateCollectionViewCell();
  sub_1B9F2EFEC();
  v9[2] = sub_1BA4A6808();
  v9[3] = v10;
  v9[4] = v5;
  v9[5] = v7;
  sub_1BA13BAA0(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v11 = swift_initStackObject();
  *(v11 + 16) = v19;
  v12 = sub_1B9FE4F98(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  sub_1BA4A1788();
  v13 = sub_1BA4A1748();
  v15 = v14;
  (*(v1 + 8))(v4, v0);
  v16 = MEMORY[0x1E69E7CC0];
  *(v11 + 48) = MEMORY[0x1E69E7CC0];
  *(v11 + 56) = sub_1B9F1C5F0(v16);
  *(v11 + 40) = 0;
  *(v11 + 32) = 0;

  *(v11 + 48) = v12;
  v17 = Array<A>.identifierToIndexDict()(v12);

  *(v11 + 56) = v17;
  *(v11 + 64) = v13;
  *(v11 + 72) = v15;
  sub_1BA0E7F10(v11, 1);
  swift_setDeallocating();
  return sub_1B9FF7224(v11 + 32);
}

void sub_1BA1359E8(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v110 = a5;
  v111 = a4;
  v112 = a3;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  v114 = v6;
  v115 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v113 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v107 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v107 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v107 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v107 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v107 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = sub_1BA4A1B68();
  sub_1BA4A27B8();
  v42 = sub_1BA4A7598();
  v108 = v25;
  v109 = v17;
  v107 = v21;
  v43 = v111;

  if (v42 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_7;
    }

LABEL_54:

    v35 = v113;
    sub_1BA4A3DD8();
    v36 = v112;
    v37 = sub_1BA4A3E88();
    v38 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = v36;
      v41 = v36;
      _os_log_impl(&dword_1B9F07000, v37, v38, "Missing feed item when creating DataTypeMostRecentSamplesDisclosureItemsDataSource for %@", v39, 0xCu);
      sub_1B9F8C6C8(v40);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
    }

    (*(v115 + 8))(v35, v114);
    return;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_54;
  }

LABEL_7:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x1BFAF2860](0, v42);
  }

  else
  {
    if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_57;
    }

    v44 = *(v42 + 32);
  }

  v113 = v44;
  v45 = [v44 userData];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1BA4A1608();
    v49 = v48;

    v50 = sub_1BA4A15F8();
    sub_1B9F2BB4C(v47, v49);
  }

  else
  {
    v50 = 0;
  }

  v51 = [objc_allocWithZone(MEMORY[0x1E69A4188]) initWithData_];

  if (v51)
  {
    v52 = [v51 chartModel];
    if (v52)
    {
      v53 = v52;
      v54 = [v52 hasSixMonthData];

      if (!v54)
      {

        sub_1BA4A3DD8();
        v70 = sub_1BA4A3E88();
        v71 = sub_1BA4A6FB8();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_1B9F07000, v70, v71, "Missing data charting model", v72, 2u);
          MEMORY[0x1BFAF43A0](v72, -1, -1);
        }

        goto LABEL_27;
      }

      v55 = [v51 chartModel];
      if (v55)
      {
        v56 = v55;

        v57 = [v56 sixMonthData];

        if (!v57)
        {
          sub_1BA4A3DD8();
          v73 = sub_1BA4A3E88();
          v74 = sub_1BA4A6FB8();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&dword_1B9F07000, v73, v74, "Unable to decode sharable charting model", v75, 2u);
            MEMORY[0x1BFAF43A0](v75, -1, -1);
          }

          goto LABEL_49;
        }

        v58 = [v57 type];
        if (v58 == 11)
        {
          v76 = [v57 queryDataObject];
          if (v76)
          {
            v77 = v76;
            v78 = sub_1BA4A1608();
            v80 = v79;

            v81 = sub_1BA4A15F8();
            sub_1B9F2BB4C(v78, v80);
          }

          else
          {
            v81 = 0;
          }

          v91 = v43;
          v92 = [objc_allocWithZone(MEMORY[0x1E69A4200]) initWithData_];

          if (v92)
          {
LABEL_41:
            v101 = [v92 samples];
            if (v101 && (v102 = v101, v117[0] = 0, sub_1B9F0D9AC(0, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel, 1), sub_1BA4A6AF8(), v102, v117[0]))
            {
              swift_getKeyPath();
              sub_1B9F224CC(0, &qword_1EBBEC670, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel, MEMORY[0x1E69E62F8]);
              sub_1BA13B810();
              sub_1BA13C020(&qword_1EDC6E260, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
              v103 = sub_1BA4A6A08();
            }

            else
            {

              v103 = MEMORY[0x1E69E7CC0];
            }

            v91(v103);

            return;
          }

          v29 = v108;
          sub_1BA4A3D88();
          v82 = v57;
          v73 = sub_1BA4A3E88();
          v83 = sub_1BA4A6FA8();

          if (os_log_type_enabled(v73, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v116 = v82;
            v117[0] = v85;
            *v84 = 136315138;
            sub_1B9F0ADF8(0, &unk_1EBBEC660, 0x1E69A4180);
            v86 = v82;
            v104 = sub_1BA4A6828();
            v106 = sub_1B9F0B82C(v104, v105, v117);

            *(v84 + 4) = v106;
            v90 = "Could not decode query data %s";
            goto LABEL_48;
          }
        }

        else
        {
          if (v58 == 13)
          {
            v59 = [v57 queryDataObject];
            if (v59)
            {
              v60 = v59;
              v61 = v57;
              v62 = sub_1BA4A1608();
              v64 = v63;

              v65 = sub_1BA4A15F8();
              v66 = v62;
              v57 = v61;
              sub_1B9F2BB4C(v66, v64);
            }

            else
            {
              v65 = 0;
            }

            v91 = v43;
            v92 = [objc_allocWithZone(MEMORY[0x1E69A41C0]) initWithData_];

            if (!v92)
            {
              v13 = v107;
              sub_1BA4A3D88();
              v93 = v57;
              v70 = sub_1BA4A3E88();
              v94 = sub_1BA4A6FA8();

              if (!os_log_type_enabled(v70, v94))
              {

                goto LABEL_28;
              }

              v95 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              v116 = v93;
              v117[0] = v96;
              *v95 = 136315138;
              sub_1B9F0ADF8(0, &unk_1EBBEC660, 0x1E69A4180);
              v97 = v93;
              v98 = sub_1BA4A6828();
              v100 = sub_1B9F0B82C(v98, v99, v117);

              *(v95 + 4) = v100;
              _os_log_impl(&dword_1B9F07000, v70, v94, "Could not decode query data %s", v95, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v96);
              MEMORY[0x1BFAF43A0](v96, -1, -1);
              MEMORY[0x1BFAF43A0](v95, -1, -1);

LABEL_27:
LABEL_28:
              (*(v115 + 8))(v13, v114);
              return;
            }

            goto LABEL_41;
          }

          v29 = v109;
          sub_1BA4A3D88();
          v82 = v57;
          v73 = sub_1BA4A3E88();
          v83 = sub_1BA4A6FA8();

          if (os_log_type_enabled(v73, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v116 = v82;
            v117[0] = v85;
            *v84 = 136315138;
            sub_1B9F0ADF8(0, &unk_1EBBEC660, 0x1E69A4180);
            v86 = v82;
            v87 = sub_1BA4A6828();
            v89 = sub_1B9F0B82C(v87, v88, v117);

            *(v84 + 4) = v89;
            v90 = "Unsupported chart model %s";
LABEL_48:
            _os_log_impl(&dword_1B9F07000, v73, v83, v90, v84, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v85);
            MEMORY[0x1BFAF43A0](v85, -1, -1);
            MEMORY[0x1BFAF43A0](v84, -1, -1);

LABEL_49:
LABEL_51:
            (*(v115 + 8))(v29, v114);
            return;
          }
        }

        goto LABEL_51;
      }

LABEL_58:
      __break(1u);
      return;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  sub_1BA4A3DD8();
  v67 = sub_1BA4A3E88();
  v68 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_1B9F07000, v67, v68, "Unable to decode chart feed item data", v69, 2u);
    MEMORY[0x1BFAF43A0](v69, -1, -1);
  }

  (*(v115 + 8))(v33, v114);
}

uint64_t sub_1BA1365A4@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleType);
  v13 = sub_1BA134894();
  v15 = v14;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  (*(v4 + 16))(v7, v11, v3);
  v16 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v13, v15, 0, 0, 0, 0, v7, 0, 0);
  v18 = v17;

  (*(v4 + 8))(v11, v3);
  a1[3] = v16;
  result = sub_1BA13C020(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  a1[4] = result;
  *a1 = v18;
  return result;
}

void sub_1BA13679C(uint64_t a1)
{
  v2 = v1;
  v47 = *v2;
  v50 = sub_1BA4A3EA8();
  v4 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v5);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1BA4A1798();
  v7 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v8);
  v58 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_detailMode);
  if (v10 <= 1 && v10)
  {
    v11 = 1;
LABEL_9:

    goto LABEL_10;
  }

  v12 = sub_1BA4A8338();

  if ((v12 & 1) == 0)
  {
    if (v10 > 1)
    {
      v11 = sub_1BA4A8338();
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_9;
  }

  v11 = 1;
LABEL_10:
  v60 = *(a1 + 16);
  v55 = OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_dataMetadataDelegate;
  v56 = OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleMetadataViewControllerProvider;
  v57 = OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_healthStore;
  swift_beginAccess();
  v13 = 0;
  v51 = a1 + 32;
  v54 = (v7 + 8);
  v53 = v11 & 1;
  v14 = MEMORY[0x1E69E7CC0];
  v48 = v4 + 8;
  v15 = MEMORY[0x1E69E6158];
  *(&v16 + 1) = 4;
  v52 = xmmword_1BA4B5460;
  *&v16 = 136315394;
  v46 = v16;
  while (1)
  {
    v17 = v60;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    if (v13 != v60)
    {
      if (v13 >= v60)
      {
        goto LABEL_29;
      }

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_30;
      }

      *&v67[0] = v13;
      sub_1B9F0A534(v51 + 40 * v13, v67 + 8);
      v18 = v67[0];
      v19 = v67[1];
      v20 = v68;
    }

    v80[0] = v18;
    v80[1] = v19;
    v80[2] = v20;
    if (!v20)
    {
      return;
    }

    v62 = v18;
    v63 = v17;
    sub_1B9F1134C((v80 + 8), v77);
    sub_1B9F0A534(v77, v67);
    v21 = *(v61 + v57);
    sub_1B9F37558(v61 + v56, &v69, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
    memset(v70, 0, sizeof(v70));
    v71 = 0;
    v22 = v21;
    swift_unknownObjectRetain();
    v23 = v58;
    sub_1BA4A1788();
    v24 = sub_1BA4A1748();
    v26 = v25;
    (*v54)(v23, v59);
    *(&v68 + 1) = v22;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v72 = v53;
    v73 = 0;
    v74 = 0;
    v75 = v24;
    v76 = v26;
    v27 = v78;
    v28 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    v29 = (*(v28 + 8))(v27, v28);
    if (v29)
    {
      break;
    }

LABEL_22:
    sub_1B9FE92F8(v67, &v65);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1BA27FFD8(0, v14[2] + 1, 1, v14);
    }

    v45 = v14[2];
    v44 = v14[3];
    if (v45 >= v44 >> 1)
    {
      v14 = sub_1BA27FFD8((v44 > 1), v45 + 1, 1, v14);
    }

    v14[2] = v45 + 1;
    sub_1BA13A05C(&v65, &v14[22 * v45 + 4]);
    sub_1B9FE93A8(v67);
    __swift_destroy_boxed_opaque_existential_1(v77);
    v13 = v63;
  }

  v30 = v29;
  sub_1BA13BAA0(0, &qword_1EDC6E330, v15, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = v52;
  v32 = [v30 identifier];
  v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v34 = v15;
  v36 = v35;

  *(v31 + 32) = v33;
  *(v31 + 40) = v36;
  v65 = 0x5F656C706D6153;
  v66 = 0xE700000000000000;
  if (!__OFADD__(v62, 1))
  {
    v64 = v62 + 1;
    v37 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v37);

    v38 = v66;
    *(v31 + 48) = v65;
    *(v31 + 56) = v38;
    v39 = sub_1BA4A6AE8();

    v40 = HKUIJoinStringsForAutomationIdentifier();

    v15 = v34;
    if (v40)
    {
      v41 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v73 = v41;
    v74 = v43;
    sub_1BA42F378(v30, &v65);

    sub_1BA13B70C(&v65, v70, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding);
    goto LABEL_22;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1BA137040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a3;
  v46 = a1;
  sub_1B9F3D5A4(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v43 = &v38 - v7;
  v45 = sub_1BA4A3FB8();
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BA4A3F18();
  v11 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A1798();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1BA4A4428();
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A4418();
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A43B8();

  sub_1BA4A41A8();
  *&v48 = 0;
  *(&v48 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v48 = 0xD000000000000011;
  *(&v48 + 1) = 0x80000001BA4ED2D0;
  sub_1BA4A1788();
  sub_1BA13C020(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v23 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v23);

  (*(v16 + 8))(v19, v15);
  v39 = *(&v48 + 1);
  v40 = v48;
  v24 = MEMORY[0x1E69DC110];
  v25 = v47;
  *(a4 + 96) = v47;
  *(a4 + 104) = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a4 + 72));
  v27 = v44;
  (*(v44 + 16))(boxed_opaque_existential_1, v22, v25);
  sub_1B9F3D5A4(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5480;
  v29 = v41;
  (*(v11 + 104))(v14, *MEMORY[0x1E69DBF28], v41);
  v30 = sub_1BA4A3F48();
  (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v42 + 8))(v10, v45);
  (*(v11 + 8))(v14, v29);
  v31 = swift_allocObject();
  *(v31 + 16) = v46;
  v32 = type metadata accessor for ContentConfigurationItem(0);
  v33 = v32[10];
  v34 = sub_1BA4A4168();
  (*(*(v34 - 8) + 56))(a4 + v33, 1, 1, v34);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;

  sub_1BA139F8C(&v48, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *(&v49 + 1) = &type metadata for BasicCellSelectionHandler;
  v50 = &off_1F381BCC8;
  *&v48 = sub_1BA139F84;
  *(&v48 + 1) = v31;
  LOBYTE(v49) = 2;
  (*(v27 + 8))(v22, v47);
  sub_1B9F37558(&v48, a4 + 16, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *(a4 + v32[12]) = 0;
  *(a4 + v32[13]) = 0;
  v35 = v39;
  *a4 = v40;
  *(a4 + 8) = v35;
  *(a4 + 112) = 0;
  *(a4 + 120) = v28;
  *(a4 + 56) = 0xD00000000000001DLL;
  *(a4 + 64) = 0x80000001BA4ED2F0;
  v36 = (a4 + v32[11]);
  *v36 = 0;
  v36[1] = 0;
  return sub_1BA139F8C(&v48, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
}

void sub_1BA137790(void *a1, uint64_t a2)
{
  v3 = objc_allocWithZone(type metadata accessor for SharedAllDataCollectionViewController());

  v5 = sub_1BA138E20(v4);
  [a1 showAdaptively:v5 sender:a1];
}

uint64_t sub_1BA137810(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v127 = a1;
  v7 = MEMORY[0x1E69E6720];
  sub_1B9F3D5A4(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  *&v131 = &v117 - v10;
  sub_1B9F3D5A4(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v7);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v124 = &v117 - v13;
  v14 = sub_1BA4A3FB8();
  v125 = *(v14 - 8);
  v126 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v122 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1BA4A3F18();
  v121 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v17);
  v19 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BA4A4428();
  v129 = *(v20 - 8);
  v130 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v128 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BA4A1798();
  v133 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v132 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BA4A64F8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = (&v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v30 = sub_1BA4A7308();
  (*(v27 + 104))(v30, *MEMORY[0x1E69E8020], v26);
  LOBYTE(v7) = sub_1BA4A6528();
  v32 = *(v27 + 8);
  v31 = v27 + 8;
  v32(v30, v26);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_9;
  }

  if (*(a3 + 16) <= 3uLL)
  {

    v34 = a3;
  }

  else
  {
    sub_1BA2A1388(a3, a3 + 32, 0, 7uLL);
    v34 = v33;
  }

  sub_1BA13679C(v34);
  v36 = v35;

  v37 = sub_1B9FE5EFC(v36);

  v38 = OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_dataSourceItems;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_dataSourceItems) = v37;

  v39 = *(v4 + v38);
  if (v39[2])
  {
    v40 = &unk_1BA4B5000;
    if (a2)
    {

LABEL_30:
      sub_1BA13BAA0(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = v40[72];
      v106 = sub_1B9FE4F98(v39);

      v107 = v132;
      sub_1BA4A1788();
      v108 = sub_1BA4A1748();
      v110 = v109;
      (*(v133 + 8))(v107, v23);
      v111 = MEMORY[0x1E69E7CC0];
      *(inited + 48) = MEMORY[0x1E69E7CC0];
      *(inited + 56) = sub_1B9F1C5F0(v111);
      *(inited + 40) = 0;
      *(inited + 32) = 0;

      *(inited + 48) = v106;
      v112 = Array<A>.identifierToIndexDict()(v106);

      *(inited + 56) = v112;
      *(inited + 64) = v108;
      *(inited + 72) = v110;
      sub_1BA0E7F10(inited, 1);
      swift_setDeallocating();
      v55 = inited + 32;
      return sub_1B9FF7224(v55);
    }

    v56 = objc_opt_self();

    v57 = [v56 hk_wholeNumberFormatter];
    v58 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v59 = [v58 initWithInteger_];
    v60 = [v57 stringFromNumber_];

    v120 = v23;
    if (v60)
    {
      v119 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v127 = v61;
    }

    else
    {
      v119 = 0;
      v127 = 0xE000000000000000;
    }

    v62 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_detailMode);
    if (v62 <= 1 && *(v4 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_detailMode))
    {
      goto LABEL_17;
    }

    v63 = sub_1BA4A8338();

    if ((v63 & 1) == 0)
    {
      if (!v62)
      {
LABEL_17:

        goto LABEL_19;
      }

      v64 = sub_1BA4A8338();

      if ((v64 & 1) == 0)
      {
        sub_1BA13679C(a3);
        v115 = sub_1B9FE5EFC(v114);

        v138 = type metadata accessor for ContentConfigurationItem(0);
        v139 = sub_1BA13C020(&qword_1EDC66498, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v137);
        sub_1BA137040(v115, v119, v127, boxed_opaque_existential_1);

LABEL_25:
        sub_1B9F0A534(v137, &v134);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v140 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = sub_1BA27EFB4(0, v39[2] + 1, 1, v39);
          v140 = v39;
        }

        v97 = v39[2];
        v96 = v39[3];
        if (v97 >= v96 >> 1)
        {
          v39 = sub_1BA27EFB4((v96 > 1), v97 + 1, 1, v39);
          v140 = v39;
        }

        v98 = v135;
        v99 = v136;
        v100 = __swift_mutable_project_boxed_opaque_existential_1(&v134, v135);
        v101 = MEMORY[0x1EEE9AC00](v100, v100);
        v103 = &v117 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v104 + 16))(v103, v101);
        sub_1B9F1C4F4(v97, v103, &v140, v98, v99);
        __swift_destroy_boxed_opaque_existential_1(&v134);
        __swift_destroy_boxed_opaque_existential_1(v137);
        v23 = v120;
        v40 = &unk_1BA4B5000;
        goto LABEL_30;
      }
    }

LABEL_19:
    v65 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleType);
    v66 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_healthStore);
    v117 = v4;
    v118 = v66;
    v67 = v128;
    sub_1BA4A4418();
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA4A43B8();
    sub_1BA4A41A8();
    strcpy(v137, "ShowAllData_");
    BYTE5(v137[1]) = 0;
    HIWORD(v137[1]) = -5120;
    v68 = [v65 description];
    v69 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v71 = v70;

    MEMORY[0x1BFAF1350](v69, v71);

    v127 = v137[0];
    v119 = v137[1];
    v72 = v130;
    v135 = v130;
    v136 = MEMORY[0x1E69DC110];
    v73 = __swift_allocate_boxed_opaque_existential_1(&v134);
    (*(v129 + 16))(v73, v67, v72);
    sub_1B9F3D5A4(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1BA4B5480;
    v75 = v121;
    v76 = v123;
    (*(v121 + 104))(v19, *MEMORY[0x1E69DBF28], v123);
    v77 = sub_1BA4A3F48();
    (*(*(v77 - 8) + 56))(v124, 1, 1, v77);
    v78 = v122;
    sub_1BA4A3FA8();
    v124 = v74;
    sub_1BA4A3F78();
    (*(v125 + 8))(v78, v126);
    (*(v75 + 8))(v19, v76);
    v79 = swift_allocObject();
    v80 = v118;
    *(v79 + 16) = v118;
    *(v79 + 24) = v65;
    v81 = v80;
    v82 = v65;
    v83 = v131;
    sub_1BA4A4158();
    v84 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_1BA4A4118();
    v85 = sub_1BA4A4168();
    (*(*(v85 - 8) + 56))(v83, 0, 1, v85);
    v86 = sub_1BA4A6AE8();
    v87 = HKUIJoinStringsForAutomationIdentifier();

    if (v87)
    {
      v88 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v90 = v89;
    }

    else
    {
      v88 = 0;
      v90 = 0;
    }

    v91 = type metadata accessor for ContentConfigurationItem(0);
    v138 = v91;
    v139 = sub_1BA13C020(&qword_1EDC66498, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
    v92 = __swift_allocate_boxed_opaque_existential_1(v137);
    *(v92 + v91[12]) = 0;
    *(v92 + v91[13]) = 0;
    v93 = v119;
    *v92 = v127;
    v92[1] = v93;
    sub_1B9F1134C(&v134, (v92 + 9));
    *(v92 + 112) = 0;
    v92[15] = v124;
    v92[2] = sub_1BA139F28;
    v92[3] = v79;
    v92[5] = &type metadata for BasicCellSelectionWithDeselectionOnRegularHorizontalSizeClassHandler;
    v92[6] = &off_1F381BCA0;
    sub_1B9F2F728(v131, v92 + v91[10]);
    v92[7] = v88;
    v92[8] = v90;
    v94 = (v92 + v91[11]);
    *v94 = sub_1BA1B760C;
    v94[1] = 0;
    (*(v129 + 8))(v128, v130);
    goto LABEL_25;
  }

  v31 = v23;
  if (qword_1EDC5E100 != -1)
  {
    goto LABEL_34;
  }

LABEL_9:
  v41 = sub_1BA4A1318();
  v43 = v42;
  sub_1B9F224CC(0, &qword_1EDC6B448, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6F90]);
  v44 = swift_initStackObject();
  v131 = xmmword_1BA4B5480;
  *(v44 + 16) = xmmword_1BA4B5480;
  *(v44 + 56) = &type metadata for TitleEmptyStateCollectionViewCellItem;
  *(v44 + 64) = sub_1BA139F30();
  v45 = swift_allocObject();
  *(v44 + 32) = v45;
  v137[0] = type metadata accessor for TitleEmptyStateCollectionViewCell();
  sub_1B9F2EFEC();
  v45[2] = sub_1BA4A6808();
  v45[3] = v46;
  v45[4] = v41;
  v45[5] = v43;
  sub_1BA13BAA0(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v47 = swift_initStackObject();
  *(v47 + 16) = v131;
  v48 = sub_1B9FE4F98(v44);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v44 + 32));
  v49 = v132;
  sub_1BA4A1788();
  v50 = sub_1BA4A1748();
  v52 = v51;
  (*(v133 + 8))(v49, v31);
  v53 = MEMORY[0x1E69E7CC0];
  *(v47 + 48) = MEMORY[0x1E69E7CC0];
  *(v47 + 56) = sub_1B9F1C5F0(v53);
  *(v47 + 40) = 0;
  *(v47 + 32) = 0;

  *(v47 + 48) = v48;
  v54 = Array<A>.identifierToIndexDict()(v48);

  *(v47 + 56) = v54;
  *(v47 + 64) = v50;
  *(v47 + 72) = v52;
  sub_1BA0E7F10(v47, 1);
  swift_setDeallocating();
  v55 = v47 + 32;
  return sub_1B9FF7224(v55);
}

uint64_t sub_1BA138930()
{
  swift_unknownObjectRelease();

  return sub_1BA139F8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleMetadataViewControllerProvider, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
}

uint64_t DataTypeMostRecentSamplesDisclosureItemsDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  sub_1BA139F8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleMetadataViewControllerProvider, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
  return v0;
}

uint64_t DataTypeMostRecentSamplesDisclosureItemsDataSource.__deallocating_deinit()
{
  DataTypeMostRecentSamplesDisclosureItemsDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA138B54@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *(*v1 + OBJC_IVAR____TtC18HealthExperienceUI50DataTypeMostRecentSamplesDisclosureItemsDataSource_sampleType);
  v13 = sub_1BA134894();
  v15 = v14;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  (*(v4 + 16))(v7, v11, v3);
  v16 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v13, v15, 0, 0, 0, 0, v7, 0, 0);
  v18 = v17;

  (*(v4 + 8))(v11, v3);
  a1[3] = v16;
  result = sub_1BA13C020(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  a1[4] = result;
  *a1 = v18;
  return result;
}

void *DataTypeMostRecentSamplesDisclosureItemsDataSource.layout(for:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ListLayoutConfiguration(0);
  __swift_project_value_buffer(v2, qword_1EDC6CBB8);
  return ListLayoutConfiguration.layout(for:)(v1);
}

void *sub_1BA138DA4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ListLayoutConfiguration(0);
  __swift_project_value_buffer(v2, qword_1EDC6CBB8);
  return ListLayoutConfiguration.layout(for:)(v1);
}

char *sub_1BA138E20(uint64_t a1)
{
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B9FE4F98(a1);

  sub_1BA4A1788();
  v8 = sub_1BA4A1748();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v12 = Array<A>.identifierToIndexDict()(v11);

  sub_1BA13BAA0(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v22 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v7;
  *(inited + 56) = v12;
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  type metadata accessor for MutableArrayDataSourceWithLayout(0);
  swift_allocObject();
  v14 = sub_1B9F1DAFC(inited, 1, sub_1BA139094, 0);
  sub_1BA139FFC(0);
  v15 = swift_allocObject();
  v15[4] = v14;
  v15[5] = sub_1BA139194;
  v15[6] = 0;
  v16 = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v17 = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v15[2] = v16;
  v15[3] = v17;
  type metadata accessor for CompoundSectionedDataSource(0);
  sub_1B9F1DEA0(0);
  v18 = swift_initStackObject();
  *(v18 + 16) = v22;
  *(v18 + 32) = v15;
  *(v18 + 40) = &protocol witness table for CellRegistering<A>;

  v19 = CompoundSectionedDataSource.__allocating_init(_:)(v18);
  v20 = CompoundDataSourceCollectionViewController.init(dataSource:)(v19);

  return v20;
}

void *sub_1BA139094(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CB88 != -1)
  {
    v11 = v5;
    swift_once();
    v5 = v11;
  }

  v8 = __swift_project_value_buffer(v5, qword_1EDC6CB90);
  sub_1BA13B644(v8, v7, type metadata accessor for ListLayoutConfiguration);
  *(v7 + 6) = 0x4030000000000000;
  v9 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA13B6AC(v7, type metadata accessor for ListLayoutConfiguration);
  return v9;
}

void sub_1BA139218()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SharedAllDataCollectionViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 setPreservesSuperviewLayoutMargins_];

    v3 = [v0 navigationItem];
    [v3 setLargeTitleDisplayMode_];

    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v4 = sub_1BA4A6758();

    [v0 setTitle_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA1393D8()
{
  sub_1B9F36938();
  sub_1B9F23FB0();
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    CompoundSectionedDataSource.registerCells(for:)(v1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA139450()
{
  v1 = [v0 navigationItem];
  sub_1B9F0ADF8(0, &qword_1EDC6B600, 0x1E69DC708);
  sub_1B9F0ADF8(0, &unk_1EDC5E0B0, 0x1E69DC628);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BA4A77E8();
  v3 = sub_1BA4A7128();
  [v1 setLeftBarButtonItem_];
}

id sub_1BA139784(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1BA139814()
{
  result = qword_1EBBEC598;
  if (!qword_1EBBEC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC598);
  }

  return result;
}

uint64_t sub_1BA139954(uint64_t a1)
{
  result = type metadata accessor for DataTypeMostRecentSamplesQuery.QueryLimit(319);
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